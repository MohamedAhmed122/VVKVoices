<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="VVK Voices - Blog for Vilnius Business College students">
  <meta name="author" content="VVK Voices Team">
  <link rel="shortcut icon" href="favicon.ico" type="image/x-icon">

  <link href="https://fonts.googleapis.com/css?family=Roboto:100,300,400,500,700,900&display=swap" rel="stylesheet">

  <?php
    $page = current(explode('.', basename($_SERVER['PHP_SELF'])));
    $active_class = match($page) {
      'index' => 'VVK Voices - Student Blog',
      'about' => 'About Us',
      'blog' => 'Blog',
      'post-details' => 'Post Details',
      'contact' => 'Contact Us',
      'tag' => 'Tag',
      'category' => 'Category',
      'search' => 'Search Results',
      default => 'VVK Voices'
    };
  ?>
  <title><?php echo $active_class; ?></title>

  <!-- Bootstrap core CSS -->
  <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

  <!-- Additional CSS Files -->
  <link rel="stylesheet" href="assets/css/fontawesome.css">
  <link rel="stylesheet" href="assets/css/templatemo-stand-blog.css">
  <link rel="stylesheet" href="assets/css/owl.css">
</head>

<body>
  <!-- Header -->
  <header class="background-header">
    <nav class="navbar navbar-expand-lg">
      <div class="container">
        <a class="navbar-brand" href="index.php">
          <img src="assets/images/vvk_voice_logo.png" alt="VVK Voices" style="height:60px;">
          <!-- <span style="color:#f48840; font-weight:bold; font-size:22px; margin-left:10px;">VVK Voices</span> -->
        </a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive"
          aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
          <ul class="navbar-nav ml-auto">
            <?php
              $current = basename($_SERVER['PHP_SELF']);
              function active($page) {
                global $current;
                return $current === $page ? 'active' : '';
              }
            ?>
            <li class="nav-item <?php echo active('index.php'); ?>">
              <a class="nav-link" href="index.php">Home</a>
            </li>
            <li class="nav-item <?php echo active('about.php'); ?>">
              <a class="nav-link" href="about.php">About Us</a>
            </li>
            <li class="nav-item <?php echo active('blog.php'); ?>">
              <a class="nav-link" href="blog.php">Blog</a>
            </li>
            <li class="nav-item <?php echo active('contact.php'); ?>">
              <a class="nav-link" href="contact.php">Contact Us</a>
            </li>
            <?php 
              session_start(); 
              if (!isset($_SESSION['username'])) {
                echo '<li class="nav-item"><a class="nav-link" href="admin/login.php">Login</a></li>';
              } else {
                echo '<li class="nav-item"><a class="nav-link" href="admin/index.php">Dashboard</a></li>';
                echo '<li class="nav-item"><a class="nav-link" href="admin/log_out.php">Logout</a></li>';
              }
            ?>
          </ul>
        </div>
      </div>
    </nav>
  </header>

  <?php include "admin/dbconfig.php"; ?>
