<?php
    session_start(); 
?>
<?php
    if(!isset($_SESSION['user_details'])){
        $_SESSION['user_details'] = ['logged_in'=>false];
    }
    $user_details = $_SESSION['user_details'];
?>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8" />
    <?php include('common_heads.php'); ?>
    <title>Namma Movies | About</title>
</head>

<body>
    <?php include('page_header.php'); ?>
    <main>
        
    </main>
    <?php include('page_footer.php'); ?>
</body>
<?php include('common_scripts.php'); ?>
</html>