-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 18 Bulan Mei 2025 pada 11.23
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.0.30

-- tugas nomor 1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tugas6`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `produk_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `total` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `orders`
--

INSERT INTO `orders` (`order_id`, `user_id`, `produk_id`, `quantity`, `total`) VALUES
(1, 1, 1, 5, 7),
(2, 1, 3, 2, 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `nama_produk` varchar(255) NOT NULL,
  `harga` int(11) NOT NULL,
  `deskripsi_produk` varchar(255) NOT NULL,
  `stok` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `product`
--

INSERT INTO `product` (`id`, `nama_produk`, `harga`, `deskripsi_produk`, `stok`) VALUES
(1, 'Laptop ASUS ROG', 30000000, 'Laptop dengan spesifikasi tertinggi dan Gahar', 5),
(2, 'Laptop HP Victus', 35000000, 'Laptop dengan performa yang baik dan stabil', 10),
(3, 'Kursi Gaming JessNoLimit', 60000000, 'memiliki kenyamanan yang duniawi', 8);

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `nama`, `email`, `password`) VALUES
(1, 'thio', 'thioaja@tio.com', 'tiobawel'),
(2, 'karim', 'karimun@kariem.com', 'karikarim444');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;


-- tugas nomor 2 CRUD

-- 1. Create
CREATE TABLE test (
  test_id INT AUTO_INCREMENT PRIMARY KEY,
  test_name VARCHAR(255),
  test_description TEXT,
  test_date DATETIME
);

INSERT INTO test (test_name, test_description, test_date)
VALUES ('Prasthio Karim', 'Ganteng dan Baik hati', NOW());
INSERT INTO test (test_name, test_description, test_date)
VALUES ('Prasthio Aja', 'B AJA', NOW());

-- 2. Read
SELECT * FROM test

-- 3. Update
UPDATE test SET test_name = 'Prasthio Kariem', test_description = 'Ganteng dan Baik hati dan Dermawan', test_date = NOW()
WHERE test_id = 1;

-- 4. Delete

DELETE FROM test WHERE test_id = 2;