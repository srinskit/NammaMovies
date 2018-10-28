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
                        <p>I am a very simple card. I am good at containing small bits of information.
                        I am convenient because I require little markup to use effectively.</p>
                    </div>
                    <div class="card-action">
                        <a href="#">This is a link</a>
                    </div>
                </div>
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
            <tr>
                <td>Alvin</td>
                <td>  <a class="waves-effect waves-light btn-large" href="#">10:10pm</a></td>
            
            </tr>
            <tr>
                <td>Alan</td>
                <td><a class="waves-effect waves-light btn-large" href="#">10:30pm</a></td>
                
            </tr>
            <tr>
                <td>Jonathan</td>
                <td><a class="waves-effect waves-light btn-large" href="#" style="width:120px">9:20am</a></td>
            
            </tr>
            </tbody>
        </table> 
        </div>
    </main>
    <?php include('page_footer.php'); ?>
</body>
<?php include('common_scripts.php'); ?>
</html>