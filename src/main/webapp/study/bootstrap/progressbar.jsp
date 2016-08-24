<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>progressbar.jsp</title>
<link href="/resources/bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css" />
<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
<script src="/resources/plugins/jQuery/jQuery-2.1.4.min.js"></script>

<script type="text/javascript">
$(document).ready(function() {
	var clicks = 0;
	$('#btninfo').on('click', function() {
		clicks++;
		  var percent = Math.min(Math.round(clicks / 10 * 100), 100);
		  $('#progress').width(percent + '%').text(percent + '%');
		 });
});

</script>


</head>


<body>
   <div class = "progress progress-striped active">
   <div id="progress" class = "progress-bar progress-bar-info" role = "progressbar" 
      aria-valuenow = "0" aria-valuemin = "0" aria-valuemax = "100" style = "width: 0%;">
      
      <span class = "sr-only">50% Complete</span>
   </div>
</div>
  <button id="btninfo" type="button" class="btn btn-info">info</button>
   
</body>
</html>