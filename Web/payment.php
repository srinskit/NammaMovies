<?php
session_start();
?>
<?php
if (!isset($_SESSION['user_details'])) {
    $_SESSION['user_details'] = ['logged_in' => false];
}
$user_details = $_SESSION['user_details'];
?>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8" />
    <?php include 'common_heads.php';?>
    <title>Namma Movies | Pay</title>
</head>

<body>
    <?php include 'page_header.php';?>
    <main>
    <div class="container">
        <div class="row">
        <div class="section"></div>
        <div class="section"></div>
        <div class="section"></div>
        <div class="section"></div>
        <div class="card hoverable col s12 m6 l4 offset-m3 offset-l4 center-align">
            <div class="card-content">
            <div class="row">
                <div class="col s12">
                <ul class="tabs">
                    <li class="tab col s6"><a class="active" href="#card">Pay with card</a></li>
                    <li class="tab col s6"><a href="#visit">Pay on visit</a></li>
                </ul>
                </div>
                <div id="card" class="col s12">
                    <div class="row">
                        <form class="col s12">
                        <div class="row">
                            <div class="section"></div>
                            <div class="input-field col s12">
                            <i class="material-icons prefix">credit_card</i>
                            <input id="icon_prefix" type="text" class="validate">
                            <label for="icon_prefix">Card number</label>
                            </div>
                            <div class="input-field col s12">
                            <i class="material-icons prefix">calender_today</i>
                            <input id="icon_exp" type="text" class="validate">
                            <label for="icon_exp">MM-YYYY</label>
                            </div>
                            <div class="input-field col s12">
                            <i class="material-icons prefix">vpn_key</i>
                            <input id="icon_cvv" type="text" class="validate">
                            <label for="icon_cvv">CVV</label>
                            </div>
                            <div class="input-field col s12">
                            <i class="material-icons prefix">account_circle</i>
                            <input id="icon_name" type="text" class="validate">
                            <label for="icon_name">Name on card</label>
                            </div>
                            <div class="input-field col s12">
                            <i class="material-icons prefix">monetization_on</i>
                            <input disabled="true" id="icon_price" type="text" class="validate" value="<?php echo '₹ '.$_POST['price']; ?>">
                            <label for="icon_price">Price</label>
                            </div>
                        </div>
                        </form>
                    </div>
                </div>
                <div id="visit" class="col s12">
                    <div class="row">
                        <h4>Now pay <?php  echo '₹ '.$_POST['price']; ?> on visit at the theatre!</h4>
                        <h4>Offer available only here!</h4>
                    </div>
                </div>
            </div>            
            </div>
            <div class="card-action">
                <a name="command" href="profile.php" class="waves-effect waves-light btn-large  blue darken-2"><i class="material-icons right"></i>Pay</a>
            </div>
        </div>
        </div>
    </div>
    </main>
    <?php include 'page_footer.php';?>
</body>
<script>
$(document).ready(function(){
    $('.tabs').tabs();
});
</script>
<?php include 'common_scripts.php';?>
</html>
