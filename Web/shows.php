<?php
session_start();
?>
<?php
if (!isset($_SESSION['user_details'])) {
    $_SESSION['user_details'] = ['logged_in' => false];
}
$user_details = $_SESSION['user_details'];
?>
<?php
require_once 'config.php';
if (!isset($_GET['mid'])) {
    header("Location: home.php");
    die();
} else {
    $mid = $_GET['mid'];
}
$query = "select t.tname as name, t.address as addr, s.time as time from theatre t, shows s where t.tid = s.tid and s.mid = $mid";
$r1 = mysqli_query($con, $query);
$hmap = [];
if(!$r1){
    echo 'HS quota';
}
else{
    while ($row = mysqli_fetch_array($r1)){
        if(!array_key_exists($row['name'], $hmap)){
            $hmap[$row['name']] = [];
        }
        array_push($hmap[$row['name']], $row);
    }
}
?>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <?php include 'common_heads.php';?>
	<title>
		Namma Movies
	</title>
</head>
<body>
    <?php include 'page_header.php';?>
    <main>
        <div class="row">
            <div class="col s12">
                <div class="card">
                    <div class="card-image">
                        <span class="card-title" style="color: rgb(255, 255, 255)">Card Title</span>
                        <img src="images/656579.png" style="height: 250px ;z-index: 1;position: relative;">
                        <span class="card-title">Card Title</span>
                    </div>

                    <div class="card-content">
                        <p>
                        <?php
$query = "SELECT mname FROM movie WHERE mid=$mid";
$result = mysqli_query($con, $query);
$row = mysqli_fetch_array($result);
echo $row['mname'];
?>
                        </p>
                    </div>
                    <div class="card-action">
                        <a href="#">This is a link</a>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col s12 m6 l6">
                <ul class="tabs">
                    <li class="tab col s3 "><a href="#test1" class="active blue-text" ><?php
$today = date("F j");

print $today;
?></a></li>
                        <li class="tab col s3"><a href="#test2"  class="blue-text" >
                            <?php
$datetime = new DateTime('tomorrow');
echo $datetime->format('F j');
?>
                        </a></li>
                        <li class="tab col s3"><a href="#test4" class="blue-text" >  <?php
$datetime = new DateTime('tomorrow + 1 day');
echo $datetime->format('F j');
?></a></li>
                    </ul>
                </div>
            </div>
            <div>
                <table>
                    <thead>
                        <tr>
                            <th>Theatre Names</th>
                            <th>Food and beverages available</th>

                        </tr>
                    </thead>

                    <tbody>
                        <?php foreach ($hmap as $name => $row_arr): ?>                        
                        <tr>
                            <td><?php echo($name) ?></td>
                            <td>
                            <?php foreach ($row_arr as $row): ?>                        
                                <a class="waves-effect waves-light btn-large" href="<?php echo("seatMap.php?sid=".$row['sid']); ?>"><?php echo($row['time']) ?></a>
                            <?php endforeach;?>                            
                            </td>
                        </tr>
                        <?php endforeach;?>
                    </tbody>
                </table>
            </div>
        </main>
        <?php include 'page_footer.php';?>
    </body>
    <?php include 'common_scripts.php';?>
    <script>
        $(document).ready(function(){
            $('.tabs').tabs();
        });
    </script>
    </html>