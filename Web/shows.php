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
    
	<title>
		Namma Movies
	</title>
</head>
<body>
    <?php
	$con=mysqli_connect('127.0.0.1:3306','root','','test');
	if(!$con)
	{
		die('Could not connect:'.mysqli_error($con));
	}
	mysqli_select_db($con,'test');?>
    
    <?php include('page_header.php'); ?>
    <main>
        <div class="row">
            <div class="col s12">
                <div class="card">
                    <div class="card-image">
                        <span class="card-title" style="color: rgb(255, 255, 255)">Card Title</span>
                        <img src="images/656579.png" style="height: 250px ;z-index: 1;position: relative;">
                        <span class="card-title">Card Title</span>
                    </div>
                    
                    <div class="card-content">
                        <p><?php 
                            $query="SELECT  `movie_name` FROM `movie` WHERE movie_name='Avengers' and theatre_id='4';";
                            $result=mysqli_query($con,$query);
                            $row=mysqli_fetch_array($result);
                            echo $row['movie_name'];
                            ?>
                        </p>
                    </div>
                    <div class="card-action">
                        <a href="#">This is a link</a>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col s12 m6 l6">
                <ul class="tabs">
                    <li class="tab col s3 "><a href="#test1" class="active blue-text" ><?php
                            $today = date("F j"); 
                        
                        print $today;
                        ?></a></li>
                        <li class="tab col s3"><a href="#test2"  class="blue-text" >
                            <?php
                        $datetime = new DateTime('tomorrow');
                        echo $datetime->format('F j');
                        ?>
                        </a></li>
                        <li class="tab col s3"><a href="#test4" class="blue-text" >  <?php
                        $datetime = new DateTime('tomorrow + 1 day');
                        echo $datetime->format('F j');
                        ?></a></li>
                    </ul>
                </div>
            </div>
            <div>
                <table>
                    <thead>
                        <tr>
                            <th>Theatre Names</th>
                            <th>Food and beverages available</th>
                            
                        </tr>
                    </thead>
                    
                    <tbody>
                        <?php
                        $query="SELECT `theatre_name` FROM `theatre` WHERE city_id ='1';";
                        $result=mysqli_query($con,$query);
                        
                        
                        while($row=mysqli_fetch_array($result))
                        echo "<tr> <td> ".$row['theatre_name']."</td> <td>  <a class=\"waves-effect waves-light btn-large\" href=\"#\">10:10pm</a></td> </tr>";
                        ?>
                        <tr>
                            <td>Alvin</td>
                            <td>  <a class="waves-effect waves-light btn-large" href="#">10:10pm</a></td>
                            
                        </tr>
                        <tr>
                            <td>Alan</td>
                            <td><a class="waves-effect waves-light btn-large" href="#">10:30pm</a></td>
                            
                        </tr>
                        
                    </tbody>
                </table> 
            </div>
        </main>
        <?php include('page_footer.php'); ?>
    </body>
    <?php include('common_scripts.php'); ?>
    <script>
        $(document).ready(function(){
            $('.tabs').tabs();
        });
    </script>
    </html>