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
	<title>Namma Movies | <?php echo ($movie['mname']); ?> </title>
    <style>
        html {background-color: #454545}
        .poster {
            padding: 20px;
            width: 100%;
            height: auto;
            object-fit: cover;
        }
        .description {
            font-weight: bold;
            color: white;
        }
        .button {
        margin-top: 0;
        margin-left: 300px;
        background: #F08080;
        width: 500px;
        padding: 5px 0;
        position: absolute;
        border-radius: 3px;
        }
        .button p {
            font-size: 100%;
            font-family: sans-serif;
            font-style: verdana;
            text-align: center;
            text-transform: uppercase;
            color: #FFF;
            user-select: none
        }
        .trailer {
            float: left;
            margin-left: 20px;
            border: hidden;
        }

        .rating {
            font-size: 100%;
            font-style: verdana;
            color: white;
        }
        .cast_list {
            width: 500px;
            font-style: verdana;
            color: white;
        }
    </style>
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
	      <div class="col s2"><blockquote class="description"><?php echo ($movie['runningtime']); ?></blockquote></div>
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
                </div>
            </div>
        </div>
	</div>

    </main>
    <?php include 'page_footer.php';?>
</body>
<?php include 'common_scripts.php';?>
</html>