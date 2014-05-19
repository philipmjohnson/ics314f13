---
title: "Practice WOD: DigitsFormValidation"
published: true
morea_id: experience-digitsformvalidation
morea_type: experience
morea_summary: "Add form data validation to your Digits application."
morea_sort_order: 3
morea_labels:
---

# Practice WOD: DigitsFormValidation

Prior to doing this WOD, you should have reviewed all the material in the Resources section of this module and watched the screencasts.

Next, create a new branch off of a successfully completed branch from the first WOD. Name this new branch “Attempt-N-1″, where N is the original branch you’re going to base this WOD on.  For example, if the branch “Attempt-2″ contains the code base that you want to build this WOD on, then create a branch called “Attempt-2-1″ to indicate that this is the first attempt (1) to extend the code from “Attempt-2″ to support form processing.

## Instructions

Provide validation for your Digits form.  Specifically: the first name, last name, and telephone number fields should not be empty. In addition, the telephone field should be 12 characters long. Follow the three steps described in the screencast.

  1. Start your timer.
  3. **Implement the validate() method in views.formdata.ContactFormData.** Check to make sure all three fields are non-empty and telephone is 12 characters.
  4. **Implement validation in the view.** For each control, add the has-error CSS class if errors were found. Add a help-block that will display any validation errors associated with the field.
  5. **Check for validation problems in the controller.** Convert your controller method for the POST request into an if-then-else depending upon whether errors were found, and return badRequest rather than OK.
  6. When finished, test your code by clicking the Add button with the various kinds of validation problems.
  7. To end the WOD, commit the working code to your branch.

When finished, stop your timer, and record how many minutes it took you to complete the WOD. 

{% include wod-times.html Rx="<18 min" Av="18-35 min" Sd="25-30 min" DNF="30+ min" %}

## Demonstration

Once you've finished doing the WOD a single time, watch me do it:

{% include youtube.html id="LPyXGOKskfE" %}

{% include wod-warning.html %}

{% include wod-repeat.html %}





