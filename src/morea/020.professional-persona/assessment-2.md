---
title: "Assessment of professional networks"
published: true
morea_id: assessment-professional-networks
morea_type: assessment
morea_sort_order: 2
---
<link rel="stylesheet" href="http://cdn.oesmith.co.uk/morris-0.4.3.min.css">
<script src="http://cdnjs.cloudflare.com/ajax/libs/raphael/2.1.0/raphael-min.js"></script>
<script src="http://cdn.oesmith.co.uk/morris-0.4.3.min.js"></script>

<div class="row">
  <div class="col-sm-8">
    <div class="well">
      <div id="assessment-professional-networks" style="height: 150px;"></div>
    </div>
  </div>

  <div class="col-sm-4">
    <p>
    This assessment verified that students joined the TechHui and LinkedIn professional
    networks and set up appropriate profiles. 
    </p>
  </div>

<script>
Morris.Bar({
  element: 'assessment-professional-networks',
  hideHover: 'auto',
  data: [
        { y: 'Satisfactory (%)', num: 90 },
        { y: 'Unsatisfactory (%)', num: 10 },
        ],
  xkey: 'y',
  ykeys: ['num'],
  resize: true,
  labels: ['Students']
});
</script>