---
title: "Practice WOD: DeploySurferpedia"
published: true
morea_id: experience-deploy-surferpedia
morea_type: experience
morea_summary: "Deploy Surferpedia to the cloud."
morea_sort_order: 2
morea_labels:
---

# Practice WOD: DeploySurferpedia

The goal for this WOD is for you to be able to deploy your Surferpedia application to the cloud.

In contrast to other WODs, I do not believe it is useful for you to try to do this WOD on your own before watching my solution.  Instead, watch my solution first, then try it yourself:

{% include youtube.html id="UUo9QPqVGeE" %}

As you can see from watching the screencast, there is the possibility of intermittent errors at CloudBees.  I raised a StackOverflow issue and you can check it to see if the CloudBees staff has posted a solution.  One hypothesis is that a work-around is to disable “delta” uploads on deployment, which you can do with the –delta keyword. Here’s an example:

    % bees app:deploy --delta false -a philipmjohnson/myfirstplayapp -t play2 target/universal/surferpedia-1.0-SNAPSHOT.zip



## Instructions

  1. Start your timer.
  2. Deploy your Surferpedia application to the cloud.

If successful, http://surferpedia.philipmjohnson.cloudbees.net/ (where philipmjohnson is replaced by your CloudBees username) will point to your surferpedia application.

When finished, stop your timer, and record how many minutes it took you to complete the WOD. 

{% include wod-times.html Rx="<5 min" Av="5-10 min" Sd="10-15 min" DNF="15+ min" %}



