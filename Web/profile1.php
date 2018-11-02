<?php
session_start();
?>
<?php
if (!isset($_SESSION['user_details'])) {
    $_SESSION['user_details'] = ['logged_in' => false];
}
?>
<?php
global $result;
require_once 'config.php';
if ($_SESSION['user_details']['logged_in'] == false) {
    header("Location: login.php");
    die();
} else {
    $query = "select m.mid as xmid, mname, seat_num, tname, address, time from seats st, shows s, movie m, theatre t where st.sid = s.sid and s.mid = m.mid and t.tid = s.tid and uname='".$_SESSION['user_details']['username']."'";
    $result = mysqli_query($con, $query);
}
?>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <?php include 'common_heads.php';?>

	<title>
		Namma Movies
	</title>


    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" ></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
	<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css">
    <!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
    <!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/Linearicons-Free-v1.0.0/icon-font.min.css">
    <!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
    <!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/css-hamburgers/hamburgers.min.css">
    <!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animsition/css/animsition.min.css">
    <!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css">
    <!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/daterangepicker/daterangepicker.css">
    <!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="css/util.css">
	<link rel="stylesheet" type="text/css" href="css/main.css">
    <!--===============================================================================================-->
    <style>
        .container {
            position: relative;
            text-align: center;
            color: white;
        }

        .bottom-left {
            position: absolute;
            bottom: 8px;
            left: 16px;
        }

        .top-left {
            position: absolute;
            top: 8px;
            left: 16px;
        }

        .top-right {
            position: absolute;
            top: 8px;
            right: 16px;
        }

        .bottom-right {
            position: absolute;
            bottom: 8px;
            right: 16px;
        }

        .centered {
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
        }
        .jumbotron
        {
            background:url("images/p1.jpg");
            background-size: cover;
        }
        #gg{
            display: block;
            float: right;
            margin-right: 20px;
        }
        #Deactivate
        {
            display: block;
            float: right;
            margin-right: 20px;
        }
        .p
        {
            font-size: 40px;
        }
        #profimg
        {
            height: auto;
            width: auto;
            max-width: 200px;
            max-height: 200px;

        }

        .info
        {
            display: block;
            float:right;
            margin-right: auto;
        }
        #tickets
        {
            margin: 40px;
        }

        .header {
            color: #36A0FF;
            font-size: 27px;
            padding: 10px;
        }

        .bigicon {
            font-size: 35px;
            color: #36A0FF;
        }

    </style>

