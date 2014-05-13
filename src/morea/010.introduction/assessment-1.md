---
title: "Assessment of environment configuration"
published: true
morea_id: assessment-environment-configuration
morea_type: assessment
morea_sort_order: 1
---

<link rel="stylesheet" href="http://cdn.oesmith.co.uk/morris-0.4.3.min.css">
<script src="http://cdnjs.cloudflare.com/ajax/libs/raphael/2.1.0/raphael-min.js"></script>
<script src="http://cdn.oesmith.co.uk/morris-0.4.3.min.js"></script>

<div class="row">
  <div class="col-sm-8">
    <div class="well">
      <div id="assessment-environment-configuration" style="height: 150px;"></div>
    </div>
  </div>

  <div class="col-sm-4">
    <p>
    This assessment verified that students obtained laptops with the appropriate hardware, had the
    appropriate operating system installed, and had successfully installed the appropriate version of Java. 
    </p>
  </div>
</div>

<script>
Morris.Bar({
  element: 'assessment-environment-configuration',
  hideHover: 'auto',
  data: [
        { y: 'Satisfactory (%)', num: 80 },
        { y: 'Unsatisfactory (%)', num: 20 },
        ],
  xkey: 'y',
  ykeys: ['num'],
  resize: true,
  labels: ['Students']
});
</script>