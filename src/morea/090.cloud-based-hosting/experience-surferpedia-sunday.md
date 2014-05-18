---
title: "A16: Surferpedia Sunday"
published: true
morea_id: experience-surferpedia-sunday
morea_type: experience
morea_summary: "Use google hangouts to collaborate, then write a technical essay summarizing your experience."
morea_sort_order: 2
morea_labels:
---

# A16: Surferpedia Sunday

The goal of this assignment is to connect with a classmate on Sunday using Google Hangout and share code with them.  Specifically:

### Schedule a meeting. 

If you have not already arranged a time to meet with your classmate, then contact them to arrange a time on Sunday.  Here is a spreadsheet with the groups of two and the general time ranges.  Before Sunday, make sure you have an agreed upon time to “hangout”.  (Note that two students did not attend class: they are a group and must email each other to figure out the time to meet.

### Create your Surferpedia web app prior to the meeting. 

During this meeting, you will be sharing code with each other.  The code to be shared is your Surferpedia repo.  Therefore, you must have done this A17 practice WOD at least once prior to the meeting.  (You don’t have to have completed the WOD in Rx time prior to this meeting; you just have to have a working version of the code base to share.)

### At the agreed upon time, create and join a Google Hangout with your partner. 

You can either create a Google Hangout event prior to the time, or else create a Hangout on the fly.  You can have a video hangout if you want, or if bandwidth is an issue, turn off video.  The important features to experiment with are:  audio, the chat window, and screen sharing.

### Make your partner a “Collaborator” for your Surferpedia repo.   

Use the chat window to get your partner’s GitHub account name. Then go to your Surferpedia repo, click on Settings | Collaborators, and add their account name to make them a collaborator for your repo.  This means that your partner can now clone your repository and commit their changes back into your repository. (They are doing the same thing for you, so now you can clone their repo and commit changes.)

### Clone your partner’s surferpedia repo, and add a surfer to it.  

Here’s how I would do it:

  * Clone their repo into a different directory than yours (because both repos are name “surfpedia” and so they can’t exist in the same directory.)
  * CD into your partner’s surferpedia directory, invoke the Play console, then invoke the “clean”, “compile”, and “eclipse” commands.   Then invoke “run” and make sure you can retrieve their surferpedia at http://localhost:9000.   If you can’t run your partner’s surferpedia successfully, then work with them to figure out why.  Use screen sharing so your partner can see what problems you are having.
  * Before continuing, make sure both of you can run each other’s surferpedia. At some point, make a screenshot of your Google Hangout window for use in your blog entry.
  * Once you can run your partner’s surferpedia, delete your Surferpedia Eclipse project (because your partner’s project is also called Surferpedia, and you can’t have two Eclipse projects with the same name loaded at the same time.) Then import their project into your Eclipse.  Make a small change (such as to the title), and reload the page in your browser to make sure that you can successfully edit their code and see the change locally.
  * Before continuing, make sure both of you can edit each other’s surferpedia. At some point, make a screenshot of your Google Hangout window for use in your blog entry.
  * Add a surfer from your repo to your partner’s project.  I suggest you simply copy the view file and the image file from your project into their project using the Finder (or Windows Explorer, or the command line).  Refresh your partner’s Surferpedia project in Eclipse to see the added files in Eclipse. Then edit Main.scala.html, main.css, routes, and Application.java so that the new surfer shows up in the carousel, the pull down menu, and in their new page.
  * Before continuing, make sure both of you have successfully added a surfer to each other’s surferpedia. At some point, make a screenshot of your Google Hangout window for use in your blog entry.
  * Commit both of your changes to each other’s repo.
  * Sync your own repo to download the changes made by your partner to your own repo.
  * Exit the play console for your partner’s surferpedia repo.   CD to your own repo, enter the Play console for your own repo, type “clean”, “compile”, and “run”.  Retrieve your own Surferpedia at http://localhost:9000 and verify that you can find the surfer added by your partner.
  * Before continuing, make sure that both of you can view each other’s changes in your local repo. At some point, make a screenshot of your Google Hangout window for use in your blog entry.
  * Congratulate your partner on a job well done, note the time, and logout.

### Write a technical essay. 

Immediately after your Google Hangout, write a blog entry reflecting upon your experience.  After briefly summarizing the assignment, describe how the session went.   What problems did you encounter, and how did you resolve them?   How useful was video (if you used it), audio, the chat window, and screen sharing?  What problems did you encounter with GitHub, and how did you resolve them?  What problems did you encounter compiling, running, and extending your partner’s code, and how did you resolve them?  In general, what did this experience teach you about synchronous (same time, different place) collaboration?   Do you think this is better, worse, or about the same as same time, same place collaboration?  Include your screenshot of the Google Hangout at an appropriate point in your blog entry to illustrate what was going on.

Your blog entry is due by the time and date listed on the Calendar page. Send johnson@hawaii.edu an email with a link to your finished blog entry. Make sure your link starts with “http:” so that I can click on it in my mailer. Make sure that it also appears as one of your postings when someone clicks on the “Postings” link of your professional portfolio.  Note: the subject line must be [ICS 314: A16].  If the subject line is different, then I might not see the email and you might not get credit for this assignment.




