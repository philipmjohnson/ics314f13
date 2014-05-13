---
title: "Professional portfolio style guide"
published: true
morea_id: reading-professional-portfolio-style-guide
morea_summary: "Guidelines for creating a usable and effective professional portfolio"
morea_type: reading
morea_sort_order: 5
---

# Professional portfolio style guide

This page provides an outline of requirements for a useful, professional
looking portfolio site using WordPress. See the
[screencast](https://www.youtube.com/watch?v=p_WyVPgxHuY) for more details on
how to achieve these requirements in WordPress.

## Theme

A conservative, simple theme is least likely to convey the wrong impression.
[TwentyEleven](http://theme.wordpress.com/themes/twentyeleven/),
[TwentyTwelve](http://wordpress.org/extend/themes/twentytwelve), or [Truly
Minimal](http://theme.wordpress.com/themes/truly-minimal/) are all examples of
good choices.

## URL

The top-level URL should be appropriate for a professional portfolio. For
example, mine is: http://philipmjohnson.wordpress.com.

## Top-level pages (Menu Bar Contents)

Define a custom menu containing the following menu items:

  * Home (your Welcome page)
  * Projects (with submenu items for project pages, one per project).
  * Resume (a direct link to retrieve and display your resume).
  * Postings (a link to a page containing all your blog postings).
  * Contact (your Contact page).

## The Welcome page

Create a page called "welcome" and set it as the static home page for your
site. This page should include an inline photo and a short overview of your
professional characteristics. Here is what one employer says about the
contents of the welcome page:

> As an employer, I need to be able to scan their homepage and know in a few
seconds if I want to look further. "Hello, my name is..." and "Please feel
free to click on the Contact link..." are superfluous and wasting the few
precious words they have to sell themselves. If they don't have enough work
experience for a Professional Summary, then highlighting relevant areas they
have an inordinate amount of experience in, demonstrated passions, or special
achievements will also work. A lot of students I'm sure play online games. I
liken this to their gamer's profile, where with a quick glance you immediately
know their DPS, HPS, gear, accomplishments, XP, character class, capabilities,
etc. Another way to cut down on Homepage copy is break out common stats into
bullets, like anticipated graduation date, degree they are working on,
degree(s) already earned, thesis topic.

## The Welcome page photo

It is tempting to find any old photo of yourself and stick it on your home
page. Resist this impulse. Instead, take the time to find a decent photo of yourself and/or get a
friend to take a photo of you. The welcome page photo will be the most
influential image at your site. It is the first impression visitors will form
about you. 

Think carefully about the impression you want to convey. You
probably don't want to appear dressed in a suit and tie. On the other hand,
you probably don't want a picture of you dancing at a rave and holding an
adult beverage that was taken by a so-called friend and posted to Facebook.

## The Project pages

Create a set of pages describing at least 2-3 projects with which you've been
involved, one project per page.  Each project page should contain at least 2-3
paragraphs of description, along with links to further information about the
project. Here's one [example](http://kambergjohnson.wordpress.com/amgen-scholars-internship/), and here is [another example](http://anthonyjchriste.wordpress.com/knowledge-is-power-kip/). 

If at
all possible, you should include a link to source code for your projects, such
as a GitHub repository, or a SourceForge or Google Project Hosting site. You
can even upload code from past courses to one of these sites to make it more
easily accessible to employers. When you worked on a project with others, be
sure to include the role that you played in the project and what artifacts you
were responsible for producing. Also include your "lessons learned" and
skills acquired from that project. 

All project pages should be accessible
under the "Projects" menu. See the screen cast for the technique used to make
the "Project" menu item unselectable.

## The Resume link

The menu should contain a  menu item that is a direct link to your resume in
PDF format. It should not be a link to a WordPress page containing a link to
your resume. 

Your resume should not be in Word format, nor should it be a
google doc. WordPress allows 3GB of file storage for free accounts, so you can
you can upload the PDF version of your resume to WordPress and provide a link
to it in the NavBar. To upload the file, go to the Dashboard, then select
"Media / Add New", then choose the file to upload.

## The GitHub Link

If you have an account on GitHub and have contributed to repositories, then a
valuable top-level link is to your GitHub repository (see [my
portfolio](http://philipmjohnson.wordpress.com) for an example). 

Many
developers now include links to their GitHub account in their resumes, and
[recruiters are increasingly using GitHub to screen
applicants](http://news.cnet.com/8301-10797_3-57495099-235/forget-linkedin-companies-turn-to-github-to-find-tech-talent/). If you do not have a GitHub
account, and/or if you do not have code available there, now is a good time to
consider addressing that weakness in your professional persona.

## The Contact page

Create a page called "Contact" providing contact details.  You do not need to
provide your home address or cell phone number. Include a hyperlink to your
TechHui and LinkedIn profile pages and to your email address. If you are a
graduate student in our department, you can use the ICS
Department as your physical postal address if your prefer. The Contact page
does not need a visual image.

## The Postings page

Create a menu item that links to a dynamically generated page containing your
blog postings. See the screencast for more details. This is the only page
that should contain a sidebar. The sidebar should contain navigational aids
for your collection of posts, including "Recent Posts" and "Archive". 

Go to
"Appearance / Widgets" and edit the Widgets on the "Main Sidebar" to set the
widgets that appear on this page. You should remove widgets not related to
postings, such as "Meta".

## Miscellaneous

Pages and postings should generally include some kind of image (or embedded
video) for visual interest. Right-align the images for a more pleasing look,
unless the image needs to be full-width in order for the reader to understand
the image. 

The images should not be gratuitous; they should provide useful
additional information about the project. All pages (except the Postings page)
should use the "Full-width Page Template, No Sidebar" option (if available).
There is no reason to show the list of postings on any other page other than
the postings page. In "Settings / General":

  * Make sure the site title and tagline are appropriate.
  * Use Honolulu as Timezone.

In "Settings / Reading":

  * Front page should display a static page.
  * In Enhanced Feeds: uncheck Categories, Tags, Comment count, Sharing.
  * In Follower Settings: uncheck "Show follow button to logged out users."

In "Settings / Discussion":

  * Uncheck "Allow people to post comments on new articles"

In "Settings / Sharing":

  * In "Enabled Services", disable them by moving all Enabled Services (typically Facebook, Twitter, Press This) to "Available Services".
  * In "Show Buttons On", uncheck all options (Front Page, Posts, etc.)

The "Resume" navbar item should link to an up-to-date version of your resume
as a pdf file. To post small snippets of source code, use the
[code](http://en.support.wordpress.com/code/posting-source-code/) or
[gist](http://en.support.wordpress.com/gist/) shortcodes. To post large code
segments, upload the code to a cloud-based repository (GitHub, Google Project
Hosting, SourceForge, etc) and provide a link. Delete the example posting,
page, and comment created by WordPress.

## Checklist

This checklist summarizes the most important points from the above discussion:

  1. The theme is appropriate for a professional portfolio.
  2. The URL is appropriate for a professional portfolio.
  3. The menubar contains Home, Projects, Resume, Postings, Contact.
  4. The home page contains a well-written, appropriate introduction.
  5. The home page contains an appropriate picture.
  6. The Project menubar item has subentries for at least two projects.
  7. Each project is listed on its own page.
  8. Each project description is well-written, informative, and appropriate.
  9. There is a useful and informative graphic associated with each project.
  10. There are links to further information for each project.
  11. Source code samples in a project page use the sourcecode shortcut.
  12. The "Resume" menubar item links to a PDF version of your resume.
  13. The resume is appropriate and professional.
  14. If you have a GitHub account, a link to it appears in the navbar.
  15. The contact page contains appropriate contact information.
  16. The postings menubar item goes to a page containing all (or all of the most recent) blog posts.
  17. No pages (except the Postings page and actual blog entries) contain a sidebar.
  18. The postings page contains the Recent Postings and Archive widgets.
  19. No page contains sharing buttons (Facebook, Twitter, etc.)
  20. No page contains a "Reply" field at the bottom.
  21. The portfolio does not contain the sample Page, Comment, and Posting created automatically by WordPress.





