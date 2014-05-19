---
title: "Practice WOD: DigitsInit"
published: true
morea_id: experience-digitsinit
morea_type: experience
morea_summary: "Create initialization code for Play applications."
morea_sort_order: 5
morea_labels:
---

# Practice WOD: DigitsInit

The goal of this WOD is to learn about the Play Global class, which enables you to do initialization activities upon system startup. To prepare for this WOD, read about the [Global object and the onStartup method](http://www.playframework.com/documentation/2.2.x/JavaGlobal).



## Instructions

Create a revised version of your Digits application which initializes the system with four contacts. 

  1. Start your timer.
  2. Create a new branch off of your last WOD. Name this new branch “DigitsInit-1″, indicating that this is the first attempt at the DigitsInit WOD.
  3. Enable checkstyle.
  4. Create a Global class and implement the onStartup method, then create four contacts and add them to the ContactDB on system startup. Here’s what the home page might look like upon initial retrieval:

{% include small-img.html url="http://ics314f13.files.wordpress.com/2013/10/digits-init.png" %}

  *  To end the WOD, commit the working code to your branch.

When finished, stop your timer, and record how many minutes it took you to complete the WOD. 

{% include wod-times.html Rx="<8 min" Av="8-12 min" Sd="12-16 min" DNF="16+ min" %}

## Demonstration

Once you've finished doing the WOD a single time, watch me do it. 

Note: since the time of this screencast, I discovered the way to eliminate the checkstyle error associated with the Global.java class in the default package. Simply create a package.html file in the same directory as Global.java.  You may need to clear the checkstyle warnings manually and then re-run checkstyle, but the warning will then disappear. 

{% include youtube.html id="GYXXyoPaXWw" %}

{% include wod-warning.html %}






