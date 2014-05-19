---
title: "Practice WOD: DigitsForm"
published: true
morea_id: experience-digitsform
morea_type: experience
morea_summary: "Add form processing to your Digits application."
morea_sort_order: 2
morea_labels:
---

# Practice WOD: DigitsForm

Prior to doing this WOD, you should have reviewed all the material in the Resources section of this module and watched the screencasts.

Next, create a new branch off of a successfully completed branch from the first WOD. Name this new branch “Attempt-N-1″, where N is the original branch you’re going to base this WOD on.  For example, if the branch “Attempt-2″ contains the code base that you want to build this WOD on, then create a branch called “Attempt-2-1″ to indicate that this is the first attempt (1) to extend the code from “Attempt-2″ to support form processing.

## Instructions

Convert your form mockup into a dynamic form following the four step process outlined in the screencast.

  1. Start your timer.
  3. **Create a Java backing class for the form data.**  Call this views.formdata.ContactFormData. Provide three public String fields: firstName, lastName, and telephone, each with a default value of an empty string.
  4. **Make the view dynamic.**  Edit the parameter list to accept a form called contactForm. Add the @import helper._ statement. Replace the <form> element with a call to the @form scala template.  Replace the name, id, and value attributes of the <input> elements with calls to to the contactForm parameter.
  5. **Handle the form in the controller.** Modify the controller method handling the GET request to pass an empty form object to the view template.   Add a new controller method to handle the POST request from the user.  The implementation of this method should get the form data, then print it out to the Play console.
  6. **Support the POST request in the routes file.** Update the routes file to allow a POST request from the user.
  7. When finished, clicking the Add button after adding data to your NewContact page should print out the data in your Play console.  
  8. To end the WOD, commit the working code to your branch.

When finished, stop your timer, and record how many minutes it took you to complete the WOD. 

{% include wod-times.html Rx="<20 min" Av="20-30 min" Sd="30-40 min" DNF="40+ min" %}

## Demonstration

Once you've finished doing the WOD a single time, watch me do it:

{% include youtube.html id="y1ewgVgm2MI" %}

{% include wod-warning.html %}

{% include wod-repeat.html %}





