-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 28, 2024 at 03:03 AM
-- Server version: 8.0.30
-- PHP Version: 8.2.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `unibashop`
--

-- --------------------------------------------------------

--
-- Table structure for table `banner`
--

CREATE TABLE `banner` (
  `banner_id` int NOT NULL,
  `banner` varchar(100) NOT NULL,
  `gambar` varchar(150) NOT NULL,
  `link` varchar(500) NOT NULL,
  `status` enum('on','off') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `banner`
--

INSERT INTO `banner` (`banner_id`, `banner`, `gambar`, `link`, `status`) VALUES
(1, 'Apple Iphone 6', 'banner1.png', 'index.php?page=detail&barang_id=5', 'on'),
(2, 'Samsung A3 A300H', 'banner1.png', 'index.php?page=detail&barang_id=6', 'on');

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `barang_id` int NOT NULL,
  `kategori_id` int NOT NULL,
  `nama_barang` varchar(250) NOT NULL,
  `spesifikasi` text NOT NULL,
  `gambar` varchar(300) NOT NULL,
  `harga` int NOT NULL,
  `stok` tinyint(1) NOT NULL,
  `status` enum('on','off') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`barang_id`, `kategori_id`, `nama_barang`, `spesifikasi`, `gambar`, `harga`, `stok`, `status`) VALUES
