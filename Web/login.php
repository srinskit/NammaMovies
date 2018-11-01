<?php
session_start();
?>
<?php
if (!isset($_SESSION['user_details'])) {
    $_SESSION['user_details'] = ['logged_in' => false];
}
?>
<?php
require_once 'config.php';
$red_msg = null;
$green_msg = null;
function signup($username, $password, $level)
{
    global $con, $red_msg, $green_msg;
    $uname = mysqli_real_escape_string($con, $username);
    $pwd = mysqli_real_escape_string($con, $password);
    $level = mysqli_real_escape_string($con, $level);
    $query = "insert into users values('$uname', '$pwd', $level)";
    $result = mysqli_query($con, $query);
    if (!$result) {
        $red_msg = 'Fill all fields or choose a different username';
    } else {
        $green_msg = 'Signup success';
    }
}
function login($username, $password)
{
    global $con, $red_msg, $green_msg;
    $uname = mysqli_real_escape_string($con, $username);
    $pwd = mysqli_real_escape_string($con, $password);
    $query = "select * from users where uname = '$uname' and pwd = '$pwd'";
    $result = mysqli_query($con, $query);
    if (mysqli_num_rows($result) === 0) {
        $red_msg = 'Login failed';
    } else {
        $_SESSION['user_details']['logged_in'] = true;
        $_SESSION['user_details']['username'] = $uname;
        header("Location: home.php");
        die();
    }
}

?>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8" />
    <?php include 'common_heads.php';?>
</head>

<body>
    <?php
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    if (isset($_POST['username']) && isset($_POST['password']) && isset($_POST['command'])) {
        switch ($_POST['command']) {
            case 'login':
                login($_POST['username'], $_POST['password']);
                break;
            case 'signup':
                $result = signup($_POST['username'], $_POST['password'], 0);
                break;
            default:
                break;
        }
    }
}
?>
    <?php include 'page_header.php';?>
    <main>
    <div class="section"></div>
    <div class="section"></div>
        <div class="contaniner">
            <div class="row">
                <div class="card hoverable col s12 m6 l4 offset-m3 offset-l4 center-align">
                    <form method="POST" action="login.php">
                        <div class="card-content">
                            <h4>Account</h4>
                            <div class="section"></div>
                            <div class="row">
                                <div class="input-field">
                                    <input name="username" id="username" type="text" class="validate"><label for="username">Username</label>
                                </div>
                            </div>
                            <div class="row">
                                <div class="input-field">
                                    <input name="password" id="password" type="password" class="validate"><label for="password">Password</label>
                                </div>
                            </div>
                            <?php if ($green_msg != null): ?>
                                <h6 class="green-text"><?php echo ($green_msg) ?></h6>
                            <?php endif;?>
                            <?php if ($red_msg != null): ?>
                                <h6 class="red-text"><?php echo ($red_msg) ?></h6>
                            <?php endif;?>
                        </div>
                        <div class="card-action">
                            <button name="command" value="signup" class="waves-effect waves-light btn-large  blue darken-2"><i class="material-icons right"></i>Sign up</button>
                            <button name="command" value="login" class="waves-effect waves-light btn-large  blue darken-2"><i class="material-icons right"></i>Login</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </main>
    <?php include 'page_footer.php';?>
</body>
<?php include 'common_scripts.php';?>

</html>