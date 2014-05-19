---
title: "Practice WOD: DigitsCRUD"
published: true
morea_id: experience-digitscrud
morea_type: experience
morea_summary: "Add CRUD to your Digits application."
morea_sort_order: 5
morea_labels:
---

# Practice WOD: DigitsCRUD

The purpose of this WOD is to show how with slight changes to your last WOD, you can create a CRUD application (well, almost, we won’t do Delete). 


The UI will change as follows. The home page table should now include an “edit” link for each entry:

{% include small-img.html url="http://ics314f13.files.wordpress.com/2013/10/digitscrud-read.png" %}

Clicking that edit link will pre-fill the New Contact page form with the data from that entry:

{% include small-img.html url="http://ics314f13.files.wordpress.com/2013/10/digitscrud-update.png" %}

Editing that entry (such as changing ”Joe” to “Joseph”, then clicking “Add” results in the Joe Smith entry being updated (not the creation of an additional entry):

{% include small-img.html url="http://ics314f13.files.wordpress.com/2013/10/digitscrud-update2.png" %}

To get ready for this WOD, create a new branch off of a successfully completed branch from the DigitsModel WOD. Name this new branch “Attempt-N-N-N-N-1″, where N-N-N-N is the branch you’re going to base this WOD on.  For example, if the branch “Attempt-2-2-2-2″ contains the DigitsModel code base that you want to build this WOD on, then create a branch called “Attempt-2-2-2-2-1″ to indicate that this is the first attempt (1) to extend the code from “Attempt-2-2-2-2″ to support models and dynamic output. (Yes, I know this naming scheme has gotten ridiculous. I will choose a better one in the next module.)

## Instructions

 Support Create, Read, and Update for your digits application.  You have already implemented Create and Read, so this WOD simply requires you to modify the existing code to support Update. Follow the approach described in the screencast of using an ID field to distinguish between new and pre-existing instances.  

  1. Start your timer.
  2. Enable checkstyle.
  4. Update the Contact and ContactFormData classes with a long ID field.
  5. Update the ContactFormData class with a default no-arg constructor (required by Play) as well as a constructor that accepts a Contact.
  6. Update the ContactDB class to use a Map to store the contacts (indexed by ID), and to provide a getContact(id) method to retrieve a Contact based upon its ID.
  7. Update the ContactDB.addContact method to either create a new Contact (and ID) if the form data’s ID value is 0, or else update a pre-existing entry (if it’s non-zero).
  8. Update the routes file so that the newContact method takes “id: Long ?= 0″ as a parameter.
  9. Update the newContact controller to create either an empty ContactFormData class (if the passed ID is 0) or one created from an existing Contact (if the passed ID is non-zero).  Call Form.form(ContractFormData.class).fill(data) to populate the Play Form with the ContractFormData instance data.
  10. Update NewContract.scala.html with a hidden field containing the ID value.
  11. Update Index.scala.html with an “Edit” column that invokes  the newContact controller method with the appropriate ID to edit each row’s data.
  12. When finished with these changes, test your system and correct any errors that occur. 
  13. To end the WOD, commit the working code to your branch.

When finished, stop your timer, and record how many minutes it took you to complete the WOD. 

{% include wod-times.html Rx="<26 min" Av="26-40 min" Sd="40-50 min" DNF="50+ min" %}

## Demonstration

Once you've finished doing the WOD a single time, watch me do it:

{% include youtube.html id="zWOzXciyL4c" %}

{% include wod-warning.html %}

{% include wod-repeat.html %}





