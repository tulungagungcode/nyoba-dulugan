-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 26 Okt 2019 pada 14.30
-- Versi Server: 10.1.9-MariaDB
-- PHP Version: 5.6.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tokobajudb`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admintbl`
--

CREATE TABLE `admintbl` (
  `id` int(11) NOT NULL,
  `username` varchar(35) NOT NULL,
  `password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `admintbl`
--

INSERT INTO `admintbl` (`id`, `username`, `password`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3'),
(5, 'operator', '28b662d883b6d76fd96e4ddc5e9ba780');

-- --------------------------------------------------------

--
-- Struktur dari tabel `admintblcontoh`
--

CREATE TABLE `admintblcontoh` (
  `id` int(11) NOT NULL,
  `username` varchar(35) NOT NULL,
  `password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `barangtbl`
--

CREATE TABLE `barangtbl` (
  `id` int(11) NOT NULL,
  `nama` varchar(35) NOT NULL,
  `deskripsi` text NOT NULL,
  `warna` varchar(25) NOT NULL,
  `ukuran` varchar(15) NOT NULL,
  `kategori` varchar(25) NOT NULL,
  `harga` int(11) NOT NULL,
  `stock` int(11) NOT NULL,
  `gambar` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `barangtbl`
--

INSERT INTO `barangtbl` (`id`, `nama`, `deskripsi`, `warna`, `ukuran`, `kategori`, `harga`, `stock`, `gambar`) VALUES
(1, 'Amplop Polos', 'Amplop-Putih-Polos-110-Paperline', 'Putih', '-', 'Amplop', 6000, 5, 'Amplop-Putih-Polos-110-Paperline.png'),
(2, 'Ballpoint Faster', 'BALLPOINT-FASTER-C6-HITAM-300x300', 'Hitam, Biru', '-', 'Alat Tulis', 10000, 100, 'BALLPOINT-FASTER-C6-HITAM-300x300.png'),
(3, 'Kertas A4', 'kertas_A4_100gr', 'Putih', '-', 'Alat Tulis', 50000, 2, 'kertas_A4_100gr.png'),
(4, 'Penghapus', 'Penghapus BCM', 'Sesuai Gambar', '-', 'Alat Tulis', 5000, 5, 'eraser.jpg'),
(5, 'Gunting', 'GUNTING SC-848 (JOYKO)', 'Hitam', '-', 'Cutter, dll', 2789000, 5, 'GUNTING SC-848 (JOYKO).png'),
(6, 'Styrofoam', 'STYROFOAM WARNA 40X60CM', 'Putih, Hitam', '40x60cm', 'Cutter, dll', 4000, 0, 'STYROFOAM WARNA 40X60CM_4000.png'),
(7, 'Tip-ex', 'TIP-EX KENKO BOTOL_3500', 'Merah', '-', 'Alat Tulis', 3000, 2, 'TIP-EX KENKO BOTOL_3500.png'),
(9, 'Klip Kertas', 'KLIP TRIGONAL NO.5 JUMBO SIZE_3500', 'Silver', '-', 'Cutter, dll', 5000, 5, 'KLIP TRIGONAL NO.5 JUMBO SIZE_3500.png'),
(10, 'Label', 'tj-labels-300x300s', 'Putih', '-', 'Alat Tulis', 4000, 20, 'tj-labels-300x300s.png'),
(11, 'Map Resleting', 'Map Bag Resleting MicroTop_7000', 'Merah', '-', 'Map', 10000, 10, 'Map Bag Resleting MicroTop_7000.png'),
(12, 'Box FIle', 'BOX-FILE-STAR-NO', 'Kuning', '-', 'Box File', 20000, 5, 'BOX-FILE-STAR-NO.png'),
(13, 'Folio', 'Buku_Folio_100lbr', 'Kuning', '-', 'Buku', 7000, 15, 'Buku_Folio_100lbr.png'),
(14, 'Card Reader', 'CARD READER MINI_12000', 'Putih', '-', 'CD, Card Reader', 35000, 6, 'CARD READER MINI_12000.png'),
(15, 'CD R', 'cd-R_isi-50_Mediatech', 'Silver', '-', 'CD, Card Reader', 8000, 15, 'cd-R_isi-50_Mediatech.png');

-- --------------------------------------------------------

--
-- Struktur dari tabel `downloadtbl`
--

CREATE TABLE `downloadtbl` (
  `id` int(11) NOT NULL,
  `judul` text NOT NULL,
  `deskripsi` text NOT NULL,
  `url` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `downloadtbl`
--

INSERT INTO `downloadtbl` (`id`, `judul`, `deskripsi`, `url`) VALUES
(1, 'Katalog Produk 2013', 'Informasi mengenai produk - produk terbaru tahun 2013, lengkap beserta harga, merk tipe, dan lain - lain.', 'download/KATALOG.PDF'),
(2, 'Formulir Reseller', 'Anda dapat menjadi reseller di toko kami dengan mengisi formulir yang bisa Anda download, dan kirim melalui email !!!', 'download/FORMULIR.PDF');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategoritbl`
--

CREATE TABLE `kategoritbl` (
  `id` int(11) NOT NULL,
  `kategori` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kategoritbl`
--

INSERT INTO `kategoritbl` (`id`, `kategori`) VALUES
(1, 'Amplop'),
(2, 'Alat Tulis'),
(3, 'Box FIle'),
(4, 'Buku'),
(5, 'CD, Card Reader'),
(6, 'Map'),
(7, 'Cutter, dll');

-- --------------------------------------------------------

--
-- Struktur dari tabel `newstbl`
--

CREATE TABLE `newstbl` (
  `tanggal` date NOT NULL,
  `judul` varchar(50) NOT NULL,
  `news` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `newstbl`
--

INSERT INTO `newstbl` (`tanggal`, `judul`, `news`) VALUES
('2013-05-13', 'pameran', 'Now Open! Maxi Boutique Fashion Shop'),
('2013-05-11', 'RESTOCK', 'RESTOCK !!! Sleepsuit Next 3 in 1 GRAB IT FAST MOMS !!!'),
('2013-05-02', 'New Items', 'NEW ITEMS: Prewalker shoes Headband Blossom farm RED RESTOCK !!!! Fisher-Price Newborn To Toddler Portable Rocker Botol Tommee Teppee detail ');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pelanggantbl`
--

CREATE TABLE `pelanggantbl` (
  `id` int(11) NOT NULL,
  `nama` varchar(35) NOT NULL,
  `alamat` text NOT NULL,
  `email` text NOT NULL,
  `telepon` varchar(25) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pelanggantbl`
--

INSERT INTO `pelanggantbl` (`id`, `nama`, `alamat`, `email`, `telepon`, `username`, `password`) VALUES
(12, 'tes', 'tes', 'muhammad.sadeli@gmail.com', 'tes', 'maxikom', '2673c916d33d456b0654b845ab5e5a85'),
(13, 'tes', 'tes', 'muhammad.sadeli@gmail.com', 'tes', 'ajib', 'dc8ce8751a9426bd731dc5af53e5bc49'),
(14, 'maxi', '-', 'maxi', '-', 'maxi', 'd6af6111b120b3b6d0edad7d1d3fc692'),
(15, 'irza', 'harun', 'irza@gmail.com', '089773777', 'irza', 'db8df5af2119204f4dfbf7414e36d981');

-- --------------------------------------------------------

--
-- Struktur dari tabel `testimonialtbl`
--

CREATE TABLE `testimonialtbl` (
  `id` int(11) NOT NULL,
  `nama` varchar(35) NOT NULL,
  `email` varchar(50) NOT NULL,
  `tanggal` date NOT NULL,
  `testimonial` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `testimonialtbl`
--

INSERT INTO `testimonialtbl` (`id`, `nama`, `email`, `tanggal`, `testimonial`) VALUES
(2, 'ryanto widjaja wiguna', '-', '2013-05-16', 'Thanks ya, kertas 1 rim-nya nya sudah sampai, pelayanan ok, cepat tanggap juga, overall ga ush ragu belanja di sini...'),
(3, 'desi ariyanti', '-', '2013-05-03', 'Thanks buat hebatkan store barang ny bagus n memuaskan. Bakalan beli lg ni buat anak tercrnta :)'),
(4, 'martin kwang', '-', '2013-05-08', 'Thanks ya gan paketnya uda smpe..cpt ya..order kmrn hr ni uda dtg... Bgus barangnya...'),
(5, 'bundanya rakha', '-', '2013-05-15', 'Baru nemu web ini kemaren,barangnya bagus2 trus coba2 pesan ternyata responnya cepet loh.kemaren pesen eh hari ini paketnya udh sampe.makasi ya..pelayanannya bagus n cepet.well recomended deh buat bunda2 yg sedang cari brg atk buat anaknya sekolah drpd cape2 keluar rumah');

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksirincitbl`
--

CREATE TABLE `transaksirincitbl` (
  `notransaksi` varchar(25) NOT NULL,
  `username` varchar(20) NOT NULL,
  `id` int(11) NOT NULL,
  `nama` varchar(60) NOT NULL,
  `harga` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `subtotal` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `transaksirincitbl`
--

INSERT INTO `transaksirincitbl` (`notransaksi`, `username`, `id`, `nama`, `harga`, `jumlah`, `subtotal`) VALUES
('31', 'irza', 15, 'CD R', 8000, 1, 8000),
('32', 'irza', 14, 'Card Reader', 35000, 1, 35000),
('32', 'irza', 13, 'Folio', 7000, 1, 7000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksitbl`
--

CREATE TABLE `transaksitbl` (
  `notransaksi` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `transaksitbl`
--

INSERT INTO `transaksitbl` (`notransaksi`, `username`, `status`) VALUES
(30, 'maxikom', 0),
(31, 'irza', 1),
(32, 'irza', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `visitortbl`
--

CREATE TABLE `visitortbl` (
  `ip` int(11) NOT NULL,
  `time` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `visitortbl`
--

INSERT INTO `visitortbl` (`ip`, `time`) VALUES
(0, 1368498420),
(0, 1368498503),
(0, 1368498733),
(0, 1368499016),
(0, 1368499042),
(0, 1368499194),
(0, 1368499579),
(0, 1368499593),
(0, 1368499638),
(0, 1368499664),
(11, 1368500516),
(1, 1572092969);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admintbl`
--
ALTER TABLE `admintbl`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admintblcontoh`
--
ALTER TABLE `admintblcontoh`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `barangtbl`
--
ALTER TABLE `barangtbl`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `downloadtbl`
--
ALTER TABLE `downloadtbl`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kategoritbl`
--
ALTER TABLE `kategoritbl`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pelanggantbl`
--
ALTER TABLE `pelanggantbl`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testimonialtbl`
--
ALTER TABLE `testimonialtbl`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaksitbl`
--
ALTER TABLE `transaksitbl`
  ADD PRIMARY KEY (`notransaksi`);

--
-- Indexes for table `visitortbl`
--
ALTER TABLE `visitortbl`
  ADD PRIMARY KEY (`time`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admintbl`
--
ALTER TABLE `admintbl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `admintblcontoh`
--
ALTER TABLE `admintblcontoh`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `barangtbl`
--
ALTER TABLE `barangtbl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `downloadtbl`
--
ALTER TABLE `downloadtbl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `kategoritbl`
--
ALTER TABLE `kategoritbl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `pelanggantbl`
--
ALTER TABLE `pelanggantbl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `testimonialtbl`
--
ALTER TABLE `testimonialtbl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `transaksitbl`
--
ALTER TABLE `transaksitbl`
  MODIFY `notransaksi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
--
-- AUTO_INCREMENT for table `visitortbl`
--
ALTER TABLE `visitortbl`
  MODIFY `time` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1572088887;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
