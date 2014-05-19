---
title: "Practice WOD: DigitsMockup"
published: true
morea_id: experience-digitsmockup
morea_type: experience
morea_summary: "Create a mockup version of the Digits application."
morea_sort_order: 1
morea_labels:
---

# Practice WOD: DigitsMockup

Prior to doing this WOD, you should have reviewed all the material in the Resources section of this module and watched the screencasts.

For this WOD, please use GitHub branching.  This means you should create a GitHub repo called “digits”, populate it with the play-bootstrap-template, use the Play console to generate the Eclipse project files, then use Eclipse to rename the Eclipse project and the Play application.  (Note: if your copy of play-bootstrap-template contains lower-case view files (index.scala.html, etc.), then redownload the zip file from GitHub to get capitalized view files (Index.scala.html).  You will be graded off for using an out-of-date version of this template!)

Once you have created this “baseline” version, push your changes to the default (master) branch of your GitHub repository.  Then,  create a local branch called “Attempt-1″ in which you will do all your work for your first attempt at this WOD.  

## Instructions

Create a “mockup” (non-dynamic) version of a Play application called “digits“. 

  1. Start your timer.
  3. Do this attempt in a new branch off of master named Attempt-N (where N is an integer indicating your attempt.)
  4. Enable checkstyle, and make sure your template application runs in your browser at http://localhost:9000. (Invoke “; clean ; compile ; run” in the console to freshen things up.)
  5. Add any thematic changes you want.
  6. Edit the home page to provide a table of sample contacts (first name, last name, telephone number)
  7. Create a page called “NewContact” that contains a form allowing the user to enter a new contact.  A contact has three fields: a first name, a last name, and a telephone number.
  8. Edit the README.md file to provide a screen shot of your completed application, and an Overview, Installation, Usage, and Credits sections.
  9. Push your completed attempt branch to your GitHub project repository, and make sure the README.md displays correctly there.

Here is a sample version of the digits home page:

{% include small-img.html url="http://ics314f13.files.wordpress.com/2013/10/digits-home.png" %}

and here is an example of the digits newcontact page:

{% include small-img.html url="http://ics314f13.files.wordpress.com/2013/10/digits-newcontact.png" %}

When finished, stop your timer, and record how many minutes it took you to complete the WOD. 

{% include wod-times.html Rx="<20 min" Av="20-30 min" Sd="30-40 min" DNF="40+ min" %}

## Demonstration

Once you've finished doing the WOD a single time, watch me do it:

{% include youtube.html id="0i366b85cLQ" %}

{% include wod-warning.html %}

{% include wod-repeat.html %}





