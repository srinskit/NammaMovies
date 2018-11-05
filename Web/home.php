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
$query = "select mname, mid from movie";
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
        /* html {background-color: #454545} */
    </style>

    <title>Namma Movies | Home</title>
</head>

<body>
    <?php include 'page_header.php';?>
    <main>
        <div class="container">
            <div class="section"></div>
            <div class="row">
                <div class="col s12">
                    <div class="row">
                        <div class="input-field col s12">
                        <i class="material-icons prefix">search</i>
                        <input type="text" id="autocomplete-input" class="autocomplete">
                        <label for="autocomplete-input">Find a movie!</label>
                        </div>
                    </div>
                </div>
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
                            <img class="activator" src="posters/<?php echo ($movie['mid'] . '.jpg'); ?>">
                        </div>
                        <div class="card-content">
                            <span class="card-title activator grey-text text-darken-4"><?php echo ($movie['mname']); ?><i class="material-icons right">more_vert</i></span>
                        </div>
                        <div class="card-reveal">
                            <span class="card-title grey-text text-darken-4"><?php echo ($movie['mname']); ?><i class="material-icons right">close</i></span>
                            <p><?php echo ($movie['summary']); ?></p>
                            <div class="card-action">
                                <a href="<?php echo ("movie.php?mid=" . $movie['mid']); ?>" class="waves-effect waves-light btn-large blue darken-2"><i class="material-icons right">book</i>Read
                                    More</a>
                            </div>
                        </div>
                        <div class="card-action">
                            <a href="<?php echo ("movie.php?mid=" . $movie['mid']); ?>" class="waves-effect waves-light btn-large red"><i class="material-icons right">local_movies</i>Book
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
                            <img class="activator" src="posters/<?php echo ($movie['mid'] . '.jpg'); ?>">
                        </div>
                        <div class="card-content">
                            <span class="card-title activator grey-text text-darken-4"><?php echo ($movie['mname']); ?><i class="material-icons right">more_vert</i></span>
                        </div>
                        <div class="card-reveal">
                            <span class="card-title grey-text text-darken-4"><?php echo ($movie['mname']); ?><i class="material-icons right">close</i></span>
                            <p><?php echo ($movie['summary']); ?></p>
                            <div class="card-action">
                                <a href="<?php echo ("movie.php?mid=" . $movie['mid']); ?>" class="waves-effect waves-light btn-large blue darken-2"><i class="material-icons right">book</i>Read
                                    More</a>
                            </div>
                        </div>
                        <div class="card-action">
                            <a href="<?php echo ("movie.php?mid=" . $movie['mid']); ?>" class="waves-effect waves-light btn-large red"><i class="material-icons right">local_movies</i>Book
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
<script>
   var data = {}, name_id = {};
   <?php foreach ($all_movies as $row): ?>
   data["<?php echo $row['mname'] ?>"] ="<?php echo 'posters/' . $row['mid'] ?>.jpg";
   name_id["<?php echo $row['mname'] ?>"] = <?php echo $row['mid'] ?>;
   <?php endforeach;?>
   console.log(data);
    $(document).ready(function(){
        $('input.autocomplete').autocomplete({
            data: data,
            onAutocomplete: function(movie_name){
                window.location = `movie.php?mid=${name_id[movie_name]}`;
            }
        });
    });
</script>
<?php include 'common_scripts.php';?>
</html>