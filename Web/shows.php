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
$query = "select * from movie where mid = $mid";
$result = mysqli_query($con, $query);
if (!$result) {
    header("Location: home.php");
    die();
} else {
    $movie = mysqli_fetch_assoc($result);
    mysqli_free_result($result);
}
$query = "select t.tname as name, t.address as addr, s.time as time, s.sid as sid from theatre t, shows s where t.tid = s.tid and s.mid = $mid";
$r1 = mysqli_query($con, $query);
$hmap = [(new DateTime('today'))->format('Y-m-d') => [], (new DateTime('today + 1 day'))->format('Y-m-d') => [], (new DateTime('today + 2 day'))->format('Y-m-d') => []];
if (!$r1) {
    echo 'HS quota';
} else {
    while ($row = mysqli_fetch_array($r1)) {
        $date = explode(' ', $row['time'])[0];
        if (!array_key_exists($date, $hmap)) {
            continue;
        }
        if (!array_key_exists($row['name'], $hmap[$date])) {
            $hmap[$date][$row['name']] = [];
        }
        array_push($hmap[$date][$row['name']], $row);
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
                <div class="card hoverable">
                    <div class="card-image">
                        <img src="<?php echo ($movie['poster']); ?>" style="height: 250px ;z-index: 1;position: relative;">
                    </div>
                    <div class="card-content">
                        <h3><?php echo ($movie['mname']); ?></h3>
                        <div class="section"></div>
                        <div class="row">
                            <div class="col s12 m6 l6">
                                <ul class="tabs">
                                    <li class="tab col s3 "><a href="#<?php echo (new DateTime('today'))->format('Y-m-d'); ?>" class="active blue-text" >
                                        <?php echo (new DateTime('today'))->format('F j'); ?>
                                        </a>
                                    </li>
                                    <li class="tab col s3"><a href="#<?php echo (new DateTime('today + 1 day'))->format('Y-m-d'); ?>" class="blue-text" >
                                            <?php echo (new DateTime('today + 1 day'))->format('F j'); ?>
                                        </a>
                                    </li>
                                    <li class="tab col s3"><a href="#<?php echo (new DateTime('today + 2 day'))->format('Y-m-d'); ?>" class="blue-text" >
                                            <?php echo (new DateTime('today + 2 day'))->format('F j'); ?>
                                        </a>
                                    </li>
                                </ul>
                            </div>
                            <?php foreach ($hmap as $date => $hmap1): ?>
                            <div id="<?php echo($date); ?>" class="col s12">
                            <?php if (empty($hmap1)): ?>
                            <div class="section"></div>
                            <a class="waves-effect waves-light btn-large red" >No shows :(</a>
                            <?php else: ?>                            
                            <table>
                                <thead>
                                    <tr>
                                        <th width="20%">Theatre</th>
                                        <th>Shows</th>
                                    </tr>
                                </thead>

                                <tbody>
                                    <?php foreach ($hmap1 as $name => $row_arr): ?>
                                    <tr>
                                        <td><?php echo ($name) ?></td>
                                        <td>
                                        <?php foreach ($row_arr as $row): ?>
                                            <a class="waves-effect waves-light btn-large blue darken-2" href="<?php echo ('SeatMap.php?sid=' . $row['sid']); ?>"><?php echo date('h:i a', strtotime($row['time'])); ?></a>
                                        <?php endforeach;?>
                                        </td>
                                    </tr>
                                    <?php endforeach;?>
                                </tbody>
                            </table>
                            <?php endif; ?>                            
                            </div>
                            <?php endforeach;?>
                        </div>
        </div>
                    </div>
                </div>
            </div>
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