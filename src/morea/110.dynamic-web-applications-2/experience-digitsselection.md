---
title: "Practice WOD: DigitsSelection"
published: true
morea_id: experience-digitsselection
morea_type: experience
morea_summary: "Add a pull-down menu to your Digits application."
morea_sort_order: 3
morea_labels:
---

# Practice WOD: DigitsSelection

The goal of this WOD is to add a “Telephone Type” pull-down menu (using the <select> form control) to your digits form. It should like this:

{% include small-img.html url="http://ics314f13.files.wordpress.com/2013/10/digits-selection.png" %}

## Instructions



Create a revised version of your Digits application in which you use the @select Scala template from the play-example-form system to implement a drop-down list indicating the type of phone. 

  1. Start your timer.
  2. Create a new branch off of your last WOD. Name this new branch “DigitsSelection-1″, indicating that this is the first attempt at the DigitsSelection WOD.
  3. Enable checkstyle.
  4. Provide the select template. Copy the select.scala.html file into your views.bootstrap3 package.
  5. Update NewContact to use @select. First, Invoke the @select template within your NewContact.scala.html template to produce a Telephone Type pull-down  list after the Telephone text field. Second, add a telephoneTypeMap parameter to your NewContact.scala.html template of type Map[String, Boolean].
  6. Create a representation for telephone types.  Create a class TelephoneTypes in the views.formdata package. It has a static method getTypes() that returns a Map<String, Boolean> of all acceptable telephone types.  (The value defaults to false).   It also has a static getTypes(String) method that returns a Map<String, Boolean> with the specified telephone type set to true. Finally, it has an isType(String) method that returns true if the passed string is a legal telephone type.
  7. Add telephone types to form and model classes.
Update the ContactFormData and Contact classes with a String field telephoneType to hold the telephone type.
  8. Add telephone types to form and model classes.  Update the ContactFormData and Contact classes with a String field telephoneType to hold the telephone type.
  9. Provide validation for telephone types. Update the validate() method to check to make sure the form is submitting a valid telephone type.
  10. Process telephone types in controller. Update your controller methods newContact and postContact to pass a Map<String, Boolean> representing TelephoneType to  the form.
  11. Update Contact Listing. Add a new column to your output table that lists the phone types. 
  12. Test your system by adding a new contact with “Mobile” as the phone type, then editing that contact.  The form should display “Mobile”,  not the default “Home”.
  13. To end the WOD, commit the working code to your branch.

When finished, stop your timer, and record how many minutes it took you to complete the WOD. 

{% include wod-times.html Rx="<27 min" Av="27-37 min" Sd="37-47 min" DNF="47+ min" %}

## Demonstration

Once you've finished doing the WOD a single time, watch me do it:

{% include youtube.html id="kGh82_ujnHo" %}

{% include wod-warning.html %}

{% include wod-repeat.html %}





