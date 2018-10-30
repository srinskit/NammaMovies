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
</head>

<body>
    <?php include('page_header.php'); ?>
    <main>
    <div class="section"></div> 
    <div class="section"></div> 
        <div class="contaniner">
            <div class="row">
                <div class="card hoverable col s12 m6 l4 offset-m3 offset-l4 center-align">
                    <div class="card-content">
                        <h4>Account</h4>
                        <div class="section"></div> 
                        <div class="row">
                            <form>
                                <div class="input-field">
                                    <input id="email" type="text" class="validate"><label for="email">Email</label>
                                </div>
                        </div>
                        <div class="row">
                            <div class="input-field">
                                <input id="password" type="password" class="validate"><label for="password">Password</label>
                            </div>
                        </div>
                        </form>
                    </div>
                    <div class="card-action">
                        <a class="waves-effect waves-light btn-large  blue darken-2"><i class="material-icons right"></i>Sign up</a>
                        <a class="waves-effect waves-light btn-large  blue darken-2"><i class="material-icons right"></i>Login</a>
                    </div>
                </div>
            </div>
        </div>
    </main>
    <?php include('page_footer.php'); ?>
</body>
<?php include('common_scripts.php'); ?>

</html>