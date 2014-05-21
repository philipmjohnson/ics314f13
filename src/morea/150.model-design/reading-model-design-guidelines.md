---
title: "Model design guidelines"
published: true
morea_id: reading-model-design-guidelines
morea_summary: "Standards for model design in this class"
morea_type: reading
morea_sort_order: 5
morea_labels:
---

# Model design guidelines


## Use Lucid Chart to document your model design

The “model design” consists of the entities and relationships between them.

[LucidChart](https://www.lucidchart.com/) is a free plugin for Google Docs.   Once installed, you can click on the “More Shapes” button, then check “Entity Relationships” to enable: (a) special Entity boxes, and (b) new line ending shapes corresponding to Crow’s Foot relationship diagrams.

Generally, a very simple ER diagram just showing the entities and relationships is enough to establish how the Java model classes will look.   For example:

{% include small-img.html url="http://ics314f13.files.wordpress.com/2013/11/sample-erd.png" %}

## Use crow’s foot notation

There are many different ways to represent the relationships between entities. For this class, please use crow’s foot notation (which, conveniently, is what Lucid Charts provides).

Crow’s foot notation consists of a pair of icons at each end of a line.   The “outer” icon represents the “maximum” value, and the “inner” icon represents the “minimum” value:


{% include small-img.html url="http://ics314f13.files.wordpress.com/2013/11/screen-shot-2013-11-07-at-8-47-37-am.png" %}

This indicates that a specific garden instance can have zero or more plant species in it (because some gardens might be “brand new” and consist only of dirt).  However, every instance of a plant species (for example, Digitalis Purpurea) is associated with at least one garden (i.e. we don’t create a plant species in the database unless there’s a garden instance that uses it).

Note that Lucid Charts also provides a one-to-one and one-to-many relationship notation that does not specify the minimum cardinality:

{% include small-img.html url="http://ics314f13.files.wordpress.com/2013/11/bad-crows-feet4.png" %}

Do not use the above notations in your diagrams! Instead, use the notations that include the minimum cardinalities as well, as this provides more information to the reader:

{% include small-img.html url="http://ics314f13.files.wordpress.com/2013/11/good-crows-feet5.png" %}

Now you can see that a Prescription instance cannot exist without being associated with a Person instance, but a Person instance can exist without any associated Prescription instances.

## Heuristics for entity identification

Entities should be:

  * Unique for a particular model design.  Consolidate duplicate entity types found during design.
  * A singular noun (i.e. “Patient”, not “Patients”)
  * Necessary in order to answer at least one of the queries to be asked of the model.

Entities should not:

  * Be the name of an individual object (i.e. “University of Hawaii at Manoa”)
  * Express more than one concept (i.e. “equipment/bed”)

## Heuristics for relationship identification

### One to one relationships

The major issue you will have with one-to-one relationships is whether to actually specify the relationship at all, or else simply provide the data as fields within the entity instance. For example, consider an entity type Person where each Person instance has an address consisting of a street, city, state, and zip code.  Should you specify the address data as fields in the Person entity, or should you create a separate Address entity type?

There is no single answer to this question: the right choice depends upon how you intend to use the data.  For example, it would be better to specify the Address as its own entity type if:

  * It is possible for multiple people to share the same address. Note that in this case, you will not only want Address to be its own Entity type, but the relationship is now one-to-many (a single Address instance can be associated with many Person instances.)
  * You will want to perform queries over the data in the Address field. For example, if you want to find out all the Person instances in a certain zip code, then you might want to have Address (and perhaps Zip Code) as their own entity types. (It is still possible to implement that query without separate Entities, but it might be less efficient.)

