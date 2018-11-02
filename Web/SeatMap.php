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
<html>

<head>
    <meta charset="utf-8" />
    <?php include 'common_heads.php';?>
	<link rel="stylesheet" type="text/css" href="SeatMap.css">
	<script type="text/javascript" src="SeatMap.js"></script>
    <title>Namma Movies | Seats</title>
</head>
<body>
    <?php include 'page_header.php';?>
    <main>
        <div class="container">
            <div class="row">
                <div class="col s12 m6 l6 offset-l3 offset-m3">
                    <div class="section"></div>
<?php
require_once 'config.php';
$query = "SELECT seat_num,booked from seats WHERE sid=" . $_GET['sid'] . ";";
$result = mysqli_query($con, $query);
$hmap = [];
while ($row = mysqli_fetch_array($result)) {
    if (!array_key_exists($row['seat_num'][0], $hmap)) {
        $hmap[$row['seat_num'][0]] = [];
    }
    array_push($hmap[$row['seat_num'][0]], $row);
}
foreach ($hmap as $key => $rows) {
    echo "<div class='seatrow'>";
    foreach ($rows as $row) {
        if ($row['booked'] == 1) {
            $booked = "<div class='outer-seat-booked' name='" . $row['seat_num'] . "' id='div-inline'><div class='inner-seat-booked'></div></div>";
            echo $booked;
        } else {
            $unbooked = "<div class='outer-seat' name='" . $row['seat_num'] . "' id='div-inline'><div class='inner-seat'></div></div>";
            echo $unbooked;
        }
    }
    echo "</div><div class='clearBoth'></div>";
}
mysqli_close($con);

?>
                    <div class='clearBoth'></div>
                    <div class="section"></div>
                </div>
            </div>
            <div class="row center-align">
                <a id='sub' class="waves-effect waves-light btn-large red"><i class="material-icons right">event_seat</i>Book now</a>
            </div>
        </div>
    </main>
<?php include 'page_footer.php';?>
</body>
</html>
