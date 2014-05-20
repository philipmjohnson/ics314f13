---
title: "Practice WOD: DigitsLogin"
published: true
morea_id: experience-digitslogin
morea_type: experience
morea_summary: "Add authorization and authentication to your Digits application."
morea_sort_order: 1
morea_labels:
---

# Practice WOD: DigitsLogin

The goal of this WOD is to add a login page to your Digits system so that only an authenticated user can access the list of contacts and the add/edit form. The behavior should be as follows:

(1) If the user is not authenticated, the home page does not display any list of contacts, and the navbar provides a link to a login page.

{% include small-img.html url="http://ics314f13.files.wordpress.com/2013/10/digits-login-2-home.png" %}

Clicking on the login link takes the unauthenticated user to the login page:

{% include small-img.html url="http://ics314f13.files.wordpress.com/2013/10/digits-login-2-login.png" %}

Once the user is authenticated, they should return to the home page which now lists contacts, and the nav bar should contain the email of the user and links add contacts and to logout:

{% include small-img.html url="http://ics314f13.files.wordpress.com/2013/10/digits-login-3-home2.png" %}

You should download the [play-example-login system](http://ics-software-engineering.github.io/play-example-login/), import it into Eclipse and get it running locally before starting this WOD as it provides a significant amount of code for producing this behavior.


## Instructions

 Support Create, Read, and Update for your digits application.  You have already implemented Create and Read, so this WOD simply requires you to modify the existing code to support Update. Follow the approach described in the screencast of using an ID field to distinguish between new and pre-existing instances.  

  1. Start your timer.
  2. Create a branch of your digits system called login-1.
  3. Enable checkstyle.
  4. Add a small change to a file, then push this commit to GitHub with the message “Starting WOD”. 
  5. In this branch, implement authorization and authentication as illustrated above.  
  6. Begin by implementing the UserInfo and UserInfoDB classes and updating the Global class to create credentials for a user on startup.
  7. Next, implement the Login view, updating the routes and controller class as necessary. The Main template will also need adjustment to support authentication data. 
  8. Next, create the Secured class and attach authentication annotations to controller methods to implement the behavior specified above.
  9. Ensure that the navbar displays items appropriately depending upon authentication.
  10. Make any other UI adjustments as necessary. 
  11. When you have verified that it’s working, push your enhanced code to your branch on GitHub with the message “Finished WOD”.  The difference between the timestamps associated with the two commits represent your WOD time, and the code diffs represent your implementation.

When finished, stop your timer, and record how many minutes it took you to complete the WOD. 

{% include wod-times.html Rx="<23 min" Av="23-35 min" Sd="35-45 min" DNF="45+ min" %}

## Demonstration

Once you've finished doing the WOD a single time, watch me do it:

{% include youtube.html id="pDxp_k-_iLA" %}

{% include wod-warning.html %}

{% include wod-repeat.html %}

When you’ve finished doing this WOD as many times as you need, you might want to merge your changes into the master branch so that they are easily available for future WODs.





