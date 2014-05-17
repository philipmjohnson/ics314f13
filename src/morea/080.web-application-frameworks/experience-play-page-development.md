---
title: "Interlude: Page development in Play"
published: true
morea_id: experience-play-page-development
morea_type: experience
morea_summary: "Watch how to create new pages in Play efficiently."
morea_sort_order: 4
morea_labels:
---

# Interlude: Page development in Play

Please watch the following video that goes through page development in Play:

{% include youtube.html id="HRl6AY2HKdw" %}

Now download the [play-bootstrap-template sample application](https://github.com/ics-software-engineering/play-bootstrap-template) and add a page called “Page2″, just like I did in the video.  To do this, you’ll need to:

  * Edit the navbar in main.scala.html to add a new link to Page2,
  * Add a new controller method called page2 to the Application class, and have it render your new page2.scala.html template;
  * Import your views.html.page2 class into your Application class;
  * Add a new view called page2.scala.html, and finally
  * Add a new route to the routes file.

To test your system, just run the application and click through all the pages in the navbar. Once you have finished this interlude, you’ll hopefully understand concepts important to completing the remaining WODs.  You’ll also have discovered some important development facts:

  * Play compiles the *.scala.html files (and the routes file) into classes.  Eclipse does not support this compilation yet.  To trigger a compilation, refresh a Play page in your browser (or invoke “compile” in the Play console).  Once recompilation has finished, use the “refresh” command in Eclipse to eliminate errors.
  * The Play console and the browser window will display compilation errors.   For this project, compilation errors will result when there is an inconsistency between the *.scala.html files, the routes file, and the Application methods.  “Unknown symbol” errors often mean you haven’t imported a view file.






