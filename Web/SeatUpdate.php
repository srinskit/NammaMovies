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
?>
<?php
require_once 'config.php';
if(isset($_POST['arr']))
{
	$arr=json_decode(stripslashes($_POST['arr']));
	echo $arr;
	foreach($arr as $i)
	{	
		$query="UPDATE seats set booked=1, uname = '".$_SESSION['user_details']['username']."' WHERE seat_num='".$i."' and sid = ".$_SESSION['sid'].";";
        $update_info=mysqli_query($con,$query);
		if(!$update_info)
			die("Error updating!");
		else
			echo $update_info;
	}
}

?>