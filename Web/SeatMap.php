<?php
session_start();
?>
<?php
if (!isset($_SESSION['user_details'])) {
    $_SESSION['user_details'] = ['logged_in' => false];
}
if ($_SESSION['user_details']['logged_in'] == false) {
    header("Location: login.php");
    die();
}
$_SESSION['sid'] = $_GET['sid'];
?>
<!DOCTYPE html>
<head>
	<title>Seat Selection</title>
</head>
<body>
	<link rel="stylesheet" type="text/css" href="SeatMap.css">
	<script src="jquery-3.3.1.min.js"></script>
	<script type="text/javascript" src="SeatMap.js"></script>
	<?php
	require_once 'config.php';
	$query="SELECT seat_num,booked from seats WHERE sid=".$_GET['sid'].";";
	$result=mysqli_query($con,$query);
	$hmap=[];
	while($row=mysqli_fetch_array($result))
	{
		if(!array_key_exists($row['seat_num'][0], $hmap)){
			$hmap[$row['seat_num'][0]] = [];
		}
		array_push($hmap[$row['seat_num'][0]], $row);
	}
	foreach($hmap as $key=>$rows)
	{
		echo "<div class='seatrow'>";
		foreach($rows as $row)
		{
			if($row['booked']==1)
			{
			$booked="<div class='outer-seat-booked' name='".$row['seat_num']."' id='div-inline'><div class='inner-seat-booked'></div></div>";
			echo $booked;
			}
			else
			{
			$unbooked="<div class='outer-seat' name='".$row['seat_num']."' id='div-inline'><div class='inner-seat'></div></div>";
			echo $unbooked;
			}
		}
		echo "</div><div class='clearBoth'></div>";
	}
	mysqli_close($con);

	?>
	<div class='clearBoth'></div>
	<div>
		<input type='button' id='sub' value='Proceed'>
	</div>


</body>
</html>