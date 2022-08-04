-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 24, 2021 at 03:29 AM
-- Server version: 10.5.12-MariaDB
-- PHP Version: 7.3.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `id17507699_kotabktg`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `komentar` text DEFAULT NULL,
  `post_id` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `nama`, `email`, `komentar`, `post_id`) VALUES
(67, 'jihan', 'jihan@gmail.com', 'hai selamat datang..', '32'),
(69, 'Chris', 'christianindrawan21@gmail.com', 'Informasi yang menarik!', '33'),
(70, 'Vivi', 'elfitrisanti.pnp@gmail.com', 'Good job', '32'),
(71, 'Rahmayani', 'yanimandalico@gmail.com', 'Isinya sangat bagus untuk mmberikan informasi kpda wisatawan baik local maupun mancanegara yg ingin berkunjung ke Sumbar trutama Bukittinggi', '32'),
(72, 'jihan', 'fahmajihan22@gmail.com', 'selamat datang di website kota pusaka bukittinggi', '32'),
(73, 'jihan', 'fahmajihan22@gmail.com', 'selamat datang di website kota pusaka bukittinggi!', '33'),
(74, 'jihan', 'fahmajihan22@gmail.com', 'selamat datang di website kota pusaka bukittinggi!', '33'),
(75, 'jihan', 'fahmajihan22@gmail.com', 'selamat datang di wbsite kota pusaka bukittinggi!!', '34'),
(76, 'alya', 'itslay99@gmail.com', 'wah bagus sekali terimakasih infonya', '45');

-- --------------------------------------------------------

--
-- Table structure for table `inboxes`
--

CREATE TABLE `inboxes` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `i_message` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `inboxes`
--

