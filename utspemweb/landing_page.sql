-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 15, 2023 at 12:25 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `landing_page`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`username`, `password`) VALUES
('admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `halaman`
--

CREATE TABLE `halaman` (
  `id` int(11) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `kutipan` varchar(255) NOT NULL,
  `isi` text NOT NULL,
  `tgl_isi` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `halaman`
--

INSERT INTO `halaman` (`id`, `judul`, `kutipan`, `isi`, `tgl_isi`) VALUES
(2, 'Kursus Online Pemrograman Web', 'Belajar dari #manapun dan #kapanpun', '<p style=\"text-align: justify; \"><span style=\"color: rgb(0, 0, 0);\">Pelajari cara membuat website profesional dengan mudah melalui kursus online pemrograman web kami! Dengan kursus kami, Anda akan belajar cara membuat website yang menarik dan responsif menggunakan HTML, CSS, JavaScript, dan banyak lagi. Bergabunglah sekarang dan jadilah ahli pemrograman web dalam waktu singkat!</span><br></p><p><img src=\"../gambar/013d407166ec4fa56eb1e1f8cbe183b9.jpg\" style=\"width: 626px; float: left;\" class=\"note-float-left\"><br></p>', '2023-03-13 10:41:21'),
(3, 'Filosofi Kami', 'WEB-Lab', '<p><span style=\"color: rgb(38, 38, 38); font-family: YSText, Arial, sans-serif; font-size: 20px;\">Pendidikan adalah investasi untuk masa depan yang memiliki potensi transformatif yang kuat. Ia juga memiliki manfaat sosial untuk meningkatkan kualitas hidup secara dramatis. Di WEB-Lab, kami menganggap mendidikan sebagai “force multiplier” yang melipatgandakan energi baik dan melihat kesempatan yang luas dalam pendidikan daring, terutama dalam belajar membuat kode.</span></p><p><span style=\"color: rgb(38, 38, 38); font-family: YSText, Arial, sans-serif; font-size: 20px;\">Meskipun permintaan terhadap pembuat kode di seluruh dunia amat masif, pendidikan pengkodean awalnya ditujukan hanya pada mereka yang jago matematika. Memang, profesi teknik seperti coding dan data science sarat dengan mitos: untuk bisa sukses di bidang teknologi, kamu harus jenius dalam matematika, harus kuliah di universitas termahsyur, atau harus muda dan paham teknologi.</span></p><p><span style=\"color: rgb(38, 38, 38); font-family: YSText, Arial, sans-serif; font-size: 20px;\">Sebaliknya, kami yakin bahwa siapapun yang punya motivasi dan keinginan untuk bekerja keras bisa meraih karier yang sukses di bidang teknologi. Inilah alasan kami menciptakan bootcamp yang daring dan paruh waktu, yang terbuka untuk semua orang. Kami ingin supaya bootcamp ini cukup fleksibel, supaya orang yang sudah bekerja bisa ikut, namun juga cukup serius sehingga mampu mengajarkan keterampilan yang dituntut dalam komunitas industri teknologi secara luas.</span><img src=\"../gambar/149e9677a5989fd342ae44213df68868.jpg\" style=\"width: 626px;\"><span style=\"color: rgb(38, 38, 38); font-family: YSText, Arial, sans-serif; font-size: 20px;\"><br></span><br></p>', '2023-03-14 22:33:42');

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE `members` (
  `id` int(11) NOT NULL,
  `email` varchar(30) NOT NULL,
  `nama_lengkap` varchar(50) NOT NULL,
  `password` text NOT NULL,
  `tgl_isi` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `members`
--

INSERT INTO `members` (`id`, `email`, `nama_lengkap`, `password`, `tgl_isi`) VALUES
(1, 'indra@gmail.com', 'Indra Fiqi Ripani', '1bbd886460827015e5d605ed44252251', '2023-03-13 11:48:30'),
(2, 'indrafr@gmail.com', 'Indra Fiqi Ripani', '1bbd886460827015e5d605ed44252251', '2023-03-13 12:19:27');

-- --------------------------------------------------------

--
-- Table structure for table `partners`
--

CREATE TABLE `partners` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `foto` varchar(255) NOT NULL,
  `isi` text NOT NULL,
  `tgl_isi` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `partners`
--

INSERT INTO `partners` (`id`, `nama`, `foto`, `isi`, `tgl_isi`) VALUES
(1, 'Microsoft', 'partners_1678660671_Microsoft.png', '<div>Microsoft adalah perusahaan multinasional teknologi asal Amerika Serikat yang didirikan pada tahun 1975 oleh Bill Gates dan Paul Allen. Perusahaan ini terkenal karena mengembangkan sistem operasi Windows, yang telah menjadi platform utama bagi komputer pribadi di seluruh dunia.</div><div><br></div><div>Selain Windows, Microsoft juga mengembangkan produk-produk dan layanan digital lainnya, seperti Microsoft Office, Xbox, Skype, LinkedIn, dan banyak lagi. Perusahaan ini memiliki fokus besar pada pengembangan kecerdasan buatan, cloud computing, dan Internet of Things (IoT), dan terus menciptakan inovasi baru dalam bidang teknologi.</div><div><br></div><div>Microsoft adalah salah satu perusahaan teknologi terbesar di dunia, dengan kantor di berbagai negara dan ribuan karyawan di seluruh dunia. Perusahaan ini juga sangat terlibat dalam tanggung jawab sosial dan lingkungan, dengan melakukan berbagai program filantropi dan peningkatan lingkungan hidup.</div><div><br></div><div>Sejak didirikan, Microsoft telah memainkan peran penting dalam transformasi dunia digital dan memberikan dampak besar pada kehidupan manusia di seluruh dunia. Perusahaan ini terus berinovasi dan mengembangkan produk dan layanan baru yang mempercepat transformasi digital dan memudahkan akses teknologi bagi masyarakat luas.</div>', '2023-03-13 14:18:17'),
(2, 'Meta', 'partners_1678660881_Meta.jpg', '<p>Meta adalah sebuah perusahaan teknologi Amerika yang didirikan pada tahun 2004 dan terkenal sebagai pemilik Facebook, WhatsApp, Instagram, dan Messenger. Dalam sejarahnya, perusahaan ini juga dikenal sebagai Facebook Inc., namun pada tahun 2021, Mark Zuckerberg mengumumkan perubahan nama perusahaan menjadi Meta sebagai bagian dari strategi perusahaan untuk memperluas fokus ke bidang metaverse.</p><p>Meta memiliki misi untuk membangun teknologi yang memungkinkan orang berinteraksi satu sama lain melalui berbagai produk dan layanan digital. Produk utama Meta, seperti Facebook dan Instagram, telah menjadi bagian penting dari kehidupan digital masyarakat di seluruh dunia dan memiliki pengaruh besar pada cara manusia berkomunikasi, terutama dalam era digital yang semakin maju.</p><p>Selain fokus pada produk konsumen, Meta juga memiliki kehadiran yang signifikan dalam bidang teknologi lainnya, seperti kecerdasan buatan, augmented reality, virtual reality, dan blockchain. Meta berupaya untuk mempercepat perkembangan teknologi ini dan mengembangkan pengalaman digital yang lebih imersif dan interaktif.</p><p>Dalam beberapa tahun terakhir, Meta juga mengambil peran penting dalam isu-isu sosial dan politik, seperti kebebasan berekspresi, privasi, dan keamanan data. Perusahaan ini aktif dalam melakukan penelitian dan pengembangan untuk meningkatkan kesadaran dan perlindungan atas isu-isu tersebut.</p><p>Meta adalah perusahaan teknologi yang terus berkembang dan memberikan dampak besar pada kehidupan manusia di seluruh dunia. Perusahaan ini terus berinovasi dan memperluas bisnisnya ke berbagai bidang, sambil mempertahankan fokusnya pada produk dan layanan digital yang memungkinkan orang untuk terhubung dan berinteraksi satu sama lain.</p>', '2023-03-13 14:21:04'),
(3, 'Institut Teknologi Bandung', 'partners_1678660985_Institut Teknologi Bandung.png', '<div>Institut Teknologi Bandung (ITB) adalah perguruan tinggi teknologi yang terletak di kota Bandung, Indonesia. Didirikan pada tahun 1959, ITB merupakan salah satu perguruan tinggi terkemuka di Indonesia dan Asia Tenggara yang fokus pada pendidikan, penelitian, dan pengembangan ilmu pengetahuan dan teknologi.</div><div><br></div><div>ITB terkenal karena memiliki program-program akademik berkualitas dan banyak dikenal di berbagai bidang, seperti teknik, ilmu alam, matematika, seni dan desain, manajemen, dan lain-lain. ITB juga memiliki kerjasama internasional dengan berbagai perguruan tinggi dan institusi di luar negeri, sehingga siswa dan dosen ITB dapat terlibat dalam kegiatan penelitian dan pertukaran pelajar ke luar negeri.</div><div><br></div><div>Selain pendidikan, ITB juga memainkan peran penting dalam pengembangan teknologi dan inovasi di Indonesia. ITB berupaya untuk menjadi pusat inovasi dan teknologi yang unggul di Indonesia, dengan mengembangkan berbagai riset dan penelitian di bidang teknologi yang dapat memberikan dampak bagi masyarakat.</div><div><br></div><div>ITB memiliki kampus yang luas dan modern di Bandung, yang dilengkapi dengan berbagai fasilitas pendukung seperti laboratorium, perpustakaan, studio seni dan desain, pusat olahraga, dan lain-lain. Selain itu, ITB juga memiliki berbagai kegiatan ekstrakurikuler seperti kegiatan seni dan budaya, olahraga, dan organisasi sosial yang dapat membantu siswa mengembangkan diri secara keseluruhan.</div><div><br></div><div>ITB adalah salah satu perguruan tinggi terkemuka di Indonesia yang memiliki peran penting dalam pengembangan teknologi dan inovasi di negara tersebut. ITB terus berupaya meningkatkan kualitas pendidikan dan risetnya, serta menjalin kerjasama dengan institusi dan perguruan tinggi di seluruh dunia.</div>', '2023-03-13 14:23:22'),
(4, 'Massachusetts Institute of Technology', 'partners_1678661170_Massachusetts Institute of Technology.png', '<div>Massachusetts Institute of Technology (MIT) adalah sebuah perguruan tinggi swasta terkemuka yang terletak di Cambridge, Massachusetts, Amerika Serikat. Didirikan pada tahun 1861, MIT memiliki reputasi yang sangat baik dalam bidang ilmu pengetahuan, teknologi, dan inovasi, serta terus menjadi tempat berkumpulnya pikiran-pikiran brilian dari seluruh dunia.</div><div><br></div><div>MIT memiliki 5 fakultas utama: Fakultas Seni dan Ilmu, Fakultas Teknik, Fakultas Ilmu Komputer dan Kecerdasan Buatan, Fakultas Manajemen Sloan, dan Fakultas Sains. MIT juga memiliki banyak pusat penelitian dan institut, termasuk Laboratorium Lincoln, MIT Media Lab, dan MIT Energy Initiative.</div><div><br></div><div>Salah satu keunggulan MIT adalah pendekatan interdisipliner dalam mengembangkan solusi untuk masalah dunia nyata. MIT memiliki banyak program akademik yang dirancang untuk memungkinkan para siswa untuk belajar dan berkolaborasi dengan para ahli di berbagai bidang, dan menghasilkan inovasi yang dapat memberikan dampak positif bagi masyarakat.</div><div><br></div><div>Selain itu, MIT juga dikenal karena pendorongannya terhadap kewirausahaan dan inovasi teknologi. Banyak perusahaan teknologi besar seperti Dropbox, Bose, dan Intel berasal dari MIT, dan perguruan tinggi ini terus mendukung para siswa dan alumni yang ingin mengembangkan ide-ide baru menjadi perusahaan yang sukses.</div><div><br></div><div>MIT memiliki lingkungan akademik yang dinamis dan penuh dengan inspirasi, dengan berbagai kegiatan mahasiswa, seminar, dan acara sosial yang menarik. Selain itu, kampus MIT yang modern dan canggih dilengkapi dengan berbagai fasilitas pendukung seperti laboratorium, pusat olahraga, dan lain-lain.</div>', '2023-03-13 14:26:52'),
(5, 'Harvard University', 'partners_1678661255_Harvard University.png', '<div>Harvard University adalah sebuah perguruan tinggi swasta terkemuka yang terletak di Cambridge, Massachusetts, Amerika Serikat. Didirikan pada tahun 1636, Harvard adalah salah satu perguruan tinggi tertua di Amerika Serikat dan dianggap sebagai salah satu perguruan tinggi terbaik di dunia.</div><div><br></div><div>Harvard memiliki 10 fakultas utama, termasuk Fakultas Seni dan Ilmu, Fakultas Hukum, Fakultas Bisnis, dan Fakultas Kedokteran. Selain itu, Harvard juga memiliki berbagai program interdisipliner seperti Harvard Kennedy School dan Harvard Graduate School of Education.</div><div><br></div><div>Perguruan tinggi ini terkenal dengan keunggulan akademiknya di banyak bidang, termasuk ilmu sosial, humaniora, sains, dan teknologi. Harvard juga memiliki beberapa program pascasarjana terbaik di dunia, seperti program MBA di Harvard Business School dan program hukum di Harvard Law School.</div><div><br></div><div>Selain itu, Harvard juga memiliki banyak pusat penelitian dan institut, termasuk Harvard-Smithsonian Center for Astrophysics dan Harvard Stem Cell Institute. Perguruan tinggi ini sangat mendorong para mahasiswa untuk melakukan penelitian dan mengembangkan inovasi baru yang dapat memberikan dampak positif bagi masyarakat.</div><div><br></div><div>Selain akademiknya, Harvard juga terkenal dengan kehidupan kampusnya yang dinamis dan beragam. Kampus Harvard yang indah dilengkapi dengan berbagai fasilitas pendukung seperti perpustakaan terbesar di dunia dan berbagai pusat kegiatan mahasiswa.</div><div><br></div><div>Dalam sejarahnya, Harvard telah melahirkan banyak pemimpin dunia, termasuk 8 presiden Amerika Serikat dan banyak tokoh terkenal seperti Mark Zuckerberg, Bill Gates, dan Barack Obama.</div>', '2023-03-13 14:30:08');

-- --------------------------------------------------------

--
-- Table structure for table `tutors`
--

CREATE TABLE `tutors` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `foto` varchar(255) NOT NULL,
  `isi` text NOT NULL,
  `tgl_isi` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tutors`
--

INSERT INTO `tutors` (`id`, `nama`, `foto`, `isi`, `tgl_isi`) VALUES
(1, 'Steve Jobs', 'tutors_1678634939_Steve Jobs.jpg', '<div>Steve Jobs adalah seorang tokoh bisnis dan teknologi yang terkenal di dunia sebagai salah satu pendiri Apple Inc. Ia lahir pada tahun 1955 di San Francisco, California dan meninggal pada tahun 2011 karena kanker pankreas.</div><div><br></div><div>Jobs dikenal sebagai seorang inovator yang visioner, ia menggabungkan keterampilan desain dan teknologi untuk menciptakan produk-produk yang mempengaruhi industri teknologi, mulai dari komputer pribadi hingga telepon pintar. Selain itu, Jobs juga dikenal sebagai seorang pemimpin yang karismatik dan tegas dalam mengambil keputusan.</div><div><br></div><div>Pada awal 1970-an, Jobs bertemu dengan Steve Wozniak dan mulai mengembangkan komputer pribadi di garasi mereka. Pada tahun 1976, mereka mendirikan Apple Computer dan merilis komputer pribadi pertama mereka, Apple I. Produk ini sukses besar dan membuka jalan bagi Apple untuk memproduksi produk-produk revolusioner seperti Macintosh, iPod, iPhone, dan iPad.</div><div><br></div><div>Setelah meninggalkan Apple pada tahun 1985, Jobs mendirikan perusahaan NeXT Computer dan Pixar Animation Studios. Pixar kemudian sukses besar dengan film animasi seperti Toy Story, Finding Nemo, dan The Incredibles.</div><div><br></div><div>Pada tahun 1997, Jobs kembali ke Apple dan membantu perusahaan itu keluar dari masa-masa sulit. Ia mengembangkan produk-produk seperti iMac, iPod, dan iPhone, yang sukses besar di pasaran dan menjadikan Apple sebagai salah satu perusahaan teknologi terkemuka di dunia.</div><div><br></div><div>Steve Jobs adalah salah satu tokoh yang sangat berpengaruh dalam industri teknologi. Ia dikenal sebagai seorang inovator dan pemimpin yang visioner, dan produk-produk yang ia ciptakan masih mempengaruhi dunia teknologi hingga saat ini.</div>', '2023-03-13 13:53:28'),
(2, 'Bill Gates', 'tutors_1678635509_Bill Gates.jpg', '<div>Bill Gates adalah seorang tokoh bisnis, teknologi, dan filantropi terkenal dunia. Ia lahir pada tahun 1955 di Seattle, Washington, Amerika Serikat. Gates dikenal sebagai salah satu pendiri Microsoft Corporation, perusahaan yang mengembangkan sistem operasi Windows, yang saat ini digunakan oleh jutaan orang di seluruh dunia.</div><div><br></div><div>Gates memiliki minat dalam teknologi sejak kecil dan bersekolah di Harvard University, namun kemudian meninggalkan kuliahnya untuk mengembangkan Microsoft bersama rekannya, Paul Allen. Microsoft merilis sistem operasi pertamanya pada tahun 1985 dan sejak saat itu menjadi perusahaan terkemuka di industri teknologi.</div><div><br></div><div>Selain menjadi pendiri Microsoft, Gates juga dikenal sebagai seorang filantropis. Ia bersama istrinya, Melinda Gates, mendirikan Bill and Melinda Gates Foundation, salah satu yayasan amal terbesar di dunia, yang fokus pada program-program kesehatan dan pendidikan di seluruh dunia.</div><div><br></div><div>Gates juga dikenal sebagai seorang visioner dalam industri teknologi dan sering kali dipandang sebagai salah satu orang terkaya di dunia. Ia telah memenangkan banyak penghargaan dan prestasi, termasuk Presidential Medal of Freedom dari Presiden Amerika Serikat, dan diakui sebagai salah satu tokoh paling berpengaruh di dunia oleh majalah Time.</div><div><br></div><div>Bill Gates masih aktif di dunia bisnis dan filantropi hingga saat ini. Ia terus mendukung inovasi dan pengembangan teknologi yang dapat memajukan dunia dan meningkatkan kualitas hidup manusia secara global.</div>', '2023-03-13 13:56:12'),
(3, 'Mark Zuckerberg', 'tutors_1678634826_Mark Zuckerberg.jpg', '<div>Mark Zuckerberg adalah seorang pengusaha dan teknologi terkenal dunia yang dikenal sebagai pendiri dan CEO Facebook, salah satu situs jejaring sosial terbesar dan paling populer di dunia. Ia lahir pada tahun 1984 di New York, Amerika Serikat dan saat ini menjadi salah satu orang terkaya di dunia.</div><div><br></div><div>Zuckerberg tertarik pada teknologi sejak kecil dan belajar pemrograman komputer di rumah. Ia kemudian masuk ke Universitas Harvard dan mulai mengembangkan Facebook bersama rekan-rekannya pada tahun 2004. Facebook menjadi sukses besar dan menjadi situs jejaring sosial yang paling populer di dunia, dengan pengguna yang mencapai miliaran orang.</div><div><br></div><div>Selain menjadi pendiri Facebook, Zuckerberg juga dikenal sebagai seorang filantropis. Ia dan istrinya, Priscilla Chan, mendirikan Chan Zuckerberg Initiative, yayasan amal yang fokus pada program-program kesehatan, pendidikan, dan teknologi di seluruh dunia.</div><div><br></div><div>Zuckerberg dikenal sebagai seorang visioner dalam industri teknologi dan seringkali berbicara tentang masa depan teknologi dan bagaimana teknologi dapat membantu mengatasi masalah sosial di seluruh dunia. Ia juga aktif dalam mendukung program-program pendidikan dan teknologi untuk anak-anak dan remaja.</div><div><br></div><div>Meskipun beberapa kali menghadapi kontroversi terkait privasi dan keamanan pengguna di Facebook, Zuckerberg terus memimpin perusahaan ini dan mengembangkan inovasi baru, seperti Instagram dan WhatsApp. Zuckerberg masih aktif di dunia bisnis dan filantropi hingga saat ini, dan tetap menjadi salah satu tokoh terkemuka di dunia teknologi dan bisnis.</div>', '2023-03-13 13:59:32'),
(4, 'Sundar Pichai', 'tutors_1678634432_Sundar Pichai.jpg', '<div>Sundar Pichai adalah seorang insinyur dan eksekutif teknologi terkenal dunia yang saat ini menjabat sebagai CEO Alphabet Inc., perusahaan induk Google. Ia lahir pada tahun 1972 di India dan mendapatkan gelar sarjana dan magister di bidang teknik dari Universitas Stanford di Amerika Serikat.</div><div><br></div><div>Pichai bergabung dengan Google pada tahun 2004 dan bekerja di berbagai divisi perusahaan, termasuk mengembangkan produk-produk seperti Google Chrome, Google Drive, dan Android. Ia juga terlibat dalam pengembangan Google Search, salah satu produk paling terkenal dan penting dari Google.</div><div><br></div><div>Pichai dikenal sebagai seorang eksekutif yang visioner dan terus memimpin perusahaan untuk mengembangkan inovasi baru di berbagai bidang, termasuk kecerdasan buatan (AI), Internet of Things (IoT), dan cloud computing. Ia juga terus mendorong perusahaan untuk mengambil tanggung jawab sosial yang lebih besar dalam membangun teknologi yang aman dan bermanfaat bagi masyarakat.</div><div><br></div><div>Selain sebagai CEO Alphabet Inc., Pichai juga aktif dalam berbagai program filantropi. Ia dan istrinya mendirikan Pichai Foundation, sebuah yayasan amal yang fokus pada pendidikan, kesehatan, dan lingkungan di India.</div><div><br></div><div>Pichai diakui sebagai salah satu tokoh paling berpengaruh di dunia dan telah menerima banyak penghargaan, termasuk dari majalah Time sebagai salah satu orang paling berpengaruh di dunia. Meskipun begitu, ia tetap rendah hati dan terus bekerja keras untuk memimpin Google dan Alphabet Inc. dalam mencapai tujuannya menjadi perusahaan teknologi terkemuka di dunia.</div>', '2023-03-13 14:02:13'),
(5, 'Alamanda Shantika', 'tutors_1678634919_Alamanda Shantika Santoso.jpg', '<div>Alamanda Shantika adalah seorang pengusaha muda Indonesia yang terkenal sebagai pendiri Binar Academy, sebuah lembaga pelatihan dan edukasi di bidang teknologi dan digital. Ia lahir pada tahun 1995 di Indonesia dan memiliki latar belakang pendidikan di bidang teknologi dan bisnis.</div><div><br></div><div>Shantika mendirikan Binar Academy pada tahun 2016 dengan tujuan untuk membantu orang-orang Indonesia meningkatkan keterampilan di bidang teknologi dan digital. Lembaga ini menawarkan berbagai program pelatihan, mulai dari pemrograman, desain grafis, hingga manajemen bisnis digital, dan telah membantu ribuan orang memperoleh keterampilan baru dan meningkatkan karir mereka di industri digital.</div><div><br></div><div>Selain sebagai pendiri Binar Academy, Shantika juga terlibat dalam berbagai kegiatan pengembangan industri teknologi dan kewirausahaan di Indonesia. Ia seringkali diundang sebagai pembicara di berbagai acara dan konferensi teknologi, dan aktif dalam mempromosikan keterampilan digital di kalangan anak muda Indonesia.</div><div><br></div><div>Dalam beberapa tahun terakhir, Shantika telah mendapatkan banyak penghargaan dan pengakuan atas kontribusinya dalam bidang teknologi dan edukasi, termasuk dari Forbes Indonesia sebagai salah satu dari \"30 Under 30\" dalam kategori bisnis dan industri, serta dari Kementerian Pendidikan dan Kebudayaan Indonesia sebagai \"Pahlawan Digital\". Shantika tetap menjadi contoh inspiratif bagi banyak orang di Indonesia dan di luar negeri dalam memperjuangkan edukasi dan teknologi.</div>', '2023-03-13 14:06:21');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `halaman`
--
ALTER TABLE `halaman`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `partners`
--
ALTER TABLE `partners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tutors`
--
ALTER TABLE `tutors`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `halaman`
--
ALTER TABLE `halaman`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `members`
--
ALTER TABLE `members`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `partners`
--
ALTER TABLE `partners`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tutors`
--
ALTER TABLE `tutors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
