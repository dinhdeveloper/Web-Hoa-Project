-- phpMyAdmin SQL Dump
-- version 4.8.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th7 11, 2018 lúc 09:07 PM
-- Phiên bản máy phục vụ: 10.1.33-MariaDB
-- Phiên bản PHP: 7.2.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `project_php`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitietdondathang`
--

CREATE TABLE `chitietdondathang` (
  `MaChiTietDonDatHang` int(11) NOT NULL,
  `MaDonDatHang` int(11) NOT NULL,
  `MaSanPham` int(11) NOT NULL,
  `SoLuong` int(11) DEFAULT NULL,
  `GiaBan` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `chitietdondathang`
--

INSERT INTO `chitietdondathang` (`MaChiTietDonDatHang`, `MaDonDatHang`, `MaSanPham`, `SoLuong`, `GiaBan`) VALUES
(3, 4, 26, 2, 349000),
(4, 4, 17, 1, 489000),
(5, 4, 18, 1, 540000),
(6, 4, 50, 1, 1200000),
(7, 7, 6, 1, 400000),
(8, 8, 2, 1, 1288000),
(9, 11, 44, 1, 678000),
(10, 12, 44, 1, 678000),
(11, 13, 44, 1, 678000),
(12, 14, 44, 1, 678000),
(13, 15, 44, 1, 678000),
(14, 16, 38, 1, 849000),
(15, 16, 69, 1, 199000),
(16, 16, 25, 1, 400000),
(17, 18, 87, 1, 1288000),
(18, 18, 17, 1, 489000),
(19, 19, 43, 1, 456000),
(20, 19, 83, 1, 121000),
(21, 20, 66, 2, 273000),
(22, 20, 68, 1, 300000),
(23, 21, 41, 3, 631000),
(24, 22, 66, 3, 273000),
(25, 22, 73, 2, 1490000),
(26, 23, 43, 2, 456000),
(27, 23, 25, 2, 400000),
(28, 24, 43, 2, 456000),
(29, 24, 25, 2, 400000),
(30, 25, 43, 2, 456000),
(31, 25, 25, 2, 400000),
(32, 26, 43, 2, 456000),
(33, 26, 25, 2, 400000),
(34, 27, 70, 1, 638000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dondathang`
--

