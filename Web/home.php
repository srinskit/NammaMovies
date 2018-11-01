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
$con = mysqli_connect('localhost:3306', 'srinag', 'pass', 'test');
if (!$con) {
    die('Could not connect:' . mysqli_error($con));
}
mysqli_select_db($con, 'test');
$query = "SELECT name,v from t;";
$result = mysqli_query($con, $query);

mysqli_close($con);
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
                <h5>Trending</h5>
                <div class="col s12 m6 l3">
                    <div class="card medium hoverable movie_card">
                        <div class="card-image waves-effect waves-block waves-light">
                            <img class="activator" src="posters/2.jpg">
                        </div>
                        <div class="card-content">
                            <span class="card-title activator grey-text text-darken-4">Movie Name<i class="material-icons right">more_vert</i></span>
                        </div>
                        <div class="card-reveal">
                            <span class="card-title grey-text text-darken-4">Movie Name<i class="material-icons right">close</i></span>
                            <p>Movie Summary</p>
                            <div class="card-action">
                                <a class="waves-effect waves-light btn-large red"><i class="material-icons right">book</i>Read
                                    More</a>
                            </div>
                        </div>
                        <div class="card-action">
                            <a class="waves-effect waves-light btn-large red"><i class="material-icons right">local_movies</i>Book
                                now</a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="divider"></div>
            <div class="row">
                <h5>Featured</h5>
                <div class="col s12 m6 l3">
                    <div class="card medium hoverable movie_card">
                        <div class="card-image waves-effect waves-block waves-light">
                            <img class="activator" src="posters/2.jpg">
                        </div>
                        <div class="card-content">
                            <span class="card-title activator grey-text text-darken-4">Movie Name<i class="material-icons right">more_vert</i></span>
                        </div>
                        <div class="card-reveal">
                            <span class="card-title grey-text text-darken-4">Movie Name<i class="material-icons right">close</i></span>
                            <p>Movie Summary</p>
                            <div class="card-action">
                                <a class="waves-effect waves-light btn-large red"><i class="material-icons right">book</i>Read
                                    More</a>
                            </div>
                        </div>
                        <div class="card-action">
                            <a class="waves-effect waves-light btn-large red"><i class="material-icons right">local_movies</i>Book
                                now</a>
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