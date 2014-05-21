---
title: "Model implementation guidelines"
published: true
morea_id: reading-model-implementation-guidelines
morea_summary: "Standards for model implementation in this class"
morea_type: reading
morea_sort_order: 7
morea_labels:
---

# Model implementation guidelines

## Don’t use H2

Although H2 (Play’s in-memory database) might seem easier at first, it is better to bite the bullet and use the same database for development that you’ll use for deployment. For now, that means MySQL since MySQL is the database used by CloudBees.

Enable EBean, MySQL, and Evolutions

In the application.conf file, you’ll want code similar to the following to enable EBean, MySQL, and evolutions:

{% highlight bash %}
# Database configuration
# ~~~~~
db.default.driver=com.mysql.jdbc.Driver
db.default.url="jdbc:"${DATABASE_URL_DB}
db.default.user=${DATABASE_USERNAME_DB}
db.default.password=${DATABASE_PASSWORD_DB}
#
# Evolutions
# ~~~~~
applyEvolutions.default=true
#
# Ebean configuration
# ~~~~~
ebean.default="models.*"
{% endhighlight %}


## Create private fields and public accessors for all entity classes

The Play for Java book, for reasons known only to the authors, persists in recommending that you allow Play to implicitly create accessor methods despite [well-documented problems](http://www.manning-sandbox.com/message.jspa?messageID=143570#143570).

Do not follow their recommendation.  Instead, follow traditional Java best practices and create private fields and public accessors  following the standard JavaBean naming conventions.

The [Play Framework EBean documentation page](http://www.playframework.com/documentation/2.2.x/JavaEbean) also discusses some of these issues and explicitly notes that the byte-code enhancement is provided for backward compatibility.

Note that you *must* name your accessors according to JavaBeans conventions, which are finicky. That means if a field is named “productId”, your getter must be named getProductId and your setter must be named setProductId.  If you name the getter (for example), getProductID, then you’ll get an error like:

    Test ControllerTest.testProductController failed:
    JSR-303 validated property 'productId' does not have a corresponding accessor for data binding -
    check your DataBinder's configuration (bean property versus direct field access)

## Entity classes should observe conventions

Entity classes should:

  * Extend play.db.ebean.Model
  * Be annotated with @Entity
  * Have private fields and public accessors (as noted above).
  * Have a long Id field, annotated with @Id, serving as the primary key for the entity.
  * Have a serialVersionUID field, since a superclass is declared as serializable.
  * Have a static public find() method returning a Finder() instance.
  * Have a field for all relationships this entity participates in. Put another way, all relationships are bi-directional.

## Do not name entity classes with SQL reserved words

Do not name any class used as an entity with an [SQL reserved word](http://developer.mimer.com/validator/sql-reserved-words.tml) (catalog, connection, cube, cycle, data, group, key, level, input, names, month, module, output, row, space, system, table, user, values, work, etc.) You will get a weird error. Either rename the class or use the JPA annotation to specify a non-conflicting table name.

## How to “read” relationship notation so that you understand it

Consider the following code:

{% highlight java %}
public class StockItem extends Model {
 
  @ManyToOne
  private Warehouse warehouse;
  :
}
{% endhighlight %}


How do you “read” that annotation (and similar ones) in such a way that you understand what’s going on?   I find the following ways of reading the annotation helpful:

  * @ManyToOne -> “Many of me maps to one of the following”
  * @OneToMany -> “One of me maps to many of the following”
  * @OneToOne -> “One of me maps to one of the following”
  
So the above annotation of the private warehouse field could be read as: “Many of me (StockItems) maps to one of the following (Warehouse).”

## Make all relationships bidirectional

A bidirectional relationship means that if two entities A and B are in a relationship, they each “point” at each other. From a Java perspective, it means that class A has a field that takes instance(s) of B, and class B has a field that takes instance(s) of A.

While bidirectionality is not required, I recommend that you always create bidirectional relationships in order to simplify model manipulation.

The implications of a bidirectional relationship for annotations are as follows:

  * If one entity has an @OneToMany field, the entity on the other side has an @ManyToOne field.
  * If one entity has an @OneToOne field, the entity on the other side has an @OneToOne field.
  * If one entity has an @ManyToMany field, the entity on the other side also has an @ManyToMany field.

So, for example, if there is a StockItem class that declares that many instances of it map to one instance of a Warehouse:

{% highlight java %}
public class StockItem extends Model {
 
  @ManyToOne
  private Warehouse warehouse;
  :
}
{% endhighlight %}

Then the Warehouse class should have a field that declares that one instance of it maps to many instances of StockItem:

{% highlight java %}
public class Warehouse extends Model {
 
  @OneToMany(mappedBy="warehouse")
  private List stockItems = new ArrayList<>();
  :
}
{% endhighlight %}

See the next guideline for explanation of the mappedBy parameter.

## Bidirectional relationships must specify the owning entity using mappedBy

Anytime you specify a bidirectional relationship, only one of the entities will actually “implement” the relationship through the creation of a column in the table associated with that entity. The entity containing the column is referred to as the “owner” of the relationship. There should be only one “owner” in a bidirectional relationship, and to indicate that, you provide a “mappedBy” parameter in the non-owning entity. Let’s look at three cases:

### Case 1: @OneToMany and @ManyToOne

Entities with an @ManyToOne field must always “own” that relationship: the ORM will define a column in the table associated with that relationship to store the IDs of the other entity.

To make an @ManyToOne relationship truly bidirectional, you have to not only annotate a field in the other entity with @OneToMany, you also have to tell the ORM explicitly that the other entity is going to manage the relationship. You do this by adding the “mappedBy” parameter to the @OneToMany annotation, specifying the field in the other entity that will hold the relationship. For example:


{% highlight java %}
public class StockItem extends Model {
 
  @ManyToOne
  private Warehouse warehouse;
  :
}
 
public class Warehouse extends Model {
 
  @OneToMany(mappedBy="warehouse")
  private List stockItems = new ArrayList<>();
  :
}
{% endhighlight %}


Thus, StockItem “owns” the relationship with Warehouse, and Warehouse indicates this by telling the ORM that its OneToMany relationship is implemented through the warehouse field in the StockItem entity.

### Case 2: @OneToOne

The exact same situation exists with bidirectional OneToOne relationships. In this case, one of the entities should have the mappedBy parameter to indicate that the other entity is the owner, but either entity can be chosen. Here is an example:

{% highlight java %}
public class Warehouse extends Model {
 
  @OneToOne(mappedBy="warehouse")
  private Address address;
  :
}
 
public class Address extends Model {
 
  @OneToOne
  private Warehouse warehouse;
}
{% endhighlight %}

#### Case 3: @ManyToMany

Bidirectional ManyToMany relationships are just like bidirectional OneToOne relationships: you have to provide the mappedBy parameter to specify an owner. Here’s an example:

{% highlight java %}
public class Product extends Model {
 
  @ManyToMany
  private List tags = new ArrayList<>();
  :
}
     
public class Tag extends Model {
    
  @ManyToMany(mappedBy="tags")
  private List products = new ArrayList<>();
}
{% endhighlight %}

## Use CascadeType.PERSIST

The [OpenJPA documentation](http://openjpa.apache.org/builds/latest/docs/docbook/manual/jpa_overview_meta_field.html#jpa_overview_meta_cascade) recommends “liberal application” of the parameter “cascade=CascadeType.PERSIST” in relationship annotations. This tells the ORM to implicitly save out entities by following links. For example:

{% highlight java %}
public class Product extends Model {
  :
  @OneToMany(mappedBy="product", cascade=CascadeType.PERSIST)
  public List stockItems = new ArrayList<>();
  :
}
{% endhighlight %}

This says that if you invoke the save() on a Product instance, any StockItem instances in the stockitems field will also be saved.

Note that other cascade types, such as CascadeType.ALL, can result in unexpected entity deletion.

## Implement a find() method in entity classes

Provide all Entity classes with a static find() method that returns a new instance of an EBean Finder() instance.   It will look something like this, assuming the Entity class is named Foo:

{% highlight java %}
public static Finder<Long, Foo> find() {
  return new Finder<Long, Foo>(Long.class, Foo.class);
}
{% endhighlight %}

Now you can do queries using this find() method.  Here are some examples:

{% highlight java %}
// Get all Foos in DB.
List foos = Foo.find().findList();

// Get the Foo with PK=1
Foo foo = Foo.find().byId(1L)

// A more complicated query
List foos = Foo.find()
                    .where()
                    .ge("orderDate", lastWeek)
                    .orderBy("customerId, idDescription")
                    .setMaxRows(10)
                    .findList();
{% endhighlight %}


See the resources associated with this module for links to pages with more information about the Finder API.