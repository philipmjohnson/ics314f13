---
title: "Practice WOD: DigitsMySQL"
published: true
morea_id: experience-digitsmysql
morea_type: experience
morea_summary: "Implement back-end persistence for your Digits application"
morea_sort_order: 3
morea_labels:
---

# Practice WOD: DigitsMySQL

Before starting these WODs, you should have successfully finished the play-example-mysql experience.   Finishing this assignment means that you will have successfully set up MySQL on your computer, and installed and run a Play application that reads and writes data from that database. You will have also successfully deployed that application to CloudBees and set up its MySQL back-end.

The goal of this WOD is to start learning how to implement back-end persistence for your web applications using MySQL and EBean.

Before starting this WOD, you should set up your environment for running a recent version of your Digits application.  This version should be committed to the master branch and should support multiple users.

You should also have a local copy of play-example-mysql in Eclipse for reference.

## Instructions

  1. Start your timer.
  2. Create branch mysql-1. Create a branch off your master called “mysql-1″ to hold all of the work associated with this WOD. If this is not the first time you’re doing the WOD, increment the number as necessary.
  3. Create ERD.  Create a Lucid Chart showing the entities, relationships, and fields to be implemented in your Digits application.
  4. Enhance project files for MySQL.  Compare build.sbt, application.conf in play-example-mysql to the digits project versions, and update as necessary for MySQL.
  5. Fix the Digits system to use -1 as the new Contact sentinel value, not 0.  In MySQL, ids can start with 0, so using 0 as the value to indicate a new Contact will lead to bugs.  Update the system to use -1 as the sentinel value.  Check Application.java, ContactDB.java, ContactFormData.java, and routes.
  6. Annotate entity classes.  Remember to extend Model, add @Entity, add SerialVersionUID, add @Id, and add bidirectional relationship annotations.  Add a find() method to simplify access to the EBean query language. Add getters and setters as needed.
  7. Update ContactDB and UserInfoDB to use MySQL.  Now edit the database classes to store and retrieve entities from MySQL, not from the in-memory structures.
  8. Update Global.java to implement admin.  Note that we now have to check to see if the Admin contacts have been already created on startup to prevent them from being created multiple times.
  9. Setup new digits database.  Create a new database called “digits” in your local MySQL server.  Edit your environment variable to refer to it.
  10. Run system, and debug any errors that occur.  It is very helpful to monitor the contents of your MySQL database tables to better understand what your Play code is doing (or not doing).
  11. Commit your changes.   When you have it working, commit your changes. Use “Finished WOD.” as the commit message.

When finished, stop your timer, and record how many minutes it took you to complete the WOD. 

{% include wod-times.html Rx="< 60 min" Av="60-75 min" Sd="75-90 min" DNF="90+ min" %}

## Demonstration

Once you've finished doing the WOD a single time, watch me do it:

{% include youtube.html id="5Twrvt7uN4o" %}

{% include wod-warning.html %}
