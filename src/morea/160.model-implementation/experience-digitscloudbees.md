---
title: "Practice WOD: DigitsCloudBees"
published: true
morea_id: experience-digitscloudbees
morea_type: experience
morea_summary: "Deploy your Digits application using CloudBees MySQL."
morea_sort_order: 4
morea_labels:
---

# Practice WOD: DigitsCloudBees

The goal of this WOD is to learn how to deploy a MySQL-backed Play application to CloudBees.

Before starting this WOD, you should have finished the prior WOD and have a Digits application that uses MySQL as its back-end. This version should be committed to the master branch.

You should also have a local copy of play-example-mysql in Eclipse for reference, and have successfully deployed that application to your CloudBees account.  This WOD simply repeats those steps for your Digits application.

## Instructions

Here are the steps to follow for this WOD.  For more detailed information, see the instructions for CloudBees deployment for the [play-example-mysql](http://ics-software-engineering.github.io/play-example-mysql/) project.

  1. Start your timer.
  2. Create branch cloudbees-1. Create a branch off your master called “cloudbees-1″ to hold all of the work associated with this WOD. If this is not the first time you’re doing the WOD, increment the number as necessary.
  3. Create an application stack on CloudBees.  Use the ClickStart facility to set up an application called digits on CloudBees. ClickStart sets up the database as well as application container automatically. (Note: if the ClickStart process fails, don’t just restart it immediately. Instead, check the Apps, DBs, Builds, Repositories links and delete any “digits” found before retrying.)
  4. Manually create the digits database tables. Using the 1.sql file as a guide, manually create the tables required for your application.
  5. Disable database evolutions.  Copy over the application.cloudbees.conf file from play-example-mysql, then use the bees config:set command to tell CloudBees to use that file rather than application.conf.  This file disables database evolutions.
  6. Define your administrator credentials.  Your Digits application requires two admin environment variables.  Use the bees config:set command to provide CloudBees with the admin credentials. If you’ve forgotten how to do this, see the DigitsCloudAuthentication practice WOD.
  7. Deploy your application.  Now create a distribution of your digits application, and deploy it to CloudBees.
  8. Check to see that it is successfully deployed.  Go to your CloudBees URL and make sure you can login and that the application works correctly.
  9. Commit your changes.   When you have it working, commit your changes. Use “Finished WOD.” as the commit message.

When finished, stop your timer, and record how many minutes it took you to complete the WOD. 

{% include wod-times.html Rx="< 28 min" Av="28-38 min" Sd="38-50 min" DNF="50+ min" %}

## Demonstration

Once you've finished doing the WOD a single time, watch me do it:

{% include youtube.html id="5nSfl8t7ys0" %}

{% include wod-warning.html %}
