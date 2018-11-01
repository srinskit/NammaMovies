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
$query = "select * from movie order by movie.releasedate desc limit 4";
$result = mysqli_query($con, $query);
$latest = [];
while ($row = mysqli_fetch_assoc($result)) {
    array_push($latest, $row);
}

$query = "select * from movie order by movie.rating desc limit 4";
$result = mysqli_query($con, $query);
$trending = [];
while ($row = mysqli_fetch_assoc($result)) {
    array_push($trending, $row);
}
$query = "select mid, mname from movie";
$result = mysqli_query($con, $query);
$all_movies = [];
while ($row = mysqli_fetch_assoc($result)) {
    array_push($all_movies, $row);
}
mysqli_free_result($result);
?>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <?php include 'common_heads.php';?>
    <style>
        .movie_card .btn-large{
            width: 100%;
        }
        .search-wrapper {
            margin: 50px auto;
        }
    </style>

    <title>Namma Movies</title>
</head>

<body>
    <?php include 'page_header.php';?>
    <main>
        <div class="container">
            <div class="row">
                <nav class="search-wrapper">
                    <div class="nav-wrapper">
                        <form>
                            <div class="input-field white">
                                <input id="search" type="search" class="autocomplete" placeholder="Find a movie!"
                                    required>
                                <label class="label-icon" for="search"><i class="material-icons">search</i></label>
                                <i class="material-icons">close</i>
                            </div>
                        </form>
                    </div>
                </nav>
            </div>
        </div>
        <div class="container">
            <div class="divider"></div>
            <div class="row">
                <h5>Latest</h5>
                <?php foreach ($latest as $movie): ?>
                <div class="col s12 m3 l3">
                    <div class="card medium hoverable movie_card">
                        <div class="card-image waves-effect waves-block waves-light">
                            <img class="activator" src="posters/2.jpg">
                        </div>
                        <div class="card-content">
                            <span class="card-title activator grey-text text-darken-4"><?php echo ($movie['mname']); ?><i class="material-icons right">more_vert</i></span>
                        </div>
                        <div class="card-reveal">
                            <span class="card-title grey-text text-darken-4"><?php echo ($movie['mname']); ?><i class="material-icons right">close</i></span>
                            <p><?php echo ($movie['summary']); ?></p>
                            <div class="card-action">
                                <a class="waves-effect waves-light btn-large blue darken-2"><i class="material-icons right">book</i>Read
                                    More</a>
                            </div>
                        </div>
                        <div class="card-action">
                            <a href="<?php echo("movie.php?mid=".$movie['mid']); ?>" class="waves-effect waves-light btn-large red"><i class="material-icons right">local_movies</i>Book
                                now</a>
                        </div>
                    </div>
                </div>
                <?php endforeach;?>

            </div>
            <div class="divider"></div>
            <div class="row">
                <h5>Trending</h5>
                <?php foreach ($trending as $movie): ?>
                <div class="col s12 m3 l3">
                    <div class="card medium hoverable movie_card">
                        <div class="card-image waves-effect waves-block waves-light">
                            <img class="activator" src="posters/2.jpg">
                        </div>
                        <div class="card-content">
                            <span class="card-title activator grey-text text-darken-4"><?php echo ($movie['mname']); ?><i class="material-icons right">more_vert</i></span>
                        </div>
                        <div class="card-reveal">
                            <span class="card-title grey-text text-darken-4"><?php echo ($movie['mname']); ?><i class="material-icons right">close</i></span>
                            <p><?php echo ($movie['summary']); ?></p>
                            <div class="card-action">
                                <a class="waves-effect waves-light btn-large blue darken-2"><i class="material-icons right">book</i>Read
                                    More</a>
                            </div>
                        </div>
                        <div class="card-action">
                            <a class="waves-effect waves-light btn-large red"><i class="material-icons right">local_movies</i>Book
                                now</a>
                        </div>
                    </div>
                </div>
                <?php endforeach;?>
            </div>
        </div>
    </main>
    <?php include 'page_footer.php';?>
</body>
<?php include 'common_scripts.php';?>
</html>