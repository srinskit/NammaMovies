<!DOCTYPE html>
<head>
	<title>Seat Selection</title>
</head>
<body>
	<link rel="stylesheet" type="text/css" href="SeatMap.css">
	<script src="jquery-3.3.1.min.js"></script>
	<script type="text/javascript" src="SeatMap.js"></script>
	<?php
	$con=mysqli_connect('localhost:3306','srinag','pass','test');
	if(!$con)
	{
		die('Could not connect:'.mysqli_error($con));
	}
	mysqli_select_db($con,'test');
	$query="SELECT name,v from t;";
	$result=mysqli_query($con,$query);

	while($row=mysqli_fetch_array($result))
	{
		if($row['v']==1)
		{
			echo $row['name'];
			$booked="<div class='outer-seat-booked' name='".$row['name']."' id='div-inline'><div class='inner-seat-booked'></div></div>";
			echo $booked;
		}
		else
		{
			$unbooked="<div class='outer-seat' name='".$row['name']."' id='div-inline'><div class='inner-seat'></div></div>";
			echo $unbooked;
		}
	}
	mysqli_close($con);
	?>
	<input type='button' id='sub' value='Proceed'>

	<!-- <h1>Select your seat(s)</h1>
	<div class="outer-seat" id="div-inline"><div class="inner-seat"></div></div>
	<div class="outer-seat" id="div-inline"><div class="inner-seat"></div></div>
	<div class="outer-seat" id="div-inline"><div class="inner-seat"></div></div>
	<br class="clearBoth" />

	<div class="outer-seat" id="div-inline"><div class="inner-seat"></div></div>
	<div class="outer-seat" id="div-inline"><div class="inner-seat"></div></div>
	<div class="outer-seat" id="div-inline"><div class="inner-seat"></div></div>
	<br class="clearBoth"/>

	<div class="outer-seat" id="div-inline"><div class="inner-seat"></div></div>
	<div class="outer-seat" id="div-inline"><div class="inner-seat"></div></div>
	<div class="outer-seat" id="div-inline"><div class="inner-seat"></div></div>
	<br class="clearBoth"/>

	<div class="outer-seat-booked" id="div-inline"><div class="inner-seat-booked"></div></div>
	<div class="outer-seat-booked" id="div-inline"><div class="inner-seat-booked"></div></div>
	<div class="outer-seat" id="div-inline"><div class="inner-seat"></div></div>
	<br class="clearBoth"/> -->
</body>
</html>