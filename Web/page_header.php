<div class="navbar-fixed">
    <nav class="header-nav">
        <div class="nav-wrapper blue darken-2">
            <a href="home.php" class="brand-logo">Namma Movies</a>
            <ul id="nav-mobile" class="right hide-on-med-and-down">
                <li><a href="home.php">Home</a></li>
                <li><a href="about.php">About</a></li>
                <?php if(!$user_details['logged_in']): ?>
                    <li><a href="login.php">Login</a></li>
                <?php else: ?>
                    <li><a class="dropdown-trigger" href="#!" data-target="dropdown1" href="login.php">You!<i class="material-icons right">arrow_drop_down</i></a></li>
                    <ul id="dropdown1" class="dropdown-content">
                        <li><a href="#!">Profile</a></li>
                        <li><a href="#!">My Tickets</a></li>
                        <li class="divider"></li>
                        <li><a href="#!">Logout</a></li>
                    </ul>
                <?php endif; ?>
            </ul>
        </div>
    </nav>
</div>
