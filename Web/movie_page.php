<!DOCTYPE html>
<html>
<head>
	<!-- Compiled and minified CSS -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">
    <link rel="stylesheet" type="text/css" href="movie_page_style.css">

    <!-- Compiled and minified JavaScript -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
	<title>MOVIE PAGE</title>
</head>
<body>
	<?php
	$con=mysqli_connect('127.0.0.1:3306','root',NULL,'trial');
	if(!$con)
	{
		die('Could not connect:'.mysqli_error($con));
	}
	mysqli_select_db($con,'test');
	$query="SELECT poster,trailer,name,certificate,language,genre,release_date,running_time,synopsis, rating from movie;";
	$result=mysqli_query($con,$query);
	$row=mysqli_fetch_array($result)
	$q="SELECT name, picture from actor;";
	$r=mysqli_query($con,$q);
	$line=mysqli_fetch_array($r)
	<img class="poster" src="<echo $row->poster;" alt="movie poster">
	<div class="container">
       <div class="row">
	      <div class="col s2"><blockquote class="description"><echo $row->name;></blockquote></div>
	      <div class="col s2"><blockquote class="description">echo $row->certificate;</blockquote></div>
	      <div class="col s2"><blockquote class="description"> echo $row->language;</blockquote></div>
	      <div class="col s2"><blockquote class="description">echo $row->genre;</blockquote></div>
	      <div class="col s2"><blockquote class="description">echo $row->release_date;</blockquote></div>
	      <div class="col s2"><blockquote class="description"><echo $row->running_time;></blockquote></div>
    	</div>
    </div>
    <div class="button" align="center" action="shows.php">
    	<p>BOOK TICKETS</p>
	</div>
	<br/><br/><br/><br/>
	<div>
		<div class="trailer">
			<iframe width="500" height="315" src="echo $row->trailer;" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>
		</div>
		<div class="summary">
			<div class="synopsis">echo $row->synopsis;</div>
			<br/>
			<div class="rating">echo $row->rating;</div>
		</div>
		<div class="container">
        <div class="row">
            <div class="col s3 m3 l3 center">
                <img src="echo $r->picture;" width="50px" alt=""
                        class="circle hoverable responsive-img">
            </div>
             <div class="col s3 m3 l3 center">
                <img src="echo $r->picture;" width="50px" alt=""
                        class="circle hoverable responsive-img">
            </div>
        </div>
        </div>
	</div>
	mysqli_close($con);
	?>
	</body>
</html>