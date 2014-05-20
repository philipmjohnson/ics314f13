---
title: "Practice WOD: ModalDialog"
published: true
morea_id: experience-modal-dialog
morea_type: experience
morea_summary: "Add a modal dialog to your Surferpedia application."
morea_sort_order: 4
morea_labels:
---

# Practice WOD: ModalDialog

It seems a shame to have a module that doesn’t have any programming in it, so let’s finish this one off with a simple programming WOD followed by pushing your enhancement to the cloud.

Currently, the “delete” action for surfers doesn’t request confirmation. Let’s fix that by adding a Twitter Bootstrap modal dialog that is triggered when the “delete” link is clicked:

{% include small-img.html url="http://ics314f13.files.wordpress.com/2013/10/delete-surfer-modal.png" %}

You should quickly review the [Twitter Bootstrap modal dialog documentation](http://getbootstrap.com/javascript/#modals) before starting this WOD.   Unlike the first two WODs in this module, try this one on your own before looking at my solution.

## Instructions

Create a revised version of your Digits application in which you use the @select Scala template from the play-example-form system to implement a drop-down list indicating the type of phone. 

  1. Start your timer.
  2. Create a branch of your Surferpedia system called “delete-dialog-1″.
  3. Add a small change to a file, then push this commit to GitHub with the message “Starting delete dialog WOD”. 
  4. In this branch, implement a modal dialog as illustrated above to request confirmation when the user tries to delete a surfer.
  5. When finished, deploy your Surferpedia system to CloudBees.
  6. When you have verified that it’s working on CloudBees, push your enhanced code to your branch on GitHub with the message “Finished delete dialog WOD”.  The difference between the timestamps associated with the two commits represent your WOD time, and the code diffs represent your implementation.

When finished, stop your timer, and record how many minutes it took you to complete the WOD. 

{% include wod-times.html Rx="<5 min" Av="5-10 min" Sd="10-15 min" DNF="15+ min" %}

## Demonstration

Once you've finished doing the WOD a single time, watch me do it:

{% include youtube.html id="8CT-K-5k1Uk" %}

{% include wod-warning.html %}






