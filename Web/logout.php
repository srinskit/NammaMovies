<?php
    session_start(); 
?>
<?php
    if(!isset($_SESSION['user_details'])){
        $_SESSION['user_details'] = ['logged_in'=>false];
    }
    $_SESSION['user_details']['logged_in'] = false;
    unset($_SESSION['user_details']['username']);
    header("Location: login.php");
    die();
?>