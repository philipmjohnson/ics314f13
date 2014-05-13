---
title: "Assessment of professional portfolios"
published: true
morea_id: assessment-professional-portfolio
morea_type: assessment
morea_sort_order: 1
---

<link rel="stylesheet" href="http://cdn.oesmith.co.uk/morris-0.4.3.min.css">
<script src="http://cdnjs.cloudflare.com/ajax/libs/raphael/2.1.0/raphael-min.js"></script>
<script src="http://cdn.oesmith.co.uk/morris-0.4.3.min.js"></script>

<div class="row">
  <div class="col-sm-8">
    <div class="well">
      <div id="assessment-professional-portfolio" style="height: 150px;"></div>
    </div>
  </div>

  <div class="col-sm-4">
    <p>
    This assessment verified that students implemented a professional portfolio 
    that satisfied the guidelines in the <a href="/morea/020.professional-persona/reading-4.html">Professional Portfolio Style Guide</a>.
    </p>
  </div>

<script>
Morris.Bar({
  element: 'assessment-professional-portfolio',
  hideHover: 'auto',
  data: [
        { y: 'Excellent (%)', num: 50 },
        { y: 'Satisfactory (%)', num: 20 },
        { y: 'Unsatisfactory (%)', num: 30 },
        ],
  xkey: 'y',
  ykeys: ['num'],
  resize: true,
  labels: ['Students']
});
</script>
