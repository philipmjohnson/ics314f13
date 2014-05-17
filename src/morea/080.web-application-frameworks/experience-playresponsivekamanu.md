---
title: "Practice WOD: PlayResponsiveKamanu"
published: true
morea_id: experience-playresponsivekamanu
morea_type: experience
morea_summary: "Create a Play version of the Kamanu Composites home page."
morea_sort_order: 6
morea_labels:
---

# Practice WOD: PlayResponsiveKamanu

Before starting this WOD, you should have completed the Twitter Bootstrap practice WOD called “ResponsiveKamanu”.

In addition, you’ll need to understand the basics of incorporating image files into your Play applications, which can be summarized as follows:

  * Place image files into the public/images directory.
  * Within a *.scala.html file, reference an image called foo.jpg in the public/images directory using reverse routing:  @routes.Assets.at(“images/foo.jpg”)
  * With a CSS file such as main.css, reference the same image using a relative path:  ‘../images/foo.jpg’

## Instructions

  1. Start your timer.
  2. Create a Play application called PlayResponsiveKamanu by downloading the [play-bootstrap-template](https://github.com/ics-software-engineering/play-bootstrap-template) repository, then renaming the directory, the Eclipse project, and the Play project to “PlayResponsiveKamanu”.  (Note that you’ll edit the build.sdt file to change the Play project name; see [this screencast](http://www.youtube.com/watch?v=lGyhtOOsSrc) for details.)
  3. Enable Checkstyle on your project.   If there are any errors or warnings, remove them.
  4. Edit the application so that the page displayed is the same as the one you created in the ResponsiveKamanu practice WOD. You should:
     * Copy the images into the public/images directory.
     * Copy the CSS in the style.css file to the public/stylesheets/main.css file.
     * Edit the title to be “Play Responsive Kamanu”.
     * Edit the main.scala.html file to provide the same navbar styling and contents.
     * Edit the index.scala.html file to provide the same home page content.

Your web application should display the following page:

{% include small-img.html url="http://ics314f13.files.wordpress.com/2013/09/playresponsivekamanu.png" %}

And a page related to a specific browser should look like this:

{% include small-img.html url="http://ics314f13.files.wordpress.com/2013/09/multipageie.png" %}

Note that the navbar highlights the active page.

When finished, stop your timer, and record how many minutes it took you to complete the WOD. 

{% include wod-times.html Rx="<10 min" Av="10-15 min" Sd="15-20 min" DNF="20+ min" %}

## Demonstration

Once you've finished doing the WOD a single time, watch me do it:

{% include youtube.html id="D2PyLaspkQQ" %}

{% include wod-warning.html %}





