---
title: "GitHub Guidelines"
published: true
morea_id: reading-github-guidelines
morea_summary: "Standards for using git and GitHub in this class"
morea_type: reading
morea_sort_order: 8
---

# GitHub Guidelines

Here are some guidelines you should follow when using GitHub for project
hosting.

## Initial Setup

### Choose a professionally appropriate name for your GitHub account.

Your GitHub account name should identify you in a professional way. Ideally, you will have the same name for your GitHub account, GMail account, LinkedIn account, TechHui account, and so forth. In my case, I chose "philipmjohnson" as the account name for all of the above services. 

Avoid a name that would be potentially embarrassing when seen by future employers (madhackerskillz, etc.). 

### Fill out your GitHub profile.

It's easy to do, and enables you to provide a (professional) picture as well as a link to your professional portfolio: 

![github-profile-page](http://ics314f13.files.wordpress.com/2013/10/github-profile-page.png?w=604) 

### Enable automatic management of line endings.

Windows uses a different line ending character(s) than Mac/Unix, which can cause problems for collaboration.  To fix this, you should follow the instructions in [Dealing with Line Endings](https://help.github.com/articles/dealing-with-line-endings). Essentially, you will need to set the git auto.crlf property to a value appropriate for your platform. To see whether you have set this property already, you can invoke the following to obtain a list of all your configuration settings: 
    
    git config --list

If you are just setting this property for the first time, then it is advisable
for you to delete any of your local repositories that you are sharing with
other developers, and re-clone them from GitHub. That ensures that automatic
management of line endings will take effect.

## Project Configuration

### Provide a README.md file.

All projects should have a top-level README.md file.  In the case of Play applications, you will want to rename the README file to README.md, then edit the file to document your project using [GitHub Flavored Markdown](https://help.github.com/articles/github-flavored-markdown) format. Your README.md file should contain: 

  * An overview of the project and what it accomplishes.
  * A screen image of one or more aspects of the running application.
  * Instructions for installation.
  * Instructions for usage.
  * Credits (if you are using other applications).

To include screen images, you can create a directory called "doc" at the top-
level of your project and put your image files in there. 

### Provide a LICENSE file.

All projects should have a top-level LICENSE file that
indicates the license attached to your source code. GitHub has support for
licensing, see [Choosing an Open Source License](https://github.com/blog/1530-choosing-an-open-source-license) for details. 


### Edit the .gitignore so that derived files are not scheduled for commit.

"Derived" files are files
and directories that are the product of compilation/execution (or can in some
way be generated from the "Source" files). Examples of derived files and
directories are:

  * .checkstyle
  * .settings/
  * .target/
  * target/
  * project/project
  * project/target
  * logs/

If a derived file or directory shows up in the list to be committed to GitHub,
you need to edit your .gitignore file to remove it from consideration:

![gitignore](http://ics314f13.files.wordpress.com/2013/10/gitignore.png?w=604)

Sometimes you will mistakenly commit derived files and directories to GitHub.
Fortunately, this is easy to fix:

  1. Go to your project directory using the Finder or Windows Explorer or a command shell, and manually delete the derived file or directory.
  2. Invoke your GitHub app, and "sync" (commit and push) this change so that the most recent version of your repository no longer contains these files.
  3. Go to the "Settings" page in your GitHub app, and add the derived file or directory to your .gitignore.  Press "Save Changes" to write out your changes to the .gitignore file.
  4. Go the the "Changes" page in your GitHub app, and sync (commit and push) this change so that the GitHub repo now contains the updated .gitignore file.

If, for some reason, you do not have a .gitignore file, you can find a
template version [here](https://github.com/ics-software-engineering/play-bootstrap-template/blob/master/.gitignore). 

### Do not commit .project and .classpath files for Play applications.

Unfortunately, the "eclipse" command
in the Play console generates .project and .classpath files containing hard-coded paths to the location of your play framework installation. 
You must
not commit these files. If you do, then when another developer downloads your
project, they will not be able to use Eclipse because it will load the wrong
information. Make sure that .project and .classpath are in the .gitignore file
when developing Play applications. Sometimes you will mistakenly commit the
.project and .classpath files to GitHub. Fortunately, this is easy to fix:

  1. Go to your project directory using the Finder or Windows Explorer or a command shell, and manually delete the .classpath and .project files.
  2. Invoke your GitHub app, and "sync" (commit and push) this change so that the most recent version of your repository no longer contains these files.
  3. Go to the "Settings" page in your GitHub app, and add /.classpath and /.project to your .gitignore. Press "Save Changes" to write out your changes to the .gitignore file.
  4. Go the the "Changes" page in your GitHub app, and sync (commit and push) this change so that the GitHub repo now contains the updated .gitignore file.

If, for some reason, you do not have a .gitignore file, you can find a
template version [here](https://github.com/ics-software-engineering/play-bootstrap-template/blob/master/.gitignore).


### Your GitHub repository should NOT be a single top-level directory

A common newbie mistake is to commit the directory containing your
project, not the contents of the directory containing your project. 


### Create a GitHub Page as the "user-level" facing home page to your repository.

The default GitHub project interface is useful for fellow
developers, but can be somewhat overwhelming to simple users of your
application: 

![developer-home-page](http://ics314f13.files.wordpress.com/2013/10/developer-home-page.png?w=604) 

To provide a more end-user friendly experience, create a
GitHub "page" for your site. You can choose to use the README.md file as the
content. This strips out much of the complexity and enables your end-users
to focus on the important parts of your documentation:

![end-user-home-page](http://ics314f13.files.wordpress.com/2013/10/end-user-home-page.png?w=604)

The GitHub page is useless if no one can find it.  To make it easily available, edit the "Description" area at the top of your repo page and put the GitHub page url in the "website" field.

### The GitHub Golden Rule:  Code unto others as you would have them code unto you.

There are the "mechanics" of collaboration, which involves ways to share and contribute code as a group. Beyond these mechanics is the "meaning" of collaboration, which is to work together to create high quality, useful software. To help you move beyond "mechanics" and toward "meaning", you should observe at least the following: 

  * Your repositories are ultimately your responsibility; keep your own code clean.
  * If someone contributes code to your repository that violates a guideline, then fix it. 
  * "Adhering to the style of the original" does not mean mimicking mistakes. The Elements of Java Style's first guideline is to mimic the style of the original. This is only true when the "style" in question is a legitimate alternative. In this class, we have set guidelines that you are mandated to follow. Deviating from them is a mistake to be caught and corrected, not a legitimate alternative. If you are working on another student's code base and notice a violation of one of our guidelines, then help them out! Say something! Add code that shows them the right way to do it and encourage them to emulate your correct style. 












