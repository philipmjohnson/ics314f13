---
title: "Practice WOD: DigitsTelephone"
published: true
morea_id: experience-digitstelephone
morea_type: experience
morea_summary: "Create application-specific Scala templates"
morea_sort_order: 4
morea_labels:
---

# Practice WOD: DigitsTelephone

The goal of this WOD is to practice the creation of new Scala templates for application-specific situations.  In this case, you will create single line containing two form controls: a telephone and a telephone type:

{% include small-img.html url="http://ics314f13.files.wordpress.com/2013/10/digits-telephone.png" %}

## Instructions

Create a revised version of your Digits application in which you put the telephone number and telephone type from the last WOD on the same line. 

  1. Start your timer.
  2. Create a new branch off of your last WOD. Name this new branch “DigitsTelephone-1″, indicating that this is the first attempt at the DigitsTelephone WOD.
  3. Enable checkstyle.
  4. Create a new template in the bootstrap3 directory called telephone.scala.html that combines a telephone number and telephone type in a single form group that spans 12 columns.
  5. Place the error text directly under the form control.  Test to make sure error text shows up correctly.
  6. As this is a domain-specific control, you can hardwire labels and so forth if you wish to simplify the parameter list.
  7. To end the WOD, commit the working code to your branch.

When finished, stop your timer, and record how many minutes it took you to complete the WOD. 

{% include wod-times.html Rx="<20 min" Av="20-30 min" Sd="30-40 min" DNF="40+ min" %}

## Demonstration

Once you've finished doing the WOD a single time, watch me do it:

{% include youtube.html id="z_L72uD4348" %}

{% include wod-warning.html %}






