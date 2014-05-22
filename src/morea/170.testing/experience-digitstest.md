---
title: "Practice WOD: DigitsTest"
published: true
morea_id: experience-digitstest
morea_type: experience
morea_summary: "Add testing to your Digits application."
morea_sort_order: 1
morea_labels:
---

# Practice WOD: DigitsTest

The goal of this WOD is to add a set of simple tests to your Digits application.  You should create tests for the following use cases:

  * BasicRetrieval: Home page can be displayed.
  * Login: A user can go to home page, login, and logout.
  * NewContact: A user can go to home page, login, create new contact, and logout.

There are other important use cases (editing a pre-existing contact, deleting a contact, and ensuring that non-authenticated users cannot see contacts), but creating a comprehensive set of use case tests is not the goal of this WOD.

(Prior to starting this WOD, you should have downloaded and run the tests associated with the play-example-fluentlenium and play-example-form systems.)



## Instructions

  1. Start your timer.
  2. Bring your master branch for the digits application up to date.
  3. Create a branch off the master branch of your digits system called testing-1.
  4. Add a small change to a file, then push a commit of this branch to GitHub with the message “Starting WOD”. 
  5. Delete ApplicationTest.java. We focus on integration tests.
  6. Create a method called testBasicRetrieval() in the IntegrationTest class. It should just test to see that the home (index) page can be retrieved. This  verifies that the testing framework is working. 
  7. Create a method called testLogin() in the IntegrationTest class.  This method should: go to the index page, click on the login link, fill out the login form, login, check to make sure that the login process was successful, logout, and check to make sure that logout was successful.  Use the page object pattern (which requires the creation of an IndexPage class and a LoginPage class to encapsulate all page-related behaviors.  
  8. Create a method called testNewContact in the IntegrationTest class. This method should go to the index page, login, go to the New Contact page, create a new contact, and verify that the new contact now appears in the index page.  Following the page object pattern, you will need to create a NewContactPage class to encapsulate the behavior associated with this page.
  9. When you have verified that the tests work, push your enhanced code to your branch on GitHub with the message “Finished WOD”.  The difference between the timestamps associated with the two commits represent your WOD time, and the code diffs represent your implementation.

When finished, stop your timer, and record how many minutes it took you to complete the WOD. 

{% include wod-times.html Rx="< 40 min" Av="40-50 min" Sd="50-60 min" DNF="60+ min" %}

## Demonstration

Once you've finished doing the WOD a single time, watch me do it:

{% include youtube.html id="balH4-P-VDY" %}

{% include wod-warning.html %}





