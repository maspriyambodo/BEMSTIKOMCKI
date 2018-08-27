-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 13, 2018 at 09:39 AM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bemstiko_anggota`
--

-- --------------------------------------------------------

--
-- Table structure for table `anggota_bem`
--

CREATE TABLE `anggota_bem` (
  `id` int(11) NOT NULL,
  `nama` varchar(25) NOT NULL COMMENT 'nama lengkap',
  `tmp_lahir` varchar(50) DEFAULT NULL COMMENT 'Tempat Lahir',
  `tgl_lahir` date DEFAULT NULL COMMENT 'Tanggal Lahir',
  `nim` int(11) NOT NULL COMMENT 'No Induk Mahasiswa',
  `kelas` int(11) NOT NULL,
  `jabatan` int(11) NOT NULL COMMENT 'Posisi dalam BEM',
  `smt` varchar(3) NOT NULL,
  `status` int(11) NOT NULL COMMENT '1. Aktif 2. Non-Aktif',
  `sosmed` int(11) NOT NULL COMMENT 'id table sosial_media',
  `quote` varchar(255) NOT NULL COMMENT 'Quote / Kata Mutiara',
  `pict1` varchar(255) NOT NULL COMMENT 'Foto Profil 1',
  `pict2` varchar(255) NOT NULL COMMENT 'Foto Profil 2'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `anggota_bem`
--

INSERT INTO `anggota_bem` (`id`, `nama`, `tmp_lahir`, `tgl_lahir`, `nim`, `kelas`, `jabatan`, `smt`, `status`, `sosmed`, `quote`, `pict1`, `pict2`) VALUES
(1, 'Aryo Seto', 'Bekasi', '1995-09-19', 1501110024, 1, 1, 'VI', 1, 1, '“Benar di mata manusia belum tentu benar di mata Allah, begitu juga buruk di mata manusia belum tentu buruk di mata Allah”', 'assets\\images\\anggota\\aryos1.jpg', 'assets\\images\\anggota\\aryos2.jpg'),
(2, 'Septian Eka Prasetiyo', NULL, NULL, 1502110016, 1, 2, 'VI', 1, 2, '', 'assets\\images\\anggota\\1.png', 'assets\\images\\anggota\\2.png'),
(3, 'Eri Novitasari', NULL, NULL, 1502110004, 1, 3, 'VI', 1, 3, '', 'assets\\images\\anggota\\1.png', 'assets\\images\\anggota\\2.png'),
(4, 'Ni luh listarini', NULL, NULL, 1601110065, 4, 4, 'IV', 1, 4, '', 'assets\\images\\anggota\\1.png', 'assets\\images\\anggota\\2.png'),
(5, 'Frenskilia Malsi Manggala', NULL, NULL, 1601110031, 1, 5, 'IV', 1, 5, '', 'assets\\images\\anggota\\1.png', 'assets\\images\\anggota\\2.png'),
(6, 'Siti Raysyah', NULL, NULL, 1712011026, 2, 6, 'II', 1, 6, '', 'assets\\images\\anggota\\1.png', 'assets\\images\\anggota\\2.png'),
(7, 'Bimo Setyawan Prasojo', NULL, NULL, 1601110019, 1, 7, 'IV', 1, 7, '', 'assets\\images\\anggota\\1.png', 'assets\\images\\anggota\\2.png'),
(8, 'Heni Nengsi', NULL, NULL, 1602110015, 3, 7, 'IV', 1, 8, '', 'assets\\images\\anggota\\1.png', 'assets\\images\\anggota\\2.png'),
(9, 'M. Rizki Fadillah', NULL, NULL, 1602110021, 3, 7, 'IV', 1, 9, '', 'assets\\images\\anggota\\1.png', 'assets\\images\\anggota\\2.png'),
(10, 'Niat Juwita Haluwa', NULL, NULL, 1601110006, 3, 7, 'IV', 1, 10, '', 'assets\\images\\anggota\\1.png', 'assets\\images\\anggota\\2.png'),
(11, 'Miftahussalam', NULL, NULL, 1502110011, 4, 8, 'VI', 1, 11, '', 'assets\\images\\anggota\\1.png', 'assets\\images\\anggota\\2.png'),
(12, 'Raga Permana', NULL, NULL, 1711011024, 2, 8, 'II', 1, 12, '', 'assets\\images\\anggota\\1.png', 'assets\\images\\anggota\\2.png'),
(13, 'Achmad Dwi Apriyanto', NULL, NULL, 1501110002, 4, 8, 'VI', 1, 13, '', 'assets\\images\\anggota\\1.png', 'assets\\images\\anggota\\2.png'),
(14, 'Ageng Muhammad Wijayanto', NULL, NULL, 1501110065, 1, 8, 'VI', 1, 14, '', 'assets\\images\\anggota\\1.png', 'assets\\images\\anggota\\2.png'),
(15, 'Priyambodo', NULL, NULL, 1501110069, 3, 8, 'VI', 1, 15, 'You can\'t do anything without trying !', 'assets\\images\\anggota\\1.png', 'assets\\images\\anggota\\2.png'),
(16, 'Renvill Yazhoki', NULL, NULL, 1601110165, 3, 9, 'IV', 1, 16, '', 'assets\\images\\anggota\\1.png', 'assets\\images\\anggota\\2.png'),
(17, 'Gladis Mei Agusta', NULL, NULL, 1601110033, 4, 9, 'IV', 1, 17, '', 'assets\\images\\anggota\\1.png', 'assets\\images\\anggota\\2.png'),
(18, 'Rosita Oktaviani', NULL, NULL, 1501110078, 3, 9, 'VI', 1, 18, '', 'assets\\images\\anggota\\1.png', 'assets\\images\\anggota\\2.png'),
(19, 'Wibawa Bangkit', NULL, NULL, 2147483647, 2, 9, 'II', 1, 19, '', 'assets\\images\\anggota\\1.png', 'assets\\images\\anggota\\2.png'),
(20, 'Mardianus Efendy', NULL, NULL, 1501110054, 1, 10, 'VI', 1, 20, '', 'assets\\images\\anggota\\1.png', 'assets\\images\\anggota\\2.png'),
(21, 'Anis Senika', NULL, NULL, 1711011016, 2, 10, 'II', 1, 21, '', 'assets\\images\\anggota\\1.png', 'assets\\images\\anggota\\2.png'),
(22, 'Putri Nugraheni', NULL, NULL, 1712011017, 2, 10, 'II', 1, 22, '', 'assets\\images\\anggota\\1.png', 'assets\\images\\anggota\\2.png'),
(23, 'Muhammad Padli', NULL, NULL, 1711011054, 2, 10, 'II', 1, 23, '', 'assets\\images\\anggota\\1.png', 'assets\\images\\anggota\\2.png');

-- --------------------------------------------------------

--
-- Table structure for table `m_kelas`
--

CREATE TABLE `m_kelas` (
  `id` int(11) NOT NULL,
  `nama_kelas` varchar(13) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `m_kelas`
--

INSERT INTO `m_kelas` (`id`, `nama_kelas`) VALUES
(1, 'Reguler Pagi'),
(2, 'Reguler Malam'),
(3, 'Sabtu'),
(4, 'Minggu');

-- --------------------------------------------------------

--
-- Table structure for table `m_ukm`
--

CREATE TABLE `m_ukm` (
  `id` int(11) NOT NULL,
  `nama_ukm` varchar(9) NOT NULL,
  `sejarah` varchar(2500) DEFAULT NULL,
  `deskripsi` varchar(400) NOT NULL,
  `kepanjangan` varchar(25) NOT NULL,
  `icon` varchar(35) NOT NULL,
  `visi` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `m_ukm`
--

INSERT INTO `m_ukm` (`id`, `nama_ukm`, `sejarah`, `deskripsi`, `kepanjangan`, `icon`, `visi`) VALUES
(1, 'IT', '\r\n\r\nSejarah UKM IT itu sangatlah panjang, Beberapa peridode pergantian pemimpin Ketua UKM IT pun sudah banyak terjadi dan mengalami beberapa pergantian, adapun hal suka duka didalam UKM IT Dari awal berdiri hingga sekarang. Berikut ini adalah sejarah singkat adanya UKM IT di Kampus STIKOM CKI. Pada awalnya UKM IT hanyalah perkumpulan dari mahasiswa/mahasiswi kampus STIKOM CKI, akan tetapi perkumpulan mereka bukanlah perkumpulan biasa-biasa saja tanpa tujuan, perkumpulan mereka itu terorganisasi dan mempunya tujuan, akhirnya tercetus lah untuk membuat suatu Unit Kegiatan Mahasiswa yaitu UKM IT. UKM ini terbentuk karna mereka sering melakukan pertemuan / perkumpulan mereka di laboratorium komputer.\r\n\r\nPak Sapta ialah salah satu orang yang pernah menjabat jadi ketua UKM IT. Pada saat itu pula LOGO pertama dari UKM IT  muncul.\r\n\r\nLogo ini memiliki filosofi tersendiri bagi Pak Sapta, dan untuk semua yang pernah berada dalam UKM ini.\r\n\r\nSeperti yang sudah ditulis diawal pergantian ketua UKM IT itu pasti, periode selanjutnya itu pada masa periode Kak Oki Setiawan, pada periode ini sebelum habis masa jabatan ketua UKM IT, sudah mengalami 2x (dua kali) pergantian ketua. Kak Oki digantikan oleh kak Ajeng dan Kak ajeng digantikan Kak Iswadi. Dan pada periode ini pula pernah terselenggara sebuah seminar dimana untuk panitianya UKM IT menggandeng cabang lain dari STIKOM CKI, untuk team panitia seminar periode ini ada 2 kampus STIKOM CKI yang terlibat yaitu STIKOM CKI BUARAN dan STIKOM CENGKARENG. Lalu untuk pergantian periode jabatan baru, pada periode ini jabatan ketua dipercayakan kepada Kak Nopri, periode ini pun pernah terselenggara Seminar UKM IT sebanyak 2x (dua kali) .\r\n\r\nUntuk Kesimpulannya pendirian UKM IT ini terjadi karna ada sebuah perkumpulan mahasiswa/mahahsiswi pada masa dibawah periode Pak Sapta dan dibawah periode BEM Irvan, karna perkumpulan yang terorganisir, dan juga sering berkumpul pada laboratorium Komputer maka terbentuklah UKM IT yang berdiri sampai sekarang.', 'UKM IT adalah salah satu kegiatan unit mahasiswa yang berfokus pada penggunaan teknologi informasi dan sebagai sarana mahasiswa untuk mengembangkan kemampuan dalam bidang IT baik program, desain dll. Diharapkan dengan adanya ukm ini dapat menumbuhkan rasa untuk maju dan berkembang dalam hal teknologi.', 'Informasi Teknologi', 'assets\\images\\it.jpg', 'Menjadi Unit Kegiatan Mahasiswa (UKM), sebagai tempat menyalurkan potensi-potensi  muda dalam perkembangan teknologi informasi.'),
(2, 'PCR', NULL, '', 'Project Creative Revoluti', '', ''),
(3, 'LDK', NULL, '', 'Lembaga Dakwah Kampus', '', ''),
(4, 'Rokris', NULL, '', 'Rohani Kristen', '', ''),
(5, 'CPC', NULL, '', 'CKI Photography Community', '', ''),
(6, 'Olah Raga', NULL, '', 'Olah Raga', '', ''),
(7, 'MATRAS', NULL, '', '', '', ''),
(8, 'Musik', NULL, '', 'Musik', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `posting`
--

CREATE TABLE `posting` (
  `id` int(11) UNSIGNED NOT NULL,
  `post_author` int(11) DEFAULT NULL COMMENT 'posted by',
  `post_title` text,
  `post_content` longtext,
  `post_date` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `post_status` int(11) DEFAULT NULL COMMENT '1. aktif 2. edited 3.deleted',
  `comment_status` int(11) DEFAULT NULL COMMENT '1. enable 2. disable',
  `post_modified` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT 'modified date',
  `post_image` int(11) DEFAULT NULL,
  `jenis` int(11) DEFAULT NULL COMMENT '1. News 2. Blog'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `posting`
--

INSERT INTO `posting` (`id`, `post_author`, `post_title`, `post_content`, `post_date`, `post_status`, `comment_status`, `post_modified`, `post_image`, `jenis`) VALUES
(1, 1, 'RAPAT SEKERTARIS CKI FEST 2017', '\r\n\r\nBismillahirohmanirohim\r\nAssalamualaikum\r\nWarahmatullahi\r\nWabarakatuh\r\n\r\nSalam sejahtera untuk kita semua.\r\n\r\nKami memberitahukan untuk Rapat Sekretaris Organisasi dihadiri Sekretaris BEM dan UKM, Untuk membahas rapat:\r\n\r\n– Rapat pembahasan tukpoksi sekretaris organisasi mahasiswa (ORMAWA)\r\n\r\nDengan Adanya kegiatan tersebut, kami harapkan kehadiran setiap Sekretaris BEM dan UKM yang akan diadakan pada :\r\n\r\nHari : Sabtu, 15 Juli 2017\r\nWaktu : 15:00 WIB (diusahakan On Time)\r\nTempat : RUANG 301 KAMPUS A STIKOM CKI\r\n\r\nINFORMASI : 085780829980 (INDRA)\r\nDan kami mohon kiranya, dapat meluangkan waktu dan ikut hadir dalam kegiatan ini.\r\n\r\nNote :\r\n– Gunakan Almamater, Saat Kegiatan Rapat ini\r\n– Untuk Parkir Kendaraan di DEPAN Kampus\r\n\r\nMARI SUKSESKAN BERSAMA ACARA INI UNTUK KAMPUS STIKOM CKI LEBIH BAIK!\r\nMAJU & BERKARYA BERSAMA!\r\n\r\nTerima Kasih\r\nWalaikumsallam\r\nWarahmatullahi\r\nWabarakatuh\r\n\r\nSALAM BEM PERIODE 2017-2018\r\n\r\nKABINET PERUBAHAN\r\n\r\nKREATIF, INOVATIF DAN BERGERAK\r\n', '2018-04-11 15:14:51', 1, 1, NULL, 1, 1),
(2, 1, 'Serah Terima Jabatan Kepengurusan BEM dan UKM 2017', '\r\n\r\nPada hari minggu tanggal 19 maret 2017 , telah dilaksanakan serah terima jabatan kepengurusan BEM dan UKM 2017 semua pengurus BEM dan UKM menghadiri sertijab atau Serah terima jabatan pukul 7 pagi untuk persiapan acara dan acara dimulai tepat pukul 9 pagi. Pembawa acara sertijab yaitu Resty dan Sari serta di hadiri Bpk Dadang , Bpk Hendri Irawan , Bpk Yuma Akbar serta perwakilan dosen yaitu Bpk sudirman. Kemudian acara dimulai dengan berdo’a dilanjutkan dengan menyanyikan lagu nasional “Indonesia Raya” dan lagu wajib nasional “Tanah Airku” yang di pimpin oleh saudari Maulidyah Intan .\r\n\r\nLalu sambutan acara dilanjutkan dengan sambutan yang disampaikan oleh Ketua BEM sebelumnya Ricky Julianus , dan sambutan selanjutnya disampaikan oleh Ketua BEM periode 2017-2018 yaitu Nur arif fadlilah dan selanjutya sambutan yang disampaikan oleh bapak Dadang Iskandar. Kemudian acara pelantikan BEM dan UKM , hadirin dan pengurus yang baru berdiri dan membacakan sumpah Bem yang dibacakan oleh pak Dadang Iskandar kemudian bem mencium bendera merah putih dan bendera Stikom CKI sambil dilantunkan lagu Syukur dengan hitmat.\r\n\r\nKemudian sambutan yang akan di sampaikan oleh Bapak Yuma Akbar dan pembagian SK kepada setiap pengurus BEM dan UKM di panggil satu persatu untuk menerima SK (Surat Keputusan) nya masing masing kemudian, penyampaian pesan dan kesan dari Alumni dari ketua BEM periode lalu dimulai dari Edi Mario dan Sammy, mereka menyampaikan tentang bagaimana suka duka  menjadi Ketua Bem.\r\n\r\nSammy menyampaikan nasehat serta wejangan untuk pengurus BEM yang baru dan mengucapkan selamat bertugas kepada pengurus BEM yang baru , setelah acara semua sudah selesai diakhiri dengan foto bersama dari masing – masing pengurus BEM dan UKM , dan acara sertijab telah berakhir. Semoga dari acara serah terima jabatan ini setiap pengurus Bem dan Ukm dapat menjalani masing masing tugasnya dengan baik.\r\n', '2018-04-10 15:18:57', 1, 1, NULL, 2, 1),
(3, 1, 'Rapat BEM dan UKM CKI FEST 2017', '\r\n\r\nKami memberitahukan untuk Rapat Acara Kegiatan untuk segera dihadiri Panitia dan PJ UKM, Untuk membahas rapat:\r\n\r\n– Rapat pembahasan event kompetisi\r\n– Pembahasan konsep setiap kompetisi oleh PJ UKM\r\n\r\nDengan Adanya kegiatan tersebut, kami harapkan kehadiran setiap *PANITIA dan PJ UKM yang akan diadakan pada :\r\n\r\nHari : Minggu, 09 Juli 2017\r\nWaktu : * 16.00 WIB* (diusahakan On Time)\r\nTempat : RUANG 302 KAMPUS A STIKOM CKI\r\n\r\nINFORMASI : 08128102619 (ASEP OVID)\r\nDan kami mohon kiranya Seluruh perwakilan pengurus UKM dan PANITIA, dapat meluangkan waktu dan ikut hadir dalam kegiatan ini.\r\n\r\nNote :\r\n– Gunakan Almamater, Saat Kegiatan Rapat ini\r\n– Untuk Parkir Kendaraan di DEPAN Kampus\r\n\r\nMARI SUKSESKAN BERSAMA ACARA INI UNTUK KAMPUS STIKOM CKI LEBIH BAIK!\r\nMAJU & BERKARYA BERSAMA!\r\n\r\nSALAM BEM PERIODE 2017-2018\r\n\r\nKABINET PERUBAHAN\r\n\r\nKREATIF, INOVATIF DAN BERGERAK\r\n', '2018-04-09 15:21:15', 1, 1, NULL, 3, 1),
(4, 1, 'The Dreams Diary', 'Di dunia ini setiap orang pasti mempunyai mimpi dan cita cita nya masing masing. Banyak orang bermimpi menjadi orang sukses dengan berbagai macam profesi. Menjadi dokter, jadi pilot, atau bahkan jadi artis.\r\n\r\nTapi ternyata dari sekian banyak orang di dunia ini ada juga yang mimpi nya harus ditunda / bahkan tidak terwujud  karena adanya beberapa faktor yang berpengaruh dalam hidup pribadi masing masing. Mulai dari adanya faktor biaya pendidikan, kesenjangan social, hingga karena harus mengalah pada keinginan orang tua.\r\n\r\nSaya mau sedikit sharing tentang mimpi saya, dimana saya adalah seorang mahasiswi tingkat akhir yang sedang merampungkan KKP ( kuliah kerja praktek ) di sebuah kampus swasta di Jakarta. Saya nyasar masuk kandang Informatika, kenapa saya katakan nyasar ? karena saya sekarang merasa sangat salah memilih jurusan ( ada yang seperti saya ? *nyengir pait* )\r\n\r\nHarapan saya untuk mahasiswa yang merasa salah jurusan tetap semangat ya guys. Saya sangat bisa merasakan kesedihan kalian, dari mulai males datang ke kampus, ke kampus tapi gapernah masuk kelas, atau malah masuk kelas tapi ga merhatiin dosen, malah mikirin gebetan ( mohon bersabar ini ujian ) , ada lagi yang masuk kelas tapi ya ga konsen , demenya buka instagram mulu maenin IG History, poto poto , sampe tidur di kelas. Kalo kalian awalnya ngira kuliah itu se keren di FTV, mending matiin TV kalian deh  karena Fakta akan berkata lain.\r\n\r\nSejak kecil saya sangat suka pelajaran Bahasa Indonesia, saat yang lain suka Matematika / IPA / IPS , tapi tidak dengan saya karena menurut saya pelajaran itu membosankan, saya memang lemah dalam hal berhitung. Saya lebih tertarik seni dan bahasa. Waktu SMA pun saya aktif di kegiatan Jurnalis sekolah. Mulai dari bikin puisi, cerpen, sampe belajar nulis novel sediri.\r\n\r\nSedih gak sih ketika kalian merasa punya passion tapi malah dimatikan oleh orang terdekat kalian? Apalagi kalo kalian bukan type anak yang berani menentang. Bukan berarti saya mengajari adek adek buat jadi anak kaya malin kundang yah dek, tapi mudah mudahan siapapun yang membaca tulisan saya ini meski tidak sependapat dengan saya tapi mampu mencerna pesan kebaikan yang akan saya sampaikan.\r\n\r\nTeruntuk kalian yang merasa salah jurusan, tetap kembangkan hobby dan passion selama memang itu berdampak positif. Sedini mungkin jika kalian masih sekolah terutama bagi yang akan lulus SMA cobalah untuk kenali kemampuan diri sendiri, jangan labil ikut ikutan temen kuliah di sini karena kampusnya bagus, ikutan temen karena banyak yang daftar di  jurusan itu akhirnya kalian ngikutin juga lalu akhirnya seperti saya salah jurusanL, bagaimana dengan yang sudah tau passionya tapi tetap memilih jurusan lain karena ternyata kalian tau untuk masuk di jurusan yang kalian sukai banyak kendala? Tetap tegar bagai akar, kamu harus siap dengan konsekuensi kedepanya , hatimu harus sekuat baja . tetap jalani dan jangan pesimis ataupun lemah dengan keadaan.\r\n\r\nSejak kecil saya anak yang selalu menuruti keinginan orang tua, tanpa memikirkan keinginan saya sendiri. Saya selalu takut menyampaikan keinginan / pendapat saya. Hingga akhirnya orang tua saya ‘menanamkan cita cita beliau untuk harus saya wujudkan’ . Ayah saya suka sekali dengan pelajaran IPA, menyuruh saya belajar berhitung, disuruh sekolah farmasi, hingga disuruh ambil jurusan kebidanan. Sebagai anak saya sedih, saya tidak bisa menentang beliau karena beliau adalah orang tua saya, tapi saya juga tau kemampuan saya sampai dimana, untungnya ada beberapa kejadian yang membuat orang tua saya sadar bahwa passion saya memang bukan disitu. Meskipun sadar nya sudah terlambat tapi saya tetap bersyukur\r\n\r\nBanyak sekali fenomena bahwa ketika ‘cita cita orang tua saat masih mereka kecil tidak tercapai, maka mereka akan memaksakan anaknya untuk mewujudkan cita cita mereka’. Dan tanpa sadar itu bisa mematikan kreativitas anak. Saya setuju dengan teori Albert Einstein bahwa ‘ Setiap anak itu Jenius. Tapi jika anda menilai ikan dari cara dia memanjat pohon, maka dia akan merasa bodoh seumur hidup.\r\n\r\nImpian saya sampai saat ini adalah bukan menjadi seorang penulis terkenal tetapi menjadi penulis yang ‘Bermanfaat bagi orang lain dan mampu menginspirasi banyak orang’. Meskipun kuliah saya salah jurusan tapi saya tidak berhenti menulis dan tetap berusaha mengembangkan potensi saya, sebagai calon orang tua yang baik mulai dari sekarang tidak sepatutnya kita mematikan kreativitas anak. Kita bisa melatih itu dengan mampu menjadi pendengar yang baik kepada teman / sahabat kita atau bahkan siapapun itu jika memang dirasa perlu untuk di dengar. Mengubah pola pikir kita agar tidak menjadi manusia yang otoriter.\r\n\r\nPenulis : Meilia Citra', '2018-04-08 15:22:39', 1, 1, NULL, 4, 2),
(5, 1, 'Organisasi dan UKM, Penyelamat Salah Jurusan di Perkuliahan', 'Salah jurusan itu terkadang membuat kita dilema. Biasanya, ini disadari oleh para mahasiswa atau mahasiswi saat mendapatkan mata kuliah yang spesifik. Mungkin, jika mengetahui salah jurusan di semester awal, kita bisa memilih pindah ke jurusan lain.\r\n\r\nLalu, bagaimana jika kita mengetahuinya sudah di semester yang tinggi? Sementara untuk mengulang lagi tentu akan menghabiskan biaya yang tidak sedikit.\r\n\r\nMengikuti Unit Kegiatan Mahasiswa (UKM) dan organisasi kampus adalah jawabannya. Ini adalah cara kamu bisa melupakan salah jurusanmu dan menggali kemampuanmu yang sesungguhnya. Berikut adalah beberapa UKM dan organisasi yang bisa kamu ikuti di kampus.', '2018-04-07 15:24:40', 1, 1, NULL, 5, 2),
(6, 1, 'Mengikuti Jejak Sang Pencari Ilmu (Tholabul Ilmi)', '\r\n\r\n    Tholabul ‘ilmi faridhotun ‘alaa kulli muslimin wal muslimat minal mahdi ilal lahdi”\r\n    Artinya : Menuntut ilmu itu wajib bagi setiap muslim dan muslimah sejak dari ayunan hingga liang lahad.\r\n\r\nTholabul ‘Ilmi artinya mencari Ilmu karena mengharap ridho dan cinta kepada Allah SWT. sangatlah berperan bagi kehidupan semua makhluk hidup di dunia ini. Al ‘Ilmu menurut para ‘Ulama berasal dari kata ‘Alima – Ya’lamu – ‘Ilman.\r\nMaknanya adalah :Ma’rifah wal idrook, dalam bahasa Indonesia: Pengetahuan. Di Indonesia disebut Ilmu Pengetahuan, lalu seolah-olah diartikan Ilmu yang berseberangan dengan Ilmu Dien (Islam). Lalu dilengkapi sebutannya menjadi : Ilmu Pengetahuan dan Teknologi (IPTEK). Padahal sesungguhnya kata “Pengetahuan” itu sendiri adalah pengertian (definisi) secara etimologis (kebahasaan) dari kata “Ilmu”.\r\n\r\nJadi “Ilmu” dalam bahasa Arab, bahasa Indonesianya adalah: Pengetahuan. Lalu akhirnya menjadi Ilmu Pengetahuan, yang maknanya bukan Ilmu Dien. Maka kalau ada orang mengatakan Ilmu pengetahuan, maknanya: bukan Ilmu Dien. Ada juga yang mengartikan, terutama dari kalangan para ‘Ulama Ushul Fiqih, bahwa yang dimaksud dengan “Ilmu” adalah :\r\n\r\n    “Pengetahuan tentang sesuatu diatas fakta dan data, secara pasti”.\r\n\r\nSejak manusia lahir kedunia ini tidaklah mungkin semuanya tanpa ilmu dari manusia di lahirkan sampai ke ujung liang lahat pun semua ada ilmunya. Dunia ini pun tidak mungkin tercipta begitu saja dan semua itu ada ilmu dan prosesnya dan semua itu kembali dari sang khalik Allah SWT sebagai sumber ilmu yang menurunkannya kepada nabi dan Rasulnya dengan kitab-kitabnya termasuk Al-Quran (kitab Alam Semesta). Dalam sejarah peradaban sesungguhnya umat islam pernah mengalami kejayaan. Menurut Toby E. Huff dalam Bukunya The Rise Of Early Modern Science dari abad ke delapan hingga akhir abad keempat belas, ilmu pengetahuan Arab(Islam) adalah sains yang paling maju di dunia yang jauh melampai barat dan cina. Dalam masa itu telah lahir berbagai ilmuwan islam dengan latar belakang ilmu yang berbeda. Misalnya, Al-Razi, Ibnu Sina, Ibnu Tufayl, Ibnu Rusyd, Ibnu Khaldun Al-Kindi, Al- Ghazali, Al-Farabi dan lain sebagainya mereka ini merupakan ilmuwan dalam berbagai bidang; fisika, matematika, social, ekonomi, filsafat, kedokteran, teknik dan lain sebagainya sebagai ilmuwan islam yang dunia barat pun mengakuinya. Dalam Syariat Islam menuntut ilmu adalah kewajiban penting bagi seorang muslim daripada harta, bagaimana mau bahagia dunia dan akhirat kalau malas juga dalam mencari ilmunya.\r\n\r\nBahkan ada ungkapan yang berasal dari imam syafi’i beliau berkata: “jika kau menginginkan kebahagiaan dunia, maka carilah ilmu. Jika kau mencari kebahagian akhirat, maka carilah juga dengan ilmu” juga dari Ali bin Abi Thalib Ra. Yang di juluki Nabi Muhammad sebagai bab ulilm (Pintunya Ilmu) beliau berkata : “bahwa ilmu lebih baik daripada harta karena ilmu menjaga anda dan anda harus menjaga harta. Ilmu itu hakim sedangkan harta terhukum.” Harta berkurang bila di belanjakan sedangkan ilmu bertambah. Perihal Keutamaan ilmu, Ibnu Abbas ra. Menceritakan bahwa Allah SWT. Menyuruh Nabi Sulaiman bin Daud as. Untuk memilih harta atau kerajaan(kekuasaan). Nabi Sulaiman as.\r\n\r\nMemilih ilmu, maka Allah SWT. Pun menganugerahkan kepadanya harta dan kerajaan bersama ilmu sekaligus. Dalam ilmu harus ada proses yang di sebut pendidikan dan ilmu sebgai alatnya. Al-Ghazali adalah orang yang banyak mencurahkan perhatiannya terhadap bidang pengajaran dan pendidikan dalam kitabnya Ihya Ulumiddin. Adapun unsur-unsur pembentuk pengertian pendidikan dari al-Ghazali dapat dilihat dalam\r\npernyataan berikut:\r\n\r\n    “Sesungguhnya hasil ilmu itu ialah mendekatkan diri kepada Allah, Tuhan semesta alam, menghubungkan diri dengan ketinggian malaikat dan berhampiran dengan malaikat tinggi…”\r\n\r\n    “…dan ini, sesungguhnya adalah dengan ilmu yang berkembang melalui pengajaran dan bukan ilmu beku yang tidak berkembang.”\r\n\r\nJika kita perhatikan kutipan yang pertama, kata “hasil” menunjukkan proses, kata “mendekatkan diri kepada Allah” menunjukkan tujuan, dan kata “ilmu” menunjukkan alat. Sedangkan pada kutipan yang kedua merupakan penjelasan mengenai alat, yakni disampaikannya dalam bentuk pengajaran. Batas awal berlangsungnya proses pendidikan menurut Al-Ghazali, yakni sejak bertemunya sperma dan ovum sebagai awal manusia. Batas akhir pendidikan menurut Al-Ghazali sampai akhir hayatnya. Dari keterangan di atas pendidikan menurut Al-Ghazali adalah proses memanusiakan manusia sejak masa kejadiannya sampi akhir hayatnya melalui berbagai ilmu pengetahuan yang disampaikan dalam bentuk pengajaran secara bertahap di mana proses pengajaran itu menjadi tanggung jawab orang tua dan masyarakat. Pemikiran al-Ghazali dalam pendidikan juga bernuansa islami dan moral. Di samping itu, ia juga tidak mengabaikan masalah-masalah duniawiyah, sehingga ia juga menyediakan porsi yang sesuai dengan pendidikan.\r\n\r\nDan menurut imam Al-Ghazali ilmu di bagi dari dua kategori, pertama ilmu dikategorikan fardhu ain (individual) : artinya wajib dipelajari setiap Muslim, yaitu tsaqafah Islam yang terdiri dari konsepsi, ide, dan hukum-hukum Islam, bahasa Arab, sirah Nabi Saw, ulumul Qur & rsquo’an, tahfizh al-Quran, ulumul hadis, ushul fiqh, dll. Lalu kedua Ilmu yang dikategorikan fadhu kifayah (kewajiban kolektif), biasanya ilmuilmu yang mencakup sains dan teknologi IPTEK serta ilmu terapan-keterampilan, seperti biologi, fisika, kedokteran, pertanian, teknik, dll. Dan bagaimana apresiasi masyarakat muslim sekarang ini dengan adanya globalisasi dan dengan ide-ide-isme paham tak terbendung asal muasalnya.\r\n\r\nProf. Dr. Mulyadhi Kartanegara yang kini menjabat sebagai direktur Center For IslamicPhilosopical Studies and Information(CIPSI) memberikan pendapatnya mengajak kalangan umat islam untuk bangkit mengejar keterpurukan dan ketertinggalan, ada 5 pokok yang harus dilakukan umat muslim: Pertama, mengumpulkan segala bentuk dan karya-karya ilmuwan muslim Kedua, mencoba untuk mempela-jari dan membangkitkan kembali semangat berfilsafat dan berfikir kritis dalam tubuh umat islam Ketiga, mengirim sebanyak mungkin calon-calon sarjana ke negeri penguasa sains dan teknologi Keempat, mencoba membangitkan percobaan-percobaan ilmiah atau semangat penelitian guna mencari ketertinggalan ilmu, sains dan teknologi tinggi dari Negara lain Kelima, adakan seminar, diskusi serial, pengkajian dan publikasi hasil-hasil yang telah di capai baik hasil penelitian, uji coba maupun pengkajian karya-karya ilmuwan islam (Membangkitkan Sains Islam, Republika 23/Nov/2006).\r\n\r\nDan mungkin semua ini ada faktor dari berbagai sektor yang harus umat muslim perbaiki dengan menciptakan sebuah Habits baru, ada sebuah nasihat imam Syafi’I kepada siapa saja yang ingin menguasai ilmu “ wahai saudaraku, kalian tidak akan dapat menguasai ilmu kecuali dengan 6 syarat yang akan saya sampaikan: dengan kecerdasan, menuntutnya dengan semangat, dengan kesungguhan, dengan memiliki bekal (investasi), bersama pembimbing(guru), serta waktu yang lama” dan ingat misi kita selalu menimba ilmu sampai akhir hayat menjemput. wallahualam bissawab (iin)\r\n', '2018-04-06 15:26:22', 1, 1, NULL, 6, 2),
(7, 1, 'Koneksi VB .NET dengan SQL Server konsep ADO .NET', 'Kali ini saya akan memberikan tutorial Koneksi Visual Basic dengan database SQL Server tetapi dengan konsep yang berbeda.\r\n\r\nkonsep yang saya bagikan ini adalah konsep ADO.NET dalam Visual Studio 2015\r\n\r\nkonsep ini bisa diterapkan dalam versi Visual Studio yang lain, seperti Visual Studio 2008, Visual Studio 2010, Visual Studio 2013.\r\n\r\nkelebihan pada konsep ini kita tidak lagi memerlukan Module untuk membuat Koneksi ke database\r\n\r\nkoneksi ke database disini cukup menggunakan “Data Sources”.\r\n\r\ndalam Visual Studio 2015 Tool Data Sources dapat dilihat pada, Menubar atas View -> Other Windows -> Data Sources. Atau dengan Shortcut “Ctrl+Alt+D”.\r\n\r\nperhatikan langkah berikut ini :', '2018-04-05 15:27:43', 1, 1, NULL, 7, 2),
(8, 1, 'Tips & Trik Foto Levitasi', 'Levitasi adalah teknik fotografi yang dapat membuat sesuatu atau seseorang tampak seperti melayang. Levitasi atau Levitation (dari bahasa Latin “ringan” levitas) adalah proses dimana objek dihentikan oleh kekuatan fisik melawan gravitasi, dalam posisi stabil tanpa kontak fisik yang solid. Sejumlah teknik yang berbeda telah dikembangkan untuk melayang materi, termasuk metode levitasi aerodinamis, magnet, akustik, elektromagnetik, elektrostatik, film gas, dan optik. (wikipedia). Foto levitasi dapat dilakukan dengan menggunakan editing atau tanpa editing yang dilakukan oleh model yang ber-pose seperti melayang. Teknik ini sangat berbeda dengan teknik jump shot dimana model terlihat benar-benar melompat.\r\nCara membuat foto levitasi\r\n\r\nDalam pembuat foto levitasi harus menggunakan Shutter Speed tinggi agar dapat membekukan model yang sedang melayang. Gunakan mode burst (Continuous shooting) agar dapat menangkap gambar lebih cepat. Shuter Speed yang digunakan dalam menangkap moment tersebut berada di kisaran 1/200 – 1/1000. Atau dengan mengaktifkan mode sport pada kamera  untuk mengatur kecepatan secara otomatis. Namun jika tidak dapat mencapai kecepatan yang cukup, mungkin ISO atau buka diafragma perlu ditambahkan. Gunakan low angle agar model terlihat tinggi melayang. Pencahayaan yang tepat juga sangat membantu untuk membuat efek bayangan dari model agar terlihat lebih melayang.\r\n\r\nTips membuat foto levitasi\r\n\r\n    Model yang difoto harus memperlihatkan mimik muka yang tenang dan bergaya seperti melayang.\r\n    Usahakan agar pakaian, rambut, dan aksesoris yang digunakan model terlihat seperti melayang.\r\n\r\ndan tips Levitasi dengan Menggunakan Kamera Handphone.\r\n\r\nPada umumnya sama dengan menggunakan Kamera Digital ataupun Kamera D-SLR yang harus diperhatikan adalah kita harus memahami karakteristik shutter lag dari kamera hp kalian, Karena Tiap Kamera HP memiliki Shutter Lag yang berbeda-beda. yang dimaksud dengan Shutter Lag adalah lamanya jeda saat kamu memencet tombol rana (Shutter) sampai gambar terambil oleh kamera.\r\n\r\nUsahakan pengambilan gambar levitasi pada pencahayaan yang cerah (terang) untuk mendapatkan high shutter speed kamera Hp itu sendiri, karena cahaya yang kurang (minim) akan membuat gambar berbayang ketika pengambilan gambar levitasi tersebut. Disarankan untuk memotret levitasi dengan kamera HP adalah pada siang hari dengan cuaca yang cerah.\r\n\r\nBeberapa tips diatas cukup untuk mendapatkan sebuah foto levitasi, Selebihnya anda bisa kreasikan dengan imajinasi anda masing-masing dan berlatih secara berulang-ulang sehingga mendapatkan hasil yang maksimal.\r\n\r\nBeberapa contoh Foto Levitasi CKI Photography Community', '2018-04-04 15:29:10', 1, 1, NULL, 8, 2),
(9, 1, 'RAPAT SEKERTARIS CKI FEST 2017', '<img src=\"https://bemstikomcki.com/wp-content/uploads/2017/07/RAPAT-CKI-FEST-2017-1.jpg\"/>\r\n</div>\r\n<div class=\"entry-content\">\r\n<p>Bismillahirohmanirohim<br />\r\nAssalamualaikum<br />\r\nWarahmatullahi<br />\r\nWabarakatuh</p>\r\n<p>Salam sejahtera untuk kita semua.</p>\r\n<p>Kami memberitahukan untuk Rapat Sekretaris Organisasi dihadiri Sekretaris BEM dan UKM, Untuk membahas rapat:</p>\r\n<p>&#8211; Rapat pembahasan tukpoksi sekretaris organisasi mahasiswa (ORMAWA)</p>\r\n<p>Dengan Adanya kegiatan tersebut, kami harapkan kehadiran setiap Sekretaris BEM dan UKM yang akan diadakan pada :</p>\r\n<p><strong>Hari : Sabtu, 15 Juli 2017</strong><br />\r\n<strong>Waktu : 15:00 WIB (diusahakan On Time)</strong><br />\r\n<strong>Tempat : RUANG 301 KAMPUS A STIKOM CKI</strong></p>\r\n<p>INFORMASI : 085780829980 (INDRA)<br />\r\nDan kami mohon kiranya, dapat meluangkan waktu dan ikut hadir dalam kegiatan ini.</p>\r\n<p>Note :<br />\r\n&#8211; Gunakan Almamater, Saat Kegiatan Rapat ini<br />\r\n&#8211; Untuk Parkir Kendaraan di DEPAN Kampus</p>\r\n<p>MARI SUKSESKAN BERSAMA ACARA INI UNTUK KAMPUS STIKOM CKI LEBIH BAIK!<br />\r\nMAJU &amp; BERKARYA BERSAMA!</p>\r\n<p>Terima Kasih<br />\r\nWalaikumsallam<br />\r\nWarahmatullahi<br />\r\nWabarakatuh</p>\r\n<p>SALAM BEM PERIODE 2017-2018</p>\r\n<p>KABINET PERUBAHAN</p>\r\n<p>KREATIF, INOVATIF DAN BERGERAK</p>', '2018-04-15 07:40:25', 1, 1, '2018-04-15 07:40:25', 9, 1),
(10, 1, 'Serah Terima Jabatan Kepengurusan BEM dan UKM 2017', '\r\n\r\nPada hari minggu tanggal 19 maret 2017 , telah dilaksanakan serah terima jabatan kepengurusan BEM dan UKM 2017 semua pengurus BEM dan UKM menghadiri sertijab atau Serah terima jabatan pukul 7 pagi untuk persiapan acara dan acara dimulai tepat pukul 9 pagi. Pembawa acara sertijab yaitu Resty dan Sari serta di hadiri Bpk Dadang , Bpk Hendri Irawan , Bpk Yuma Akbar serta perwakilan dosen yaitu Bpk sudirman. Kemudian acara dimulai dengan berdo’a dilanjutkan dengan menyanyikan lagu nasional “Indonesia Raya” dan lagu wajib nasional “Tanah Airku” yang di pimpin oleh saudari Maulidyah Intan .\r\n\r\nLalu sambutan acara dilanjutkan dengan sambutan yang disampaikan oleh Ketua BEM sebelumnya Ricky Julianus , dan sambutan selanjutnya disampaikan oleh Ketua BEM periode 2017-2018 yaitu Nur arif fadlilah dan selanjutya sambutan yang disampaikan oleh bapak Dadang Iskandar. Kemudian acara pelantikan BEM dan UKM , hadirin dan pengurus yang baru berdiri dan membacakan sumpah Bem yang dibacakan oleh pak Dadang Iskandar kemudian bem mencium bendera merah putih dan bendera Stikom CKI sambil dilantunkan lagu Syukur dengan hitmat.\r\n\r\nKemudian sambutan yang akan di sampaikan oleh Bapak Yuma Akbar dan pembagian SK kepada setiap pengurus BEM dan UKM di panggil satu persatu untuk menerima SK (Surat Keputusan) nya masing masing kemudian, penyampaian pesan dan kesan dari Alumni dari ketua BEM periode lalu dimulai dari Edi Mario dan Sammy, mereka menyampaikan tentang bagaimana suka duka  menjadi Ketua Bem.\r\n\r\nSammy menyampaikan nasehat serta wejangan untuk pengurus BEM yang baru dan mengucapkan selamat bertugas kepada pengurus BEM yang baru , setelah acara semua sudah selesai diakhiri dengan foto bersama dari masing – masing pengurus BEM dan UKM , dan acara sertijab telah berakhir. Semoga dari acara serah terima jabatan ini setiap pengurus Bem dan Ukm dapat menjalani masing masing tugasnya dengan baik.\r\n', '2018-04-11 15:36:08', 1, 1, NULL, 10, 1),
(11, 1, 'Rapat BEM dan UKM CKI FEST 2017', '\r\n\r\nKami memberitahukan untuk Rapat Acara Kegiatan untuk segera dihadiri Panitia dan PJ UKM, Untuk membahas rapat:\r\n\r\n– Rapat pembahasan event kompetisi\r\n– Pembahasan konsep setiap kompetisi oleh PJ UKM\r\n\r\nDengan Adanya kegiatan tersebut, kami harapkan kehadiran setiap *PANITIA dan PJ UKM yang akan diadakan pada :\r\n\r\nHari : Minggu, 09 Juli 2017\r\nWaktu : * 16.00 WIB* (diusahakan On Time)\r\nTempat : RUANG 302 KAMPUS A STIKOM CKI\r\n\r\nINFORMASI : 08128102619 (ASEP OVID)\r\nDan kami mohon kiranya Seluruh perwakilan pengurus UKM dan PANITIA, dapat meluangkan waktu dan ikut hadir dalam kegiatan ini.\r\n\r\nNote :\r\n– Gunakan Almamater, Saat Kegiatan Rapat ini\r\n– Untuk Parkir Kendaraan di DEPAN Kampus\r\n\r\nMARI SUKSESKAN BERSAMA ACARA INI UNTUK KAMPUS STIKOM CKI LEBIH BAIK!\r\nMAJU & BERKARYA BERSAMA!\r\n\r\nSALAM BEM PERIODE 2017-2018\r\n\r\nKABINET PERUBAHAN\r\n\r\nKREATIF, INOVATIF DAN BERGERAK\r\n', '2018-04-11 15:36:08', 1, 1, NULL, 11, 1),
(12, 1, 'The Dreams Diary', 'Di dunia ini setiap orang pasti mempunyai mimpi dan cita cita nya masing masing. Banyak orang bermimpi menjadi orang sukses dengan berbagai macam profesi. Menjadi dokter, jadi pilot, atau bahkan jadi artis.\r\n\r\nTapi ternyata dari sekian banyak orang di dunia ini ada juga yang mimpi nya harus ditunda / bahkan tidak terwujud  karena adanya beberapa faktor yang berpengaruh dalam hidup pribadi masing masing. Mulai dari adanya faktor biaya pendidikan, kesenjangan social, hingga karena harus mengalah pada keinginan orang tua.\r\n\r\nSaya mau sedikit sharing tentang mimpi saya, dimana saya adalah seorang mahasiswi tingkat akhir yang sedang merampungkan KKP ( kuliah kerja praktek ) di sebuah kampus swasta di Jakarta. Saya nyasar masuk kandang Informatika, kenapa saya katakan nyasar ? karena saya sekarang merasa sangat salah memilih jurusan ( ada yang seperti saya ? *nyengir pait* )\r\n\r\nHarapan saya untuk mahasiswa yang merasa salah jurusan tetap semangat ya guys. Saya sangat bisa merasakan kesedihan kalian, dari mulai males datang ke kampus, ke kampus tapi gapernah masuk kelas, atau malah masuk kelas tapi ga merhatiin dosen, malah mikirin gebetan ( mohon bersabar ini ujian ) , ada lagi yang masuk kelas tapi ya ga konsen , demenya buka instagram mulu maenin IG History, poto poto , sampe tidur di kelas. Kalo kalian awalnya ngira kuliah itu se keren di FTV, mending matiin TV kalian deh  karena Fakta akan berkata lain.\r\n\r\nSejak kecil saya sangat suka pelajaran Bahasa Indonesia, saat yang lain suka Matematika / IPA / IPS , tapi tidak dengan saya karena menurut saya pelajaran itu membosankan, saya memang lemah dalam hal berhitung. Saya lebih tertarik seni dan bahasa. Waktu SMA pun saya aktif di kegiatan Jurnalis sekolah. Mulai dari bikin puisi, cerpen, sampe belajar nulis novel sediri.\r\n\r\nSedih gak sih ketika kalian merasa punya passion tapi malah dimatikan oleh orang terdekat kalian? Apalagi kalo kalian bukan type anak yang berani menentang. Bukan berarti saya mengajari adek adek buat jadi anak kaya malin kundang yah dek, tapi mudah mudahan siapapun yang membaca tulisan saya ini meski tidak sependapat dengan saya tapi mampu mencerna pesan kebaikan yang akan saya sampaikan.\r\n\r\nTeruntuk kalian yang merasa salah jurusan, tetap kembangkan hobby dan passion selama memang itu berdampak positif. Sedini mungkin jika kalian masih sekolah terutama bagi yang akan lulus SMA cobalah untuk kenali kemampuan diri sendiri, jangan labil ikut ikutan temen kuliah di sini karena kampusnya bagus, ikutan temen karena banyak yang daftar di  jurusan itu akhirnya kalian ngikutin juga lalu akhirnya seperti saya salah jurusanL, bagaimana dengan yang sudah tau passionya tapi tetap memilih jurusan lain karena ternyata kalian tau untuk masuk di jurusan yang kalian sukai banyak kendala? Tetap tegar bagai akar, kamu harus siap dengan konsekuensi kedepanya , hatimu harus sekuat baja . tetap jalani dan jangan pesimis ataupun lemah dengan keadaan.\r\n\r\nSejak kecil saya anak yang selalu menuruti keinginan orang tua, tanpa memikirkan keinginan saya sendiri. Saya selalu takut menyampaikan keinginan / pendapat saya. Hingga akhirnya orang tua saya ‘menanamkan cita cita beliau untuk harus saya wujudkan’ . Ayah saya suka sekali dengan pelajaran IPA, menyuruh saya belajar berhitung, disuruh sekolah farmasi, hingga disuruh ambil jurusan kebidanan. Sebagai anak saya sedih, saya tidak bisa menentang beliau karena beliau adalah orang tua saya, tapi saya juga tau kemampuan saya sampai dimana, untungnya ada beberapa kejadian yang membuat orang tua saya sadar bahwa passion saya memang bukan disitu. Meskipun sadar nya sudah terlambat tapi saya tetap bersyukur\r\n\r\nBanyak sekali fenomena bahwa ketika ‘cita cita orang tua saat masih mereka kecil tidak tercapai, maka mereka akan memaksakan anaknya untuk mewujudkan cita cita mereka’. Dan tanpa sadar itu bisa mematikan kreativitas anak. Saya setuju dengan teori Albert Einstein bahwa ‘ Setiap anak itu Jenius. Tapi jika anda menilai ikan dari cara dia memanjat pohon, maka dia akan merasa bodoh seumur hidup.\r\n\r\nImpian saya sampai saat ini adalah bukan menjadi seorang penulis terkenal tetapi menjadi penulis yang ‘Bermanfaat bagi orang lain dan mampu menginspirasi banyak orang’. Meskipun kuliah saya salah jurusan tapi saya tidak berhenti menulis dan tetap berusaha mengembangkan potensi saya, sebagai calon orang tua yang baik mulai dari sekarang tidak sepatutnya kita mematikan kreativitas anak. Kita bisa melatih itu dengan mampu menjadi pendengar yang baik kepada teman / sahabat kita atau bahkan siapapun itu jika memang dirasa perlu untuk di dengar. Mengubah pola pikir kita agar tidak menjadi manusia yang otoriter.\r\n\r\nPenulis : Meilia Citra', '2018-04-11 15:36:08', 1, 1, NULL, 12, 2),
(13, 1, 'Organisasi dan UKM, Penyelamat Salah Jurusan di Perkuliahan', 'Salah jurusan itu terkadang membuat kita dilema. Biasanya, ini disadari oleh para mahasiswa atau mahasiswi saat mendapatkan mata kuliah yang spesifik. Mungkin, jika mengetahui salah jurusan di semester awal, kita bisa memilih pindah ke jurusan lain.\r\n\r\nLalu, bagaimana jika kita mengetahuinya sudah di semester yang tinggi? Sementara untuk mengulang lagi tentu akan menghabiskan biaya yang tidak sedikit.\r\n\r\nMengikuti Unit Kegiatan Mahasiswa (UKM) dan organisasi kampus adalah jawabannya. Ini adalah cara kamu bisa melupakan salah jurusanmu dan menggali kemampuanmu yang sesungguhnya. Berikut adalah beberapa UKM dan organisasi yang bisa kamu ikuti di kampus.', '2018-04-11 15:36:08', 1, 1, NULL, 13, 2),
(14, 1, 'Mengikuti Jejak Sang Pencari Ilmu (Tholabul Ilmi)', '\r\n\r\n    Tholabul ‘ilmi faridhotun ‘alaa kulli muslimin wal muslimat minal mahdi ilal lahdi”\r\n    Artinya : Menuntut ilmu itu wajib bagi setiap muslim dan muslimah sejak dari ayunan hingga liang lahad.\r\n\r\nTholabul ‘Ilmi artinya mencari Ilmu karena mengharap ridho dan cinta kepada Allah SWT. sangatlah berperan bagi kehidupan semua makhluk hidup di dunia ini. Al ‘Ilmu menurut para ‘Ulama berasal dari kata ‘Alima – Ya’lamu – ‘Ilman.\r\nMaknanya adalah :Ma’rifah wal idrook, dalam bahasa Indonesia: Pengetahuan. Di Indonesia disebut Ilmu Pengetahuan, lalu seolah-olah diartikan Ilmu yang berseberangan dengan Ilmu Dien (Islam). Lalu dilengkapi sebutannya menjadi : Ilmu Pengetahuan dan Teknologi (IPTEK). Padahal sesungguhnya kata “Pengetahuan” itu sendiri adalah pengertian (definisi) secara etimologis (kebahasaan) dari kata “Ilmu”.\r\n\r\nJadi “Ilmu” dalam bahasa Arab, bahasa Indonesianya adalah: Pengetahuan. Lalu akhirnya menjadi Ilmu Pengetahuan, yang maknanya bukan Ilmu Dien. Maka kalau ada orang mengatakan Ilmu pengetahuan, maknanya: bukan Ilmu Dien. Ada juga yang mengartikan, terutama dari kalangan para ‘Ulama Ushul Fiqih, bahwa yang dimaksud dengan “Ilmu” adalah :\r\n\r\n    “Pengetahuan tentang sesuatu diatas fakta dan data, secara pasti”.\r\n\r\nSejak manusia lahir kedunia ini tidaklah mungkin semuanya tanpa ilmu dari manusia di lahirkan sampai ke ujung liang lahat pun semua ada ilmunya. Dunia ini pun tidak mungkin tercipta begitu saja dan semua itu ada ilmu dan prosesnya dan semua itu kembali dari sang khalik Allah SWT sebagai sumber ilmu yang menurunkannya kepada nabi dan Rasulnya dengan kitab-kitabnya termasuk Al-Quran (kitab Alam Semesta). Dalam sejarah peradaban sesungguhnya umat islam pernah mengalami kejayaan. Menurut Toby E. Huff dalam Bukunya The Rise Of Early Modern Science dari abad ke delapan hingga akhir abad keempat belas, ilmu pengetahuan Arab(Islam) adalah sains yang paling maju di dunia yang jauh melampai barat dan cina. Dalam masa itu telah lahir berbagai ilmuwan islam dengan latar belakang ilmu yang berbeda. Misalnya, Al-Razi, Ibnu Sina, Ibnu Tufayl, Ibnu Rusyd, Ibnu Khaldun Al-Kindi, Al- Ghazali, Al-Farabi dan lain sebagainya mereka ini merupakan ilmuwan dalam berbagai bidang; fisika, matematika, social, ekonomi, filsafat, kedokteran, teknik dan lain sebagainya sebagai ilmuwan islam yang dunia barat pun mengakuinya. Dalam Syariat Islam menuntut ilmu adalah kewajiban penting bagi seorang muslim daripada harta, bagaimana mau bahagia dunia dan akhirat kalau malas juga dalam mencari ilmunya.\r\n\r\nBahkan ada ungkapan yang berasal dari imam syafi’i beliau berkata: “jika kau menginginkan kebahagiaan dunia, maka carilah ilmu. Jika kau mencari kebahagian akhirat, maka carilah juga dengan ilmu” juga dari Ali bin Abi Thalib Ra. Yang di juluki Nabi Muhammad sebagai bab ulilm (Pintunya Ilmu) beliau berkata : “bahwa ilmu lebih baik daripada harta karena ilmu menjaga anda dan anda harus menjaga harta. Ilmu itu hakim sedangkan harta terhukum.” Harta berkurang bila di belanjakan sedangkan ilmu bertambah. Perihal Keutamaan ilmu, Ibnu Abbas ra. Menceritakan bahwa Allah SWT. Menyuruh Nabi Sulaiman bin Daud as. Untuk memilih harta atau kerajaan(kekuasaan). Nabi Sulaiman as.\r\n\r\nMemilih ilmu, maka Allah SWT. Pun menganugerahkan kepadanya harta dan kerajaan bersama ilmu sekaligus. Dalam ilmu harus ada proses yang di sebut pendidikan dan ilmu sebgai alatnya. Al-Ghazali adalah orang yang banyak mencurahkan perhatiannya terhadap bidang pengajaran dan pendidikan dalam kitabnya Ihya Ulumiddin. Adapun unsur-unsur pembentuk pengertian pendidikan dari al-Ghazali dapat dilihat dalam\r\npernyataan berikut:\r\n\r\n    “Sesungguhnya hasil ilmu itu ialah mendekatkan diri kepada Allah, Tuhan semesta alam, menghubungkan diri dengan ketinggian malaikat dan berhampiran dengan malaikat tinggi…”\r\n\r\n    “…dan ini, sesungguhnya adalah dengan ilmu yang berkembang melalui pengajaran dan bukan ilmu beku yang tidak berkembang.”\r\n\r\nJika kita perhatikan kutipan yang pertama, kata “hasil” menunjukkan proses, kata “mendekatkan diri kepada Allah” menunjukkan tujuan, dan kata “ilmu” menunjukkan alat. Sedangkan pada kutipan yang kedua merupakan penjelasan mengenai alat, yakni disampaikannya dalam bentuk pengajaran. Batas awal berlangsungnya proses pendidikan menurut Al-Ghazali, yakni sejak bertemunya sperma dan ovum sebagai awal manusia. Batas akhir pendidikan menurut Al-Ghazali sampai akhir hayatnya. Dari keterangan di atas pendidikan menurut Al-Ghazali adalah proses memanusiakan manusia sejak masa kejadiannya sampi akhir hayatnya melalui berbagai ilmu pengetahuan yang disampaikan dalam bentuk pengajaran secara bertahap di mana proses pengajaran itu menjadi tanggung jawab orang tua dan masyarakat. Pemikiran al-Ghazali dalam pendidikan juga bernuansa islami dan moral. Di samping itu, ia juga tidak mengabaikan masalah-masalah duniawiyah, sehingga ia juga menyediakan porsi yang sesuai dengan pendidikan.\r\n\r\nDan menurut imam Al-Ghazali ilmu di bagi dari dua kategori, pertama ilmu dikategorikan fardhu ain (individual) : artinya wajib dipelajari setiap Muslim, yaitu tsaqafah Islam yang terdiri dari konsepsi, ide, dan hukum-hukum Islam, bahasa Arab, sirah Nabi Saw, ulumul Qur & rsquo’an, tahfizh al-Quran, ulumul hadis, ushul fiqh, dll. Lalu kedua Ilmu yang dikategorikan fadhu kifayah (kewajiban kolektif), biasanya ilmuilmu yang mencakup sains dan teknologi IPTEK serta ilmu terapan-keterampilan, seperti biologi, fisika, kedokteran, pertanian, teknik, dll. Dan bagaimana apresiasi masyarakat muslim sekarang ini dengan adanya globalisasi dan dengan ide-ide-isme paham tak terbendung asal muasalnya.\r\n\r\nProf. Dr. Mulyadhi Kartanegara yang kini menjabat sebagai direktur Center For IslamicPhilosopical Studies and Information(CIPSI) memberikan pendapatnya mengajak kalangan umat islam untuk bangkit mengejar keterpurukan dan ketertinggalan, ada 5 pokok yang harus dilakukan umat muslim: Pertama, mengumpulkan segala bentuk dan karya-karya ilmuwan muslim Kedua, mencoba untuk mempela-jari dan membangkitkan kembali semangat berfilsafat dan berfikir kritis dalam tubuh umat islam Ketiga, mengirim sebanyak mungkin calon-calon sarjana ke negeri penguasa sains dan teknologi Keempat, mencoba membangitkan percobaan-percobaan ilmiah atau semangat penelitian guna mencari ketertinggalan ilmu, sains dan teknologi tinggi dari Negara lain Kelima, adakan seminar, diskusi serial, pengkajian dan publikasi hasil-hasil yang telah di capai baik hasil penelitian, uji coba maupun pengkajian karya-karya ilmuwan islam (Membangkitkan Sains Islam, Republika 23/Nov/2006).\r\n\r\nDan mungkin semua ini ada faktor dari berbagai sektor yang harus umat muslim perbaiki dengan menciptakan sebuah Habits baru, ada sebuah nasihat imam Syafi’I kepada siapa saja yang ingin menguasai ilmu “ wahai saudaraku, kalian tidak akan dapat menguasai ilmu kecuali dengan 6 syarat yang akan saya sampaikan: dengan kecerdasan, menuntutnya dengan semangat, dengan kesungguhan, dengan memiliki bekal (investasi), bersama pembimbing(guru), serta waktu yang lama” dan ingat misi kita selalu menimba ilmu sampai akhir hayat menjemput. wallahualam bissawab (iin)\r\n', '2018-04-11 15:36:08', 1, 1, NULL, 14, 2),
(15, 1, 'Koneksi VB .NET dengan SQL Server konsep ADO .NET', 'Kali ini saya akan memberikan tutorial Koneksi Visual Basic dengan database SQL Server tetapi dengan konsep yang berbeda.\r\n\r\nkonsep yang saya bagikan ini adalah konsep ADO.NET dalam Visual Studio 2015\r\n\r\nkonsep ini bisa diterapkan dalam versi Visual Studio yang lain, seperti Visual Studio 2008, Visual Studio 2010, Visual Studio 2013.\r\n\r\nkelebihan pada konsep ini kita tidak lagi memerlukan Module untuk membuat Koneksi ke database\r\n\r\nkoneksi ke database disini cukup menggunakan “Data Sources”.\r\n\r\ndalam Visual Studio 2015 Tool Data Sources dapat dilihat pada, Menubar atas View -> Other Windows -> Data Sources. Atau dengan Shortcut “Ctrl+Alt+D”.\r\n\r\nperhatikan langkah berikut ini :', '2018-04-11 15:36:08', 1, 1, NULL, 15, 2),
(16, 1, 'Tips & Trik Foto Levitasi', 'Levitasi adalah teknik fotografi yang dapat membuat sesuatu atau seseorang tampak seperti melayang. Levitasi atau Levitation (dari bahasa Latin “ringan” levitas) adalah proses dimana objek dihentikan oleh kekuatan fisik melawan gravitasi, dalam posisi stabil tanpa kontak fisik yang solid. Sejumlah teknik yang berbeda telah dikembangkan untuk melayang materi, termasuk metode levitasi aerodinamis, magnet, akustik, elektromagnetik, elektrostatik, film gas, dan optik. (wikipedia). Foto levitasi dapat dilakukan dengan menggunakan editing atau tanpa editing yang dilakukan oleh model yang ber-pose seperti melayang. Teknik ini sangat berbeda dengan teknik jump shot dimana model terlihat benar-benar melompat.\r\nCara membuat foto levitasi\r\n\r\nDalam pembuat foto levitasi harus menggunakan Shutter Speed tinggi agar dapat membekukan model yang sedang melayang. Gunakan mode burst (Continuous shooting) agar dapat menangkap gambar lebih cepat. Shuter Speed yang digunakan dalam menangkap moment tersebut berada di kisaran 1/200 – 1/1000. Atau dengan mengaktifkan mode sport pada kamera  untuk mengatur kecepatan secara otomatis. Namun jika tidak dapat mencapai kecepatan yang cukup, mungkin ISO atau buka diafragma perlu ditambahkan. Gunakan low angle agar model terlihat tinggi melayang. Pencahayaan yang tepat juga sangat membantu untuk membuat efek bayangan dari model agar terlihat lebih melayang.\r\n\r\nTips membuat foto levitasi\r\n\r\n    Model yang difoto harus memperlihatkan mimik muka yang tenang dan bergaya seperti melayang.\r\n    Usahakan agar pakaian, rambut, dan aksesoris yang digunakan model terlihat seperti melayang.\r\n\r\ndan tips Levitasi dengan Menggunakan Kamera Handphone.\r\n\r\nPada umumnya sama dengan menggunakan Kamera Digital ataupun Kamera D-SLR yang harus diperhatikan adalah kita harus memahami karakteristik shutter lag dari kamera hp kalian, Karena Tiap Kamera HP memiliki Shutter Lag yang berbeda-beda. yang dimaksud dengan Shutter Lag adalah lamanya jeda saat kamu memencet tombol rana (Shutter) sampai gambar terambil oleh kamera.\r\n\r\nUsahakan pengambilan gambar levitasi pada pencahayaan yang cerah (terang) untuk mendapatkan high shutter speed kamera Hp itu sendiri, karena cahaya yang kurang (minim) akan membuat gambar berbayang ketika pengambilan gambar levitasi tersebut. Disarankan untuk memotret levitasi dengan kamera HP adalah pada siang hari dengan cuaca yang cerah.\r\n\r\nBeberapa tips diatas cukup untuk mendapatkan sebuah foto levitasi, Selebihnya anda bisa kreasikan dengan imajinasi anda masing-masing dan berlatih secara berulang-ulang sehingga mendapatkan hasil yang maksimal.\r\n\r\nBeberapa contoh Foto Levitasi CKI Photography Community', '2018-04-11 15:36:08', 1, 1, NULL, 16, 2);

-- --------------------------------------------------------

--
-- Table structure for table `posts_image`
--

CREATE TABLE `posts_image` (
  `id` int(10) UNSIGNED NOT NULL,
  `pict1` text,
  `pict2` text,
  `pict3` text,
  `pict4` text,
  `pict5` text,
  `pict6` text,
  `pict7` text,
  `pict8` text,
  `pict9` text,
  `pict10` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `posts_image`
--

INSERT INTO `posts_image` (`id`, `pict1`, `pict2`, `pict3`, `pict4`, `pict5`, `pict6`, `pict7`, `pict8`, `pict9`, `pict10`) VALUES
(1, 'assets\\images\\News\\RAPAT-CKI-FEST-2017-1.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 'assets\\images\\News\\sertijab.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 'assets\\images\\News\\RAPAT-CKI-FEST-2017-1.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 'assets\\images\\Blog\\1.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 'assets\\images\\Blog\\2.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 'assets\\images\\Blog\\3.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, 'assets\\images\\Blog\\4.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, 'assets\\images\\Blog\\5.jpeg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9, 'assets\\images\\News\\RAPAT-CKI-FEST-2017-1.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10, 'assets\\images\\News\\sertijab.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 'assets\\images\\News\\RAPAT-CKI-FEST-2017-1.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(12, 'assets\\images\\Blog\\1.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(13, 'assets\\images\\Blog\\2.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(14, 'assets\\images\\Blog\\3.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(15, 'assets\\images\\Blog\\4.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(16, 'assets\\images\\Blog\\5.jpeg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `post_comments`
--

CREATE TABLE `post_comments` (
  `id` int(11) NOT NULL,
  `post_id` int(11) DEFAULT NULL COMMENT 'id table posting',
  `comment_name` varchar(50) NOT NULL COMMENT 'nama pengomentar',
  `author_email` varchar(100) DEFAULT NULL COMMENT 'email user',
  `author_ip` varchar(100) DEFAULT NULL COMMENT 'ip address user',
  `comment_date` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT 'tanggal komentar',
  `comment_content` longtext,
  `status` int(11) DEFAULT NULL COMMENT '1. Aktif 2. Non-Aktif'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `post_comments`
--

INSERT INTO `post_comments` (`id`, `post_id`, `comment_name`, `author_email`, `author_ip`, `comment_date`, `comment_content`, `status`) VALUES
(1, 1, '', NULL, NULL, NULL, NULL, NULL),
(2, 2, '', NULL, NULL, NULL, NULL, NULL),
(3, 3, '', NULL, NULL, NULL, NULL, NULL),
(4, 4, '', NULL, NULL, NULL, NULL, NULL),
(5, 5, '', NULL, NULL, NULL, NULL, NULL),
(6, 6, '', NULL, NULL, NULL, NULL, NULL),
(7, 7, '', NULL, NULL, NULL, NULL, NULL),
(8, 8, '', NULL, NULL, NULL, NULL, NULL),
(9, 9, 'Mas Priyambodo', 'maspriyambodo@gmail.com', '127.0.0.1', '2018-04-15 04:26:46', 'For a complete reference of all date functions, go to our complete PHP Date Reference.', 1),
(10, 10, '', NULL, NULL, NULL, NULL, NULL),
(11, 11, '', NULL, NULL, NULL, NULL, NULL),
(12, 12, '', NULL, NULL, NULL, NULL, NULL),
(13, 13, '', NULL, NULL, NULL, NULL, NULL),
(14, 14, '', NULL, NULL, NULL, NULL, NULL),
(15, 15, '', NULL, NULL, NULL, NULL, NULL),
(16, 16, '', NULL, NULL, NULL, NULL, NULL),
(17, 9, 'Budi Doremi', 'BudJem@gmail.com', '127.0.0.1', '2018-04-15 05:25:53', '\r\nKisah Seorang Penjual Koran\r\nKumpulan Tugas Sekolahku\r\n\r\nDi ufuk timur, matahari belum tampak. Udara pada pagi hari terasa dingin. Alam pun masih diselimuti embun pagi. Seorang anak mengayuh sepedanya di tengah jalan yang masih lengang. Siapakah gerangan anak itu? Ia adalah seorang penjual Koran, yang bernama Ipiin.\r\n\r\nMenjelang pukul lima pagi, ia telah sampai di tempat agen koran dari beberapa penerbit. “Ambil berapa Ipiin?” tanya Bang Ipul. “Biasa saja.”jawab Ipiin. Bang Ipul mengambil sejumlah koran dan majalah yang biasa dibawa Ipiin untuk langganannya. Setelah selesai, ia pun berangkat.\r\n\r\nIa mendatangi pelanggan-pelanggan setianya. Dari satu rumah ke rumah lainnya. Begitulah pekerjaan Ipiin setiap harinya. Menyampaikan koran kepada para pelanggannya. Semua itu dikerjakannya dengan gembira, ikhlas dan rasa penuh tanggung jawab.\r\n\r\nKetika Ipiin sedang mengacu sepedanya, tiba-tiba ia dikejutkan dengan sebuah benda. Benda tersebut adalah sebuah bungkusan plastik berwarna hitam. Ipiin jadi gemetaran. Benda apakah itu? Ia ragu-ragu dan merasa ketakutan karena akhir-akhir ini sering terjadi peledakan bom dimana-mana. Ipiin khawatir benda itu adalah bungkusan bom. Namun pada akhirnya, ia mencoba membuka bungkusan tersebut. Tampak di dalam bungkusan itu terdapat sebuah kardus. \r\n\r\n“Wah, apa isinya ini?’’tanyanya dalam hati. Ipiin segera membuka bungkusan dengan hati-hati. Alangkah terkejutnya ia, karena di dalamnya terdapat kalung emas dan perhiasan lainnya. “Wah apa ini?”tanyanya dalam hati. “Milik siapa, ya?” Ipiin membolak-balik cincin dan kalung yang ada di dalam kardus. Ia makin terperanjat lagi karena ada kartu kredit di dalamnya. “Lho,…ini kan milik Pak Edison. Kasihan sekali Pak Edison , rupanya ia telah kecurian.”gumamnya dalam hati.\r\n\r\nApa yang diperkirakan Ipiin itu memamg benar. Rumah Pak Edison telah kemasukan maling tadi malam. Karena pencuri tersebut terburu-buru, bungkusan perhiasan yang telah dikumpulkannya terjatuh. Ipiin dengan segera memberitahukan Pak Edison. Ia menceritakan apa yang terjadi dan ia temukan. Betapa senangnya Pak Edison karena perhiasan milik istrinya telah kembali. Ia sangat bersyukur, perhiasan itu jatuh ke tangan orang yang jujur. \r\n\r\nSebagai ucapan terima kasihnya, Pak Edison memberikan modal kepada Ipiin untuk membuka kios di rumahnya. Kini Ipiin tidak lagi harus mengayuh sepedanya untuk menjajakan koran. Ia cukup menunggu pembeli datang untuk berbelanja. Sedangkan untuk mengirim koran dan majalah kepada pelanggannya, Ipiin digantikan oleh saudaranya yang kebetulan belum mempunyai pekerjaan. Itulah akhir dari sebuah kejujuran yang akan mendatangkan kebahagiaan di kehidupan kelak.', 1);

-- --------------------------------------------------------

--
-- Table structure for table `skills`
--

CREATE TABLE `skills` (
  `id` int(11) NOT NULL,
  `SystemAnalyst` int(11) DEFAULT NULL,
  `WebDesigner` int(11) DEFAULT NULL,
  `GraphicDesigner` int(11) DEFAULT NULL,
  `NetworkAdministrator` int(11) DEFAULT NULL,
  `SoftwareEngineer` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `skills`
--

INSERT INTO `skills` (`id`, `SystemAnalyst`, `WebDesigner`, `GraphicDesigner`, `NetworkAdministrator`, `SoftwareEngineer`) VALUES
(1, 40, 60, 91, 50, 50),
(2, 10, NULL, NULL, NULL, NULL),
(3, 10, NULL, NULL, NULL, NULL),
(4, 10, NULL, NULL, NULL, NULL),
(5, 10, NULL, NULL, NULL, NULL),
(6, 10, NULL, NULL, NULL, NULL),
(7, 10, NULL, NULL, NULL, NULL),
(8, 10, NULL, NULL, NULL, NULL),
(9, 10, NULL, NULL, NULL, NULL),
(10, 10, NULL, NULL, NULL, NULL),
(11, 10, NULL, NULL, NULL, NULL),
(12, 10, NULL, NULL, NULL, NULL),
(13, 10, NULL, NULL, NULL, NULL),
(14, 10, NULL, NULL, NULL, NULL),
(15, 10, NULL, NULL, NULL, NULL),
(16, 10, NULL, NULL, NULL, NULL),
(17, 10, NULL, NULL, NULL, NULL),
(18, 10, NULL, NULL, NULL, NULL),
(19, 10, NULL, NULL, NULL, NULL),
(20, 10, NULL, NULL, NULL, NULL),
(21, 10, NULL, NULL, NULL, NULL),
(22, 10, NULL, NULL, NULL, NULL),
(23, 10, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sosial_media`
--

