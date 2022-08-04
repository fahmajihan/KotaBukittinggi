<?php 
include("path.php");
include(ROOT_PATH . "/app/controllers/posts.php");


$posts = array();
$postsTitle = '';

if (isset($_POST['search-term'])) {
  $posts = searchPosts($_POST['search-term']);
  if (empty($posts)) {
    $postsTitle = "No result for '" . $_POST['search-term'] . "'";
  } else {
    $postsTitle = "You searched for '" . $_POST['search-term'] . "'";
  }
} else {
  $posts = getPublishedPosts();
}

?>

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

  <title>Kuliner | Kota Bukittinggi</title>
</head>

<body>
  <?php include(ROOT_PATH . "/app/includes/header.php"); ?>

  <!-- Page Wrapper -->
  <div class="page-wrapper">

      <!-- Content -->
    <div class="content clearfix">

      <!-- Main Content -->
      <div class="main-content cagar">
        <h2><?php echo $postsTitle ?></h2>
        <?php if (!empty($posts)) : ?>

        <div>
          <div class="container-recent-title">
            <h1 class="recent-post-title">Kuliner</h1>
          </div>
          
          <?php foreach ($posts as $post): ?>
              <?php if($post['topic_id']==3) : ?>
 
                    <div class="post clearfix">
                      <img src="<?php echo BASE_URL . '/assets/images/' . $post['image']; ?>" alt="" class="post-image">
                      <div class="post-preview">
                        <h2><a href="single.php?id=<?php echo $post['id']; ?>"><?php echo $post['title']; ?></a></h2>
                        <i class="far fa-user"> <?php echo $post['username']; ?></i>
                        &nbsp;
                        <i class="far fa-calendar"> <?php echo date('F j, Y', strtotime($post['created_at'])); ?></i>
                        <p class="preview-text">
                          <?php echo html_entity_decode(substr($post['body'], 0, 150) . '...'); ?>
                        </p>
                        <a href="single.php?id=<?php echo $post['id']; ?>" class="btn read-more">Read More</a>
                      </div>
                    </div>    
     
                <?php endif; ?>
            <?php endforeach; ?>
        </div> 
        <?php endif; ?>      

      </div>
      <!-- // Main Content -->

      <div class="sidebar cagar">

        

        <div class="section search">
          <h2 class="section-title">Search</h2>
          <form action="kuliner.php" method="post">
            <input type="text" name="search-term" class="text-input" placeholder="Search...">
          </form>
        </div>


        <div class="section topics">
          <h2 class="section-title">Related Links</h2>
          <ul>
            <li><a href="http://www.bukittinggikota.go.id/">Kota Bukittinggi</a></li>
            <li><a href="#">Kota Pusaka</a></li>
            <li><a href="https://ciptakarya.pu.go.id/v5/">Direktorat Jenderal Cipta Karya</a></li>
            <li><a href="https://www.pu.go.id/">Kementerian PUPR</a></li>
    
          </ul>
        </div>

      </div>

    </div>
    <!-- // Content -->

  </div>
  <!-- // Page Wrapper -->

  <!-- footer -->
  <?php include(ROOT_PATH . "/app/includes/footer.php"); ?>
  <!-- // footer -->


  <!-- JQuery -->
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

  <!-- Slick Carousel -->
  <script type="text/javascript" src="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>

  <!-- Custom Script -->
  <script src="assets/js/scripts.js"></script>

</body>

</html>