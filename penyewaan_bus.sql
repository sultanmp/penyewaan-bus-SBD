-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 09, 2023 at 11:25 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `penyewaan_bus`
--

-- --------------------------------------------------------

--
-- Table structure for table `bus`
--

CREATE TABLE `bus` (
  `b_id` char(7) NOT NULL,
  `b_merk` varchar(20) NOT NULL,
  `b_tipe` varchar(15) NOT NULL,
  `b_transmisi` varchar(10) NOT NULL,
  `b_jenis_suspensi` varchar(15) NOT NULL,
  `b_harga_sewa` decimal(10,2) NOT NULL,
  `kategori_bus_kb_id` char(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bus`
--

INSERT INTO `bus` (`b_id`, `b_merk`, `b_tipe`, `b_transmisi`, `b_jenis_suspensi`, `b_harga_sewa`, `kategori_bus_kb_id`) VALUES
('N2469WR', 'Toyota', 'Hiace', 'Manual', 'Leaf Spring', 1500000.00, 'SB'),
('N2576ZA', 'Toyota', 'Hiace', 'Manual', 'Leaf Spring', 1500000.00, 'SB'),
('N2674VB', 'Toyota', 'Hiace', 'Manual', 'Leaf Spring', 1500000.00, 'SB'),
('N7251AC', 'Mercedes-Benz', 'OH 1526', 'Manual', 'Air Suspension', 3000000.00, 'BB'),
('N7318AC', 'Mercedes-Benz', 'OH 1626', 'Manual', 'Air Suspension', 3100000.00, 'BB'),
('N7367AC', 'Mercedes-Benz', 'OF 917', 'Manual', 'Air Suspension', 3500000.00, 'LB'),
('N7483AA', 'Hino', 'GB 150L', 'Manual', 'Leaf Spring', 2000000.00, 'MB'),
('N7694AA', 'Hino', 'GB 150AT', 'Automatic', 'Leaf Spring', 2200000.00, 'MB'),
('N7854AA', 'Hino', 'RK 8', 'Manual', 'Air Suspension', 2800000.00, 'BB'),
('N7921AA', 'Hino', 'RK 280 ', 'Manual', 'Leaf Spring', 2500000.00, 'BB');

-- --------------------------------------------------------

--
-- Table structure for table `fasilitas`
--

CREATE TABLE `fasilitas` (
  `f_id` char(5) NOT NULL,
  `f_nama` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `fasilitas`
--

INSERT INTO `fasilitas` (`f_id`, `f_nama`) VALUES
('F0001', 'TV'),
('F0002', 'AC'),
('F0003', 'WIFI'),
('F0004', 'Toilet'),
('F0005', 'Karaoke'),
('F0006', 'Kulkas'),
('F0007', 'Dispenser'),
('F0008', 'Kursi Pijat'),
('F0009', 'Leather Seat'),
('F0010', 'Selimut'),
('F0011', 'Charger'),
('F0012', 'Smoking room');

-- --------------------------------------------------------

--
-- Table structure for table `fasilitas_bus`
--

CREATE TABLE `fasilitas_bus` (
  `fasilitas_f_id` char(5) NOT NULL,
  `bus_b_id` char(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `fasilitas_bus`
--

INSERT INTO `fasilitas_bus` (`fasilitas_f_id`, `bus_b_id`) VALUES
('F0001', 'N7251AC'),
('F0001', 'N7318AC'),
('F0001', 'N7367AC'),
('F0001', 'N7483AA'),
('F0001', 'N7694AA'),
('F0001', 'N7854AA'),
('F0001', 'N7921AA'),
('F0002', 'N2469WR'),
('F0002', 'N2576ZA'),
('F0002', 'N2674VB'),
('F0002', 'N7251AC'),
('F0002', 'N7318AC'),
('F0002', 'N7367AC'),
('F0002', 'N7483AA'),
('F0002', 'N7694AA'),
('F0002', 'N7854AA'),
('F0002', 'N7921AA'),
('F0003', 'N2469WR'),
('F0003', 'N2576ZA'),
('F0003', 'N2674VB'),
('F0003', 'N7251AC'),
('F0003', 'N7318AC'),
('F0003', 'N7367AC'),
('F0003', 'N7483AA'),
('F0003', 'N7694AA'),
('F0003', 'N7854AA'),
('F0003', 'N7921AA'),
('F0004', 'N7251AC'),
('F0004', 'N7318AC'),
('F0004', 'N7367AC'),
('F0005', 'N7251AC'),
('F0005', 'N7318AC'),
('F0005', 'N7367AC'),
('F0005', 'N7483AA'),
('F0005', 'N7694AA'),
('F0005', 'N7854AA'),
('F0005', 'N7921AA'),
('F0006', 'N7367AC'),
('F0007', 'N7367AC'),
('F0008', 'N7367AC'),
('F0009', 'N7367AC'),
('F0010', 'N7367AC'),
('F0011', 'N2469WR'),
('F0011', 'N2576ZA'),
('F0011', 'N2674VB'),
('F0011', 'N7251AC'),
('F0011', 'N7318AC'),
('F0011', 'N7367AC'),
('F0011', 'N7483AA'),
('F0011', 'N7694AA'),
('F0011', 'N7854AA'),
('F0011', 'N7921AA'),
('F0012', 'N7367AC'),
('F0012', 'N7854AA'),
('F0012', 'N7921AA');

-- --------------------------------------------------------

--
-- Table structure for table `kategori_bus`
--

CREATE TABLE `kategori_bus` (
  `kb_id` char(2) NOT NULL,
  `kb_nama` varchar(10) NOT NULL,
  `kb_kapasitas` int(11) NOT NULL,
  `kb_bagasi` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kategori_bus`
--

INSERT INTO `kategori_bus` (`kb_id`, `kb_nama`, `kb_kapasitas`, `kb_bagasi`) VALUES
('BB', 'Big Bus', 50, 6),
('LB', 'Luxury Bus', 15, 5),
('MB', 'Medium Bus', 31, 5),
('SB', 'Small Bus', 15, 4);

-- --------------------------------------------------------

--
-- Table structure for table `pelanggan`
--

CREATE TABLE `pelanggan` (
  `p_nik` char(16) NOT NULL,
  `p_nama` varchar(60) NOT NULL,
  `p_no_telepon` varchar(15) NOT NULL,
  `p_email` varchar(256) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pelanggan`
--

INSERT INTO `pelanggan` (`p_nik`, `p_nama`, `p_no_telepon`, `p_email`) VALUES
('2125010609510002', 'Aswani Winarno', '087949941045', 'aswani.winarno@sirait.id'),
('3225015201880002', 'Firmansyah Dalima', '081652225552', 'firmansyah.dalima@haryanti.com'),
('3314076404720003', 'Harto Najmudin', '088596442803', 'ojailani@gmail.com'),
('3326160407670004', 'Pradipta Baktiono', '081110247484', 'pradipta.baktiono@yahoo.co.id'),
('3326160802090001', 'Wibowo Kalim', '087030959991', 'wibowo.kalim@yahoo.com'),
('3326162001730002', 'Johan', '085754282059', 'johan72@gmail.co.id'),
('3326162704830021', 'Jono Usada', '081558397362', 'usada.jono@gmail.co.id'),
('3326164107440286', 'Jailani Suwarno', '083513843421', 'qjailani@suwarno.asia'),
('3326164807880001', 'Mulyanto', '088108517458', 'mulyanto50@gmail.co.id'),
('3326165704990001', 'Yolanda Baktiono', '085581267241', 'baktianto.yolanda@yahoo.com'),
('3525015212920003', 'Jagapati Sihotang', '088242039109', 'jati62@prasetyo.org'),
('3525017006540043', 'Koko Simanjuntak', '083464873474', 'ksimanjuntak@yahoo.co.id'),
('3525017006750042', 'Bakianto Astuti', '087289269243', 'astuti.bakianto@handayani.net'),
('3525017006950028', 'Emin Setiawan', '083605213808', 'srajasa@waskita.my.id'),
('3526013006580042', 'Koko Santoso', '081161747615', 'santoso.koko@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `riwayat_servis`
--

CREATE TABLE `riwayat_servis` (
  `rs_id` char(5) NOT NULL,
  `rs_tanggal` date NOT NULL,
  `rs_kilometer` int(11) NOT NULL,
  `rs_jenis_pemeliharaan` varchar(15) NOT NULL,
  `rs_detail_perbaikan` varchar(256) DEFAULT NULL,
  `rs_sparepart` varchar(256) NOT NULL,
  `bus_b_id` char(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `riwayat_servis`
--

INSERT INTO `riwayat_servis` (`rs_id`, `rs_tanggal`, `rs_kilometer`, `rs_jenis_pemeliharaan`, `rs_detail_perbaikan`, `rs_sparepart`, `bus_b_id`) VALUES
('RS001', '2023-03-13', 20543, 'PERAWATAN RUTIN', NULL, 'Oli', 'N7921AA'),
('RS002', '2023-03-29', 21231, 'PERBAIKAN', 'Penggantian Fanbelt', 'Fanbelt AC', 'N7921AA'),
('RS003', '2023-06-15', 75326, 'PERAWATAN RUTIN', NULL, 'Oli', 'N7854AA'),
('RS004', '2023-07-22', 25621, 'PERAWATAN RUTIN', NULL, 'Kampas Rem', 'N7318AC'),
('RS005', '2023-08-12', 26323, 'PERAWATAN RUTIN', NULL, 'Filter Solar', 'N7318AC'),
('RS006', '2023-08-13', 23165, 'PERAWATAN RUTIN', 'Penggantian Ban', 'Bridgestone Duravis R624', 'N2576ZA'),
('RS007', '2023-09-25', 30025, 'PERAWATAN RUTIN', NULL, 'Oli', 'N7318AC'),
('RS008', '2023-09-26', 26356, 'PERBAIKAN', 'Power Steering', 'Seal Hiace', 'N2469WR'),
('RS009', '2023-11-10', 36185, 'PERAWATAN RUTIN', NULL, 'Oli', 'N7251AC'),
('RS010', '2023-11-11', 26023, 'PERAWATAN RUTIN', NULL, 'Filter Solar', 'N7921AA');

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `t_id` char(5) NOT NULL,
  `t_tanggal_transaksi` date NOT NULL,
  `t_tanggal_mulai_sewa` date NOT NULL,
  `t_tanggal_selesai_sewa` date NOT NULL,
  `t_jam_mulai_sewa` time NOT NULL,
  `t_asal` varchar(256) NOT NULL,
  `t_tujuan` varchar(256) NOT NULL,
  `t_banyak_penumpang` int(11) NOT NULL,
  `t_banyak_bus` int(11) NOT NULL,
  `t_biaya` decimal(10,2) NOT NULL,
  `t_ulasan` varchar(256) NOT NULL,
  `pelanggan_p_nik` char(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`t_id`, `t_tanggal_transaksi`, `t_tanggal_mulai_sewa`, `t_tanggal_selesai_sewa`, `t_jam_mulai_sewa`, `t_asal`, `t_tujuan`, `t_banyak_penumpang`, `t_banyak_bus`, `t_biaya`, `t_ulasan`, `pelanggan_p_nik`) VALUES
('T0001', '2023-02-28', '2023-03-11', '2023-03-12', '06:00:00', 'Kenjeran Park, Surabaya', 'Museum Angkut, Batu', 40, 1, 2500000.00, 'Pelayanan penyewaan bis ini sangat memuaskan. Bis-bisnya dalam kondisi prima, sopirnya ramah, dan harga sewa terjangkau. Sangat direkomendasikan!', '3225015201880002'),
('T0002', '2023-03-17', '2023-03-20', '2023-03-21', '06:00:00', 'TK Pertiwi, Surabaya', 'Monumen Kapal Selam, Surabaya', 41, 1, 2800000.00, 'Bis yang kami sewa sangat nyaman dan bersih. Sopirnya juga sangat profesional dan tepat waktu. Kami pasti akan kembali menggunakan jasa penyewaan ini.', '3525017006950028'),
('T0003', '2023-03-25', '2023-03-26', '2023-03-27', '02:00:00', 'Bangkalan', 'Sunan Ampel. Surabaya', 30, 1, 2000000.00, 'Penyewaan bis ini memberikan pelayanan yang luar biasa. Bis-bisnya terawat dengan baik, fasilitas di dalamnya lengkap, dan tim penyedia jasa sangat responsif terhadap kebutuhan kami.', '3526013006580042'),
('T0004', '2023-04-10', '2023-04-17', '2023-04-18', '06:00:00', 'SMP 1 Manukan', 'Jatim Park 3, Batu', 25, 1, 2000000.00, 'Sangat senang dengan pengalaman penyewaan bis ini. Prosesnya mudah, harga bersaing, dan stafnya sangat membantu. Kami merasa aman dan nyaman sepanjang perjalanan.', '3525015212920003'),
('T0005', '2023-04-19', '2023-04-25', '2023-04-26', '06:00:00', 'SMA 1 Bangil, Pasuruan', 'Taman Safari 2, Prigen', 45, 1, 2500000.00, 'Bis yang kami sewa sangat modern dan dilengkapi dengan fasilitas terkini. Pelayanan dari awal hingga akhir sangat profesional. Terima kasih atas pengalaman menyenangkan!', '2125010609510002'),
('T0006', '2023-05-01', '2023-05-31', '2023-06-01', '05:00:00', 'SMA 1 Sidoarjo', 'Jatim Park 2, Batu ', 96, 2, 5300000.00, 'Tim penyewaan bis ini sangat fleksibel dan bersedia menyesuaikan jadwal sesuai kebutuhan kami. Sopirnya juga sangat berpengalaman dan membantu membuat perjalanan kami lebih lancar.', '3525017006750042'),
('T0007', '2023-05-15', '2023-05-22', '2023-05-23', '10:00:00', 'Juanda', 'Surabaya', 12, 1, 1500000.00, 'Pilihan yang tepat untuk penyewaan bis keluarga atau perusahaan. Bis-bisnya bersih, terawat, dan sopirnya sangat sopan. Harga yang ditawarkan juga sangat wajar.', '3525017006540043'),
('T0008', '2023-05-18', '2023-05-20', '2023-05-22', '02:00:00', 'SMP 1 Bangkalan', 'Bromo Camp House', 40, 1, 3100000.00, 'Kami menggunakan jasa penyewaan bis ini untuk acara perusahaan kami dan sangat puas dengan layanan yang diberikan. Pelayanan pelanggan yang ramah dan bis-bis yang nyaman membuat acara kami sukses.', '3326164807880001'),
('T0009', '2023-05-28', '2023-05-31', '2023-06-03', '02:00:00', 'SMP 15 Surabaya', 'Candi Borobudur', 172, 4, 10900000.00, 'Pelayanan yang sangat baik! Sopirnya tidak hanya ahli dalam mengemudi tetapi juga ramah dan membantu. Kami merasa aman dan diurus dengan baik sepanjang perjalanan.', '3326162001730002'),
('T0010', '2023-06-18', '2023-07-12', '2023-07-13', '08:00:00', 'SMA 1 Bangkalan', 'UNAIR, ITS', 200, 4, 11400000.00, 'Bis-bis yang kami sewa sangat nyaman, bersih, dan terawat dengan baik. Proses penyewaan sangat mudah dan cepat. Harga yang wajar untuk kualitas pelayanan yang luar biasa.', '3326164807880001'),
('T0011', '2023-06-22', '2023-06-30', '2023-07-02', '02:00:00', 'SMA 1 Surabaya', 'Banyuwangi', 203, 4, 11400000.00, 'Sangat puas dengan layanan penyewaan bis ini. Sopirnya sangat berpengalaman, membantu, dan selalu mengutamakan keselamatan penumpang. Harga yang kompetitif membuatnya menjadi pilihan utama kami.', '3326160802090001'),
('T0012', '2023-07-02', '2023-07-22', '2023-07-23', '05:00:00', 'SMP Al-Hidayah', 'Eco Green Park', 150, 3, 8300000.00, 'Penyewaan bis ini memberikan solusi transportasi yang efisien dan handal. Fasilitas di dalam bis sangat memadai, dan pelayanan pelanggan mereka sangat responsif. Kami merekomendasikan dengan tulus.', '3326164107440286'),
('T0013', '2023-08-13', '2023-08-28', '2023-08-30', '02:00:00', 'SMA Muhammadiyah', 'Jember', 235, 5, 13400000.00, 'Bis-bis yang kami sewa sangat nyaman, dan sopirnya sangat ramah. Mereka juga sangat fleksibel dengan jadwal perjalanan kami. Pengalaman menyewa yang menyenangkan.', '3326160407670004'),
('T0014', '2023-09-08', '2023-09-11', '2023-09-12', '06:00:00', 'SMA 1 Batu', 'Taman Safari 2, Prigen', 215, 5, 12900000.00, 'Proses penyewaan bis sangat mudah dan transparan. Bis-bisnya dalam kondisi prima, dan stafnya sangat ramah dan profesional. Harga yang sesuai dengan kualitas pelayanan yang mereka berikan.', '3326162704830021'),
('T0015', '2023-09-16', '2023-09-20', '2023-09-23', '00:00:00', 'Sidoarjo', 'Bali', 100, 2, 5300000.00, 'Sangat terkesan dengan profesionalisme penyewaan bis ini. Pelayanan yang efisien dan sopir yang berpengetahuan membuat perjalanan kami menjadi pengalaman yang menyenangkan.', '3326165704990001'),
('T0016', '2023-10-12', '2023-10-14', '2023-10-15', '03:00:00', 'Juanda', 'Batu', 15, 1, 1500000.00, 'Bis-bis yang kami sewa sangat nyaman, bersih, dan dilengkapi dengan fasilitas modern. Pelayanan pelanggan yang ramah dan efisien membuat kami merasa diurus dengan baik.', '3525017006540043'),
('T0017', '2023-10-19', '2023-10-23', '2023-10-26', '00:00:00', 'Sidoarjo', 'Bali', 100, 2, 6100000.00, 'Pilihan terbaik untuk penyewaan bis keluarga. Sopirnya sangat perhatian dan mengutamakan keamanan penumpang. Harga yang terjangkau membuat pengalaman kami semakin berkesan.', '3326165704990001'),
('T0018', '2023-11-10', '2023-11-14', '2023-11-15', '04:00:00', 'Hotel Majapahit, Surabaya', 'Coban Rondo', 13, 1, 1500000.00, 'Pelayanan penyewaan bis yang sangat baik. Bis-bisnya dalam kondisi prima, sopirnya sangat berpengalaman, dan tim penyewaannya sangat responsif. Kami sangat puas dengan pengalaman kami.', '3525017006540043'),
('T0019', '2023-11-15', '2023-12-04', '2023-12-05', '06:00:00', 'ITATS Surabaya', 'Kebun Binatang Surabaya', 89, 2, 5300000.00, 'Terima kasih kepada tim penyewaan bis ini. Pelayanan yang ramah, bis yang nyaman, dan harga yang bersaing membuat perjalanan kami menjadi lebih menyenangkan.', '3314076404720003'),
('T0020', '2023-11-18', '2023-12-01', '2023-12-02', '05:00:00', 'CV. Mekar Jaya', 'Jatim Park 1, Batu ', 215, 5, 14900000.00, 'Rekomendasi tinggi untuk penyewaan bis ini. Pelayanan yang ramah, bis-bis yang terawat dengan baik, dan harga yang sesuai dengan kualitas yang diberikan. Sangat memuaskan!', '3225015201880002');

-- --------------------------------------------------------

--
-- Table structure for table `transaksi_bus`
--

CREATE TABLE `transaksi_bus` (
  `bus_b_id` char(7) NOT NULL,
  `transaksi_t_id` char(5) NOT NULL,
  `transaksi_p_nik` char(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transaksi_bus`
--

INSERT INTO `transaksi_bus` (`bus_b_id`, `transaksi_t_id`, `transaksi_p_nik`) VALUES
('N2469WR', 'T0014', '3326162704830021'),
('N2469WR', 'T0018', '3525017006540043'),
('N2576ZA', 'T0007', '3525017006540043'),
('N2576ZA', 'T0016', '3525017006540043'),
('N7251AC', 'T0009', '3326162001730002'),
('N7251AC', 'T0010', '3326164807880001'),
('N7251AC', 'T0011', '3326160802090001'),
('N7251AC', 'T0012', '3326164107440286'),
('N7251AC', 'T0013', '3326160407670004'),
('N7251AC', 'T0014', '3326162704830021'),
('N7251AC', 'T0017', '3326165704990001'),
('N7251AC', 'T0020', '3225015201880002'),
('N7318AC', 'T0008', '3326164807880001'),
('N7318AC', 'T0009', '3326162001730002'),
('N7318AC', 'T0010', '3326164807880001'),
('N7318AC', 'T0011', '3326160802090001'),
('N7318AC', 'T0013', '3326160407670004'),
('N7318AC', 'T0014', '3326162704830021'),
('N7318AC', 'T0017', '3326165704990001'),
('N7318AC', 'T0020', '3225015201880002'),
('N7367AC', 'T0020', '3225015201880002'),
('N7483AA', 'T0003', '3526013006580042'),
('N7483AA', 'T0004', '3525015212920003'),
('N7483AA', 'T0009', '3326162001730002'),
('N7483AA', 'T0013', '3326160407670004'),
('N7854AA', 'T0002', '3525017006950028'),
('N7854AA', 'T0006', '3525017006750042'),
('N7854AA', 'T0009', '3326162001730002'),
('N7854AA', 'T0010', '3326164807880001'),
('N7854AA', 'T0011', '3326160802090001'),
('N7854AA', 'T0012', '3326164107440286'),
('N7854AA', 'T0013', '3326160407670004'),
('N7854AA', 'T0014', '3326162704830021'),
('N7854AA', 'T0015', '3326165704990001'),
('N7854AA', 'T0019', '3314076404720003'),
('N7854AA', 'T0020', '3225015201880002'),
('N7921AA', 'T0001', '3225015201880002'),
('N7921AA', 'T0005', '2125010609510002'),
('N7921AA', 'T0006', '3525017006750042'),
('N7921AA', 'T0010', '3326164807880001'),
('N7921AA', 'T0011', '3326160802090001'),
('N7921AA', 'T0012', '3326164107440286'),
('N7921AA', 'T0013', '3326160407670004'),
('N7921AA', 'T0014', '3326162704830021'),
('N7921AA', 'T0015', '3326165704990001'),
('N7921AA', 'T0019', '3314076404720003'),
('N7921AA', 'T0020', '3225015201880002');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bus`
--
ALTER TABLE `bus`
  ADD PRIMARY KEY (`b_id`),
  ADD KEY `bus_kategori_bus_fk` (`kategori_bus_kb_id`);

--
-- Indexes for table `fasilitas`
--
ALTER TABLE `fasilitas`
  ADD PRIMARY KEY (`f_id`);

--
-- Indexes for table `fasilitas_bus`
--
ALTER TABLE `fasilitas_bus`
  ADD PRIMARY KEY (`fasilitas_f_id`,`bus_b_id`),
  ADD KEY `fasilitas_bus_bus_fk` (`bus_b_id`);

--
-- Indexes for table `kategori_bus`
--
ALTER TABLE `kategori_bus`
  ADD PRIMARY KEY (`kb_id`);

--
-- Indexes for table `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`p_nik`);

--
-- Indexes for table `riwayat_servis`
--
ALTER TABLE `riwayat_servis`
  ADD PRIMARY KEY (`rs_id`),
  ADD KEY `riwayat_servis_bus_fk` (`bus_b_id`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`t_id`),
  ADD KEY `transaksi_pelanggan_fk` (`pelanggan_p_nik`);

--
-- Indexes for table `transaksi_bus`
--
ALTER TABLE `transaksi_bus`
  ADD PRIMARY KEY (`bus_b_id`,`transaksi_t_id`,`transaksi_p_nik`),
  ADD KEY `transaksi_bus_transaksi_fk` (`transaksi_t_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bus`
--
ALTER TABLE `bus`
  ADD CONSTRAINT `bus_kategori_bus_fk` FOREIGN KEY (`kategori_bus_kb_id`) REFERENCES `kategori_bus` (`kb_id`);

--
-- Constraints for table `fasilitas_bus`
--
ALTER TABLE `fasilitas_bus`
  ADD CONSTRAINT `fasilitas_bus_bus_fk` FOREIGN KEY (`bus_b_id`) REFERENCES `bus` (`b_id`),
  ADD CONSTRAINT `fasilitas_bus_fasilitas_fk` FOREIGN KEY (`fasilitas_f_id`) REFERENCES `fasilitas` (`f_id`);

--
-- Constraints for table `riwayat_servis`
--
ALTER TABLE `riwayat_servis`
  ADD CONSTRAINT `riwayat_servis_bus_fk` FOREIGN KEY (`bus_b_id`) REFERENCES `bus` (`b_id`);

--
-- Constraints for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD CONSTRAINT `transaksi_pelanggan_fk` FOREIGN KEY (`pelanggan_p_nik`) REFERENCES `pelanggan` (`p_nik`);

--
-- Constraints for table `transaksi_bus`
--
ALTER TABLE `transaksi_bus`
  ADD CONSTRAINT `transaksi_bus_bus_fk` FOREIGN KEY (`bus_b_id`) REFERENCES `bus` (`b_id`),
  ADD CONSTRAINT `transaksi_bus_transaksi_fk` FOREIGN KEY (`transaksi_t_id`) REFERENCES `transaksi` (`t_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
