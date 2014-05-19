---
title: "Practice WOD: DigitsTextTemplate"
published: true
morea_id: experience-digitstexttemplate
morea_type: experience
morea_summary: "Refactor your Digits application using Scala templates"
morea_sort_order: 2
morea_labels:
---

# Practice WOD: DigitsTextTemplate

The goal of this WOD is to refactor your Digits form template using the scala templates in play-example-form.

Create a new branch off of your latest digits application from the last module. Name this new branch “DigitsTextTemplate-1″, indicating that this is the first attempt at the DigitsTextTemplate WOD.

## Instructions

Create a revised version of your Digits application in which you use the @text Scala template from the [play-example-form](https://github.com/ics-software-engineering/play-example-form) system. 

  1. Start your timer.
  2. Enable checkstyle.
  3. Create a views.bootstrap3 package.
  4. Copy the text.scala.html file into this package.
  5. Edit your NewContact.scala.html template to import this package, and replace the nested div's for each form group by the @text template.
  6. Test your code by submitting correct and incorrect forms to ensure the behavior remains the same. 
  7. To end the WOD, commit the working code to your branch.

When finished, stop your timer, and record how many minutes it took you to complete the WOD. 

{% include wod-times.html Rx="<8 min" Av="8-12 min" Sd="12-16 min" DNF="16+ min" %}

## Demonstration

Once you've finished doing the WOD a single time, watch me do it:

{% include youtube.html id="irBUErRo2Co" %}

{% include wod-warning.html %}

{% include wod-repeat.html %}





