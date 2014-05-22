---
title: "WOD Performance trends"
published: true
morea_id: reading-wod-performance-trends
morea_summary: "Visualizations showing WOD performance and DNF trends over the Fall, 2013 semester"
morea_type: reading
morea_sort_order: 6
morea_labels:
---

# WOD Performance Trends

A central question for this approach to education is whether the “WOD” approach actually works:  do students “get better” over time at software development as a result of this kind of pedagogy?

Gaining empirical insight into whether the students are improving in performance over time is challenging due to the following confounding variables:

  * The WODs vary in difficulty, so an increase or decrease in WOD time does not necessarily indicate an increase or decrease in performance capability; it is more likely due to the difficulty of the task.
  * My assignment of Rx, Sd, and Av times is arbitrary.  It is quite possible that  increases in (for example) the number of Rx performances over time is not due to actual performance improvement, but merely due to me assigning an easier threshold for Rx as the course goes on.

## Performance trends

To attempt to gain some preliminary insight into performance trends over time, I constructed a box plot showing the performance times (in seconds) for all students who complete a given WOD successfully (i.e. do not DNF).    The following chart shows the minimum, maximum, 2nd and 3rd quartiles, and median values for the non-DNF WOD times.

{% include small-img.html url="http://ics314f13.files.wordpress.com/2013/08/box-plot-login.png" %}

Here are some things to note about this visualization:

  * It removes the “bias” present in assigning Rx, Sd, and Av to WOD times, as only the actual performance time is represented.
  * There appears to be a relatively consistent ratio of approximately 3:1 between the fastest and slowest students who successfully finish the WOD.   This can be observed by looking at the minimum and maximum values. I believe 3:1 to be a conservative estimate of productivity differences, since this does not account for students who get cut off at the DNF time and who might have ultimately completed the WOD with significant additional effort.
  * The most hopeful indication of performance improvement is the proportional decrease in the size of the quartile box.  This means that instead of students being spread out across all times, there are more students finishing in approximately the same time, with fewer students doing substantially better or worse.

## DNF trends

The box plot visualization omits data regarding students who DNF, but that is obviously an important aspect of performance.  To provide some preliminary insight, here is a simple chart showing the percentage of the class that DNF’d for the WODs in chronological sequence:

{% include small-img.html url="http://ics314f13.files.wordpress.com/2013/08/dnf-login.png" %}

Clearly, the percentage DNF shows a precipitous decline after the first two WODs.  I believe that the decline in DNFs are a result of: (a) students learning how to use the homework to prepare for the WOD;  (b) students becoming accustomed to “programming under pressure”, and not having it impede their ability to accomplish the task at hand; and (c) several of the poorer performing students dropping the class over the course of the first six WODs. (Although note also that one of the highest performing students also dropped the class, so attrition did not occur from the bottom only.)

My belief is that this decline in DNF cannot be attributed to the WODs becoming easier. The Digits-Delete WOD is substantially more complex than the CharFrequency WOD, even though the Rx times are the same.

Taken together, the decline in DNF along with the reduction in variability of performance for the second and third quartiles appears to provide evidence that more students are performing “adequately”, and that “adequate” is becoming less variable over time.