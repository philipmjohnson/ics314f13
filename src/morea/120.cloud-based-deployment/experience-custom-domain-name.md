---
title: "Practice WOD: CustomDomainName"
published: true
morea_id: experience-custom-domain-name
morea_type: experience
morea_summary: "Buy a domain name and point it to your Surferpedia application"
morea_sort_order: 3
morea_labels:
---

# Practice WOD: CustomDomainName

In this WOD you will buy a domain name and set it up to point to your running Surferpedia application on CloudBees.

Once again, I recommend you watch the following screencast before the WOD rather than after the WOD.

{% include youtube.html id="n_Xd3rct7u0" %}


## Instructions

  1. Start your timer.
  2. Go to NameCheap.com (or your preferred domain name provider) and purchase a custom domain name for your surferpedia application.  I recommend you spend no more than $8.00 for the domain name. 
  3. Once purchased, configure the domain name so that it can be used to retrieve your Surferpedia application deployed on CloudBees as follows.
  4. At NameCheap.com (or your preferred provider), set the CNAME record for your custom domain name to point to your CloudBees application domain name.
  5. Wait until nslookup shows that the new domain name points to cloudbees.
  6. At CloudBees, add the new custom domain name to the application’s configuration.

When finished, stop your timer, and record how many minutes it took you to complete the WOD. 

{% include wod-times.html Rx="<5 min" Av="5-10 min" Sd="10-15 min" DNF="15+ min" %}

Note: for this WOD, do not repeat it regardless of your time as long as you eventually get the domain name working.  I don’t want you buying more than one domain name for this assignment!

