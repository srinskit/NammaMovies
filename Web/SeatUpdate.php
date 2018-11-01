<?php
require_once 'config.php';
if(isset($_POST['arr']))
{
	$arr=json_decode(stripslashes($_POST['arr']));
	echo $arr;
	foreach($arr as $i)
	{	
		$query="UPDATE seats set booked=1 WHERE seat_num='".$i."';";
		$update_info=mysqli_query($con,$query);
		if(!$update_info)
			die("Error updating!");
		else
			echo $update_info;
	}
}

?>