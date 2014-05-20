---
title: "Practice WOD: DigitsCloudAuthentication"
published: true
morea_id: experience-digitscloudauthentication
morea_type: experience
morea_summary: "Understand issues around cloud-based authorization and authentication."
morea_sort_order: 1
morea_labels:
---

# Practice WOD: DigitsCloudAuthentication

One important issue with authentication is keeping credentials private.   For example, in the previous WODs for this module, you have put the user name and password for authorized users directly into the source code, and committed that code to GitHub.  This strategy is obviously unusable for real world applications.

The goal of this WOD is for you to learn how to use environment variables to avoid putting authentication credentials into source code.  This can be used for both developing your application locally and deploying it to the cloud.   The goal is to provide the admin email and password in environment variables which the application uses to initialize the model.  If those environment variables are not found on startup, the application should indicate this immediately:

{% include small-img.html url="http://ics314f13.files.wordpress.com/2013/10/digits-admin-undefined.png" %}

The online references for this process include:

  * [Play framework documentation on configuration variables](http://www.playframework.com/documentation/2.0.1/ProductionConfiguration)
  * [CloudBees documentation on configuration variables in Play](https://wiki.cloudbees.com/bin/view/RUN/Playframework#HConfigurationVariablesandPlay)

It’s worth trying to solve this yourself for a few minutes before watching the solution.

## Instructions

 Support Create, Read, and Update for your digits application.  You have already implemented Create and Read, so this WOD simply requires you to modify the existing code to support Update. Follow the approach described in the screencast of using an ID field to distinguish between new and pre-existing instances.  

  1. Start your timer.
  2. Create a branch of your digits system called cloudauthentication-1.
  3. Do a “; clean ; compile ; run” and check localhost:9000 to make sure you are starting with a running system.
  4. Enable checkstyle.
  4. Add a small change to a file, then push this commit to GitHub with the message “Starting WOD”. 
  5. Define two environment variables to hold the admin email and password.
  6. Update application.conf to set two configuration properties from the environment variables.
  7. Update UserInfoDB with a static method to define admin credentials, as well as a static predicate that indicates whether or not admin credentials have been defined.
  8. Update Global to read the configuration properties on startup, and update the model with the administrator credentials (if they exist).
  9. Update Login.scala.html to display an alert if the admin credentials are not available within the application.
  10. Test your system locally.
  11. Once the system works locally, deploy your digits application to CloudBees. Verify that your alert is displayed (since no admin credentials exist on CloudBees).
  12. Use the bees config:set command to define the two admin credentials.
  13. Restart the application (using bees app:restart).  Verify that you can now login to the cloudbees app using your newly defined credentials.
  14. When you have verified that it’s working, push your enhanced code to your branch on GitHub with the message “Finished WOD”.  The difference between the timestamps associated with the two commits represent your WOD time, and the code diffs represent your implementation.

When finished, stop your timer, and record how many minutes it took you to complete the WOD. 

{% include wod-times.html Rx="<26 min" Av="26-40 min" Sd="40-50 min" DNF="50+ min" %}

## Demonstration

Once you've finished doing the WOD a single time, watch me do it:

{% include youtube.html id="PL1PYTW1LnA" %}

{% include wod-warning.html %}

{% include wod-repeat.html %}

When you’ve finished doing this WOD as many times as you need, you might want to merge your changes into the master branch so that they are easily available for future WODs.





