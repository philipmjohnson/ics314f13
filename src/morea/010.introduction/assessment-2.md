---
title: "Assessment of discussion posting"
published: true
morea_id: assessment-discussion-posting
morea_type: assessment
morea_sort_order: 2
---
<link rel="stylesheet" href="http://cdn.oesmith.co.uk/morris-0.4.3.min.css">
<script src="http://cdnjs.cloudflare.com/ajax/libs/raphael/2.1.0/raphael-min.js"></script>
<script src="http://cdn.oesmith.co.uk/morris-0.4.3.min.js"></script>

<div class="row">
  <div class="col-sm-8">
    <div class="well">
      <div id="assessment-discussion-posting" style="height: 150px;"></div>
    </div>
  </div>

  <div class="col-sm-4">
    <p>
    This assessment verified that students subscribed to the class newsgroup and 
    posted an introductory message about themselves. 
    </p>
  </div>
</div>

<script>
Morris.Bar({
  element: 'assessment-discussion-posting',
  hideHover: 'auto',
  data: [
        { y: 'Satisfactory (%)', num: 100 },
        { y: 'Unsatisfactory (%)', num: 0 },
        ],
  xkey: 'y',
  ykeys: ['num'],
  resize: true,
  labels: ['Students']
});
</script>