CREATE TABLE `sosial_media` (
  `id` int(11) NOT NULL,
  `Facebook` varchar(50) DEFAULT NULL,
  `Googleplus` varchar(50) DEFAULT NULL,
  `LinkedIn` varchar(50) DEFAULT NULL,
  `Instagram` varchar(50) DEFAULT NULL,
  `Twitter` varchar(50) DEFAULT NULL,
  `Youtube` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `sosial_media`
--

INSERT INTO `sosial_media` (`id`, `Facebook`, `Googleplus`, `LinkedIn`, `Instagram`, `Twitter`, `Youtube`) VALUES
(1, 'https://www.facebook.com/aryo.seto.9847', 'https://plus.google.com/', 'https://www.linkedin.com/', 'https://www.instagram.com/', 'https://twitter.com', 'https://www.youtube.com/'),
(2, 'https://www.facebook.com/septianz.prasetiyo', 'https://plus.google.com/', 'https://www.linkedin.com/', 'https://www.instagram.com/', 'https://twitter.com', 'https://www.youtube.com/'),
(3, 'https://www.facebook.com/eri.novitasari.54', 'https://plus.google.com/', 'https://www.linkedin.com/', 'https://www.instagram.com/', 'https://twitter.com', 'https://www.youtube.com/'),
(4, 'https://www.facebook.com/', 'https://plus.google.com/', 'https://www.linkedin.com/', 'https://www.instagram.com/', 'https://twitter.com', 'https://www.youtube.com/'),
(5, 'https://www.facebook.com/', 'https://plus.google.com/', 'https://www.linkedin.com/', 'https://www.instagram.com/', 'https://twitter.com', 'https://www.youtube.com/'),
(6, 'https://www.facebook.com/', 'https://plus.google.com/', 'https://www.linkedin.com/', 'https://www.instagram.com/', 'https://twitter.com', 'https://www.youtube.com/'),
(7, 'https://www.facebook.com/', 'https://plus.google.com/', 'https://www.linkedin.com/', 'https://www.instagram.com/', 'https://twitter.com', 'https://www.youtube.com/'),
(8, 'https://www.facebook.com/', 'https://plus.google.com/', 'https://www.linkedin.com/', 'https://www.instagram.com/', 'https://twitter.com', 'https://www.youtube.com/'),
(9, 'https://www.facebook.com/', 'https://plus.google.com/', 'https://www.linkedin.com/', 'https://www.instagram.com/', 'https://twitter.com', 'https://www.youtube.com/'),
(10, 'https://www.facebook.com/', 'https://plus.google.com/', 'https://www.linkedin.com/', 'https://www.instagram.com/', 'https://twitter.com', 'https://www.youtube.com/'),
(11, 'https://www.facebook.com/', 'https://plus.google.com/', 'https://www.linkedin.com/', 'https://www.instagram.com/', 'https://twitter.com', 'https://www.youtube.com/'),
(12, 'https://www.facebook.com/', 'https://plus.google.com/', 'https://www.linkedin.com/', 'https://www.instagram.com/', 'https://twitter.com', 'https://www.youtube.com/'),
(13, 'https://www.facebook.com/', 'https://plus.google.com/', 'https://www.linkedin.com/', 'https://www.instagram.com/', 'https://twitter.com', 'https://www.youtube.com/'),
(14, 'https://www.facebook.com/', 'https://plus.google.com/', 'https://www.linkedin.com/', 'https://www.instagram.com/', 'https://twitter.com', 'https://www.youtube.com/'),
(15, 'https://www.facebook.com/nohackeron', 'https://plus.google.com/', 'https://www.linkedin.com/', 'https://www.instagram.com/', 'https://twitter.com', 'https://www.youtube.com/'),
(16, 'https://www.facebook.com/', 'https://plus.google.com/', 'https://www.linkedin.com/', 'https://www.instagram.com/', 'https://twitter.com', 'https://www.youtube.com/'),
(17, 'https://www.facebook.com/', 'https://plus.google.com/', 'https://www.linkedin.com/', 'https://www.instagram.com/', 'https://twitter.com', 'https://www.youtube.com/'),
(18, 'https://www.facebook.com/', 'https://plus.google.com/', 'https://www.linkedin.com/', 'https://www.instagram.com/', 'https://twitter.com', 'https://www.youtube.com/'),
(19, 'https://www.facebook.com/', 'https://plus.google.com/', 'https://www.linkedin.com/', 'https://www.instagram.com/', 'https://twitter.com', 'https://www.youtube.com/'),
(20, 'https://www.facebook.com/', 'https://plus.google.com/', 'https://www.linkedin.com/', 'https://www.instagram.com/', 'https://twitter.com', 'https://www.youtube.com/'),
(21, 'https://www.facebook.com/', 'https://plus.google.com/', 'https://www.linkedin.com/', 'https://www.instagram.com/', 'https://twitter.com', 'https://www.youtube.com/'),
(22, 'https://www.facebook.com/', 'https://plus.google.com/', 'https://www.linkedin.com/', 'https://www.instagram.com/', 'https://twitter.com', 'https://www.youtube.com/'),
(23, 'https://www.facebook.com/', 'https://plus.google.com/', 'https://www.linkedin.com/', 'https://www.instagram.com/', 'https://twitter.com', 'https://www.youtube.com/');

-- --------------------------------------------------------

--
-- Table structure for table `suara_mahasiswa`
--

CREATE TABLE `suara_mahasiswa` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `E_Mail` varchar(100) DEFAULT NULL,
  `tlp` varchar(15) DEFAULT NULL,
  `judul` varchar(100) DEFAULT NULL,
  `nim` int(11) DEFAULT NULL,
  `pesan` longtext CHARACTER SET utf8,
  `tgl` date DEFAULT NULL,
  `ipaddress` char(16) DEFAULT NULL,
  `stts_read` int(11) DEFAULT NULL COMMENT '1. UnRead, 2. Read'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `suara_mahasiswa`
--

INSERT INTO `suara_mahasiswa` (`id`, `nama`, `E_Mail`, `tlp`, `judul`, `nim`, `pesan`, `tgl`, `ipaddress`, `stts_read`) VALUES
(1, 'Priyambodo', 'maspriyambodo@gmail.com', '089620132007', 'Perbaikan Fasilitas', 1501110069, '\"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?\"', '2018-04-21', '127.0.0.1', NULL),
(2, 'Aryo Seto', 'aryosproject@gmail.com', '0899250042', 'Lorem Ipsum', 1501110070, '\"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?\"', '2018-04-22', '127.0.0.1', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tjabatan`
--

CREATE TABLE `tjabatan` (
  `id` int(11) NOT NULL,
  `jabatan` varchar(25) NOT NULL,
  `des` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `tjabatan`
--

INSERT INTO `tjabatan` (`id`, `jabatan`, `des`) VALUES
(1, 'Presiden BEM', 'Bertanggung jawab kepada BEM untuk melaksanakan kebijaksanaan -kebijaksanaan organisasi, baik internal maupun eksternal secara umum dan bersama dengan staff yang terpilih, merencanakan seluruh kegiatan yang merupakan program Badan Pengurus selama 1 period'),
(2, 'Wakil Presiden BEM', 'Bertanggung jawab terhadap ketua dan bersama dengan ketua melaksanakan kebijaksanaan organisasi, baik secara internal maupun eksternal serta membantu ketua mengkoordinir dan mengatur pembagian tugas pengurus sesuai dengan bidangnya.'),
(3, 'Sekertaris I', 'Membantu ketua dalam mengadakan perencanaan dan evaluasi operasional keorganisasian sehari – hariserta memberikan laporan pelaksanaan program kerja secara rutin kepada anggota melalui rapat anggota yang sudah di jadwalkan.'),
(4, 'Sekertaris II', ''),
(5, 'Bendahara I', 'Bertanggung jawab mengatur dan membuat laporan keuangan serta mengkoordinasikan iuran anggota dan mengadakan konfimasi dengan para donatur dalam pengembangan usaha dan pendayagunaan kekayaan serta inventaris organisasi.'),
(6, 'Bendahara II', ''),
(8, 'DEPKOMINFO', 'Bertanggung jawab membangun kerjasama dengan departemen – departemen organisasi terkait dalam upaya untuk meningkatkan kualitas mahasiswa dalam bidang sistem informasi dan mempublikasikan hal – hal yang bersangkutan dengan organisasi.\r\n'),
(9, 'HUMAS', 'Bertanggung jawab menjalin kerjasama dengan pihak lain serta mensosialisasikan kegiatan BEM ke public / mahasiswa STIKOM CKI dan juga membangun, memelihara serta menjaga hubungan yang positif dengan public.'),
(10, 'Regional UKM', 'Bertanggung jawab memantau setiap kegiatan UKM dan melaporkannya serta membuat agenda rapat untuk setiap UKM agar menyerahkan laporan kegiatan dan juga mencatatat keluhan ataupun kekurangan dari UKM.'),
(12, 'ADKESMA', 'bertanggungjawab terhadap kesejahteraan mahasiswa dan yang menjadi jembatan aspirasi dari mahasiswa kepada pihak dekanat.');

-- --------------------------------------------------------

--
-- Table structure for table `ukm`
--

CREATE TABLE `ukm` (
  `nama_ukm` varchar(9) NOT NULL,
  `Misi` varchar(255) NOT NULL,
  `NamaKegiatan` varchar(255) DEFAULT NULL,
  `Saran_Tujuan` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `ukm`
--

INSERT INTO `ukm` (`nama_ukm`, `Misi`, `NamaKegiatan`, `Saran_Tujuan`) VALUES
('IT', 'Mewadahi mahasiswa STIKOM CKI yang memiliki bakat-bakat terpendam dalam mengolah kemampuan dibidang Information Tecnologi (IT) atau System Tecnologi (SI)', 'Pertemuan Mingguan', 'Kegiatan ini ditunjukan kepada pada pengurus & anggota UKM IT tujuannya untuk menambahkan pengetahuan tentang ilmu yang mencakup dalam ilmu teknologi komputer'),
('IT', 'Berperan aktiv dalam mengikuti perkembangan IT.', 'Seminar IT', 'Kegiatan ini ditunjukan kepada para mahasiswa STIKOM CKI untuk menambah pengetahuan tentang ilmu yang mencakup dalam ilmu teknologi komputer diluar jam perkuliahan'),
('IT', '', 'Workshop IT', 'Kegiatan ini ditunjukan kepada pengurus dan anggota UKM IT tujuannya berbagi ilmu antar UKM IT kampus lain.'),
('IT', 'Membangun Mahasiswa / Mahasiswi yang Informativ khususnya Mahasiswa / Mahasiswi STIKOM CKI Sehingga menghasilkan Mahasiswa / Mahasiswi yang terampil dalam perkembangan Information Tecnologi (IT) yang tampa batas.', 'Outdoor Studies', 'Kegiatan ini ditunjukan kepada pengurus dan anggota UKM IT tujuannya berbagi ilmu antar UKM IT di kampus lain.');

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_comments`
-- (See below for the actual view)
--
CREATE TABLE `view_comments` (
`post_title` text
,`author_email` varchar(100)
,`author_ip` varchar(100)
,`comment_date` datetime
,`comment_content` longtext
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_anggotabem`
-- (See below for the actual view)
--
CREATE TABLE `v_anggotabem` (
`id` int(11)
,`nama` varchar(25)
,`tmp_lahir` varchar(50)
,`tgl_lahir` date
,`nim` int(11)
,`kelas` int(11)
,`jabatan` int(11)
,`smt` varchar(3)
,`status` int(11)
,`sosmed` int(11)
,`quote` varchar(255)
,`pict1` varchar(255)
,`pict2` varchar(255)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_jabatan`
-- (See below for the actual view)
--
CREATE TABLE `v_jabatan` (
`id` int(11)
,`jabatan` varchar(25)
,`des` varchar(255)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_m_ukm`
-- (See below for the actual view)
--
CREATE TABLE `v_m_ukm` (
`id` int(11)
,`nama_ukm` varchar(9)
,`sejarah` varchar(2500)
,`deskripsi` varchar(400)
,`kepanjangan` varchar(25)
,`icon` varchar(35)
,`visi` varchar(255)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_skills`
-- (See below for the actual view)
--
CREATE TABLE `v_skills` (
`id` int(11)
,`SystemAnalyst` int(11)
,`WebDesigner` int(11)
,`GraphicDesigner` int(11)
,`NetworkAdministrator` int(11)
,`SoftwareEngineer` int(11)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_sosmed`
-- (See below for the actual view)
--
CREATE TABLE `v_sosmed` (
`id` int(11)
,`Facebook` varchar(50)
,`Googleplus` varchar(50)
,`LinkedIn` varchar(50)
,`Instagram` varchar(50)
,`Twitter` varchar(50)
,`Youtube` varchar(50)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_totalkomen`
-- (See below for the actual view)
--
CREATE TABLE `v_totalkomen` (
`total` bigint(21)
);

-- --------------------------------------------------------

--
-- Structure for view `view_comments`
--
DROP TABLE IF EXISTS `view_comments`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_comments`  AS  select `posting`.`post_title` AS `post_title`,`post_comments`.`author_email` AS `author_email`,`post_comments`.`author_ip` AS `author_ip`,`post_comments`.`comment_date` AS `comment_date`,`post_comments`.`comment_content` AS `comment_content` from (`posting` join `post_comments` on((`posting`.`id` = `post_comments`.`post_id`))) where ((`posting`.`post_status` = 1) and (`post_comments`.`status` = 1)) ;

-- --------------------------------------------------------

--
-- Structure for view `v_anggotabem`
--
DROP TABLE IF EXISTS `v_anggotabem`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_anggotabem`  AS  select `anggota_bem`.`id` AS `id`,`anggota_bem`.`nama` AS `nama`,`anggota_bem`.`tmp_lahir` AS `tmp_lahir`,`anggota_bem`.`tgl_lahir` AS `tgl_lahir`,`anggota_bem`.`nim` AS `nim`,`anggota_bem`.`kelas` AS `kelas`,`anggota_bem`.`jabatan` AS `jabatan`,`anggota_bem`.`smt` AS `smt`,`anggota_bem`.`status` AS `status`,`anggota_bem`.`sosmed` AS `sosmed`,`anggota_bem`.`quote` AS `quote`,`anggota_bem`.`pict1` AS `pict1`,`anggota_bem`.`pict2` AS `pict2` from `anggota_bem` ;

-- --------------------------------------------------------

--
-- Structure for view `v_jabatan`
--
DROP TABLE IF EXISTS `v_jabatan`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_jabatan`  AS  select `tjabatan`.`id` AS `id`,`tjabatan`.`jabatan` AS `jabatan`,`tjabatan`.`des` AS `des` from `tjabatan` ;

-- --------------------------------------------------------

--
-- Structure for view `v_m_ukm`
--
DROP TABLE IF EXISTS `v_m_ukm`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_m_ukm`  AS  select `m_ukm`.`id` AS `id`,`m_ukm`.`nama_ukm` AS `nama_ukm`,`m_ukm`.`sejarah` AS `sejarah`,`m_ukm`.`deskripsi` AS `deskripsi`,`m_ukm`.`kepanjangan` AS `kepanjangan`,`m_ukm`.`icon` AS `icon`,`m_ukm`.`visi` AS `visi` from `m_ukm` ;

-- --------------------------------------------------------

--
-- Structure for view `v_skills`
--
DROP TABLE IF EXISTS `v_skills`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_skills`  AS  select `skills`.`id` AS `id`,`skills`.`SystemAnalyst` AS `SystemAnalyst`,`skills`.`WebDesigner` AS `WebDesigner`,`skills`.`GraphicDesigner` AS `GraphicDesigner`,`skills`.`NetworkAdministrator` AS `NetworkAdministrator`,`skills`.`SoftwareEngineer` AS `SoftwareEngineer` from `skills` ;

-- --------------------------------------------------------

--
-- Structure for view `v_sosmed`
--
DROP TABLE IF EXISTS `v_sosmed`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_sosmed`  AS  select `sosial_media`.`id` AS `id`,`sosial_media`.`Facebook` AS `Facebook`,`sosial_media`.`Googleplus` AS `Googleplus`,`sosial_media`.`LinkedIn` AS `LinkedIn`,`sosial_media`.`Instagram` AS `Instagram`,`sosial_media`.`Twitter` AS `Twitter`,`sosial_media`.`Youtube` AS `Youtube` from `sosial_media` ;

-- --------------------------------------------------------

--
-- Structure for view `v_totalkomen`
--
DROP TABLE IF EXISTS `v_totalkomen`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_totalkomen`  AS  select count(`post_comments`.`post_id`) AS `total` from ((`post_comments` join `posting` on((`post_comments`.`post_id` = `posting`.`id`))) join `posts_image` on((`posting`.`post_image` = `posts_image`.`id`))) group by `posting`.`id` ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `anggota_bem`
--
ALTER TABLE `anggota_bem`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `m_kelas`
--
ALTER TABLE `m_kelas`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `m_ukm`
--
ALTER TABLE `m_ukm`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `posting`
--
ALTER TABLE `posting`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `posts_image`
--
ALTER TABLE `posts_image`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `post_comments`
--
ALTER TABLE `post_comments`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `skills`
--
ALTER TABLE `skills`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `sosial_media`
--
ALTER TABLE `sosial_media`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `suara_mahasiswa`
--
ALTER TABLE `suara_mahasiswa`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `tjabatan`
--
ALTER TABLE `tjabatan`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `anggota_bem`
--
ALTER TABLE `anggota_bem`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `m_kelas`
--
ALTER TABLE `m_kelas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `m_ukm`
--
ALTER TABLE `m_ukm`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `posting`
--
ALTER TABLE `posting`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `posts_image`
--
ALTER TABLE `posts_image`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `post_comments`
--
ALTER TABLE `post_comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `skills`
--
ALTER TABLE `skills`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `sosial_media`
--
ALTER TABLE `sosial_media`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `suara_mahasiswa`
--
ALTER TABLE `suara_mahasiswa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tjabatan`
--
ALTER TABLE `tjabatan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
