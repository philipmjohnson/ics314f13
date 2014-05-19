---
title: "A20: Dynamic Surferpedia"
published: true
morea_id: experience-dynamic-surferpedia
morea_type: experience
morea_summary: "Consolidate your insights by making Surferpedia dynamic."
morea_sort_order: 7
morea_labels:
---

# A20: Dynamic Surferpedia

## Functional Requirements

For this assignment, you must convert your “static” Surferpedia web application into a “dynamic” one.  This involves the following basic functionality:

  * Model: There is a model, consisting of a Surfer class and a SurferDB class that will hold in-memory instances of Surfers.
  * Create: You can create new Surfers and add them to the web application by filling out a form.
  * Read: You can show data about an existing surfer by selecting their name in one of the pull-down menus.
  * Update: You can edit and save updated information about a given surfer.
  * Delete: You can remove surfers from the system.
  * Dynamic view: The menu items and the carousel images on the home page are generated dynamically by querying the model classes for the current data.
  * Initialization: For convenience, you should initialize your Model on system startup with three Surfer instances (one Male, one Female, and one Grom).  Use the Global class’s onStart method to initialize the SurferDB class.

## Process

Begin by creating a branch of your static Surferpedia GitHub repository called “dynamic”.  Do all of your conversion work in this branch.   This enables you to easily backtrack to your static version if you need to (by simply switching to the Main branch).

I suggest you first implement the Model, then implement the Create capability, then Read, then Update, then Delete.   Pretty early on, you will want to implement automatic initialization of three surfers, since that will speed up development. Deal with the Home page last, after you have individual surfer actions working.

Note that you should work with one other person on this project (see below). Of course, you can always post questions to the class discussion list.

While doing this assignment, I found that I needed to create a controller method that passed more than 7 parameters, which violated a checkstyle warning.  Upon reflection, I do not believe this is a useful checkstyle check, so I deleted it from the Checkstyle configuration file.  You can feel free to download and install this revised checkstyle.xml file following the class instructions.

## Collaboration 

I have assigned everyone a partner for this project, see this spreadsheet for the assignment.   You must collaborate with your partner at least twice for one hour each time, but you can collaborate much more than that if you want.  Collaboration can take many forms:

  * Two one hour face to face meetings.
  * Two one hour google hangouts to work on specific issues.
  * “Office hours”: times every night when you and your partner agree to join a google hangout to answer questions as they come up.

You can and should jointly develop code and look at each other’s sources, but you cannot share files:  all of the code in your repository must have been typed in by you.

A great use of your partner is to ask them to test your system to see if it satisfies one or more of functional requirements.

There is one group of three: you folks must collaborate for a total of two hours each and can decide for yourselves how to enable each of you to collaborate with one or both of the others for a minimum of two hours.

Feel free to collaborate with others in the class, but you must collaborate with your assigned partner at least twice for one hour each time.

In your technical essay about this assignment, you will discuss when and how you collaborated with your partner and how effective that collaboration was.

## User Interface

To make the requirements more concrete, here are some user interface snapshots illustrating your target functionality.

### Home Page


{% include small-img.html url="http://ics314f13.files.wordpress.com/2013/10/dyn-surferpedia-home.png" %}

The home page is not much different from before, although the implementation is dynamic: both the contents of the drop-down menu items, as well as the carousel images, are determined by queries to the Model classes. There is also a “New” navbar item which enables you to add a new Surfer to the system.

### Show Surfer

Selecting a surfer from the navbar brings up a pages providing details on the surfer, such as this one: 

{% include small-img.html url="http://ics314f13.files.wordpress.com/2013/10/dyn-surferpedia-surfer.png" %}

First, you can see that the picture on this page can be different from the picture on the home page.  This enables you to provide a “landscape” style action photo for the home page and a “portrait” style headshot for this page, addressing some of the formatting issues you may have encountered previously.

Second, the bio statement has structure: there are fields for the surfer’s name, home, awards, and bio paragraph.

Third, there are two links on this page: one to bring up a form to edit the data associated with this surfer, and one to delete the surfer.

Fourth, notice the URL used to retrieve this surfer: http://localhost:9000/surfer/eddieaikau. In this system, each surfer is defined with a unique “slug”, which is a string that can be used to retrieve that surfer via an URL.

### Edit Surfer

Clicking on the edit link from the last image brings up a form that is pre-filled with the existing data about the surfer: 

