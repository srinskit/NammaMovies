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
function signup($username, $password, $level, $email, $phone)
{
    global $con, $red_msg, $green_msg;
    $uname = mysqli_real_escape_string($con, $username);
    $pwd = mysqli_real_escape_string($con, $password);
    $level = mysqli_real_escape_string($con, $level);
    $email = mysqli_real_escape_string($con, $email);
    $phone = mysqli_real_escape_string($con, $phone);
    
    $query = "select * from users where uname = '$uname'";
    $result = mysqli_query($con, $query);
    if (mysqli_num_rows($result) !== 0) {
        $red_msg = 'Username taken!';
    } else {
        $query = "select * from users where email = '$email'";
        $result = mysqli_query($con, $query);
        if (mysqli_num_rows($result) !== 0) {
            $red_msg = 'Email already registered!';
        } else {
            $query = "select * from users where phone = $phone";
            $result = mysqli_query($con, $query);
            if (mysqli_num_rows($result) !== 0) {
                $red_msg = 'Phone already registered!';
            } else {
                $query = "insert into users values('$uname', '$pwd', $level, '$email', $phone)";
                $result = mysqli_query($con, $query);
                if (!$result) {
                    $red_msg = 'Fill all fields!';
                } else {
                    $green_msg = 'Signup success. Now login!';
                }
            }
        }
    }
}
?>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8" />
    <?php include 'common_heads.php';?>
    <title>Namma Movies | Signup</title>
</head>

<body>
    <?php
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    if (isset($_POST['username']) && isset($_POST['password']) && isset($_POST['command'])) {
        switch ($_POST['command']) {
            case 'signup':
                $result = signup($_POST['username'], $_POST['password'], 1, $_POST['email'], $_POST['phone']);
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
                    <form method="POST" action="signup.php">
                        <div class="card-content">
                            <h4>Signup</h4>
                            <div class="section"></div>
                            <div class="row">
                                <div class="input-field">
                                    <i class="material-icons prefix">account_circle</i>
                                    <input required name="username" id="username" type="text" class="validate"><label for="username">Username</label>
                                </div>
                            </div>
                            <div class="row">
                                <div class="input-field">
                                    <i class="material-icons prefix">email</i>
                                    <input required name="email" id="email" type="email" class="validate"><label for="email">Email</label>
                                </div>
                            </div>
                            <div class="row">
                                <div class="input-field">
                                    <i class="material-icons prefix">lock</i>
                                    <input required name="password" id="password" type="password" class="validate"><label for="password">Password</label>
                                </div>
                            </div>
                            <div class="row">
                                <div class="input-field">
                                    <i class="material-icons prefix">phone</i>
                                    <input required name="phone" id="phone" type="tel" class="validate" pattern='\d{10}' title='Phone Number (Format: 9876543210)'><label for="phone">Phone</label>
                                </div>
                            </div>
                            <?php if ($green_msg != null): ?>
                                <h6 class="green-text"><?php echo ($green_msg) ?></h6>
                            <?php endif;?>
                            <?php if ($red_msg != null): ?>
                                <h6 class="red-text"><?php echo ($red_msg) ?></h6>
                            <?php endif;?>
                        </div>    
                        <?php if ($green_msg == null): ?>
                        <div class="card-action">
                            <button name="command" value="signup" class="waves-effect waves-light btn-large  blue darken-2"><i class="material-icons right"></i>Sign up</button>
                        </div>
                        <?php endif;?>
                    </form>
                    <?php if ($green_msg != null): ?>
                    <div class="card-action">
                        <button onclick="handleLogin();" class="waves-effect waves-light btn-large  blue darken-2"><i class="material-icons right"></i>Login</button>                            
                    </div>
                    <?php endif;?>
                </div>
            </div>
        </div>
        <form style="display:none" id="username_autofill_form" action="login.php" method="post">
        <input name="username_autofill" id="username_autofill"> 
        </form>
    </main>
    <?php include 'page_footer.php';?>
</body>
<script>
var handleLogin = function(){
    $('#username_autofill').val("<?php echo $_POST['username']; ?>");
    $('#username_autofill_form').submit();
};
</script>
<?php include 'common_scripts.php';?>

</html>