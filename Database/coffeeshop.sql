-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 25, 2022 at 01:09 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `coffeeshop`
--
CREATE Database coffeeshop;
USE coffeeshop;
-- --------------------------------------------------------

--
-- Table structure for table `cthoadon`
--

CREATE TABLE `cthoadon` (
  `MaHD` int(11) NOT NULL,
  `MaSP` int(11) NOT NULL,
  `SoLuong` int(11) NOT NULL,
  `DonGia` int(11) NOT NULL,
  `ThanhTien` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cthoadon`
--

INSERT INTO `cthoadon` (`MaHD`, `MaSP`, `SoLuong`, `DonGia`, `ThanhTien`) VALUES
(1, 1, 2, 20000, 40000),
(1, 2, 1, 40000, 40000),
(1, 3, 1, 40000, 40000),
(1, 4, 1, 40000, 40000),
(1, 7, 2, 10000, 20000),
(2, 1, 2, 20000, 40000),
(2, 3, 1, 40000, 40000),
(2, 6, 1, 30000, 30000),
(2, 7, 2, 10000, 20000),
(3, 3, 1, 40000, 40000),
(3, 4, 1, 40000, 40000),
(3, 5, 2, 40000, 80000),
(3, 7, 10, 10000, 100000),
(4, 6, 1, 30000, 30000),
(4, 7, 1, 10000, 10000);

-- --------------------------------------------------------

--
-- Table structure for table `ctphieunhap`
--

CREATE TABLE `ctphieunhap` (
  `MaPN` int(11) NOT NULL,
  `MaSP` int(11) NOT NULL,
  `SoLuong` int(11) NOT NULL,
  `DonGia` int(11) NOT NULL,
  `ThanhTien` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ctphieunhap`
--

INSERT INTO `ctphieunhap` (`MaPN`, `MaSP`, `SoLuong`, `DonGia`, `ThanhTien`) VALUES
(1, 6, 100, 20000, 2000000),
(2, 7, 10, 5000, 50000);

-- --------------------------------------------------------

--
-- Table structure for table `giamgia`
--

CREATE TABLE `giamgia` (
  `MaGiam` int(11) NOT NULL,
  `TenGiamGia` text NOT NULL,
  `PhanTramGiam` int(11) NOT NULL,
  `DieuKien` int(11) NOT NULL,
  `NgayBD` date NOT NULL,
  `NgayKT` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `giamgia`
--

INSERT INTO `giamgia` (`MaGiam`, `TenGiamGia`, `PhanTramGiam`, `DieuKien`, `NgayBD`, `NgayKT`) VALUES
(1, 'Không giảm giá', 0, 0, '2022-01-01', '2042-12-31'),
(2, 'Khách hàng thân thiết', 20, 0, '2022-12-13', '2023-12-13');

-- --------------------------------------------------------

--
-- Table structure for table `hoadon`
--

CREATE TABLE `hoadon` (
  `MaHD` int(11) NOT NULL,
  `MaKH` int(11) NOT NULL,
  `MaNV` int(11) NOT NULL,
  `NgayLap` date NOT NULL,
  `TongTien` int(11) NOT NULL,
  `GhiChu` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hoadon`
--

INSERT INTO `hoadon` (`MaHD`, `MaKH`, `MaNV`, `NgayLap`, `TongTien`, `GhiChu`) VALUES
(1, 1, 1, '2022-11-18', 180000, 'Đã thanh toán'),
(2, 2, 2, '2022-11-20', 130000, 'Đã thanh toán'),
(3, 3, 3, '2022-11-28', 260000, 'Đã thanh toán'),
(4, 4, 0, '2022-12-13', 32000, 'Đã thanh toán');

-- --------------------------------------------------------

--
-- Table structure for table `khachhang`
--

CREATE TABLE `khachhang` (
  `MaKH` int(11) NOT NULL,
  `Ho` varchar(255) NOT NULL,
  `Ten` varchar(255) NOT NULL,
  `GioiTinh` varchar(3) NOT NULL,
  `TongChiTieu` int(11) NOT NULL DEFAULT 0,
  `TinhTrang` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `khachhang`
--

INSERT INTO `khachhang` (`MaKH`, `Ho`, `Ten`, `GioiTinh`, `TongChiTieu`, `TinhTrang`) VALUES
(1, 'Ngô Quang', 'Vinh', 'Nam', 180000, 1),
(2, 'Đỗ Thiện', 'Quân', 'Nam', 130000, 1),
(3, 'Nguyễn Minh', 'Nhật', 'Nữ', 260000, 1),
(4, 'Nguyễn Hải', 'Sơn', 'Nam', 32000, 1);

-- --------------------------------------------------------

--
-- Table structure for table `loai`
--

CREATE TABLE `loai` (
  `MaLoai` int(11) NOT NULL,
  `TenLoai` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `loai`
--

INSERT INTO `loai` (`MaLoai`, `TenLoai`) VALUES
(1, 'Đồ uống'),
(2, 'Bánh'),
(3, 'Soft drink'),
(4, 'Beer');

-- --------------------------------------------------------

--
-- Table structure for table `nhacungcap`
--

CREATE TABLE `nhacungcap` (
  `MaNCC` int(11) NOT NULL,
  `TenNCC` varchar(255) NOT NULL,
  `DiaChi` varchar(255) NOT NULL,
  `DienThoai` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `nhacungcap`
--

INSERT INTO `nhacungcap` (`MaNCC`, `TenNCC`, `DiaChi`, `DienThoai`) VALUES
(1, 'Pepsico', '285 Đội cấn', '012345678'),
(2, 'Coca Cola', '300 Kim Mã', '0912345678'),
(3, 'Beer Hanoi', '100 Kim Mã', '0123456789');

-- --------------------------------------------------------

--
-- Table structure for table `nhanvien`
--

CREATE TABLE `nhanvien` (
  `MaNV` int(11) NOT NULL,
  `Ho` varchar(255) NOT NULL,
  `Ten` varchar(255) NOT NULL,
  `GioiTinh` varchar(3) NOT NULL,
  `ChucVu` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `nhanvien`
--

INSERT INTO `nhanvien` (`MaNV`, `Ho`, `Ten`, `GioiTinh`, `ChucVu`) VALUES
(0, 'Admin', '', '', 'Quản trị'),
(1, 'Ngo', 'Vinh', 'Nam', 'Quản lý'),
(2, 'Do', 'Quan', 'Nam', 'Nhân viên'),
(3, 'hai', 'son', 'Nam', 'Nhân viên');

-- --------------------------------------------------------

--
-- Table structure for table `phanquyen`
--

CREATE TABLE `phanquyen` (
  `Quyen` varchar(255) NOT NULL,
  `NhapHang` int(1) NOT NULL,
  `QLSanPham` int(1) NOT NULL,
  `QLNhanVien` int(1) NOT NULL,
  `QLKhachHang` int(1) NOT NULL,
  `ThongKe` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `phanquyen`
--

INSERT INTO `phanquyen` (`Quyen`, `NhapHang`, `QLSanPham`, `QLNhanVien`, `QLKhachHang`, `ThongKe`) VALUES
('Default', 0, 0, 0, 0, 0),
('Nhân viên', 0, 0, 0, 1, 0),
('Quản lý', 1, 0, 1, 1, 1),
('Quản trị', 1, 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `phieunhap`
--

CREATE TABLE `phieunhap` (
  `MaPN` int(11) NOT NULL,
  `MaNCC` int(11) NOT NULL,
  `MaNV` int(11) NOT NULL,
  `NgayLap` date NOT NULL,
  `TongTien` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `phieunhap`
--

INSERT INTO `phieunhap` (`MaPN`, `MaNCC`, `MaNV`, `NgayLap`, `TongTien`) VALUES
(1, 2, 0, '2022-11-19', 2000000),
(2, 3, 0, '2022-11-23', 50000);

-- --------------------------------------------------------

--
-- Table structure for table `sanpham`
--

CREATE TABLE `sanpham` (
  `MaSP` int(11) NOT NULL,
  `TenSP` varchar(255) NOT NULL,
  `MaLoai` int(11) NOT NULL,
  `SoLuong` int(11) NOT NULL,
  `DonViTinh` varchar(255) NOT NULL,
  `HinhAnh` varchar(255) NOT NULL,
  `DonGia` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Bang San Pham';

--
-- Dumping data for table `sanpham`
--

INSERT INTO `sanpham` (`MaSP`, `TenSP`, `MaLoai`, `SoLuong`, `DonViTinh`, `HinhAnh`, `DonGia`) VALUES
(1, 'Almond', 2, 20, 'Cái', 'Almond.png', 30000),
(2, 'Bạc Xỉu', 1, 100, 'Cốc', 'bac_xiu.png', 20000),
(3, 'Blue Berry Smothie', 1, 100, 'Cốc', 'blue_berry_smothie.png', 50000),
(4, 'Chocolate Cake', 2, 20, 'Cái', 'Chocolate.png', 30000),
(5, 'Chocolate Cookie', 1, 100, 'Cốc', 'chocolate_cookie.png', 50000),
(6, 'Coke', 3, 100, 'Lon', 'cocacola.png', 20000),
(7, 'Coconut Cake', 2, 20, 'Cái', 'coconut.png', 30000),
(8, 'Coconut Coffee', 1, 100, 'Cốc', 'coconut_coffee.png', 50000),
(9, 'Coconut Matcha Latte', 1, 100, 'Cốc', 'coconut_matcha_latte.png', 40000),
(10, 'Cold Brew', 1, 100, 'Chai', 'cold_brew.png', 60000),
(11, 'Corona Extra', 4, 100, 'Chai', 'corona_extra.png', 40000),
(12, 'Egg Coffee', 1, 100, 'Cốc', 'egg_coffe.png', 70000),
(13, 'Espresso Double Shot', 1, 100, 'Cốc', 'espresso.png', 30000),
(14, 'Espresso Single Shot', 1, 100, 'Cốc', 'espresso_single.png', 15000),
(15, 'Fanta', 3, 100, 'Lon', 'fanta.png', 20000),
(16, 'Hanoi Beer', 4, 100, 'Chai', 'hanoi_beer.png', 30000),
(17, 'Honey Lemon Tea', 1, 100, 'Cốc', 'honey_lemon_tea.png', 30000),
(18, 'Capuchino', 1, 100, 'Cốc', 'hot_capuchino.png', 60000),
(19, 'Hot Chocolate', 1, 100, 'Cốc', 'hot_chocolate.png', 70000),
(20, 'Latte', 1, 100, 'Cốc', 'hot_latte.png', 60000),
(21, 'Mango Smoothie', 1, 100, 'Cốc', 'mango_smoothie.png', 50000),
(22, 'Matcha Green Smoothie', 1, 100, 'Cốc', 'Matcha-Green-Smoothie.png', 60000),
(23, 'Mocha', 1, 100, 'Cốc', 'mocha.png', 40000),
(24, 'Orange Grass Peach Tea', 1, 100, 'Cốc', 'orange_grass_peach_tea.png', 40000),
(25, 'Orange Mixed', 1, 100, 'Cốc', 'orange_mixed.png', 50000),
(26, 'Passion Mousse', 2, 20, 'Cái', 'Passion-mousse.png', 40000),
(27, 'Pinky Mixed', 1, 100, 'Cốc', 'pinky_mixed.png', 50000),
(28, 'Sprite', 3, 100, 'Lon', 'sprite.png', 20000),
(29, 'Tea Bags', 3, 100, 'Cốc', 'tea_bags.png', 40000),
(30, 'Tiramisu', 2, 20, 'Cái', 'tiramisu.png', 30000),
(31, 'Vietnamese Coffee', 1, 100, 'Cốc', 'vietnamesecoffe.png', 30000),
(32, 'Yellow Mixed', 1, 100, 'Cốc', 'yellow_mixed.png', 50000),
(33, 'Honey Lemon Cake', 2, 100, 'Cái', 'honey_lemon_cake.png', 30000);

-- --------------------------------------------------------

--
-- Table structure for table `taikhoan`
--

CREATE TABLE `taikhoan` (
  `MaNV` int(11) NOT NULL,
  `TenDangNhap` varchar(255) NOT NULL,
  `MatKhau` varchar(255) NOT NULL,
  `Quyen` varchar(255) NOT NULL,
  `TrangThai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `taikhoan`
--

INSERT INTO `taikhoan` (`MaNV`, `TenDangNhap`, `MatKhau`, `Quyen`, `TrangThai`) VALUES
(0, 'admin', 'admin', 'Quản trị', 1),
(1, 'ql01', 'ql01', 'Quản lý', 1),
(2, 'nv01', 'nv01', 'Nhân viên', 1),
(3, 'nv6886', 'nv6886', 'Nhân viên', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cthoadon`
--
ALTER TABLE `cthoadon`
  ADD PRIMARY KEY (`MaHD`,`MaSP`),
  ADD KEY `cthoadon_ibfk_1` (`MaHD`);

--
-- Indexes for table `ctphieunhap`
--
ALTER TABLE `ctphieunhap`
  ADD PRIMARY KEY (`MaPN`,`MaSP`);

--
-- Indexes for table `giamgia`
--
ALTER TABLE `giamgia`
  ADD PRIMARY KEY (`MaGiam`);

--
-- Indexes for table `hoadon`
--
ALTER TABLE `hoadon`
  ADD PRIMARY KEY (`MaHD`),
  ADD KEY `hoadon_ibfk_1` (`MaNV`),
  ADD KEY `hoadon_ibfk_2` (`MaKH`);

--
-- Indexes for table `khachhang`
--
ALTER TABLE `khachhang`
  ADD PRIMARY KEY (`MaKH`);

--
-- Indexes for table `loai`
--
ALTER TABLE `loai`
  ADD PRIMARY KEY (`MaLoai`);

--
-- Indexes for table `nhacungcap`
--
ALTER TABLE `nhacungcap`
  ADD PRIMARY KEY (`MaNCC`);

--
-- Indexes for table `nhanvien`
--
ALTER TABLE `nhanvien`
  ADD PRIMARY KEY (`MaNV`),
  ADD KEY `chucvu_ibfk_1` (`ChucVu`);

--
-- Indexes for table `phanquyen`
--
ALTER TABLE `phanquyen`
  ADD PRIMARY KEY (`Quyen`);

--
-- Indexes for table `phieunhap`
--
ALTER TABLE `phieunhap`
  ADD PRIMARY KEY (`MaPN`),
  ADD KEY `phieunhap_ibfk_1` (`MaNCC`),
  ADD KEY `phieunhap_ibfk_2` (`MaNV`);

--
-- Indexes for table `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`MaSP`),
  ADD KEY `sanpham_ibfk_1` (`MaLoai`);

--
-- Indexes for table `taikhoan`
--
ALTER TABLE `taikhoan`
  ADD PRIMARY KEY (`MaNV`),
  ADD KEY `taikhoan_ibfk_2` (`Quyen`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `giamgia`
--
ALTER TABLE `giamgia`
  MODIFY `MaGiam` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `hoadon`
--
ALTER TABLE `hoadon`
  MODIFY `MaHD` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `khachhang`
--
ALTER TABLE `khachhang`
  MODIFY `MaKH` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `loai`
--
ALTER TABLE `loai`
  MODIFY `MaLoai` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `nhacungcap`
--
ALTER TABLE `nhacungcap`
  MODIFY `MaNCC` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `nhanvien`
--
ALTER TABLE `nhanvien`
  MODIFY `MaNV` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `phieunhap`
--
ALTER TABLE `phieunhap`
  MODIFY `MaPN` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `MaSP` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `taikhoan`
--
ALTER TABLE `taikhoan`
  MODIFY `MaNV` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cthoadon`
--
ALTER TABLE `cthoadon`
  ADD CONSTRAINT `cthoadon_ibfk_1` FOREIGN KEY (`MaHD`) REFERENCES `hoadon` (`MaHD`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `ctphieunhap`
--
ALTER TABLE `ctphieunhap`
  ADD CONSTRAINT `ctphieunhap_ibfk_2` FOREIGN KEY (`MaPN`) REFERENCES `phieunhap` (`MaPN`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `hoadon`
--
ALTER TABLE `hoadon`
  ADD CONSTRAINT `hoadon_ibfk_1` FOREIGN KEY (`MaNV`) REFERENCES `nhanvien` (`MaNV`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `hoadon_ibfk_2` FOREIGN KEY (`MaKH`) REFERENCES `khachhang` (`MaKH`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `nhanvien`
--
ALTER TABLE `nhanvien`
  ADD CONSTRAINT `chucvu_ibfk_1` FOREIGN KEY (`ChucVu`) REFERENCES `taikhoan` (`Quyen`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `phieunhap`
--
ALTER TABLE `phieunhap`
  ADD CONSTRAINT `phieunhap_ibfk_1` FOREIGN KEY (`MaNCC`) REFERENCES `nhacungcap` (`MaNCC`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `phieunhap_ibfk_2` FOREIGN KEY (`MaNV`) REFERENCES `nhanvien` (`MaNV`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `sanpham`
--
ALTER TABLE `sanpham`
  ADD CONSTRAINT `sanpham_ibfk_1` FOREIGN KEY (`MaLoai`) REFERENCES `loai` (`MaLoai`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `taikhoan`
--
ALTER TABLE `taikhoan`
  ADD CONSTRAINT `taikhoan_ibfk_1` FOREIGN KEY (`MaNV`) REFERENCES `nhanvien` (`MaNV`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `taikhoan_ibfk_2` FOREIGN KEY (`Quyen`) REFERENCES `phanquyen` (`Quyen`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
