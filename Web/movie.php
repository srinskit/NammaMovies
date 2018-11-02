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
    $query = "select * from movie where mid = $mid";
    $result = mysqli_query($con, $query);
    if (!$result) {
        header("Location: home.php");
        die();
    } else {
        $movie = mysqli_fetch_assoc($result);
        mysqli_free_result($result);
    }
}
?>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <?php include 'common_heads.php';?>
    <link rel="stylesheet" type="text/css" href="movie_page_style.css">
	<title>Namma Movies | <?php echo ($movie['mname']); ?> </title>
</head>
<body>
    <?php include 'page_header.php';?>

    <main>

	<img class="poster" width="50px" src="<?php echo ($movie['poster']); ?>" alt="movie poster">
	<div class="container">
       <div class="row">
	      <div class="col s2"><blockquote class="description"><?php echo ($movie['certificate']); ?></blockquote></div>
	      <div class="col s2"><blockquote class="description"><?php echo ($movie['language']); ?></blockquote></div>
	      <div class="col s2"><blockquote class="description"><?php echo ($movie['genre']); ?></blockquote></div>
	      <div class="col s2"><blockquote class="description"><?php echo (date("F jS, Y", strtotime($movie['releasedate']))); ?></blockquote></div>
	      <div class="col s2"><blockquote class="description"><?php echo ($movie['runningtime'] . ' minutes'); ?></blockquote></div>
	      <div class="col s2"><blockquote class="description"><?php echo ($movie['rating']); ?></blockquote></div>
    	</div>
    </div>
    <div class="container">
        <div class="section"></div>
        <div class="row">
            <a class="col s2 m6 l6 offset-l3 offset-m3 waves-effect waves-light btn-large red" href="shows.php?mid=<?php echo ($movie['mid']); ?>">Book Now</a>
        </div>
        <div class="section"></div>
    </div>
	<div>
        <div class="container">
            <div class="row">
                <div class="col s12 m6 l6">
                    <iframe width="500" height="315" src="<?php echo ($movie['trailer']); ?>" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>
                </div> 
                <div class="col s12 m6 l6">
                    <div class="flow-text"><?php echo ($movie['summary']); ?></div>
                    <div class="section"></div>
                    <div class="row">
                        <div class="col s6 m2 l2">
                            <img src="<?php echo ('/images/actors/' . $movie['a1'] . '.png'); ?>" width="50px" alt="A"
                                    class="circle hoverable responsive-img">
                        </div>
                        <div class="col s6 m2 l2">
                            <img src="<?php echo ('/images/actors/' . $movie['a2'] . '.png'); ?>" width="50px" alt="A"
                                    class="circle hoverable responsive-img">
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
</html>