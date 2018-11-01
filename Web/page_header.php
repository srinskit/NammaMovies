<div class="navbar-fixed">
    <nav class="header-nav">
        <div class="nav-wrapper blue darken-2">
            <a href="home.php" class="brand-logo">Namma Movies</a>
            <ul id="nav-mobile" class="right hide-on-med-and-down">
                <li><a href="home.php">Home</a></li>
                <li><a href="about.php">About</a></li>
                <?php if(!$_SESSION['user_details']['logged_in']): ?>
                    <li><a href="login.php">Login</a></li>
                <?php else: ?>
                    <li><a class="dropdown-trigger" href="#!" data-target="dropdown1" href="login.php">
                        <?php echo($_SESSION['user_details']['username'].'!'); ?>
                    <i class="material-icons right">arrow_drop_down</i></a></li>
                    <ul id="dropdown1" class="dropdown-content">
                        <li><a href="profile.php">Profile</a></li>
                        <li><a href="#!">My Tickets</a></li>
                        <li class="divider"></li>
                        <li><a href="logout.php">Logout</a></li>
                    </ul>
                <?php endif; ?>
            </ul>
        </div>
    </nav>
</div>
