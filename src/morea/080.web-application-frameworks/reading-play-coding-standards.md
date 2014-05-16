---
title: "Play Coding Standards"
published: true
morea_id: reading-play-coding-standards
morea_summary: "Guidelines to make Play development easier"
morea_type: reading
morea_sort_order: 5
morea_labels:
---

# Play Coding Standards

## All view file names should be capitalized according to Java class naming conventions.

View files (such as Index.scala.html) are compiled into Java classes (views.html.Index). To conform to Java coding standards, they should be capitalized. See Elements of Java Style, Guideline #18 for more details. 

Remember that Java class names consisting of multiple words have internal capitalization. So, ElectricMeter, not Electricmeter. 

Unfortunately, the "play new" command generates a template application with lower-case view files, so you must go against the default. Here is an image of a views directory with an offending view file (laird.scala.html): 

![laird](http://ics314f13.files.wordpress.com/2013/10/laird.png) 

## View files must contain only UTF-8 characters.

View files must contain only UTF-8 characters. You will know immediately that your system contains non-UTF-8 characters because Play will recompile the entire system every time you retrieve a page. 

Here is what the console looks like when the system performs a recompilation upon each page request: 

![recompile-after-each-page](http://ics314f13.files.wordpress.com/2013/10/recompile-after-each-page.png?w=604) 

To fix this, you must remove the offending characters from your view files. Fortunately, Eclipse will normally make this very obvious. For example, here is a view file containing non-UTF-8 characters: 

![non-utf-8](http://ics314f13.files.wordpress.com/2013/10/non-utf-8.png?w=604)

As you can see, Eclipse renders the non-UTF-8 characters as black diamonds with a "?" character inside. Remove these characters and Play will only compile the view files once, upon first loading of the home page of the application. However, this is not the only cause of repeated recompilation. See the next issue. 

## No files should have a modification date in the future. 

If your computer's clock happens to be off and your play application is processing source files with a modification date in the future, then Play will recompile the system upon each page request. To prevent this from happening in the first place, make sure your computer's clock is synchronized with a network time server. 

## Always remove extraneous code and fix JavaDocs.

Before releasing a system based upon a template, be sure to: 

  * *Remove views that are not applicable.* For example, templates often include a sample page called Page1. If this view is not part of your application, delete it.  Of course, this deletion will induce cleanup of the routes file and Application class.
  * *Remove controller parameters to views that are not applicable.* Controller methods will often pass a string parameter to the view, such as "Welcome to Page1." If that string parameter is not used, then remove it from your controller method.
  * *Make sure JavaDocs are accurate.* Using a template and cutting-and-pasting can result in JavaDoc content that does not correspond to the code it is associated with. Read over your JavaDocs and make sure they are appropriate for the code they document.


