<?php
    session_start(); 
?>
<?php
    if(!isset($_SESSION['user_details'])){
        $_SESSION['user_details'] = ['logged_in'=>false];
    }
?>
<?php
global $result;
require_once 'config.php';
if ($_SESSION['user_details']['logged_in'] == false) {
    header("Location: login.php");
    die();
} else {
    $query = "update seats set uname = NULL where uname = '".$_SESSION['user_details']['username']."' and seat_num = '".$_GET['seat_num']."' and sid = ".$_GET['sid'];
    $result = mysqli_query($con, $query);
    header("Location: profile.php");
    die();
}
?>
