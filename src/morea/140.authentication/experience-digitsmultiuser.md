---
title: "Practice WOD: DigitsMultiUser"
published: true
morea_id: experience-digitsmultiuser
morea_type: experience
morea_summary: "Support multiple users in your Digits application."
morea_sort_order: 2
morea_labels:
---

# Practice WOD: DigitsMultiUser

The goal of this WOD is to update the model in your Digits system to support multiple users. You should create two different users and initialize them with different contacts.  Then only the contacts associated with the authenticated user will be displayed after login.

## Instructions

 Support Create, Read, and Update for your digits application.  You have already implemented Create and Read, so this WOD simply requires you to modify the existing code to support Update. Follow the approach described in the screencast of using an ID field to distinguish between new and pre-existing instances.  

  1. Start your timer.
  2. Create a branch of your digits system called multiuser-1.
  3. Enable checkstyle.
  4. Add a small change to a file, then push this commit to GitHub with the message “Starting WOD”. 
  5. In this branch, implement multi-user support as described above.   
  6. When you have verified that it’s working, push your enhanced code to your branch on GitHub with the message “Finished WOD”.  The difference between the timestamps associated with the two commits represent your WOD time, and the code diffs represent your implementation.

When finished, stop your timer, and record how many minutes it took you to complete the WOD. 

{% include wod-times.html Rx="<10 min" Av="10-15 min" Sd="15-20 min" DNF="20+ min" %}

## Demonstration

Once you've finished doing the WOD a single time, watch me do it:

{% include youtube.html id="Ub4DUtJ4kC8" %}

{% include wod-warning.html %}

{% include wod-repeat.html %}

When you’ve finished doing this WOD as many times as you need, you might want to merge your changes into the master branch so that they are easily available for future WODs.