(1, 1, 'Galaxy Note 3', 'Samsung Galaxy Note 3 adalah smartphone Android yang dirilis pada September 2013 sebagai bagian dari seri Galaxy Note. Perangkat ini menonjol dengan layar besar berukuran 5,7 inci berteknologi Super AMOLED dengan resolusi Full HD (1920x1080), menjadikannya ideal untuk produktivitas dan hiburan. Salah satu fitur utamanya adalah S Pen, stylus yang mendukung berbagai fungsi seperti Air Command, yang dirancang untuk meningkatkan kreativitas dan efisiensi pengguna. Dari segi performa, Galaxy Note 3 dilengkapi dengan prosesor Qualcomm Snapdragon 800 atau Exynos Octa-core (tergantung wilayah), didukung oleh RAM 3GB, sehingga mampu menangani multitasking dan aplikasi berat dengan lancar. Kamera belakang 13 MP-nya mampu merekam video hingga resolusi 4K, memberikan pengalaman fotografi yang unggul pada masanya. Dengan desain yang elegan, bagian belakangnya menggunakan tekstur kulit sintetis yang memberikan kesan premium. Galaxy Note 3 menjadi salah satu perangkat unggulan di era tersebut, menawarkan kombinasi sempurna antara produktivitas dan hiburan.', 'samsung-galaxy-note-3.png', 7800000, 7, 'on'),
(2, 1, 'lenovo A7000 Dual SIM', '\r\nLenovo A7000 Dual SIM adalah smartphone Android yang dirilis pada tahun 2015, dirancang untuk pengguna yang mencari perangkat dengan performa baik dan harga terjangkau. Smartphone ini dilengkapi layar IPS 5,5 inci beresolusi HD (1280x720), memberikan tampilan yang cukup jernih untuk multimedia. Dari segi performa, Lenovo A7000 menggunakan prosesor MediaTek MT6752 Octa-core 1,5 GHz dengan dukungan RAM 2GB, yang memungkinkan kinerja lancar untuk kebutuhan sehari-hari, seperti browsing, bermain game ringan, dan streaming video.', 'Lenovo-A7000.png', 2200000, 5, 'on'),
(3, 1, 'Mi 4i', 'Xiaomi Mi 4i adalah smartphone Android yang dirilis pada April 2015, dirancang sebagai versi ekonomis dari flagship Mi 4. Perangkat ini hadir dengan layar IPS 5 inci beresolusi Full HD (1920x1080) yang dilengkapi teknologi Sunlight Display, memastikan tampilan tetap jelas meski di bawah sinar matahari langsung. Ditenagai prosesor Qualcomm Snapdragon 615 Octa-core dengan RAM 2GB, Mi 4i menawarkan kinerja yang mumpuni untuk aktivitas sehari-hari seperti multitasking, media sosial, dan streaming. Penyimpanan internalnya sebesar 16GB, namun tanpa dukungan slot microSD.', 'mi-4i.png', 2800000, 1, 'on'),
(4, 1, 'Samsung Grand Prime', 'Samsung Galaxy Grand Prime adalah smartphone Android yang dirilis pada Oktober 2014, dirancang untuk segmen kelas menengah dengan fokus pada kamera selfie dan performa yang efisien. Perangkat ini memiliki layar TFT 5 inci dengan resolusi qHD (960x540), cukup memadai untuk kebutuhan sehari-hari seperti browsing, media sosial, dan streaming video. Ditenagai prosesor Qualcomm Snapdragon 410 Quad-core 1.2 GHz dengan dukungan RAM 1GB, Galaxy Grand Prime menawarkan performa yang cukup baik untuk tugas ringan hingga menengah. Penyimpanan internalnya sebesar 8GB, yang dapat diperluas hingga 64GB melalui kartu microSD.', 'samsung-galaxy-grand-prime.png', 2250000, 9, 'on'),
(5, 1, 'Apple iPhone 6', 'Apple iPhone 6 adalah smartphone yang dirilis pada September 2014, membawa perubahan besar dalam desain dan peningkatan performa dibandingkan pendahulunya. Dengan layar Retina HD 4,7 inci beresolusi 1334x750, iPhone 6 menawarkan pengalaman visual yang tajam dan kaya warna, cocok untuk berbagai aktivitas seperti menonton video, bermain game, atau menjelajah web. Perangkat ini ditenagai oleh chip Apple A8 dengan arsitektur 64-bit dan prosesor M8 Motion Coprocessor, memberikan performa yang cepat dan efisien, sekaligus mendukung aplikasi yang lebih kompleks.', 'iphone-6-silver.png', 12700000, 2, 'on'),
(6, 1, 'Samsung A3 A300H', 'Samsung Galaxy A3 (A300H) adalah smartphone Android yang dirilis pada Desember 2014, dirancang untuk pengguna yang mencari perangkat dengan desain premium dan performa memadai di kelas menengah. Smartphone ini memiliki layar Super AMOLED 4,5 inci dengan resolusi qHD (960x540), yang menawarkan tampilan cerah dan warna yang tajam. Ditenagai oleh prosesor Qualcomm Snapdragon 410 Quad-core 1.2 GHz dan RAM 1GB, Galaxy A3 cocok untuk aktivitas ringan hingga menengah, seperti browsing, media sosial, dan streaming. Penyimpanan internalnya sebesar 16GB, dapat diperluas hingga 64GB melalui kartu microSD.', 'Samsung Galaxy-A3.png', 2900000, 5, 'on'),
(7, 1, 'Samsung Galaxy A8', 'Samsung Galaxy A8 adalah smartphone Android yang dirilis pada Juli 2015, dikenal dengan desain tipis dan premium berkat penggunaan bodi logam dan layar Super AMOLED 5,7 inci dengan resolusi Full HD (1920x1080). Perangkat ini menawarkan tampilan jernih dan warna yang hidup, cocok untuk menikmati multimedia dan bermain game. Galaxy A8 ditenagai oleh prosesor Qualcomm Snapdragon 615 Octa-core 1.5 GHz (tergantung wilayah) dengan RAM 2GB, memberikan performa yang cukup baik untuk multitasking dan aplikasi berat. Penyimpanan internalnya sebesar 16GB, yang dapat diperluas hingga 128GB menggunakan kartu microSD.', 'samsung-galaxy-A8.png', 6134000, 5, 'on'),
(8, 1, 'Asus Zenfone C ZC451CG', 'Asus Zenfone C ZC451CG adalah smartphone Android yang dirilis pada Februari 2015, ditujukan untuk pasar kelas entry-level dengan harga yang terjangkau namun menawarkan fitur-fitur yang cukup mumpuni. Perangkat ini memiliki layar IPS 4,5 inci dengan resolusi 854x480, memberikan tampilan yang cukup jernih untuk ukuran layar kecil. Ditenagai oleh prosesor Intel Atom Z2520 Dual-core 1.2 GHz dan RAM 1GB, Zenfone C cukup responsif untuk penggunaan dasar seperti browsing, media sosial, dan pesan instan. Penyimpanan internalnya sebesar 8GB, yang dapat diperluas hingga 64GB menggunakan kartu microSD.', 'asus-zenfone.png', 1325000, 0, 'on'),
(9, 3, 'Nikon D5200 Lensa Kit 18-55mm', 'Nikon D5200 dengan lensa kit 18-55mm adalah kamera DSLR entry-level yang dirilis oleh Nikon untuk pengguna yang ingin mulai mendalami fotografi dengan kualitas gambar yang baik. Ditenagai oleh sensor APS-C 24,1 MP, kamera ini menawarkan gambar yang tajam dan detail, cocok untuk berbagai jenis fotografi, dari potret hingga lanskap. Lensa kit 18-55mm f/3.5-5.6 VR yang disertakan dengan kamera ini memiliki rentang zoom standar, ideal untuk pengambilan gambar sehari-hari. Dengan fokus otomatis yang cepat dan stabilisasi gambar (VR), lensa ini memberikan hasil yang lebih jelas, bahkan dalam kondisi pencahayaan rendah. Kamera ini juga dilengkapi dengan layar LCD 3 inci yang dapat diputar, memungkinkan pengambilan gambar dari berbagai sudut. Selain itu, fitur seperti Full HD video recording, 8 fps continuous shooting, dan kompatibilitas dengan berbagai lensa Nikon menjadikannya pilihan yang sangat baik bagi pemula yang ingin mengembangkan keterampilan fotografi mereka.', 'nikon-d5200.png', 6000000, 9, 'on'),
(10, 3, 'Nikon D3200 Lensa Kit VR II 18-55mm', 'Nikon D3200 dengan lensa kit VR II 18-55mm adalah kamera DSLR entry-level yang dirilis untuk memberikan kualitas foto dan video yang tinggi bagi pemula. Kamera ini dilengkapi dengan sensor APS-C 24,2 MP, yang menghasilkan gambar tajam dan detail dengan rentang dinamis yang baik. Lensa kit 18-55mm f/3.5-5.6 VR II menawarkan rentang zoom standar yang ideal untuk berbagai jenis fotografi, seperti potret, pemandangan, dan fotografi sehari-hari. Teknologi VR (Vibration Reduction) pada lensa membantu mengurangi efek goyangan tangan, memberikan foto yang lebih tajam dalam kondisi pencahayaan rendah atau saat menggunakan kecepatan rana lambat.', 'nikon-d3200.png', 4800000, 1, 'on'),
(11, 3, 'Canon Eos 750D Kit 18-55mm IS STM', 'Canon EOS 750D dengan lensa kit 18-55mm IS STM adalah kamera DSLR mid-range yang dirilis untuk pengguna yang ingin meningkatkan keterampilan fotografi mereka dengan kualitas gambar yang luar biasa. Ditenagai oleh sensor APS-C 24,2 MP, kamera ini menghasilkan gambar yang tajam dan kaya detail dengan rentang dinamis yang baik. Lensa kit 18-55mm f/3.5-5.6 IS STM dilengkapi dengan teknologi Image Stabilization (IS) yang membantu mengurangi goyangan tangan, serta STM (Stepping Motor) untuk autofocus yang lebih halus dan senyap, terutama saat merekam video. Canon EOS 750D juga mendukung perekaman video Full HD 1080p dan dilengkapi dengan layar sentuh 3 inci yang dapat diputar, memudahkan pengambilan gambar dari berbagai sudut, termasuk selfie atau vlogging.', 'canon-eos-750d.png', 10100000, 2, 'on'),
(12, 3, 'Canon EOS 700D 18.0 MP 18-55mm IS STM', 'Canon EOS 700D dengan lensa kit 18-55mm IS STM adalah kamera DSLR yang dirilis untuk pengguna pemula hingga menengah yang menginginkan kualitas gambar tinggi dengan harga terjangkau. Ditenagai oleh sensor APS-C 18 MP, kamera ini menghasilkan foto yang tajam dan jelas dengan rentang dinamis yang baik. Lensa kit 18-55mm f/3.5-5.6 IS STM menawarkan rentang zoom standar dan dilengkapi dengan Image Stabilization (IS) untuk mengurangi goyangan tangan, serta STM (Stepping Motor) yang memberikan autofocus halus dan senyap, membuatnya ideal untuk perekaman video. Canon EOS 700D mendukung perekaman video Full HD 1080p dan dilengkapi dengan layar 3 inci yang dapat diputar, memungkinkan pengambilan gambar dari berbagai sudut, termasuk selfie atau vlogging.', 'canon-eos-700d.png', 7250000, 9, 'on'),
(13, 2, 'LG 32', 'LG 32\" TV adalah televisi dengan ukuran layar 32 inci yang sering hadir dengan resolusi HD (1366x768) atau Full HD (1920x1080), memberikan tampilan yang jernih dan detail yang cukup baik untuk ukuran layar ini. Dikenal dengan teknologi LED atau IPS, TV ini menawarkan kualitas warna yang lebih akurat dan sudut pandang yang lebih luas, membuat pengalaman menonton lebih menyenangkan. Banyak model LG 32\" TV yang juga dilengkapi dengan fitur Smart TV, memungkinkan pengguna untuk mengakses aplikasi streaming seperti Netflix, YouTube, dan lainnya, serta melakukan koneksi internet untuk menonton konten online. Dengan desain yang kompak, LG 32\" TV cocok untuk ruangan kecil hingga menengah dan memberikan kualitas gambar yang baik dengan harga yang terjangkau.', 'lg-32-led-tv-32LF550A.png', 2700000, 4, 'on'),
(14, 2, 'LG LED TV 32', 'LG LED TV 32 adalah televisi dengan layar 32 inci yang menggunakan teknologi LED untuk menghasilkan gambar yang cerah dan tajam. Biasanya hadir dengan resolusi HD (1366x768) atau Full HD (1920x1080), memberikan pengalaman menonton yang menyenangkan dengan detail yang jelas. TV ini dirancang dengan desain ramping dan modern, cocok untuk ruangan kecil hingga menengah. Beberapa model LG LED TV 32 juga dilengkapi dengan fitur Smart TV, yang memungkinkan pengguna untuk mengakses berbagai aplikasi streaming seperti Netflix, YouTube, dan layanan lainnya, serta menghubungkan perangkat eksternal melalui port HDMI dan USB. Dengan kualitas gambar yang baik dan efisiensi energi, LG LED TV 32 menjadi pilihan yang populer untuk pengguna yang mencari televisi berkualitas dengan harga yang terjangkau.', 'lg-led-tv32-32LF520A.png', 2750000, 3, 'on'),
(15, 2, 'Sharp 32', 'Sharp 32 adalah televisi dengan layar 32 inci yang menawarkan kualitas gambar baik dengan berbagai pilihan resolusi, seperti HD (1366x768) atau Full HD (1920x1080), tergantung pada modelnya. TV ini menggunakan teknologi LED untuk memberikan gambar yang terang dan warna yang akurat. Sharp 32 cocok untuk ruangan kecil hingga menengah, memberikan pengalaman menonton yang menyenangkan dengan desain yang kompak dan modern. Beberapa model juga dilengkapi dengan berbagai port konektivitas, seperti HDMI dan USB, yang memungkinkan pengguna untuk menghubungkan perangkat eksternal seperti pemutar DVD, konsol game, atau hard drive eksternal. Dengan harga yang bersaing dan kualitas gambar yang baik, Sharp 32 menjadi pilihan yang populer bagi mereka yang mencari televisi terjangkau dengan performa yang solid.', 'sharp-32-led-32LE265i.png', 2750000, 9, 'on'),
(16, 4, 'RBS809', 'Radio portabel buatan brand elektronik lokal ini cocok untuk Anda yang mencari radio bersaluran lengkapi. Pasalnya, Advance Multi-Band Speaker Radio Portable RBS809 ini dilengkapi empat saluran frekuensi, yakni FM, AM, SW1, dan SW2. Dengan begitu, Anda jadi bisa mengulik banyak siaran radio sesuai keinginan, bahkan hingga jaringan amatir sekalipun. Ditambah lagi, radio ini juga dilengkapi senter, lho! Jadi, kalau tiba-tiba mati lampu penerangannya tentu amat berguna untuk membantu menerangi rumah Anda', 'WhatsApp_Image_2024-12-16_at_22.06.36-removebg-preview.png', 250000, 4, 'on'),
(17, 4, 'TY-HRU30', 'TY-HRU30 adalah model radio portabel buatan Toshiba, yang dirancang untuk memberikan pengalaman mendengarkan yang nyaman dengan berbagai fitur praktis. Radio ini biasanya mendukung berbagai frekuensi, seperti AM dan FM, memungkinkan pengguna untuk menikmati siaran radio lokal. Desainnya kompak dan mudah dibawa, cocok untuk digunakan di rumah, di luar ruangan, atau saat bepergian. Radio TY-HRU30 juga dilengkapi dengan fitur stereo speaker untuk suara yang jernih dan cukup kuat, serta beberapa model mungkin memiliki opsi pencarian otomatis untuk mencari saluran radio dengan cepat. Daya yang digunakan bisa melalui baterai atau adapter daya, membuatnya fleksibel dalam berbagai situasi. Perangkat ini cocok bagi mereka yang mencari radio sederhana, mudah digunakan, dan dapat diandalkan untuk mendengarkan musik, berita, atau hiburan lainnya.', 'Screenshot 2024-12-16 221231.png', 500000, 6, 'on');

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `kategori_id` int NOT NULL,
  `kategori` varchar(150) NOT NULL,
  `status` enum('on','off') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`kategori_id`, `kategori`, `status`) VALUES
