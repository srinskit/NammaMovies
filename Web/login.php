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
function login($username, $password)
{
    global $con, $red_msg, $green_msg;
    $uname = mysqli_real_escape_string($con, $username);
    $pwd = mysqli_real_escape_string($con, $password);
    $query = "select level from users where uname = '$uname' and pwd = '$pwd'";
    $result = mysqli_query($con, $query);
    if (mysqli_num_rows($result) === 0) {
        $red_msg = 'Login failed';
    } else {
        $_SESSION['user_details']['logged_in'] = true;
        $_SESSION['user_details']['username'] = $uname;
        $user = mysqli_fetch_assoc($result);
        $_SESSION['user_details']['level'] = $user['level'];
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
    <title>Namma Movies | Login</title>
</head>

<body>
    <?php
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    if (isset($_POST['username_autofill'])) {
        
    }
    else if (isset($_POST['username']) && isset($_POST['password']) && isset($_POST['command'])) {
        switch ($_POST['command']) {
            case 'login':
                login($_POST['username'], $_POST['password']);
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
                                    <input value="<?php if (isset($_POST['username_autofill'])) echo $_POST['username_autofill']; else echo ''; ?>" required name="username" id="username" type="text" class="validate" <?php if (isset($_POST['username_autofill'])) echo ''; else echo 'autofocus'; ?> ><label for="username">Username</label>
                                </div>
                            </div>
                            <div class="row">
                                <div class="input-field">
                                    <input <?php if (isset($_POST['username_autofill'])) echo 'autofocus'; else echo ''; ?> required name="password" id="password" type="password" class="validate"><label for="password">Password</label>
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
                            <a href="signup.php" class="waves-effect waves-light btn-large  blue darken-2"><i class="material-icons right"></i>Sign up</a>
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