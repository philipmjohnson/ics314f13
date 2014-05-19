---
title: "Practice WOD: DigitsModel"
published: true
morea_id: experience-digitsmodel
morea_type: experience
morea_summary: "Add model classes to your Digits application."
morea_sort_order: 4
morea_labels:
---

# Practice WOD: DigitsModel

Just in case I haven’t made myself clear already, prior to doing this WOD, you should have reviewed all the material in the Resources section of this module and watched the screencasts. In particular, you will want to review Chapter 8 of Play with Java on producing output with view templates.

The purpose of this WOD is to introduce you to creating dynamic output and simple model classes. To do that, we will create a data structure containing all of the contacts added by the form, and then print out the contents of that data structure on the home page.  This data structure is a kind of “model” (from the model-view-controller design pattern).

To illustrate, here is what the home page should look like when the application is first retrieved in a browser. Notice that the contacts list is empty:

{% include small-img.html url="http://ics314f13.files.wordpress.com/2013/10/digitsmodel-1.png" %}

Now go to the New Contact page, type in a contact, and press Add:

{% include small-img.html url="http://ics314f13.files.wordpress.com/2013/10/digitsmodel-2.png" %}

This should add the contact to an in-memory repository.   Clicking on the Home button to return to the home page should display that contact:

{% include small-img.html url="http://ics314f13.files.wordpress.com/2013/10/digitsmodel-3.png" %}

To get ready for this WOD, create a new branch off of a successfully completed branch from the DigitsFormValidation WOD. Name this new branch “Attempt-N-N-N-1″, where N-N-N is the branch you’re going to base this WOD on.  For example, if the branch “Attempt-2-2-2″ contains the DigitsFormValidation code base that you want to build this WOD on, then create a branch called “Attempt-2-2-2-1″ to indicate that this is the first attempt (1) to extend the code from “Attempt-2-2-2″ to support models and dynamic output.

## Instructions

Provide dynamic output and a model for your Digits form data.

  1. Start your timer.
  2. Enable checkstyle.
  4. Implement a model for Contact data. Create a new package called “models” and a class called Contact, with private firstName, lastName,and telephone fields and public getters and setters. 
  5. Implement a simple in-memory repository for Contacts.
Create a class called ContactDB in the models package. It takes a ContactDataForm, creates a Contact instance from it, and adds it to an internal data structure. It also has a getContacts() method that returns all of the Contacts added so far.
  6. Update the Index.scala.html file to dynamically display all Contacts.
Define List[Contact] as a parameter, and use the @for control structure to loop through them.
  7. Update Application.java to interact with the model.
Upon receipt of a valid Contact from the user, add it to the ContactDB.  When displaying the home page, pass the current list of Contacts.
  8. When finished, test your code by adding some contacts.
  9. To end the WOD, commit the working code to your branch.

When finished, stop your timer, and record how many minutes it took you to complete the WOD. 

{% include wod-times.html Rx="<16 min" Av="16-22 min" Sd="22-28 min" DNF="28+ min" %}

## Demonstration

Once you've finished doing the WOD a single time, watch me do it:

{% include youtube.html id="4TRQP1HAJ4A" %}

{% include wod-warning.html %}

{% include wod-repeat.html %}





