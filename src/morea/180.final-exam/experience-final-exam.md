---
title: "Final Exam"
published: true
morea_id: experience-final-exam
morea_summary: "Your final mission, should you choose to accept it."
morea_type: reading
morea_sort_order: 1
---

# Final Exam

For your “take home” final exam, you will “finish” the development of your Surferpedia application.  The basic goal of this project is to incorporate all you have learned this semester into your Surferpedia application so that it can be included in your professional portfolio as a showcase of your software engineering skills.  A second important goal of this project is to help you develop your planning and project management skills.  Thus, a significant part of this project is designing the work to be done and who is going to do it.

## Requirements

#### Implement all prior functionality 

All of the prior assigned functionality for Surferpedia should be implemented.

#### Provide a “country” field   

Extend the Surferpedia biography page with a “Country” text field to indicate the country of origin of each surfer. Rely on the site administrator to be consistent in the way countries are spelled.

#### Implement 30+ surfers  

Your completed application must include a minimum of 30 surfers, but should be designed to support hundreds or thousands of surfers. It is fine for you to include surfers from others in the class. That said, the surfer data must be true: you cannot make up biographical information and/or the surfer’s identities.  On the other hand, the surfers do not need to be professionals: friends and family members can be featured in your surferpedia system as long as the photos and data are true. Out of your 30+ surfers, you should have at least 7 male, 7 female, and 7 grom (under 12) surfers.

#### Home page carousel  

