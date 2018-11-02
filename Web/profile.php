<?php
session_start();
?>
<?php
if (!isset($_SESSION['user_details'])) {
    $_SESSION['user_details'] = ['logged_in' => false];
}
?>
<?php
global $result;
require_once 'config.php';
if ($_SESSION['user_details']['logged_in'] == false) {
    header("Location: login.php");
    die();
} else {
    $query = "select m.mid as xmid, mname, seat_num, tname, address, time from seats st, shows s, movie m, theatre t where st.sid = s.sid and s.mid = m.mid and t.tid = s.tid and uname='".$_SESSION['user_details']['username']."'";
    $result = mysqli_query($con, $query);
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
            <div class="col s12 m12 l12">
            <div class="card">
                <div class="card-image">
                <img height="200px" src="images/back.jpg">
                    <span class="card-title"><?php echo(ucfirst($_SESSION['user_details']['username'])); ?></span>
                </div>
            </div>
            </div>
        </div>
        <div id="mytickets" class="container">
            <div class="row">
            <h4>Tickets</h4>
            <?php while ($movie = mysqli_fetch_array($result)): ?>
                <div class="col s12 m4 l3">
                    <div class="card hoverable">
                        <div class="card-image">
                            <img src="<?php echo('posters/'.$movie['xmid'].'.jpg'); ?>">
                        </div>
                        <div class="card-content">
                            <h5><?php echo($movie['mname']); ?></h5>
                            <div class="divider"></div>
                            <h6><?php echo((date("F jS, Y", strtotime($movie['time'])))); ?></h6>
                            <div class="divider"></div>
                            <h6>Seat num: <?php echo($movie['seat_num']); ?></h6>
                            <div class="divider"></div>
                            <h6><?php echo($movie['tname'].', '.$movie['address']); ?></h6>
                        </div>
                    </div>
                </div>
            <?php endwhile;?>
            </div>
        </div>

    
    </main>
    <?php include 'page_footer.php';?>
</body>
<?php include 'common_scripts.php';?>

</html>