</head>
<body>
<main>
<?php include 'page_header.php';?>
    <div class="jumbotron">
        <p class="p">Profile</p>
        <div class="info">
            <h1 class="display-4">
                <?php echo ($_SESSION['user_details']['username']); ?>
            </h1>
        </div>
    </div>
    <ul class="nav nav-tabs" id="myTab" role="tablist">
        <li class="nav-item">
            <a class="nav-link active" id="home-tab" data-toggle="tab" href="#home" role="tab" aria-controls="home" aria-selected="true">Recent Bookings</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" id="contact-tab" data-toggle="tab" href="#contact" role="tab" aria-controls="contact" aria-selected="false">Help Desk</a>
        </li>
    </ul>
    <div class="tab-content" id="myTabContent">
        <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">
            <div class="row">
                <?php while ($movie = mysqli_fetch_array($result)): ?>
                    <div class="col s12 m4 l4">
                        <div class="card" id="tickets" style="width: 18rem;">
                            <img class="card-img-top" src="<?php echo('posters/'.$movie['xmid'].'.jpg'); ?>" alt="Card image cap">
                            <div class="card-body">
                                <h5 class="card-title"><?php echo($movie['mname']); ?></h5>
                                <p class="card-text"><?php echo((date("F jS, Y", strtotime($movie['time'])))); ?></p>
                            </div>
                            <ul class="list-group list-group-flush">
                                <li class="list-group-item">Seat num: <?php echo($movie['seat_num']); ?></li>
                                <li class="list-group-item"><?php echo($movie['tname'].', '.$movie['address']); ?></li>
                            </ul>
                        </div>
                    </div>
                <?php endwhile;?>
            </div>
        </div>
        <div class="tab-pane fade" id="contact" role="tabpanel" aria-labelledby="contact-tab">
            <div class="container-contact100">
                <div class="wrap-contact100">
                    <form class="contact100-form validate-form">
                        <span class="contact100-form-title">
                            Send Us A Message
                        </span>

                        <label class="label-input100" for="first-name">Tell us your name *</label>
                        <div class="wrap-input100 rs1-wrap-input100 validate-input" data-validate="Type first name">
                            <input id="first-name" class="input100" type="text" name="first-name" placeholder="First name">
                            <span class="focus-input100"></span>
                        </div>
                        <div class="wrap-input100 rs2-wrap-input100 validate-input" data-validate="Type last name">
                            <input class="input100" type="text" name="last-name" placeholder="Last name">
                            <span class="focus-input100"></span>
                        </div>

                        <label class="label-input100" for="email">Enter your email *</label>
                        <div class="wrap-input100 validate-input" data-validate = "Valid email is required: ex@abc.xyz">
                            <input id="email" class="input100" type="text" name="email" placeholder="Eg. example@email.com">
                            <span class="focus-input100"></span>
                        </div>

                        <label class="label-input100" for="phone">Enter phone number</label>
                        <div class="wrap-input100">
                            <input id="phone" class="input100" type="text" name="phone" placeholder="Eg. +917019258472">
                            <span class="focus-input100"></span>
                        </div>

                        <label class="label-input100" for="message">Message *</label>
                        <div class="wrap-input100 validate-input" data-validate = "Message is required">
                            <textarea id="message" class="input100" name="message" placeholder="Write us a message"></textarea>
                            <span class="focus-input100"></span>
                        </div>

                        <div class="container-contact100-form-btn">
                            <button class="contact100-form-btn">
                                Send Message
                            </button>
                        </div>
                    </form>

                    <div class="contact100-more flex-col-c-m" style="background-image: url('images/bg-01.jpg');">
                        <div class="flex-w size1 p-b-47">
                            <div class="txt1 p-r-25">
                                <span class="lnr lnr-map-marker"></span>
                            </div>

                            <div class="flex-col size2">
                                <span class="txt1 p-b-20">
                                    Address
                                </span>

                                <span class="txt2">
                                    D107,Mega Tower 2 ,National Institue of Technology,Karnataka,Suratkal
                                </span>
                            </div>
                        </div>

                        <div class="dis-flex size1 p-b-47">
                            <div class="txt1 p-r-25">
                                <span class="lnr lnr-phone-handset"></span>
                            </div>

                            <div class="flex-col size2">
                                <span class="txt1 p-b-20">
                                    Lets Talk
                                </span>

                                <span class="txt3">
                                    +91 7338432807
                                </span>
                            </div>
                        </div>

                        <div class="dis-flex size1 p-b-47">
                            <div class="txt1 p-r-25">
                                <span class="lnr lnr-envelope"></span>
                            </div>

                            <div class="flex-col size2">
                                <span class="txt1 p-b-20">
                                    General Support
                                </span>

                                <span class="txt3">
                                    helpdesk@nammamovies.com
                                </span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>


        </div>
    </div>
    </main>
    <?php include 'page_footer.php';?>
</body>

<!--===============================================================================================-->
<script src="vendor/jquery/jquery-3.2.1.min.js"></script>
    <!--===============================================================================================-->
	<script src="vendor/animsition/js/animsition.min.js"></script>
    <!--===============================================================================================-->
	<script src="vendor/bootstrap/js/popper.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
    <!--===============================================================================================-->
	<script src="vendor/select2/select2.min.js"></script>
	<script>
		$(".selection-2").select2({
			minimumResultsForSearch: 20,
			dropdownParent: $('#dropDownSelect1')
		});
	</script>
    <!--===============================================================================================-->
	<script src="vendor/daterangepicker/moment.min.js"></script>
	<script src="vendor/daterangepicker/daterangepicker.js"></script>
    <!--===============================================================================================-->
	<script src="vendor/countdowntime/countdowntime.js"></script>
    <!--===============================================================================================-->
	<script src="js/main.js"></script>
	<!-- Global site tag (gtag.js) - Google Analytics -->
	<script async src="https://www.googletagmanager.com/gtag/js?id=UA-23581568-13"></script>
	<script>
        window.dataLayer = window.dataLayer || [];
        function gtag(){dataLayer.push(arguments);}
        gtag('js', new Date());

        gtag('config', 'UA-23581568-13');
	</script>
<script>
    $('#myTab a').on('click', function (e) {
        e.preventDefault()
        $(this).tab('show')
    })

    $(document).ready(function() {


        var readURL = function(input) {
            if (input.files && input.files[0]) {
                var reader = new FileReader();

                reader.onload = function (e) {
                    $('.avatar').attr('src', e.target.result);
                }

                reader.readAsDataURL(input.files[0]);
            }
        }


        $(".file-upload").on('change', function(){
            readURL(this);
        });
    });

</script>
<?php include 'common_scripts.php';?>

</html>


<!-- https://bootsnipp.com/snippets/P24Rx -->
<!-- https://www.w3schools.com/howto/howto_css_team.asp -->