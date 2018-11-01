<?php
$con = mysqli_connect('localhost:3306', 'srinag', 'pass') or die('Unable to connect to database! Please try again later.');
mysqli_select_db($con, 'dbms');
?>