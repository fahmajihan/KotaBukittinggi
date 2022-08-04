<?php include("path.php"); ?>
<?php include(ROOT_PATH . "/app/controllers/posts.php"); ?>
<?php $allPosts = getPublishedPosts(); ?>

<!DOCTYPE html>
<html lang="en">
 
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">

  <!-- Font Awesome -->
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css"
    integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">

  <!-- Google Fonts -->
  
  <link href="https://fonts.googleapis.com/css2?family=Comfortaa&family=DM+Mono&family=Poppins:wght@300;400&family=Quicksand:wght@500&display=swap" rel="stylesheet">

  <!-- Custom Styling -->
  <link rel="stylesheet" href="assets/css/style-1.css">
  <link rel="stylesheet" href="assets/css/media-2.css">

  <title>Media | Kota Bukittinggi</title>
</head>

<body>

  <?php include(ROOT_PATH . "/app/includes/header.php"); ?>

  <!-- Page Wrapper -->
  <div class="page-wrapper">

    <!-- Content -->
    <div class="content clearfix">

      <!-- Main Content Wrapper -->
      <div class="main-content-wrapper">
        <div class="main-content media">

          <div class="section">
            <h1 class="post-title">Media</h1>

            <div class="vid-box">
                
                <?php foreach ($allPosts as $post): ?>
                  <div class="vid-element">

                    <!--contoh iframe video-->
                    <?php echo $post['vid']; ?>

                    <h4><a href="single.php?id=<?php echo $post['id']; ?>"><?php echo $post['title']; ?></a></h4>
                  </div>
                <?php endforeach; ?>
            </div>
          </div>

        </div>

      </div>
      <!-- // Main Content -->

    </div>
    <!-- // Content -->

  </div>
  <!-- // Page Wrapper -->

  <!-- footer -->
  <?php include(ROOT_PATH . "/app/includes/footer.php"); ?>
  <!-- // footer -->


  <!-- JQuery -->
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

  <!-- Custom Script -->
  <script src="assets/js/scripts.js"></script>

</body>

</html>