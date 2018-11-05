<?php
session_start();
?>
<?php
if (!isset($_SESSION['user_details'])) {
    $_SESSION['user_details'] = ['logged_in' => false];
}
if ($_SESSION['user_details']['logged_in'] == false) {
    header("Location: login.php");
    die();
}
$_SESSION['sid'] = $_GET['sid'];
?>

<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8" />
    <?php include 'common_heads.php';?>
    <title>Namma Movies | Seats</title>
    <style>
        .outer-seat{
        width: 50px;
            height: 50px;
        border-radius: 5px;
        border: 3px solid #D8D8D8 ;
            background: white;
        position: relative;
        margin: 4px;
        }
        
        .inner-seat{
        width: 30px;
            height: 30px;
        border-radius: 1px;
        top: 50%;
        left: 50%;
        margin: -15px 0px 0px -15px;
            background: #D8D8D8 ;
        position: absolute;
        }

        .outer-seat1{
        width: 50px;
            height: 50px;
        border-radius: 5px;
        border: 3px solid #D8D8D8 ;
            background: white;
        position: relative;
        margin: 4px;
        }
        
        .inner-seat1{
        width: 30px;
            height: 30px;
        border-radius: 1px;
        top: 50%;
        left: 50%;
        margin: -15px 0px 0px -15px;
            background: #D8D8D8 ;
        position: absolute;
        }

        #div-inline{float: left; }

        .outer-seat:hover{
        border-color: #3366CC;
        }

        #div-inline:hover .inner-seat{
        background: #3366CC;
        }

        .clearBoth { clear:both; }

        .selected-innerColor {
        background-color: #3366CC;
        }

        .selected-outerColor {
        border-color: #3366CC;
        }

        .outer-seat-booked{
        width: 50px;
        height: 50px;
        border-radius: 5px;
        border: 3px solid #D8D8D8 ;
        background: white;
        position: relative;
        margin: 4px;
        }
        .inner-seat-booked{
        width: 30px;
        height: 30px;
        border-radius: 1px;
        top: 50%;
        left: 50%;
        margin: -15px 0px 0px -15px;
        background: #FF0000 ;
        position: absolute;
        }
        .class_num1{
        background-color: #000000;
        }
        .class_num2{
        background-color: #cd7f32;
        }
        .class_num3{
        background-color: silver;
        }
        .class_num4{
        background-color: gold;
        }
    </style>
    <script>
        $(document).ready(function () {
        var a = new Array();
        var total=0;
        $(".outer-seat").on("click", function () {
            $(this).toggleClass('selected-outerColor');
            $(this).children().toggleClass('selected-innerColor');
            if ($(this).hasClass('selected-outerColor'))
             {   a.push($(this).attr('name'));
                if($(this).hasClass('class_num1'))
                {
                    total+=prices['1'];
                }
                else if($(this).hasClass('class_num2'))
                {
                    total+=prices['2'];
                }
                else if($(this).hasClass('class_num3'))
                {
                    total+=prices['3'];
                }
                else if($(this).hasClass('class_num4'))
                {
                    total+=prices['4'];
                }
                if(total)
                $('#sub').html("<i class='material-icons right'>event_seat</i>Book now for ₹ "+total.toString());
                else
                $('#sub').html("<i class='material-icons right'>event_seat</i>Book now");
             }
            else {
                var i = a.indexOf($(this));
                a.splice(i-1, 1);
                if($(this).hasClass('class_num1'))
                {
                    total-=prices['1'];
                }
                else if($(this).hasClass('class_num2'))
                {
                    total-=prices['2'];
                }
                else if($(this).hasClass('class_num3'))
                {
                    total-=prices['3'];
                }
                else if($(this).hasClass('class_num4'))
                {
                    total-=prices['4'];
                }
                if(total)
                $('#sub').html("<i class='material-icons right'>event_seat</i>Book now for ₹ "+total.toString());
                else
                $('#sub').html("<i class='material-icons right'>event_seat</i>Book now");
            }
            console.log(a);
        });
        $("#sub").click(function () {
            var j = JSON.stringify(a);
            console.log("Loaded");
            $.ajax({
                url: "SeatUpdate.php",
                type: "POST",

                data: {
                    arr: j
                },
                success: function (result) {
                    alert('Booked seats '+j);
                    $('#price').val(total);
                    $('#pay').submit();
                }
            });
        });

        // $(".inner-seat").click( function() {
        // 	console.log("Hi");
        //     $(this).toggleClass('selected-innerColor');
        // });

    });
    </script>
</head>
<body>
    <?php include 'page_header.php';?>
    <main>
        <div class="container">
            <div class="row">
            <div class="section"></div>
            <div class="row red center" style="font-size:20px">Screen</div>
            
                <div class="col s12 m6 l6 offset-l3 offset-m3">
                    <div class="section"></div>
<?php
require_once 'config.php';
$query = "SELECT seat_num,uname,class from seats WHERE sid=" . $_GET['sid'] . ";";
$result = mysqli_query($con, $query);
$hmap = [];
while ($row = mysqli_fetch_array($result)) {
    if (!array_key_exists($row['seat_num'][0], $hmap)) {
        $hmap[$row['seat_num'][0]] = [];
    }
    array_push($hmap[$row['seat_num'][0]], $row);
}
foreach ($hmap as $key => $rows) {
    echo "<div class='seatrow'>";
    foreach ($rows as $row) {
        if ($row['uname'] != null) {
            $booked = "<div class='outer-seat-booked' name='" . $row['seat_num'] . "' id='div-inline'><div class='inner-seat-booked'></div></div>";
            echo $booked;
        } else {
            $unbooked = "<div class='outer-seat class_num" . $row['class'] . "' name='" . $row['seat_num'] . "' id='div-inline'><div class='inner-seat'></div></div>";
            echo $unbooked;
        }
    }
    echo "</div><div class='clearBoth'></div>";
}
?>

                    <div class="section"></div>
                </div>
            <div class="right">
<?php
$query = "select * from prices";
$result = mysqli_query($con, $query);
?>
<table>
<?php while ($row = mysqli_fetch_array($result)): ?>
<tr>
    <td><?php echo "<div class='outer-seat1 class_num" . $row['class'] . "' id='div-inline'><div class='inner-seat1'></div></div>" ?></td>
    <td><?php echo('₹ '.$row['price']); ?></td>
</tr>
<?php endwhile ?>
</table>
<script>
<?php
$query = "select * from prices";
$result = mysqli_query($con, $query);
?>
var prices = {
<?php while ($row = mysqli_fetch_array($result)): ?>
        "<?php echo($row['class']) ?>": Number(<?php echo($row['price']) ?>),
<?php endwhile ?>
};
</script>
            </div>
            </div>
            <div class="row center-align">
                <a id='sub' class="waves-effect waves-light btn-large red"><i class="material-icons right">event_seat</i>Book now</a>
            </div>
    </div>
    <form style="display:none" id="pay" action="payment.php" method="post">
        <input name="price" id="price"> 
    </form>
    </main>
<?php include 'page_footer.php';?>
</body>
</html>
