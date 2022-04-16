-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 09 Sep 2021 pada 05.37
-- Versi server: 10.4.17-MariaDB
-- Versi PHP: 7.4.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_blog_adjie`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_berita`
--

CREATE TABLE `tbl_berita` (
  `berita_id` int(11) NOT NULL,
  `berita_judul` varchar(50) CHARACTER SET latin1 NOT NULL,
  `berita_isi` text CHARACTER SET latin1 NOT NULL,
  `berita_penulis` varchar(50) CHARACTER SET latin1 NOT NULL,
  `berita_tanggal` date NOT NULL,
  `berita_lokasi` varchar(50) CHARACTER SET latin1 NOT NULL,
  `kategori_id` int(5) NOT NULL,
  `berita_foto` varchar(100) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_blog`
--

CREATE TABLE `tbl_blog` (
  `blog_id` int(5) NOT NULL,
  `blog_judul` varchar(200) NOT NULL,
  `blog_content` text NOT NULL,
  `blog_penulis` varchar(100) NOT NULL,
  `blog_tgl` datetime NOT NULL DEFAULT current_timestamp(),
  `blog_cover` varchar(100) NOT NULL,
  `kategori_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_blog`
--

INSERT INTO `tbl_blog` (`blog_id`, `blog_judul`, `blog_content`, `blog_penulis`, `blog_tgl`, `blog_cover`, `kategori_id`) VALUES
(14, 'Apakah Messi Pakai Nomor 10?', 'Ternyata Messi menggunakan 30, dikarenakan nomor 10 telah di gunakan oleh sahabatnya yaitu Neyamar jr.', 'Adjie Maulana Sutardi', '2021-09-03 08:39:24', '1.jpeg', 1),
(18, 'Resmi! Messi Masuk PSG.', 'Lionel Messi telah memutuskan pindah Paris Saint-Germain (PSG) karena tak bisa memperpanjang kontrak di Barcelona.', 'Adjie Maulana Sutardi', '2021-09-03 09:38:15', '2.jpg', 1),
(20, 'Resmi! Cristiano Ronaldo Pindah Ke Manchester United!', 'Cristiano Ronaldo resmi kembali ke Manchester United. \"Manchester United dengan gembira mengonfirmasi telah mencapai kesepakatan dengan Juventus untuk transfer Cristiano Ronaldo, bergantung pada kesepakatan personal, visa, dan tes medis,\" demikian pernyataan Manchester United.', 'Adjie Maulana Sutardi', '2021-09-03 09:49:25', '3.jpg', 1),
(21, 'Kode Redeem Genshin Impact Terbaru Hari Ini 2 September 2021: Klaim dan Tukarkan Hadiah Keren dari Mihoyo.', 'Genshin Impact merupakan salah satu game RPG open world yang sedang menjadi salah satu favorit gamers belakangan ini.\r\n\r\nGenshin Impact adalah game RPG open world yang dapat dimainkan di semua platform, baik PC, smartphone dan PlayStation 4.\r\n\r\nGame buatan studio miHoyo ini termasuk game yang sangat diminati, terbukti dari data pengunduh game ini mencapai 10 juta player dalam waktu beberapa hari sejak peluncurannya.\r\n\r\nBaca Juga: Saat Penangkapan Coki Pardede, Polisi Singgung Video Porno Sesama Jenis, Netizen: Buset Dia Gay?\r\n\r\nUntuk memudahkan pemain, Genshin Impact mengeluarkan kode redeem yang nantinya ditukarkan untuk mendapatkan berbagai macam hadiah menarik.\r\n\r\n\r\nKode redeem Genshin Impact selalu ditunggu setiap harinya oleh para gamers.\r\n\r\nKode redeem Genshin Impact ini dapat ditukarkan dengan berbagai hadiah in-game yang akan mendukung performa gamers dalam memainkan game ini.\r\n\r\nDalam Genshin Impact dengan memasukan kode redeem, player akan mendapatkan berbagai hadiah.', 'Adjie Maulana Sutardi', '2021-09-03 09:57:54', '4.jpeg', 3),
(22, 'Komika Coki Pardede Ditangkap Polisi, Tersandung Kasus Narkoba.', 'Fakta diungkap polisi dari penangkapan komika Coki Pardede. Dari hasil penyelidikan, Komika Coki Perdede menggunakan suntik untuk mengkonsumsi sabu.\r\n\r\n\"Dia modelnya pakai suntikan. Pokoknya kita amankan pakai suntikan. Nggak lazimlah metodenya,\" ujar Kasat Narkoba Tangerang Kota AKBP Pratomo.', 'Adjie Maulana Sutardi', '2021-09-03 10:05:20', '5.jpg', 4),
(23, 'BAM Persilakan BWF Selidiki Dugaan Rencana Suap yang Dialami Taufik Hidayat.', 'Presiden Persatuan Bulu Tangkis Malaysia (BAM), Tan Sir Norza Zakaria, mempersilakan Federasi Bulutangkis Dunia (BWF) untuk menyelidiki dugaan rencana suap yang dialami Taufik Hidayat pada 2006. BAM juga disebut siap membantu penyelidikan dugaan pengaturan pertandingan itu.\r\n\r\nTaufik Hidayat membuat pengakuan mengejutkan terkait upaya suap yang dialaminya pada Asian Games 2006. Pengakuan itu diungkapkan dalam program acara Janji Suci di Trans TV.\r\n\r\nTaufik Hidayat mengaku didatangi oknum ofisial Malaysia jelang pertandingan semifinal tunggal putra pada Asian Games 2006. Taufik Hidayat ditawari sejumlah uang dengan syarat mengalah dari Lee Chong Wei.\r\n\r\nTaufik ditawari 60 ribu ringgit atau Rp200 juta, dua kali lipat dari bonus medali emas yang dijanjikan pemerintah Indonesia. Namun, tawaran tersebut dimentahkan oleh Taufik Hidayat.\r\n\r\nMeskipun sudah terjadi 16 tahun lalu, BAM menganggap serius masalah ini. Tan Sir Norza Zakaria menyebut berhati-hati dalam mengambil sikap atas dugaan kasus tersebut.\r\n\r\n\"Saya sudah berbicara dengan Datuk Kenny (Sekjen BAM) untuk menyelidiki klaim dari Taufik. Akan tetapi, pertama-tama kami perlu memverifikasi cerita itu untuk memastikan apakah benar-benar terjadi,\" kata Tan Sir Norza Zakaria seperti dikutip The Star, Rabu (25/8/2021). \r\n\r\n\"Berdasarkan pernyataan Taufik dan Chong Wei, saya yakin BWF mungkin punya dasar untuk menyelidikinya. Jika diperlukan, kami akan membantu semampunya,\" tegas Norza.\r\n\r\nTaufik Hidayat akhirnya berhasil mengalahkan Lee Chong Wei dengan skor 21-16, 21-18. Pada laga final, Taufik Hidayat berhasil meraih medali emas Asian Games 2006 setelah mengalahkan Lin Dan dengan skor 21-15, 22-20.', 'Adjie Maulana Sutardi', '2021-09-03 10:12:25', '6.jpeg', 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_kategori`
--

CREATE TABLE `tbl_kategori` (
  `kategori_id` int(5) NOT NULL,
  `kategori_nama` varchar(100) CHARACTER SET latin1 NOT NULL,
  `kategori_ket` varchar(200) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tbl_berita`
--
ALTER TABLE `tbl_berita`
  ADD PRIMARY KEY (`berita_id`);

--
-- Indeks untuk tabel `tbl_blog`
--
ALTER TABLE `tbl_blog`
  ADD PRIMARY KEY (`blog_id`);

--
-- Indeks untuk tabel `tbl_kategori`
--
ALTER TABLE `tbl_kategori`
  ADD PRIMARY KEY (`kategori_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tbl_berita`
--
ALTER TABLE `tbl_berita`
  MODIFY `berita_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT untuk tabel `tbl_blog`
--
ALTER TABLE `tbl_blog`
  MODIFY `blog_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT untuk tabel `tbl_kategori`
--
ALTER TABLE `tbl_kategori`
  MODIFY `kategori_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
