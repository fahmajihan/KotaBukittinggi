<header>
    <div class="logo">
      <a href="<?php echo BASE_URL . '/index.php' ?>"><h1 class="logo-text"><span>KOTA</span> BUKITTINGGI</h1></a>
    </div>
    <i class="fa fa-bars menu-toggle"></i>
    <ul class="nav">
      <li><a href="<?php echo BASE_URL . '/index.php' ?>">Home</a></li>

      <li>
        <a href="#">
          Bukittinggi
          <i class="fa fa-chevron-down" style="font-size: .8em;"></i>
        </a>
        <ul>
          <li><a href="sejarah.php">Sejarah</a></li>
          <li><a href="cagar.php">Cagar Budaya</a></li>
          <li><a href="wisata.php">Destinasi Wisata</a></li>
          <li><a href="kuliner.php">Kuliner</a></li>
        </ul>
      </li>

      <li><a href="<?php echo BASE_URL . '/gallery.php' ?>">Gallery</a></li>
      <li><a href="<?php echo BASE_URL . '/gallery.php' ?>">Media</a></li>

      <?php if (isset($_SESSION['id'])): ?>
        <li>
          <a href="#">
            <i class="fa fa-user"></i>
            <?php echo $_SESSION['username']; ?>
            <i class="fa fa-chevron-down" style="font-size: .8em;"></i>
          </a>
          <ul>
            <?php if($_SESSION['admin']): ?>
              <li><a href="<?php echo BASE_URL . '/admin/dashboard.php' ?>">Dashboard</a></li>
            <?php endif; ?>
            <li><a href="<?php echo BASE_URL . '/logout.php' ?>" class="logout">Logout</a></li>
          </ul>
        </li>
      <?php else: ?>
        <li><a href="<?php echo BASE_URL . '/register.php' ?>">Sign Up</a></li>
        <li><a href="<?php echo BASE_URL . '/login.php' ?>">Login</a></li>
      <?php endif; ?>
    </ul>
  </header>