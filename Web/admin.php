<?php
session_start();
?>
<?php
if (!isset($_SESSION['user_details'])) {
    $_SESSION['user_details'] = ['logged_in' => false];
}
if ($_SESSION['user_details']['logged_in'] == false || $_SESSION['user_details']['level'] > 0) {
    header("Location: login.php");
    die();
}

require_once 'config.php';
$red_msg = null;
$green_msg = null;
function promote($username)
{
    global $con, $red_msg, $green_msg;
    $uname = mysqli_real_escape_string($con, $username);
    $query = "update users set level = 0 where uname = '$uname'";
    $result = mysqli_query($con, $query);
    if (mysqli_affected_rows($con) == 0) {
        $red_msg = 'Failed';
    } else {
        $green_msg = 'Success!';
    }
}

function check_tnr($tnr)
{
    global $con, $red_msg, $green_msg;
    $tmp = substr($tnr, 2);
    $tmp = explode('-', $tmp);
    $sid = $tmp[0];
    $seat_num = $tmp[1];
    $query = "select uname from seats where seat_num = '$seat_num' and sid = $sid";
    $result = mysqli_query($con, $query);
    if (mysqli_num_rows($result) == 0) {
        $red_msg = 'No such ticket';
    } else {
        $ticket = mysqli_fetch_assoc($result);
        if(is_null($ticket['uname'])){
            $red_msg = 'Ticket not booked';
        }
        else{
            $green_msg = 'Good to go!';
        }
    }
}

function add_movie($name, $trailer, $poster){
    include('imdb_scrapper.php');
    global $con, $red_msg, $green_msg;
    $obj = new Imdb();
    $result = $obj->getMovieInfo($name);
    if(isset($result['error'])){
        $red_msg = $result['error'];
    }
    else{
        $poster1 = $result['poster'];
        $query = "insert into movie (mname, summary, a1, a2, poster, trailer, certificate, language, genre, releasedate, runningtime, rating) values(\"".$result['title']."\",\"".$result['plot']."\",1,2,\"$poster\",\"$trailer\",\"UA\",\"".$result['language'][0]."\",\"".$result['genres'][0]."\",\"".$result['release_date']."\",\"".$result['runtime']."\",".$result['rating'].")";
        $result = mysqli_query($con, $query);
        if (mysqli_affected_rows($con) == 0) {
            $red_msg = 'Invalid movie or movie already exists';
        } else {
            $query = "select mid from movie where mname = \"$name\"";
            $result = mysqli_query($con, $query);
            $r = mysqli_fetch_assoc($result);
            $mid = $r['mid'];
            file_put_contents("./posters/$mid.jpg", fopen($poster1, 'r'));
            $green_msg = 'Added movie!';
        }
    }
}

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    if (isset($_POST['command'])) {
        switch ($_POST['command']) {
            case 'promote':
                promote($_POST['username']);
                break;
            case 'check_tnr':
                check_tnr($_POST['tnr']);
                break;
            case 'add_movie':
                add_movie($_POST['movie_name'],$_POST['trailer'],$_POST['poster']);
                break;
            default:
                break;
        }
    }
}
?>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <?php include 'common_heads.php';?>
    <title>Namma Movies | About</title>
</head>

<body>
    <?php include 'page_header.php';?>
    <main>
        <div class="container">
        <div class="section"></div>
            <div class="row">
                <div class="col s12">
                <div class="card">
                    <div class="card-content">
                    <span class="card-title">Check ticket</span>
                    <p>Check ticket by ticket ID.</p>
                    <form method="POST" action="admin.php">
                    <div class="row">
                        <div class="input-field col s12">
                        <input pattern = "NM[0-9]+-[A-Z][0-9]+" required id="tnr" name="tnr" type="text" class="validate">
                        <label for="tnr">Ticket ID</label>
                        </div>
                    </div>
                    <?php if ($green_msg != null && $_POST['command'] == 'check_tnr'): ?>
                        <p class="green-text"><?php echo ($green_msg) ?></p>
                        <div class="section"></div>
                    <?php endif;?>
                    <?php if ($red_msg != null && $_POST['command'] == 'check_tnr'): ?>
                        <p class="red-text"><?php echo ($red_msg) ?></p>
                    <div class="section"></div>
                    <?php endif;?>
                    <button name="command" value="check_tnr" class="waves-effect waves-light btn-large green"><i class="material-icons right"></i>Check</button>
                    </form>
                </div>
                </div>
            </div>
            <div class="section"></div>
            <div class="row">
                <div class="col s12">
                <div class="card">
                    <div class="card-content">
                    <span class="card-title">Add movie</span>
                    <p>Search and add movie</p>
                    <form method="POST" action="admin.php">
                    <div class="row">
                        <div class="input-field col s12">
                        <input required id="movie_name" name="movie_name" type="text" class="validate">
                        <label for="movie_name">Movie name</label>
                        </div>
                    </div>
                    <div class="row">
                        <div class="input-field col s12">
                        <input required id="trailer" name="trailer" type="text" class="validate">
                        <label for="trailer">Trailer URL</label>
                        </div>
                    </div>
                    <div class="row">
                        <div class="input-field col s12">
                        <input required id="poster" name="poster" type="text" class="validate">
                        <label for="poster">Long poster URL</label>
                        </div>
                    </div>
                    <?php if ($green_msg != null && $_POST['command'] == 'add_movie'): ?>
                        <p class="green-text"><?php echo ($green_msg) ?></p>
                        <div class="section"></div>
                    <?php endif;?>
                    <?php if ($red_msg != null && $_POST['command'] == 'add_movie'): ?>
                        <p class="red-text"><?php echo ($red_msg) ?></p>
                    <div class="section"></div>
                    <?php endif;?>
                    <button name="command" value="add_movie" class="waves-effect waves-light btn-large green"><i class="material-icons right"></i>Search and add</button>
                    </form>
                </div>
                </div>
            </div>
            <div class="section"></div>
            <div class="row">
                <div class="col s12">
                <div class="card">
                    <div class="card-content">
                    <span class="card-title">Promote user</span>
                    <p>Promote user to admin level by username.</p>
                    <form method="POST" action="admin.php">
                    <div class="row">
                        <div class="input-field col s12">
                        <input required id="username" name="username" type="text" class="validate">
                        <label for="username">Username</label>
                        </div>
                    </div>
                    <?php if ($green_msg != null && $_POST['command'] == 'promote'): ?>
                        <p class="green-text"><?php echo ($green_msg) ?></p>
                        <div class="section"></div>
                    <?php endif;?>
                    <?php if ($red_msg != null && $_POST['command'] == 'promote'): ?>
                        <p class="red-text"><?php echo ($red_msg) ?></p>
                    <div class="section"></div>
                    <?php endif;?>
                    <button name="command" value="promote" class="waves-effect waves-light btn-large green"><i class="material-icons right"></i>Promote</button>
                    </form>
                </div>
                </div>
            </div>
            
        </div>
    </main>
    <?php include 'page_footer.php';?>
</body>
<?php include 'common_scripts.php';?>
</html>