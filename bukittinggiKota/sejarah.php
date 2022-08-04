<?php include("path.php"); ?>
<?php include(ROOT_PATH . '/app/controllers/posts.php');

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

  <title>Sejarah | Kota Bukittinggi</title>
</head>

<body>
  <!-- Facebook Page Plugin SDK -->
  <div id="fb-root"></div>

  <?php include(ROOT_PATH . "/app/includes/header.php"); ?>

  <!-- Page Wrapper -->
  <div class="page-wrapper">

    <!-- Content -->
    <div class="content clearfix">

      <!-- Main Content Wrapper -->
      <div class="main-content-wrapper">
        <div class="main-content single">
          <div class="section top">
            <h1 class="post-title">Sejarah Bukittinggi</h1>

            <div class="post-content">
              <p>Kota Bukittinggi semula merupakan pasar (pekan) bagi masyarakat Agam Tuo. Kemudian setelah kedatangan Belanda, kota ini menjadi kubu pertahanan mereka untuk melawan Kaum Padri. Pada tahun 1825, Belanda mendirikan benteng Fort de Kock, yang menjadi tempat peristirahatan opsir-opsir Belanda yang berada di wilayah jajahannya.  Pada masa pemerintahan Hindia Belanda, kawasan ini selalu ditingkatkan perannya dalam ketatanegaraan yang kemudian berkembang menjadi sebuah stadsgemeente (kota), dan juga berfungsi sebagai ibu kota Afdeeling Padangsche Bovenlanden dan Onderafdeeling Oud Agam.</p><p>Pada masa pemerintahan Jepang, Bukittinggi dijadikan sebagai pusat pengendalian pemerintah militernya untuk kawasan Sumatera, bahkan sampai ke Singapura dan Thailand. Pada masa ini Bukittinggi berganti nama dari Taddsgemente Fort de Kock menjadi Bukittinggi Si Yaku Sho yang daerahnya diperluas dengan memasukkan nagari-nagari Sianok, Gadut, Kapau, Ampang Gadang, Batu Taba dan Bukit Batabuah, di Kota ini pulalah bala tentara Jepang mendirikan pemancar radio terbesar untuk pulau Sumatera dalam rangka mengibarkan semangat rakyat untuk menunjang kepentingan perang Asia Timur Raya versi Jepang.</p><p>Pada masa perjuangan kemerdekaan RI, Bukitinggi berperan sebagai kota perjuangan. Dari bulan Desember 1948 sampai dengan bulan Juni 1949, Bukittinggi ditunjuk sebagai ibukota Pemerintahan Darurat Republik Indonesia ( PDRI ), setelah Yogyakarta jatuh ke tangan Belanda. Selanjutnya Bukittinggi pernah menjadi ibukota propinsi Sumatera dengan gubernurnya Mr. Tengku Muhammad Hasan. Kemudian dalam PP Pengganti undang-undang No. 4 tahun 1959, Bukittinggi ditetapkan sebagai ibukota Sumatera Tengah yang meliputi keresidenan-keresidenan Sumatera Barat, Jambi dan Riau yang sekarang masing-masing keresidenan itu telah menjadi provinsi sendiri.</p><p>Setelah keresidenan Sumatera Barat dikembangkan menjadi Propinsi Sumatera Barat, maka Bukittinggi ditunjuk sebagai Ibu Kota Propinsinya. Semenjak tahun 1958 secara defacto Ibukota Propinsi telah pindah ke Padang namun secara deyuire barulah tahun 1978 Bukittinggi tidak lagi menjadi Ibukota Propinsi Sumatera Barat, dengan keluarnya Peraturan Pemerintah No. 29 tahun 1979 yang memindahkan Ibukota Propinsi Sumatera Barat ke Padang. Sekarang ini Bukittinggi berstatus sebagai kota madya Daerah Tingkat II sesuai dengan undang-undang No. 5 tahun 1974 tentang Pokok Pemerintah di Daerah yang telah disempurnakan dengan UU NO. 22/99 menjadi Kota Bukittinggi.</p>
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

          <?php foreach (array_slice($posts ,0 ,7) as $p): ?>
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

  <?php include(ROOT_PATH . "/app/includes/footer.php"); ?>


  <!-- JQuery -->
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

  <!-- Slick Carousel -->
  <script type="text/javascript" src="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>

  <!-- Custom Script -->
  <script src="assets/js/scripts.js"></script>

</body>

</html>