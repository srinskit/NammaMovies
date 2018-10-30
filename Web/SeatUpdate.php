<?php
$con=mysqli_connect('127.0.0.1:3306','yash','yash','test');
if(!$con)
{
    die('Could not connect:'.mysqli_error($con));
}
mysqli_select_db($con,'test');
if(isset($_POST['arr']))
{
	$arr=json_decode(stripslashes($_POST['arr']));
	echo $arr;
	foreach($arr as $i)
	{	
		$query="UPDATE t set v=1 WHERE name='".$i."';";
		$update_info=mysqli_query($con,$query);
		if(!$update_info)
			die("Error updating!");
		else
			echo $update_info;
	}
}

?>