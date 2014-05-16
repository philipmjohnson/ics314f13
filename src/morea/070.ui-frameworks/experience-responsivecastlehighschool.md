---
title: "Practice WOD: ResponsiveCastleHighSchool"
published: true
morea_id: experience-responsivecastlehighschool
morea_type: experience
morea_summary: "Develop a responsive web page based upon the Castle High School web site"
morea_sort_order: 4
morea_labels:
---

# Practice WOD: ResponsiveCastleHighSchool

Castle High School has an old school website: fixed-width, a “marquee” with sliding text, and vaguely superfluous color gradients:

{% include small-img.html url="http://ics314f13.files.wordpress.com/2013/09/castlehigh.png" %}

Be sure to take a moment and [visit the Castle High School site](http://castlehs.k12.hi.us/) as preparation for this WOD.

Let’s give them the beginnings of a website make-over using Twitter Bootstrap.  We’ll keep the banner image, the three column layout, and the central picture.  But we’ll make everything responsive and use a more modern “flat” design. Here’s what you should shoot for:

{% include small-img.html url="http://ics314f13.files.wordpress.com/2013/09/responsivecastlehigh.png" %}

For this make-over, we’ll incorporate two colors from the original design: the red and the gray.  We get rid of the marquee.  For this prototype, we won’t include all the content from the home page, just the top parts of the three columns.  Finally, to improve the usability, we’ll eliminate the center section entirely from the mobile layout:

{% include small-img.html url="http://ics314f13.files.wordpress.com/2013/09/responsivecastlehighmobile.png" %}

## Instructions

  1. Start your timer.
  2. Create an Eclipse project called ResponsiveCastleHigh and use it to implement a version of the Castle High School home page using Twitter Bootstrap.
  3. Base your design on the [bootstrap-example-intro thesesareus template](https://github.com/ics-software-engineering/bootstrap-example-intro/tree/thesesareus).  (This provides template code for a three column layout).
  4. Load the Open Sans google font.
  5. Change the bootswatch simplex theme back to the default bootstrap theme.
  6. Use #710C0C as the red color and #999 as the gray color.
  7. Remove ThesesAreUs CSS styles.
  8. Put the [Castle High School banner image](http://castlehs.k12.hi.us/images/header.jpg) at the top of the page
  9. Below the banner image, put the navbar.  Make the navbar background red and the text gray.
  10. Set the navbar link names to those from the real site.
  11. Make the background of the entire page gray.
  12. Make navbar links and titles 16px. 
  13. Replace the default Helvetica font with Open Sans everywhere in the site.
  14. Below the navbar, put three columns: a col-md-3 “Information” column, a col-md-6 “Welcome to Castle High School” column  and a col-md-3 “Announcements” column.
  15. Make the background of all wells red, and their text gray.
  16. Add 12 link labels taken from the real site to the Information column, make them gray, and remove the bullet (i.e. set list-style-type to none).
  17. Add the [Knight Pride image](http://castlehs.k12.hi.us/images/castlefront.jpg) to the middle column, centering it and making it 400px high.
  18. Add the period schedule to the Announcements column.
  19. Set the middle section to be hidden at mobile screen sizes.

When finished, stop your timer, and record how many minutes it took you to complete the WOD. 

{% include wod-times.html Rx="<30 min" Av="30-40 min" Sd="40-50 min" DNF="50+ min" %}

## Demonstration

Once you've finished doing the WOD a single time, watch me do it:

{% include youtube.html id="FNcvH_6-hPI" %}

{% include wod-warning.html %}