INSERT INTO `inboxes` (`id`, `email`, `i_message`) VALUES
(4, 'test@gmail.com', 'selamat siang,\r\nsaya ingin merekomendasikan salah satu destinasi wisata baru yang ada di bukittinggi. namanya adlah blabla lokasinya ada di blabla blabala. \r\nterimakasih'),
(7, 'elfitrisanti.pnp@gmail.com', 'Good... '),
(8, 'u3satria@gmail.com', 'Selamat ya jihan atas selesainya portal web ini, semoga makin berkembang');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `topic_id` int(11) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `published` tinyint(4) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `map` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `topic_id`, `title`, `image`, `body`, `published`, `created_at`, `map`) VALUES
(32, 23, 1, 'Jam Gadang', '1629717670_IMG_20210813_113435_1.jpg', '&lt;p&gt;Jam Gadang adalah menara jam yang menjadi penanda Kota Bukittinggi, Sumatra Barat, Indonesia. Menara jam ini memiliki jam dengan ukuran besar di empat sisinya sehingga dinamakan Jam Gadang, sebutan bahasa Minangkabau yang berarti &quot;jam besar&quot;. Ukuran dasar bangunan Jam Gadang yaitu 6,5 x 6,5 meter, ditambah dengan ukuran dasar tangga selebar 4 meter, sehingga ukuran dasar bangunan keseluruhan 6,5 x 10,5 meter. Bagian dalam menara jam terdiri dari beberapa tingkat, dengan tingkat teratas merupakan tempat penyimpanan bandul. Pada bagian atas Jam Gadang Terdapat 4 jam dengan diameter masing-masing 80 cm. Jam tersebut digerakkan secara mekanik oleh mesin yang didatangkan langsung dari Rotterdam, Belanda melalui pelabuhan Teluk Bayur.&lt;/p&gt;&lt;h2&gt;SEJARAH JAM GADANG&lt;/h2&gt;&lt;p&gt;Jam Gadang mulai dibangun pada 1926-1927 atas inisiatif Hendrik Roelof Rookmaaker, sekretaris kota atau controleur Kota Bukittinggi dulu yaitu Fort de Kock pada masa pemerintahan Hindia Belanda. Jamnya merupakan hadiah dari Ratu Belanda Wilhelmina. Arsitektur menara jam ini dirancang oleh Yazid Rajo Mangkuto dari Koto Gadang, dan pelaksana pembangunannya adalah Haji Moran dengan mandornya St. Gigi Ameh.&lt;/p&gt;&lt;p&gt;Sejak didirikan, Jam Gadang telah mengalami tiga kali perubahan pada bentuk atapnya. Pada masa pemerintahan Hindia Belanda saat pertama kali didirikan , atap Jam Gadang berbentuk bulat dengan patung ayam jantan menghadap ke arah timur di atasnya. Pada masa pendudukan Jepang, bentuk atap diubah menjadi bentuk pagoda. Perubahan terakhir adalah setelah Indonesia merdeka, atap diubah menjadi bentuk gonjong atap rumah adat Minangkabau, Rumah Gadang.&lt;/p&gt;', 1, '2021-08-23 18:21:10', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3989.76173344061!2d100.36733171540233!3d-0.30515433543040305!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2fd538bd1ff164a7%3A0xcea33881870dc19!2sJam%20Gadang%20Bukittinggi!5e0!3m2!1sen!2sid!4v1629717540021!5m2!1sen!2sid\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\"></iframe>'),
(33, 23, 1, 'Lubang Jepang', '1629717918_Japanese_Tunnel_Bukittinggi_Indonesia.jpg', '&lt;p&gt;Gua Jepang adalah bukti sejarah pendudukan Jepang di Sumatera Barat yang masih tersisa hingga sekarang. Secara geografis keberadaan Gua Jepang atau Lubang Jepang ini terletak di Bukit Sihanok Bukittinggi yang berada dalam kawasan objek wisata Taman Panorama Bukittinggi, Sumatera Barat. Taman Panorama dan Gua Jepang berada di Jl. Panorama Bukittinggi, Sumatera Barat.&lt;/p&gt;&lt;p&gt;Perkiraan kedalaman gua ini dari permukaan tanah adalah 40 m dengan Panjang dan lebar Lorong sekitar 1470 m dan 2 m. Ada sekitar 128 anak tangga untuk turun ke bawah sebelum akhirnya para pengunjung dapat melewati ruang demi ruang di Gua Jepang. &amp;nbsp;Di dalamnya terdapat ruangan-ruangan seperti ruang penyimpanan amunisi, ruang sidang, ruang tahanan, ruang makan, ruang pengintaian, sampai dengan ruang penyiksaan.&lt;/p&gt;&lt;h2&gt;SEJARAH LUBANG JEPANG&lt;/h2&gt;&lt;p&gt;Gua ini digunakan tentara Jepang sebagai tempat pertahanan &amp;nbsp;tentara Jepang di Bukittinggi sekitar tahun 1942-1945. Tahanan penduduk Indonesia dipaksa dengan kejam mengerjakan penggalian Gua ini. Diperkirakan puluhan sampai ratusan ribu tenaga kerja paksa atau romusha dikerahkan dari pulau Jawa, Sulawesi dan Kalimantan untuk menggali terowongan ini.&lt;/p&gt;', 1, '2021-08-23 18:25:18', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3989.760781144934!2d100.36393031540231!3d-0.30771133542980883!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2fd538bbd2c73449%3A0x57754f9fe912dcab!2sLobang%20Jepang!5e0!3m2!1sen!2sid!4v1629717766150!5m2!1sen!2sid\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\"></iframe>'),
(34, 23, 1, 'Benteng Fort de Kock', '1629718053_IMG_20210813_114619.jpg', '&lt;p&gt;Fort de Kock adalah benteng peninggalan Belanda yang berdiri di Kota Bukittinggi, Sumatra Barat, Indonesia. Benteng Fort de Kock merupakan bangunan bercat putih-hijau setinggi 20 m. Benteng Fort de Kock dilengkapi dengan meriam kecil di keempat sudutnya. Kawasan sekitar benteng dipugar oleh pemerintah daerah menjadi sebuah taman dengan banyak pepohonan rindang dan mainan anak-anak.&lt;/p&gt;&lt;p&gt;Benteng ini adalah satu dari 2 benteng belanda yang ada di sumatera barat, yang satu lagi terletak di Batusangkar dengan nama benteng Fort Van der Capellen karena 2 kota inilah dahulu yang paling susah ditaklukan belanda saat Perang Paderi.&lt;/p&gt;&lt;h2&gt;SEJARAH BENTENG FORT DE KOCK&lt;/h2&gt;&lt;p&gt;Benteng Fort de Kock telah dibangun sejak tahun 1825 oleh Kapten Bouer pada masa Hendrik Merkus de Kock sewaktu menjadi komandan Der Troepen dan Wakil Gubernur Jenderal Hindia Belanda, karena itulah benteng ini terkenal dengan nama Benteng Fort De Kock. Benteng ini digunakan oleh Tentara Belanda sebagai kubu pertahanan dari gempuran rakyat Minangkabau terutama pada saat terjadinya Perang Paderi. Benteng Fort de Kock juga dibangun sebagai lambang bahwa Kolonial Belanda telah berhasil menduduki daerah di Sumatra Barat dan merupakan tanda penjajahan dan perluasan kekuasaan Belanda terhadap wilayah Bukittinggi,Agam, dan Pasaman.&lt;/p&gt;&lt;p&gt;Belanda memanfaatkan konflik intern antara kelompok adat dan kelompok agama yang terjadi pada saat itu. Belanda yang membantu kaum adat melahirkan sebuah kesepakatan bahwa Belanda diperbolehkan membangun basis pertahan militer di puncak Bukit Jirek Hill, yang dinamai Fort de Kock. Setelah membangun di Bukit Jirek, Pemerintah Kolonial Belanda melanjutkan rencananya dalam mengambil alih beberapa bukit lagi seperti Bukit Sarang Gagak, Bukit Tambun Tulang, Bukit Cubadak Bungkuak, dan Bukit Malambung. Di daerah tersebut juga dibangun gedung perkantoran, rumah dinas pemerintah, kompleks pemakaman, pasar, sarana transportasi, sekolah dan juga tempat rekreasi. Pembangunan yang dilakukan oleh pemerintahan Kolonial Belanda tersebut dalam istilah Minangkabau dikenal dengan &ldquo;tajua nagari ka Bulando&rdquo; yang apabila diterjemahkan ke bahasa Indonesia artinya adalah Terjual negeri kepada Belanda. Pada masa itu Kolonial Belanda menguasai 75 persen wilayah dari lima desa yang dijadikan pusat perdagangan.&lt;/p&gt;', 1, '2021-08-23 18:27:33', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3989.7634404783607!2d100.36552951540234!3d-0.300516335431486!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2fd538a35fce846d%3A0x5d344f346e153ace!2sFort%20De%20Kock!5e0!3m2!1sen!2sid!4v1629718020236!5m2!1sen!2sid\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\"></iframe>'),
(35, 23, 1, 'Monumen Polwan', '1629718241_IMG_20210813_120043.jpg', '&lt;p&gt;Untuk memperingati pembentukan polwan pertama Indonesia, didirikan sebuah monumen yang diberi nama Monumen Polwan. Monumen tersebut telah berdiri sejak tahun 1992 atau 1993 di Kota Bukittinggi. Monumen ini berupa tugu dengan tinggi sekitar tiga meter. Tugu ini dikelilingi pagar besi dengan hiasan atap rumah gadang di setiap sudutnya. Di papan informasinya tertulis &quot;Monumen Polwan&quot; Memperingati Lahirnya Polwan Pertama di Indonesia.&lt;/p&gt;&lt;h2&gt;SEJARAH MONUMEN POLWAN&lt;/h2&gt;&lt;p&gt;Polwan di Indonesia lahir pada 1 September 1948, berawal dari kota Bukittinggi, Sumatra Barat. Pada saat itu Pemerintahan Darurat Republik Indonesia (PDRI) menghadapi Agresi Militer Belanda II, dimana terjadinya pengungsian besar-besaran pria, wanita, dan anak-anak meninggalkan rumah mereka untuk menjauhi titik-titik peperangan. Untuk mencegah terjadinya penyusupan, para pengungsi harus diperiksa oleh polisi, namun para pengungsi wanita tidak mau diperiksa apalagi digeledah secara fisik oleh polisi pria. Mengatasi masalah itu, Pemerintah Indonesia menunjuk SPN (Sekolah Polisi Negara) Bukittinggi untuk membuka &quot;Pendidikan Inspektur Polisi&quot; bagi kaum wanita. Melalui seleksi maka terpilih enam orang gadis remaja berdarah Minangkabau. Keenam remaja tersebut adalah Mariana Saanin Mufti, Nelly Pauna Situmorang, Rosmalina Pramono, Dahniar Sukotjo, Djasmainar Husein dan Rosnalia Taher.&lt;/p&gt;&lt;p&gt;Pada tanggal 1 September 1948 keenam gadis remaja tersebut resmi mengikuti Pendidikan Inspektur Polisi di SPN Bukittinggi. Sejak saat itu dinyatakan lahirlah Polisi Wanita yang akrab dipanggil Polwan. Keenam Polwan angkatan pertama tersebut juga tercatat sebagai wanita ABRI pertama di tanah air yang kini kesemuanya sudah pensiun dengan rata-rata berpangkat Kolonel Polisi atau Komisaris Besar.&lt;/p&gt;', 1, '2021-08-23 18:30:41', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3989.760163211848!2d100.36961851540241!3d-0.30935923542944443!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2fd538be17591c7d%3A0xcf6c5036b8ac76c2!2sPolicewoman%20Monument!5e0!3m2!1sen!2sid!4v1629718121366!5m2!1sen!2sid\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\"></iframe>'),
(36, 23, 1, 'Museum Rumah Kelahiran Bung Hatta', '1629718395_IMG_20210813_122118.jpg', '&lt;p&gt;Rumah Kelahiran Bung Hatta ini terletak di Jalan Soekarno-Hatta No.37, Bukittinggi, Sumatra Barat. Rumah ini adalah tempat Bung Hatta dilahirkan dan menghabiskan masa kecilnya sampai berusia 11 tahun. Rumah ini dibangun mengikuti bentuk aslinya yang dapat dilihat di memoir Bung Hatta dan berbagai foto/dokumentasi milik keluarga Bung Hatta. Sebagian besar perabotan di dalam rumah masih asli dari peninggalan masa kecil Bung Hatta yang diperoleh dari keluarga dan kerabat beliau, begitupun tata letak perabotan tersebut masih dipertahankan di tempat asalnya.&lt;/p&gt;&lt;p&gt;Selain sebagai sebuah rumah yang sarat dengan kandungan sejarah, secara umum rumah ini juga dapat menggambarkan dan menceritakan suasana masa lalu tentang teknologi pembangunan rumah, situasi dan kehidupan masyarakat masa lalu dan khususnya kehidupan keluarga besar Bung Hatta.&lt;/p&gt;&lt;h2&gt;SEJARAH MUSEUM RUMAH KELAHIRAN BUNG HATTA&lt;/h2&gt;&lt;p&gt;Rumah kelahiran bung hatta didirikan sekitar tahun 1860-an dan menggunakan struktur kayu yang terdiri dari bangunan utama, pavilion, lumbung padi, dapur dan kandang kuda serta kolam ikan. Bangunan utama berfungsi untuk menerima tamu, ruang makan keluarga, dan kamar ibu, paman, dan kakek Bung Hatta sedangkan pavilion berfungsi sebagai kamar tidur Bung Hatta. Bung Hatta tinggal di rumah ini dari tahun 1902-1913. Rumah asli tempat Bung Hatta dilahirkan sudah runtuh di tahun 1960-an, tetapi atas gagasan Ketua Yayasan Pendidikan Bung Hatta, maka rumah tersebut dibangun kembali sebagai upaya mengenang dan memperoleh gambaran masa kecil Bung Hatta di kota Bukittinggi. Penelitian pembangunana ulang dimulai dari bulan November 1994 dan dimulai pada tanggal 15 Januari 1995. Rumah ini diresmikan pada tanggal 12 Agustus 1995, bertepatan dengan hari lahir Bung Hatta sekaligus dalam rangka merayakan 50 tahun Indonesia Merdeka.&lt;/p&gt;', 1, '2021-08-23 18:33:15', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3989.763292567699!2d100.37095561540227!3d-0.30092103543138904!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2fd54780bbc3b44b%3A0xc6fe4d827fb903a2!2sBung%20Hatta%20Birthplace%20Museum!5e0!3m2!1sen!2sid!4v1629718312616!5m2!1sen!2sid\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\"></iframe>'),
(37, 23, 1, 'Istana Bung Hatta', '1629718490_IMG_20210813_115333.jpg', '&lt;p&gt;Istana Bung Hatta atau Gedung Negara Tri Arga adalah gedung bekas kediaman Wakil Presiden Indonesia Mohammad Hatta yang terletak di pusat Kota Bukittinggi, Sumatra Barat. Nama gedung mengambil simbol pemandangan sekelilingnya yang dikelilingi tiga gunung yaitu Gunung Singgalang, Gunung Marapi dan Gunung Sago. Luas lahan Istana Bung Hatta sebesar 12.25 meter persegi dan luas bangunan utama 3.672 meter persegi, bangunan ini mempunyai ciri khas gaya arsitektur kolonial. Di dalamnya terdapat banyak foto-foto yang menceritakan kehidupan Bung Hatta dari masa kecil hingga menjadi Wakil Presiden RI yang pertama.&lt;/p&gt;&lt;h2&gt;SEJARAH ISTANA BUNG HATTA&lt;/h2&gt;&lt;p&gt;Istana Bung Hatta atau Gedung Negara Tri Arga adalah gedung bekas kediaman Wakil Presiden Indonesia Mohammad Hatta yang terletak di pusat Kota Bukittinggi, Sumatra Barat. Sebelum kemerdekaan, gedung ini silih berganti menjadi tempat kedudukan Residen Padangse Bovenlanden dan Asisten Residen Agam. Selama delapan bulan antara bulan Juni 1947 hingga Februari 1948, gedung beralih fungsi menjadi tempat kedudukan Wakil Presiden Mohammad Hatta.&lt;/p&gt;&lt;p&gt;Menjelang Agresi II Militer Belanda pada 1948, Istana Bung Hatta dibumihanguskan bersama sejumlah bangunan di Bukittinggi. Saat pendudukan ibu kota Yogyakarta oleh Belanda, Bukittinggi yang memang peranan sebagai ibu kota Pemerintah Darurat Republik Indonesia menjadikan gedung ini sebagai salah satu basis PDRI. Setelah pemecahan Sumatra Tengah menjadi tiga provinsi pada 1958, Gubernur Sumatra Barat pertama Kaharudin Datuk Rangkayo Basa menggagas renovasi gedung dan menyematkan nama Gedung Negara Tri Arga.&lt;/p&gt;', 1, '2021-08-23 18:34:50', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3989.761554315718!2d100.36657051540237!3d-0.30563693543028064!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2fd538bc57f89b17%3A0xde8385e62f9fe789!2sBung%20Hatta%20Palace!5e0!3m2!1sen!2sid!4v1629718456827!5m2!1sen!2sid\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\"></iframe>'),
(38, 23, 3, 'Nasi Kapau', '1629729635_nasi_kapau.jpg', '&lt;p&gt;Nasi Kapau adalah nasi ramas khas nagari Kapau, Tilatang Kamang, Kabupaten Agam, Sumatra Barat. Nasi ramas ini terdiri dari nasi, sambal, dan lauk pauk khas Kapau, gulai sayur nangka (cubadak), gulai tunjang (urat kaki kerbau atau sapi), gulai cangcang (tulang dan daging kerbau), gulai babek (babat) atau paruik kabau. Nasi kapau standar selalu dilengkapi gulai nangka ciri khas nasi kapau.&amp;nbsp;&lt;br&gt;&lt;br&gt;Gulai nangka tidak menggunakan banyak santan dan tidak terlalu kental. Gulai dicampur kacang panjang, kol, rebung, pakis, dan jengkol. Di samping gulai nangka, hampir seluruh lauk nasi kapau terdiri dari masakan daging-daging. Gulai usus (gulai tambunsu) campuran telur ayam dan tahu yang dimasukkan ke usus sapi (karena usus kerbau lebih keras), gulai ikan, gulai tunjang, ayam panggang, teri balado, tongkol balado, dendeng balado, goreng belut, dan sambal lado hijau. Lauk nasi Kapau lainnya berupa ayam goreng, ayam goreng hijau gulai ayam, rendang ayam, rendang daging. Beras nasi kapau harus bermutu tinggi, umumnya dikirim dari Bukittinggi dan Agam.&lt;/p&gt;', 1, '2021-08-23 21:40:35', ''),
(39, 23, 3, 'Lamang Tapai', '1629729955_Lamang-Tapai.jpg', '&lt;p&gt;Lamang tapai adalah salah satu makanan khas dari Kabupaten Tanah Datar, Sumatera Barat. Lamang atau lemang merupakan olahan dari beras ketan putih yang dimasak dengan campuran santan. Cara memasaknya tergolong unik, yaitu campuran beras ketan dan santan dimasukkan ke dalam ruas bambu. Di dalam bambu itu sebelumnya sudah dibalut dengan daun pisang untuk menciptakan aroma sedap serta menjaga adonan agar tidak lengket saat lamang sudah matang.&amp;nbsp;&lt;br&gt;&lt;br&gt;Setelah itu, bambu berisikan adonan lamang tersebut dibakar menggunakan bara api dengan posisi tegak. Teknik ini merupakan tradisi yang amat penting dan tetap dipertahankan. Pasalnya jika memasak lamang menggunakan alat berteknologi canggih, tidak akan mampu menghasilkan cita rasa dan aroma khas lamang.&amp;nbsp;&lt;br&gt;&lt;br&gt;Sementara itu, Tapai atau lebih dikenal tape merupakan hasil fermentasi dari beras ketan merah setelah dilumuri ragi. Pengolahan ketan merah ini melalui proses fermentasi selama beberapa hari tanpa dimasak. Tapai yang baik akan menghasilkan rasa manis legit dan sedikit asam.&lt;/p&gt;', 1, '2021-08-23 21:45:55', ''),
(40, 23, 3, 'Bubur Kampiun', '1629730224_Bubur-Kampiun-Khas-Sumatera-Barat-Perpaduan-Legit-dan-Manis-6-Jenis-Bubur-5-1.jpg', '&lt;p&gt;Bubur kampiun adalah bubur khas dari Sumatra Barat. Bubur ini terbuat dari campuran beberapa jenis bubur dan makanan seperti ketan putih yang dikukus, bubur putih atau bubur sumsum, bubur ketan hitam, kolak pisang/ubi, lupis, bubur kacang hijau atau kacang padi dan bubur conde atau candil.&amp;nbsp;&lt;br&gt;&lt;br&gt;Sama seperti kebanyakan bubur dari daerah lain, bubur kampiun juga bercitarasa cenderung manis, gurih dan memiliki tekstur yang lembut di mulut. Bubur ini biasa dihidangkan sebagai hidangan sarapan, hidangan berbuka puasa, hingga hidangan saat pesta pernikahan adat minangkabau.&lt;/p&gt;&lt;p&gt;Sejarah Bubur Kampiun&lt;/p&gt;&lt;p&gt;Pada tahun 1960-an, PRRI(Pemerintahan Revolusioner Republik Indonesia) mengadakan Lomba Kreasi Membuat Bubur di Desa Jambuair, Banuhampu, Bukittinggi. Saat itu, seorang nenek yang bernama Amai Zona datang terlambat ke lomba tanpa persiapan apapun. Nenek Amai mencampurkan beberapa jenis buburnya yang tidak habis dijual saat pagi hari. Tak disangka, Nenek Amai memenangkan lomba ini. Pada saat ditanya oleh panitia, apa nama bubur kreasi ini, dengan spontan nenek itu menjawab bubur kampiun, nama kampiun didapat dari kata &quot;champion&quot; yang dalam bahasa inggris berarti &quot;juara&quot;.&lt;/p&gt;', 1, '2021-08-23 21:50:24', ''),
(41, 23, 3, 'Keripik Sanjai', '1629730424_Keripik_Sanjai_Basslado_.jpg', '&lt;p&gt;Keripik Sanjai adalah sejenis peganan kerupuk dari singkong yang diparut tipis lalu digoreng dan diberi garam sebagai penyedapnya. Kerupuk ini amat populer sebagai makanan oleh-oleh khas kota Bukitinggi, Sumatra Barat.&amp;nbsp;&lt;br&gt;&lt;br&gt;Keripik Sanjai terdiri dari tiga rasa yaitu Karupuak Sanjai Tawar, Karupuak Sanjai Saka dan Karupuak Sanjai Balado. Karupuak Sanjai Tawar adalah kerupuk sanjai yang tidak menggunakan lado(cabai)ataupun Gula merah melainkan hanya diberi garam. Karupuak Sanjai Saka adalah Kerupuk sanjai yang diberi atau dioleskan Gula merah. Karupuak Balado adalah Kerupuk sanjai yang diberi bumbu balado.&lt;/p&gt;&lt;h2&gt;Sejarah Keripik Sanjai&lt;/h2&gt;&lt;p&gt;Industri keripik singkong balado atau keripik sanjai berkembang pesat di Kota Bukittinggi sejak dullu kala dengan bentuk industri rumah tangga (IRT). &amp;nbsp;Industri tersebut tumbuh dan berkembang dengan merek yang bervariasi dengan ciri khas dan inovasi yang bervariasi pula.&amp;nbsp;&lt;br&gt;&lt;br&gt;Sejarah keripik sanjai bermula dari sebuah kampung yang bernama Sanjai yang terletak di bagian utara Kota Bukittinggi. Kampung ini terletak di Desa Manggis, Kelurahan Manggis Gantiang Sanjai, Kota Bukittinggi. Usaha keripik di Jalan Sanjai ini diperkirakan mulai muncul sekitar tahun 1970-an.&amp;nbsp;&lt;/p&gt;', 1, '2021-08-23 21:53:44', ''),
(42, 23, 2, 'Taman Margasatwa dan Budaya Kinantan', '1629732313_kinantan_4.jpg', '&lt;p&gt;Taman Margasatwa dan Budaya Kinantan atau lebih dikenal dengan nama Kebun Binatang Bukittinggi merupakan salah satu kebun binatang tertua yang ada di Indonesia dan satu-satunya di Sumatra Barat, dengan koleksi hewan terlengkap di pulau Sumatra. Kebun binatang ini terletak di atas Bukit Cubadak Bungkuak, Bukittinggi, Sumatra Barat, Indonesia.&lt;/p&gt;&lt;h2&gt;Sejarah Taman Margasatwa dan Budaya Kinantan&lt;/h2&gt;&lt;p&gt;Pendirian taman sudah dimulai sekitar tahun 1900-an atas ide seorang Controleur pemerintah Hindia Belanda yang bertugas di Fort de Kock, bernama Gravenzanden. Gravenzanden sangat terkesan dengan keindahan panorama bukit Malambuang (kini Cubadak Bungkuak) yang ada tepat di seberang bukit Jirek, lokasi Benteng Fort de Kock berada. Sehingga di awal berdirinya, memang bertujuan sebagai taman bunga.&amp;nbsp;&lt;br&gt;&lt;br&gt;Pada tahun 1929, taman ini mulai dikembangkan sebagai Kebun Binatang Bukittinggi atau punya nama Belanda sebagai Fort de Kocksche Dieren Park. Demi menambah koleksi, pihak pengelola bertukar hewan dengan Soerabaiasche Planten-en Dierentuin (Kebun Binatang Surabaya) sehingga mereka mendapat spesies fauna Indonesia Timur pada tahun 1933. Semenjak Indonesia merdeka, lokasi ini sempat berubah menjadi Taman Puti Bungsu dan akhirnya sejak tahun 1995 resmi disebut sebagai Taman Margasatwa dan Budaya Kinantan.&lt;/p&gt;', 1, '2021-08-23 22:25:13', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3989.7634922201446!2d100.3674478154023!3d-0.3003746354315262!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2fd538bce9b9b37f%3A0xbebfcc6c4f0cecf2!2sWildlife%20Areas%20and%20Cultural%20Kinantan!5e0!3m2!1sen!2sid!4v1629732140727!5m2!1sen!2sid\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\"></iframe>'),
(45, 23, 2, 'Ngarai Sianok', '1630307363_ngarai_sianok.jpg', '&lt;p&gt;Ngarai sianok merupakan sebuah lembah sempit yang dikelilingi oleh bukit-bukit bertebing curam yang dihiasi dengan aliran sungai kecil di tengahnya. Ngarai ini membentang sepanjang 15 kilometer dari sisi selatan Nagari Koto Gadang hingga Nagari Sianok Enam Suku. Ngarai ini memiliki kedalaman tebing yang mencapai 100 meter dan lebar celah sekitar 200 meter.&lt;/p&gt;&lt;p&gt;Patahan di Sianok ini merupakan bagian dari Patahan (Sesar) Semangko yang membelah Pulau Sumatera menjadi dua bagian memanjang dari Aceh hingga Teluk Semangka di Lampung. Sesar Semangko sendiri merupakan lokasi patahan yang membentuk Pegunungan Bukit Barisan. &lt;a href=&quot;https://id.wikipedia.org/wiki/Patahan&quot;&gt;Patahan&lt;/a&gt; ini membentuk dinding yang curam, bahkan tegak lurus dan membentuk lembah yang hijau hasil dari gerakan turun kulit bumi (sinklinal) yang dialiri &lt;a href=&quot;https://id.wikipedia.org/w/index.php?title=Batang_Sianok&amp;amp;action=edit&amp;amp;redlink=1&quot;&gt;Batang Sianok&lt;/a&gt; (batang berarti sungai, dalam &lt;a href=&quot;https://id.wikipedia.org/wiki/Bahasa_Minangkabau&quot;&gt;bahasa Minangkabau&lt;/a&gt;) yang airnya jernih. Di zaman &lt;a href=&quot;https://id.wikipedia.org/wiki/Kolonial_Belanda&quot;&gt;kolonial Belanda&lt;/a&gt;, jurang ini disebut juga sebagai &lt;i&gt;karbouwengat&lt;/i&gt; atau &lt;i&gt;kerbau sanget&lt;/i&gt;, karena banyaknya kerbau liar yang hidup bebas di dasar ngarai ini.&lt;/p&gt;', 1, '2021-08-30 14:09:23', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3989.7607816124087!2d100.35979996540236!3d-0.3077100854298194!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2fd538b0fba6f0ab%3A0xadcd8a2d36fea132!2sNgarai%20Sianok!5e0!3m2!1sen!2sid!4v1630307321641!5m2!1sen!2sid\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\"></iframe>'),
(46, 23, 2, 'Danau Tarusan Kamang', '1630308496_5d864df7208ff.jpg', '&lt;p&gt;Danau Tarusan Kamang terletak di Jorong Babukik dan Jorong Halalang, Nagari Kamang Mudiak, Kecamatan Kamang Magek, Kabupaten Agam, Sumatra Barat. Danau ini dikatakan hanya berisi air pada musim-musim tertentu. Suatu waktu terlihat begitu luas, tetapi dalam waktu yang tidak bisa diperkirakan, danau ini bisa berubah menjadi hamparan padang rumput hijau. Pada saat danau ini berisi air, di bagian tengahnya terdapat semacam tumpukan tanah yang tidak dibenami air, oleh masyarakat setempat tumpukan tana itu disebut Padang Doto.&lt;/p&gt;&lt;p&gt;Danau Tarusan Kamang selama ini dimanfaatkan warga untuk budi daya ikan, kubangan kerbau, memancing, dan mandi. Saat kering, ikan-ikan yang menghiasi danau banyak terperangkap dalam tambak-tambak yang dipasang sebagian warga. Ada beragam jenis ikan di sana seperti pantau, nila, rayo, panser, bada putih.&lt;/p&gt;&lt;p&gt;Proses menghilangnya air danau ke dalam perut Bumi dan muncul di celah padang rumput yang hijau, tanpa bisa menebak waktunya diperkirakan terjadi karena adanya sungai bawah tanah. Sebagai danau karst, ketika air tanah naik, maka lorong-lorong di bawah bukit batu gamping akan menyemburkan air dan menutupi padang rumput. Tampaklah danau yang luas. Sebaliknya, ketika air sungai bawah tanah turun, air tersedot hingga hanya tampak padang rumput. Tidak ada waktu pasti, kapan danau surut dan berapa lama danau kering. Terakhir, pada tahun lalu, Danau Tarusan Kamang kering selama satu tahun. Air baru muncul lagi lima bulan lalu. Saat ini kawasan itu masih menjadi danau, tempat anak-anak berenang dan warga mencari ikan.&lt;/p&gt;&lt;p&gt;Danau ini diperkirakan sudah ada sejak 70 ribu tahun lalu sehingga tak ada satu pun warga yang membangun rumah di batas air yang akan berubah menjadi danau. Pebukitan karst di Danau Tarusan Kamang usianya jauh lebih tua daripada karst di Jawa. Karst di Kamang diperkirakan sudah berusia 400&ndash;300 juta tahun lalu, karenanya pepohonan di atasnya tumbuh subur.&lt;/p&gt;', 1, '2021-08-30 14:28:16', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3989.7932597999356!2d100.42677091541893!3d-0.2030750354625316!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2fd545b000000001%3A0xb737601b5aae679f!2sTarusan%20Kamang!5e0!3m2!1sen!2sid!4v1630308477267!5m2!1sen!2sid\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\"></iframe>'),
(47, 23, 2, 'Puncak Lawang', '1630309624_puncak_lawang.jpg', '&lt;p&gt;Puncak Lawang merupakan nama suatu puncak dataran tinggi di Kabupaten Agam Sumatra Barat. Dari tempat ini, kita bisa meihat keindahan Danau Maninjau secara utuh. Diatas puncak lawang ini ditumbuhi oleh pohon pinus yang membuat udara di area ini sangt segar. Puncak Lawang terletak di Kecamatan Matur, Kabupaten Agam, Sumatra Barat. Ini daerah puncak menuju Danau Maninjau.&lt;/p&gt;&lt;p&gt;Puncak Lawang memiliki ketinggian sekitar 1.210 meter di atas permukaan laut. Pada zaman penjajahan, tempat ini digunakan sebagai tempat peristirahatan bangsawan Belanda. Puncak Lawang sering digunakan untuk kejuaraan olahraga paralayang kelas internasional karena merupakan salah satu spot terbaik di Asia Tenggara. Untuk mencapai kawasan Puncak Lawang, kita akan melewati perjalanan dengan 44 belokan yaitu &lt;a href=&quot;https://id.wikipedia.org/wiki/Kelok_44&quot;&gt;Kelok 44&lt;/a&gt;.&lt;/p&gt;', 1, '2021-08-30 14:47:04', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d510691.3096403138!2d99.96254943281251!3d-0.26434479999998056!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2fd56b67ca739597%3A0xaec117f131aef258!2sPuncak%20Lawang!5e0!3m2!1sen!2sid!4v1630309615676!5m2!1sen!2sid\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\"></iframe>'),
(48, 23, 1, 'Batu Kurai V Jorong', '1630309877_batu-kurai.jpg', '&lt;p&gt;Batu Kurai Limo Jorong adalah salah satu peninggalan bersejarah yang ada di Bukittinggi. Dinamai sebagai Batu Kurai Limo Jorong sebab memiliki arti tempat musyawarah adat dengan lima suku. Monumen ini Terdiri dari lima buah bebatuan alam yang ditata secara melingkar.&lt;/p&gt;&lt;h2&gt;Sejarah Batu Kurai V Jorong&lt;/h2&gt;&lt;p&gt;Batu Kurai Limo Jorong didirikan oleh orang Kurai asli pada zaman dahulu yang berada di Jl.Kurai, Parit Antang, Kec. Aur Birugo Tigo Baleh, Kota Bukittinggi. Dinamakan Kurai Limo Jorong karena pada awalnya masyarakat yang menghuni kelima jorong di sana yaitu Tigo Baleh, Guguk Panjang, Aur Birugo, Mandiangin, dan Koto Selayan. Batu ini dibangun karena dahulunya tidak ada benda seperti kursi dan tembok. Batu Kurai Limo Jorong ini berguna sebagai tempat musyawarah untuk merencanakan sesuatu yang ingin dikerjakan untuk perubahan atau kemajuan jorong, misalnya musyawarah untuk membuat jalan, membuat aliran sawah, dan pemilihan untuk menggantikan datuk yang meninggal antar sukunya.&lt;/p&gt;', 1, '2021-08-30 14:51:17', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3989.7589174065547!2d100.38791761540237!3d-0.3126551354287154!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2fd5388b4f37845f%3A0xe9de26f522b89baa!2sBatu%20Limo%20Kurai%20Limo%20Jorong!5e0!3m2!1sen!2sid!4v1630309808985!5m2!1sen!2sid\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\"></iframe>'),
(49, 23, 1, 'Tugu Perang Kamang dan Manggopoh', '1630309950_tugu-perang-kamang.png', '&lt;p&gt;Tugu Perang Kamang dan Manggopoh terbuat dari beton yang terbagi menjadi dua bagian, yaitu bagian atas berupa bentuk kerucut yang menjulang ke atas dan bagian bawah berbentuk segi empat. Keseluruhan tugu ini memiliki tinggi 4,60 meter dan lebar 1 x 1 meter. Tugu ini mempunyai tembok keliling berukuran 2,6 x 2,6 m. Pada bagian segi empat, di tengah-tengahnya terdapat inskripsi berbahasa Belanda yang berbunyi: &quot;GEDENKNAALD TER HERDENGKING AAN GESNENVELDEN TE KAMANG EN MANGGOPOH OPSTAND 15 JUNI 1908 &quot;, artinya adalah &quot;Mengenang peristiwa perang Kamang dan Manggopoh yang terjadi pada 15 Juni 1908 &quot;.&lt;/p&gt;&lt;h2&gt;Sejarah Tugu Perang Kamang dan Manggopoh&lt;/h2&gt;&lt;p&gt;Tugu ini adalah tugu peringatan Perang Kamang dan Manggopoh yang terjadi beriringan. Perang Kamang jatuh pada tanggal 15 Juni 1908 dan Perang Manggopoh jatuh pada tanggal 16 Juni 1908. Perang ini merupakan perlawanan rakyat Minangkabau melawan Penetapan Kebijakan Belasting (pajak) oleh Pemerintah Kolonial Belanda. Perang Kamang dan Perang Manggopoh saling berkaitan karena memiliki kesamaan sebab dan adanya komunikasi antara pemimpin perang di Kamang dengan Pemimpin perang di Manggopoh.&lt;/p&gt;', 1, '2021-08-30 14:52:30', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3989.76173344061!2d100.36733171540234!3d-0.3051543354303978!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2fd538bd1ff164a7%3A0xcea33881870dc19!2sJam%20Gadang%20Bukittinggi!5e0!3m2!1sen!2sid!4v1623753192983!5m2!1sen!2sid\"  height=\"400\" width=\"100%\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\"></iframe>');

-- --------------------------------------------------------

--
-- Table structure for table `topics`
--

CREATE TABLE `topics` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `topics`
--

INSERT INTO `topics` (`id`, `name`, `description`) VALUES
(1, 'Cagar Budaya', ''),
(2, 'Destinasi Wisata', ''),
(3, 'Kuliner', '');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `admin` tinyint(4) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `admin`, `username`, `email`, `password`, `created_at`) VALUES
(23, 1, 'jihanafahma', 'fahmajihan22@gmail.com', '$2y$10$EL8QYlilNnfV40Vkhn9WqepbJVNLnipF65RjJknf/GeRAJWPyp0im', '2021-08-12 07:45:40'),
(27, 1, 'ujicoba', 'ujicoba@gmail.com', '$2y$10$jpisHIJMams9/T1fJbgmWuJEA0atv0W.QMw3bQ9GHhaisYYkoAioS', '2021-08-30 04:50:09'),
(28, 0, 'aaa', 'aaa@gmail.com', '$2y$10$eudpFJeAx4lTkB0jO0Z/wOy7XrnPQskDgPf2OLId0e6Hkp46vVvCC', '2021-09-09 14:55:55'),
(29, 0, 'garyzulfian', 'garyzulfian@gmail.com', '$2y$10$ec18H2oKL4X.8BB37QtWUuZO4.rLwvT2GPZT.qBJppzQtfRRKx4.u', '2021-09-09 15:20:08'),
(30, 0, 'Siapaya', 'piringpecah@gmail.com', '$2y$10$Xb9DkfYdQjXDKoNDHvUqZuMbu5SIKweUHzscNHPlJy5XHeln0bFyu', '2021-09-09 15:59:56'),
(31, 0, 'mrizkiirv12', 'kiki.irvansyah@gmail.com', '$2y$10$XM6Bf45LAAWDXw8rv8EfLOevzj3UjEmtnS16bsNDTqsDZP5ykj9V2', '2021-09-09 16:49:33'),
(32, 0, 'Utri Satria Putra', 'u3satria@gmail.com', '$2y$10$WNHM9hBf8aeshlKx/z26GOPlaAqTszMmeRrB7w0RpFZjcGIpf.RI6', '2021-09-14 06:50:50'),
(33, 0, 'alyashafss', 'itslay99@gmail.com', '$2y$10$EZgBEzlpqAtyReezVz0S..ck0HANmBv1ksuvv5WDA27GU8z7HBsrC', '2021-11-10 14:20:18');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inboxes`
--
ALTER TABLE `inboxes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `topic_id` (`topic_id`);

--
-- Indexes for table `topics`
--
ALTER TABLE `topics`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `inboxes`
--
ALTER TABLE `inboxes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `topics`
--
ALTER TABLE `topics`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_ibfk_1` FOREIGN KEY (`topic_id`) REFERENCES `topics` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