CREATE TABLE `dondathang` (
  `MaDonDatHang` int(11) NOT NULL,
  `MaKhachHang` int(11) NOT NULL,
  `NgayDatHang` datetime NOT NULL,
  `TongThanhTien` int(11) DEFAULT NULL,
  `MaTinhTrangDonDatHang` int(11) NOT NULL,
  `MaNhanVien` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `dondathang`
--

INSERT INTO `dondathang` (`MaDonDatHang`, `MaKhachHang`, `NgayDatHang`, `TongThanhTien`, `MaTinhTrangDonDatHang`, `MaNhanVien`) VALUES
(4, 27, '0000-00-00 00:00:00', 1187000, 1, NULL),
(7, 28, '2018-07-06 04:13:05', 400000, 1, NULL),
(8, 29, '2018-07-06 04:28:05', 1288000, 1, NULL),
(9, 29, '2018-07-06 04:28:52', 1288000, 1, NULL),
(10, 29, '2018-07-06 04:29:16', 1288000, 1, NULL),
(11, 30, '2018-07-06 04:29:34', 678000, 1, NULL),
(12, 30, '2018-07-06 04:42:44', 678000, 1, NULL),
(13, 30, '2018-07-06 04:44:04', 678000, 1, NULL),
(14, 30, '2018-07-06 04:44:18', 678000, 1, NULL),
(15, 30, '2018-07-06 04:44:36', 678000, 1, NULL),
(16, 31, '0000-00-00 00:00:00', 1448000, 1, NULL),
(17, 31, '2018-07-06 04:48:53', 1448000, 1, NULL),
(18, 32, '2018-07-06 04:50:28', 1777000, 1, NULL),
(19, 33, '2018-07-06 04:51:09', 577000, 1, NULL),
(20, 34, '2018-07-06 04:53:37', 846000, 1, NULL),
(21, 35, '2018-07-06 04:57:43', 1893000, 1, NULL),
(22, 36, '2018-07-06 05:01:24', 3799000, 1, NULL),
(23, 37, '2018-07-06 05:03:11', 1712000, 1, NULL),
(24, 37, '2018-07-06 05:03:49', 1712000, 1, NULL),
(25, 37, '2018-07-06 05:04:02', 1712000, 1, NULL),
(26, 38, '2018-07-06 05:04:56', 1712000, 1, NULL),
(27, 39, '2018-07-06 05:06:44', 638000, 1, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khachhang`
--

CREATE TABLE `khachhang` (
  `MaKhachHang` int(11) NOT NULL,
  `HoTen` varchar(45) CHARACTER SET utf8 NOT NULL,
  `DiaChi` varchar(256) CHARACTER SET utf8 NOT NULL,
  `SoDienThoai` varchar(11) CHARACTER SET utf8 NOT NULL,
  `BiXoa` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `khachhang`
--

INSERT INTO `khachhang` (`MaKhachHang`, `HoTen`, `DiaChi`, `SoDienThoai`, `BiXoa`) VALUES
(27, 'Trần Cảnh Dinh', 'D2 Bình Thạnh', '0975469232', 0),
(28, 'Trần Thi Nhi', 'D2 Bình Thạnh', '099999999', 0),
(29, 'Trần Thị Kim Anh', 'D2 Bình Thạnh', '0975469232', 0),
(30, 'Trần Cảnh Dinh', 'D2 Bình Thạnh', '0975469232', 0),
(31, 'Võ Tùng Nghĩa', '97 Man Thiện', '0123456789', 0),
(32, 'Trần Bảo Minh', '97 Man Thiện', '099999999', 0),
(33, 'Trần Thị Kim Anh', 'Đà Nẵng', '01644378342', 0),
(34, 'Mai Thị Khánh Huyền', 'Thủ Đức', '0945232424', 0),
(35, 'Trần Bảo Minh', 'Đà Nẵng', '0131313313', 0),
(36, 'Trần Thị Kim Anh', 'Đà Nẵng', '0975469232', 0),
(37, 'Trần Cảnh Dinh', 'Đà Nẵng', '0975469232', 0),
(38, 'Võ Tùng Nghĩa', 'Đà Nẵng', '0975469232', 0),
(39, 'Mai Thị Khánh Huyền', '97 Man Thiện', '0123456789', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loaisanpham`
--

CREATE TABLE `loaisanpham` (
  `MaLoaiSanPham` int(11) NOT NULL,
  `HinhMinhHoaLSP` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `TenLoaiSanPham` varchar(45) CHARACTER SET utf8 NOT NULL,
  `NgayNhap` date NOT NULL,
  `BiXoa` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Đang đổ dữ liệu cho bảng `loaisanpham`
--

INSERT INTO `loaisanpham` (`MaLoaiSanPham`, `HinhMinhHoaLSP`, `TenLoaiSanPham`, `NgayNhap`, `BiXoa`) VALUES
(1, 'h1.jpg', 'Hoa Hồng', '2018-06-25', 0),
(2, 'ly3.jpg', 'Hoa Ly', '2018-06-25', 0),
(3, 'lan1.jpg', 'Hoa Lan', '2018-06-25', 0),
(4, 'sen1.jpg', 'Hoa Sen', '2018-06-25', 0),
(5, 'hd1.jpg', 'Hoa Hướng Dương', '2018-06-25', 0),
(6, 'md1.jpg', 'Hoa Mẫu Đơn', '2018-06-25', 0),
(7, 'cd1.jpg', 'Hoa Cẩm Chướng', '2018-06-25', 0),
(8, 'gb1.jpg', 'Gấu Bông', '2018-06-25', 0),
(9, 's1.jpg', 'Socola', '2018-06-25', 0),
(10, 'b14.jpg', 'Bánh Kem', '2018-06-25', 0),
(11, 'hd16.jpg', 'Hoa Khai Trương', '2018-06-25', 0),
(12, 'cd1.jpg', 'Hoa Chúc Mừng', '2018-06-25', 0),
(13, 'cd6.jpg', 'Hoa Sinh Nhật', '2018-06-25', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhanvien`
--

CREATE TABLE `nhanvien` (
  `MaNhanVien` int(11) NOT NULL,
  `HinhNhanVien` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `TenDangNhap` varchar(45) CHARACTER SET utf8 NOT NULL,
  `MatKhau` varchar(20) CHARACTER SET utf8 NOT NULL,
  `HoTen` varchar(45) CHARACTER SET utf8 NOT NULL,
  `Email` varchar(45) CHARACTER SET utf8 DEFAULT NULL,
  `SoDienThoai` varchar(11) CHARACTER SET utf8 DEFAULT NULL,
  `BiXoa` int(11) NOT NULL DEFAULT '0',
  `QuyenNguoiDung` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nhanvien`
--

INSERT INTO `nhanvien` (`MaNhanVien`, `HinhNhanVien`, `TenDangNhap`, `MatKhau`, `HoTen`, `Email`, `SoDienThoai`, `BiXoa`, `QuyenNguoiDung`) VALUES
(0, 'avatar-16.png', 'admin', 'admin', 'Quản Trị', 'admin@gmail.com', '0123456789', 0, 0),
(28, 'dinh.jpg', 'canhdinh', '123123', 'Trần Cảnh Dinh', 'dinhtrancntt@gmail.com', '0975469232', 0, 1),
(29, 'avatar-14.png', 'kimanh', '123123', 'Trần Thị Kim Anh', 'kimanh@gmail.com', '01664378342', 0, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham`
--

CREATE TABLE `sanpham` (
  `MaSanPham` int(11) NOT NULL,
  `TenSanPham` varchar(100) CHARACTER SET utf8 NOT NULL,
  `MaLoaiSanPham` int(11) NOT NULL,
  `Gia` int(11) NOT NULL,
  `NgayNhap` date NOT NULL,
  `SoLuongTon` int(11) DEFAULT NULL,
  `SoLuongBan` int(11) DEFAULT '0',
  `SoLuotXem` int(11) DEFAULT '0',
  `BiXoa` int(11) DEFAULT '0',
  `MoTa` longtext CHARACTER SET utf8,
  `HinhURL` varchar(256) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sanpham`
--

INSERT INTO `sanpham` (`MaSanPham`, `TenSanPham`, `MaLoaiSanPham`, `Gia`, `NgayNhap`, `SoLuongTon`, `SoLuongBan`, `SoLuotXem`, `BiXoa`, `MoTa`, `HinhURL`) VALUES
(1, 'AN NHIÊN', 1, 805000, '2018-06-29', 100, 31, 60, 0, NULL, 'h1.jpg'),
(2, 'ÁNH HỒNG', 1, 1288000, '2018-06-29', 100, 45, 51, 0, NULL, 'h2.jpg'),
(3, 'BÀI CA', 1, 403000, '2018-06-29', 100, 13, 15, 0, NULL, 'h3.jpg'),
(4, 'BAN MAI', 1, 450000, '2018-06-29', 100, 31, 24, 0, NULL, 'h4.jpg'),
(5, 'BẢN SẮC', 1, 400000, '2018-06-29', 100, 43, 47, 0, NULL, 'h5.jpg'),
(6, 'BẦU TRỜI', 1, 400000, '2018-06-29', 100, 52, 22, 0, NULL, 'h6.jpg'),
(7, 'BẾN BỜ', 1, 350000, '2018-06-29', 100, 12, 34, 0, NULL, 'h7.jpg'),
(8, 'BÊN CẠNH EM', 1, 500000, '2018-06-29', 100, 32, 22, 0, NULL, 'h8.jpg'),
(9, 'BÊN NHAU', 1, 1640000, '2018-06-29', 100, 29, 35, 0, NULL, 'h9.jpg'),
(10, 'BÌNH MINH', 1, 863000, '2018-06-29', 100, 10, 11, 0, NULL, 'h10.jpg'),
(11, 'BỪNG SÁNG', 1, 655000, '2018-06-29', 100, 31, 12, 0, NULL, 'h11.jpg'),
(12, 'BƯỚC THÀNH CÔNG', 1, 640000, '2018-06-29', 100, 20, 24, 0, NULL, 'h12.jpg'),
(13, 'CẦU VỒNG', 1, 1265000, '2018-06-29', 100, 19, 44, 0, NULL, 'h13.jpg'),
(14, 'CHÀO NGÀY MỚI', 1, 709000, '2018-06-29', 100, 23, 22, 0, NULL, 'h14.jpg'),
(15, 'CHÍN TẦNG MÂY', 1, 950000, '2018-06-29', 100, 41, 22, 0, NULL, 'h15.jpg'),
(16, 'CHÀO ĐÓN', 2, 687000, '2018-06-29', 100, 12, 14, 0, NULL, 'ly1.jpg'),
(17, 'CÔNG CHÚA', 2, 489000, '2018-06-29', 100, 51, 99, 0, NULL, 'ly2.jpg'),
(18, 'DẤU YÊU', 2, 540000, '2018-06-29', 100, 32, 23, 0, NULL, 'ly3.jpg'),
(19, 'GỐC NHỎ', 2, 310000, '2018-06-29', 100, 65, 91, 0, NULL, 'ly4.jpg'),
(20, 'HÀO QUANG', 2, 675000, '2018-06-29', 100, 39, 17, 0, NULL, 'ly5.jpg'),
(21, 'HUY HOÀNG', 2, 800000, '2018-06-29', 100, 8, 139, 0, NULL, 'ly6.jpg'),
(22, 'TÀN THU', 2, 897000, '2018-06-29', 100, 21, 84, 0, NULL, 'ly7.jpg'),
(23, 'TẤN TIẾN', 2, 239000, '2018-06-29', 100, 71, 84, 0, NULL, 'ly8.jpg'),
(24, 'TỊNH KHÔI', 2, 780000, '2018-06-29', 100, 32, 54, 0, NULL, 'ly9.jpg'),
(25, 'HOAN HỶ', 3, 400000, '2018-06-29', 100, 52, 17, 0, NULL, 'lan1.jpg'),
(26, 'MAY MẮN', 3, 349000, '2018-06-29', 100, 78, 31, 0, NULL, 'lan2.jpg'),
(27, 'NHỚ THƯƠNG', 3, 897000, '2018-06-29', 100, 63, 77, 0, NULL, 'lan3.jpg'),
(28, 'NỔI BẬT', 3, 914000, '2018-06-29', 100, 20, 85, 0, NULL, 'lan4.jpg'),
(29, 'PHÂN ƯU', 3, 812000, '2018-06-29', 100, 27, 64, 0, NULL, 'lan5.jpg'),
(30, 'RẠNG RỠ', 3, 234000, '2018-06-29', 100, 79, 99, 0, NULL, 'lan6.jpg'),
(31, 'SỨC KHỎE', 3, 395000, '2018-06-29', 100, 39, 10, 0, NULL, 'lan7.jpg'),
(32, 'SUM VẦY', 3, 1920000, '2018-06-29', 100, 20, 9, 0, NULL, 'lan8.jpg'),
(33, 'TÌNH THÂN', 3, 962000, '2018-06-29', 100, 39, 8, 0, NULL, 'lan9.jpg'),
(34, 'TRỌN VẸN', 3, 950000, '2018-06-29', 100, 10, 11, 0, NULL, 'lan10.jpg'),
(35, 'VĨNH CỮU', 3, 789000, '2018-06-29', 100, 68, 11, 0, NULL, 'lan11.jpg'),
(36, 'VỮNG BỀN', 3, 749000, '2018-06-29', 100, 29, 40, 0, NULL, 'lan12.jpg'),
(37, 'HƯƠNG SEN', 4, 568000, '2018-06-29', 100, 32, 8, 0, NULL, 'sen1.jpg'),
(38, 'CÁNH SEN', 4, 849000, '2018-06-29', 100, 73, 14, 0, NULL, 'sen2.jpg'),
(39, 'KHỞI SẮC', 4, 442000, '2018-06-29', 100, 20, 14, 0, NULL, 'sen3.jpg'),
(40, 'THUẨN KHIẾT', 4, 382000, '2018-06-29', 100, 72, 75, 0, NULL, 'sen4.jpg'),
(41, 'TƯƠI THẮM', 4, 631000, '2018-06-29', 100, 37, 74, 0, NULL, 'sen5.jpg'),
(42, 'ÁNH MẶT TRỜI', 5, 586000, '2018-06-29', 100, 54, 8, 0, NULL, 'hd1.jpg'),
(43, 'BAN MAI', 5, 456000, '2018-06-29', 100, 45, 7, 0, NULL, 'hd2.jpg'),
(44, 'CÂU HÁT', 5, 678000, '2018-06-29', 100, 82, 10, 0, NULL, 'hd3.jpg'),
(45, 'DANH VỌNG', 5, 345000, '2018-06-29', 100, 88, 8, 0, NULL, 'hd4.jpg'),
(46, 'HẠ VỀ', 5, 740000, '2018-06-29', 100, 23, 31, 0, NULL, 'hd5.jpg'),
(47, 'HÂN HOAN', 5, 445000, '2018-06-29', 100, 62, 10, 0, NULL, 'hd6.jpg'),
(48, 'MẶT TRỜI BÉ CON', 5, 310000, '2018-06-29', 100, 70, 8, 0, NULL, 'hd7.jpg'),
(49, 'DÀNH RIÊNG EM', 6, 1000000, '2018-06-29', 100, 20, 53, 0, NULL, 'md1.jpg'),
(50, 'VINTAGE', 6, 1200000, '2018-06-29', 100, 13, 15, 0, NULL, 'md2.jpg'),
(51, 'DỊU DÀNG', 7, 812000, '2018-06-29', 100, 23, 24, 0, NULL, 'cd1.jpg'),
(52, 'KỈ NIỆM', 7, 456000, '2018-06-29', 100, 62, 16, 0, NULL, 'cd2.jpg'),
(53, 'LUNG LINH', 7, 527000, '2018-06-29', 100, 45, 17, 0, NULL, 'cd3.jpg'),
(54, 'MẮT CƯỜI', 7, 262000, '2018-06-29', 100, 80, 25, 0, NULL, 'cd4.jpg'),
(55, 'MÂY  HỒNG', 7, 370000, '2018-06-29', 100, 39, 19, 0, NULL, 'cd5.jpg'),
(56, 'YÊU KIỀU', 7, 640000, '2018-06-29', 100, 29, 37, 0, NULL, 'cd6.jpg'),
(57, 'XINH TƯƠI', 7, 520000, '2018-06-29', 100, 26, 23, 0, NULL, 'cd7.jpg'),
(58, 'MÙA XUÂN', 7, 379000, '2018-06-29', 100, 28, 19, 0, NULL, 'cd8.jpg'),
(59, 'BANANA', 8, 725000, '2018-06-29', 100, 28, 29, 0, NULL, 'gb1.jpg'),
(60, 'CÁ MẬP ĐÁNG YÊU', 8, 578000, '2018-06-29', 100, 38, 30, 0, NULL, 'gb2.jpg'),
(61, 'GẤU BÔNG ĐÁNG YÊU', 8, 729000, '2018-06-29', 100, 31, 48, 0, NULL, 'gb3.jpg'),
(62, 'CÚN CON XINH XẮN', 8, 721000, '2018-06-29', 100, 12, 18, 0, NULL, 'gb4.jpg'),
(63, 'GẤU MẬP MẠP', 8, 629000, '2018-06-29', 100, 62, 39, 0, NULL, 'gb5.jpg'),
(64, 'GẤU TỐT NGHIỆP', 8, 910000, '2018-06-29', 100, 12, 13, 0, NULL, 'gb6.jpg'),
(65, 'HÀ MÃ HỒNG XINH', 8, 731000, '2018-06-29', 100, 31, 24, 0, NULL, 'gb7.jpg'),
(66, 'DỊU NGỌT', 9, 273000, '2018-06-29', 100, 12, 24, 0, NULL, 's1.jpg'),
(67, 'NGỌT NGÀO', 9, 120000, '2018-06-29', 100, 14, 49, 0, NULL, 's2.jpg'),
(68, 'VỊ NGỌT TÌNH YÊU', 9, 300000, '2018-06-29', 100, 44, 24, 0, NULL, 's3.jpg'),
(69, 'CHOCO DREAM', 10, 199000, '2018-06-29', 100, 33, 14, 0, NULL, 'b1.jpg'),
(70, 'CHÚ KHỈ ĐÁNG YÊU', 10, 638000, '2018-06-29', 100, 12, 55, 0, NULL, 'b2.jpg'),
(71, 'CỔ TÍCH', 10, 242000, '2018-06-29', 100, 42, 43, 0, NULL, 'b3.jpg'),
(72, 'DỊP ĐÁNG NHỚ', 10, 323000, '2018-06-29', 100, 23, 12, 0, NULL, 'b4.jpg'),
(73, 'HOA HỒNG KEM', 10, 1490000, '2018-06-29', 100, 44, 26, 0, NULL, 'b5.jpg'),
(74, 'HƯƠNG VỊ KHÓ QUÊN', 10, 457000, '2018-06-29', 100, 43, 13, 0, NULL, 'b6.jpg'),
(75, 'KĨ NIỆM', 10, 667000, '2018-06-29', 100, 23, 35, 0, NULL, 'b7.jpg'),
(76, 'LỜI CHÚC NGỌT NGÀO', 10, 567000, '2018-06-29', 100, 54, 6, 0, NULL, 'b8.jpg'),
(77, 'MÓN QUÀ DỂ THƯƠNG', 10, 324000, '2018-06-29', 100, 43, 44, 0, NULL, 'b9.jpg'),
(78, 'NGỌT DỊU', 10, 343000, '2018-06-29', 100, 12, 25, 0, NULL, 'b10.jpg'),
(79, 'QUÀ TẶNG MẸ', 10, 380000, '2018-06-29', 100, 93, 9, 0, NULL, 'b11.jpg'),
(80, 'TÌNH YÊU NGỌT NGÀO', 10, 830000, '2018-06-29', 100, 83, 12, 0, NULL, 'b12.jpg'),
(81, 'VỮNG BỀN', 11, 749000, '2018-06-29', 100, 29, 40, 0, NULL, 'lan12.jpg'),
(82, 'NGÀY YÊU', 11, 349000, '2018-06-29', 100, 32, 12, 0, NULL, 'hd16.jpg'),
(83, 'TIM THƠ NGÂY', 11, 121000, '2018-06-29', 100, 31, 33, 0, NULL, 'hd17.jpg'),
(84, 'MỘNG MƠ', 11, 374000, '2018-06-29', 100, 71, 7, 0, NULL, 'hd18.jpg'),
(85, 'DANH VỌNG', 11, 948000, '2018-06-29', 100, 35, 14, 0, NULL, 'hd19.jpg'),
(86, 'CHUNG ĐÔI', 11, 324000, '2018-06-29', 100, 42, 6, 0, NULL, 'hd20.jpg'),
(87, 'KHỞI SẮC', 12, 1288000, '2018-06-29', 100, 50, 31, 0, NULL, 'h2.jpg'),
(88, 'AN NHIÊN', 12, 805000, '2018-06-29', 100, 50, 21, 0, NULL, 'h1.jpg'),
(89, 'BẦU TRỜI', 12, 400000, '2018-06-29', 100, 52, 23, 0, NULL, 'h6.jpg'),
(90, 'BẾN BỜ', 12, 350000, '2018-06-29', 100, 12, 34, 0, NULL, 'h7.jpg'),
(91, 'BỪNG SÁNG', 12, 655000, '2018-06-29', 100, 31, 13, 0, NULL, 'h11.jpg'),
(92, 'CHÀO NGÀY MỚI', 12, 709000, '2018-06-29', 100, 23, 28, 0, NULL, 'h14.jpg'),
(93, 'MẶT TRỜI BÉ CON', 12, 310000, '2018-06-29', 100, 70, 24, 0, NULL, 'hd7.jpg'),
(94, 'ÁNH MẶT TRỜI', 12, 586000, '2018-06-29', 100, 54, 35, 0, NULL, 'hd1.jpg'),
(95, 'BAN MAI', 12, 456000, '2018-06-29', 100, 45, 35, 0, NULL, 'hd2.jpg'),
(103, 'CHÀO NGÀY MỚI', 13, 709000, '2018-06-29', 100, 23, 22, 0, NULL, 'h14.jpg'),
(104, 'MÙA XUÂN', 13, 379000, '2018-06-29', 100, 28, 34, 0, NULL, 'cd8.jpg'),
(105, 'VINTAGE', 13, 1200000, '2018-06-29', 100, 13, 42, 0, NULL, 'md2.jpg'),
(106, 'BỪNG SÁNG', 13, 655000, '2018-06-29', 100, 31, 3, 0, NULL, 'h11.jpg'),
(107, 'MAY MẮN', 13, 349000, '2018-06-29', 100, 78, 13, 0, NULL, 'lan2.jpg'),
(108, 'DÀNH RIÊNG EM', 13, 1000000, '2018-06-29', 100, 20, 24, 0, NULL, 'md1.jpg'),
(109, 'THUẨN KHIẾT', 13, 382000, '2018-06-29', 100, 72, 14, 0, NULL, 'sen4.jpg'),
(110, 'NỔI BẬT', 13, 914000, '2018-06-29', 100, 20, 13, 0, NULL, 'lan4.jpg'),
(111, 'CHÀO ĐÓN', 13, 687000, '2018-06-29', 100, 12, 32, 0, NULL, 'ly1.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tinhtrangdondathang`
--

CREATE TABLE `tinhtrangdondathang` (
  `MaTinhTrangDonDatHang` int(11) NOT NULL,
  `TenTinhTrangDonDatHang` varchar(45) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tinhtrangdondathang`
--

INSERT INTO `tinhtrangdondathang` (`MaTinhTrangDonDatHang`, `TenTinhTrangDonDatHang`) VALUES
(1, 'Đặt Hàng'),
(2, 'Đang Xử Lý'),
(3, 'Đang Giao Hàng'),
(4, 'Thanh Toán'),
(5, 'Hủy');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `chitietdondathang`
--
ALTER TABLE `chitietdondathang`
  ADD PRIMARY KEY (`MaChiTietDonDatHang`),
  ADD KEY `fk_ChiTietDonDatHang_DonDatHang1_idx` (`MaDonDatHang`),
  ADD KEY `fk_ChiTietDonDatHang_SanPham1_idx` (`MaSanPham`);

--
-- Chỉ mục cho bảng `dondathang`
--
ALTER TABLE `dondathang`
  ADD PRIMARY KEY (`MaDonDatHang`),
  ADD KEY `fk_DonDatHang_KhachHang1_idx` (`MaKhachHang`),
  ADD KEY `fk_DonDatHang_TinhTrangDonDatHang1_idx` (`MaTinhTrangDonDatHang`),
  ADD KEY `fk_DonDatHang_NhanVien1_idx` (`MaNhanVien`);

--
-- Chỉ mục cho bảng `khachhang`
--
ALTER TABLE `khachhang`
  ADD PRIMARY KEY (`MaKhachHang`);

--
-- Chỉ mục cho bảng `loaisanpham`
--
ALTER TABLE `loaisanpham`
  ADD PRIMARY KEY (`MaLoaiSanPham`);

--
-- Chỉ mục cho bảng `nhanvien`
--
ALTER TABLE `nhanvien`
  ADD PRIMARY KEY (`MaNhanVien`);

--
-- Chỉ mục cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`MaSanPham`),
  ADD KEY `fk_SanPham_LoaiSanPham_idx` (`MaLoaiSanPham`);

--
-- Chỉ mục cho bảng `tinhtrangdondathang`
--
ALTER TABLE `tinhtrangdondathang`
  ADD PRIMARY KEY (`MaTinhTrangDonDatHang`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `chitietdondathang`
--
ALTER TABLE `chitietdondathang`
  MODIFY `MaChiTietDonDatHang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT cho bảng `dondathang`
--
ALTER TABLE `dondathang`
  MODIFY `MaDonDatHang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT cho bảng `khachhang`
--
ALTER TABLE `khachhang`
  MODIFY `MaKhachHang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT cho bảng `loaisanpham`
--
ALTER TABLE `loaisanpham`
  MODIFY `MaLoaiSanPham` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `nhanvien`
--
ALTER TABLE `nhanvien`
  MODIFY `MaNhanVien` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `MaSanPham` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=112;

--
-- AUTO_INCREMENT cho bảng `tinhtrangdondathang`
--
ALTER TABLE `tinhtrangdondathang`
  MODIFY `MaTinhTrangDonDatHang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `chitietdondathang`
--
ALTER TABLE `chitietdondathang`
  ADD CONSTRAINT `fk_ChiTietDonDatHang_DonDatHang1` FOREIGN KEY (`MaDonDatHang`) REFERENCES `dondathang` (`MaDonDatHang`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_ChiTietDonDatHang_SanPham1` FOREIGN KEY (`MaSanPham`) REFERENCES `sanpham` (`MaSanPham`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Các ràng buộc cho bảng `dondathang`
--
ALTER TABLE `dondathang`
  ADD CONSTRAINT `fk_DonDatHang_KhachHang1` FOREIGN KEY (`MaKhachHang`) REFERENCES `khachhang` (`MaKhachHang`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_DonDatHang_NhanVien1` FOREIGN KEY (`MaNhanVien`) REFERENCES `nhanvien` (`MaNhanVien`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_DonDatHang_TinhTrangDonDatHang1` FOREIGN KEY (`MaTinhTrangDonDatHang`) REFERENCES `tinhtrangdondathang` (`MaTinhTrangDonDatHang`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Các ràng buộc cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD CONSTRAINT `fk_SanPham_LoaiSanPham` FOREIGN KEY (`MaLoaiSanPham`) REFERENCES `loaisanpham` (`MaLoaiSanPham`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
