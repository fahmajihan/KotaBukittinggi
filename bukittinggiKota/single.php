<?php include("path.php"); ?>
<?php include(ROOT_PATH . '/app/controllers/posts.php');  ?>
<?php include(ROOT_PATH . '/app/controllers/comments.php');

if (isset($_GET['id'])) {
  $post = selectOne('posts', ['id' => $_GET['id']]);
}
$topics = selectAll('topics');
$posts = selectAll('posts', ['published' => 1]);


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

  <title><?php echo $post['title']; ?> | Kota Bukittinggi</title>
</head>

<body>
  
  

  <?php include(ROOT_PATH . "/app/includes/header.php"); ?>

  <!-- Page Wrapper -->
  <div class="page-wrapper">

    <!-- Content -->
    <div class="content clearfix">

      <!-- Main Content Wrapper -->
      <div class="main-content-wrapper">
        <div class="main-content single">

          <div class="section top">
            <h1 class="post-title"><?php echo $post['title']; ?></h1>
            <div class="line"></div>

            <div class="post-content">
              <?php echo html_entity_decode($post['body']); ?>
            </div>
          </div>

          
          <div class="section img">
            <div class="title">
              <h2>Photo</h2>
            </div>

            <div>
              <img src="<?php echo BASE_URL . '/assets/images/' . $post['image']; ?>" alt="" class="post-image">
            </div>
          </div>

          <!--SECTION VIDEO-->
          <?php if(!empty($post['vid'])) : ?>
          <div class="section vid">
            <div class="title">
              <h2>Video</h2>
            </div>

            <div>
              <?php echo $post['vid']; ?>
            </div>
          </div>
          <?php endif; ?>
          <!--END SECTION VIDEO-->

          <?php if(!empty($post['map'])) : ?>
          <div class="section maps">
            <div class="title">
              <h2>Location</h2>
            </div>

            <div>
              <?php echo $post['map']; ?>
            </div>
          </div>
          <?php endif; ?>

          <!-- KOMENTAR -->
          <div class="section komentar">

              <form action="" method="post" class="form">
                <h2>Leave Your Comment Here</h2>
                <div class="row">
                  <div class="input-group">
                    <label for="name">Name</label>
                    <input type="text" name="nama" id="name" placeholder="Enter your Name" required>
                  </div>
                  <div class="input-group">
                    <label for="email">Email</label>
                    <input type="email" name="email" id="email" placeholder="Enter your Email" required>
                  </div>
                </div>
                <div class="input-group textarea">
                  <label for="comment">Comment</label>
                  <textarea id="comment" name="komentar" placeholder="Enter your Comment" required></textarea>
                </div>
                <input type="submit" name="comment-submit" value="Post Comment" class="btn-big">
              </form>

              <?php if(isset($_POST['comment-submit'])) : ?>
                <div>
                  <i>Your Comment Has Been Submitted.</i>
                </div>
              <?php endif; ?>

              <div class="display-komentar">
                <?php
                  $post = selectOne($table, ['id' => $_GET['id']]);
                  $post_id = $post['id'];

                  $no=1;
                  $sql = "select * from comments where post_id = '$post_id'";
                  $ambildata = mysqli_query($conn,$sql);
                  while($tampil = mysqli_fetch_array($ambildata)) : ?>

                    <div>
                      <div>
                        <div class="komentar-nama">
                          <?php echo $tampil['nama']; ?>
                        </div>
                        
                        <div class="komentar-body">
                          <?php echo $tampil['komentar']; ?>
                        </div>

                        <div class="komentar-line"></div>
                      </div>
                    </div>

                <?php $no++; 
                  endwhile; ?>
              </div>

          </div>

        </div>

      </div>
      <!-- // Main Content -->

      <!-- Sidebar -->
      <div class="sidebar single">

        <div class="section search">
          <h2 class="section-title">Search</h2>
          <form action="search.php" method="post">
            <input type="text" name="search-term" class="text-input" placeholder="Search...">
          </form>
        </div>

        <div class="section popular">
          <h2 class="section-title">Most Popular</h2>

          <?php foreach (array_slice($posts, 0, 7) as $p): ?>
            <div class="post clearfix">
              <img src="<?php echo BASE_URL . '/assets/images/' . $p['image']; ?>" alt="">
              <a href="single.php?id=<?php echo $p['id']; ?>" class="title">
                <h4><?php echo $p['title'] ?></h4>
              </a>
            </div>
          <?php endforeach; ?>

        </div>

        <div class="section topics">
          <h2 class="section-title">Bukittinggi</h2>
          <ul>
            <?php foreach ($topics as $topic): ?>
              <li><a href="<?php if($topic['id']==1){ echo 'cagar.php';}else{if($topic['id']==2){echo 'wisata.php';}else{echo 'kuliner.php';}} ?>"><?php echo $topic['name']; ?></a></li>
            <?php endforeach; ?>
          </ul>
        </div>
      </div>
      <!-- // Sidebar -->

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