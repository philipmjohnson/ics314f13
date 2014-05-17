---
title: "Practice WOD: CleanHelloMe"
published: true
morea_id: experience-cleanhellome
morea_type: experience
morea_summary: "Create a minimal Play application that passes checkstyle."
morea_sort_order: 2
morea_labels:
---

# Practice WOD: CleanHelloMe

To prepare for this WOD, enable Checkstyle on the HelloMe Eclipse project you created during the above WOD.  Notice how many errors are generated?   The goal of this WOD is to learn how to efficiently get started developing Play applications that pass Checkstyle.

You might want to compare the [play-new-passcheckstyle](https://github.com/ics-software-engineering/play-new-passcheckstyle) source code to your HelloMe project to see the differences.

In addition, before starting this WOD, you might want to tell Eclipse to open the default Text editor when editing *.scala files. To do this, go to Preferences | General | Editors | File Associations.  Then add “*.scala” as a file type, then associate it with the Text Editor:

{% include small-img.html url="http://ics314f13.files.wordpress.com/2013/09/scala-editor-association.png" %}

## Instructions

  1. Start your timer.
  2. Create a Play application called CleanHelloMe by downloading the [play-new-passcheckstyle](https://github.com/ics-software-engineering/play-new-passcheckstyle) repository, then renaming the directory, the Eclipse project, and the Play project to “CleanHelloMe”.  (To change the Play project, edit the build.sbt file, then invoke “reload” in the Play console to reload the project definition. See [this screencast](http://www.youtube.com/watch?v=lGyhtOOsSrc) for details.)
  3. Now enable Checkstyle on your CleanHelloMe project. If there are any errors or warnings, remove them.
  4. Now edit the source code so that the resulting web application generates a page containing only the words “Hello, Me! I’m super clean!”.  

Your application should present the following page:

{% include small-img.html url="http://ics314f13.files.wordpress.com/2013/09/cleanhellome-screen.png" %}

In addition, your Eclipse project should not contain any Checkstyle errors or warnings:

{% include small-img.html url="http://ics314f13.files.wordpress.com/2013/09/cleanhellome-eclipse.png" %}

When finished, stop your timer, and record how many minutes it took you to complete the WOD. 

{% include wod-times.html Rx="<5 min" Av="5-7 min" Sd="7-9 min" DNF="9+ min" %}

## Demonstration

Once you've finished doing the WOD a single time, watch me do it:

{% include youtube.html id="F-zf5DefpHU" %}

{% include wod-warning.html %}





