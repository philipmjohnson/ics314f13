---
title: "Practice WOD: ResponsiveKamanu"
published: true
morea_id: experience-responsivekamanu
morea_type: experience
morea_summary: "Develop a responsive web page based upon kamanu.com"
morea_sort_order: 3
morea_labels:
---

# Practice WOD: ResponsiveKamanu

Kamanu Composites is a local company that produces very high quality outrigger canoes. They also have a pretty nice website.  For this WOD, you will reimplement a portion of their home page using Twitter Bootstrap.  The goal of this exercise is to gain additional experience manipulating HTML, CSS,  Chrome Developer Tools,  and Twitter Bootstrap.

Prior to starting this WOD, you may want to visit the [Kamanu Composites website](http://www.kamanucomposites.com/).   (Full disclosure: [I own a Pueo.](http://philipmjohnson.files.wordpress.com/2012/06/cropped-p1000649.jpg))

Here is what your completed implementation should look like:

{% include small-img.html url="http://ics314f13.files.wordpress.com/2013/09/responsive-kamanu.png" %}

And here are some hints to guide your implementation:

  * Your goal is to create a single page that mimics the first three elements of the Kamanu home page: the nav bar, the picture, and the tag line “We build canoes.” You do not have to implement any other aspect of their home page.
  * Base your implementation on the [bootstrap-example-intro “basic” template](https://github.com/ics-software-engineering/bootstrap-example-intro/tree/basic). That will give your page a responsive nav bar (which Kamanu Composites currently lacks.)
  * Prior to starting the WOD, download their [logo](http://www.kamanucomposites.com/static/images/header-logo.jpg), [navbar background image](http://www.kamanucomposites.com/static/images/bg-carbon.jpg), and [paddling picture](http://www.kamanucomposites.com/static/images/www/pueo-canoes-front.jpg) and incorporate those graphical elements into your version.
  * Use  Chrome Developer Tools to inspect their page layout and figure out the fonts and colors they are using.
  * Use Chrome Developer Tools to inspect and override Twitter Bootstrap defaults as needed to mimic their site layout.

## Instructions

  1. Start your timer.
  2. Create an Eclipse project called ResponsiveKamanu and use it to implement a Bootstrap version of the Kamanu Composites home page. 
  3. Base your design on the [bootstrap-example-intro basic template](https://github.com/ics-software-engineering/bootstrap-example-intro/tree/basic).
  4. Change the page title to “Responsive Kamanu”.
  5. Incorporate the logo into the navbar.
  6. Adjust the navbar so that excess padding around logo is removed.
  7. Incorporate the Kamanu carbon fiber graphic as a repeated background image in the navbar. 
  8. Eliminate the black background from navbar menu items.
  9. Edit the set of navbar items to be similar to those on the Kamanu website.
  10. Adjust the font, position, and spacing of navbar items to be similar to the Kamanu website.
  11. Incorporate the paddling picture underneath the navbar as a background image. Use background-size: cover, background-position: center, and height: 385px properties to get a pleasing appearance. 
  12. Adjust the body element so that the paddling picture shows up under the navbar.
  13. Add the “tagline bar” (“We Build Canoes.”) into your page, making it look similar to the one on the Kamanu Website.

When finished, stop your timer, and record how many minutes it took you to complete the WOD. 

{% include wod-times.html Rx="<25 min" Av="25-30 min" Sd="30-40 min" DNF="40+ min" %}

## Demonstration

Once you've finished doing the WOD a single time, watch me do it:

{% include youtube.html id="HxDd-SlTJfg" %}

{% include wod-warning.html %}