{% include small-img.html url="http://ics314f13.files.wordpress.com/2013/10/dyn-surferpedia-edit.png" %}

This is a relatively standard form.   Note that there is help text associated with each form control. Pictures are provided to the system via URLs.  This avoids the need to do a file upload into the images directory.  The only file required for the images directory is the header image. Note that the URL to retrieve this page is http://localhost:9000/surfer/eddieaikau/edit.

Also note that the “Slug” field is read-only.   You can only provide a slug for a surfer once, when that surfer is created.   When editing the data associated with an existing surfer, the slug field is displayed for reference purposes, but you cannot change its value.

The type field is a pull-down menu allowing you to select “Male”, “Female”, or “Grom”.  This value is used to determine which pull-down menu the surfer appears in.   You can edit this value (for example, when a “Grom” grows up and becomes a “Male” or “Female”).

### New Surfer 

Pressing the “New” link on the navbar brings up the following form for defining a new surfer: 

{% include small-img.html url="http://ics314f13.files.wordpress.com/2013/10/dyn-surferpedia-new.png" %}

This is a pretty typical form.  For validation:

  * Name must be non-empty.
  * Home must be non-empty.
  * Awards is optional. It can be empty.
  * Carousel URL must be non-empty.
  * Bio URL must be non-empty.
  * Bio must be non-empty.
  * Slug must be only letters and digits, and must be unique (i.e. it cannot match any currently defined slug).
  * Type must be either “Male”, “Female”, or “Grom”.

Submitting an invalid form should provide useful feedback. For example, submitting the form without providing any data should result in something like the following: 

{% include small-img.html url="http://ics314f13.files.wordpress.com/2013/10/dyn-surfer-edit-validate-2.png" %}

## Hints

To do this assignment, you are essentially blending together the knowledge you have gained from the Digits application with the more interesting content and presentation you designed for the Surferpedia system.  You may also want to look at the the play-example-form system for more inspiration.

### Files

Here is a snapshot showing you the file layout for my implementation:

{% include small-img.html url="http://ics314f13.files.wordpress.com/2013/10/package-explorer-2.png" %}

This snapshot should be interesting to you as much for the files that are present as well as for the files that are absent. Of particular interest might be the following:

  * There are only four views (Index, Main, ManageSurfer, and ShowSurfer) to handle any number of surfers.
  * The public/images directory contains only the header.jpg file.
  * I created a custom scala template in the bootstrap3 directory called slug.scala.html which made it easy to make the slug form control readonly when editing an existing surfer’s data.
  * There is a package.html file in the same directory as Global.java, which avoids a checkstyle warning.

### Routes

Here’s  my routes file:

    # Routes
    # This file defines all application routes (Higher priority routes first)
    # ~~~~
     
    # Home page
    GET     /                           controllers.Application.index()
    GET     /new                        controllers.Application.newSurfer()
    GET     /surfer/:slug               controllers.Application.getSurfer(slug)
    GET     /surfer/:slug/delete        controllers.Application.deleteSurfer(slug)
    GET     /surfer/:slug/edit          controllers.Application.manageSurfer(slug)
    POST    /post                       controllers.Application.postSurfer()
     
    # Map static resources from the /public folder to the /assets URL path
    GET     /assets/*file               controllers.Assets.at(path="/public", file)


If you like, you can simply use this as the contents of your routes file in order to set up the controllers appropriately.

### CSS

In the static version of this system, you defined CSS classes for each surfer. Unfortunately, CSS is static: you cannot (without Javascript wizardry) dynamically define new CSS classes at run-time.  To provide a simple implementation, recognize that the old static classes consisted of truly static, unchanging properties (height), along with a single changing property (background-image).  The way to make things dynamic is to realize that you can provide a “style” property in any <div> with CSS properties and values.   So, you can combine a static CSS class in a div along with a little bit of dynamic values:

    <div class="carousel-image" style="background-image: url('@url');"></div>

### The Carousel

Getting the carousel to work requires a little thought, because you have two places (the carousel-indicators and the carousel items) where the first, and only the first entry should have the “active” class associated with it.

This takes a little bit of thought to implement using Scala templates.  You might want to look at the Scala Template Tricks page.

I also discovered that you can attach the property data-ride=”carousel” to the <div> containing class=”carousel slide” in order to get the carousel to automatically start sliding upon retrieval.  This is not documented in the bootstrap carousel documentation (but should be!)