(1, 'Smartphone', 'on'),
(2, 'Televisi', 'on'),
(3, 'Kamera', 'on'),
(4, 'Radio', 'on');

-- --------------------------------------------------------

--
-- Table structure for table `konfirmasi_pembayaran`
--

CREATE TABLE `konfirmasi_pembayaran` (
  `konfirmasi_id` int NOT NULL,
  `pesanan_id` int NOT NULL,
  `nomor_rekening` varchar(20) NOT NULL,
  `nama_account` varchar(150) NOT NULL,
  `tanggal_transfer` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `konfirmasi_pembayaran`
--

INSERT INTO `konfirmasi_pembayaran` (`konfirmasi_id`, `pesanan_id`, `nomor_rekening`, `nama_account`, `tanggal_transfer`) VALUES
(14, 21, '111', 'anss', '2024-12-17');

-- --------------------------------------------------------

--
-- Table structure for table `kota`
--

CREATE TABLE `kota` (
  `kota_id` int NOT NULL,
  `kota` varchar(150) NOT NULL,
  `tarif` int NOT NULL,
  `status` enum('on','off') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kota`
--

INSERT INTO `kota` (`kota_id`, `kota`, `tarif`, `status`) VALUES
(1, 'Pamekasan', 6000, 'on'),
(2, 'Sampang', 8000, 'on'),
(3, 'Surabaya', 11000, 'on'),
(4, 'Bangkalan', 9000, 'on'),
(5, 'Sumenep', 4000, 'on');

-- --------------------------------------------------------

--
-- Table structure for table `pesanan`
--

CREATE TABLE `pesanan` (
  `pesanan_id` int NOT NULL,
  `kota_id` int NOT NULL,
  `user_id` int NOT NULL,
  `nama_penerima` varchar(150) NOT NULL,
  `nomor_telepon` varchar(15) NOT NULL,
  `alamat` varchar(300) NOT NULL,
  `tanggal_pemesanan` datetime NOT NULL,
  `status` tinyint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pesanan`
--

INSERT INTO `pesanan` (`pesanan_id`, `kota_id`, `user_id`, `nama_penerima`, `nomor_telepon`, `alamat`, `tanggal_pemesanan`, `status`) VALUES
(21, 1, 16, 'anas', '085856273002', 'pamekasan', '2024-12-18 13:57:09', 2);

-- --------------------------------------------------------

--
-- Table structure for table `pesanan_detail`
--

CREATE TABLE `pesanan_detail` (
  `pesanan_id` int NOT NULL,
  `barang_id` int NOT NULL,
  `quantity` tinyint NOT NULL,
  `harga` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pesanan_detail`
--

INSERT INTO `pesanan_detail` (`pesanan_id`, `barang_id`, `quantity`, `harga`) VALUES
(21, 6, 1, 2900000),
(21, 10, 1, 4800000);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int NOT NULL,
  `level` varchar(30) NOT NULL,
  `nama` varchar(150) NOT NULL,
  `email` varchar(160) NOT NULL,
  `alamat` varchar(400) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `password` varchar(300) NOT NULL,
  `status` enum('on','off') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `level`, `nama`, `email`, `alamat`, `phone`, `password`, `status`) VALUES
(1, 'superadmin', 'anas', 'anas@gmail.com', 'sumenep', '088111111', '5f4dcc3b5aa765d61d8327deb882cf99', 'on'),
(2, 'customer', 'custom', 'custom@gmail.com', 'summmm', '086546', '8b9035807842a4e4dbe009f3f1478127', 'on'),
(16, 'customer', 'khairul anas', 'khairul@gmail.com', 'sumenep', '085856273002', '6cc0a06403d6e38d04ae7d778750e7a2', 'on');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`banner_id`);

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`barang_id`),
  ADD KEY `kategori_id` (`kategori_id`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`kategori_id`);

--
-- Indexes for table `konfirmasi_pembayaran`
--
ALTER TABLE `konfirmasi_pembayaran`
  ADD PRIMARY KEY (`konfirmasi_id`),
  ADD KEY `pesanan_id` (`pesanan_id`);

--
-- Indexes for table `kota`
--
ALTER TABLE `kota`
  ADD PRIMARY KEY (`kota_id`);

--
-- Indexes for table `pesanan`
--
ALTER TABLE `pesanan`
  ADD PRIMARY KEY (`pesanan_id`),
  ADD KEY `kota_id` (`kota_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `pesanan_detail`
--
ALTER TABLE `pesanan_detail`
  ADD KEY `pesanan_id` (`pesanan_id`),
  ADD KEY `barang_id` (`barang_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `banner`
--
ALTER TABLE `banner`
  MODIFY `banner_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `barang`
--
ALTER TABLE `barang`
  MODIFY `barang_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `kategori_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `konfirmasi_pembayaran`
--
ALTER TABLE `konfirmasi_pembayaran`
  MODIFY `konfirmasi_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `kota`
--
ALTER TABLE `kota`
  MODIFY `kota_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `pesanan`
--
ALTER TABLE `pesanan`
  MODIFY `pesanan_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `barang`
--
ALTER TABLE `barang`
  ADD CONSTRAINT `barang_ibfk_1` FOREIGN KEY (`kategori_id`) REFERENCES `kategori` (`kategori_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `konfirmasi_pembayaran`
--
ALTER TABLE `konfirmasi_pembayaran`
  ADD CONSTRAINT `konfirmasi_pembayaran_ibfk_1` FOREIGN KEY (`pesanan_id`) REFERENCES `pesanan` (`pesanan_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `pesanan`
--
ALTER TABLE `pesanan`
  ADD CONSTRAINT `pesanan_ibfk_1` FOREIGN KEY (`kota_id`) REFERENCES `kota` (`kota_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pesanan_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `pesanan_detail`
--
ALTER TABLE `pesanan_detail`
  ADD CONSTRAINT `pesanan_detail_ibfk_1` FOREIGN KEY (`pesanan_id`) REFERENCES `pesanan` (`pesanan_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pesanan_detail_ibfk_2` FOREIGN KEY (`barang_id`) REFERENCES `barang` (`barang_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