The home page carousel must randomly pick 3 surfers from your current database to display each time the page is retrieved. (Thus, refreshing the home page should typically result in the display of three new surfers.)  You must figure out how to randomly pick three surfers, given that surfers can be deleted over time and thus not all integer IDs will correspond to surfers.  All surfers in the database must have a chance to be picked at some point for display on the home page. For some ideas on how to do this, read [this post and accompanying comments](http://davidwalsh.name/mysql-random).

#### No pull down menus  

The current design of accessing surfers via pull-down menus will not scale to hundreds or thousands of entries. Instead, your navbar should include a right justified search “widget”.

#### The search widget  

The search widget consists of four components: (1) a text field with the placeholder “Name”, (2) a pull-down menu which the user can use to select “All Genders”, “Male”, “Female”, “Grom”, (3) a second pull-down menu which the user can use to select “All Countries” or any of the countries currently associated with surfers, and (4) a “Search” button.  The defaults for the pull-down  menus are “All Genders” and “All Countries”.

If the user simply clicks the Search button without entering a string, then the default behavior is to retrieve all surfers (since there are no constraints on the name and the pull down menus indicate all genders and all countries).  If the user enters a string, then all surfers whose name matches some part of the string in a case-insensitive fashion should be retrieved. For example, if “Eddie Aikau” is a surfer and the user enters “aikau”, “All Genders”, and “All Countries”, it should match Eddie Aikau’s entry.

Searching brings up a results page containing a table with the names of all matching surfers found and the first 40 characters of their description, one per line. The surfer name is a link to their personal page where the user can get full details about the surfer.   If more than 15 surfers match the search criteria, the table is paginated and the user can click to move back and forward in the search results.

#### Backing MySQL database  

Your application should persist all surfer data in a MySQL database.  You will want to make entities for Country and Gender as well as Surfer in order to facilitate searching.

#### CloudBees deployment 

Your application should run both locally (for development) and in CloudBees with a MySQL database.

#### Authorization and Authentication  

Your application should support a single Admin login, which enables the administration to create, edit, and delete surfer entries.  Users who do not login can search and view all surfer data.   This authorization and authentication should work locally and in the CloudBees deployment without any credentials being stored in source files (in other words, use environment variables for credentials.)  If the system is run and cannot find the admin credentials, the home page should indicate this.

#### README.md   

Your GitHub project should include a well-written, illustrated README.md file that explains the purpose and functionality of the Surferpedia project and how to install, deploy, and extend the system.   Provide an embedded ER diagram using Lucid Charts to document the database structure.

#### Testing 

Your project should include comprehensive tests. See Assignment 28 for details.

#### One new cool feature 

In addition to the above requirements, each team must come up with their own idea for a “cool” feature for Surferpedia, and implement it.

#### Questions?  

Just like in the real world, these requirements might be ambiguous.   If you do not understand something or determine that some aspect could be interpreted in multiple ways, send email to the class discussion group to request clarification.

## Process

#### Groups  

There are six groups of two and one group of three.

#### Milestone Releases  

You must design this project to be implemented in three phases, each culminating in a “milestone release”.  A “milestone release” consists of three things:

  1. Completion of all the issues associated with a “milestone” in the GitHub issues system.
  2. Creation of a GitHub “release” to tag a snapshot of the codebase that implements all of the functionality associated with the milestone.
  3. Deployment of a functioning version of the code to CloudBees.

The milestone releases are named 1.0, 2.0, 2.5, and 3.0.   Version 3.0 must fully satisfy all requirements.  Your group can decide what functionality to deliver for 1.0 and 2.0. If you cannot fully satisfy all requirements, then your final release should be 2.5, not 3.0. Thus, groups that implement everything will deliver three milestone releases named 1.0, 2.0, and 3.0.  Groups that do not implement everything will deliver 1.0, 2.0, and 2.5.

#### GitHub project tracking

You will use the GitHub Issues system to define your milestones.  You must decompose the work associated with each milestone into at least three issues per project member. This means that each project member must close at least nine issues (three issues times three milestones) as part of their work to fully complete this assignment. Of course, you can have more than that number of issues.  For an overview of GitHub issues, see this blog posting.

You must fill out the description associated with each issue in enough detail that someone like me can understand exactly what is involved in the issue, and more importantly, what it would mean for the issue to be completed.
To help accomplish that, each description must include the following text:  This issue will be considered complete when: <X>, where <X> specifies some condition or state of the system/development that must be satisfied.

## Submission instructions

There are seven separate submissions associated with this final exam:

#### Submission 1: Planning submission

One member of the group must send me an email indicating: (a) the members of your group, and (b) the GitHub repository where your group will be doing development. All of your group members must be listed as collaborators on this repository.

As part of this deliverable, you must define three milestones (named 1.0, 2.0, and 3.0) in the GitHub Issues system, and each milestone must contain at least three issues per project member.  That means that if there are two project members, then you must divide the project into at least 18 separate tasks.

This will not be easy!  You must spend time with your group members to think through the activities associated with developing this system, how to sequence them, and how to allocated them to members. So far this semester, you have not been required to plan in advance.

I will grade your planning submission based upon the quality and completeness of this plan. See the calendar page for the due date.  The subject line should be [ICS 314: Planning Submission].

#### Submissions 2, 3, 4: Milestone releases 1.0, 2.0, and 2.5/3.0 submissions   

The first milestone release (Version 1.0) must be delivered no later than December 4, 2013 at 9pm. The second milestone release (Version 2.0) must be delivered no later than December 11, 2013 at 9pm.  The third milestone release (Version 2.5 if all requirements for this system are not completed, Version 3.0 if fully completed) must be delivered no later than December 18, 2013 at 9pm. Note that you can deliver any or all releases prior to these dates.

One member of the group must email me each time the group completes a milestone release.   The email should include: (a) a link to the GitHub release page associated with this milestone release, (b) a link to the GitHub milestone page associated with this milestone release and (c) a link to the deployed application running this milestone’s code. All issues associated with this milestone should be closed.

It is natural to adjust the issues associated with a milestone after initial planning. However, if you move issues to a later milestone, be sure to create new issues to reflect the newly discovered work so that each team member has closed at least three issues as part of each milestone release.

As noted above, these three submissions are due no later than December 4, 11, and 18.  The subject line should be [ICS 314: Milestone Release X], where X is one of 1.0, 2.0, 2.5 (if you did not finish all requirements) or 1.0, 2.0, and 3.0 (if you finished all requirements).

#### Submission 5: Portfolio project page submission  

Prior to the final submission (discussed below), each of you must create a new project page in your professional portfolio that discusses your surferpedia system. It should include links to the github project page and to the deployed application. Include screen images to illustrate its functionality, and a brief discussion of the technologies and software engineering skills you learned from this project.

See the calendar page for the due date.  Send me an email when this submission is finished. The subject line should be [ICS 314: Portfolio Project Page].

#### Submission 6: Surferpedia blog posting  

Each of you must write a blog posting in which you discuss your experiences developing this Surferpedia system.  Indicate if you were able to finish all requirements, and if not, which ones remain to be implemented.  Discuss what issues arose during development and how you resolved them. Finally, provide relevant links (perhaps just a single link to your portfolio page, where further links can be found).  Don’t forget to include at least one image of your running application.

See the calendar page for the due date.  Send me an email when this submission is finished. The subject line should be [ICS 314: Surferpedia Blog Posting].

#### Submission 7: Final submission

Each of you must also write a blog posting in which you reflect upon the course as a whole and what you have learned about software engineering this semester.  The blog posting must in some way touch upon:

  * Tools and frameworks.  What tools and frameworks did you learn about this semester?  Are tools and frameworks helpful?  What are their advantages and disadvantages?
  * Collaboration.  You collaborated in various ways this semester including: face-to-face, via email, and via Google Hangouts.  What did you learn about these collaboration modalities? When is one preferable to another?  Which one do you like the best, if any?
  * Technical fluency.  One of the goals of the WODs is to help you acquire technical fluency: the ability to use tools and technologies efficiently and effectively. Do you think technical fluency is important?  Do you think the WOD approach is a good way to achieve it?
  * Programming under pressure.  Another goal of the WODs is to habituate you to programming under pressure, with short time constraints.   Do you now feel more comfortable programming under pressure than you did in August?
  * Quality assurance.  The course presented two mechanisms for quality assurance: Checkstyle and JUnit/Fluentlenium testing.  Do you feel these mechanisms helped you create higher quality software? How could you improve your software quality even further?
  * Project management.  The final project provided you with an opportunity to learn about project management: how to divide a project into a set of releases; how to specify the work involved with each release as a set of issues, and how to use that to help you work together in an efficient and effective manner.  Do you feel your project plan worked well?  How much did the plan evolve?  Did you simply abandon it?  What would you do differently next time?
  * What’s next? Discuss what you have discovered to be weaknesses in your software engineering skillset and how you might go about addressing them in future.

Make sure to provide illustrations as appropriate. This final blog posting should be fairly long: at least two paragraphs per bullet point.  Note: you will receive no credit if you simply create a blog posting with one section per bullet point and fill it out as if it was a form.  That will be incredibly boring: no one will want to read it.  Instead,  create a narrative—a “story” about your semester in software engineering which covers the above issues but is interesting and engaging to read.   Do not wait until December 18 to start on this narrative—this is your final exam!

See the calendar page for the due date.  Send me an email when this submission is finished. The subject line should be [ICS 314: Final Submission].

