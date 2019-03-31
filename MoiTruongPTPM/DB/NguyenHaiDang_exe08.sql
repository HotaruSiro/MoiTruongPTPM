-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 09, 2019 at 01:58 PM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `exe08`
--

-- --------------------------------------------------------

--
-- Table structure for table `dantoc`
--

CREATE TABLE `dantoc` (
  `MaDT` int(11) NOT NULL,
  `TenDT` varchar(12) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dantoc`
--

INSERT INTO `dantoc` (`MaDT`, `TenDT`) VALUES
(1, 'Kinh'),
(2, 'Tày'),
(3, 'Thái'),
(4, 'Hoa'),
(5, 'Khơ-me'),
(6, 'Mường'),
(7, 'Nùng'),
(8, 'Hmông'),
(9, 'Dao'),
(10, 'Gia-rai'),
(11, 'Ngái'),
(12, 'Ê-đê'),
(13, 'Ba-na'),
(14, 'Xơ-đăng'),
(15, 'Sán Chay'),
(16, 'Cơ-ho'),
(17, 'Chăm'),
(18, 'Sán Dìu'),
(19, 'Hrê'),
(20, 'Mnông'),
(21, 'Ra-glai'),
(22, 'Xtiêng'),
(23, 'Bru-Vân Kiều'),
(24, 'Thổ'),
(25, 'Giáy'),
(26, 'Cơ-tu'),
(27, 'Gié-Triêng'),
(28, 'Mạ'),
(29, 'Khơ-mú'),
(30, 'Co'),
(31, 'Ta-ôi'),
(32, 'Chơ-ro'),
(33, 'Kháng'),
(34, 'Xinh-mun'),
(35, 'Hà Nhì'),
(36, 'Chu-ru'),
(37, 'Lào'),
(38, 'La Chi'),
(39, 'La Ha'),
(40, 'Phù Lá'),
(41, 'La Hủ'),
(42, 'Lự'),
(43, 'Lô Lô'),
(44, 'Chứt'),
(45, 'Mảng'),
(46, 'Pà Thẻn'),
(47, 'Cơ Lao'),
(48, 'Cống'),
(49, 'Bố Y'),
(50, 'Si La'),
(51, 'Pu Péo'),
(52, 'Brâu'),
(53, 'Ơ Đu'),
(54, 'Rơ-măm');

-- --------------------------------------------------------

--
-- Table structure for table `dcsvn`
--

CREATE TABLE `dcsvn` (
  `MaTVDCS` int(11) NOT NULL,
  `MaNV` int(11) NOT NULL,
  `NgayGiaNhap` date NOT NULL,
  `ChucVu` varchar(40) NOT NULL,
  `NoiSinhHoat` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dcsvn`
--

INSERT INTO `dcsvn` (`MaTVDCS`, `MaNV`, `NgayGiaNhap`, `ChucVu`, `NoiSinhHoat`) VALUES
(7, 499, '3919-12-03', 'Dang Vien', 'Hutech B ACX'),
(15, 431, '1923-01-02', '2211', '1122'),
(16, 221, '1923-10-31', '22', '22wwwwwwwwwwwwwwwwww'),
(17, 432, '1923-10-03', '22', 'aaaaaaaaaaaaa'),
(18, 432, '1923-10-03', '22', 'aaaaaaaaaaaaa');

-- --------------------------------------------------------

--
-- Table structure for table `devvn_quanhuyen`
--

CREATE TABLE `devvn_quanhuyen` (
  `maqh` varchar(5) CHARACTER SET utf8 NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 NOT NULL,
  `type` varchar(30) CHARACTER SET utf8 NOT NULL,
  `matp` varchar(5) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `devvn_quanhuyen`
--

INSERT INTO `devvn_quanhuyen` (`maqh`, `name`, `type`, `matp`) VALUES
('001', 'Quận Ba Đình', 'Quận', '01'),
('002', 'Quận Hoàn Kiếm', 'Quận', '01'),
('003', 'Quận Tây Hồ', 'Quận', '01'),
('004', 'Quận Long Biên', 'Quận', '01'),
('005', 'Quận Cầu Giấy', 'Quận', '01'),
('006', 'Quận Đống Đa', 'Quận', '01'),
('007', 'Quận Hai Bà Trưng', 'Quận', '01'),
('008', 'Quận Hoàng Mai', 'Quận', '01'),
('009', 'Quận Thanh Xuân', 'Quận', '01'),
('016', 'Huyện Sóc Sơn', 'Huyện', '01'),
('017', 'Huyện Đông Anh', 'Huyện', '01'),
('018', 'Huyện Gia Lâm', 'Huyện', '01'),
('019', 'Quận Nam Từ Liêm', 'Quận', '01'),
('020', 'Huyện Thanh Trì', 'Huyện', '01'),
('021', 'Quận Bắc Từ Liêm', 'Quận', '01'),
('024', 'Thành phố Hà Giang', 'Thành phố', '02'),
('026', 'Huyện Đồng Văn', 'Huyện', '02'),
('027', 'Huyện Mèo Vạc', 'Huyện', '02'),
('028', 'Huyện Yên Minh', 'Huyện', '02'),
('029', 'Huyện Quản Bạ', 'Huyện', '02'),
('030', 'Huyện Vị Xuyên', 'Huyện', '02'),
('031', 'Huyện Bắc Mê', 'Huyện', '02'),
('032', 'Huyện Hoàng Su Phì', 'Huyện', '02'),
('033', 'Huyện Xín Mần', 'Huyện', '02'),
('034', 'Huyện Bắc Quang', 'Huyện', '02'),
('035', 'Huyện Quang Bình', 'Huyện', '02'),
('040', 'Thành phố Cao Bằng', 'Thành phố', '04'),
('042', 'Huyện Bảo Lâm', 'Huyện', '04'),
('043', 'Huyện Bảo Lạc', 'Huyện', '04'),
('044', 'Huyện Thông Nông', 'Huyện', '04'),
('045', 'Huyện Hà Quảng', 'Huyện', '04'),
('046', 'Huyện Trà Lĩnh', 'Huyện', '04'),
('047', 'Huyện Trùng Khánh', 'Huyện', '04'),
('048', 'Huyện Hạ Lang', 'Huyện', '04'),
('049', 'Huyện Quảng Uyên', 'Huyện', '04'),
('050', 'Huyện Phục Hoà', 'Huyện', '04'),
('051', 'Huyện Hoà An', 'Huyện', '04'),
('052', 'Huyện Nguyên Bình', 'Huyện', '04'),
('053', 'Huyện Thạch An', 'Huyện', '04'),
('058', 'Thành Phố Bắc Kạn', 'Thành phố', '06'),
('060', 'Huyện Pác Nặm', 'Huyện', '06'),
('061', 'Huyện Ba Bể', 'Huyện', '06'),
('062', 'Huyện Ngân Sơn', 'Huyện', '06'),
('063', 'Huyện Bạch Thông', 'Huyện', '06'),
('064', 'Huyện Chợ Đồn', 'Huyện', '06'),
('065', 'Huyện Chợ Mới', 'Huyện', '06'),
('066', 'Huyện Na Rì', 'Huyện', '06'),
('070', 'Thành phố Tuyên Quang', 'Thành phố', '08'),
('071', 'Huyện Lâm Bình', 'Huyện', '08'),
('072', 'Huyện Nà Hang', 'Huyện', '08'),
('073', 'Huyện Chiêm Hóa', 'Huyện', '08'),
('074', 'Huyện Hàm Yên', 'Huyện', '08'),
('075', 'Huyện Yên Sơn', 'Huyện', '08'),
('076', 'Huyện Sơn Dương', 'Huyện', '08'),
('080', 'Thành phố Lào Cai', 'Thành phố', '10'),
('082', 'Huyện Bát Xát', 'Huyện', '10'),
('083', 'Huyện Mường Khương', 'Huyện', '10'),
('084', 'Huyện Si Ma Cai', 'Huyện', '10'),
('085', 'Huyện Bắc Hà', 'Huyện', '10'),
('086', 'Huyện Bảo Thắng', 'Huyện', '10'),
('087', 'Huyện Bảo Yên', 'Huyện', '10'),
('088', 'Huyện Sa Pa', 'Huyện', '10'),
('089', 'Huyện Văn Bàn', 'Huyện', '10'),
('094', 'Thành phố Điện Biên Phủ', 'Thành phố', '11'),
('095', 'Thị Xã Mường Lay', 'Thị xã', '11'),
('096', 'Huyện Mường Nhé', 'Huyện', '11'),
('097', 'Huyện Mường Chà', 'Huyện', '11'),
('098', 'Huyện Tủa Chùa', 'Huyện', '11'),
('099', 'Huyện Tuần Giáo', 'Huyện', '11'),
('100', 'Huyện Điện Biên', 'Huyện', '11'),
('101', 'Huyện Điện Biên Đông', 'Huyện', '11'),
('102', 'Huyện Mường Ảng', 'Huyện', '11'),
('103', 'Huyện Nậm Pồ', 'Huyện', '11'),
('105', 'Thành phố Lai Châu', 'Thành phố', '12'),
('106', 'Huyện Tam Đường', 'Huyện', '12'),
('107', 'Huyện Mường Tè', 'Huyện', '12'),
('108', 'Huyện Sìn Hồ', 'Huyện', '12'),
('109', 'Huyện Phong Thổ', 'Huyện', '12'),
('110', 'Huyện Than Uyên', 'Huyện', '12'),
('111', 'Huyện Tân Uyên', 'Huyện', '12'),
('112', 'Huyện Nậm Nhùn', 'Huyện', '12'),
('116', 'Thành phố Sơn La', 'Thành phố', '14'),
('118', 'Huyện Quỳnh Nhai', 'Huyện', '14'),
('119', 'Huyện Thuận Châu', 'Huyện', '14'),
('120', 'Huyện Mường La', 'Huyện', '14'),
('121', 'Huyện Bắc Yên', 'Huyện', '14'),
('122', 'Huyện Phù Yên', 'Huyện', '14'),
('123', 'Huyện Mộc Châu', 'Huyện', '14'),
('124', 'Huyện Yên Châu', 'Huyện', '14'),
('125', 'Huyện Mai Sơn', 'Huyện', '14'),
('126', 'Huyện Sông Mã', 'Huyện', '14'),
('127', 'Huyện Sốp Cộp', 'Huyện', '14'),
('128', 'Huyện Vân Hồ', 'Huyện', '14'),
('132', 'Thành phố Yên Bái', 'Thành phố', '15'),
('133', 'Thị xã Nghĩa Lộ', 'Thị xã', '15'),
('135', 'Huyện Lục Yên', 'Huyện', '15'),
('136', 'Huyện Văn Yên', 'Huyện', '15'),
('137', 'Huyện Mù Căng Chải', 'Huyện', '15'),
('138', 'Huyện Trấn Yên', 'Huyện', '15'),
('139', 'Huyện Trạm Tấu', 'Huyện', '15'),
('140', 'Huyện Văn Chấn', 'Huyện', '15'),
('141', 'Huyện Yên Bình', 'Huyện', '15'),
('148', 'Thành phố Hòa Bình', 'Thành phố', '17'),
('150', 'Huyện Đà Bắc', 'Huyện', '17'),
('151', 'Huyện Kỳ Sơn', 'Huyện', '17'),
('152', 'Huyện Lương Sơn', 'Huyện', '17'),
('153', 'Huyện Kim Bôi', 'Huyện', '17'),
('154', 'Huyện Cao Phong', 'Huyện', '17'),
('155', 'Huyện Tân Lạc', 'Huyện', '17'),
('156', 'Huyện Mai Châu', 'Huyện', '17'),
('157', 'Huyện Lạc Sơn', 'Huyện', '17'),
('158', 'Huyện Yên Thủy', 'Huyện', '17'),
('159', 'Huyện Lạc Thủy', 'Huyện', '17'),
('164', 'Thành phố Thái Nguyên', 'Thành phố', '19'),
('165', 'Thành phố Sông Công', 'Thành phố', '19'),
('167', 'Huyện Định Hóa', 'Huyện', '19'),
('168', 'Huyện Phú Lương', 'Huyện', '19'),
('169', 'Huyện Đồng Hỷ', 'Huyện', '19'),
('170', 'Huyện Võ Nhai', 'Huyện', '19'),
('171', 'Huyện Đại Từ', 'Huyện', '19'),
('172', 'Thị xã Phổ Yên', 'Thị xã', '19'),
('173', 'Huyện Phú Bình', 'Huyện', '19'),
('178', 'Thành phố Lạng Sơn', 'Thành phố', '20'),
('180', 'Huyện Tràng Định', 'Huyện', '20'),
('181', 'Huyện Bình Gia', 'Huyện', '20'),
('182', 'Huyện Văn Lãng', 'Huyện', '20'),
('183', 'Huyện Cao Lộc', 'Huyện', '20'),
('184', 'Huyện Văn Quan', 'Huyện', '20'),
('185', 'Huyện Bắc Sơn', 'Huyện', '20'),
('186', 'Huyện Hữu Lũng', 'Huyện', '20'),
('187', 'Huyện Chi Lăng', 'Huyện', '20'),
('188', 'Huyện Lộc Bình', 'Huyện', '20'),
('189', 'Huyện Đình Lập', 'Huyện', '20'),
('193', 'Thành phố Hạ Long', 'Thành phố', '22'),
('194', 'Thành phố Móng Cái', 'Thành phố', '22'),
('195', 'Thành phố Cẩm Phả', 'Thành phố', '22'),
('196', 'Thành phố Uông Bí', 'Thành phố', '22'),
('198', 'Huyện Bình Liêu', 'Huyện', '22'),
('199', 'Huyện Tiên Yên', 'Huyện', '22'),
('200', 'Huyện Đầm Hà', 'Huyện', '22'),
('201', 'Huyện Hải Hà', 'Huyện', '22'),
('202', 'Huyện Ba Chẽ', 'Huyện', '22'),
('203', 'Huyện Vân Đồn', 'Huyện', '22'),
('204', 'Huyện Hoành Bồ', 'Huyện', '22'),
('205', 'Thị xã Đông Triều', 'Thị xã', '22'),
('206', 'Thị xã Quảng Yên', 'Thị xã', '22'),
('207', 'Huyện Cô Tô', 'Huyện', '22'),
('213', 'Thành phố Bắc Giang', 'Thành phố', '24'),
('215', 'Huyện Yên Thế', 'Huyện', '24'),
('216', 'Huyện Tân Yên', 'Huyện', '24'),
('217', 'Huyện Lạng Giang', 'Huyện', '24'),
('218', 'Huyện Lục Nam', 'Huyện', '24'),
('219', 'Huyện Lục Ngạn', 'Huyện', '24'),
('220', 'Huyện Sơn Động', 'Huyện', '24'),
('221', 'Huyện Yên Dũng', 'Huyện', '24'),
('222', 'Huyện Việt Yên', 'Huyện', '24'),
('223', 'Huyện Hiệp Hòa', 'Huyện', '24'),
('227', 'Thành phố Việt Trì', 'Thành phố', '25'),
('228', 'Thị xã Phú Thọ', 'Thị xã', '25'),
('230', 'Huyện Đoan Hùng', 'Huyện', '25'),
('231', 'Huyện Hạ Hoà', 'Huyện', '25'),
('232', 'Huyện Thanh Ba', 'Huyện', '25'),
('233', 'Huyện Phù Ninh', 'Huyện', '25'),
('234', 'Huyện Yên Lập', 'Huyện', '25'),
('235', 'Huyện Cẩm Khê', 'Huyện', '25'),
('236', 'Huyện Tam Nông', 'Huyện', '25'),
('237', 'Huyện Lâm Thao', 'Huyện', '25'),
('238', 'Huyện Thanh Sơn', 'Huyện', '25'),
('239', 'Huyện Thanh Thuỷ', 'Huyện', '25'),
('240', 'Huyện Tân Sơn', 'Huyện', '25'),
('243', 'Thành phố Vĩnh Yên', 'Thành phố', '26'),
('244', 'Thị xã Phúc Yên', 'Thị xã', '26'),
('246', 'Huyện Lập Thạch', 'Huyện', '26'),
('247', 'Huyện Tam Dương', 'Huyện', '26'),
('248', 'Huyện Tam Đảo', 'Huyện', '26'),
('249', 'Huyện Bình Xuyên', 'Huyện', '26'),
('250', 'Huyện Mê Linh', 'Huyện', '01'),
('251', 'Huyện Yên Lạc', 'Huyện', '26'),
('252', 'Huyện Vĩnh Tường', 'Huyện', '26'),
('253', 'Huyện Sông Lô', 'Huyện', '26'),
('256', 'Thành phố Bắc Ninh', 'Thành phố', '27'),
('258', 'Huyện Yên Phong', 'Huyện', '27'),
('259', 'Huyện Quế Võ', 'Huyện', '27'),
('260', 'Huyện Tiên Du', 'Huyện', '27'),
('261', 'Thị xã Từ Sơn', 'Thị xã', '27'),
('262', 'Huyện Thuận Thành', 'Huyện', '27'),
('263', 'Huyện Gia Bình', 'Huyện', '27'),
('264', 'Huyện Lương Tài', 'Huyện', '27'),
('268', 'Quận Hà Đông', 'Quận', '01'),
('269', 'Thị xã Sơn Tây', 'Thị xã', '01'),
('271', 'Huyện Ba Vì', 'Huyện', '01'),
('272', 'Huyện Phúc Thọ', 'Huyện', '01'),
('273', 'Huyện Đan Phượng', 'Huyện', '01'),
('274', 'Huyện Hoài Đức', 'Huyện', '01'),
('275', 'Huyện Quốc Oai', 'Huyện', '01'),
('276', 'Huyện Thạch Thất', 'Huyện', '01'),
('277', 'Huyện Chương Mỹ', 'Huyện', '01'),
('278', 'Huyện Thanh Oai', 'Huyện', '01'),
('279', 'Huyện Thường Tín', 'Huyện', '01'),
('280', 'Huyện Phú Xuyên', 'Huyện', '01'),
('281', 'Huyện Ứng Hòa', 'Huyện', '01'),
('282', 'Huyện Mỹ Đức', 'Huyện', '01'),
('288', 'Thành phố Hải Dương', 'Thành phố', '30'),
('290', 'Thị xã Chí Linh', 'Thị xã', '30'),
('291', 'Huyện Nam Sách', 'Huyện', '30'),
('292', 'Huyện Kinh Môn', 'Huyện', '30'),
('293', 'Huyện Kim Thành', 'Huyện', '30'),
('294', 'Huyện Thanh Hà', 'Huyện', '30'),
('295', 'Huyện Cẩm Giàng', 'Huyện', '30'),
('296', 'Huyện Bình Giang', 'Huyện', '30'),
('297', 'Huyện Gia Lộc', 'Huyện', '30'),
('298', 'Huyện Tứ Kỳ', 'Huyện', '30'),
('299', 'Huyện Ninh Giang', 'Huyện', '30'),
('300', 'Huyện Thanh Miện', 'Huyện', '30'),
('303', 'Quận Hồng Bàng', 'Quận', '31'),
('304', 'Quận Ngô Quyền', 'Quận', '31'),
('305', 'Quận Lê Chân', 'Quận', '31'),
('306', 'Quận Hải An', 'Quận', '31'),
('307', 'Quận Kiến An', 'Quận', '31'),
('308', 'Quận Đồ Sơn', 'Quận', '31'),
('309', 'Quận Dương Kinh', 'Quận', '31'),
('311', 'Huyện Thuỷ Nguyên', 'Huyện', '31'),
('312', 'Huyện An Dương', 'Huyện', '31'),
('313', 'Huyện An Lão', 'Huyện', '31'),
('314', 'Huyện Kiến Thuỵ', 'Huyện', '31'),
('315', 'Huyện Tiên Lãng', 'Huyện', '31'),
('316', 'Huyện Vĩnh Bảo', 'Huyện', '31'),
('317', 'Huyện Cát Hải', 'Huyện', '31'),
('318', 'Huyện Bạch Long Vĩ', 'Huyện', '31'),
('323', 'Thành phố Hưng Yên', 'Thành phố', '33'),
('325', 'Huyện Văn Lâm', 'Huyện', '33'),
('326', 'Huyện Văn Giang', 'Huyện', '33'),
('327', 'Huyện Yên Mỹ', 'Huyện', '33'),
('328', 'Huyện Mỹ Hào', 'Huyện', '33'),
('329', 'Huyện Ân Thi', 'Huyện', '33'),
('330', 'Huyện Khoái Châu', 'Huyện', '33'),
('331', 'Huyện Kim Động', 'Huyện', '33'),
('332', 'Huyện Tiên Lữ', 'Huyện', '33'),
('333', 'Huyện Phù Cừ', 'Huyện', '33'),
('336', 'Thành phố Thái Bình', 'Thành phố', '34'),
('338', 'Huyện Quỳnh Phụ', 'Huyện', '34'),
('339', 'Huyện Hưng Hà', 'Huyện', '34'),
('340', 'Huyện Đông Hưng', 'Huyện', '34'),
('341', 'Huyện Thái Thụy', 'Huyện', '34'),
('342', 'Huyện Tiền Hải', 'Huyện', '34'),
('343', 'Huyện Kiến Xương', 'Huyện', '34'),
('344', 'Huyện Vũ Thư', 'Huyện', '34'),
('347', 'Thành phố Phủ Lý', 'Thành phố', '35'),
('349', 'Huyện Duy Tiên', 'Huyện', '35'),
('350', 'Huyện Kim Bảng', 'Huyện', '35'),
('351', 'Huyện Thanh Liêm', 'Huyện', '35'),
('352', 'Huyện Bình Lục', 'Huyện', '35'),
('353', 'Huyện Lý Nhân', 'Huyện', '35'),
('356', 'Thành phố Nam Định', 'Thành phố', '36'),
('358', 'Huyện Mỹ Lộc', 'Huyện', '36'),
('359', 'Huyện Vụ Bản', 'Huyện', '36'),
('360', 'Huyện Ý Yên', 'Huyện', '36'),
('361', 'Huyện Nghĩa Hưng', 'Huyện', '36'),
('362', 'Huyện Nam Trực', 'Huyện', '36'),
('363', 'Huyện Trực Ninh', 'Huyện', '36'),
('364', 'Huyện Xuân Trường', 'Huyện', '36'),
('365', 'Huyện Giao Thủy', 'Huyện', '36'),
('366', 'Huyện Hải Hậu', 'Huyện', '36'),
('369', 'Thành phố Ninh Bình', 'Thành phố', '37'),
('370', 'Thành phố Tam Điệp', 'Thành phố', '37'),
('372', 'Huyện Nho Quan', 'Huyện', '37'),
('373', 'Huyện Gia Viễn', 'Huyện', '37'),
('374', 'Huyện Hoa Lư', 'Huyện', '37'),
('375', 'Huyện Yên Khánh', 'Huyện', '37'),
('376', 'Huyện Kim Sơn', 'Huyện', '37'),
('377', 'Huyện Yên Mô', 'Huyện', '37'),
('380', 'Thành phố Thanh Hóa', 'Thành phố', '38'),
('381', 'Thị xã Bỉm Sơn', 'Thị xã', '38'),
('382', 'Thị xã Sầm Sơn', 'Thị xã', '38'),
('384', 'Huyện Mường Lát', 'Huyện', '38'),
('385', 'Huyện Quan Hóa', 'Huyện', '38'),
('386', 'Huyện Bá Thước', 'Huyện', '38'),
('387', 'Huyện Quan Sơn', 'Huyện', '38'),
('388', 'Huyện Lang Chánh', 'Huyện', '38'),
('389', 'Huyện Ngọc Lặc', 'Huyện', '38'),
('390', 'Huyện Cẩm Thủy', 'Huyện', '38'),
('391', 'Huyện Thạch Thành', 'Huyện', '38'),
('392', 'Huyện Hà Trung', 'Huyện', '38'),
('393', 'Huyện Vĩnh Lộc', 'Huyện', '38'),
('394', 'Huyện Yên Định', 'Huyện', '38'),
('395', 'Huyện Thọ Xuân', 'Huyện', '38'),
('396', 'Huyện Thường Xuân', 'Huyện', '38'),
('397', 'Huyện Triệu Sơn', 'Huyện', '38'),
('398', 'Huyện Thiệu Hóa', 'Huyện', '38'),
('399', 'Huyện Hoằng Hóa', 'Huyện', '38'),
('400', 'Huyện Hậu Lộc', 'Huyện', '38'),
('401', 'Huyện Nga Sơn', 'Huyện', '38'),
('402', 'Huyện Như Xuân', 'Huyện', '38'),
('403', 'Huyện Như Thanh', 'Huyện', '38'),
('404', 'Huyện Nông Cống', 'Huyện', '38'),
('405', 'Huyện Đông Sơn', 'Huyện', '38'),
('406', 'Huyện Quảng Xương', 'Huyện', '38'),
('407', 'Huyện Tĩnh Gia', 'Huyện', '38'),
('412', 'Thành phố Vinh', 'Thành phố', '40'),
('413', 'Thị xã Cửa Lò', 'Thị xã', '40'),
('414', 'Thị xã Thái Hoà', 'Thị xã', '40'),
('415', 'Huyện Quế Phong', 'Huyện', '40'),
('416', 'Huyện Quỳ Châu', 'Huyện', '40'),
('417', 'Huyện Kỳ Sơn', 'Huyện', '40'),
('418', 'Huyện Tương Dương', 'Huyện', '40'),
('419', 'Huyện Nghĩa Đàn', 'Huyện', '40'),
('420', 'Huyện Quỳ Hợp', 'Huyện', '40'),
('421', 'Huyện Quỳnh Lưu', 'Huyện', '40'),
('422', 'Huyện Con Cuông', 'Huyện', '40'),
('423', 'Huyện Tân Kỳ', 'Huyện', '40'),
('424', 'Huyện Anh Sơn', 'Huyện', '40'),
('425', 'Huyện Diễn Châu', 'Huyện', '40'),
('426', 'Huyện Yên Thành', 'Huyện', '40'),
('427', 'Huyện Đô Lương', 'Huyện', '40'),
('428', 'Huyện Thanh Chương', 'Huyện', '40'),
('429', 'Huyện Nghi Lộc', 'Huyện', '40'),
('430', 'Huyện Nam Đàn', 'Huyện', '40'),
('431', 'Huyện Hưng Nguyên', 'Huyện', '40'),
('432', 'Thị xã Hoàng Mai', 'Thị xã', '40'),
('436', 'Thành phố Hà Tĩnh', 'Thành phố', '42'),
('437', 'Thị xã Hồng Lĩnh', 'Thị xã', '42'),
('439', 'Huyện Hương Sơn', 'Huyện', '42'),
('440', 'Huyện Đức Thọ', 'Huyện', '42'),
('441', 'Huyện Vũ Quang', 'Huyện', '42'),
('442', 'Huyện Nghi Xuân', 'Huyện', '42'),
('443', 'Huyện Can Lộc', 'Huyện', '42'),
('444', 'Huyện Hương Khê', 'Huyện', '42'),
('445', 'Huyện Thạch Hà', 'Huyện', '42'),
('446', 'Huyện Cẩm Xuyên', 'Huyện', '42'),
('447', 'Huyện Kỳ Anh', 'Huyện', '42'),
('448', 'Huyện Lộc Hà', 'Huyện', '42'),
('449', 'Thị xã Kỳ Anh', 'Thị xã', '42'),
('450', 'Thành Phố Đồng Hới', 'Thành phố', '44'),
('452', 'Huyện Minh Hóa', 'Huyện', '44'),
('453', 'Huyện Tuyên Hóa', 'Huyện', '44'),
('454', 'Huyện Quảng Trạch', 'Thị xã', '44'),
('455', 'Huyện Bố Trạch', 'Huyện', '44'),
('456', 'Huyện Quảng Ninh', 'Huyện', '44'),
('457', 'Huyện Lệ Thủy', 'Huyện', '44'),
('458', 'Thị xã Ba Đồn', 'Huyện', '44'),
('461', 'Thành phố Đông Hà', 'Thành phố', '45'),
('462', 'Thị xã Quảng Trị', 'Thị xã', '45'),
('464', 'Huyện Vĩnh Linh', 'Huyện', '45'),
('465', 'Huyện Hướng Hóa', 'Huyện', '45'),
('466', 'Huyện Gio Linh', 'Huyện', '45'),
('467', 'Huyện Đa Krông', 'Huyện', '45'),
('468', 'Huyện Cam Lộ', 'Huyện', '45'),
('469', 'Huyện Triệu Phong', 'Huyện', '45'),
('470', 'Huyện Hải Lăng', 'Huyện', '45'),
('471', 'Huyện Cồn Cỏ', 'Huyện', '45'),
('474', 'Thành phố Huế', 'Thành phố', '46'),
('476', 'Huyện Phong Điền', 'Huyện', '46'),
('477', 'Huyện Quảng Điền', 'Huyện', '46'),
('478', 'Huyện Phú Vang', 'Huyện', '46'),
('479', 'Thị xã Hương Thủy', 'Thị xã', '46'),
('480', 'Thị xã Hương Trà', 'Thị xã', '46'),
('481', 'Huyện A Lưới', 'Huyện', '46'),
('482', 'Huyện Phú Lộc', 'Huyện', '46'),
('483', 'Huyện Nam Đông', 'Huyện', '46'),
('490', 'Quận Liên Chiểu', 'Quận', '48'),
('491', 'Quận Thanh Khê', 'Quận', '48'),
('492', 'Quận Hải Châu', 'Quận', '48'),
('493', 'Quận Sơn Trà', 'Quận', '48'),
('494', 'Quận Ngũ Hành Sơn', 'Quận', '48'),
('495', 'Quận Cẩm Lệ', 'Quận', '48'),
('497', 'Huyện Hòa Vang', 'Huyện', '48'),
('498', 'Huyện Hoàng Sa', 'Huyện', '48'),
('502', 'Thành phố Tam Kỳ', 'Thành phố', '49'),
('503', 'Thành phố Hội An', 'Thành phố', '49'),
('504', 'Huyện Tây Giang', 'Huyện', '49'),
('505', 'Huyện Đông Giang', 'Huyện', '49'),
('506', 'Huyện Đại Lộc', 'Huyện', '49'),
('507', 'Thị xã Điện Bàn', 'Thị xã', '49'),
('508', 'Huyện Duy Xuyên', 'Huyện', '49'),
('509', 'Huyện Quế Sơn', 'Huyện', '49'),
('510', 'Huyện Nam Giang', 'Huyện', '49'),
('511', 'Huyện Phước Sơn', 'Huyện', '49'),
('512', 'Huyện Hiệp Đức', 'Huyện', '49'),
('513', 'Huyện Thăng Bình', 'Huyện', '49'),
('514', 'Huyện Tiên Phước', 'Huyện', '49'),
('515', 'Huyện Bắc Trà My', 'Huyện', '49'),
('516', 'Huyện Nam Trà My', 'Huyện', '49'),
('517', 'Huyện Núi Thành', 'Huyện', '49'),
('518', 'Huyện Phú Ninh', 'Huyện', '49'),
('519', 'Huyện Nông Sơn', 'Huyện', '49'),
('522', 'Thành phố Quảng Ngãi', 'Thành phố', '51'),
('524', 'Huyện Bình Sơn', 'Huyện', '51'),
('525', 'Huyện Trà Bồng', 'Huyện', '51'),
('526', 'Huyện Tây Trà', 'Huyện', '51'),
('527', 'Huyện Sơn Tịnh', 'Huyện', '51'),
('528', 'Huyện Tư Nghĩa', 'Huyện', '51'),
('529', 'Huyện Sơn Hà', 'Huyện', '51'),
('530', 'Huyện Sơn Tây', 'Huyện', '51'),
('531', 'Huyện Minh Long', 'Huyện', '51'),
('532', 'Huyện Nghĩa Hành', 'Huyện', '51'),
('533', 'Huyện Mộ Đức', 'Huyện', '51'),
('534', 'Huyện Đức Phổ', 'Huyện', '51'),
('535', 'Huyện Ba Tơ', 'Huyện', '51'),
('536', 'Huyện Lý Sơn', 'Huyện', '51'),
('540', 'Thành phố Qui Nhơn', 'Thành phố', '52'),
('542', 'Huyện An Lão', 'Huyện', '52'),
('543', 'Huyện Hoài Nhơn', 'Huyện', '52'),
('544', 'Huyện Hoài Ân', 'Huyện', '52'),
('545', 'Huyện Phù Mỹ', 'Huyện', '52'),
('546', 'Huyện Vĩnh Thạnh', 'Huyện', '52'),
('547', 'Huyện Tây Sơn', 'Huyện', '52'),
('548', 'Huyện Phù Cát', 'Huyện', '52'),
('549', 'Thị xã An Nhơn', 'Thị xã', '52'),
('550', 'Huyện Tuy Phước', 'Huyện', '52'),
('551', 'Huyện Vân Canh', 'Huyện', '52'),
('555', 'Thành phố Tuy Hoà', 'Thành phố', '54'),
('557', 'Thị xã Sông Cầu', 'Thị xã', '54'),
('558', 'Huyện Đồng Xuân', 'Huyện', '54'),
('559', 'Huyện Tuy An', 'Huyện', '54'),
('560', 'Huyện Sơn Hòa', 'Huyện', '54'),
('561', 'Huyện Sông Hinh', 'Huyện', '54'),
('562', 'Huyện Tây Hoà', 'Huyện', '54'),
('563', 'Huyện Phú Hoà', 'Huyện', '54'),
('564', 'Huyện Đông Hòa', 'Huyện', '54'),
('568', 'Thành phố Nha Trang', 'Thành phố', '56'),
('569', 'Thành phố Cam Ranh', 'Thành phố', '56'),
('570', 'Huyện Cam Lâm', 'Huyện', '56'),
('571', 'Huyện Vạn Ninh', 'Huyện', '56'),
('572', 'Thị xã Ninh Hòa', 'Thị xã', '56'),
('573', 'Huyện Khánh Vĩnh', 'Huyện', '56'),
('574', 'Huyện Diên Khánh', 'Huyện', '56'),
('575', 'Huyện Khánh Sơn', 'Huyện', '56'),
('576', 'Huyện Trường Sa', 'Huyện', '56'),
('582', 'Thành phố Phan Rang-Tháp Chàm', 'Thành phố', '58'),
('584', 'Huyện Bác Ái', 'Huyện', '58'),
('585', 'Huyện Ninh Sơn', 'Huyện', '58'),
('586', 'Huyện Ninh Hải', 'Huyện', '58'),
('587', 'Huyện Ninh Phước', 'Huyện', '58'),
('588', 'Huyện Thuận Bắc', 'Huyện', '58'),
('589', 'Huyện Thuận Nam', 'Huyện', '58'),
('593', 'Thành phố Phan Thiết', 'Thành phố', '60'),
('594', 'Thị xã La Gi', 'Thị xã', '60'),
('595', 'Huyện Tuy Phong', 'Huyện', '60'),
('596', 'Huyện Bắc Bình', 'Huyện', '60'),
('597', 'Huyện Hàm Thuận Bắc', 'Huyện', '60'),
('598', 'Huyện Hàm Thuận Nam', 'Huyện', '60'),
('599', 'Huyện Tánh Linh', 'Huyện', '60'),
('600', 'Huyện Đức Linh', 'Huyện', '60'),
('601', 'Huyện Hàm Tân', 'Huyện', '60'),
('602', 'Huyện Phú Quí', 'Huyện', '60'),
('608', 'Thành phố Kon Tum', 'Thành phố', '62'),
('610', 'Huyện Đắk Glei', 'Huyện', '62'),
('611', 'Huyện Ngọc Hồi', 'Huyện', '62'),
('612', 'Huyện Đắk Tô', 'Huyện', '62'),
('613', 'Huyện Kon Plông', 'Huyện', '62'),
('614', 'Huyện Kon Rẫy', 'Huyện', '62'),
('615', 'Huyện Đắk Hà', 'Huyện', '62'),
('616', 'Huyện Sa Thầy', 'Huyện', '62'),
('617', 'Huyện Tu Mơ Rông', 'Huyện', '62'),
('618', 'Huyện Ia H\' Drai', 'Huyện', '62'),
('622', 'Thành phố Pleiku', 'Thành phố', '64'),
('623', 'Thị xã An Khê', 'Thị xã', '64'),
('624', 'Thị xã Ayun Pa', 'Thị xã', '64'),
('625', 'Huyện KBang', 'Huyện', '64'),
('626', 'Huyện Đăk Đoa', 'Huyện', '64'),
('627', 'Huyện Chư Păh', 'Huyện', '64'),
('628', 'Huyện Ia Grai', 'Huyện', '64'),
('629', 'Huyện Mang Yang', 'Huyện', '64'),
('630', 'Huyện Kông Chro', 'Huyện', '64'),
('631', 'Huyện Đức Cơ', 'Huyện', '64'),
('632', 'Huyện Chư Prông', 'Huyện', '64'),
('633', 'Huyện Chư Sê', 'Huyện', '64'),
('634', 'Huyện Đăk Pơ', 'Huyện', '64'),
('635', 'Huyện Ia Pa', 'Huyện', '64'),
('637', 'Huyện Krông Pa', 'Huyện', '64'),
('638', 'Huyện Phú Thiện', 'Huyện', '64'),
('639', 'Huyện Chư Pưh', 'Huyện', '64'),
('643', 'Thành phố Buôn Ma Thuột', 'Thành phố', '66'),
('644', 'Thị Xã Buôn Hồ', 'Thị xã', '66'),
('645', 'Huyện Ea H\'leo', 'Huyện', '66'),
('646', 'Huyện Ea Súp', 'Huyện', '66'),
('647', 'Huyện Buôn Đôn', 'Huyện', '66'),
('648', 'Huyện Cư M\'gar', 'Huyện', '66'),
('649', 'Huyện Krông Búk', 'Huyện', '66'),
('650', 'Huyện Krông Năng', 'Huyện', '66'),
('651', 'Huyện Ea Kar', 'Huyện', '66'),
('652', 'Huyện M\'Đrắk', 'Huyện', '66'),
('653', 'Huyện Krông Bông', 'Huyện', '66'),
('654', 'Huyện Krông Pắc', 'Huyện', '66'),
('655', 'Huyện Krông A Na', 'Huyện', '66'),
('656', 'Huyện Lắk', 'Huyện', '66'),
('657', 'Huyện Cư Kuin', 'Huyện', '66'),
('660', 'Thị xã Gia Nghĩa', 'Thị xã', '67'),
('661', 'Huyện Đăk Glong', 'Huyện', '67'),
('662', 'Huyện Cư Jút', 'Huyện', '67'),
('663', 'Huyện Đắk Mil', 'Huyện', '67'),
('664', 'Huyện Krông Nô', 'Huyện', '67'),
('665', 'Huyện Đắk Song', 'Huyện', '67'),
('666', 'Huyện Đắk R\'Lấp', 'Huyện', '67'),
('667', 'Huyện Tuy Đức', 'Huyện', '67'),
('672', 'Thành phố Đà Lạt', 'Thành phố', '68'),
('673', 'Thành phố Bảo Lộc', 'Thành phố', '68'),
('674', 'Huyện Đam Rông', 'Huyện', '68'),
('675', 'Huyện Lạc Dương', 'Huyện', '68'),
('676', 'Huyện Lâm Hà', 'Huyện', '68'),
('677', 'Huyện Đơn Dương', 'Huyện', '68'),
('678', 'Huyện Đức Trọng', 'Huyện', '68'),
('679', 'Huyện Di Linh', 'Huyện', '68'),
('680', 'Huyện Bảo Lâm', 'Huyện', '68'),
('681', 'Huyện Đạ Huoai', 'Huyện', '68'),
('682', 'Huyện Đạ Tẻh', 'Huyện', '68'),
('683', 'Huyện Cát Tiên', 'Huyện', '68'),
('688', 'Thị xã Phước Long', 'Thị xã', '70'),
('689', 'Thị xã Đồng Xoài', 'Thị xã', '70'),
('690', 'Thị xã Bình Long', 'Thị xã', '70'),
('691', 'Huyện Bù Gia Mập', 'Huyện', '70'),
('692', 'Huyện Lộc Ninh', 'Huyện', '70'),
('693', 'Huyện Bù Đốp', 'Huyện', '70'),
('694', 'Huyện Hớn Quản', 'Huyện', '70'),
('695', 'Huyện Đồng Phú', 'Huyện', '70'),
('696', 'Huyện Bù Đăng', 'Huyện', '70'),
('697', 'Huyện Chơn Thành', 'Huyện', '70'),
('698', 'Huyện Phú Riềng', 'Huyện', '70'),
('703', 'Thành phố Tây Ninh', 'Thành phố', '72'),
('705', 'Huyện Tân Biên', 'Huyện', '72'),
('706', 'Huyện Tân Châu', 'Huyện', '72'),
('707', 'Huyện Dương Minh Châu', 'Huyện', '72'),
('708', 'Huyện Châu Thành', 'Huyện', '72'),
('709', 'Huyện Hòa Thành', 'Huyện', '72'),
('710', 'Huyện Gò Dầu', 'Huyện', '72'),
('711', 'Huyện Bến Cầu', 'Huyện', '72'),
('712', 'Huyện Trảng Bàng', 'Huyện', '72'),
('718', 'Thành phố Thủ Dầu Một', 'Thành phố', '74'),
('719', 'Huyện Bàu Bàng', 'Huyện', '74'),
('720', 'Huyện Dầu Tiếng', 'Huyện', '74'),
('721', 'Thị xã Bến Cát', 'Thị xã', '74'),
('722', 'Huyện Phú Giáo', 'Huyện', '74'),
('723', 'Thị xã Tân Uyên', 'Thị xã', '74'),
('724', 'Thị xã Dĩ An', 'Thị xã', '74'),
('725', 'Thị xã Thuận An', 'Thị xã', '74'),
('726', 'Huyện Bắc Tân Uyên', 'Huyện', '74'),
('731', 'Thành phố Biên Hòa', 'Thành phố', '75'),
('732', 'Thị xã Long Khánh', 'Thị xã', '75'),
('734', 'Huyện Tân Phú', 'Huyện', '75'),
('735', 'Huyện Vĩnh Cửu', 'Huyện', '75'),
('736', 'Huyện Định Quán', 'Huyện', '75'),
('737', 'Huyện Trảng Bom', 'Huyện', '75'),
('738', 'Huyện Thống Nhất', 'Huyện', '75'),
('739', 'Huyện Cẩm Mỹ', 'Huyện', '75'),
('740', 'Huyện Long Thành', 'Huyện', '75'),
('741', 'Huyện Xuân Lộc', 'Huyện', '75'),
('742', 'Huyện Nhơn Trạch', 'Huyện', '75'),
('747', 'Thành phố Vũng Tàu', 'Thành phố', '77'),
('748', 'Thành phố Bà Rịa', 'Thành phố', '77'),
('750', 'Huyện Châu Đức', 'Huyện', '77'),
('751', 'Huyện Xuyên Mộc', 'Huyện', '77'),
('752', 'Huyện Long Điền', 'Huyện', '77'),
('753', 'Huyện Đất Đỏ', 'Huyện', '77'),
('754', 'Huyện Tân Thành', 'Huyện', '77'),
('755', 'Huyện Côn Đảo', 'Huyện', '77'),
('760', 'Quận 1', 'Quận', '79'),
('761', 'Quận 12', 'Quận', '79'),
('762', 'Quận Thủ Đức', 'Quận', '79'),
('763', 'Quận 9', 'Quận', '79'),
('764', 'Quận Gò Vấp', 'Quận', '79'),
('765', 'Quận Bình Thạnh', 'Quận', '79'),
('766', 'Quận Tân Bình', 'Quận', '79'),
('767', 'Quận Tân Phú', 'Quận', '79'),
('768', 'Quận Phú Nhuận', 'Quận', '79'),
('769', 'Quận 2', 'Quận', '79'),
('770', 'Quận 3', 'Quận', '79'),
('771', 'Quận 10', 'Quận', '79'),
('772', 'Quận 11', 'Quận', '79'),
('773', 'Quận 4', 'Quận', '79'),
('774', 'Quận 5', 'Quận', '79'),
('775', 'Quận 6', 'Quận', '79'),
('776', 'Quận 8', 'Quận', '79'),
('777', 'Quận Bình Tân', 'Quận', '79'),
('778', 'Quận 7', 'Quận', '79'),
('783', 'Huyện Củ Chi', 'Huyện', '79'),
('784', 'Huyện Hóc Môn', 'Huyện', '79'),
('785', 'Huyện Bình Chánh', 'Huyện', '79'),
('786', 'Huyện Nhà Bè', 'Huyện', '79'),
('787', 'Huyện Cần Giờ', 'Huyện', '79'),
('794', 'Thành phố Tân An', 'Thành phố', '80'),
('795', 'Thị xã Kiến Tường', 'Thị xã', '80'),
('796', 'Huyện Tân Hưng', 'Huyện', '80'),
('797', 'Huyện Vĩnh Hưng', 'Huyện', '80'),
('798', 'Huyện Mộc Hóa', 'Huyện', '80'),
('799', 'Huyện Tân Thạnh', 'Huyện', '80'),
('800', 'Huyện Thạnh Hóa', 'Huyện', '80'),
('801', 'Huyện Đức Huệ', 'Huyện', '80'),
('802', 'Huyện Đức Hòa', 'Huyện', '80'),
('803', 'Huyện Bến Lức', 'Huyện', '80'),
('804', 'Huyện Thủ Thừa', 'Huyện', '80'),
('805', 'Huyện Tân Trụ', 'Huyện', '80'),
('806', 'Huyện Cần Đước', 'Huyện', '80'),
('807', 'Huyện Cần Giuộc', 'Huyện', '80'),
('808', 'Huyện Châu Thành', 'Huyện', '80'),
('815', 'Thành phố Mỹ Tho', 'Thành phố', '82'),
('816', 'Thị xã Gò Công', 'Thị xã', '82'),
('817', 'Thị xã Cai Lậy', 'Huyện', '82'),
('818', 'Huyện Tân Phước', 'Huyện', '82'),
('819', 'Huyện Cái Bè', 'Huyện', '82'),
('820', 'Huyện Cai Lậy', 'Thị xã', '82'),
('821', 'Huyện Châu Thành', 'Huyện', '82'),
('822', 'Huyện Chợ Gạo', 'Huyện', '82'),
('823', 'Huyện Gò Công Tây', 'Huyện', '82'),
('824', 'Huyện Gò Công Đông', 'Huyện', '82'),
('825', 'Huyện Tân Phú Đông', 'Huyện', '82'),
('829', 'Thành phố Bến Tre', 'Thành phố', '83'),
('831', 'Huyện Châu Thành', 'Huyện', '83'),
('832', 'Huyện Chợ Lách', 'Huyện', '83'),
('833', 'Huyện Mỏ Cày Nam', 'Huyện', '83'),
('834', 'Huyện Giồng Trôm', 'Huyện', '83'),
('835', 'Huyện Bình Đại', 'Huyện', '83'),
('836', 'Huyện Ba Tri', 'Huyện', '83'),
('837', 'Huyện Thạnh Phú', 'Huyện', '83'),
('838', 'Huyện Mỏ Cày Bắc', 'Huyện', '83'),
('842', 'Thành phố Trà Vinh', 'Thành phố', '84'),
('844', 'Huyện Càng Long', 'Huyện', '84'),
('845', 'Huyện Cầu Kè', 'Huyện', '84'),
('846', 'Huyện Tiểu Cần', 'Huyện', '84'),
('847', 'Huyện Châu Thành', 'Huyện', '84'),
('848', 'Huyện Cầu Ngang', 'Huyện', '84'),
('849', 'Huyện Trà Cú', 'Huyện', '84'),
('850', 'Huyện Duyên Hải', 'Huyện', '84'),
('851', 'Thị xã Duyên Hải', 'Thị xã', '84'),
('855', 'Thành phố Vĩnh Long', 'Thành phố', '86'),
('857', 'Huyện Long Hồ', 'Huyện', '86'),
('858', 'Huyện Mang Thít', 'Huyện', '86'),
('859', 'Huyện  Vũng Liêm', 'Huyện', '86'),
('860', 'Huyện Tam Bình', 'Huyện', '86'),
('861', 'Thị xã Bình Minh', 'Thị xã', '86'),
('862', 'Huyện Trà Ôn', 'Huyện', '86'),
('863', 'Huyện Bình Tân', 'Huyện', '86'),
('866', 'Thành phố Cao Lãnh', 'Thành phố', '87'),
('867', 'Thành phố Sa Đéc', 'Thành phố', '87'),
('868', 'Thị xã Hồng Ngự', 'Thị xã', '87'),
('869', 'Huyện Tân Hồng', 'Huyện', '87'),
('870', 'Huyện Hồng Ngự', 'Huyện', '87'),
('871', 'Huyện Tam Nông', 'Huyện', '87'),
('872', 'Huyện Tháp Mười', 'Huyện', '87'),
('873', 'Huyện Cao Lãnh', 'Huyện', '87'),
('874', 'Huyện Thanh Bình', 'Huyện', '87'),
('875', 'Huyện Lấp Vò', 'Huyện', '87'),
('876', 'Huyện Lai Vung', 'Huyện', '87'),
('877', 'Huyện Châu Thành', 'Huyện', '87'),
('883', 'Thành phố Long Xuyên', 'Thành phố', '89'),
('884', 'Thành phố Châu Đốc', 'Thành phố', '89'),
('886', 'Huyện An Phú', 'Huyện', '89'),
('887', 'Thị xã Tân Châu', 'Thị xã', '89'),
('888', 'Huyện Phú Tân', 'Huyện', '89'),
('889', 'Huyện Châu Phú', 'Huyện', '89'),
('890', 'Huyện Tịnh Biên', 'Huyện', '89'),
('891', 'Huyện Tri Tôn', 'Huyện', '89'),
('892', 'Huyện Châu Thành', 'Huyện', '89'),
('893', 'Huyện Chợ Mới', 'Huyện', '89'),
('894', 'Huyện Thoại Sơn', 'Huyện', '89'),
('899', 'Thành phố Rạch Giá', 'Thành phố', '91'),
('900', 'Thị xã Hà Tiên', 'Thị xã', '91'),
('902', 'Huyện Kiên Lương', 'Huyện', '91'),
('903', 'Huyện Hòn Đất', 'Huyện', '91'),
('904', 'Huyện Tân Hiệp', 'Huyện', '91'),
('905', 'Huyện Châu Thành', 'Huyện', '91'),
('906', 'Huyện Giồng Riềng', 'Huyện', '91'),
('907', 'Huyện Gò Quao', 'Huyện', '91'),
('908', 'Huyện An Biên', 'Huyện', '91'),
('909', 'Huyện An Minh', 'Huyện', '91'),
('910', 'Huyện Vĩnh Thuận', 'Huyện', '91'),
('911', 'Huyện Phú Quốc', 'Huyện', '91'),
('912', 'Huyện Kiên Hải', 'Huyện', '91'),
('913', 'Huyện U Minh Thượng', 'Huyện', '91'),
('914', 'Huyện Giang Thành', 'Huyện', '91'),
('916', 'Quận Ninh Kiều', 'Quận', '92'),
('917', 'Quận Ô Môn', 'Quận', '92'),
('918', 'Quận Bình Thuỷ', 'Quận', '92'),
('919', 'Quận Cái Răng', 'Quận', '92'),
('923', 'Quận Thốt Nốt', 'Quận', '92'),
('924', 'Huyện Vĩnh Thạnh', 'Huyện', '92'),
('925', 'Huyện Cờ Đỏ', 'Huyện', '92'),
('926', 'Huyện Phong Điền', 'Huyện', '92'),
('927', 'Huyện Thới Lai', 'Huyện', '92'),
('930', 'Thành phố Vị Thanh', 'Thành phố', '93'),
('931', 'Thị xã Ngã Bảy', 'Thị xã', '93'),
('932', 'Huyện Châu Thành A', 'Huyện', '93'),
('933', 'Huyện Châu Thành', 'Huyện', '93'),
('934', 'Huyện Phụng Hiệp', 'Huyện', '93'),
('935', 'Huyện Vị Thuỷ', 'Huyện', '93'),
('936', 'Huyện Long Mỹ', 'Huyện', '93'),
('937', 'Thị xã Long Mỹ', 'Thị xã', '93'),
('941', 'Thành phố Sóc Trăng', 'Thành phố', '94'),
('942', 'Huyện Châu Thành', 'Huyện', '94'),
('943', 'Huyện Kế Sách', 'Huyện', '94'),
('944', 'Huyện Mỹ Tú', 'Huyện', '94'),
('945', 'Huyện Cù Lao Dung', 'Huyện', '94'),
('946', 'Huyện Long Phú', 'Huyện', '94'),
('947', 'Huyện Mỹ Xuyên', 'Huyện', '94'),
('948', 'Thị xã Ngã Năm', 'Thị xã', '94'),
('949', 'Huyện Thạnh Trị', 'Huyện', '94'),
('950', 'Thị xã Vĩnh Châu', 'Thị xã', '94'),
('951', 'Huyện Trần Đề', 'Huyện', '94'),
('954', 'Thành phố Bạc Liêu', 'Thành phố', '95'),
('956', 'Huyện Hồng Dân', 'Huyện', '95'),
('957', 'Huyện Phước Long', 'Huyện', '95'),
('958', 'Huyện Vĩnh Lợi', 'Huyện', '95'),
('959', 'Thị xã Giá Rai', 'Thị xã', '95'),
('960', 'Huyện Đông Hải', 'Huyện', '95'),
('961', 'Huyện Hoà Bình', 'Huyện', '95'),
('964', 'Thành phố Cà Mau', 'Thành phố', '96'),
('966', 'Huyện U Minh', 'Huyện', '96'),
('967', 'Huyện Thới Bình', 'Huyện', '96'),
('968', 'Huyện Trần Văn Thời', 'Huyện', '96'),
('969', 'Huyện Cái Nước', 'Huyện', '96'),
('970', 'Huyện Đầm Dơi', 'Huyện', '96'),
('971', 'Huyện Năm Căn', 'Huyện', '96'),
('972', 'Huyện Phú Tân', 'Huyện', '96'),
('973', 'Huyện Ngọc Hiển', 'Huyện', '96');

-- --------------------------------------------------------

--
-- Table structure for table `devvn_tinhthanhpho`
--

CREATE TABLE `devvn_tinhthanhpho` (
  `matp` varchar(5) CHARACTER SET utf8 NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 NOT NULL,
  `type` varchar(30) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `devvn_tinhthanhpho`
--

INSERT INTO `devvn_tinhthanhpho` (`matp`, `name`, `type`) VALUES
('01', 'Thành phố Hà Nội', 'Thành phố Trung ương'),
('02', 'Tỉnh Hà Giang', 'Tỉnh'),
('04', 'Tỉnh Cao Bằng', 'Tỉnh'),
('06', 'Tỉnh Bắc Kạn', 'Tỉnh'),
('08', 'Tỉnh Tuyên Quang', 'Tỉnh'),
('10', 'Tỉnh Lào Cai', 'Tỉnh'),
('11', 'Tỉnh Điện Biên', 'Tỉnh'),
('12', 'Tỉnh Lai Châu', 'Tỉnh'),
('14', 'Tỉnh Sơn La', 'Tỉnh'),
('15', 'Tỉnh Yên Bái', 'Tỉnh'),
('17', 'Tỉnh Hoà Bình', 'Tỉnh'),
('19', 'Tỉnh Thái Nguyên', 'Tỉnh'),
('20', 'Tỉnh Lạng Sơn', 'Tỉnh'),
('22', 'Tỉnh Quảng Ninh', 'Tỉnh'),
('24', 'Tỉnh Bắc Giang', 'Tỉnh'),
('25', 'Tỉnh Phú Thọ', 'Tỉnh'),
('26', 'Tỉnh Vĩnh Phúc', 'Tỉnh'),
('27', 'Tỉnh Bắc Ninh', 'Tỉnh'),
('30', 'Tỉnh Hải Dương', 'Tỉnh'),
('31', 'Thành phố Hải Phòng', 'Thành phố Trung ương'),
('33', 'Tỉnh Hưng Yên', 'Tỉnh'),
('34', 'Tỉnh Thái Bình', 'Tỉnh'),
('35', 'Tỉnh Hà Nam', 'Tỉnh'),
('36', 'Tỉnh Nam Định', 'Tỉnh'),
('37', 'Tỉnh Ninh Bình', 'Tỉnh'),
('38', 'Tỉnh Thanh Hóa', 'Tỉnh'),
('40', 'Tỉnh Nghệ An', 'Tỉnh'),
('42', 'Tỉnh Hà Tĩnh', 'Tỉnh'),
('44', 'Tỉnh Quảng Bình', 'Tỉnh'),
('45', 'Tỉnh Quảng Trị', 'Tỉnh'),
('46', 'Tỉnh Thừa Thiên Huế', 'Tỉnh'),
('48', 'Thành phố Đà Nẵng', 'Thành phố Trung ương'),
('49', 'Tỉnh Quảng Nam', 'Tỉnh'),
('51', 'Tỉnh Quảng Ngãi', 'Tỉnh'),
('52', 'Tỉnh Bình Định', 'Tỉnh'),
('54', 'Tỉnh Phú Yên', 'Tỉnh'),
('56', 'Tỉnh Khánh Hòa', 'Tỉnh'),
('58', 'Tỉnh Ninh Thuận', 'Tỉnh'),
('60', 'Tỉnh Bình Thuận', 'Tỉnh'),
('62', 'Tỉnh Kon Tum', 'Tỉnh'),
('64', 'Tỉnh Gia Lai', 'Tỉnh'),
('66', 'Tỉnh Đắk Lắk', 'Tỉnh'),
('67', 'Tỉnh Đắk Nông', 'Tỉnh'),
('68', 'Tỉnh Lâm Đồng', 'Tỉnh'),
('70', 'Tỉnh Bình Phước', 'Tỉnh'),
('72', 'Tỉnh Tây Ninh', 'Tỉnh'),
('74', 'Tỉnh Bình Dương', 'Tỉnh'),
('75', 'Tỉnh Đồng Nai', 'Tỉnh'),
('77', 'Tỉnh Bà Rịa - Vũng Tàu', 'Tỉnh'),
('79', 'Thành phố Hồ Chí Minh', 'Thành phố Trung ương'),
('80', 'Tỉnh Long An', 'Tỉnh'),
('82', 'Tỉnh Tiền Giang', 'Tỉnh'),
('83', 'Tỉnh Bến Tre', 'Tỉnh'),
('84', 'Tỉnh Trà Vinh', 'Tỉnh'),
('86', 'Tỉnh Vĩnh Long', 'Tỉnh'),
('87', 'Tỉnh Đồng Tháp', 'Tỉnh'),
('89', 'Tỉnh An Giang', 'Tỉnh'),
('91', 'Tỉnh Kiên Giang', 'Tỉnh'),
('92', 'Thành phố Cần Thơ', 'Thành phố Trung ương'),
('93', 'Tỉnh Hậu Giang', 'Tỉnh'),
('94', 'Tỉnh Sóc Trăng', 'Tỉnh'),
('95', 'Tỉnh Bạc Liêu', 'Tỉnh'),
('96', 'Tỉnh Cà Mau', 'Tỉnh');

-- --------------------------------------------------------

--
-- Table structure for table `doanthanhnien`
--

CREATE TABLE `doanthanhnien` (
  `maTV` int(11) NOT NULL,
  `MaNV` int(11) NOT NULL,
  `NgayGiaNhap` date NOT NULL,
  `ChucVu` varchar(40) NOT NULL,
  `NoiSinhHoat` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doanthanhnien`
--

INSERT INTO `doanthanhnien` (`maTV`, `MaNV`, `NgayGiaNhap`, `ChucVu`, `NoiSinhHoat`) VALUES
(1, 499, '3919-10-05', 'Chi Hoi Truong', 'Viet Nam Vo Dich'),
(6, 431, '1911-12-01', '11', '11'),
(7, 221, '4235-11-01', '33', '22qqqqqqqqqqqqqqqqqqqqqqqqqqqqqq'),
(8, 432, '1923-10-03', '22', 'wwwwwwwwwwww');

-- --------------------------------------------------------

--
-- Table structure for table `nhanvien`
--

CREATE TABLE `nhanvien` (
  `MaNV` int(11) NOT NULL,
  `img` longblob NOT NULL,
  `HoDem` varchar(40) CHARACTER SET utf8 NOT NULL,
  `Ten` varchar(40) CHARACTER SET utf8 NOT NULL,
  `GioiTinh` tinyint(1) NOT NULL,
  `STK` varchar(40) NOT NULL,
  `NgaySinh` date NOT NULL,
  `NoiSinh` varchar(40) NOT NULL,
  `MST` varchar(40) NOT NULL,
  `TamTru` varchar(40) CHARACTER SET utf8 NOT NULL,
  `QuanHuyen` varchar(40) NOT NULL,
  `QuocTich` varchar(40) NOT NULL,
  `TTHonNhan` varchar(40) NOT NULL,
  `DienThoai` varchar(40) NOT NULL,
  `DiDong` varchar(40) NOT NULL,
  `Email` varchar(40) NOT NULL,
  `CMND` varchar(40) NOT NULL,
  `VanHoa` varchar(40) NOT NULL,
  `TrinhDoHV` varchar(40) NOT NULL,
  `NgayCap` date NOT NULL,
  `NoiCap` varchar(40) NOT NULL,
  `NguyenQuan` varchar(40) NOT NULL,
  `DanToc` int(11) NOT NULL,
  `TonGiao` varchar(40) NOT NULL,
  `ThuongTru` varchar(40) CHARACTER SET utf8 NOT NULL,
  `HoKhau` varchar(40) CHARACTER SET utf8 NOT NULL,
  `GhiChu` varchar(100) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nhanvien`
--

INSERT INTO `nhanvien` (`MaNV`, `img`, `HoDem`, `Ten`, `GioiTinh`, `STK`, `NgaySinh`, `NoiSinh`, `MST`, `TamTru`, `QuanHuyen`, `QuocTich`, `TTHonNhan`, `DienThoai`, `DiDong`, `Email`, `CMND`, `VanHoa`, `TrinhDoHV`, `NgayCap`, `NoiCap`, `NguyenQuan`, `DanToc`, `TonGiao`, `ThuongTru`, `HoKhau`, `GhiChu`) VALUES
(221, 0x89504e470d0a1a0a0000000d4948445200000200000002000806000000f478d4fa000000017352474200aece1ce90000000467414d410000b18f0bfc6105000000097048597300000ec300000ec301c76fa86400004dc549444154785eeddd07bc5c55d5ff7f63af8fed51016922cdf45e6e6e72490f10407c8c0412d27b40bad2e48a201d42094d408a28123048ef840e2aa2220a0a164441aaa11392acfd5ffbb2fcfd111678f69c333367e67edeafd7f79550b2ce3ee7ecbdf6997b2773df050000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000d019adbfbbacbdce2219b2f62eb2e3dabbcaee9a43f4f7a7acb3ab5cacbf5faeb96f9d5de44ffacf7fd6df3f1ba3fffce23abb86d011fdfdfffbf7faffc4ff37fe19cd72ad7351aca5bf3f44b37b3c463c563ca61d1e000054cb6716868f7e7e3719a41bf01cdda44fd24dfa6afdf501dd945ff97f1b798df3fab1e501cd553a9e13e3d8e2183fb7977cc4860d0000b28a1be8e717852df495f6019a9facbd481ed65fd7acb38b6ebc8d101dab3e0c3ca40f0517c77388e7b2f6dcf0613b3d000010adb5ab7ce6f3bb8489ba612ed60df3679f5f24abf49f433345cfed35cdddf11cf59f27c673b6d30700a093680fef5e77810cd0cdb05df373ddf0d7bc79c36cfec86acd9d7afedf8ad7225e13bb3a0000348f8d77950facb750b65b7791fc40f3e4baba099237245e13bd36f11ac56b65970d0080c6d3b53dbc7f9d45324137b673f555ef0a77e3236f49c7b58ad76ca16cd56f6e789f5d4e0000ca6dfd05a1dfba0be5f4cf2f9267d75da49b1aa938fa10f08c3e0c9c16afa95d5e0000ca63a3b9e1e3eb2d9405baf1dfbb9e6e5ca4f8e803c13deb2d92f9f15adb650700a03ef4d5690fdd94ced2cdff456fd322d588bc10af79bcf6761b0000a88df57709a3d75f28d7acbf48647ddd94483da2d73ede03bd17765b0000285e7c439abef29ca69bce7dfe8644ea15bd2fbf5a7f1799f2aef6f05ebb5d0000e4a49bca7af365da7a0be54feb2fd40d8794370be4617d40dbf95d13c37becee010090a83dbc7b8345324937940737d0cd85344ef441e0017d60fb1a1f30040048b2fe2299b0c142f9adb7b99006ca02b94fefe378bbad0000f8d69f275d375c20576fa89b0769a2e83d8df7d66e330000afdb746ef8df0d17cac9fa8a7195bb81943a22bac1fd4373bbe67ccde17a1e7b6e385fa67d217e2563910cd15f375d7f41d848f3c99837fec8def8fb7ffffbf8ffc4ffd7fecc8458a3a396d6b4daf118fff0c751eec47bab396183ddc227ecd401009d57e8a21be83ccd33dea651aa2c90351b2c943fea267691fefea00d16842fc7cdba1e9f9dbfc1b4f0c10d76099beb83c2f6712c9a8b755c0fc531ba632f51f41a3ea5d76d76bcf7763a0080ce246e9e5f982fb77c614108e58c3e94cc972b369a1ff6d5710e7be3abf6b28a638c63d5ec1fc71ecfc13fb73244967f71a16c6c43070034bbb6f6f0deb841e906f08abf31d42bf292be82bef20bf364177d35fda5e678851abac47389e7d4716e7a8efeb9d729f3e5657d50f9669c133660004033da709ef4da6881fc7a236dfee588fc4537c5c5ba398e8d5f56b76136ad788ef15ce3396f345ffeea5f93da47c773ef17f86861006846a18b36f93df515dfabde0650cbe8181ed5cdefb80d17caa0cefd7de8d0e58b7365885e8fe33bae8973ad6a1b7945efcbee9dfb9e004013596f91aca38dfd7abfe9d728f3e545dde4bebfd1c2d0ca87d338f49ac46ba3d7e86cdd885f72af61cd22d76cb030ac6523030034a28de6c9f69aa7bf383f847a448f7daf6e6a0bf811b6d9c56bb5f13c59a8d7ee57de35ad45f4d84f7e71be6c6b430200348af8a62e6de2c7681317afc157337adc55fa8affc24de6c42ff1238f780d379a1796ea7d5ced5debea46e7cebc70043f5700001ac4c6bbca67369e2fcb37d6265ecbe886f1fc17e7c9e20d17ca063614146493056123bda727ea357ed1bbf6d58ddc10e7940d05005046f115a36e128ffa8dbc4a9927ffd24da29d4f98abbe788de3b5d6ebbee22df7a1aa9147beb04006d830000065b2f10299a1afc05ff51b78f1d163bda01bc3a1f123746d08a891aeb3e4537aed0f7bfd1ef8f7a7f874fc2d816936040040fd852e7123de449b742da2c75aa93936fefc001b00ea247e697e93f9725cbc27debd2a3e229a83f9ab82005067f173f03799273ff49b75f1d18d66191f1f5b3ef19ee8c67c9977cfaa9279725ed789e1fd767800402dc52f036f3a4f6ed9745e0855cf5cf9ddc6f3648c1d1a25a5f7697cbc57ee3d2c3e37f7e0db3f00505bfa0aecf39a079ca65c6ce6cacb7a9cbdf9acf8c611efd5a673c3bef1deb9f7b4c8e8c3c6668b641d3b3400a09a369b1736d44df9cf6e432e309bcc951b379e235fb4c396de46f3e5b37a5d06eae6f7651dfbae9bcc0b47e83fff40cfe5e64de6867b3a1e98e6ca9ff4d7a7f4bf3fbbe93c11fba34de94bf364133dcfe56fbeafc5471e8e73d20e0b00a886cde6cb669bcd9347b5e186ea45fea54d7d5659dfe815bff7bcc9ecd05b37f2a93ace637453bf6eb3b9f2847f2eef1c2bd9c442974de7c86c3dd7156f3ef722a3f7e1913837eda00080226d36477a68a3fda7d7808b8bdcd2756e58df0e590a71c3d757f5adbad1b76b96eb185ff1c79e1e3b44d3fbd242d9401f926ef7ae4151d17bf3789ca376480040116263d53cbdf9dc10aa11adfd9a6e10fb97e5635fe3b71ebe3447bea1e3ba56f39237e6226287eb1cf4deea3d3e50afe72aef5a14913847353c04004011369f2d9b6e3e479ef01a6e11d14de1a14de7d4ff53dee279c68710dd40eef5c6598dd8a13b95f83e89cde7ca9fbdeb5144f41efe33beffc00e0700a8c4a6b3e50bdaac1ff51a6d11d1667d79af69f5fb08dff8c63d1dc7be7a8ebf79f3d86a111b46a713fffa9e5ef3abbc6b524c3adea7c21b0301a0123d66cbbafacaffe12f69432d3c73648d36e9f67afd6cfe2fcd95e19a0b741cafbae3ab516c389d93de7bbd07076bc4bb3679a3f3eba14de6c9e7ed6800802ce2c7ec7e69b63cd0754e08454737dd7f7d69966c6587aa99ae0bc347bbce915d34f77be3aa476c689d5ab7d932a1ebecb0c2bb3eb9335beedb686ef8b81d0a00f04ee2bbde7593bed16da879335bfea20f16ddec5035b1d94cf9981e737fddf89f74c754c7d8103bbdcd674a77bd478f78d7286f3ae6321f1b0c00ff4de8a20df37caf91e68d36f89febabf0b5ec4055175ff9e9a67f909ecf33de78ca101b2a549c1b7a4dee79f3352a22714ef3038400e01de8267db8d740f3477eda738a7cc40e5355ebee211fd2867f40d5beac5c606cc830718ee8bdbbccbb56f923dfb5c30000dea8db6c99d54d1b65d1e93a5bce9a58a3bfdfdf6d96eca0e7f188378e32c6868d378873a5dbec708e77bdf24544e7e2643b0c0020d2575d83bacf9195ddb551161b59528b2fbd7e69a6f4d1632df7c750ded8f0f116a14bf7d972b277cd7265b6bcda7daef4b7830040e7d67b867c465f1d3dea36cc3c992d47da21aa66e35de57fe243861e6b8d3b8692c74e03ae8e878023bdeb962bb3e59138e7ed2000d039c52fb7f6982dcb7bcc0ea1d0cc0adfb643544d8f3961b48efdafeef11b24762a7807712e79d72e5fe4ba5a7d5b0a004aa9c72c39d66f9095a7fb2c39caca5745fcfbfcfa2aee146de2e21dbf9162a784ff22ce29effae5492dbe420500a5d47d66f872f19ba89c64e5aba2fb1c69d3cde0cffeb1cb10794637965b748ce7eaef0fd3dfefaabf6ea719dc6d8e7cb1c78cb051d759f2a9f851b8764ac82474d16bbac4bfe69546a4e72cd9c60e00009d43df39b276cfd9f2744f6d8445451bea59d57bc35fe8a2f50fd486bdc63b763dd263963ca6b940c7b58f5ecb71faebba36585445e8a2d7fd9c37df873cd17bf664d769b5fb6c0a00a8b3d848e506af21569c597269b5bea71a7f58906eb497bbc7ad61740c4fe986f163bd76f3bbcf0d9bdbf05043718ec5b9e6dd9f4aa3f7f4eaea3db8024089f49c297bf69a15427191bbfbcd0d1fb6f285ea353bf4ee35531ef68f5bfde866f30fbd5e4b74d31fc99bc6ca21ceb538e7bcfb55697acc94ddac3c0034a7de33a4976ea8af7a4db092e806f9d76afd952a6df25374f37dc93b6e5533535ed09cd17b8eb4d4eba715e29df59a2a9fd77bf4a87bff2a8abcd263baf4b0f200d05cf495d3fb74c3feb5df00d3d373665851ada6a9afc8f6d7a62cde71ab17f96def99b250af133f3dae01c4b917e7a07f2f2b89fcb2ad3dbcd7ca0340f3e83d4bf6ebad8dae90cc94355aaff01fe91bbfccaeb54f728f59a568e3bfaac76c1966434003e9395b26e83c14efbe56925e33651f2b0d00cd411be5a6f1cb9c5ed3ab2833a5dd4a17a66d5af8a08ef162f77885277e75412eed3d4706d8e1d1a074d33ed8bfc7e9d139f172df39f2452b0d008d2e74d10dfbd63edae08a895c51f4bba6e397dd7553bec53f5eb1d16b71757c2f841d1a0dcebe6a74b577af2b89d6ba91bf1500a029f49929f3bd465749b4393e5cf4f7c8379b291fd3cdff4eef784546c7fe90be5adcda0e8b26123f5c49e7f99fbdfb5e596486950680c6346067f9b46e7c4ff799a94d2d67f455f36bbda717fb25f3f857bab4ee2ddef10acb0c795e8fb157d789e1fd765834a1be336490dee755ee1c488e3c193f7fc24a0340e3d1a678525f6d68c544f6b7b28518fc55f990d6bcde3f5631d1cdffbafed3653d3b249a9ccef76f79f3a0b2c8715616001a4bafd9d24d37c0557e734bcecd457e104e7c35aecdfa6ae7388524beead7fa0bf85e6ee712e7a8be7abfcd9b13a9d139f45abf697ce2238006a41be0b5fdb491e58ffc4b9bea0656b600a18bbebafa917facfcd1dab70d9c2d5fb083a193e9352d6cd86f4658e1cd8dd4e81abac2ca024063d0c635419b602822fda7cb4c2b5b88bed3e550ef384544cffb583ecc057da7c91c6f7e54923ed364bc950580926b0fefd64df6b75e334b4fb17f254a5f9d4fd69ae21f2b47a6cb0bbaf97fcd0e834e2f74d1f9b0dc9d2ba9992ebfe65b49001a42ff6932a9bf36aebcd18dfae5be538bfb5094fed3a5a5ff0c59e91d2b4f749c7f183843bada61800e83a6cb263a375ef1e64c6afa4d0f13ad2c009453fcf2b7be6279d06b62c929f06351b5de46fa00f0e45b8e9137d3e5eef8571ded30c07fd0f9b19f3b6f12a36bea77fc602800a53660ba4c1ba00d2b77a6cb6f8bfa5e7a7cc7bf36e25fb8c7c993e97255cf29f2113b0cf016f107600d98210fb8f327353365b295058072e96876d3e44f03a66bb3ca197dc533c6cae6a6633ada3b469ee803c5d9f17ced10c0dbd2f937de9b43a9e93f4dfec81b4c0194d2c0a932d56b5ca9d1cdf5122b995bffa9b2a5be5217ef3895474ee74d5948a173fa0a7f2e25661a5f0500503aa1cbc0e9f2ab81daa472659abc1adf3c65457319302daca50df39fee712acdb4700e9b3f52f59f299be9dc7ecd9d5349917bad24009483be2a1ee737acb4c42fd75bc99cf481649a5cef1da3f2c885457e1a213a175d238bfd79951a19692501a0fe064d936b066973ca13ddb09f6f9d219fb192b90c9a16e67ac7a834da742fe587f9208f41b3e47383a6cb8bdefc4a8aae352b0900f53578baf4d0c6266eb34a886eb2875ac95c62a3d55acf7ac7a8245aebdef85303ad3c50b181d3c211de1c4b8b089f3b01a014f495fbf7fd469590696145eb4ee193563217ddb02f708f5149a6c9a30367cbba561ac8257e66846ee0cfb9732d25d3e42c2b0900f53170b2fccfe069f2e2e06921e48936b46f59c95c86ec2ce3bcfa1565aabc34688a0cb2d24021745e7dc79d6f09d1f5f242cb4cf998950480da1b345516780d2a25b199b54d0b9fb092158b5fa6d7e6fa27ef1815652a9fed8fe2757c1540e7bc3be7523255e6594900a83d7df57fef106d46b932554eb472b9e8580e7a4bed8a23a75959a07071cefbf32e7b74beffc2ca01406db5ec2cfdbdc694126d62ab86ee1cd6b79215ebb763f85fddb49ff38e911ef93d6ffa43350d9e221bc7b9efcfbfec6999167a5b4900a89df82ad96b4a69910bad5c2e5ae758bf7e5a064f955787ce905e5616a89a38f7bd3998127d8838d9ca01406dc4bf133f64aa3cdb32555f85e4c8d06932d84a566cd874596fc8cef28a573f357a4ebb5959a0aae2dcf7e6604a74be3ec5cfa4005053faea656baf21a5a5988f35d52678a65f3f2d5ae76e7ee42a6aa96567f98d37175312ffe68b950380ead3c675ee506d3e79a20f000bac5cc5c64c918f0c9d2a7ff5eaa744c7b26ae814bef48fda6add59167af331293bcbf7ad1c0054d7f85de503bae93ee736a38cd10df7c5f81902563297b669e183ba792fd29a8f78c7ca127da029e8671000d9c5bffeaa6be9656f4e668dcedd7ff131d5006aa2754af8b2d788925285572db109ea83c02cadfdb07bccb78dfcb56d62f8a895016a4a1f5ccff3e765f6b4ee2c13ac1c00548f369bf35b63d3c991a13b87562b57b8b6b6f0ded6a9324537f6df7bc77e73f4816127fba340cd0d9d16b6f0e66562ceb172005025ede1ddc3a6c893c3760ea1d2e803c4a33579b39d1ea375e730518f779f378ed723bfe68d7fa8ab8e792a8ff9f3336be489f823b0ad220014af758a0cf21b504ae4382b5723a14bfcb6c5b029e19eb78c65b26c6dff135037fa507de25be6666a264b5f2b0700c51b3e45da876bb3c993f81061e56a6ef854d972f8ce72471c8736dddbec5f0375d5b673687df33a498dcee703ad1c00144f37cfbbbde69335daa4fe52862f55ea83c0085e31a134e2b7d6769647bd3593353cd002a89ad619f299e153648dd77cb2469bdcf1560ec01be8c3f5126fcd648daeadd58367c9a7ac1c0014a76db27cb56d4a0879a2afbac75a39006fb0c564d9da5b3389f9b2950380e2b44d91e39d86931079397e688f9503f00683bf2a1f1a3e595ef5d74eb6e89fe703ad00146f8b29f2f32db4c9541a7d00b8c24a0170e81ab9d65b3b993359eeb45200508c0973c387f5016095db743247165939008eb6c9b2bbbf76b2451f2056f2553600851abe938cf01a4e4a86ef2c5fb272001c23a74a4f6feda464c44e32dcca01407e5b4c960346c4e65261f4d5ff337c5219f0cedadbc3bb75135fe1ada1ec91fdac1c00e4a71bf832bfd9648b3e405c66a500bc035d6b57796b287be4222b0500f98ddc491e1a3939844a3362275e9500598c9c2c07786b2873769207ad1400e433668a7c4437f0356eb3c918be2f0964336a72d8c25b43593362b2ac8e6fdab5720050b9b6c932d86b3459131f1ee243849503f00e5a66cac7464e16f1d652e6ec2803ad1c00546ed44e61aebe2a0995469bd91fad14800c464d9687bdb5943523779259560a002a376a2739c96b3299b3136f4a0252e89a59e6aea5acd9899fb901a000a37794ab46ef1442c5d9510eb2520032d00dfc60772d658cfe793e7513407eda4c7eef3599ac193359b6b7520032183959beeaada5ec91fbad1400542a74d157f0aff84d265b464c96cdac18800c464c926ede5aca9a513bca8b560a002a337a92ac33461b4ae511193f5e3e60e5006410ffd68cbf9eb267e424f99c9503807463779016afb9648ffcc34a0148a06be7717f4d65cbe8c932d84a01403a7d00d869ec8e21549a313bca1d560a4082b193e42e6f4d65ce0eb28395028074da8476779b4bc6e803c00fad148004baf62ef0d654d68cde5176b35200906eec8e7288d75cb266cca47084950290401f008ef2d654d68c9924075b290048a74de8b471da4c2a8fec69a5002418bb83ecedafa96cd1b57bb295028074ba815fe43597ccd9294cb75200128cdd5166b86b2a63c64e0a4bad1400a41b3f496e1aafcda4d28cdd492658290009c6ed24db796b2a6bf4e1fd062b0500e9f401e0d7e3276943a9305b4d9241560a4002ddc087786b2a6bc6ed20bfb25200904e9bc85fbde69235a377944dac148004e3be2a9b796b2a6bc64d9287ad1400a41b3f491ed9529b49a5993031ac6fa50024886bc75b535913d7ae950280745b4e9227bde6923563a6c867ad148004e326cbdade9aca1a7d0078dc4a0140baad2685159a5069464f0c1fb7520012c4b5e3ada984acb05200906eab1de485ad76d0665261da26868f5a290009b6dd563ee6ada9acd9720779de4a01403aafb1a4c4ca00a880b7a65262650020ddd6da44f2c4ca00a880b7a652626500209dd7545262650054c05b5329b13200906e8236913cb132002ae0ada99458190048e735959458190015f0d6544aac0c00a4f39a4a4aac0c800a786b2a25560600d26df3b510f2c4ca00a880b7a652626500209dd7545262650054c05b5329b13200906e5b6d227962650054c05b5329b13200906e3b6d227962650054c05b5329b1320090ce6b2a29b132002ae0ada99458190048b7dd446d243962650054c05b5329b1320090eecbda44f2c4ca00a880b7a652626500209dd7545262650054c05b5329b13200906e7b6d227962650054c05b5329b1320090ce6b2a29b132002ae0ada99458190048b7fd57b591e488950150016f4da5c4ca0040baaf6813c9132bd3d4f6bb4b3eb7cfadb2e3deb7cbf17bdf26d7ec73bbfc417fffacfe7e6547f4f71dffeef5ffb678af3b6452fc33f6c73b3daedfdbf3d6544aac0c00a4f39a4a4aac4cd3d9e34ef9d4beb7c92e9a5fec7b7b08c9b94d44f3b35823d6b2b29d06d72f1b6f4da5c4ca0040baffd326922756a669ec7fa77c7effdbe438cd8bfbdf16423189b5e4387d75bb8e1da66971fdd2786b2a25560600d2794d252556a6e1cdbd27bcef805be51b07dc262f1ca89b4e35126bc763c463d9619b06d7af32de9a4a89950180745e53498995696807de2c9b1c74abdc7bd0ad21d426726f3ca61dbee171fd2ae7ada99458190048f7d5ff0b214fac4cc33af836d9befd1679fedbbab1d434b7c87307df22dbd9301a16d72f1f6f4da5c4ca00403aafa9a4c4ca34a4efdc1ce6ea26b2fa3bb784508f741c5bc760c369385cbffcbc3595122b0300e9266a13c9132bd3700e592e0b0ed54da40c8963b161350cae5f31bc3595122b0300e9bca692122bd3500ebb59b6fdeecdb2fab09b4328435e1f8b6c6bc32b3dae5f71bc3595122b0300e9bca692122bd3300ebb55363d7cb93c7f846e1ca5ca7279eec80678631bd7af58de9a4a89950180745ffb4a087962651ac2e9f784f71db95cee3d4a378c5266b9fc328ed1865b3a5cbfe2796b2a25560600d2794d252556a6211c73937ce3d8e5219439c72c97bd6db8a5c3f52b9eb7a65262650020dd0eda44f2c4ca94deb137c8e78fbb495e58ac9b449913c778d4f2b0960dbb34b87ed5e1ada99458190048e73595945899d23bfe26597cc24d2134428ebf518eb5619706d7af3abc3595122b0300e9bca692122b536a275d2f9f3ee92679f124dd1c1a233a561db30dbfeeb87ed5e3ada9945819004837499b489e5899525b7283ec72f28d2134524eb94116d9f0eb8eeb573dde9a4a89950180745e5349899529b5536f949f9faa9b42234537b0bb6df875c7f5ab1e6f4da5c4ca0040ba1db70f214fac4c692d591ed63aed7a91d36f08a19112c77ccab5f2593b8dbae1fa5597b7a652626500209dd7545262654aebf41b64d219ba213464ae971dec34ea86eb575dde9a4a89950180745e5349899529adb3ae97e3cfba3e8446cc99d7cb623b8dbae1fa5597b7a65262650020dd4eda44f2c4ca94d639d7c9d5e7e866d08839fb3ab9ca4ea36eb87ed5e5ada99458190048e73595945899d2d20deca173af0ba11113c76ea751375cbfeaf2d6544aac0c00a49bfce510f2c4ca94d679d7c9333fd0cda02173ad3c6da751375cbfeaf2d6544aac0c00a4f39a4a4aac4c69fdf05a59f9a36b4368c4c4b1db69d40dd7afbabc3595122b0300e9bca692122b535a17e826f063dd0c1a3171ec761a75c3f5ab2e6f4da5c4ca0040ba29da44f2c4ca94d68557cb334baf09a111a363affb97b0b97ed5e5ada99458190048e73595945899d2baf86a79e862dd0c1a323a763b8dbae1fa5597b7a65262650020ddcedb85902756a6b4965d25572fbb3a84c68c5c69a751375cbfeaf2d6544aac0c00a4f39a4a4aac4c69fdf46a59fc53dd0c1a33f5ff201bae5f75796b2a25560600d2794d252556a6b47e7a954cbaecaa101a3257d6ffa36cb97ed5e5ada9945819004837559b489e5899d2baf452f9dce5578a5ca11b4223258ef9aaabe433761a75c3f5ab2e6f4da5c4ca00403aafa9a4c4ca94da9557c8cfafba3284468a8ef92e1b7edd71fdaac75b5329b13200906eda7622d3b491541a2b536ad75c29bb5cab9b42634516d9f0eb8eeb573dde9aca9aa9dbca1a2b0300e9a66d13564cdf36844ab37062f8a8952aadeb97c9a7afbb5c5ebcee8a101a223ad638661b7edd71fdaa63e6b6f2316f4d654d5cbb560a00d24ddf469ef69a4bd6cc9d183e6ea54aed86cbe5b81b7473688cc8b136ecd2e0fa152fae1d6f4d65cdb46de5292b0500e9a66f2b8f78cd256ba66c2f9fb552a576cbd5b2f64d97cb0bcb2f0fa1cce918e315612d1b766970fd8a37797b59db5b53d9238f58290048a7af22fee837976cd9794258df4a95decd97cb376ed14da2ccd131ee65c32d1dae5fb1e2daf1d654e66c237fb05200906ec63672df0c6d269566fad6b289952abd7b4e0fefbbed32b9f7b6cb4228652e0df7c431da704b87eb57ac99dbca66de9aca1c5dbb560a00d2cd9c2077cfdc26844a337b1b196ca51ac25d97cb26b75f2acfdda11b469912c774e7a5b2b10db3b4b87ec599be9db4786b2a6bf401e04e2b0500e9666e23b779cd256bb4094db0520de3ae9fcab6775d26abefd28da31cd1b1e8986c78a5c7f52bc6f46d643b6f4d658fdc6aa500209d3691657e73c99ce956aaa1fcec5259f0b34b43284764810dab6170fdf29b31416638eb2973f4cfffc44a01403a7d0058e23597cc99207b5aa986f3f34bc3dc5f5c2aab7fa19b487d22abe3186c380d87eb978fae9dbddd359539b2c44a01403a6d4207ced2665271268423ac5443baf752d9ee9797c873bffc6908354d3ce625b28d0da36171fd2a376b1b39ca5d531913d7ae9502807433b79599b3b599541ef9a1956a58f75e2e9bdc7b89dcfb2bdd586a9178ac784c3b7cc3e3fa5566d604b9c05f53d912d7ae950280747326c8965e73c91a6d627758a986b67c7978ef6f96c93ebfb9445eb8ef9210aa9158fbb797c8def15876d8a6c1f54ba76be72e6f4d65cdac6d64bc95028074b3b70abd674fd0865269b6967f58a9a670ffd2b0966e32c7debf4c5ebc5f379d42a2b53a6a6a6d3b4cd3e2fa65376b6b79c25d531933636be965a50020ddfcede5b373b499541e915dc7cb07ac5cd3b8ff42f9946e3cbbdcff13b95b23bf5b16424ae29fd1dcd951436b59d94e83ebf7cea68c918ff8eb297be2dab572005089d065f60479cd6b3059337742d8dc8a35a5877f229f7df062d9e18165b25873f5833f91071f5c26cf68565a9e89ff2efeb7f8ffe83f7f2dfe19fbe39d1ed7efad666f23ddbcb5943571cdc6b56be500a03273b796fb75138f1b794599bdb56c6fa50064306f6bf9aab7963247d7ac950280ca694359fa960693903913e4202b052003ddc00ff6d65242965a2900a8dc9cadc3b7e76ead4da5e2c8c5560a400673b79265fe5aca96b866ad1400546ede56f2b579da542a8d36b387ac14800c74cdfdd95b4b99a36bd64a0140e5e66f2ddddd269331fa00b026beabd9ca01780733b7958fcddb5ac45b4b5913df4468e500a07273fb85f769435a355f1b4ba5d18780e1560ec03b58b0958cf0d650f6c86b71cd5a3900c8471f007eef379bac91fdad148077307f2b39d05f435923bfb35200909f36a51ffbcd265bf401e20a2b05e01de8067eb5b786b266de567281950280fc166c25bb2ed82a84ca23cff0c124c03b6b6f0fefd6f5b2e2adeb277be66d29bb583900c86fd104e9eb359b942c1cc71b938077326f6be9e5ad9d94cc1f2f7dac1c00e4377162788fbe8a7f61a136984a13bf8a60e50038166c297b7a6b2773b694e7e35ab57200500cddc0af739b4ed66cc9fb008077b2702bb9d65d3b1913d7a8950280e2687339c86b3a59a3af6e5edee3abf2212b07e00df61a231fd135f6aab776b226ae512b0700c559385e462dda32845c1927e3ac1c803758304eb676d74c4276d952465a3900284e7c85b2684b79cd6b3cd923275839006fa06be3647fcd648dbc16d7a8950380622d1a2f37eda2cda6e28c97bff2d70181ff14fffa9fae8dbfbb6b2663e2dab47200503c7d95b1a7d77c52b2eb78196ce500a85dc6c9306fad2465bcec61e500a078ba797fd16d3e4991c5560e80d23571a2bf56b227ae4d2b0700d5a18de6815dc7c7865359f4d5cedfe3973cad1cd0a9c5b5b0eb3879dc5b2bd9230f583900a81e6d3647fa4d287b76e3a703021d761d2b23bc3592947172b8950380eaf9faf8d0aa0979a20f11dfb77240a7f6f5f1729eb74612d36ae500a07ae2478d6ad37ada6942d9334e5e9a3b3a7cdc4a029dd282adc327f5d5fbcbee1ac99a71f2241fff0ba066f401e034b7192564d7f1b2c0ca019dd2d7c7ca2ededa488b9c66e500a0fa761d2b2dbb69f3c9137de5f22b2b07744abb8d93df786b2329e36488950380dad00dfc0f6e434ac8ae7c26003aa938f7bd3591127df5ffa0950380dad97d9cecbffbb810f264b7b172a195033a9538f7bd359116d9dfca0140edec3956d6db7dacacd9431b51a5d106b66ab77161432b09740a7b8c958d73af1dfdf3710d5a4900a82dddc0aff39a535ae4442b07740a71cefb6b217be2dab37200507b7b8c97295e734a8bbcb05b5bf88495049ada9e13c2ffee31565ef2d7424274ed594900a8bd3dbe2a1fda7dac3ce536a884688d762b0934357de57ea8b70652d2b1e674ed594900a88f3dc7ca217b8e0d214ff6181b56e8aba24f5949a029edd9a6affec7c8f3de1a488b1c622501a07ef415cdda7b8e91957b6963ca17f9ae95049a92cef123fdb99f3d71adc535672501a0beb4b19ded35abb4c80b7b8d91cf5a49a0a97c7da47c4e37ef97fcb99f3dfaeaff4c2b0900f5b7d778e9aa1bb8780d2b25dadc8eb3924053d187db13bd399f165d63bad6ac2400948336a76bfca6953df1cb9bfb8c964dac24d014f61c1b36d7f5f19a37e7d322d7584900288f3d47cbb8bdb549e58dbe52badc4a024d41e7f4d5de5c4f4d5c63561200ca2474d97bb4fc6c9f3121e4cdde6364ac15051ada5ea3646b6f8e2767b4dc1dd79895058072f9c65819e336afe4c8efdadbc27bad2cd090e6f60befd38dfb017f8ea765ef5161b495058072d2cd7bb9d7c052b3f7e8b0af95041ad2dea3e5006f6ea746ebdc642501a0bcf61e2543bc26969abdc7c82bbc21108d6a9f71b259c71c76e6766ae29ab2b200506edf182d977f431b57dec4af26f07d4f349ed045d7c0adde9c4e8eae252b0a00e5f7cdb1d2eb9ba345be393a84bcd10638c7ca020de11b23659e3797d3a36b48d792950580f28b6fe0d3e6f51bbfa92567c537c7850dad34506a71ae7e63943ce7cce30a22bfe1cdb0001ac6de6d612d6d5cb7fa0dadb26843bd6de2c4f01e3b04504a718e7e63b4dce9cde14aa373ff96b8a6ec1000504efb8d9411fb8e96c7f7d5c65574be394a0eb4c300a5a473bfdd9bbbf9238fc7b56587018032095de206bdef2859ed37b0fcf9e66859b5ef18196407044a45e7fe906aceff585bd7c0febc29164069b4b7858fee374a96ed372a84aa67a4fc69dfd6f0493b34500aba397f5ad7c05fdc395b70f45817c53567870680fad87754d84837e5fbbc4655ad6803bcaabd3dbcdb8600d455fcbeffbe23e51a6fae562bba067e13d79e0d01006a6bbfd1324a37ffa7bd0655ed68033cd88601d4956efe877873b4fa91a7785f00809ad3c6334f1bd0aafdb511d52722fa1030c18603d4c5be2364db3817fd395afd74acc19132db860300d513bff4ae9bff515e33aa79468615078e921e3634a0a6e2dc8b73d09d9b35ce7ea3c211bc391040d5ec31583e74c048b9f8006d386589befa7ab4bd4dd6b521023511e75c9c7bde9cac57743cf1cd811fb421024031f61d259fd60673b7d778ea9d38aef609e1c33654a0aae25cdb7fa4dce7cdc57a47d7c21ded63e553365400c8e79ba3c3fafacaff8103466a932969b4215fca2705a2dae21c8b73cd9b83a5c908f9dd0163653d1b32005466bf91d2f5c011f2b703b5b1943ddaf8cee6fba0a89ed0e5c091729e37f7ca165d0b8fecd71636b78103409a6f6d218374f37fda6b30c545c4fff71566842ce12100c50b5d74533dd59d7315a7e0b9ffe6e8da8d6bd84e0000b2d1c631541bc873dfd24652958c90d5df1a29fb1f344aa6b9ff3d57e4283b0da010ba591fedcfb5caf3fadc97fd5f5f0bfeff9337710deb834b8b9d0600bcb3b8f96b637ade6b2885e4f55726e3ec70efd27f3edefdfff26444f8b6950772d14df460778ee589ce792b1fd7dbb88e35e1fd7f05a4e3415ed7b41d0e007c1d9bff08ddfc4768f3a84ae4def6b6fffcd9fe73fb85f7e9716ff1ffffcaa38def48be1d80ca852e710e79732b5f64f99b7fc67f5c13716df8ff7ffe1cb8050f0100de8136a1d68374f33f481b4655b2859cfb767f4f79bf56f98c36c047dd3f972b72320f014817bae87c3dd59f5379227f8b73dd0ef21fe2da886bc4ff73f9a30f003c040078ab6a6efeda74566a16daa1ded6b746c9006d80af7a35f2445f019dc35f11445671aee87c3dcf9b4bf9222feb5cec6787795b71adc435e3d7c81b795e6bf31000e075b6f9bfd0ae0da2f8c8b3df4af88125fa003059ff8cf8b52a8f9edfe57a9efc0855bca33847740e5ee9cda17c118973db0ef35fc53513d78e5f2b6f780800a0b4d10cabdae6bf85fcf5c011d2cd0e9599fed97ddf52ab98dca30d7e2d3b0cf01fda47cb3aba39deebcc9b22b2af1d26b3b876e21a726a1510793e3ef8dba1007436fa2a6050b5367f7db5f3cbfd87c9da76a864daf84ef1eae68d8eeb914a1e4ad0dc0e1c2e3d7453fc9b3767f246d7d8c9769864710dc5b5e4d5cd9d2dc20a3def3e7628009d457b9b6cac9bec93dfde2284c2d32657e6fd72fbd289e13ddfde422e71ebe78c8e6d859e3f3f4a181d74e3df56e7ec73de5cc91b9d67e7879c6f428d6b29ae29af7edec41e107b811d0a40b3fb6eab7c4637d787bc86903b6d727adcbced50b9b44f0cefd77a37bac7c9196d7ca2b50f8e3fded80e874e26ce53ddfc0eed980bce1cc91d9dbb710edbe172e97820d6b5e51e2777e4a1d813ec50009a55fc4966da48ee3e58177ed1d1baff3c6274f8b81daa10b19e36a87bbde31511ad7d153f3dadf3396c947c5ae7eb35de9c28246df2cbaaac055d63eef17226f6047ea226d0c4e2ab086d4c977a0da0a8e8867a59de2f79be59dca0abfc10f0677d2538d80e8726d73e425a0ede42fee2cd8542a29bffe1ade19376b842c43515d7967bbca2a2bda1a8afde0128196d7aa7b80bbff0c877ec9085e978c556c587001df32a6d8007d2009b577b5b78afcea1f68e7bedce81025285cd3f8a6bca3d5ee19153ec90009ac57786cb01df690ba116d126287abcafd8a10b131f02b4f6bdde310bcb70b9fd9011b2811d124de29061f2059d3b77b8f7bca80c0ff75469f3ffbf8e35e51db32a91fdecd0001a9d36bf79fe42af6286cb0b9a1e3684c2d4e221e0e0e161c5b7db644ed1dfca40edc57bf8fafc97e7bc7b5d58aab4f9c73574f07079d13d661513af990d0140a3d2570f430f69939587c4455deb0c9787da0717ff06bb58531bfa1dee318bccf070f361adb2a91d160de63b2364339dfbb7baf7b6c0e8267d5b3536fff6b6f0bf3afe3f79c7ac7e6465ec1d3614008da6bd45d6d185fcd8a1baa0eb17b9b1bd6b317f15ea8d8e1d2c1fd2078c9ffac72c2e7afd5ed6e3ec1fbf7f6c8746c9c5f9a6f7edc04387cb2bde3d2d327a9c653a37dc1f7095473c87b876bc63d62ab177c41e624302d028ac81dce12decda27ff87a178e21bf6b4f669fe318b8d36c3df69c6dba15152f11ee9c6ffa0770f0bcf7039a51a6f1a8d6b25ae19f798358fdc518d07780055a4af5a4ff517747da2e3596c432b9cd63e481bbf78c72d3cc3e56abe2d503edf6d95aef1deb8f7ace0c4b9a639d00e5d38ad7d8277dc7a45c753f1471903a8316d8433bd855cef1cd296fe0351b23a6498ccd246f59a77dce2232be3034dfb10f9ac1d1e75f2dd91f2b98e0d73b8acf2ef55b1e99863babeecf0858b6bc43b6ebda3e73dc38608a0ac0e1b2e030e1d26af7e777808658b364e39ac4d76b6a116eebbc365989efb3fbd6357237aac17bf3b2c1c11ff66820d013512df20a7d7ff48bde72f79f7a61ad1e33dae1b74d57e829eae8fa9718d78c7ae7b86c5f753487f1b2a80b2899fe7ad0f007f3b4c176c6119262fb8ffbec2682359ad63dcd6865cb84347cae7b5fecfbc63572bba093dafd7e9e06afc8d07fca76374e3d7fb7b48d1f3f2bf45eff1dd716ed9300a17d7c4eb6bc33f7e451926ff72ff7d85d16bf0083f330028a1f866246d20cbbd855b6974c1df681b6ab10f151dafda64840dbd70278c970fe831cef48f5dbde8f57f519bee8987b7868d6c282848bca6f1dac6b9e35dfbaa66987c2fce291b4ae10e1f26c38b3e2f9d8b0fc5b51b1f5cbcff5e69624fe0d3328192d1857990b7602b4d6c20ff7e457bf870e9517ce3ed780818d331f82ad1c63d5f8fb3d23f7ef5125fc97d7758587a58ab0cb2a1a042f11ac66b19afa977adab193de6ab870f0f736d2855a19bffc8e237ffb0e288a1d22dd68fafd8e35af6febfca2307740c1e40fdc526a99bdd2a7fb1a6471bc65387bde967846ba3da4e376cf1feff4aa3f55ed6e354f5afd6e92bc77edab01ef48e5f8be839fe5aefcd2e45ff64b866d6de163e11af99deb7df78d7b416d135f0fb4387495f1b5255e8398e2d7ef3eff816db5676880ef1013e3e1478ff7f25d139fd9a1e63809507502f478f918fe803c01f0f1f1642319195f1558995ff0fdab0f6f3ff4ce5d1b1bfaac7dbda0e5115edfdc28775eca77bc7af55f4f82f6bce3d7c68d8a2fd5de1dd3634988e6f610d97113a17ce8bd7cabb86b58acec9d3e29cb1a155851e63fce1adf28a77fc5c69953dec10ff411f8447eb3157bb7fa6a2c81f62efb1f200eae108ddd88ed005595c649a957e8bf80125da60cef7ff5c9e743c746c6787a99a235bc39775fc4ff963a8615ae5313ddf138e181a5a3bf3c3403cf7780df49e9ca479dcbd56358d3c796415dfa0fa6f47b6ca8438e7fd31541ebd8667da215cfadf17787faed268bdd3ac34805a8bcdca5b98954637a563adf4db8a1f7baacdeb6eefcfe78b36c456f9aa1da66a0e1d266beb71aef5c750fb68137d547352fcb26db55f759641c75763f45ce339c773f7ae497d22571fd516d6b261564d7c08adc6e6af73fa962c9fd817afbbfbe72b88f60b890f33561a40adc40f40d105f884b7302b4a6c20193fef3e364a6d627f72ebe48836a7d55a77173b4cd5747c25635898aee7fcb4378ebaa5555e890f277a1df688dfb76d86af0ec473387ca8f48ae714cfade31cbd73af53745c4fe99c9b568d8faa7e335dafb3f5fc5779e3c895567928eb5fcf8b0f093a8ebbdc3a95a455fe197b919507506daf6f6072b9bb202b49ab3c96faea27be49509b6775be6cdb2ac7d4a221c7a6a9d7f13c8db8e3a8775ac38af8ca54afc7011def1d680b1fb5a197d6912df2b13856bda607be3ef6780eceb9d539afdf7339377eae800dbd6ae25cd67b7888378ebcd135f8e8d1c3e40b76a84c0e1926ebe9b93fe9d5ab24b117d562bd0250bae8171cd91a4221192aabb4690fb3d249e2abd4238786156edd9cd18d6369fc76831daaaa8e6c9551470c953f7ae32853741311cdc39a653ade83f5d7af1edd2a5de34f46b453a99978cca38748f73806bd7edfd1f15ca273e94f718cded84b95a1f2079df355fb1c8a378aafb8f59a9ceb8e236f86ca93f11ed8a1921cd52263f59ead76eb5696aafe7549002a7e208a2efc178fd2455744b4d65e56ba22ba010d3aaa555ef26ae78d8eed76dd686af2e97a71438b1b99e6656f2ce58ffc53afd7dd9a0b8e1a2a4769f6d68d67866e74dbeaabbd16fd75b33877e22b5efdf5936ffc6a42fc7dfc77f6df368affafd61bdaf167b546acd551b3557e1c8f118fe58fa1dce9b8b7fae054ab07cb1306caffe8f5bade1b4bfec8f371edd9a12aa2633bd0af9d1eadf5a23e8c6c60a501142d7e994d17fe75de02ac24ba682f2ee24b775a6bb48e6be59beb17111de31fe2a66487aaba6386c97a7a2e6769d678e3218d98782fe52c7da0a9d9cfb63fa24dd6d5878dfbfcf1e48dac3cfa6dfeaa6e8ab8f6757d5de11f233dfa807599950650346d2853bd85574974b1fe75715bf88495ceeda861f27fda4c567bc7ca1f795a53d39fc51fdfb8a6e773b53f1ed22879fd1e4a4fbbad35a1c71baaebebefde78f2a6638d15f857660f1b209fd69a8f79c7aa2447b6862f5b690045397a887cf668dd088fd6459637fa20b15a1b549b952eccd1436596363ff18e993fb2467350addf197fcc3019a7d7eb5e7f4ca4ac89f72c7e9fdb6e63cde81cfdbaae81d7bc31e54d5c5b470d0bd3ed508589d7a9b0753b541e5dd2006f56051a8a2ed0f3dd055751e4702b5b38ad1dbf67bcda3f6efe68ed2b6af5be807febf8d68bbeead263dfed8d899427ba4eee8af7aad6ef4a8f9b9ece8f0bbc311591b8a6f495fa4c3b5ce1f4ba1def1db792e8588fb3b200f23ab64546e893b51c333484dc6909f764f9c0903c8e1e229374bcafb9c72f222df2e76386481f3b5c4d1dd32aa38e192a37bae32275cbd12d7283cebbdcdf17af447cd3a41eff7e6f5c85a44556e9a6ba931dae2ae21b23755effd63d7e6ae2785b426f2b0da052ba30df5bd4c2d44df9e5c583e44b56baaa8e6a91ed74dc2bbd7114921679257ecbc10e5773c70e95c17afc4bf51cd7b8e3233548bcf6f2d3a3ebf85317750e7c45f39c3fbe22222b75f3dfde0e575547b54a4f7d9079d51f47625ae4eecefc31d74021b4b9ece52eb00aa2b5aafe297b6fa4afd2c769037bc91b4b616991652764fc14b46a382efed5ba9670849ee713eef84815a2d7ba450e4bfd009c22e9abfe8fe938bee78faf98e87a7d59b3a51db226f4baeee98da5a2b4c8022b0b2055fc743e6d32cf1dab8b29775a6479adbf2f1a1d3d4486ebabe5e7dd311514bd46ff3c6ea86c6387ac8b13c6cb078e1d2293f461e0666f8ca480e81c8ed7b8dadfc2fa6f74736bd539fdb03bc682a29be70bf15b7f76c89a89afda753ddde98d29357a0effaac5cf57009a92369933bc85959c1679e59856d9d4cad65cfc12ad369567dcb1151a3923be32b3c3d68d9e6f571dcbb19a47fd7192cc6991bfe946724cadbe75f54ee28347c7577b5a64b53bd6821237ce6386488b1db6e6f461ba9bcedd95ded852a3e7c24f0c0452c54de4b821b2eab89610f24617e10156b66ee203889ecfc3def80acd10f9737c856687adabd75f4d85561dd349c7b5c8e3ee788913bd567acde2b5abc757ad3cc70f91ee3aa65ffbe32d2ec70e9147e2066c87ad1b7df0fa8e37bee4680f3b6648d8dcca02c84217e025ee824a8edc777abff03e2b5b57f1a366b521dce68fb3c8c89ab88114f94147792d9d18dea3631aa9f99ee61ffeb83b6f74be3faaf7ed34fd7544bc5676d9ea2ebeead7fbf52ddd985ff5c65d6ce467470d28c797cc3bbea5d522bff7c7991a59666501fc37c70d96a1fe424a8b36add5c70e95c156b614ec7be5e77be32d3ef2b836b129657915f946c70e961e3ab67df45a5cab1bcc2bfef89b387ace76ee7bc76b6197a5548e192a63747c7f70c75f7864993ea87fd80e5d0a1def756811f1c79b967a7e4b036828da0cee58ac8b267786c88956b254e286bcb8e34b8c22eeb80b8e36f1e527b44a573b7ce9c4c6bf78a86ca9e33c56efd95dfaebabde793474e243ce10b9339ea36ef8e3cbb6d9bdd1492db28e8ef742f73caa1239a6ac7f654eefd729fe985323b75b49006f479be3f6fe024a8d3c1e7f1a99952da5e3f5d579ed363b59a9af448e387a8c7cc40e5f5af15b36c70f91017a6d16e943d2b93af6076af5b0544c648d8ef7f78b878473f455fe42fd7dffb27c1bea9dc4cfdc583c5876d7cdff79ffbc0a4ec77b7c64be1dbe94e2b7d1741e3ee98e3f3543f83901c0db8a0d4837c5df1faf8b2577eaf8213929e2b73bf49cffee9e4315a24df711dd5c6794e9fbcc59c487b98e87821699acd7eb908e57a843e4d7fafb97bdf3ac4574a37f49c7f4ab389638a638b6b8d997e16f62a43a61b08cd7f3f98d779ed5881eebe9784c3b7ca9e943d13cef1cd223bf8f3dceca0278236d0a73fc85939821f28b46fa14aee307c9e77413b9c93d972a458ff7bb66784512bf9da20f07eb9e305406c7cf42d00d78b6deff6fe9f99da8e7b9547f7fab9ee73dfaebfd9a3f69fea6ffed59fd6f2bde703d5674fc3bfd6ff6ffdc6f7fe6d658a3a396d68cb5e331e2b1e231cbf8de8a54f15cf4dc96bfe15a543fba3e170f0a1bda104a2f3e2ceb987fe59e4b62628fb3b200fe2d7e4ff4f8c1f2d8f14374a1e488366bd1463dccca368cd864f495c677b4d1acf1ceab5ad163dea5d76cb80d039d843ec074d5fbbe2cae176f5e542b7abc93e21b616d180de3841619e19d4f72b4c795f9fd1f405d9c3844be7e822e90bcd105f6232bd990b4d18c3d61883ce59d5b553358ae5ccc0f30697ac7f497f5747e9da9f77b953b0faa145d972fe8c3ed241b4643d2f358fae6f3aa247a2df6b09200e2f7c5b4213de22d9694688379e9f8a1617d2bdbb0e2396893b8cb3bc76a46af9fe87db826bedab1a1a049c457fc3aa7ced2cd7fa577efab9ac1f2db139be0c3704e1c285fd06bf88a7b8e09d11aff38bb2d7cd0ca029ddb898365aa36889037da680eb1920d2fbe6b5c9bf551270e9135deb9563b7a2d7f71d29030b1d1de2c88ff74628b0cd37974a946bcfb5cede871cf6ea62f79ebba38dc3bcff4c8422b09745ef18d54ba187ee72f92ecd185f9ac369a8f5bd9a671fca0d0aa0f480f7be75c8b68037fe88441b280572c8d23be01f6c441f2159d377778f7b416d1f5f8441c830da9691c3b583ea5afe25778e79c12bd3e7fadf70f7502eaee8481b2dd89837551e48eec6f259bced13de5237a7ea768d310ffdc6b11794a1f048ed3e6c5e79a97d42943e4b37a9fbea1f3e40ffe3dac4d4e181496c6b1d8b09a8e5edf83bcf34e4f63fc5565a06a4e1a2c779da48b214ff495c6137193b4924d6bc91019a5e7fa57ef1ad432dab86ed3fb364d5f0d7dc886863a89aff6970c96f17a4f2ed6bce6ddaf9a65903ca369e837fa65a12f5afe47aff553ee35488afcae19fe2a2950919306852dfc8591165d8c9de65db5b1f968933dd3bb0eb58ebe8a59a1633969097f7ba0e6e21b4575033948afff23debda97de48ae3facada36bca6a73d671fff3a2466888cb39240e7b264905cb34417419e6803fc7b67fcfe747cd5a7e7fe90774dea11dd007eaf39e4e441d2d3868882e9c3dfbaba66beaef7fe56cd1aef3ed43a7acf9fd27938c386d869c4af7ee9b93fe65d93b4c8722b09741e270c913efe8248cc205960253b9df8812ada7c0fd06bf0b27b6dea16f9a38ee9306d907d6da8a8d0a983c2867a8ff7d46b799746fceb5d8fc81a1dcf29f14d7136d44ee7a481b2c8bf366989bdd04a029dc3c903e5ec9307859027bac93cc6bbd33bfecae0fafaca7b99778dea1dbd477fd2b12dd6fbbdf592b6f0511b32de46fc4c8c9387488b5eaf83f4bafdc2bba6f58eded3bb4e61d3eaf82ac09281f284778d52a235be6f2581e6b7b857f88436b897bdc5909481b29f95843a69808cd34de30feeb52a4174e358a9e3bb457ffd968e75083f18e5754b064837bd265fd78de032bd3ecf79d7ae1419284fea1867f2c6b5ff9fdeb703dd6b9510adf152ec895612686e270f965dbd85909481f2028be6ad96760def8f0f46a5de482c4b068515baa15c1ac77bcae030ba33dccf8eef1debc38f9ef72e7adee76bf37fccbb36a5ca4059a5e35cc27a7bab535ac327632f72af5b424e19288bac24d0dc7473faed2971d2e78a1c6de5e038bd5ff85fbdce47696379d9bf7ee58b8e57b499fe517ffda16e907be80342eb990df8a375ffade361acbf0c387980ccd7f97aa69ed7aff57eacf2cebd9c91353ade1feb03cba6764a70e87d5dec5fbf840c94fbac1cd0bc4e1d2c434fd5099f27da98567e6fa0ac6b25f10e4e6a9175f47a9da679cdbb968d106d8e7fd72cd77c4fb3cfc903c3974f1d285dcbf053e5e247369f3a4836d1ebbba58e6d77fdfd12cd35facf7fd67f5eed9d4f6344aed06bdccb4e13ef20be0747afd52aff3a664f7cef8795049a9336c673bdc99f9873ac1c323aad45bea84dea07dad8d738d7b341d3f10af5ef7a5ef76aaeea985b03e518fd752ffd756adc944f1b20fdf51556bfd38784cd4fe91f36d207d0cfc72fdbbef163a3e3efe3bfebf86ffaff9cd25f368b7f26fed9d306cb783dc6cea70d923db5de91fafbb33b36c741f273cddff438b91b7f99a2e7784b7c48b74b838c3ae69e733d5312e79695039a4f47931d202f9f3a50277c8e6853ee6125914837b7ee7a0f2ed68d6b8d776d49678dfcfce48132d6a60912e9baeae35fd784686fe47d16685afa8a693777e227449f926fb772c861c960d9589bfe297a3d5ff2ae33e90cd187c00172856efcfcf8e702e85abad3bfced973da00d9d5ca01cd451bcefda7c5499e27fd658a954301e29b05f5be1ca48de709f77a93a68b6efaaf684e8fdfeab0698002e81a9ae65defb4c86fad1cd03c4eef2f2da7eb04cf135d1c4ff1c13fd511afeb6983c2dcd307ca83deb5278d9fb87e74933ab8997f525f3dc5bfe2a9ebe769efdaa744efd1102b0934079dd4c77b933d25dac08eb172a892f8d3e5f4616d4bbdde4bf57aaf7cf33d208d18b953d7dfecd3fb850fdb6d4695e8b53ed6bf070919208bad1cd0f86c53f9fbe903e2e4ae2cdac0e4d441b28995440dc4578aa7f7933d4eeb2fbff7ee092971facb13ba668ed34d7f73bb9da881d8a362af72ef49d668af8c3dd34a028ded7b0365983bd113a28bea7a2b873ad0eb3f441bd399faeae405effe90fa471fd456ebfdb9527ffd8a6efcefb35b871a8bbdcabb3f2939b51f7f15134de27bfde584efe9a4ce135d543b5939d4d192aee1a367f497297a4f2fd1bcecdd2b52cbc81a7d30bb4bb3f7997d641dbb4da8a3d8abfc7b9510ed99560e685cf14b59670c90c7ced0495d79e485f37aca47ac244a22de9333078689ba09fd581bd6f3febd234547aff56a7d08bb517f5dc4a65f3e715de89a78d1bb7799c3b701d00ce297ffdd099e105d4ce759399454fc5b04fa2a74dbeff50fe7e8c6f48c771f499ec8ab7a5dafd0f5342bfed54dbbec28a9d8b3fcfb983db1775a39a031e94238c99bdc6991f1560e0da0e3ab3e8342bf3306ca3774d3ba56efdf4bfe7d256f97f82a5ff38b33fa8723cee8276378077f63893dcbbbaf49e92f275a39a0f1c48d409bd8e3eee4ce98f8e7974e0cefb1926840276c2c1f38a35fd8421bda219abb34abbc7bddd9a373fdf7ba712cd187e6ede3c766dbe543036a6f0befd579fe84779fb3471ee3db00685867f597b633fb879027faeae7782b8726117fc4ef990364f899fd64cf33fbcb0ff5d73f68b314effe376bf47cffa1e77d999e7ffbf7faca84b30784b5ecf2a049e8bd3dc1bbf749d17562e580c61217c0593a89f34417407f2b8726767abff0f133fbca089d33fbe8c6f8e3b3fac9fdfa00f9aa37271a297a2eabf55cfeace9d8eccfd2cdfeb4beb2b69d369a98be7819e8cd8994e89c39ceca018d459bdf1fbd499d3df28895422714bffc79661fd940e7c268dd3817e87c38366ea49a07b531ae7ceb7ca94fe226afe37958738dfe7e898e73777d98d95aff79b3a55dc3fbed74d0c98477852e3a1ffeeecd99cce9c7cf0640033aa7af7cd19dd0499193ac1cf01667f596cf9c3550baea3c69fb7e7fd9419bedaebae97e47fff954cd25da3c6fd079744f47fac91ff4bfff49fffd3f34cfeaef9ffbf73c7bfdf7f2ace631fb7f1efa7f7faebfdca4357faa39437f7f88febadb197d65a73307c8a8eff7951ef1d57cfc7eaf0d09f80f3a5f4ef9f73cab34fc554f341c7dc5f6756f32a7445f45f1f3c901342c7d481ce7f5b6a4f493a9560e680c3a69aff97ebf107264055f3e05d0c8e2df80d11743cf39fd2d2172be9503ca2f4e7a7df27df96c9dbc954627fd85560e001a96f6b3a56fee6f49e92bff8cef27b07240b99dd34786bb133921fa00c167ff036878ba814ff67a5c4aceea2dbdac1c506eba79b77b933873facaaab37b854f58390068583fec113ea93d71b5dbebb2a6afec63e58072d3c97acb397d43a8387de42e2b05000defec3e72b7dbebb2a68f5c67a580f2ba70b07ce89cbef2aa3b89334617cb77ad1c00343cddc00ff77a5dd6684f7c39f6562b0794d3d9fdc216e7ea84cd139deca3ac1c0034bcf3fac918afd7a524beb7caca01e5a4affef7f7266fe6f4915778d205d04ce24f733cb7afbceaf6bcace9237b5a39a09cf401e03277f2664d1f596ea500a069e803c02d6ecfcb9a3efcd5689458fcbbaae7f591a7cfd3c95a71fac881560e009ac6797da5dded7919a30f107fb65240f9fca0bf6ce64ddc949cdd4f865a3900681ae7f69636afe7a524fefc0b2b0794cb79bd65ea0ffa8450717acb6b67b7850f5a3900681af17d00da2357b9bd2f63f421622b2b07948b6ee0c77993366bceeb1deeb15200d074ceeb23bff27a5f42be6da58072d1c9bddc99b099a34fc7a7592900683ada23bfe7f5beec912bad14501ef10d80e7f796e7ced7495a697472cfb47200d074b447cef27a5fd6688f7cd24a01e5f1c3deb289376193d2577a583900683a3fea233dddde9790f37aca17ac1c500ee7f794affcb0770895469f8c5f583a31bcc7ca0140d3893d4e5f2cbde8f5c0acf9412fd9deca01e5707e2f39d09bacd923b75a2900685ab1d7f93d306b647f2b0594c30f7bc98f7ea493b3d2e8a45e62a500a069fda8979cecf5c0acd15efb432b0594834ecadf7893356bf40160a1950280a6a50f008bbc1e983df22b2b05d45ffcbe964eea57fcc99a2d17f40a5b583900685ae7f792115e0fcc1a7db1f572fbbbc2bbad1c505f3fec1136ba4027669efca8bb7cceca0140d35a3a20ace5f5c0a4f40a1b5a39a0be7edc3b8c762769d6f492a7ad140034bd0b7acbb36e2fcc9a3e32ca4a01f5f5e35e32efc7bd42a834fa00709b950280a677414fb9ddeb855973612f9963a580fafa71cf70843749b34617031f010ca0d3d09ef73daf17668f1c6ea580fad20780a5fe24cd960b7ac93e560a009a9ef6bc6f7abd306bf401e2422b05d4d7853de51717eaa4ac343fee2993ac140034bd0b7bcb4e5e2fcc9c9ef2732b05d4d7853de4b1a53d43a834177593162b05004d4ffb5eeb9bfb60527ac83fac14503fcbdbc27b97f69435ee24cd980bbac97a560e009adec57d6403af17668dbee85ac5cf4e41ddc5cddb9ba059c34406d0d9c4174edafb567b3d316b7ed257d6b672407d5cd453067993336b2eec298f582900e83496f694bf793d316b2eea2efdad14501ffa00f0958be264ac343df80c00009d8f3e00dce1f6c48cb9b0876c6ba580fa58da43665fac93b1e2f4e0afb300e87cb4ff2d7d4b3f4cc8d2ee32c34a01f5715177f9a6373933a7879c6aa500a0d3b8a8a79ceef6c4cc91bdac14501fba811f7d710f9d8c15461f200eb55200d0695cd4430ef77a62428eb052407de803c059cec4cc9eee3cc502e87c2eea267bbb3d316bbacb19560aa88f9ff4904b7ea293b1d25cd45d665a2900e8342eee26b3bc9e9835fae26b999502eae327dde586653a192bcd25ddc397ad1400741acbbac957bc9e9835fae2eb5a2b05d4874ec23bbdc99939dda5cd4a0140a771713719e1f6c48cd1175ffc156ad4d74fbac97dcbbaeb84ac301775979e560a003a0ded9dbdbc9e9835b1f75a29a03e7412fec59b9c99d35336b55200d069fcb4ab74757b62c6fca4bb3c6ca580fab8a49b3c71894ec64a7359d7b0be9502804e23f63eaf27668f3c66a580faf869b7b0e2a73a192b0d0f00003aa3d8fbbc9e9839da7bad14501f791f00aee8113e69a500a0d358b6b97cdaeb8999c30300eaed926ef29c4ec438192bcad27ee1e3560a003a8dd8fbbc9e98395d7900409db9133321d7f6948f582900e83462eff37a62f6c81a2b05d4c7a53a11f3c4ca0040a7e3f5c4945819a03e2ed34998275606003a1daf27a6c4ca00f5e14dca94581900e874bc9e98122b03d487372953626500a0d3f17a624aac0c501f97770d214fac0c00743a5e4f4c899501eac39b9429b13200d0e9783d31255606a88f2b7412e6899501804ec7eb8929b132407d789332255606003a1daf27a6c4ca00f5e14dca94581900e874bc9e98122b03d4c7955f0a214fac0c00743a5e4f4c899501eac39b9429b13200d0e9783d31255606a88fab7412e6899501804ec7eb8929b132407d789332255606003a1daf27a6c4ca00f571b54ec23cb13200d0e9783d31255606a80f6f52a6c4ca0040a7e3f5c4945819a03ebc4999122b03009d8ed71353626580fab866f310f2c4ca0040a7e3f5c4945819a03ebc4999122b535ade985362650054c05b5329b132a5e58d39255606a88f6b7512e68995292d6fcc29b132002ae0ada9945899d2f2c69c122b03d48737295362654acb1b734aac0c800a786b2a2556a6b4bc31a7c4ca00f5e14dca945899d2f2c69c122b03a002de9a4a8995292d6fcc29b132407d5cb759087962654acb1b734aac0c800a786b2a2556a6b4bc31a7c4ca00f5e14dca945899d2f2c69c122b03a002de9a4a8995292d6fcc29b132407d5caf93304fac4c6979634e89950150016f4da5c4ca949637e6945819a03ebc4999122b535ade985362650054c05b5329b132a5e58d39255606a80f6f52a6c4ca949637e69458190015f0d6544aac4c6979634e899501eae3864d43c8132b535ade985362650054c05b5329b132a5e58d39255606a88f1b7512e68995292d6fcc29b132002ae0ada9945899d2f2c69c122b03d48737295362654acb1b734aac0c800a786b2a2556a6b4bc31a7c4ca00f5e14dca945899d2f2c69c122b03a002de9a4a8995292d6fcc29b132407d7893322556a6b4bc31a7c4ca00a880b7a65262654acb1b734aac0c501f37e924cc132b535ade985362650054c05b5329b132a5e58d39255606a88fe59b84902756a6b4bc31a7c4ca00a880b7a65262654acb1b734aac0c501fdea424841052fd581b06eac39b94841042aa1f6bc3407d789392104248f5636d18a88f9b7512124208a97dac0d03f571cbc621104208a97dac0d03f5e14d4a420821d58fb561a03ebc49490821a4fab1360cd4873729092184543fd68681fab8552721218490dac7da30501fb7e92424841052fb581b06eac39b94841042aa1f6bc3407ddcf6459d888410426a1e6bc3407d789392104248f5636d18a88fdb7512124208a97dac0d03f571874e42420821b58fb561a03ebc49490821a4fab1360c00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000400dbdeb5dff1fd645c2b43a7d75340000000049454e44ae426082, 'Hai', 'Dang', 0, '123', '1912-11-06', '01', '123', '12', '001', '1', '1', '12', '12', '12', '12', '1', '1', '1912-11-06', '01', '01', 1, '1', '12', '12', '12');
INSERT INTO `nhanvien` (`MaNV`, `img`, `HoDem`, `Ten`, `GioiTinh`, `STK`, `NgaySinh`, `NoiSinh`, `MST`, `TamTru`, `QuanHuyen`, `QuocTich`, `TTHonNhan`, `DienThoai`, `DiDong`, `Email`, `CMND`, `VanHoa`, `TrinhDoHV`, `NgayCap`, `NoiCap`, `NguyenQuan`, `DanToc`, `TonGiao`, `ThuongTru`, `HoKhau`, `GhiChu`) VALUES
(431, 0xffd8ffe000104a46494600010200000100010000ffed009c50686f746f73686f7020332e30003842494d04040000000000801c026700143159704e5a78576f4a4a354f6e48524e337a31521c0228006246424d4430313030306162653033303030303432313230303030383131623030303036383163303030303836316430303030346432303030303066333264303030303565333230303030366533343030303064393336303030303166356230303030ffe2021c4943435f50524f46494c450001010000020c6c636d73021000006d6e74725247422058595a2007dc00010019000300290039616373704150504c0000000000000000000000000000000000000000000000000000f6d6000100000000d32d6c636d7300000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000a64657363000000fc0000005e637072740000015c0000000b777470740000016800000014626b70740000017c000000147258595a00000190000000146758595a000001a4000000146258595a000001b80000001472545243000001cc0000004067545243000001cc0000004062545243000001cc0000004064657363000000000000000363320000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000074657874000000004642000058595a20000000000000f6d6000100000000d32d58595a20000000000000031600000333000002a458595a200000000000006fa2000038f50000039058595a2000000000000062990000b785000018da58595a2000000000000024a000000f840000b6cf63757276000000000000001a000000cb01c903630592086b0bf6103f15511b3421f1299032183b92460551775ded6b707a0589b19a7cac69bf7dd3c3e930ffffffdb004300090607080706090808080a0a090b0e170f0e0d0d0e1c14151117221e2323211e2020252a352d2527322820202e3f2f3237393c3c3c242d4246413a46353b3c39ffdb0043010a0a0a0e0c0e1b0f0f1b392620263939393939393939393939393939393939393939393939393939393939393939393939393939393939393939393939393939ffc20011080259025903002200011101021101ffc4001b00000301010101010000000000000000000001020304050607ffc4001801010101010100000000000000000000000001020304ffc4001801010101010100000000000000000000000001020304ffda000c03000001110211000001fb733c64eb3cec25f60f9fc13e98f90c0fb63e039e3f43cbf3b83f40e7f8567d8f3fca87d072f908ece3956022d454510c0091a4e84d0200241a4c400390686260206000ea19480a72e01a0006994021a6a0681b4c7ae5ae6fd97a1e7fa2880af879c4cb559956f3468a0ab2116405ca60855493812004512c126810e92608684804009881a069b218c408626000980081b9636916e2c1a626000021c26995ae5ae6fd97a1c1de80d57e784b192144b1891448524a9b4009808189d0840c98605260a20449a130126843426d88608012680001a010000300006e196e5948200626806995ae5ae6fd9f7f0f720995f9c898340c4c015000021800000001343103006989a040086081027203409a1821a4c06843434009821a1a01a6806054b29a7000000302b6c7597ed3bb8bb6400afce40004ada689328000188000006aa41898c13409809821a01020624c12612db24a0828549a40010d0d002602608600000c6d38600000d32b6c7697ed7b38fb2400afce40500401893141ab018098260135343000412d0003006982001008188100980d28800420c04a90210c40c4c04c0681a6313280806526115be1bcbf6bd7c9d720057e70e4284c001a1144b1922d092510eaa5940009a1300004c048043622908244005002486910c153103004008000060003130069942634015341d186d97dbf572f540995f9bb01260098d36a86c436218886aa5800149391b01310d304c042144d2254134029a904c81340028000d58d00868000698dcd026906856d31803132b6c76c3ee3a79fa0132bf386d000a95348a12d39a130189a11520354432d4da4620693504c1340800189a013509304eaa5ccd03234082c216a88573648d582680682a6869a134c2905000d32b7c37c3ee3a39fa00157e78a900c13612a9999681c8b40d26131a452a4ed4860980321020402608345ad2201d44bd6a6a35ade6b07d2e6b8ceb94e35d28c0de6ce7cbab2b3056b5881ab01821a069830000a00600fa30df2fb9df0de01aafcf44e504c62609aa13a337a1178d675934ac2a41a4d68542639514ccdd041ab970371705d01856ad72d36bcd9d36bceb2d75a972354b92d51865d39262b55673e7d19ea7367d196b9e6b49d6641a4a652698c0068284c6015bf3f465f75b63b434d57c11666c1a0666810b52b3342337a0658f5f2560956a4920ea5ad546d297779e993d1cb956b5191bb5e75d2182e9673def72e5a6952c5b6a8641170219519eb1192d26ccb3d62e70cba72de709d33d73969ea29b9440c010c4c6d31830e8e7e9cbee76c76869aaf8a3531ac4d9991b0626e18bd99856a18f9becf8fa9cc069202153aad7563d3cfa555563ae6f414a7710f46666a8876134500310c05413179aa0544b5229a462aa6e73cb7cb59c32d73df2cdcbd410ec90000154d0d8c018fa79ba32fb9db2d6009af9764e354f183a572667a079b327a8fc656fb53e209ecf8f315087b90db0d73da6b6e8c7a79f5aa578e814d4a543a4c06c92922603698840d39559de624aa86d44cde69135364e5ae7acf3e5be3be794dceb002b00400054b2c4c6e595d3cdd397dceb96b04d457e7afbef1af36bbc4e15dc2f11d81cd7d16615d5b49c5c5f41cfa7cec6996cd825eb8eb35d3d5cbd5cfb55cbc74b1b0a4e1b416485098260aa4a400202674933a608724cd4267371629b9ac71e9cf58e6cfa31d73896b780100036a86d036995d1cfd387dceb9e80a957cc6bf6e73bf1fd1f5135e1f4fa38c47472f39eabf0b9abe9cf90e73edfc9f95e63cbcb5cfa0012ba39fa33be9e8c76e5dadcd4de9516ac2a4963136c54020040a9b4c828255a206113798a2a114b2c9552939dcea6587467ac734d4ef989ab00615343062a965f4f2f4e5f77a67a40057cef3788b17d5c38a4e99c0ad0ccad5641aacd1acc144d4d8811a7572f7e3aedacdf2ec305ad31d57472e46d31b000043091948a625413350098919e999117352090926c535364e5ac5cf365b63d39a6162608e9a0681805757374e5f75a45c0355f9a0d2d12530624e50690c4c6815cb12411b7a7e67abcfb55c5f3ecc4e0b8bb74b8b0a5520c62621a10014dca4a241c916330e6b3b79f933b9e95caaba0c88e8596928a911173673e1d3cfd39a4d6b2a9597379c0058c02fa79ba72fbca9a869aafcd00a00004ac4200c001a6098cc95c9b7a9e67a9cfbd34b1d2c98377cad3b74e1dd3a5f3d2ecf1668b9d4bd2b26ba49039e78b9db18e7b9e8c73359a87a58a75a8c5ee9733452cb6280e2234ceb2c3a39f7cb3037976ac52c91014da0aeae6e9cbef2a686267e64050d00003010d000372c62292a9977f57caf579f626963a6396af59c277cee22848014ea2a5d75cb4cef6d31d73ab905c32e8cee7176ac8579d9779525cc73d9d11cecd4ca975a9d6545a9738b8b32c3a30df3c40de2f5cee21020053682fab97ab2fbc698d347e66d1a004800a000d00d300104c5019a7ade57a9cfbb54b1d331cd95582b9e85cd09d39e57615852f456579d69ae3b4d53aa979f3df2331c5cc25b6b39f27d5f9bac79196dba5e1e871cd72eead74d15675334a5cf3d32d673e7e8e7df3cc1eb17714414d21d1498cae9e6e9cbeeda6001f9981a09a181002180000c4e80206836f53c8f5b9f7aa9be7d32c7aa2ce2c7a0d676d3a7aee7e727b39ae73f4b725e1d67ab3d32d5ce75d571aaf3e1d3ca25776716ee2ceb390b3688991e4c58e9bd97136ca5c66e532c76c759cf0db2df2cde8590ee2c065886034cbe9e5ebcbeec0000fccc468340c40d340d3801880a6270035bf5327cbb6f73a63a28d438e7ab1d47ae346d3106d38e869b3b972cf5897a36c3730e6ebe62358a4bcb6671476aae3ae9a4c36d345834888c76c4cb3d72b32c75c778cf3b9d736cb0c3a39ac1c9acd12144b34ece2eccbef000047e66834690372c64b18829270c153050da17d613e5df6d71d71bd2968b33b09c99f7c570d75063b55c4abcd653b34d66cc30eae78cd8ab4acb41baa337a249604cdc9945e66796996b3961b73eb12d3d67a5e5ce6bc8d6b00160c02932fb787bb2fbc4d0261f9836692db24a04a812a9154d82a50031305efdd6dc7bceb8ed9dedae5acba54d0959599a043b933c6f02b6c3a8d5b4658ed99cd9de65ebc7aa76e9cdbad821201456646559a465a65ace58eb96b9ce3b61bc489dc805300600dcb2fd0f3fd0cbee93434d1f993468310c40c40e6a42a6801c2754b2c0f43d0f0bdfe5db934231be8db9f56b6bcee1b01b4ad33ac0cb03ad0e9c75367983c9e464ad9cb8f57227474f1f4af410c689166f3272bcae673d32d671cee3589e7db1df30b9b10030600874995e879fe8e5f729a1a03f2f24d2890a90189944daad8b25b98092984854a97a7d0f1bd3e7d3b75c36e7d76d31b5d1c38a879da73eb898f7726a9b471f1d9ed9c5474734f19e869e2f79ae46e556aa51c852522870919d67acac74cb598cef3d6334def993b65509a86d306980157e8f9de961f732d0007e5a35a030436696dac3a91b96396842436984b5075f1e935ec6dcdb71efbe98dcbab816a5214d5938f5a3cccbd4cace7ae8d0e3bd91c73d7467d4584dc44272a489273acea61c5cce779eb318e98eb9aa9d3a73acfa70310146886d036995e9f99ea65f6c9a000fcc06688612dd13ab4b49304d0a6e402813428681047afd3e5fa3cbbef78e98dea435a103d73d0a9334794ab2ef1d05172b25e0cf4ebcd4bd138334cdcca4b8262b3b2645acce3795c46379f4c56d8f46b9edc9d5ceb800a3081a614995e979de9e5f6b3523107e66828630d6351262c1515484343063266a052d0038af5fc8efcefb6a2b976d5e772db8a5a712979e4eab5cf2b3b73e7d16b5cf9e3a72e7cebad715a6d1329d5a72f44ae1a58cef2b14117139d65bcc45ceb9ded9f46f1bf1f5f29cc9a9a1a6307034eabd4f33d3c3ed66a406abf3402063aba816920682a4686d58952266a48002d50bdbf37d7b3974e3e8e3db7bcab1d74138596b808c2359a5bddd626d9b531b59cabd213cd5e84b3c3a6f699ead6692424e75958b32378336592a96b1aeb9edbc5f375729cc9a9469ad000c12fd3f33d3c5fb59a91a6abf354d0ea6c062a54548d0802d80824130cc6149a4f43d2ccde7cca9aceba6f0ae3dfa6b9f4c74d21b84b48a5ae175d4616de8f30bc672b0814cd6b1725412939de5519de3ac2865c8a95405eb1a6f2fa634e3ece638c666802b6980097e9f99ea62fda4d48015f9aa687a45801689a04d0c9b04d92a908102683ab97d9b37e3eac359cb2ebe03bf9e74c69e9c7d3c7d1d1795675aca1623783397013575856b467a69510aa499a8656558eb33906b2d80954d91bf3f66f9dc37bc6f17a1e21a679d30251a600557abe57ad87d9cd4d001f9aa68ab96ac4e84021a10e0cd502b946af1b2812757bdc9b6b3c6f3edb3970a4b91d1e7c61d9c8b1d3dbbf33d0e5db47359d5d0e5935a5c9da44aa889d20cf3d33b233ac3599c1ceb052a100a45c5cbebcba7af2cd52d66f7e5ec3cbe7ede2ce814e6b10539a2bd7f23d8cbec5354007e6a01622d60000080269125210d12b4945ddc3d95eef16b173974d2d4e6c7bb965e5a40f87d5a97c4ede68e7bf6b5e1e8e5dbab4e6d73bd9e41a1906866179ac879c61ac5f38b79543131a09a54e3ab583a71dbaf2c939b177e791af89d7c39d269ca31c02b4bf5bc9f5f37ec13400abf366c56229881880001304004d210d095165fabe34d9f47e87cff00a563e3eee039b6e7e94e82518795ecf2e75874f9fdbcfaeda6263a749cb2bd67224ec5c7275e38bb01962180c04c041293d51d1d7921746b171b72d1c0f8f3581343028642b9a2fd6f27d7cbebd3409aafcdc4ed620600000260002612c049a00110153a4cc9ebe3e7695ec74f3bd67975cb42a3ab35f3b9fd1e0c6faab93a79f569a944c485736cb001a462600c40852756b9b66bd792a8e13bf930e794072b192aa554260c08d3d7f23d7cbebd3409aafcde955218a26c90620049a06800629a409a103452d0001ed787ed58f69e8de71968c71e952f91bccf3e9d5595e3a302096ad48001a00868412eee77ba8edc58f92b9b20c51a728140c01a6269d373717eb793ebe5f5c9a04c3fffc4002d10000201020405030501010101000000000001020311101220300421323340051331223441506014234224ffda0008010000010502d9b99e23e22921f19410fd46821faa531faa8fd4eab25c7d7929f11564393782fd944e07a71738a1f11490f8da087ea3450fd4e04bd507ea7507ea35d8f8caec75eab1ce45de8b97d4f9afd847e782e9c7dc9199972e5f0b972ffbf89c17468be8bff050382e8fe2a3f3c1747f151382edff00150f9e0bb5fc543e783ed7f150f9e0fb5fc543ab83ed7f150f9e13b3fc553eae13b3fc543ab84eceddcb97fdec3e785eceedb45bf730eae1bb3fc543ab86ecfec2de553f9e1bb3facb162c58b16c2de3d3eae1bb3e0bf22c584848ca6532962d85b06bc4453eae1fb3bb6d0fe7c7b16144512c58b162da5af129f570fd9dbe45d173f3eda64965f0ec58b6290a2288a258b162c58b16d0c7e1d3eae1fb3a799ccb332994ca8b22d8d896f58b162c58b162c58b0a0288916d4f53f0e9f550ecef5b0abb362c5b0b16c2c58b162c651445112b0b758c7e153eaa1d9f02bec4509162c58b162c58ca58b0a25851f098fc1a7d543b1aac5b0b609162c58b15faf52228b162c58b162c58b162c5b69edb1f814faa87631b162c58b16c2c58b162c58e2394f4a121636f09ec3c58fc1a7d747b23c2c58b68b69ba33c0acef534a222dab6dbd878b18fc0a5d747b38dd19e28f7607fa2087c4c4ff49fe991ef543ddaaccd50facca28225a5088885e23d878b18fc0a5d547b38e432195194b1c8e586591edd43d9aa7f9ea1fe6657865d4888bcd7a5a2dbf4bae97671ff003553fcd23d881edd047ff323dde1d1fe8823fd323dde2245b8d91fe6e3642f4ee2d8bd22a338bf4e951a2f4a222fd0b18c7bd4baa976715e9fc6485e91598bd188fa35223e95c3223e9fc3445c2d042a7045969f528e6e1b422244582fd0b1ef52eaa7dad5746788f88a487c65043f51e1d0fd52912f5643f5598fd4eb0fd42bb25c5549a97ce28891c57e898f7697553ed632f54ac4bd478863e36b31f11519ee333172e5cb97d0f42222fd2b1eed2eaa7dac6e5f0b972e5f723f305fa663d4b5d2f9a7dad37f02991d4bc5b8e46633198b97d4f4ad8a7d50edf8b4be578972e5cb8e487225507363932e5f658f42d8a7d50edf8b4be56ab8b5df45cb8d8e761d51d63dc6ccecf92d858b162c5b531e843d74fe61dbdbbed52ea5a3358cc5c5314cce6633198733317c58cb8cb194b0916328a258b6cb1e285b14baa3dbf168f5ac64f45cbb3333319cce265c58b1ac6da39172e666666662fad8f18ecd3f98f478b47ab45868b162ccb194ca288960b43d372c5e113dc64aac8533399857122da18c9631d9a7d51e8f169771636c6c72390ec722fa1687a197b0a33a838d98ca74ff00e7289610b53258a1ebb1497d4ba7c5a7d6b45ccc7333243a884e45da332c16084245868b632794a54f3b824a3c551cc3a73bd2a0ef37c9e090916c58c63c56cd2ea5d3e2229f5e2c63763ea652a08e2697d1f8211f7273a39522c5842c1e162c7b6db82944f7247b8cce5de0c48512da58c7b94bad74f8abab434491145367271abc3b42a336518c28aa952e64939631c24316372f8b65c51144b60f1631e09616d9a3d7f8f1728be162c90b05268ce5ccc872136c487847090c58b8994b332b328a08512d8bc58f53d8a3d5f8f1109264458d868712f62e5cb9f228918e88e121e9b1632962c5b43c58f1b1970785f4a2875fe3c55d0b4d8b0e264320a06512d31c243d76d4c78318f0896c26f611c3f73c6e19de1ffa42d362c58b162da10b07b16d4f06318f08f2338ea6d70ddcf1b8618842168b6162c5878ac58f0b898b65e2c78cb6d1c3773c6e157fcc8e085b0c6c6c88b163245b04c4c5a98f0783c5eda385ee78962c70a651f29a10b619262fa9c45a2434589444223a9e0f063c5fcedf0bdd7e15b4427924a5755c422fb1225f31564265ccc5c6f191f942d2f063c18f45b691c2775e9b97d9b16d6a7388aacdb87c210b4dc6498bad0ccc5cb8e43991a91330c5f36d6f43c1e87f3b3c2775eea8b625b74ddd216cd8b952a485565994eeb30e44d663dae71f86ca71d97831e0f44b651c2775ed25bf41f242d6f0b0d586f08c470140711c0f6d90a7612d863d2f0584b651c1f79ecaf0293b4d0b612c5c51945a96eb18c42f927f1b3c1775f954ddd216d363d2f08bde63c21f24fe3611c1779ecd8b781c3c85827b0e43784715f2c7f372e5ccc5f4bc58c63c2184fa76782ef3d95e0c7938bbecb9172c58ca3be1188e513322e3c3309e978b1e288fc93e8d9e07befcafc53e515adb2e44cd633b33315467b839b65c6cb998cd845eb7aa99726fe8d9e07bef617856cd28257f87a9b2e66b0e57148cc662e5cb9cccacc8cf6c54da12d0f43c7f382454e9d84703df7ad6cad858505f5461f44a5f5a7aa434d9ed315289ed44f64f68f608d047b56326cbd68444b13e9d84703f70f5ad95b2ca31fa26ed122cbe0b42431084f1bf2bf26c6f15a18c7a90b19f46cf01f70fc9b5e54b93aad31f2227c1713d2f04cb972e661c8be2b43c1eb4457217326be8d9f4ff00b87f3e470cb9e4cb06f9d5e9a7b2cb998f70f74f74f71976cb096a6c7ad631271daf4ffb87a96df2d8a54ed194c87d4555f4c19989fc29fd49eaca65321ed9ed990512dadbd84ac96148a84d5a7b1e9ddf7a96cb65cb973317d1415e54f946b3bba7c95464617249c5dcfcd3a827aac58b162c5b531bd6c82bbb631e4e7d15be763d3bee1efbc2da13c614e2a337ca3d44fe53ca5f94af970a5504f1582d8631b1b1bd7f25388be308fcafac9afa35a3d3bee1f8c8e195e74b9d3ad2e691124b9b5725d4bea94e9e625171652a82782d772e365c63917d88fd31a69a7044b0652e9924ea4b94b523d3bee1f8fc34d464ea28c69a5394e1cd2ca72c3ff1488abb9453271c928bb11626262785cb972e5cb8d8d8e5b2c8daebaef694991571c524a4c9d6d9f4efb87f3e3c2a3894649aa53bced72a479d648725ee38345326ae38a64965953960a429998cc6633198cc671ccbbdafcc1739997e9cbc9f257722b54bed7a77dc3f9f239a74b894c59a03e655790a0964b4a99143912251cc95e2e2efb17dc6410b912e453e889377756765b5e9df70fcb8549d323c5418e4eb468d3baa96b465965f2cc8568dd42427e1fcbc2df452fa57393ab5b6d1e9df70fcda751d3952aea64ddc68a635848aa91090bc28c72afca1b4875de69d59cb77d3bee5f9d16e2d7d718a3297c2465e4f938b13f0210cb84472494e6e6f7161e9bf73a1797c276a97c1f925856f988b7e9758c7dbe23e34adaf4dfb97a3ffc4001e11000300030101000300000000000000000001110220401030125080ffda0008010211013f01fe44842109fa0842108420d744210842108426cd7322108421084f831f2e2427d98f9118f0b5c88c7860d71a31e27c788b898f8b0fa5294babe2c3ca7e45294ba5f66d97161badeeac7c586b4a2d5f909a31f161a42090b5842109eb1f163ec2109f57ebe0c7898fca37c18f1318f8b17c6c7c54c5f0b1f2622e063e5c5fcaecc7cb8be063e5a6396a88426afd7cc998e5a2f83f5f23f71c84fe4f4cba31627f0ba31fab9518b13d9bd5f523165294a5d9beb4c4fe393edc58b763fa7fffc4001e11000203000301010100000000000000000001112030021040501221ffda0008010111013f01924fd1fa3f44b3fa43208f531750411f058be2b17c562f8afe33f8cfe33f4493abf34924924922793f04924924924dd62c582ac924924924e2b178aa3f02160ed1663f02160eb24924d18fc285762ea3bfe753463f121598bafc9f93f2410451f9159e9cb4820822aacf4e5dc10411b71b3d395de885662cf9563a7a2159e9cba5dcf4ed36577a72b4eabb547a3f1aea0547a72f1210acf4e4bc8acf56b28ba10acf563f0abbd9f810aef66bc2aef7e4b55dabbdda1add5deabb686b254577aaa343582a2176e8f555686ac9578e0f55563441041045b8aee6afc6d65c575377e05478210f07dfffc4002b1000010105070403010101000000000000010002112131401020303250607103124151228191613362ffda0008010000063f02c2cc1670b3a9a832a0c2839665168a99d55bb916828b61675e54192a0c2800a6b39598a9d9e75c6ee4f6437b31ad96135b31ae76584d73b2c728f3b2c23cecb0bef6585f7b2c6cc1b306cc1b3021b2c21b2c21b2c21b2d942833281d68266ec94ad9ec2099d961334206b4133b2c26284eb4ca671a6a6a689d682678b935353b24b2acb6e6598eba131c5c9e0656bf165525e028f5029bf5a098e2e4d951ea05f2eb051ea2f6b2a874c2830a1d23f8a1d36bf1653fab300be5d41f8bbbbbb9dad04c71722d0fd51ea051eaa8b6d2913f6bfcc2874d9fc594295d6a3ad04c7181982ce1670a6a00a832a002f0b3a734d1d682638b9072ccb3959ca99d86131c6cb098e36633c6cc678d98cf1b319e3539295433c69f051b3e2cd484cd30aa828a9d91a815d35252510317fb6bd9524f693a9c214c30229e2c2804f1a40429860b97c57a5fd4e010768e10a67eac29beb5614c0eaa10a676ac298eaa10dc459b1d8bfcd1853829e993a98a881519524c578aa7e2c14468839aa3493ae1b08610ab1a38c266ac8d1c6133a6469bef0856027ce2cd45494e91f882ac33ed393a86564d4e84e13357dfe194ff0038513a3335619f7a3fde10aa0113a3b5842a9a6fd21a3b43de10aa0c7ede0176e820a230454f71932b950ba5af49e9c741070454382edf579e543cdae3530bafb08f5822a1fe9771400b8e5daa1e17fd2735638d43fc9b0dd288c0150e6a4538c194ff00170945af26d7369de2a7842ebbc2219fdc1152e31653fa67e939a81b1de10010644827dbda538d4940daef0bb599610aa789a77547daee61aee09fdc89f2572a6f09e2d7794ea6fed82c72705d8cfde8ff00130f4be61c512046c72778b9fd14b0b4be767a0bb58c415cf0be37fb853bcc93c497ac515ef0bbaa7fb6bcc93fc69e6f8a514bffc4002710000201040201050101010101000000000001111020213130416140517181a191b1c150e1ffda0008010000013f21e182db1a77fd0d87f53a68f2133fa14d8c744a859827d1d30c9095f64bc935e5ff004d92268d9dd649b669364d27853b31e83a7c9fa97f966987d9ff006d9bb4fa354d85b6864c287f43e871845f0a9e771fd8dedffa4dd933b631de49a189b1b1b0be86ccd26c9e08e3924926c9e646af93f75606dedfd1b36c9d1e44a5a3c8f01bb249249b26c9a3e7924c11ec451566d55924c89f2a3a7c9fb2c9a24924c9924d924dabe4927823972acfaf52846cbe4fd36489d66936493e4913e062b3ba3e093a2057472c89d170a3f41b5e6c924926ccdb3c0dd7bf52b8d5170a375f3624527d0cd36e9bf4324fa442e147eaf440ee6c54d7a0920d7ae5ea139fa68208f48b811fabd323e58e08b629d7a947e836fcbd2b15924d15b923ff00015e8fdc6ee175c5173a4117c936bffc2fd47fa593cf23b591645649a6f8a6b3ea108fda7fa5904b2692bee92895440d89a64cf04dce91649344ae9f54a9fb8ff57742322fda41041144522a9eae574713749f5a847ed35fcbb6083e689899045ef76c9dd22f9e28e38f468fda7ea77b208342a2a6eb316b744a936493c52ed82288208f4c8fd47eae0822d826f7ec452456ae54aee488a2081ae044daad47e9bd41064e8822a9d9a09cd1b3ba3304fa12305052a214b114450688e5573f5f138a45209560cfc4e89a689e79a4094882393543e15df8d11040d0d507ba3a45ab8509fd2e71660831ee369d9e622c9f6113288f749ff49c13248df2411510484a9218ca29ac0f0187434342094688abbd5a8fd76a6fc19f7508f6a3dd62643e4cd9b3c443d883265b30b249b60820810f8df629b81191f810a82104530450d1034343420d11c8ac47ebbb410e29148208c09608a2219825e4ea8dc313a2268aa228422b644eda61082563b18c81d08251d5daef47eb3f159041042208a41041148a0925a3dec597700547e15312620cc8848812b5d8e8c6343522083a21f223f69f82c8208a24451150abb2f0547621318308ac05e15152549048484b94c7b18c66d7a6d5623f79f82b36caa117212090a68d55216b52228812a411444739d8631287c485623f61f9ed2144104510408c2da1e30d5b593dbca37e0faa2c5190a25581212ac0845228ad9186c9248aba1d4944122bd5a8cbe5a93a47d07bca78e79425dcf16fe1396eca492f81e83486c0e4f2192ecec0b1442f862125d0b510aaab164924de744ac753b03e156a3f5d41d3dcd8f93129f921ec406f69427ee26749bfa133444ed3fd9e2922cb25b1030da5f88d452268aa26054544ab3745936c66c63b0d0d5061f02b108fd9644099b41ed1fa334fd03bc3fb33edfe8e87e69a4daff82433be02c54c2de47d04b9f98c41842059727d1eea7d8854cea42a2b24913be2b045714631d882082702b55da32887cb1a9a67cd1e109ecfd9b4f98c693ee35ac693f9095a4217b2b207842e872d36f6763a9244c89521515890955d26e74763b9d577ab5517e65ed5b686bda3ecd97f73b6be049bbfa14d810ffab3a8c774d3e113d921f1948d979acd1a09815498ade857ab20756318ed746209c88c8bf32c6b0884864be0dcff0073b87ec6ddbbec6efb639f825045f55251249bd9ba16458b1313f411474918c763a3a3e0608b20545f9163fa513525144b25d26d755910409515108558be2f75686877b1d0b72dcb81042ad9304d2492693475d85c5e545cd157818713925efc19d0ed2d5c8d56f6eb248b23ba2887719c588548e29a20429429b3cd13048933e481381558e8dad3d5cb66ae2ed53a223a208ba0eecfd526905d8c2b6686c92470b2c64c221f2c7f1870412c2829660cba153420ac77285beb8f29b137743ae9454619ed91f73d93010f7179906444c99084d1e07ce06e3ca1b18754358bc49bdd81173e047bb508d17c2e674d1621d1327544cb4cf31e413f6c4de4fbd352aa4ca9410408210922548f91fb18647ec12f6244d1519d5c90f76a11afd204d1ac9a4548dc8d645e07b23f7227425ec654c3495322a9d8f284913bd8786f2c997492a1a18cf247c066e860840c77a3bd52fe0f520d185208101d0b622272262184c553ae4c828b308435d096896bb51d4645f4602d8631d82a74a43219041021807e7f4daea7a1ba1fb496db81ed485160b2a5290a453bce05e18c23212c03a1cb22476328c87460f661d946935fb09c06445b07518dec3b244c91318bf2fa549637f4155092e8789c2603cd9147d138649f731e93ad8ad2419ed4326854548428f63950dbb18608144a1b90c4c35db1891d634318cdaa244087641040909fc0fc3e950f0ef2216e90622567bc2a21b2186ca63b6f24fa1d434379919616c09106fe46a05b324453b0c3528729939a2494a8b6781cd918a04628631aa3cd07126959249a489d02fcbd2ad925a0d2942a208c4126a8927b6c8320e897ab107639d52942210b636a1209fdeb24840e963aadd1512c1b5d22359fe57cf362c690d780b0a1f4682440c258c5942611ec88e93dec806323229d09424211123b1515431d4ebb204e231086c934493454693fc2e9a4d26b377744e093436364421114399e11d04093dab31891a9020955482284aac635a5a892c41e8444777aa3f71d7c39a7832ee878a84242440c39564150e8a2d351a192262622288b1d0d8d6a690d5763de9606e5cbe044a275f0e18208a3e19bc45ccab611045107c054301885158363a061315cc61b1b1a9631b24f1b3f987af872b17044efc9094e367b05510ab0451e0451d8512a6c2e041b130e2b4e493630c3a18e319bf2348f4be395dd151d6ca5666f9b02bdc8857e20b914440cd2a310c38d49ab630e86695be29511fb0e9f1c3349a3b22c4912ebb16847288387a1c6104ed91b1866e1ee25084a0c020e84e6e8f4a40e2a48d8c37430ec1b1e441a871c4fd074f8b2495124924d24916c421736758a218e9b0d350c2a4d186a1aa86155e23c904a8268f4309210426492363630c633b0e8647188fd074f8e5f0029559359ab7822438c26264d24746898a228b1179220cc5320ff0088a1291a373ac644b23a22c6318c31a875acb2141d38d5d3e3896be4c7b10bd8915cd890eb2a3b438c262249249a129223b223e8597aa2d27ec4a5031e84f613e4454759a31a86318c6a6e43355c4fdc74f8e1dc5148229359258a9b268854e98f4213a4db40d0d74344f4606d1a1910235ab1d8c63631dc1438e248fd674f8e14a04f227c3ab65f44aa46a109d88568504e06272e0782682648dd1d1b1b1b1b18c63d2b4771d3e30fd474f8e15c4abf63f54275249a2249334119e7a1254d1e85590b39811c0c334fcc83107463a18c6b4607b9d4f7e0423f71bdea898e15c0cd0c87226213a2a264901919326f0264b040f2896de8833822476780833c06cc09c91b18e8636350c62e4ce2351c511fb0ded822894bb2381da91a13c21741a89d649310e427b8d0b71da98f6466b8c8db8703c84fdc4eb645ac9343aa31b1bc0d8c31ba3d8942162586a4cdf362b10a8f7e058c93645895e84a05e4c1966584a0dcdd0842ab708948263512b783c840423ee46763521a8d3f701b0ee248c9a37436363635520b38274908ece87bf13f51b7024926b23e225257604a936c8c4e8944c4eac9747822561da22d221ec3498c9a4e485304566140d1291606e891146c6c61b18d8ebb529d936b02c3e7be27ec36e0410419e13a3151a10dc6cbcb243e0796d8c9104c624922a1aa319c0f42d1d0f42aa48aa63a1a86c79b36145812c71647e936bd7041d55d5a151795b3c01610a31d8afe22490f2e85409d22886aa11890a0c4d12923630c71ba4558bd9b8fba2bf88f49f67c2b840b812a4704ae6b044a03cbcb26cc5998c26a3279e84c4c42a3cd180e26077c1e299274222664349ab741c91558c5d12928439675464474c70aa0deedaecd5611827dc7d8ed7384b6f086aceb21ca65e044d27f31021e10bb1d35362a5eca49924926c7ec1ccd8f80bc0808423040d0c63741b12b18f2d2a81d109f341f354f0210b7e6f749b922426123b16cff00ee08a77bc844140914311a50797b084b6cdb64d989a9221532b34089034318c6a4f225714d7ec2c29d8e0b937d644c7ed5924934541bdcadead451041a3dc36436d6c62d431932197434bb7d896076779906e492aec3c44459821511c06c61aa7248856b4da12467d9906b344d9d187c1f3cd1b26f2def9e06ac8228d02daeb51137b091d608322ca23388849acf02a9f058212fb4ba116326568995013184c4e9349154186a4e445cc6fe00404fbd9a9d890c59665842c0406e564f81337790b717a46881ec864749a68424f808c10c5c92c9b62498a4d78421216463143f9146269e98f76dd19247c2684ba1ee136940747e5a6db6c8e0244e341f20d77ec986fc4c0b64968e3b32358683739b5085be5d4f1b1a3f8acc826f90c8964d1758f06814773a5a770306780b943a8d8a6c8b41ee2c104f6aa0ade388e85b3859b4462a8d90505b24e4e48b91028907e4c4fb4fede8423f35c44124924f1c5ab2b8f710cb3f631728e98de4f698cc19d5e069a77d84b4b0e09f0641250a7b2c34c916da23573d12c97ee4b258dbdcc91c64acb0f071b645bcb6c7d779822a5f64e23ecf6982c70211a7e0dac92493148239e28f17d80b6614ca04f2fc0f83a440e5ce07b10c5296649522656455f1c8935a111a3429ed31373c40dcefb0543c5eeee573f31b5b1c73cbb00bb428eafb1cb2499ecc30c4c1388173224ffa9d034db047148dcc2596cda6e845b163647fa19d15e85b130f1c6847e436b12b63d2cadc8d027d9231c729645851479b024eb9924924cb70b32232db0c4dbe89891fec98b1d15ab848ff0001ef98f9d1ef631ed5f545b50bd03ab3fde9deb80ad423fc0dacffda000c03000001110211000010d42071865e4185d6b4ce725ff4d649b3887991cc678ff4475ef0ee4799d19f9b6d4753cf9e36cdf6122c120028f28338f7891982d0dbefec71e69a7439583a3c9363358245b1d13864934080df6155de1eee7bd6879f6566187409ec8897da69a51b6591407df7c011d5d571c7efff00dc4b798248f91caa9ec38c5105de4da5187967c768719451c694721fbac46e5005ede55362ef05e7577d04124917dd18b61c5d3492658585b19c02f8c7dfd7ef28f600196106d679961961a5f07d868b3d07d85065da653783597de29a1eb9d9d51d51878d61a555cf086849d3da41544d7c6570f894e6f22aa2d9dd8045e1891c22cd8adaef9e586b55d79d28d10b57afc545049f4ce43ff84084ae3a311ec7707087a476f952418285005311e039a0b4626213cda02666d0b2f84dcf0c74d74f4deaac904830840d5948e67d17edf1b0e027c32d43df42500fdfc7a98fd39b10254c2923df948b811cc2ce645d92d790e9861aa61545a93beeff00dba99e01b7160dde1b085132bf7b98f865f61cb1c9698755035469c24687e9b61058229fcd01358072f754de006584c91ef9eb3c201fa69f691d79597d4640179a10f51e3c410f04e4fd903afa0838d28c288365c98c9e4bd79178b1dda8086e807b6087dcebf5e9fd84728e306340dba0f31546c825d24551da0dacc11df021f9ebe9fe08580f0ec0d99199b9b32f779a03cbbc1655948cf632e9f4e38fc11429be011a4a304936473f7c0bd23a35efc124e08feffa2fbf3c5b80ea5767c79c3af3980c7926d0472322f257f410200492bfb6baa0d2de4d1c242bfc349c2e9d8f06aa5b7a232eaf6b4406b38014086896e3edd4aea1905df5f7526a081030c0fab19babf73d61252832031089af1a927dcb4861a6e30728b6332de061be7152de801066e2c00ca0801a106928ef0375c71b18026c0c935a799f59dec93124a16338b2821413c59bf0fe92920f69610534d2fd24228bb6ad26d6510a2af1492412c00def231f3c8937922454f0438328d86ed60f1603c40c0a2e1880c45de20cacb3c2d851b33a0dda2c592db030a35d66901411851a728011c40d14c0093a59f8c8f7d6a3aae6825c8acc3d27f1ac0724baaa38071e707005101186c8e98f693d1ed63da1503bf24720fe82d2c933fab5e78fa51421c51c5aaded21782d11f2ba7bd63c2c8ec9056738027ff5fe36be82823812cf246c06924d0338cf3bda0e275e9db7f7b00df7fc1557f9032c02c03c1e0641236793592a828db927cd6be0c037085538e154771ce08e3013482073b19110c4e8a18a376d81b02f23f572a02b069d66600830c3482d753f2fd0cf668176dec7d5697087567087266bba411c4f04200500d40df6134e379ca1418dafe4a2961266aa403287cb0cdc9ca00010e1c421010007addc735351bb03c03cbbae92eb4f10e830f151491c30062cd09853e9f1be1aed8ff2c54823acd72f3f4a810d170dd57c20021893861464dbaae34c2512741c734c32060eaa4208826930fbffc4001e11000301000203010100000000000000000001111020302131404150ffda0008010211013f10e864f96fc73e1f38be8f27e62d9f07e6327c0be179e7a57731735c5ff1163fe05f992f9163f95210be03d75bf82975308ae4624f9a09b15bd88a2821083441ac1ae6b1ec2642714a2deb62c270834342f626ce4851786210842621138317c751e5274790825e05eb94c58f3f063572f5cff3b3dc4174acbac83aca737d6a7a0baaf0651e5f243e54be782d13674d2f14137cea1f45d4f02cb978d28c32ca2989e3478e21ea1f0a513270f428c3c5289781b830db23c4c58c4c43d43dbc68b3d31a1a233c8ae13c68834598a2625c9bab6f359e98c6368915616bc3aca10484b8afd13b56bf068836138c5c8eb84427020f7cf5a17b1664d23097084d9ac61897c05ecf416ce7fbc210786c8453b3c9317b3d45c263e735b1b0d06e93ad70429a82162d7eb9216b1e1bb209714cbd17627ab1e52978d18c30df913e85d4f18d574d1171e3c30fdfc69c2c84c422e5170265c6c6c61f1739d9362750b6884883d4ca36363702f8bc196504fc14a5f220b63213186c7e7685abb99498865b9314a378ca36370d10b57736520cb89e7a3c9e4f38f1a0fc90636217c0c6ca21112e27c9bf0381bbbe8796fa6aed63c58c459613294a3c1bbc1e0de2f62d42ed689a86c170661f06e22cca41227c5083589e54e2f82641b121212f966a7060d45c986a22138ae1ffc40020110003010003010101000300000000000000011110203031214140506171ffda0008010111013f1082511a7fa3427fd1198b277c2e4df078c92482132641212fe3b94bbe0f1ca109abfabc1e38a5fd8f8783c705fe08b9dfec84c2f3a1085dcbb2e1715c13edbc7e75974aeba585d2944facbce99f059f0f85294a51b2e1e85b09f5179972ed13fbc1b29790186294a21313184fa5e3294a52eae31b43e642edca2131842e7e05e65294b970b1b1e14a52ede0b5759e45e70988410bce4deb58c309f3f22f329511c22745e630e31ed289f1bc10d06173f8cffb2222c5584eb179a6e53ad0c37ce1fb9e4f196c452124626b8dece085c6109ab9fc8bcc9c61383f4fbb08426a4208ac9a1a1087c62e15e715a887e65212165450d6a4248532971e2d362e043e8b9e842132111f30d6265133d2320d0cbafe1fbc5e07c972a1512c35878842114a37a9cde043d84c5d12786f89313c5294bb4513e1e45c2978bd2627f0a5c37a994a5294b8b0bce6ae509afce14ca5e2b9a12c2420938d73bacf431e2ed5a275eeb1641b68f5742e284848f1c7f33f9d6d53e435f498b52213107a84b4427f156a13ef142e842109f45936e570f82e6c51f15c61310909d3a214b8ba2e8687a9109897c2131210909616cc995896ae895111ac42e4dea096d0f9562d5cd2b9526344294a2794bf7121210b85f12c5daba278c4ca529717a26af4512f831945c4ba52109f31f85080f294b884129a82ea132e579d4b3d706b61a21316094e0945f318d8f3f30b174210d0b931080f5a0905f384a4110bf063de258ba6e5131634586a6ae286b12886297669765d6d6851ae6b458862978bc2cfffc400281000030002020202020202030100000000000111213110415161718191a120b1c1f0d1e1f130ffda0008010000013f10860bcde68f485f2cd69f94296978a16d6cf84ca417d068e35c6763d02bdb63851ea08c4f4e9412b387be9f81ab662c3a21dfec185deb7d0f0754ae6856ede8c9afd996d9624968bc5b0937b20d899fa0d8dba85736c6f7c216af1fc1e795f663f22727c56608313df6626ca305a57d89bfd0ff00f79beb8fd7178586a762369de847fa5a0b4b8bf02bbf2c86998dd2f8365fc02ba33697cd16748ba6f345788fa090d2be831cd15d6d60dfb9e4e1dc5de591d15957e474704f0caddbd9bc98b9e084b30aa89bc0d9ed7ecb339c8e6274c6ea528c4f0dd4b04442ca8a981b66ef1878fc8dfb7e8ec45146c6ca6d0a0d78343bd8d7b16b9f94b9cf9c1218783f01784e1afb13b913f5c2e4ab85be670d679fb42eff00d86d07bd227eaff4b9814659f2c4b8283562b122bbc8e964e5d520e83f90b5d0416973d98fa2f4d96f6915b7531d944e61883b6d83caf07d8d897ef43606f3e49d8d37e87f235924c9b2947f23642e7027e998705ec3f98c0c8958d5dda567c110ebb2fb27d1878e546045b8c3111674279a7d94dab916510d79e632fb62f9132226fd118b923caff4bf83c70c4d1793f17fd9f17c5e0532d0bc84de44dcde0b04b722bd16e0a917f7b28c9ed17c8d163af2346a42ef237bf64ae93b2fa1be89e55218f6fe6926ccc1a25213025831eceb89ea89b1ba25768c1195318264a77d905ec6ff008a67627b1649e28be8795c54fc9d5272c30951e547c3ebfd217144f1d983332dcc30244e3626b69766c54d1a9d949ec9f0455283acce4ae525db625a31e44bf63706e1bd3125b2be10a3c0eb7c37e09c41f781d693e1947ef86fae3a9823154b6619f275dfe4fa783a74f1bcecba2ff0d8bf6742d0c851ae875e75ca65e2321a14d09e928be7373fa422ce32f1ac9868d30d9b513fd0b78a34dfc89271518663c53e059a2b295cd09884a5d0c4bdf1511b1229fc34b48afca342f7c41e07444b93a134621f183ed9bf254df81ac6d931d9f14f64c7b7bfe30b0fef96f6fd89de09cffb31fc91f06255aed05d5fea2112fbe09a4414b7a2fec55c946da6cbf652192f652f9132946c82e19d8588f464e271886f04f825f624fb4c6ae9746de0718d64489b981659f4152eff00052ecc2d7f42df9a6da165f7824f25f48896d2fe37f96c37095e2ff0885f83f5ac4546f7ff0003cf17d945951920846638c6f1cd29499e0844e29918906a98437c747b2bd1a322c778276a0db4b65651d70841c0a8d3a1f9175bfc8a7ba44a965c32e6a7b1b2929a8427f284e13131382d7f082587c7f5c6ed7b737d12171c5c8b6cdf1394b853c1ebf8519b58125170b5ec9767c161722c22e094d7b2af23716b05e20d6e18f2564f4564763e04922766fc108b442364b7bfe13f821f09724f96ce85be0b1fea75bc846c865938a259b707c638bf067882ec8431e09c3442d9d0b225ce3b2971a20ccb574433a84e28f242704b8d7b31e90d06b1d9a09e4bf04a611f6678852905c6f84b984c14df0b5442dfc314ca22fbe2f3fd1114cfa271d89930605c243f42421386890d995f83c0cf929497e48905a120d1389c5f42653237ed97626926b46191affd26131bd1f667c94be8a52179d1784e8d97eb982e1706fc7fec49f33fb27111ec5920976b8ff2218d93982cdf44a25c2c36cf47ae1d5237bf27d8fb09cff1c768ff005f165d9814f432526386e12239c3991dab0f6435dc2dce189f9b92530574fc9f7cde613f82ebd7f0a68484361f5377b7fec5e39493f8acaff06f428cd9f821f81ebe4b813f3c1a2128f3c5cf1a9e57b33c356420c5a379fa145a6426b349d084686e51bea333812a2451bc0c3d76567e875a674f6661b57a31327a9fc609f149c5fd89714e8f45bc58c7d4a76fbff622f091379d091d22227e4deb26cac55e4cd13549688443c13d1cf267f65f636c5f3126644a7094bec6e0f234f4277268b290622fd895b48a4d7463d8da591b0fd87dc2c9d128583657d8ca32ca5f457a2e3fe8a86b1e38bfc2f097108433d0a8a0b2ff0085791eaded20b13fdb3c421558d150d0b79222c38c459623afa35d7d89dbc567b92c49e14123d2d0937d2365820781d38d89526796e79f6257db1b86f8a6449df17e4e9959fd0c6842c1e01bf929e4f97a26087d714a528ddef883fe105b21e7847d8bec4f9c4a31a88b6ed29f9bfdcf9cf914d4220e9e06b032b4ca254a5d0b0dbfa3ec6bd0a0d4278333b1563ec269e9737640b1851617664f24c1a2a3222a9c30f96c4b8633660c8dfdeccd319e2a87e084593c10cbc933fc2228b65e19442fb12474754abd899a9d4e97fb127fa1962e7fc93025dd32e90d660c1c9a164fd8d47f27b647e86ab22c68be7b3d1890693a24972d6f1a4545b2ca7628daf42ef0421f4e20cc9302443a1b1b2a26457b15330a7f436e1f3e1b6891f7f827a1e1ac23cf1f5fc10b241945fb17d08bcaf0682fe39fb0fed89715096cfc21897ba2a1615f6345c8dd628cc3f226ad198cda8fe879c1ae343b77b33c17d985b1f45c3506c8b7e8efbfc9187b2eaf17d8df5c570af864f3c42ba176d9f02a22d8dbc33b8be0dfc31b60d87708d32f1f7fc0fe85a31685f5cb4d1b62f1c1f076d4fd87fdb13e57ac93cd32ed1f0124268643923d89b5a3a5e3d8a79a3c330874aaa4cd829242ae8585d7b19b1265c3c5a256894593b7d1a4e70dd4c460a4e29494a7a1cde5a42b0ec6e6afc0cbd18ad1b141ca8d322fc8ad684dda83297924e0e86bcff084cf16f47c1092938526f62b1971c1157c2c31ff006ec43e14454c495d7181e18c0bd09bbc92f5c5f63504a779144e362acbd0f757059124a97175b22fb0d12d9b7a684943bffa12bba2520d52e3370c7f65bfc294f4232c7b44414ecb75910f261c96857ff4189ba1cf227353fc12da43b59df0e33109206af81123d8b0a25e5fc8f9d3f82209cf2298331f1a715a1f104243d9a2b2c37f821ace297b40935749aedf02ff00cc2468af3dc325ea84a387aa1636b3b1d4b02a78cc3d8a3a6c484b4a387e4c908478c91fb635e1327a6578312bc33f3e06e71a2bd197ec477b332ac1076d62c92840d46a2dd0b7a11e324ea194737213685ec6b22191ec44a69c762c3f7fc30d9784b2cf1521d8ff0058ed77a10c845ca139c3056e5d157087ecb5857d0c32e874f2e82cccbecf4448ca4860a45f81a653c698d91ed7c18b3f9126d367d0991d998999f6c4f0b224debe851cf79d9f208b1e8d742676a2fcb31c1848b7b27329e44a6935bd0c86bcbc8b30b051a5306ec2a2df5c22834c358278337c9b68c03916b51fac667f444981a1f0d65fad90824ae7982fcf29c4d67dd38782086527a453f5f02620c597b25e8a3d518d1a02ce18f64d0599f6d89bac931b14846fb9ba35ae0984fac12ff3c17a88fc1fe06ea09f8355b2b045acc099f54d1b9924955920accb4223fd8c6bc22781282fbe36c107fd8d517623c4c8e362dec4f47d349b4bf0373c9e7e46242f8ec4a6e97d0bdae49fc090b854981327e8c522df106af4852b224c96da5831f02f893ca30eb86fe0f8e49e874b43a52defe07924b3091c1b6dd36da12ef5e042c8ac28b5c782e290a09f7913e302bc10f699831929978124a7e4bd2884c977f03b44141544121ac10be7b16079a3129251441e96866891e4570646288d855706fb641ac1a1b626262213c6443d647d51c4b7d732fa25e5a3e243f5e4a1e9599747c588ed1923fd2895ac1e3d319b3e01618adbd9ddce4ae7d09616762fb2de421a99c586727c456fc18fd059685fb08ecd7b11f267998e0c279489324ec49322f025e498197d71463510d604a63a3105f507a6c106266d906ff0648a37813165f25e0462c54ada913f14b9e86470c30d1ad127811a273a31794a097c8af50fa93e10a46b6746226c59d1ec3b73ad09e3a2c53ac92d2d0adfc0a5816057a107604b02fb512688a09e11bf70867488ccb126fb782094a7e4dc34591e6d28dc2d13e4686b02c67ca1913cafc19b705c1a7c2c8dc1ac131387c9362b44d6c426466d1d49a3ea76608aca2db226852f284a9d84eb24670e93e8ae909eff00636ac1f91a57f9cfee10578a249ddc1458b910ae4d8f363647a5310481234d3c894e8a5e0b2c09773fe8981702c25bd911a0a4b6cc3c9052ff00be112268c25d169dbc9f0303d90fb1f12f36d109e7035c1b0946b052364468f2861fa0d82e72365f3827be29744516baff00913ff93617c167f5dfd0852fa1ef7e7156263c90b9b3d0e86db7a86a9bf0876f13e4369a4c8f85098c0f9470c0345f040a57c8d765fc88dcbe6942dbf1c27e46e9d087d1432c4be2df064cb50d314482395889ad094a2838882a5d988420b812170574b0c0cd1e1964761dfc41eae04946c8c4c43b762dd60477b8c41a12bec7b345a52f1b5e53cebf42f430d3ca527c4fe84fe4d38ab4df9a2f262f6c4cd7c0cfda6c48da4885a31af631d3f025defc2711e63edd1ff134595fa5b16409f97a11550bc21699fa5c0427426e7f913326e2231e6fb3033d415c09e26458869db4ee1604c4165762e57c1f0163f2747c9e451b1bb28fe0ec178cf2cdddf3686d95a3da7e8657e072f6605878c7179a2d3c178d8d84baf087eb3fa3f233e8204fc8a69e05abeccd9910248c941aab0be2ff00a2359c967232da9b7e54bb0174eac967d56ecfb81631e407d05bf93ff90d8bb69eff00a171fa24cffc954d8cb825e8c945cab0b5c5fd995d97aa69e47cb42f8a7a171465746904849c27c2742729cb661ca6f1d09791d2b82097069e50961324186c7ce2fb1f8b214a6b0743d919c4f7b3ce884e522babe45df08f3f06e227f2e4c3e27f5c327a4324dad5032bf149bff23965bb28bfcd66cabd2aff00047a89ef23f0cdb1f85fece813c208d2567a1a40bc2491ea3e89f5f04f93fe3c887cecc69365b5d0f8011c12e9046d994aaf0359eceb6292e053079e1908412cf1d9420426385dd68c1313ad6cccfef8842a7625b11418c7be2dd1f0d39c6de44ab7a13e8c19788b94279c138ec5d1b9d93a9aff001107fe09ec5c54b6e086a5f62ffcb21a9e16b6e6f2a3c4717498fe8c47717fe9e89dfa4b58b325e2077a5a492c0bf67b14cb86b06a2c4c09a9963ca7d092150d60d8304917034d1ec5c560424247db82fa294b8a65d593af8d95935feec8ba24f057813a20d5ed892943cf43149c366035dd5917ba5d51c9be2f3044c74ff853069f07fecbc099d18f235b5eda446343a81b2857a8133a9375db2ac86eaac26b09ee955570e98a855e5dade4d0cbec53bd6c689e317c10b70fc8d7c9eae9ae1d7c968d29f625d993c2c0b4cec4ad9ff8254d68f42e2dbe141449931722d684b868fc9b1efccd19d91b744a10c936c7bc40db18c87fa37c9c1a8e4d23e4ccf59176df109c4123c91e8a5208323174c267fb8f04e31e09613cbc195854dd31d610d31878d0ba0c4cf107ea3e150befd129359654f69331e117c607ec6c3d1542abd903af04d1b21bc9043a1871909d17b66890b59c904884643e035ae848489c398284887712784cd06bd0c6c6d8c660251514a35cde300d24e7085810833fbb6244784fe8ee10be869b1368c8d5d9b1359a955a1af67719f68b37d96fc155af061d32980b361d6e570dd29eb9443d8ecea88e848686c2c1b688220851e98d298c9ae36235cba4c72fd8d665437631bb82a1b19dfd1ea0daca256d2a53367a18d63a170c5d8d592ae52f42c61badf9e2944c41e57a47e8bfa3b2f17d0c8924efd1e88813a413c9124cb151aa255e2fe4f1bc15925c31127d8aa9dc1b16bfbe0d09025cdfb170762c84b04823086d14652ca42d8d322f20d1d8d12ec49bac8e66111369b1d17f93b221da30a21272ec2ceaabc0d2edf0c46bb70ee2e18a2ce20acc1e97b293848619dfa437e17f5c221ad145ef2268685d909d55b2271d949b3f258a1684bce388243430c257361c9b13428a88a14482fc13cf42d0dfc898e3b165930da23a1dca3bc63f24a24d437a314472f963314d7e4185c20f3309856210e6dba4c6d9e04fe05f0313727c9ed9e0798849f58e19a8c4132be46514c97a1bae8825c513c43615cfc3447d4feb85a27b2f1a345299215acc62646452f14c0de58116f23da352f06884c0981ccf62077c1fa125aa16bc3c08d9e49229f117710d2b706210bc8c4b596236a3c81ea9a222c0ccfb18afa62ae05ee7d19468705901696526357831d49c196898b3e8685c0dde2b87f23f024682c3362f3043a1493e9bfd1faae16b8877b321e4c1122cd90935922859b289897be1314523305f9d9d86cbac936591bd56d95e8379d9a625c13b443b1da04bbfc8a785f9319334f318f64fb342c121722986c72b6d99bcd1f8076aa47a85b2d0948cc0a53f81d04a3d88f03da1626277ac084bb1a1763510dc5cec7b63d212e1985363e2f3ed461f0f79fe85fc6e12c1f653068af063f86b897b122313e217d8d7e0a21a4cd483481bc92705bd8cb3f11bda2f62fa1afcb45565c4de48b6bb15b377d993344f181e332430d89441ca4a3886bc805f7e9478d4f346a29e0da832e825e8cea4cb6da0a7a710f42858f9f639f82048209b1bd0e7b3b1260c151baf89c6451f6ccc54f32b5afd1a1e178b822e28dd16d9045c7f15718e3253fc146bd0ad8e4b8a27e18ba88d0ab42cb653e0432eda4332c412b2a21db142ce6862192e663c8d07343c0d8b381b7915fc8c8dfe7d5113411b6625425d5272fce85256b5175a2bd94db12b762b02d128b85c8b07e0dc7636437811f2162713aed9011f9bfa3f47fc6f34bc529e38a3ce8843eb8595970c4f41644d080d20cad2b62cf5a337c37a665e36f54843bd367e9d58dd2064f36f82df236289b745dcd17f230bd3243536260262abb21d819d312914353267702d0d8686fa093454fe8b69d3d8d6fb19e064c943df1b7c51932620947bd6c635944915151f22350a8696567bfe849f1c9c5fe0935c2c6bf879e610783df180f2212bb0d98b898f45554221e4244d54ca61dba3bcc7a10b8dbdc229ba912923637e5890934d60cf06d92782dd2a1a4ca231cbd1b414cc1adfec52e8cfc4f00959860ca4f14ccf842568e83527121edcb8f81a8e59d21f2af22d54b63f5e0c4f19145c688216314945944a896c286c93f9294ec66c544993d142d05f33d858987c12f138a517bcf1784cbeb9f064a527169fc70f232d19213ae86155b28648c691a6469b1b6ca852126ccb2abe84404edb7a12d2a76fb66503f924b5b512a49e45c340b08c8821e6e05d05c6e878cd99b3fb1b8e1831109722add30f1f42344390f10b722a8603c86b789090add04b93b4ab3e84d0f9b44c328ecbf464e2f3afcf179dfae2fd88f382ff000453591d1a7aa3b9f4299dd4b47979129323dfa86d15f93b86d093349201b99bbecb161514548bce052926d284ab66426fff000493c1b1a1932212376cca2518b3705ee16c700c65afa12ba8217191c98add128b870f1311b1cde5b462d28decc5d21217f05ec3a1d396d094f8e5e6ed68bed1bc64f44c4cb928fec59e1734a527b1a2db78f029e0e15e58c5e06dc18be7854a092b06711e46989fdb815222b6f2666a781695e2e9089227c314f6182437605ba25b1061c0437a67a23d85aecc5a1490d2221e7c5e6e8dd8ff003c1db7114fe4f1303a36da21de845b1f1594f02630d45d3e4feaf0b8eb30bed94d52c65213e0bef47c0b85fe14530bc7c09a22c865b7b351d41694f1923316c574d0b687a1af93b5a76c5bfc8c19454686851e84f03418fbd192f084168cb920250b114f9c981e3ec6c0e5869d212e85a5a2105991fc0cf8252f1ec53c886e62ae84fc5e3a21694bc429e0d1f346ef0aa17d334a94ae99f03586b222a67cb62a74c0d519d66a5bc9e831e8ae5ac100d98be662c1026f086c9bc0c6c998c7ef81fec4dce84ba32529a17c893c103c796b8a0a68fd032ec6df06e212c6dfc0bebcbc0eda93763e864be45dff00048438ad876d21afc12713d888421382144120be189609f24a4e22f06844c70bb1ba8da791aad98c43e78aa1231e304abbc0fd487a10e8703431fe06ac57e45f086947ec5312441ec4f1adad8edf0d0f7c3636781d19b3c14d8f87c327944215f4566e46ff00862afd97084f84c5b28cd0f087e845c5125e38879e27178ccdba1617f144ba2452b0d87ca06992c8e798e67ae1494546029328ca439513ab0846d084fd90f23b194f47c262706b237dc12795fb34903e0d8da8e98090f10c3ee989990ce3f43bfaafe536a6459a22ff00544a8c7e5348c7e109e5108227378a4e3012c9b453c42899f4209127e5935de50bb7f83cb8493d990f59abe0b8826d146e2e14d465affd8657e8824c61d2422ac442af226fa2ccfb43d3485b67974c4d1036328cfb07bcee1f4363b4fb367c095e270bc15bc74468beb82332b5e1abfd9a7c42eca517f8295917be126989af234e49ba258fa20b6d89cd42a5b27c31b52aa05e262b8e878296d39e05b5491290b2134d09d3251c1f808a79d094a10453c940850cf68cd0e32decfa027581e114bec5b0cc95a619e07bb3430c3a56cc4344f85b039bb1ac32d6e0c8fcff001a0b626a782d457a1282660551f87f67f405cdf87ae0af28a1b94cc0ac4fec68c7b1d8e6b38120c2e86ef65f930fc9f486759f2601fe01236004ece8634e0c5644e3e3734a3c98706412bdea8f49abe0437fe050b7c1099b7f04f689edc23239bf62ccaa1eeefd1a9a76f4248338fcb82dc0e3a187a1b39ec686745199911b9f360a5327be10b59fa19f913f4138bcdf9e5644909b7d1bf2851729eccacc8994869e4f085f92cd8dacfc9a3e6321b6b23133ade0a0a840b21602630a9e50da4b639db920ead9ddfec688b7f02632679884827d7c0aac9b56d78f913824c57f98470adbc60c22e8d1ac1c1aae858c14fb186947bc187f9301d876e8c3ce04c146b7f4246f255c220996c3eb84790955b693fb1b3f017883e2e28b224255a424ad517c1f83d52931be4a368b4626470b66e772cc06623b914c5e4c2118dfe79a7427301abec68f1a3d3ecb850d562c618969fd0cb12277a431a51311b6d332b1285a1ce46ed4bc0d1b75baa270c930260783f040d8fd19461b2fd8f58f69dcc8fd09de16e4f06ee3383a11b6234deb85911b9f5e0dfe0e194cc7c427a1affd129764629b0d04e706f251f8e44c13ed9621f90d06f435bc1664795e86fa1f0584f03cbb1b4f87820a9ae0ae1bc0d64252f0a2ed3436e8d6052f088748f01d5a3279342c0f5ae56f1d70d8fb1e99a646c1b8de47c0f2fb325742d45e46a68859816f9e84637816908485c9979e4dfe013e6108425e9166c7c25c146aa4c8fb3d0f43af6d93e8971d896dd928dc1bac6c865b28dd873221a1f0335afe06c4352c58362938357d1d56d1fd227962e0d98de451d9050aae878ec46323781a3792b110b0a466bc1d647bb320dd5310b5986e15bf9b9497810be98ad7910b50f316fc537f804f8a4e2104b05048ba1a484f4265b9ec992263548c5c57b1b18defd68bc4bb20da9d866bb2d82884e157d70bf28d90921092a420b62db2fb157b06752e869a95e4d9463c82e90601627c2b4aa6a0e7220dc65474d977810734e1a105bc8dbc8d486ffb3a484c075c4163be6e532f091386a4b9781a17a114860e8a85772992423921e06af81f6264cff463263f1c2d1ac31fd8c6f5cda5d323109569d2de4668c0279f43512f6528f0c0ec54705679425c99fa3022230427353891a449991387b05992a48ec7b0e8f032822b29a29b159f30cbf064ec61a8db18c851e0794d05cac0d7f02e4508dc42b587427c70989512e2899a9db5d306af8e27104cf82c7b1c1d1d14781a13a328952622a99a5c1b1ef845303c9dc2fe5a010e47b1321813c09f0ed0ed54c7619f9a2936db25877f2316936d794253c80969f2a1cbb421bc25d084a86e58f704997044accd813bb0f3c316c9310e062d479a2371767cf1ed8d52c7ff00252c867c1f82106c8410d61fba8d3f04e61389822ad8d2f1df10d0d4d09f12262f67b8c6ef918f5c21b8c7a06fd02193592f4c55ab2d06a37b1ee38a358d2c8e5cdac5b0425de4731b246927d314b0ca397f65134150bafb3ca6fe07829bec6fd4fc8d343e0a1a4e2bac19d45053e61bb31415765391a2c5286084aabb2112ea3c0ae3cb3f3c2d88d9047efd9d619fd45c5e2f09479fae294becb8bc1958415b677c3c2df63f4c687b12a761a4a0ad5c8bdb28cb730f36bc9d47c13d644d3e10447e463936c2c92becc0a66938a66a7a1b664a97b1a7413f639999ed98039bb3055192372314c58782d68b1a3443cf04d1ef1b2486af868bdd41bb62b2cb2ccc3219551b1766c484848d14424f0c7b817918fd0d72d109afe2710d182beca263043fb1b5f27a0cd8cc582f3ea742293bfa18b9aa4a109436dda2de85d6d8954dacf98d19908db42fe8c9fd0ca7f6494b81da68c92e5e968d085d334629622ef1d0d92c96d8991bf6863e636460d38325a449136e0c67092d956909a0c78383c66da6d95e1b635a9812dfb10b84a89715c41c2777cd362154289deca5e884faeb8c98b1e052a7f231b19e2a2c7e386284df5af065d26a42da6c87ae8df5a6376ab0e6f3d1f217626c4608751b220a0a7ff4545918c94592f67639ec92d78cce04e0fe221980ba41ca5fd8ddc0bd87e07526629b171062657a0d46f638c39e42015e7424f3ae2ae17084c7a64b7b4ff8d3843459e12346277a2971365a66f81e5ce0d2bff67c8bbe1f170460e15f62766ba7c832797a2444f830ce875daf436d2b52a1e26cd6331fc98c8b9411aada11376fe8698b689583fc8dbb451d4f308ce224fecd0fe4378ec7a14497b283ad094fc98f2c81ea7835ba6343d051a16a56176c566b68914ed61e78fae35c48525171f67f4f13f843f2e75c7d9914bb132b6271b47a854c523b652945649d7c3cb142550f142c3a0e349ae9f822c934f67c03b232c3df8dd15071a0870f70b1592fc883493392d6117563baac584097ee4ba446d8f49188f079d0830d51b042f1d8ee12f1cbb479357a300b3e0474c35b3259e85477d93aa5194b0f812e27144d70f366cc61e8bfc123fa2e4a5a754ba2e3c72cce6bc0d367b05d4c50ed33e38bc2efc58156abd7d8c08b5e5215c27e8c88f3e05efb7c1d85a5b9d0acc7b5f62649d2d14ea27d3204277b8246a518cbd13d9e042f25049e0c1217751bec46af8124fd9ac3212b467791f23e4e6f1ea3c6f29812d77a349a4f289689897fe886fdafec16d436b7fb35ef86d2ec66c4cfa6232c1e489fa8b65e7b162fd09fb66fc174559f47f62d4cdf197d708f0639ac4c84a9423d8a928f251f12358c2f6b1ca551144866b0df810f088a2a38b4391e0462365610da0775aed11aaccdd199da71ad3219f3d7b14d61d195c70415fa11181e0f223e0f62b890892c0857237c5046fecaf24210e8cb404934d62b23c94ce893fa261925a243353dd49e46a493b8fcc30d2770f421606cc4898d09604e79129a7e98d98bf822c5d890cabb33926b5ac9ab4f1cd3b125e8845c1be49ed97ce85f69457c93f1376db7e3a1f9c3e11b24314952d765384de67a1321365b5e06b647f6912fb82d323aaac35a664bb21bac7d7b2caa6740cc21020bc2af44aec65188b7ec7ba450b5d8f717c85c2e8e86bc0d164aaf96441a2e4111fa3321304a17e476cf73d21e853285c269d693254ea68cec425825ef84af91303aefb6cda6442fae12c9ef262ad1d254b93f04ebd957309ec83458e52510761a62f2b10c3d584f06bb7918ce506d68e791a6385d993d2e97a47739afa2d2a4d2b5f6c63201d2019b68681d1d2625dac4b50d64cca641cba2ab87e635204a7e616b6c4a6c9e8212f6583204242ce051da748664a51c651bc0bc3330715c983e1b88c10cbb5e42a38aec4a67f84c83461b6d8c6a6dfb6244162d260a14e8e8cbe070d82f5ccc884a930f1fa337452e889ecbc4272cfc9a2a62086a61980aee3c90465cd6df288aeacc7dfc0eb51ae0473466fa43d4e5c3c089528df4995d36e67845c7b0d4f61d74bd3f066615c3eda30184ca0314af221767c03f610ed927c89ab4465ae876d6fc1e944b39c908211d93b1763416333d8f81b2ce44668bb5d1820d1d7f061d1c1b01cf532364a24cb7a18de6f6836df6f8427f26f84e0c235f28cdbf8254ad851d97e4d3bfcf0a5e3f253fae2f13868bd0d78486a584b7d7a42cbab10c8ece82b518f0985c77446f8582e8657dad2167c87b169296c9a8b3e455dcce9f813da5ec1912d7a04617af263d0870f233e5b3c61f94f7f055a65892e727c1d90927091bc26f64ed8c64b02768acf67e48bc108ac40a41daa19d2780e77382331d6c9fe844917f049d129b1890d916b2bef1bceca4661dc118e115c7f112def8fe8949fc212c3d187f4f2346aa1ada79a5f869d981255d0c5162bb26821244ad0aed95ecdddda08a0619924ba466b62cd1ee435fb0961bcf69992c0d0ac1e7835468f823c931c4319479cef45ff6096c53af03d0f017069d6df43c2b2a2fb3462ce8aed1437e55efc8fc89a9ef86cc8081f3db6eb64cd12d1ae887d8eb84762a491953c8da21fa23f26cd0489f05663d9498df08a5f4473068e8f25d1a17635d945e7b42325372dd51ae92f5181f0fb468be45342fa10b442a69ec87f98489aae2d2193d89425271061ff05d1f82212d13198583f61ede104890f6ec4f112b0aeebe89b55ed6fe02f21683a12a51caec2492f7c21647f0c4a8960b33c685af247d0df439b043b4a5193d0913e4847912c5c13db27fb0868a5e60d1324e3ed989dfe06bc8d0b48f3d884e24791add71a9ae5576231c2bd97943568d68be23a3352968f314454f9a3e1fc71367c1d1851faa1ec54f398ca9ada7e3e0776b1334a65b7d0f932f0bb72f88611a5cc219792783c9f07507e0486f95071710d90dbf8f42d73d7f333b1f0ceb862d70ec7e81b0f3f1c45b6682dfe3916a69c74763eff8ad1d0c63377c1dbe56fd1341d7ff0019ff00817f0ffdff0046d10f8fffd9, '22', '22', 0, '22', '1923-10-31', '14', '22', '22', '122', '2', '1', '22', '22', '22', '22', '1', '3', '1923-10-31', '01', '08', 5, '2', '22', '22', '22');
INSERT INTO `nhanvien` (`MaNV`, `img`, `HoDem`, `Ten`, `GioiTinh`, `STK`, `NgaySinh`, `NoiSinh`, `MST`, `TamTru`, `QuanHuyen`, `QuocTich`, `TTHonNhan`, `DienThoai`, `DiDong`, `Email`, `CMND`, `VanHoa`, `TrinhDoHV`, `NgayCap`, `NoiCap`, `NguyenQuan`, `DanToc`, `TonGiao`, `ThuongTru`, `HoKhau`, `GhiChu`) VALUES
(432, 0x89504e470d0a1a0a0000000d4948445200000200000002000806000000f478d4fa000000017352474200aece1ce90000000467414d410000b18f0bfc6105000000097048597300000ec300000ec301c76fa86400004dc549444154785eeddd07bc5c55d5ff7f63af8fed51016922cdf45e6e6e72490f10407c8c0412d27b40bad2e48a201d42094d408a28123048ef840e2aa2220a0a164441aaa11392acfd5ffbb2fcfd111678f69c333367e67edeafd7f79550b2ce3ee7ecbdf6997b2773df050000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000d019adbfbbacbdce2219b2f62eb2e3dabbcaee9a43f4f7a7acb3ab5cacbf5faeb96f9d5de44ffacf7fd6df3f1ba3fffce23abb86d011fdfdfffbf7faffc4ff37fe19cd72ad7351aca5bf3f44b37b3c463c563ca61d1e000054cb6716868f7e7e3719a41bf01cdda44fd24dfa6afdf501dd945ff97f1b798df3fab1e501cd553a9e13e3d8e2183fb7977cc4860d0000b28a1be8e717852df495f6019a9facbd481ed65fd7acb38b6ebc8d101dab3e0c3ca40f0517c77388e7b2f6dcf0613b3d000010adb5ab7ce6f3bb8489ba612ed60df3679f5f24abf49f433345cfed35cdddf11cf59f27c673b6d30700a093680fef5e77810cd0cdb05df373ddf0d7bc79c36cfec86acd9d7afedf8ad7225e13bb3a0000348f8d77950facb750b65b7791fc40f3e4baba099237245e13bd36f11ac56b65970d0080c6d3b53dbc7f9d45324137b673f555ef0a77e3236f49c7b58ad76ca16cd56f6e789f5d4e0000ca6dfd05a1dfba0be5f4cf2f9267d75da49b1aa938fa10f08c3e0c9c16afa95d5e0000ca63a3b9e1e3eb2d9405baf1dfbb9e6e5ca4f8e803c13deb2d92f9f15adb650700a03ef4d5690fdd94ced2cdff456fd322d588bc10af79bcf6761b0000a88df57709a3d75f28d7acbf48647ddd94483da2d73ede03bd17765b0000285e7c439abef29ca69bce7dfe8644ea15bd2fbf5a7f1799f2aef6f05ebb5d0000e4a49bca7af365da7a0be54feb2fd40d8794370be4617d40dbf95d13c37becee010090a83dbc7b8345324937940737d0cd85344ef441e0017d60fb1a1f30040048b2fe2299b0c142f9adb7b99006ca02b94fefe378bbad0000f8d69f275d375c20576fa89b0769a2e83d8df7d66e330000afdb746ef8df0d17cac9fa8a7195bb81943a22bac1fd4373bbe67ccde17a1e7b6e385fa67d217e2563910cd15f375d7f41d848f3c99837fec8def8fb7ffffbf8ffc4ffd7fecc8458a3a396d6b4daf118fff0c751eec47bab396183ddc227ecd401009d57e8a21be83ccd33dea651aa2c90351b2c943fea267691fefea00d16842fc7cdba1e9f9dbfc1b4f0c10d76099beb83c2f6712c9a8b755c0fc531ba632f51f41a3ea5d76d76bcf7763a0080ce246e9e5f982fb77c614108e58c3e94cc972b369a1ff6d5710e7be3abf6b28a638c63d5ec1fc71ecfc13fb73244967f71a16c6c43070034bbb6f6f0deb841e906f08abf31d42bf292be82bef20bf364177d35fda5e678851abac47389e7d4716e7a8efeb9d729f3e5657d50f9669c133660004033da709ef4da6881fc7a236dfee588fc4537c5c5ba398e8d5f56b76136ad788ef15ce3396f345ffeea5f93da47c773ef17f86861006846a18b36f93df515dfabde0650cbe8181ed5cdefb80d17caa0cefd7de8d0e58b7365885e8fe33bae8973ad6a1b7945efcbee9dfb9e004013596f91aca38dfd7abfe9d728f3e545dde4bebfd1c2d0ca87d338f49ac46ba3d7e86cdd885f72af61cd22d76cb030ac6523030034a28de6c9f69aa7bf383f847a448f7daf6e6a0bf811b6d9c56bb5f13c59a8d7ee57de35ad45f4d84f7e71be6c6b430200348af8a62e6de2c7681317afc157337adc55fa8affc24de6c42ff1238f780d379a1796ea7d5ced5debea46e7cebc70043f5700001ac4c6bbca67369e2fcb37d6265ecbe886f1fc17e7c9e20d17ca063614146493056123bda727ea357ed1bbf6d58ddc10e7940d05005046f115a36e128ffa8dbc4a9927ffd24da29d4f98abbe788de3b5d6ebbee22df7a1aa9147beb04006d830000065b2f10299a1afc05ff51b78f1d163bda01bc3a1f123746d08a891aeb3e4537aed0f7bfd1ef8f7a7f874fc2d816936040040fd852e7123de449b742da2c75aa93936fefc001b00ea247e697e93f9725cbc27debd2a3e229a83f9ab82005067f173f03799273ff49b75f1d18d66191f1f5b3ef19ee8c67c9977cfaa9279725ed789e1fd767800402dc52f036f3a4f6ed9745e0855cf5cf9ddc6f3648c1d1a25a5f7697cbc57ee3d2c3e37f7e0db3f00505bfa0aecf39a079ca65c6ce6cacb7a9cbdf9acf8c611efd5a673c3bef1deb9f7b4c8e8c3c6668b641d3b3400a09a369b1736d44df9cf6e432e309bcc951b379e235fb4c396de46f3e5b37a5d06eae6f7651dfbae9bcc0b47e83fff40cfe5e64de6867b3a1e98e6ca9ff4d7a7f4bf3fbbe93c11fba34de94bf364133dcfe56fbeafc5471e8e73d20e0b00a886cde6cb669bcd9347b5e186ea45fea54d7d5659dfe815bff7bcc9ecd05b37f2a93ace637453bf6eb3b9f2847f2eef1c2bd9c442974de7c86c3dd7156f3ef722a3f7e1913837eda00080226d36477a68a3fda7d7808b8bdcd2756e58df0e590a71c3d757f5adbad1b76b96eb185ff1c79e1e3b44d3fbd242d9401f926ef7ae4151d17bf3789ca376480040116263d53cbdf9dc10aa11adfd9a6e10fb97e5635fe3b71ebe3447bea1e3ba56f39237e6226287eb1cf4deea3d3e50afe72aef5a14913847353c04004011369f2d9b6e3e479ef01a6e11d14de1a14de7d4ff53dee279c68710dd40eef5c6598dd8a13b95f83e89cde7ca9fbdeb5144f41efe33beffc00e0700a8c4a6b3e50bdaac1ff51a6d11d1667d79af69f5fb08dff8c63d1dc7be7a8ebf79f3d86a111b46a713fffa9e5ef3abbc6b524c3adea7c21b0301a0123d66cbbafacaffe12f69432d3c73648d36e9f67afd6cfe2fcd95e19a0b741cafbae3ab516c389d93de7bbd07076bc4bb3679a3f3eba14de6c9e7ed6800802ce2c7ec7e69b63cd0754e08454737dd7f7d69966c6587aa99ae0bc347bbce915d34f77be3aa476c689d5ab7d932a1ebecb0c2bb3eb9335beedb686ef8b81d0a00f04ee2bbde7593bed16da879335bfea20f16ddec5035b1d94cf9981e737fddf89f74c754c7d8103bbdcd674a77bd478f78d7286f3ae6321f1b0c00ff4de8a20df37caf91e68d36f89febabf0b5ec4055175ff9e9a67f909ecf33de78ca101b2a549c1b7a4dee79f3352a22714ef3038400e01de8267db8d740f3477eda738a7cc40e5355ebee211fd2867f40d5beac5c606cc830718ee8bdbbccbb56f923dfb5c30000dea8db6c99d54d1b65d1e93a5bce9a58a3bfdfdf6d96eca0e7f188378e32c6868d378873a5dbec708e77bdf24544e7e2643b0c0020d2575d83bacf9195ddb551161b59528b2fbd7e69a6f4d1632df7c750ded8f0f116a14bf7d972b277cd7265b6bcda7daef4b7830040e7d67b867c465f1d3dea36cc3c992d47da21aa66e35de57fe243861e6b8d3b8692c74e03ae8e878023bdeb962bb3e59138e7ed2000d039c52fb7f6982dcb7bcc0ea1d0cc0adfb643544d8f3961b48efdafeef11b24762a7807712e79d72e5fe4ba5a7d5b0a004aa9c72c39d66f9095a7fb2c39caca5745fcfbfcfa2aee146de2e21dbf9162a784ff22ce29effae5492dbe420500a5d47d66f872f19ba89c64e5aba2fb1c69d3cde0cffeb1cb10794637965b748ce7eaef0fd3dfefaabf6ea719dc6d8e7cb1c78cb051d759f2a9f851b8764ac82474d16bbac4bfe69546a4e72cd9c60e00009d43df39b276cfd9f2744f6d8445451bea59d57bc35fe8a2f50fd486bdc63b763dd263963ca6b940c7b58f5ecb71faebba36585445e8a2d7fd9c37df873cd17bf664d769b5fb6c0a00a8b3d848e506af21569c597269b5bea71a7f58906eb497bbc7ad61740c4fe986f163bd76f3bbcf0d9bdbf05043718ec5b9e6dd9f4aa3f7f4eaea3db8024089f49c297bf69a15427191bbfbcd0d1fb6f285ea353bf4ee35531ef68f5bfde866f30fbd5e4b74d31fc99bc6ca21ceb538e7bcfb55697acc94ddac3c0034a7de33a4976ea8af7a4db092e806f9d76afd952a6df25374f37dc93b6e5533535ed09cd17b8eb4d4eba715e29df59a2a9fd77bf4a87bff2a8abcd263baf4b0f200d05cf495d3fb74c3feb5df00d3d373665851ada6a9afc8f6d7a62cde71ab17f96def99b250af133f3dae01c4b917e7a07f2f2b89fcb2ad3dbcd7ca0340f3e83d4bf6ebad8dae90cc94355aaff01fe91bbfccaeb54f728f59a568e3bfaac76c1966434003e9395b26e83c14efbe56925e33651f2b0d00cd411be5a6f1cb9c5ed3ab2833a5dd4a17a66d5af8a08ef162f77885277e75412eed3d4706d8e1d1a074d33ed8bfc7e9d139f172df39f2452b0d008d2e74d10dfbd63edae08a895c51f4bba6e397dd7553bec53f5eb1d16b71757c2f841d1a0dcebe6a74b577af2b89d6ba91bf1500a029f49929f3bd465749b4393e5cf4f7c8379b291fd3cdff4eef784546c7fe90be5adcda0e8b26123f5c49e7f99fbdfb5e596486950680c6346067f9b46e7c4ff799a94d2d67f455f36bbda717fb25f3f857bab4ee2ddef10acb0c795e8fb157d789e1fd765834a1be336490dee755ee1c488e3c193f7fc24a0340e3d1a678525f6d68c544f6b7b28518fc55f990d6bcde3f5631d1cdffbafed3653d3b249a9ccef76f79f3a0b2c8715616001a4bafd9d24d37c0557e734bcecd457e104e7c35aecdfa6ae7388524beead7fa0bf85e6ee712e7a8be7abfcd9b13a9d139f45abf697ce2238006a41be0b5fdb491e58ffc4b9bea0656b600a18bbebafa917facfcd1dab70d9c2d5fb083a193e9352d6cd86f4658e1cd8dd4e81abac2ca024063d0c635419b602822fda7cb4c2b5b88bed3e550ef384544cffb583ecc057da7c91c6f7e54923ed364bc950580926b0fefd64df6b75e334b4fb17f254a5f9d4fd69ae21f2b47a6cb0bbaf97fcd0e834e2f74d1f9b0dc9d2ba9992ebfe65b49001a42ff6932a9bf36aebcd18dfae5be538bfb5094fed3a5a5ff0c59e91d2b4f749c7f183843bada61800e83a6cb263a375ef1e64c6afa4d0f13ad2c009453fcf2b7be6279d06b62c929f06351b5de46fa00f0e45b8e9137d3e5eef8571ded30c07fd0f9b19f3b6f12a36bea77fc602800a53660ba4c1ba00d2b77a6cb6f8bfa5e7a7cc7bf36e25fb8c7c993e97255cf29f2113b0cf016f107600d98210fb8f327353365b295058072e96876d3e44f03a66bb3ca197dc533c6cae6a6633ada3b469ee803c5d9f17ced10c0dbd2f937de9b43a9e93f4dfec81b4c0194d2c0a932d56b5ca9d1cdf5122b995bffa9b2a5be5217ef3895474ee74d5948a173fa0a7f2e25661a5f0500503aa1cbc0e9f2ab81daa472659abc1adf3c65457319302daca50df39fee712acdb4700e9b3f52f59f299be9dc7ecd9d5349917bad24009483be2a1ee737acb4c42fd75bc99cf481649a5cef1da3f2c885457e1a213a175d238bfd79951a19692501a0fe064d936b066973ca13ddb09f6f9d219fb192b90c9a16e67ac7a834da742fe587f9208f41b3e47383a6cb8bdefc4a8aae352b0900f53578baf4d0c6266eb34a886eb2875ac95c62a3d55acf7ac7a8245aebdef85303ad3c50b181d3c211de1c4b8b089f3b01a014f495fbf7fd469590696145eb4ee193563217ddb02f708f5149a6c9a30367cbba561ac8257e66846ee0cfb9732d25d3e42c2b0900f53170b2fccfe069f2e2e06921e48936b46f59c95c86ec2ce3bcfa1565aabc34688a0cb2d24021745e7dc79d6f09d1f5f242cb4cf998950480da1b345516780d2a25b199b54d0b9fb092158b5fa6d7e6fa27ef1815652a9fed8fe2757c1540e7bc3be7523255e6594900a83d7df57fef106d46b932554eb472b9e8580e7a4bed8a23a75959a07071cefbf32e7b74beffc2ca01406db5ec2cfdbdc694126d62ab86ee1cd6b79215ebb763f85fddb49ff38e911ef93d6ffa43350d9e221bc7b9efcfbfec6999167a5b4900a89df82ad96b4a69910bad5c2e5ae758bf7e5a064f955787ce905e5616a89a38f7bd3998127d8838d9ca01406dc4bf133f64aa3cdb32555f85e4c8d06932d84a566cd874596fc8cef28a573f357a4ebb5959a0aae2dcf7e6604a74be3ec5cfa4005053faea656baf21a5a5988f35d52678a65f3f2d5ae76e7ee42a6aa96567f98d37175312ffe68b950380ead3c675ee506d3e79a20f000bac5cc5c64c918f0c9d2a7ff5eaa744c7b26ae814bef48fda6add59167af331293bcbf7ad1c0054d7f85de503bae93ee736a38cd10df7c5f81902563297b669e183ba792fd29a8f78c7ca127da029e8671000d9c5bffeaa6be9656f4e668dcedd7ff131d5006aa2754af8b2d788925285572db109ea83c02cadfdb07bccb78dfcb56d62f8a895016a4a1f5ccff3e765f6b4ee2c13ac1c00548f369bf35b63d3c991a13b87562b57b8b6b6f0ded6a9324537f6df7bc77e73f4816127fba340cd0d9d16b6f0e66562ceb172005025ede1ddc3a6c893c3760ea1d2e803c4a33579b39d1ea375e730518f779f378ed723bfe68d7fa8ab8e792a8ff9f3336be489f823b0ad220014af758a0cf21b504ae4382b5723a14bfcb6c5b029e19eb78c65b26c6dff135037fa507de25be6666a264b5f2b0700c51b3e45da876bb3c993f81061e56a6ef854d972f8ce72471c8736dddbec5f0375d5b673687df33a498dcee703ad1c00144f37cfbbbde69335daa4fe52862f55ea83c0085e31a134e2b7d6769647bd3593353cd002a89ad619f299e153648dd77cb2469bdcf1560ec01be8c3f5126fcd648daeadd58367c9a7ac1c0014a76db27cb56d4a0879a2afbac75a39006fb0c564d9da5b3389f9b2950380e2b44d91e39d86931079397e688f9503f00683bf2a1f1a3e595ef5d74eb6e89fe703ad00146f8b29f2f32db4c9541a7d00b8c24a0170e81ab9d65b3b993359eeb45200508c0973c387f5016095db743247165939008eb6c9b2bbbf76b2451f2056f2553600851abe938cf01a4e4a86ef2c5fb272001c23a74a4f6feda464c44e32dcca01407e5b4c960346c4e65261f4d5ff337c5219f0cedadbc3bb75135fe1ada1ec91fdac1c00e4a71bf832bfd9648b3e405c66a500bc035d6b57796b287be4222b0500f98ddc491e1a3939844a3362275e9500598c9c2c07786b2873769207ad1400e433668a7c4437f0356eb3c918be2f0964336a72d8c25b43593362b2ac8e6fdab5720050b9b6c932d86b3459131f1ee243849503f00e5a66cac7464e16f1d652e6ec2803ad1c00546ed44e61aebe2a0995469bd91fad14800c464d9687bdb5943523779259560a002a376a2739c96b3299b3136f4a0252e89a59e6aea5acd9899fb901a000a37794ab46ef1442c5d9510eb2520032d00dfc60772d658cfe793e7513407eda4c7eef3599ac193359b6b7520032183959beeaada5ec91fbad1400542a74d157f0aff84d265b464c96cdac18800c464c926ede5aca9a513bca8b560a002a337a92ac33461b4ae511193f5e3e60e5006410ffd68cbf9eb267e424f99c9503807463779016afb9648ffcc34a0148a06be7717f4d65cbe8c932d84a01403a7d00d869ec8e21549a313bca1d560a4082b193e42e6f4d65ce0eb28395028074da8476779b4bc6e803c00fad148004baf62ef0d654d68cde5176b35200906eec8e7288d75cb266cca47084950290401f008ef2d654d68c9924075b290048a74de8b471da4c2a8fec69a5002418bb83ecedafa96cd1b57bb295028074ba815fe43597ccd9294cb75200128cdd5166b86b2a63c64e0a4bad1400a41b3f496e1aafcda4d28cdd492658290009c6ed24db796b2a6bf4e1fd062b0500e9f401e0d7e3276943a9305b4d9241560a4002ddc087786b2a6bc6ed20bfb25200904e9bc85fbde69235a377944dac148004e3be2a9b796b2a6bc64d9287ad1400a41b3f491ed9529b49a5993031ac6fa50024886bc75b535913d7ae950280745b4e9227bde6923563a6c867ad148004e326cbdade9aca1a7d0078dc4a0140baad2685159a5069464f0c1fb7520012c4b5e3ada984acb05200906eab1de485ad76d0665261da26868f5a290009b6dd563ee6ada9acd9720779de4a01403aafb1a4c4ca00a880b7a65262650020ddd6da44f2c4ca00a880b7a652626500209dd7545262650054c05b5329b13200906e8236913cb132002ae0ada99458190048e735959458190015f0d6544aac0c00a4f39a4a4aac0c800a786b2a25560600d26df3b510f2c4ca00a880b7a652626500209dd7545262650054c05b5329b13200906e5b6d227962650054c05b5329b13200906e3b6d227962650054c05b5329b1320090ce6b2a29b132002ae0ada99458190048b7dd446d243962650054c05b5329b1320090eecbda44f2c4ca00a880b7a652626500209dd7545262650054c05b5329b13200906e7b6d227962650054c05b5329b1320090ce6b2a29b132002ae0ada99458190048b7fd57b591e488950150016f4da5c4ca0040baaf6813c9132bd3d4f6bb4b3eb7cfadb2e3deb7cbf17bdf26d7ec73bbfc417fffacfe7e6547f4f71dffeef5ffb678af3b6452fc33f6c73b3daedfdbf3d6544aac0c00a4f39a4a4aac4cd3d9e34ef9d4beb7c92e9a5fec7b7b08c9b94d44f3b35823d6b2b29d06d72f1b6f4da5c4ca0040baffd326922756a669ec7fa77c7effdbe438cd8bfbdf16423189b5e4387d75bb8e1da66971fdd2786b2a25560600d2794d252556a6e1cdbd27bcef805be51b07dc262f1ca89b4e35126bc763c463d9619b06d7af32de9a4a89950180745e53498995696807de2c9b1c74abdc7bd0ad21d426726f3ca61dbee171fd2ae7ada99458190048f7d5ff0b214fac4cc33af836d9befd1679fedbbab1d434b7c87307df22dbd9301a16d72f1f6f4da5c4ca00403aafa9a4c4ca34a4efdc1ce6ea26b2fa3bb784508f741c5bc760c369385cbffcbc3595122b0300e9266a13c9132bd3700e592e0b0ed54da40c8963b161350cae5f31bc3595122b0300e9bca692122bd3500ebb59b6fdeecdb2fab09b4328435e1f8b6c6bc32b3dae5f71bc3595122b0300e9bca692122bd3300ebb55363d7cb93c7f846e1ca5ca7279eec80678631bd7af58de9a4a89950180745ffb4a087962651ac2e9f784f71db95cee3d4a378c5266b9fc328ed1865b3a5cbfe2796b2a25560600d2794d252556a6211c73937ce3d8e5219439c72c97bd6db8a5c3f52b9eb7a65262650020dd0eda44f2c4ca94deb137c8e78fbb495e58ac9b449913c778d4f2b0960dbb34b87ed5e1ada99458190048e73595945899d23bfe26597cc24d2134428ebf518eb5619706d7af3abc3595122b0300e9bca692122b536a275d2f9f3ee92679f124dd1c1a233a561db30dbfeeb87ed5e3ada9945819004837499b489e5899525b7283ec72f28d2134524eb94116d9f0eb8eeb573dde9a4a89950180745e5349899529b5536f949f9faa9b42234537b0bb6df875c7f5ab1e6f4da5c4ca0040ba1db70f214fac4c692d591ed63aed7a91d36f08a19112c77ccab5f2593b8dbae1fa5597b7a652626500209dd7545262654aebf41b64d219ba213464ae971dec34ea86eb575dde9a4a89950180745e5349899529adb3ae97e3cfba3e8446cc99d7cb623b8dbae1fa5597b7a65262650020dd4eda44f2c4ca94d639d7c9d5e7e866d08839fb3ab9ca4ea36eb87ed5e5ada99458190048e73595945899d2d20deca173af0ba11113c76ea751375cbfeaf2d6544aac0c00a49bfce510f2c4ca94d679d7c9333fd0cda02173ad3c6da751375cbfeaf2d6544aac0c00a4f39a4a4aac4c69fdf05a59f9a36b4368c4c4b1db69d40dd7afbabc3595122b0300e9bca692122b535a17e826f063dd0c1a3171ec761a75c3f5ab2e6f4da5c4ca0040ba29da44f2c4ca94d68557cb334baf09a111a363affb97b0b97ed5e5ada99458190048e73595945899d2baf86a79e862dd0c1a323a763b8dbae1fa5597b7a65262650020ddcedb85902756a6b4965d25572fbb3a84c68c5c69a751375cbfeaf2d6544aac0c00a4f39a4a4aac4c69fdf46a59fc53dd0c1a33f5ff201bae5f75796b2a25560600d2794d252556a6b47e7a954cbaecaa101a3257d6ffa36cb97ed5e5ada9945819004837559b489e5899d2baf452f9dce5578a5ca11b4223258ef9aaabe433761a75c3f5ab2e6f4da5c4ca00403aafa9a4c4ca94da9557c8cfafba3284468a8ef92e1b7edd71fdaac75b5329b13200906eda7622d3b491541a2b536ad75c29bb5cab9b42634516d9f0eb8eeb573dde9aca9aa9dbca1a2b0300e9a66d13564cdf36844ab37062f8a8952aadeb97c9a7afbb5c5ebcee8a101a223ad638661b7edd71fdaa63e6b6f2316f4d654d5cbb560a00d24ddf469ef69a4bd6cc9d183e6ea54aed86cbe5b81b7473688cc8b136ecd2e0fa152fae1d6f4d65cdb46de5292b0500e9a66f2b8f78cd256ba66c2f9fb552a576cbd5b2f64d97cb0bcb2f0fa1cce918e315612d1b766970fd8a37797b59db5b53d9238f58290048a7af22fee837976cd9794258df4a95decd97cb376ed14da2ccd131ee65c32d1dae5fb1e2daf1d654e66c237fb05200906ec63672df0c6d269566fad6b289952abd7b4e0fefbbed32b9f7b6cb4228652e0df7c431da704b87eb57ac99dbca66de9aca1c5dbb560a00d2cd9c2077cfdc26844a337b1b196ca51ac25d97cb26b75f2acfdda11b469912c774e7a5b2b10db3b4b87ec599be9db4786b2a6bf401e04e2b0500e9666e23b779cd256bb4094db0520de3ae9fcab6775d26abefd28da31cd1b1e8986c78a5c7f52bc6f46d643b6f4d658fdc6aa500209d3691657e73c99ce956aaa1fcec5259f0b34b43284764810dab6170fdf29b31416638eb2973f4cfffc44a01403a7d0058e23597cc99207b5aa986f3f34bc3dc5f5c2aab7fa19b487d22abe3186c380d87eb978fae9dbddd359539b2c44a01403a6d4207ced2665271268423ac5443baf752d9ee9797c873bffc6908354d3ce625b28d0da36171fd2a376b1b39ca5d531913d7ae9502807433b79599b3b599541ef9a1956a58f75e2e9bdc7b89dcfb2bdd586a9178ac784c3b7cc3e3fa5566d604b9c05f53d912d7ae950280747326c8965e73c91a6d627758a986b67c7978ef6f96c93ebfb9445eb8ef9210aa9158fbb797c8def15876d8a6c1f54ba76be72e6f4d65cdac6d64bc95028074b3b70abd674fd0865269b6967f58a9a670ffd2b0966e32c7debf4c5ebc5f379d42a2b53a6a6a6d3b4cd3e2fa65376b6b79c25d531933636be965a50020ddfcede5b373b499541e915dc7cb07ac5cd3b8ff42f9946e3cbbdcff13b95b23bf5b16424ae29fd1dcd951436b59d94e83ebf7cea68c918ff8eb297be2dab572005089d065f60479cd6b3059337742d8dc8a35a5877f229f7df062d9e18165b25873f5833f91071f5c26cf68565a9e89ff2efeb7f8ffe83f7f2dfe19fbe39d1ed7efad666f23ddbcb5943571cdc6b56be500a03273b796fb75138f1b794599bdb56c6fa50064306f6bf9aab7963247d7ac950280ca694359fa960693903913e4202b052003ddc00ff6d65242965a2900a8dc9cadc3b7e76ead4da5e2c8c5560a400673b79265fe5aca96b866ad1400546ede56f2b579da542a8d36b387ac14800c74cdfdd95b4b99a36bd64a0140e5e66f2ddddd269331fa00b026beabd9ca01780733b7958fcddb5ac45b4b5913df4468e500a07273fb85f769435a355f1b4ba5d18780e1560ec03b58b0958cf0d650f6c86b71cd5a3900c8471f007eef379bac91fdad148077307f2b39d05f435923bfb35200909f36a51ffbcd265bf401e20a2b05e01de8067eb5b786b266de567281950280fc166c25bb2ed82a84ca23cff0c124c03b6b6f0fefd6f5b2e2adeb277be66d29bb583900c86fd104e9eb359b942c1cc71b938077326f6be9e5ad9d94cc1f2f7dac1c00e4377162788fbe8a7f61a136984a13bf8a60e50038166c297b7a6b2773b694e7e35ab57200500cddc0af739b4ed66cc9fb008077b2702bb9d65d3b1913d7a8950280e2687339c86b3a59a3af6e5edee3abf2212b07e00df61a231fd135f6aab776b226ae512b0700c559385e462dda32845c1927e3ac1c803758304eb676d74c4276d952465a3900284e7c85b2684b79cd6b3cd923275839006fa06be3647fcd648dbc16d7a8950380622d1a2f37eda2cda6e28c97bff2d70181ff14fffa9fae8dbfbb6b2663e2dab47200503c7d95b1a7d77c52b2eb78196ce500a85dc6c9306fad2465bcec61e500a078ba797fd16d3e4991c5560e80d23571a2bf56b227ae4d2b0700d5a18de6815dc7c7865359f4d5cedfe3973cad1cd0a9c5b5b0eb3879dc5b2bd9230f583900a81e6d3647fa4d287b76e3a703021d761d2b23bc3592947172b8950380eaf9faf8d0aa0979a20f11dfb77240a7f6f5f1729eb74612d36ae500a07ae2478d6ad37ada6942d9334e5e9a3b3a7cdc4a029dd282adc327f5d5fbcbee1ac99a71f2241fff0ba066f401e034b7192564d7f1b2c0ca019dd2d7c7ca2ededa488b9c66e500a0fa761d2b2dbb69f3c9137de5f22b2b07744abb8d93df786b2329e36488950380dad00dfc0f6e434ac8ae7c26003aa938f7bd3591127df5ffa0950380dad97d9cecbffbb810f264b7b172a195033a9538f7bd359116d9dfca0140edec3956d6db7dacacd9431b51a5d106b66ab77161432b09740a7b8c958d73af1dfdf3710d5a4900a82dddc0aff39a535ae4442b07740a71cefb6b217be2dab37200507b7b8c97295e734a8bbcb05b5bf88495049ada9e13c2ffee31565ef2d7424274ed594900a8bd3dbe2a1fda7dac3ce536a884688d762b0934357de57ea8b70652d2b1e674ed594900a88f3dc7ca217b8e0d214ff6181b56e8aba24f5949a029edd9a6affec7c8f3de1a488b1c622501a07ef415cdda7b8e91957b6963ca17f9ae95049a92cef123fdb99f3d71adc535672501a0beb4b19ded35abb4c80b7b8d91cf5a49a0a97c7da47c4e37ef97fcb99f3dfaeaff4c2b0900f5b7d778e9aa1bb8780d2b25dadc8eb3924053d187db13bd399f165d63bad6ac2400948336a76bfca6953df1cb9bfb8c964dac24d014f61c1b36d7f5f19a37e7d322d7584900288f3d47cbb8bdb549e58dbe52badc4a024d41e7f4d5de5c4f4d5c63561200ca2474d97bb4fc6c9f3121e4cdde6364ac15051ada5ea3646b6f8e2767b4dc1dd79895058072f9c65819e336afe4c8efdadbc27bad2cd090e6f60befd38dfb017f8ea765ef5161b495058072d2cd7bb9d7c052b3f7e8b0af95041ad2dea3e5006f6ea746ebdc642501a0bcf61e2543bc26969abdc7c82bbc21108d6a9f71b259c71c76e6766ae29ab2b200506edf182d977f431b57dec4af26f07d4f349ed045d7c0adde9c4e8eae252b0a00e5f7cdb1d2eb9ba345be393a84bcd10638c7ca020de11b23659e3797d3a36b48d792950580f28b6fe0d3e6f51bbfa92567c537c7850dad34506a71ae7e63943ce7cce30a22bfe1cdb0001ac6de6d612d6d5cb7fa0dadb26843bd6de2c4f01e3b04504a718e7e63b4dce9cde14aa373ff96b8a6ec1000504efb8d9411fb8e96c7f7d5c65574be394a0eb4c300a5a473bfdd9bbbf9238fc7b56587018032095de206bdef2859ed37b0fcf9e66859b5ef18196407044a45e7fe906aceff585bd7c0febc29164069b4b7858fee374a96ed372a84aa67a4fc69dfd6f0493b34500aba397f5ad7c05fdc395b70f45817c53567870680fad87754d84837e5fbbc4655ad6803bcaabd3dbcdb8600d455fcbeffbe23e51a6fae562bba067e13d79e0d01006a6bbfd1324a37ffa7bd0655ed68033cd88601d4956efe877873b4fa91a7785f00809ad3c6334f1bd0aafdb511d52722fa1030c18603d4c5be2364db3817fd395afd74acc19132db860300d513bff4ae9bff515e33aa79468615078e921e3634a0a6e2dc8b73d09d9b35ce7ea3c211bc391040d5ec31583e74c048b9f8006d386589befa7ab4bd4dd6b521023511e75c9c7bde9cac57743cf1cd811fb421024031f61d259fd60673b7d778ea9d38aef609e1c33654a0aae25cdb7fa4dce7cdc57a47d7c21ded63e553365400c8e79ba3c3fafacaff8103466a932969b4215fca2705a2dae21c8b73cd9b83a5c908f9dd0163653d1b32005466bf91d2f5c011f2b703b5b1943ddaf8cee6fba0a89ed0e5c091729e37f7ca165d0b8fecd71636b78103409a6f6d218374f37fda6b30c545c4fff71566842ce12100c50b5d74533dd59d7315a7e0b9ffe6e8da8d6bd84e0000b2d1c631541bc873dfd24652958c90d5df1a29fb1f344aa6b9ff3d57e4283b0da010ba591fedcfb5caf3fadc97fd5f5f0bfeff9337710deb834b8b9d0600bcb3b8f96b637ade6b2885e4f55726e3ec70efd27f3edefdfff26444f8b6950772d14df460778ee589ce792b1fd7dbb88e35e1fd7f05a4e3415ed7b41d0e007c1d9bff08ddfc4768f3a84ae4def6b6fffcd9fe73fb85f7e9716ff1ffffcaa38def48be1d80ca852e710e79732b5f64f99b7fc67f5c13716df8ff7ffe1cb8050f0100de8136a1d68374f33f481b4655b2859cfb767f4f79bf56f98c36c047dd3f972b72320f014817bae87c3dd59f5379227f8b73dd0ef21fe2da886bc4ff73f9a30f003c040078ab6a6efeda74566a16daa1ded6b746c9006d80af7a35f2445f019dc35f11445671aee87c3dcf9b4bf9222feb5cec6787795b71adc435e3d7c81b795e6bf31000e075b6f9bfd0ae0da2f8c8b3df4af88125fa003059ff8cf8b52a8f9edfe57a9efc0855bca33847740e5ee9cda17c118973db0ef35fc53513d78e5f2b6f780800a0b4d10cabdae6bf85fcf5c011d2cd0e9599fed97ddf52ab98dca30d7e2d3b0cf01fda47cb3aba39deebcc9b22b2af1d26b3b876e21a726a1510793e3ef8dba1007436fa2a6050b5367f7db5f3cbfd87c9da76a864daf84ef1eae68d8eeb914a1e4ad0dc0e1c2e3d7453fc9b3767f246d7d8c9769864710dc5b5e4d5cd9d2dc20a3def3e7628009d457b9b6cac9bec93dfde2284c2d32657e6fd72fbd289e13ddfde422e71ebe78c8e6d859e3f3f4a181d74e3df56e7ec73de5cc91b9d67e7879c6f428d6b29ae29af7edec41e107b811d0a40b3fb6eab7c4637d787bc86903b6d727adcbced50b9b44f0cefd77a37bac7c9196d7ca2b50f8e3fded80e874e26ce53ddfc0eed980bce1cc91d9dbb710edbe172e97820d6b5e51e2777e4a1d813ec50009a55fc4966da48ee3e58177ed1d1baff3c6274f8b81daa10b19e36a87bbde31511ad7d153f3dadf3396c947c5ae7eb35de9c28246df2cbaaac055d63eef17226f6047ea226d0c4e2ab086d4c977a0da0a8e8867a59de2f79be59dca0abfc10f0677d2538d80e8726d73e425a0ede42fee2cd8542a29bffe1ade19376b842c43515d7967bbca2a2bda1a8afde0128196d7aa7b80bbff0c877ec9085e978c556c587001df32a6d8007d2009b577b5b78afcea1f68e7bedce81025285cd3f8a6bca3d5ee19153ec90009ac57786cb01df690ba116d126287abcafd8a10b131f02b4f6bdde310bcb70b9fd9011b2811d124de29061f2059d3b77b8f7bca80c0ff75469f3ffbf8e35e51db32a91fdecd0001a9d36bf79fe42af6286cb0b9a1e3684c2d4e221e0e0e161c5b7db644ed1dfca40edc57bf8fafc97e7bc7b5d58aab4f9c73574f07079d13d661513af990d0140a3d2570f430f69939587c4455deb0c9787da0717ff06bb58531bfa1dee318bccf070f361adb2a91d160de63b2364339dfbb7baf7b6c0e8267d5b3536fff6b6f0bf3afe3f79c7ac7e6465ec1d3614008da6bd45d6d185fcd8a1baa0eb17b9b1bd6b317f15ea8d8e1d2c1fd2078c9ffac72c2e7afd5ed6e3ec1fbf7f6c8746c9c5f9a6f7edc04387cb2bde3d2d327a9c653a37dc1f7095473c87b876bc63d62ab177c41e624302d028ac81dce12decda27ff87a178e21bf6b4f669fe318b8d36c3df69c6dba15152f11ee9c6ffa0770f0bcf7039a51a6f1a8d6b25ae19f798358fdc518d07780055a4af5a4ff517747da2e3596c432b9cd63e481bbf78c72d3cc3e56abe2d503edf6d95aef1deb8f7ace0c4b9a639d00e5d38ad7d8277dc7a45c753f1471903a8316d8433bd855cef1cd296fe0351b23a6498ccd246f59a77dce2232be3034dfb10f9ac1d1e75f2dd91f2b98e0d73b8acf2ef55b1e99863babeecf0858b6bc43b6ebda3e73dc38608a0ac0e1b2e030e1d26af7e777808658b364e39ac4d76b6a116eebbc365989efb3fbd6357237aac17bf3b2c1c11ff66820d013512df20a7d7ff48bde72f79f7a61ad1e33dae1b74d57e829eae8fa9718d78c7ae7b86c5f753487f1b2a80b2899fe7ad0f007f3b4c176c6119262fb8ffbec2682359ad63dcd6865cb84347cae7b5fecfbc63572bba093dafd7e9e06afc8d07fca76374e3d7fb7b48d1f3f2bf45eff1dd716ed9300a17d7c4eb6bc33f7e451926ff72ff7d85d16bf0083f330028a1f866246d20cbbd855b6974c1df681b6ab10f151dafda64840dbd70278c970fe831cef48f5dbde8f57f519bee8987b7868d6c282848bca6f1dac6b9e35dfbaa66987c2fce291b4ae10e1f26c38b3e2f9d8b0fc5b51b1f5cbcff5e69624fe0d3328192d1857990b7602b4d6c20ff7e457bf870e9517ce3ed780818d331f82ad1c63d5f8fb3d23f7ef5125fc97d7758587a58ab0cb2a1a042f11ac66b19afa977adab193de6ab870f0f736d2855a19bffc8e237ffb0e288a1d22dd68fafd8e35af6febfca2307740c1e40fdc526a99bdd2a7fb1a6471bc65387bde967846ba3da4e376cf1feff4aa3f55ed6e354f5afd6e92bc77edab01ef48e5f8be839fe5aefcd2e45ff64b866d6de163e11af99deb7df78d7b416d135f0fb4387495f1b5255e8398e2d7ef3eff816db5676880ef1013e3e1478ff7f25d139fd9a1e63809507502f478f918fe803c01f0f1f1642319195f1558995ff0fdab0f6f3ff4ce5d1b1bfaac7dbda0e5115edfdc28775eca77bc7af55f4f82f6bce3d7c68d8a2fd5de1dd3634988e6f610d97113a17ce8bd7cabb86b58acec9d3e29cb1a155851e63fce1adf28a77fc5c69953dec10ff411f8447eb3157bb7fa6a2c81f62efb1f200eae108ddd88ed005595c649a957e8bf80125da60cef7ff5c9e743c746c6787a99a235bc39775fc4ff963a8615ae5313ddf138e181a5a3bf3c3403cf7780df49e9ca479dcbd56358d3c796415dfa0fa6f47b6ca8438e7fd31541ebd8667da215cfadf17787faed268bdd3ac34805a8bcdca5b98954637a563adf4db8a1f7baacdeb6eefcfe78b36c456f9aa1da66a0e1d266beb71aef5c750fb68137d547352fcb26db55f759641c75763f45ce339c773f7ae497d22571fd516d6b261564d7c08adc6e6af73fa962c9fd817afbbfbe72b88f60b890f33561a40adc40f40d105f884b7302b4a6c20193fef3e364a6d627f72ebe48836a7d55a77173b4cd5747c25635898aee7fcb4378ebaa5555e890f277a1df688dfb76d86af0ec473387ca8f48ae714cfade31cbd73af53745c4fe99c9b568d8faa7e335dafb3f5fc5779e3c895567928eb5fcf8b0f093a8ebbdc3a95a455fe197b919507506daf6f6072b9bb202b49ab3c96faea27be49509b6775be6cdb2ac7d4a221c7a6a9d7f13c8db8e3a8775ac38af8ca54afc7011def1d680b1fb5a197d6912df2b13856bda607be3ef6780eceb9d539afdf7339377eae800dbd6ae25cd67b7888378ebcd135f8e8d1c3e40b76a84c0e1926ebe9b93fe9d5ab24b117d562bd0250bae8171cd91a4221192aabb4690fb3d249e2abd4238786156edd9cd18d6369fc76831daaaa8e6c9551470c953f7ae32853741311cdc39a653ade83f5d7af1edd2a5de34f46b453a99978cca38748f73806bd7edfd1f15ca273e94f718cded84b95a1f2079df355fb1c8a378aafb8f59a9ceb8e236f86ca93f11ed8a1921cd52263f59ead76eb5696aafe7549002a7e208a2efc178fd2455744b4d65e56ba22ba010d3aaa555ef26ae78d8eed76dd686af2e97a71438b1b99e6656f2ce58ffc53afd7dd9a0b8e1a2a4769f6d68d67866e74dbeaabbd16fd75b33877e22b5efdf5936ffc6a42fc7dfc77f6df368affafd61bdaf167b546acd551b3557e1c8f118fe58fa1dce9b8b7fae054ab07cb1306caffe8f5bade1b4bfec8f371edd9a12aa2633bd0af9d1eadf5a23e8c6c60a501142d7e994d17fe75de02ac24ba682f2ee24b775a6bb48e6be59beb17111de31fe2a66487aaba6386c97a7a2e6769d678e3218d98782fe52c7da0a9d9cfb63fa24dd6d5878dfbfcf1e48dac3cfa6dfeaa6e8ab8f6757d5de11f233dfa807599950650346d2853bd85574974b1fe75715bf88495ceeda861f27fda4c567bc7ca1f795a53d39fc51fdfb8a6e773b53f1ed22879fd1e4a4fbbad35a1c71baaebebefde78f2a6638d15f857660f1b209fd69a8f79c7aa2447b6862f5b690045397a887cf668dd088fd6459637fa20b15a1b549b952eccd1436596363ff18e993fb2467350addf197fcc3019a7d7eb5e7f4ca4ac89f72c7e9fdb6e63cde81cfdbaae81d7bc31e54d5c5b470d0bd3ed508589d7a9b0753b541e5dd2006f56051a8a2ed0f3dd055751e4702b5b38ad1dbf67bcda3f6efe68ed2b6af5be807febf8d68bbeead263dfed8d899427ba4eee8af7aad6ef4a8f9b9ece8f0bbc311591b8a6f495fa4c3b5ce1f4ba1def1db792e8588fb3b200f23ab64546e893b51c333484dc6909f764f9c0903c8e1e229374bcafb9c72f222df2e76386481f3b5c4d1dd32aa38e192a37bae32275cbd12d7283cebbdcdf17af447cd3a41eff7e6f5c85a44556e9a6ba931dae2ae21b23755effd63d7e6ae2785b426f2b0da052ba30df5bd4c2d44df9e5c583e44b56baaa8e6a91ed74dc2bbd7114921679257ecbc10e5773c70e95c17afc4bf51cd7b8e3233548bcf6f2d3a3ebf85317750e7c45f39c3fbe22222b75f3dfde0e575547b54a4f7d9079d51f47625ae4eecefc31d74021b4b9ece52eb00aa2b5aafe297b6fa4afd2c769037bc91b4b616991652764fc14b46a382efed5ba9670849ee713eef84815a2d7ba450e4bfd009c22e9abfe8fe938bee78faf98e87a7d59b3a51db226f4baeee98da5a2b4c8022b0b2055fc743e6d32cf1dab8b29775a6479adbf2f1a1d3d4486ebabe5e7dd311514bd46ff3c6ea86c6387ac8b13c6cb078e1d2293f461e0666f8ca480e81c8ed7b8dadfc2fa6f74736bd539fdb03bc682a29be70bf15b7f76c89a89afda753ddde98d29357a0effaac5cf57009a92369933bc85959c1679e59856d9d4cad65cfc12ad369567dcb1151a3923be32b3c3d68d9e6f571dcbb19a47fd7192cc6991bfe946724cadbe75f54ee28347c7577b5a64b53bd6821237ce6386488b1db6e6f461ba9bcedd95ded852a3e7c24f0c0452c54de4b821b2eab89610f24617e10156b66ee203889ecfc3def80acd10f9737c856687adabd75f4d85561dd349c7b5c8e3ee788913bd567acde2b5abc757ad3cc70f91ee3aa65ffbe32d2ec70e9147e2066c87ad1b7df0fa8e37bee4680f3b6648d8dcca02c84217e025ee824a8edc777abff03e2b5b57f1a366b521dce68fb3c8c89ab88114f94147792d9d18dea3631aa9f99ee61ffeb83b6f74be3faaf7ed34fd7544bc5676d9ea2ebeead7fbf52ddd985ff5c65d6ce467470d28c797cc3bbea5d522bff7c7991a59666501fc37c70d96a1fe424a8b36add5c70e95c156b614ec7be5e77be32d3ef2b836b129657915f946c70e961e3ab67df45a5cab1bcc2bfef89b387ace76ee7bc76b6197a5548e192a63747c7f70c75f7864993ea87fd80e5d0a1def756811f1c79b967a7e4b036828da0cee58ac8b267786c88956b254e286bcb8e34b8c22eeb80b8e36f1e527b44a573b7ce9c4c6bf78a86ca9e33c56efd95dfaebabde793474e243ce10b9339ea36ef8e3cbb6d9bdd1492db28e8ef742f73caa1239a6ac7f654eefd729fe985323b75b49006f479be3f6fe024a8d3c1e7f1a99952da5e3f5d579ed363b59a9af448e387a8c7cc40e5f5af15b36c70f91017a6d16e943d2b93af6076af5b0544c648d8ef7f78b878473f455fe42fd7dffb27c1bea9dc4cfdc583c5876d7cdff79ffbc0a4ec77b7c64be1dbe94e2b7d1741e3ee98e3f3543f83901c0db8a0d4837c5df1faf8b2577eaf8213929e2b73bf49cffee9e4315a24df711dd5c6794e9fbcc59c487b98e87821699acd7eb908e57a843e4d7fafb97bdf3ac4574a37f49c7f4ab389638a638b6b8d997e16f62a43a61b08cd7f3f98d779ed5881eebe9784c3b7ca9e943d13cef1cd223bf8f3dceca0278236d0a73fc85939821f28b46fa14aee307c9e77413b9c93d972a458ff7bb66784512bf9da20f07eb9e305406c7cf42d00d78b6deff6fe9f99da8e7b9547f7fab9ee73dfaebfd9a3f69fea6ffed59fd6f2bde703d5674fc3bfd6ff6ffdc6f7fe6d658a3a396d68cb5e331e2b1e231cbf8de8a54f15cf4dc96bfe15a543fba3e170f0a1bda104a2f3e2ceb987fe59e4b62628fb3b200fe2d7e4ff4f8c1f2d8f14374a1e488366bd1463dccca368cd864f495c677b4d1acf1ceab5ad163dea5d76cb80d039d843ec074d5fbbe2cae176f5e542b7abc93e21b616d180de3841619e19d4f72b4c795f9fd1f405d9c3844be7e822e90bcd105f6232bd990b4d18c3d61883ce59d5b553358ae5ccc0f30697ac7f497f5747e9da9f77b953b0faa145d972fe8c3ed241b4643d2f358fae6f3aa247a2df6b09200e2f7c5b4213de22d9694688379e9f8a1617d2bdbb0e2396893b8cb3bc76a46af9fe87db826bedab1a1a049c457fc3aa7ced2cd7fa577efab9ac1f2db139be0c3704e1c285fd06bf88a7b8e09d11aff38bb2d7cd0ca029ddb898365aa36889037da680eb1920d2fbe6b5c9bf551270e9135deb9563b7a2d7f71d29030b1d1de2c88ff74628b0cd37974a946bcfb5cede871cf6ea62f79ebba38dc3bcff4c8422b09745ef18d54ba187ee72f92ecd185f9ac369a8f5bd9a671fca0d0aa0f480f7be75c8b68037fe88441b280572c8d23be01f6c441f2159d377778f7b416d1f5f8441c830da9691c3b583ea5afe25778e79c12bd3e7fadf70f7502eaee8481b2dd89837551e48eec6f259bced13de5237a7ea768d310ffdc6b11794a1f048ed3e6c5e79a97d42943e4b37a9fbea1f3e40ffe3dac4d4e181496c6b1d8b09a8e5edf83bcf34e4f63fc5565a06a4e1a2c779da48b214ff495c6137193b4924d6bc91019a5e7fa57ef1ad432dab86ed3fb364d5f0d7dc886863a89aff6970c96f17a4f2ed6bce6ddaf9a65903ca369e837fa65a12f5afe47aff553ee35488afcae19fe2a2950919306852dfc8591165d8c9de65db5b1f968933dd3bb0eb58ebe8a59a1633969097f7ba0e6e21b4575033948afff23debda97de48ae3facada36bca6a73d671fff3a2466888cb39240e7b264905cb34417419e6803fc7b67fcfe747cd5a7e7fe90774dea11dd007eaf39e4e441d2d3868882e9c3dfbaba66beaef7fe56cd1aef3ed43a7acf9fd27938c386d869c4af7ee9b93fe65d93b4c8722b09741e270c913efe8248cc205960253b9df8812ada7c0fd06bf0b27b6dea16f9a38ee9306d907d6da8a8d0a983c2867a8ff7d46b799746fceb5d8fc81a1dcf29f14d7136d44ee7a481b2c8bf366989bdd04a029dc3c903e5ec9307859027bac93cc6bbd33bfecae0fafaca7b99778dea1dbd477fd2b12dd6fbbdf592b6f0511b32de46fc4c8c9387488b5eaf83f4bafdc2bba6f58eded3bb4e61d3eaf82ac09281f284778d52a235be6f2581e6b7b857f88436b897bdc5909481b29f95843a69808cd34de30feeb52a4174e358a9e3bb457ffd968e75083f18e5754b064837bd265fd78de032bd3ecf79d7ae1419284fea1867f2c6b5ff9fdeb703dd6b9510adf152ec895612686e270f965dbd85909481f2028be6ad96760def8f0f46a5de482c4b068515baa15c1ac77bcae030ba33dccf8eef1debc38f9ef72e7adee76bf37fccbb36a5ca4059a5e35cc27a7bab535ac327632f72af5b424e19288bac24d0dc7473faed2971d2e78a1c6de5e038bd5ff85fbdce47696379d9bf7ee58b8e57b499fe517ffda16e907be80342eb990df8a375ffade361acbf0c387980ccd7f97aa69ed7aff57eacf2cebd9c91353ade1feb03cba6764a70e87d5dec5fbf840c94fbac1cd0bc4e1d2c434fd5099f27da98567e6fa0ac6b25f10e4e6a9175f47a9da679cdbb968d106d8e7fd72cd77c4fb3cfc903c3974f1d285dcbf053e5e247369f3a4836d1ebbba58e6d77fdfd12cd35facf7fd67f5eed9d4f6344aed06bdccb4e13ef20be0747afd52aff3a664f7cef8795049a9336c673bdc99f9873ac1c323aad45bea84dea07dad8d738d7b341d3f10af5ef7a5ef76aaeea985b03e518fd752ffd756adc944f1b20fdf51556bfd38784cd4fe91f36d207d0cfc72fdbbef163a3e3efe3bfebf86ffaff9cd25f368b7f26fed9d306cb783dc6cea70d923db5de91fafbb33b36c741f273cddff438b91b7f99a2e7784b7c48b74b838c3ae69e733d5312e79695039a4f47931d202f9f3a50277c8e6853ee6125914837b7ee7a0f2ed68d6b8d776d49678dfcfce48132d6a60912e9baeae35fd784686fe47d16685afa8a693777e227449f926fb772c861c960d9589bfe297a3d5ff2ae33e90cd187c00172856efcfcf8e702e85abad3bfced973da00d9d5ca01cd451bcefda7c5499e27fd658a954301e29b05f5be1ca48de709f77a93a68b6efaaf684e8fdfeab0698002e81a9ae65defb4c86fad1cd03c4eef2f2da7eb04cf135d1c4ff1c13fd511afeb6983c2dcd307ca83deb5278d9fb87e74933ab8997f525f3dc5bfe2a9ebe769efdaa744efd1102b0934079dd4c77b933d25dac08eb172a892f8d3e5f4616d4bbdde4bf57aaf7cf33d208d18b953d7dfecd3fb850fdb6d4695e8b53ed6bf070919208bad1cd0f86c53f9fbe903e2e4ae2cdac0e4d441b28995440dc4578aa7f7933d4eeb2fbff7ee092971facb13ba668ed34d7f73bb9da881d8a362af72ef49d668af8c3dd34a028ded7b0365983bd113a28bea7a2b873ad0eb3f441bd399faeae405effe90fa471fd456ebfdb9527ffd8a6efcefb35b871a8bbdcabb3f2939b51f7f15134de27bfde584efe9a4ce135d543b5939d4d192aee1a367f497297a4f2fd1bcecdd2b52cbc81a7d30bb4bb3f7997d641dbb4da8a3d8abfc7b9510ed99560e685cf14b59670c90c7ced0495d79e485f37aca47ac244a22de9333078689ba09fd581bd6f3febd234547aff56a7d08bb517f5dc4a65f3e715de89a78d1bb7799c3b701d00ce297ffdd099e105d4ce759399454fc5b04fa2a74dbeff50fe7e8c6f48c771f499ec8ab7a5dafd0f5342bfed54dbbec28a9d8b3fcfb983db1775a39a031e94238c99bdc6991f1560e0da0e3ab3e8342bf3306ca3774d3ba56efdf4bfe7d256f97f82a5ff38b33fa8723cee8276378077f63893dcbbbaf49e92f275a39a0f1c48d409bd8e3eee4ce98f8e7974e0cefb1926840276c2c1f38a35fd8421bda219abb34abbc7bddd9a373fdf7ba712cd187e6ede3c766dbe543036a6f0befd579fe84779fb3471ee3db00685867f597b633fb879027faeae7782b8726117fc4ef990364f899fd64cf33fbcb0ff5d73f68b314effe376bf47cffa1e77d999e7ffbf7faca84b30784b5ecf2a049e8bd3dc1bbf749d17562e580c61217c0593a89f34417407f2b8726767abff0f133fbca089d33fbe8c6f8e3b3fac9fdfa00f9aa37271a297a2eabf55cfeace9d8eccfd2cdfeb4beb2b69d369a98be7819e8cd8994e89c39ceca018d459bdf1fbd499d3df28895422714bffc79661fd940e7c268dd3817e87c38366ea49a07b531ae7ceb7ca94fe226afe37958738dfe7e898e73777d98d95aff79b3a55dc3fbed74d0c98477852e3a1ffeeecd99cce9c7cf0640033aa7af7cd19dd0499193ac1cf01667f596cf9c3550baea3c69fb7e7fd9419bedaebae97e47fff954cd25da3c6fd079744f47fac91ff4bfff49fffd3f34cfeaef9ffbf73c7bfdf7f2ace631fb7f1efa7f7faebfdca4357faa39437f7f88febadb197d65a73307c8a8eff7951ef1d57cfc7eaf0d09f80f3a5f4ef9f73cab34fc554f341c7dc5f6756f32a7445f45f1f3c901342c7d481ce7f5b6a4f493a9560e680c3a69aff97ebf107264055f3e05d0c8e2df80d11743cf39fd2d2172be9503ca2f4e7a7df27df96c9dbc954627fd85560e001a96f6b3a56fee6f49e92bff8cef27b07240b99dd34786bb133921fa00c167ff036878ba814ff67a5c4aceea2dbdac1c506eba79b77b933873facaaab37b854f58390068583fec113ea93d71b5dbebb2a6afec63e58072d3c97acb397d43a8387de42e2b05000defec3e72b7dbebb2a68f5c67a580f2ba70b07ce89cbef2aa3b89334617cb77ad1c00343cddc00ff77a5dd6684f7c39f6562b0794d3d9fdc216e7ea84cd139deca3ac1c0034bcf3fac918afd7a524beb7caca01e5a4affef7f7266fe6f4915778d205d04ce24f733cb7afbceaf6bcace9237b5a39a09cf401e03277f2664d1f596ea500a069e803c02d6ecfcb9a3efcd5689458fcbbaae7f591a7cfd3c95a71fac881560e009ac6797da5dded7919a30f107fb65240f9fca0bf6ce64ddc949cdd4f865a3900681ae7f69636afe7a524fefc0b2b0794cb79bd65ea0ffa8450717acb6b67b7850f5a3900681af17d00da2357b9bd2f63f421622b2b07948b6ee0c77993366bceeb1deeb15200d074ceeb23bff27a5f42be6da58072d1c9bddc99b099a34fc7a7592900683ada23bfe7f5beec912bad14501ef10d80e7f796e7ced7495a697472cfb47200d074b447cef27a5fd6688f7cd24a01e5f1c3deb289376193d2577a583900683a3fea233dddde9790f37aca17ac1c500ee7f794affcb0770895469f8c5f583a31bcc7ca0140d3893d4e5f2cbde8f5c0acf9412fd9deca01e5707e2f39d09bacd923b75a2900685ab1d7f93d306b647f2b0594c30f7bc98f7ea493b3d2e8a45e62a500a069fda8979cecf5c0acd15efb432b0594834ecadf7893356bf40160a1950280a6a50f008bbc1e983df22b2b05d45ffcbe964eea57fcc99a2d17f40a5b583900685ae7f792115e0fcc1a7db1f572fbbbc2bbad1c505f3fec1136ba4027669efca8bb7cceca0140d35a3a20ace5f5c0a4f40a1b5a39a0be7edc3b8c762769d6f492a7ad140034bd0b7acbb36e2fcc9a3e32ca4a01f5f5e35e32efc7bd42a834fa00709b950280a677414fb9ddeb855973612f9963a580fafa71cf70843749b34617031f010ca0d3d09ef73daf17668f1c6ea580fad20780a5fe24cd960b7ac93e560a009a9ef6bc6f7abd306bf401e2422b05d4d7853de51717eaa4ac343fee2993ac140034bd0b7bcb4e5e2fcc9c9ef2732b05d4d7853de4b1a53d43a834177593162b05004d4ffb5eeb9bfb60527ac83fac14503fcbdbc27b97f69435ee24cd980bbac97a560e009adec57d6403af17668dbee85ac5cf4e41ddc5cddb9ba059c34406d0d9c4174edafb567b3d316b7ed257d6b672407d5cd453067993336b2eec298f582900e83496f694bf793d316b2eea2efdad14501ffa00f0958be264ac343df80c00009d8f3e00dce1f6c48cb9b0876c6ba580fa58da43665fac93b1e2f4e0afb300e87cb4ff2d7d4b3f4cc8d2ee32c34a01f5715177f9a6373933a7879c6aa500a0d3b8a8a79ceef6c4cc91bdac14501fba811f7d710f9d8c15461f200eb55200d0695cd4430ef77a62428eb052407de803c059cec4cc9eee3cc502e87c2eea267bbb3d316bbacb19560aa88f9ff4904b7ea293b1d25cd45d665a2900e8342eee26b3bc9e9835fae26b999502eae327dde586653a192bcd25ddc397ad1400741acbbac957bc9e9835fae2eb5a2b05d4874ec23bbdc99939dda5cd4a0140a771713719e1f6c48cd1175ffc156ad4d74fbac97dcbbaeb84ac301775979e560a003a0ded9dbdbc9e9835b1f75a29a03e7412fec59b9c99d35336b55200d069fcb4ab74757b62c6fca4bb3c6ca580fab8a49b3c71894ec64a7359d7b0be9502804e23f63eaf27668f3c66a580faf869b7b0e2a73a192b0d0f00003aa3d8fbbc9e9839da7bad14501f791f00aee8113e69a500a0d358b6b97cdaeb8999c30300eaed926ef29c4ec438192bcad27ee1e3560a003a8dd8fbbc9e98395d7900409db9133321d7f6948f582900e83462eff37a62f6c81a2b05d4c7a53a11f3c4ca0040a7e3f5c4945819a03e2ed34998275606003a1daf27a6c4ca00f5e14dca94581900e874bc9e98122b03d487372953626500a0d3f17a624aac0c501f97770d214fac0c00743a5e4f4c899501eac39b9429b13200d0e9783d31255606a88f2b7412e6899501804ec7eb8929b132407d789332255606003a1daf27a6c4ca00f5e14dca94581900e874bc9e98122b03d4c7955f0a214fac0c00743a5e4f4c899501eac39b9429b13200d0e9783d31255606a88fab7412e6899501804ec7eb8929b132407d789332255606003a1daf27a6c4ca00f571b54ec23cb13200d0e9783d31255606a80f6f52a6c4ca0040a7e3f5c4945819a03ebc4999122b03009d8ed71353626580fab866f310f2c4ca0040a7e3f5c4945819a03ebc4999122b535ade985362650054c05b5329b132a5e58d39255606a88f6b7512e68995292d6fcc29b132002ae0ada9945899d2f2c69c122b03d48737295362654acb1b734aac0c800a786b2a2556a6b4bc31a7c4ca00f5e14dca945899d2f2c69c122b03a002de9a4a8995292d6fcc29b132407d5cb759087962654acb1b734aac0c800a786b2a2556a6b4bc31a7c4ca00f5e14dca945899d2f2c69c122b03a002de9a4a8995292d6fcc29b132407d5caf93304fac4c6979634e89950150016f4da5c4ca949637e6945819a03ebc4999122b535ade985362650054c05b5329b132a5e58d39255606a80f6f52a6c4ca949637e69458190015f0d6544aac4c6979634e899501eae3864d43c8132b535ade985362650054c05b5329b132a5e58d39255606a88f1b7512e68995292d6fcc29b132002ae0ada9945899d2f2c69c122b03d48737295362654acb1b734aac0c800a786b2a2556a6b4bc31a7c4ca00f5e14dca945899d2f2c69c122b03a002de9a4a8995292d6fcc29b132407d7893322556a6b4bc31a7c4ca00a880b7a65262654acb1b734aac0c501f37e924cc132b535ade985362650054c05b5329b132a5e58d39255606a88fe59b84902756a6b4bc31a7c4ca00a880b7a65262654acb1b734aac0c501fdea424841052fd581b06eac39b94841042aa1f6bc3407d789392104248f5636d18a88f9b7512124208a97dac0d03f571cbc621104208a97dac0d03f5e14d4a420821d58fb561a03ebc49490821a4fab1360cd4873729092184543fd68681fab8552721218490dac7da30501fb7e92424841052fb581b06eac39b94841042aa1f6bc3407ddcf6459d888410426a1e6bc3407d789392104248f5636d18a88fdb7512124208a97dac0d03f571874e42420821b58fb561a03ebc49490821a4fab1360c00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000400dbdeb5dff1fd645c2b43a7d75340000000049454e44ae426082, 'Nguyen Hai', 'Dang', 0, '14728', '3897-02-03', '68', '147852369', 'Ben Van Don', '678', '1', '1', '0123456789', '456789123', 'dang@gmail.com', '147852369', '1', '2', '3915-08-31', '68', '01', 1, '1', 'Ben Van Don', 'Lam Dong', 'hello moi nguoi');
INSERT INTO `nhanvien` (`MaNV`, `img`, `HoDem`, `Ten`, `GioiTinh`, `STK`, `NgaySinh`, `NoiSinh`, `MST`, `TamTru`, `QuanHuyen`, `QuocTich`, `TTHonNhan`, `DienThoai`, `DiDong`, `Email`, `CMND`, `VanHoa`, `TrinhDoHV`, `NgayCap`, `NoiCap`, `NguyenQuan`, `DanToc`, `TonGiao`, `ThuongTru`, `HoKhau`, `GhiChu`) VALUES
(499, 0x89504e470d0a1a0a0000000d4948445200000200000002000806000000f478d4fa000000017352474200aece1ce90000000467414d410000b18f0bfc6105000000097048597300000ec300000ec301c76fa86400004dc549444154785eeddd07bc5c55d5ff7f63af8fed51016922cdf45e6e6e72490f10407c8c0412d27b40bad2e48a201d42094d408a28123048ef840e2aa2220a0a164441aaa11392acfd5ffbb2fcfd111678f69c333367e67edeafd7f79550b2ce3ee7ecbdf6997b2773df050000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000d019adbfbbacbdce2219b2f62eb2e3dabbcaee9a43f4f7a7acb3ab5cacbf5faeb96f9d5de44ffacf7fd6df3f1ba3fffce23abb86d011fdfdfffbf7faffc4ff37fe19cd72ad7351aca5bf3f44b37b3c463c563ca61d1e000054cb6716868f7e7e3719a41bf01cdda44fd24dfa6afdf501dd945ff97f1b798df3fab1e501cd553a9e13e3d8e2183fb7977cc4860d0000b28a1be8e717852df495f6019a9facbd481ed65fd7acb38b6ebc8d101dab3e0c3ca40f0517c77388e7b2f6dcf0613b3d000010adb5ab7ce6f3bb8489ba612ed60df3679f5f24abf49f433345cfed35cdddf11cf59f27c673b6d30700a093680fef5e77810cd0cdb05df373ddf0d7bc79c36cfec86acd9d7afedf8ad7225e13bb3a0000348f8d77950facb750b65b7791fc40f3e4baba099237245e13bd36f11ac56b65970d0080c6d3b53dbc7f9d45324137b673f555ef0a77e3236f49c7b58ad76ca16cd56f6e789f5d4e0000ca6dfd05a1dfba0be5f4cf2f9267d75da49b1aa938fa10f08c3e0c9c16afa95d5e0000ca63a3b9e1e3eb2d9405baf1dfbb9e6e5ca4f8e803c13deb2d92f9f15adb650700a03ef4d5690fdd94ced2cdff456fd322d588bc10af79bcf6761b0000a88df57709a3d75f28d7acbf48647ddd94483da2d73ede03bd17765b0000285e7c439abef29ca69bce7dfe8644ea15bd2fbf5a7f1799f2aef6f05ebb5d0000e4a49bca7af365da7a0be54feb2fd40d8794370be4617d40dbf95d13c37becee010090a83dbc7b8345324937940737d0cd85344ef441e0017d60fb1a1f30040048b2fe2299b0c142f9adb7b99006ca02b94fefe378bbad0000f8d69f275d375c20576fa89b0769a2e83d8df7d66e330000afdb746ef8df0d17cac9fa8a7195bb81943a22bac1fd4373bbe67ccde17a1e7b6e385fa67d217e2563910cd15f375d7f41d848f3c99837fec8def8fb7ffffbf8ffc4ffd7fecc8458a3a396d6b4daf118fff0c751eec47bab396183ddc227ecd401009d57e8a21be83ccd33dea651aa2c90351b2c943fea267691fefea00d16842fc7cdba1e9f9dbfc1b4f0c10d76099beb83c2f6712c9a8b755c0fc531ba632f51f41a3ea5d76d76bcf7763a0080ce246e9e5f982fb77c614108e58c3e94cc972b369a1ff6d5710e7be3abf6b28a638c63d5ec1fc71ecfc13fb73244967f71a16c6c43070034bbb6f6f0deb841e906f08abf31d42bf292be82bef20bf364177d35fda5e678851abac47389e7d4716e7a8efeb9d729f3e5657d50f9669c133660004033da709ef4da6881fc7a236dfee588fc4537c5c5ba398e8d5f56b76136ad788ef15ce3396f345ffeea5f93da47c773ef17f86861006846a18b36f93df515dfabde0650cbe8181ed5cdefb80d17caa0cefd7de8d0e58b7365885e8fe33bae8973ad6a1b7945efcbee9dfb9e004013596f91aca38dfd7abfe9d728f3e545dde4bebfd1c2d0ca87d338f49ac46ba3d7e86cdd885f72af61cd22d76cb030ac6523030034a28de6c9f69aa7bf383f847a448f7daf6e6a0bf811b6d9c56bb5f13c59a8d7ee57de35ad45f4d84f7e71be6c6b430200348af8a62e6de2c7681317afc157337adc55fa8affc24de6c42ff1238f780d379a1796ea7d5ced5debea46e7cebc70043f5700001ac4c6bbca67369e2fcb37d6265ecbe886f1fc17e7c9e20d17ca063614146493056123bda727ea357ed1bbf6d58ddc10e7940d05005046f115a36e128ffa8dbc4a9927ffd24da29d4f98abbe788de3b5d6ebbee22df7a1aa9147beb04006d830000065b2f10299a1afc05ff51b78f1d163bda01bc3a1f123746d08a891aeb3e4537aed0f7bfd1ef8f7a7f874fc2d816936040040fd852e7123de449b742da2c75aa93936fefc001b00ea247e697e93f9725cbc27debd2a3e229a83f9ab82005067f173f03799273ff49b75f1d18d66191f1f5b3ef19ee8c67c9977cfaa9279725ed789e1fd767800402dc52f036f3a4f6ed9745e0855cf5cf9ddc6f3648c1d1a25a5f7697cbc57ee3d2c3e37f7e0db3f00505bfa0aecf39a079ca65c6ce6cacb7a9cbdf9acf8c611efd5a673c3bef1deb9f7b4c8e8c3c6668b641d3b3400a09a369b1736d44df9cf6e432e309bcc951b379e235fb4c396de46f3e5b37a5d06eae6f7651dfbae9bcc0b47e83fff40cfe5e64de6867b3a1e98e6ca9ff4d7a7f4bf3fbbe93c11fba34de94bf364133dcfe56fbeafc5471e8e73d20e0b00a886cde6cb669bcd9347b5e186ea45fea54d7d5659dfe815bff7bcc9ecd05b37f2a93ace637453bf6eb3b9f2847f2eef1c2bd9c442974de7c86c3dd7156f3ef722a3f7e1913837eda00080226d36477a68a3fda7d7808b8bdcd2756e58df0e590a71c3d757f5adbad1b76b96eb185ff1c79e1e3b44d3fbd242d9401f926ef7ae4151d17bf3789ca376480040116263d53cbdf9dc10aa11adfd9a6e10fb97e5635fe3b71ebe3447bea1e3ba56f39237e6226287eb1cf4deea3d3e50afe72aef5a14913847353c04004011369f2d9b6e3e479ef01a6e11d14de1a14de7d4ff53dee279c68710dd40eef5c6598dd8a13b95f83e89cde7ca9fbdeb5144f41efe33beffc00e0700a8c4a6b3e50bdaac1ff51a6d11d1667d79af69f5fb08dff8c63d1dc7be7a8ebf79f3d86a111b46a713fffa9e5ef3abbc6b524c3adea7c21b0301a0123d66cbbafacaffe12f69432d3c73648d36e9f67afd6cfe2fcd95e19a0b741cafbae3ab516c389d93de7bbd07076bc4bb3679a3f3eba14de6c9e7ed6800802ce2c7ec7e69b63cd0754e08454737dd7f7d69966c6587aa99ae0bc347bbce915d34f77be3aa476c689d5ab7d932a1ebecb0c2bb3eb9335beedb686ef8b81d0a00f04ee2bbde7593bed16da879335bfea20f16ddec5035b1d94cf9981e737fddf89f74c754c7d8103bbdcd674a77bd478f78d7286f3ae6321f1b0c00ff4de8a20df37caf91e68d36f89febabf0b5ec4055175ff9e9a67f909ecf33de78ca101b2a549c1b7a4dee79f3352a22714ef3038400e01de8267db8d740f3477eda738a7cc40e5355ebee211fd2867f40d5beac5c606cc830718ee8bdbbccbb56f923dfb5c30000dea8db6c99d54d1b65d1e93a5bce9a58a3bfdfdf6d96eca0e7f188378e32c6868d378873a5dbec708e77bdf24544e7e2643b0c0020d2575d83bacf9195ddb551161b59528b2fbd7e69a6f4d1632df7c750ded8f0f116a14bf7d972b277cd7265b6bcda7daef4b7830040e7d67b867c465f1d3dea36cc3c992d47da21aa66e35de57fe243861e6b8d3b8692c74e03ae8e878023bdeb962bb3e59138e7ed2000d039c52fb7f6982dcb7bcc0ea1d0cc0adfb643544d8f3961b48efdafeef11b24762a7807712e79d72e5fe4ba5a7d5b0a004aa9c72c39d66f9095a7fb2c39caca5745fcfbfcfa2aee146de2e21dbf9162a784ff22ce29effae5492dbe420500a5d47d66f872f19ba89c64e5aba2fb1c69d3cde0cffeb1cb10794637965b748ce7eaef0fd3dfefaabf6ea719dc6d8e7cb1c78cb051d759f2a9f851b8764ac82474d16bbac4bfe69546a4e72cd9c60e00009d43df39b276cfd9f2744f6d8445451bea59d57bc35fe8a2f50fd486bdc63b763dd263963ca6b940c7b58f5ecb71faebba36585445e8a2d7fd9c37df873cd17bf664d769b5fb6c0a00a8b3d848e506af21569c597269b5bea71a7f58906eb497bbc7ad61740c4fe986f163bd76f3bbcf0d9bdbf05043718ec5b9e6dd9f4aa3f7f4eaea3db8024089f49c297bf69a15427191bbfbcd0d1fb6f285ea353bf4ee35531ef68f5bfde866f30fbd5e4b74d31fc99bc6ca21ceb538e7bcfb55697acc94ddac3c0034a7de33a4976ea8af7a4db092e806f9d76afd952a6df25374f37dc93b6e5533535ed09cd17b8eb4d4eba715e29df59a2a9fd77bf4a87bff2a8abcd263baf4b0f200d05cf495d3fb74c3feb5df00d3d373665851ada6a9afc8f6d7a62cde71ab17f96def99b250af133f3dae01c4b917e7a07f2f2b89fcb2ad3dbcd7ca0340f3e83d4bf6ebad8dae90cc94355aaff01fe91bbfccaeb54f728f59a568e3bfaac76c1966434003e9395b26e83c14efbe56925e33651f2b0d00cd411be5a6f1cb9c5ed3ab2833a5dd4a17a66d5af8a08ef162f77885277e75412eed3d4706d8e1d1a074d33ed8bfc7e9d139f172df39f2452b0d008d2e74d10dfbd63edae08a895c51f4bba6e397dd7553bec53f5eb1d16b71757c2f841d1a0dcebe6a74b577af2b89d6ba91bf1500a029f49929f3bd465749b4393e5cf4f7c8379b291fd3cdff4eef784546c7fe90be5adcda0e8b26123f5c49e7f99fbdfb5e596486950680c6346067f9b46e7c4ff799a94d2d67f455f36bbda717fb25f3f857bab4ee2ddef10acb0c795e8fb157d789e1fd765834a1be336490dee755ee1c488e3c193f7fc24a0340e3d1a678525f6d68c544f6b7b28518fc55f990d6bcde3f5631d1cdffbafed3653d3b249a9ccef76f79f3a0b2c8715616001a4bafd9d24d37c0557e734bcecd457e104e7c35aecdfa6ae7388524beead7fa0bf85e6ee712e7a8be7abfcd9b13a9d139f45abf697ce2238006a41be0b5fdb491e58ffc4b9bea0656b600a18bbebafa917facfcd1dab70d9c2d5fb083a193e9352d6cd86f4658e1cd8dd4e81abac2ca024063d0c635419b602822fda7cb4c2b5b88bed3e550ef384544cffb583ecc057da7c91c6f7e54923ed364bc950580926b0fefd64df6b75e334b4fb17f254a5f9d4fd69ae21f2b47a6cb0bbaf97fcd0e834e2f74d1f9b0dc9d2ba9992ebfe65b49001a42ff6932a9bf36aebcd18dfae5be538bfb5094fed3a5a5ff0c59e91d2b4f749c7f183843bada61800e83a6cb263a375ef1e64c6afa4d0f13ad2c009453fcf2b7be6279d06b62c929f06351b5de46fa00f0e45b8e9137d3e5eef8571ded30c07fd0f9b19f3b6f12a36bea77fc602800a53660ba4c1ba00d2b77a6cb6f8bfa5e7a7cc7bf36e25fb8c7c993e97255cf29f2113b0cf016f107600d98210fb8f327353365b295058072e96876d3e44f03a66bb3ca197dc533c6cae6a6633ada3b469ee803c5d9f17ced10c0dbd2f937de9b43a9e93f4dfec81b4c0194d2c0a932d56b5ca9d1cdf5122b995bffa9b2a5be5217ef3895474ee74d5948a173fa0a7f2e25661a5f0500503aa1cbc0e9f2ab81daa472659abc1adf3c65457319302daca50df39fee712acdb4700e9b3f52f59f299be9dc7ecd9d5349917bad24009483be2a1ee737acb4c42fd75bc99cf481649a5cef1da3f2c885457e1a213a175d238bfd79951a19692501a0fe064d936b066973ca13ddb09f6f9d219fb192b90c9a16e67ac7a834da742fe587f9208f41b3e47383a6cb8bdefc4a8aae352b0900f53578baf4d0c6266eb34a886eb2875ac95c62a3d55acf7ac7a8245aebdef85303ad3c50b181d3c211de1c4b8b089f3b01a014f495fbf7fd469590696145eb4ee193563217ddb02f708f5149a6c9a30367cbba561ac8257e66846ee0cfb9732d25d3e42c2b0900f53170b2fccfe069f2e2e06921e48936b46f59c95c86ec2ce3bcfa1565aabc34688a0cb2d24021745e7dc79d6f09d1f5f242cb4cf998950480da1b345516780d2a25b199b54d0b9fb092158b5fa6d7e6fa27ef1815652a9fed8fe2757c1540e7bc3be7523255e6594900a83d7df57fef106d46b932554eb472b9e8580e7a4bed8a23a75959a07071cefbf32e7b74beffc2ca01406db5ec2cfdbdc694126d62ab86ee1cd6b79215ebb763f85fddb49ff38e911ef93d6ffa43350d9e221bc7b9efcfbfec6999167a5b4900a89df82ad96b4a69910bad5c2e5ae758bf7e5a064f955787ce905e5616a89a38f7bd3998127d8838d9ca01406dc4bf133f64aa3cdb32555f85e4c8d06932d84a566cd874596fc8cef28a573f357a4ebb5959a0aae2dcf7e6604a74be3ec5cfa4005053faea656baf21a5a5988f35d52678a65f3f2d5ae76e7ee42a6aa96567f98d37175312ffe68b950380ead3c675ee506d3e79a20f000bac5cc5c64c918f0c9d2a7ff5eaa744c7b26ae814bef48fda6add59167af331293bcbf7ad1c0054d7f85de503bae93ee736a38cd10df7c5f81902563297b669e183ba792fd29a8f78c7ca127da029e8671000d9c5bffeaa6be9656f4e668dcedd7ff131d5006aa2754af8b2d788925285572db109ea83c02cadfdb07bccb78dfcb56d62f8a895016a4a1f5ccff3e765f6b4ee2c13ac1c00548f369bf35b63d3c991a13b87562b57b8b6b6f0ded6a9324537f6df7bc77e73f4816127fba340cd0d9d16b6f0e66562ceb172005025ede1ddc3a6c893c3760ea1d2e803c4a33579b39d1ea375e730518f779f378ed723bfe68d7fa8ab8e792a8ff9f3336be489f823b0ad220014af758a0cf21b504ae4382b5723a14bfcb6c5b029e19eb78c65b26c6dff135037fa507de25be6666a264b5f2b0700c51b3e45da876bb3c993f81061e56a6ef854d972f8ce72471c8736dddbec5f0375d5b673687df33a498dcee703ad1c00144f37cfbbbde69335daa4fe52862f55ea83c0085e31a134e2b7d6769647bd3593353cd002a89ad619f299e153648dd77cb2469bdcf1560ec01be8c3f5126fcd648daeadd58367c9a7ac1c0014a76db27cb56d4a0879a2afbac75a39006fb0c564d9da5b3389f9b2950380e2b44d91e39d86931079397e688f9503f00683bf2a1f1a3e595ef5d74eb6e89fe703ad00146f8b29f2f32db4c9541a7d00b8c24a0170e81ab9d65b3b993359eeb45200508c0973c387f5016095db743247165939008eb6c9b2bbbf76b2451f2056f2553600851abe938cf01a4e4a86ef2c5fb272001c23a74a4f6feda464c44e32dcca01407e5b4c960346c4e65261f4d5ff337c5219f0cedadbc3bb75135fe1ada1ec91fdac1c00e4a71bf832bfd9648b3e405c66a500bc035d6b57796b287be4222b0500f98ddc491e1a3939844a3362275e9500598c9c2c07786b2873769207ad1400e433668a7c4437f0356eb3c918be2f0964336a72d8c25b43593362b2ac8e6fdab5720050b9b6c932d86b3459131f1ee243849503f00e5a66cac7464e16f1d652e6ec2803ad1c00546ed44e61aebe2a0995469bd91fad14800c464d9687bdb5943523779259560a002a376a2739c96b3299b3136f4a0252e89a59e6aea5acd9899fb901a000a37794ab46ef1442c5d9510eb2520032d00dfc60772d658cfe793e7513407eda4c7eef3599ac193359b6b7520032183959beeaada5ec91fbad1400542a74d157f0aff84d265b464c96cdac18800c464c926ede5aca9a513bca8b560a002a337a92ac33461b4ae511193f5e3e60e5006410ffd68cbf9eb267e424f99c9503807463779016afb9648ffcc34a0148a06be7717f4d65cbe8c932d84a01403a7d00d869ec8e21549a313bca1d560a4082b193e42e6f4d65ce0eb28395028074da8476779b4bc6e803c00fad148004baf62ef0d654d68cde5176b35200906eec8e7288d75cb266cca47084950290401f008ef2d654d68c9924075b290048a74de8b471da4c2a8fec69a5002418bb83ecedafa96cd1b57bb295028074ba815fe43597ccd9294cb75200128cdd5166b86b2a63c64e0a4bad1400a41b3f496e1aafcda4d28cdd492658290009c6ed24db796b2a6bf4e1fd062b0500e9f401e0d7e3276943a9305b4d9241560a4002ddc087786b2a6bc6ed20bfb25200904e9bc85fbde69235a377944dac148004e3be2a9b796b2a6bc64d9287ad1400a41b3f491ed9529b49a5993031ac6fa50024886bc75b535913d7ae950280745b4e9227bde6923563a6c867ad148004e326cbdade9aca1a7d0078dc4a0140baad2685159a5069464f0c1fb7520012c4b5e3ada984acb05200906eab1de485ad76d0665261da26868f5a290009b6dd563ee6ada9acd9720779de4a01403aafb1a4c4ca00a880b7a65262650020ddd6da44f2c4ca00a880b7a652626500209dd7545262650054c05b5329b13200906e8236913cb132002ae0ada99458190048e735959458190015f0d6544aac0c00a4f39a4a4aac0c800a786b2a25560600d26df3b510f2c4ca00a880b7a652626500209dd7545262650054c05b5329b13200906e5b6d227962650054c05b5329b13200906e3b6d227962650054c05b5329b1320090ce6b2a29b132002ae0ada99458190048b7dd446d243962650054c05b5329b1320090eecbda44f2c4ca00a880b7a652626500209dd7545262650054c05b5329b13200906e7b6d227962650054c05b5329b1320090ce6b2a29b132002ae0ada99458190048b7fd57b591e488950150016f4da5c4ca0040baaf6813c9132bd3d4f6bb4b3eb7cfadb2e3deb7cbf17bdf26d7ec73bbfc417fffacfe7e6547f4f71dffeef5ffb678af3b6452fc33f6c73b3daedfdbf3d6544aac0c00a4f39a4a4aac4cd3d9e34ef9d4beb7c92e9a5fec7b7b08c9b94d44f3b35823d6b2b29d06d72f1b6f4da5c4ca0040baffd326922756a669ec7fa77c7effdbe438cd8bfbdf16423189b5e4387d75bb8e1da66971fdd2786b2a25560600d2794d252556a6e1cdbd27bcef805be51b07dc262f1ca89b4e35126bc763c463d9619b06d7af32de9a4a89950180745e53498995696807de2c9b1c74abdc7bd0ad21d426726f3ca61dbee171fd2ae7ada99458190048f7d5ff0b214fac4cc33af836d9befd1679fedbbab1d434b7c87307df22dbd9301a16d72f1f6f4da5c4ca00403aafa9a4c4ca34a4efdc1ce6ea26b2fa3bb784508f741c5bc760c369385cbffcbc3595122b0300e9266a13c9132bd3700e592e0b0ed54da40c8963b161350cae5f31bc3595122b0300e9bca692122bd3500ebb59b6fdeecdb2fab09b4328435e1f8b6c6bc32b3dae5f71bc3595122b0300e9bca692122bd3300ebb55363d7cb93c7f846e1ca5ca7279eec80678631bd7af58de9a4a89950180745ffb4a087962651ac2e9f784f71db95cee3d4a378c5266b9fc328ed1865b3a5cbfe2796b2a25560600d2794d252556a6211c73937ce3d8e5219439c72c97bd6db8a5c3f52b9eb7a65262650020dd0eda44f2c4ca94deb137c8e78fbb495e58ac9b449913c778d4f2b0960dbb34b87ed5e1ada99458190048e73595945899d23bfe26597cc24d2134428ebf518eb5619706d7af3abc3595122b0300e9bca692122b536a275d2f9f3ee92679f124dd1c1a233a561db30dbfeeb87ed5e3ada9945819004837499b489e5899525b7283ec72f28d2134524eb94116d9f0eb8eeb573dde9a4a89950180745e5349899529b5536f949f9faa9b42234537b0bb6df875c7f5ab1e6f4da5c4ca0040ba1db70f214fac4c692d591ed63aed7a91d36f08a19112c77ccab5f2593b8dbae1fa5597b7a652626500209dd7545262654aebf41b64d219ba213464ae971dec34ea86eb575dde9a4a89950180745e5349899529adb3ae97e3cfba3e8446cc99d7cb623b8dbae1fa5597b7a65262650020dd4eda44f2c4ca94d639d7c9d5e7e866d08839fb3ab9ca4ea36eb87ed5e5ada99458190048e73595945899d2d20deca173af0ba11113c76ea751375cbfeaf2d6544aac0c00a49bfce510f2c4ca94d679d7c9333fd0cda02173ad3c6da751375cbfeaf2d6544aac0c00a4f39a4a4aac4c69fdf05a59f9a36b4368c4c4b1db69d40dd7afbabc3595122b0300e9bca692122b535a17e826f063dd0c1a3171ec761a75c3f5ab2e6f4da5c4ca0040ba29da44f2c4ca94d68557cb334baf09a111a363affb97b0b97ed5e5ada99458190048e73595945899d2baf86a79e862dd0c1a323a763b8dbae1fa5597b7a65262650020ddcedb85902756a6b4965d25572fbb3a84c68c5c69a751375cbfeaf2d6544aac0c00a4f39a4a4aac4c69fdf46a59fc53dd0c1a33f5ff201bae5f75796b2a25560600d2794d252556a6b47e7a954cbaecaa101a3257d6ffa36cb97ed5e5ada9945819004837559b489e5899d2baf452f9dce5578a5ca11b4223258ef9aaabe433761a75c3f5ab2e6f4da5c4ca00403aafa9a4c4ca94da9557c8cfafba3284468a8ef92e1b7edd71fdaac75b5329b13200906eda7622d3b491541a2b536ad75c29bb5cab9b42634516d9f0eb8eeb573dde9aca9aa9dbca1a2b0300e9a66d13564cdf36844ab37062f8a8952aadeb97c9a7afbb5c5ebcee8a101a223ad638661b7edd71fdaa63e6b6f2316f4d654d5cbb560a00d24ddf469ef69a4bd6cc9d183e6ea54aed86cbe5b81b7473688cc8b136ecd2e0fa152fae1d6f4d65cdb46de5292b0500e9a66f2b8f78cd256ba66c2f9fb552a576cbd5b2f64d97cb0bcb2f0fa1cce918e315612d1b766970fd8a37797b59db5b53d9238f58290048a7af22fee837976cd9794258df4a95decd97cb376ed14da2ccd131ee65c32d1dae5fb1e2daf1d654e66c237fb05200906ec63672df0c6d269566fad6b289952abd7b4e0fefbbed32b9f7b6cb4228652e0df7c431da704b87eb57ac99dbca66de9aca1c5dbb560a00d2cd9c2077cfdc26844a337b1b196ca51ac25d97cb26b75f2acfdda11b469912c774e7a5b2b10db3b4b87ec599be9db4786b2a6bf401e04e2b0500e9666e23b779cd256bb4094db0520de3ae9fcab6775d26abefd28da31cd1b1e8986c78a5c7f52bc6f46d643b6f4d658fdc6aa500209d3691657e73c99ce956aaa1fcec5259f0b34b43284764810dab6170fdf29b31416638eb2973f4cfffc44a01403a7d0058e23597cc99207b5aa986f3f34bc3dc5f5c2aab7fa19b487d22abe3186c380d87eb978fae9dbddd359539b2c44a01403a6d4207ced2665271268423ac5443baf752d9ee9797c873bffc6908354d3ce625b28d0da36171fd2a376b1b39ca5d531913d7ae9502807433b79599b3b599541ef9a1956a58f75e2e9bdc7b89dcfb2bdd586a9178ac784c3b7cc3e3fa5566d604b9c05f53d912d7ae950280747326c8965e73c91a6d627758a986b67c7978ef6f96c93ebfb9445eb8ef9210aa9158fbb797c8def15876d8a6c1f54ba76be72e6f4d65cdac6d64bc95028074b3b70abd674fd0865269b6967f58a9a670ffd2b0966e32c7debf4c5ebc5f379d42a2b53a6a6a6d3b4cd3e2fa65376b6b79c25d531933636be965a50020ddfcede5b373b499541e915dc7cb07ac5cd3b8ff42f9946e3cbbdcff13b95b23bf5b16424ae29fd1dcd951436b59d94e83ebf7cea68c918ff8eb297be2dab572005089d065f60479cd6b3059337742d8dc8a35a5877f229f7df062d9e18165b25873f5833f91071f5c26cf68565a9e89ff2efeb7f8ffe83f7f2dfe19fbe39d1ed7efad666f23ddbcb5943571cdc6b56be500a03273b796fb75138f1b794599bdb56c6fa50064306f6bf9aab7963247d7ac950280ca694359fa960693903913e4202b052003ddc00ff6d65242965a2900a8dc9cadc3b7e76ead4da5e2c8c5560a400673b79265fe5aca96b866ad1400546ede56f2b579da542a8d36b387ac14800c74cdfdd95b4b99a36bd64a0140e5e66f2ddddd269331fa00b026beabd9ca01780733b7958fcddb5ac45b4b5913df4468e500a07273fb85f769435a355f1b4ba5d18780e1560ec03b58b0958cf0d650f6c86b71cd5a3900c8471f007eef379bac91fdad148077307f2b39d05f435923bfb35200909f36a51ffbcd265bf401e20a2b05e01de8067eb5b786b266de567281950280fc166c25bb2ed82a84ca23cff0c124c03b6b6f0fefd6f5b2e2adeb277be66d29bb583900c86fd104e9eb359b942c1cc71b938077326f6be9e5ad9d94cc1f2f7dac1c00e4377162788fbe8a7f61a136984a13bf8a60e50038166c297b7a6b2773b694e7e35ab57200500cddc0af739b4ed66cc9fb008077b2702bb9d65d3b1913d7a8950280e2687339c86b3a59a3af6e5edee3abf2212b07e00df61a231fd135f6aab776b226ae512b0700c559385e462dda32845c1927e3ac1c803758304eb676d74c4276d952465a3900284e7c85b2684b79cd6b3cd923275839006fa06be3647fcd648dbc16d7a8950380622d1a2f37eda2cda6e28c97bff2d70181ff14fffa9fae8dbfbb6b2663e2dab47200503c7d95b1a7d77c52b2eb78196ce500a85dc6c9306fad2465bcec61e500a078ba797fd16d3e4991c5560e80d23571a2bf56b227ae4d2b0700d5a18de6815dc7c7865359f4d5cedfe3973cad1cd0a9c5b5b0eb3879dc5b2bd9230f583900a81e6d3647fa4d287b76e3a703021d761d2b23bc3592947172b8950380eaf9faf8d0aa0979a20f11dfb77240a7f6f5f1729eb74612d36ae500a07ae2478d6ad37ada6942d9334e5e9a3b3a7cdc4a029dd282adc327f5d5fbcbee1ac99a71f2241fff0ba066f401e034b7192564d7f1b2c0ca019dd2d7c7ca2ededa488b9c66e500a0fa761d2b2dbb69f3c9137de5f22b2b07744abb8d93df786b2329e36488950380dad00dfc0f6e434ac8ae7c26003aa938f7bd3591127df5ffa0950380dad97d9cecbffbb810f264b7b172a195033a9538f7bd359116d9dfca0140edec3956d6db7dacacd9431b51a5d106b66ab77161432b09740a7b8c958d73af1dfdf3710d5a4900a82dddc0aff39a535ae4442b07740a71cefb6b217be2dab37200507b7b8c97295e734a8bbcb05b5bf88495049ada9e13c2ffee31565ef2d7424274ed594900a8bd3dbe2a1fda7dac3ce536a884688d762b0934357de57ea8b70652d2b1e674ed594900a88f3dc7ca217b8e0d214ff6181b56e8aba24f5949a029edd9a6affec7c8f3de1a488b1c622501a07ef415cdda7b8e91957b6963ca17f9ae95049a92cef123fdb99f3d71adc535672501a0beb4b19ded35abb4c80b7b8d91cf5a49a0a97c7da47c4e37ef97fcb99f3dfaeaff4c2b0900f5b7d778e9aa1bb8780d2b25dadc8eb3924053d187db13bd399f165d63bad6ac2400948336a76bfca6953df1cb9bfb8c964dac24d014f61c1b36d7f5f19a37e7d322d7584900288f3d47cbb8bdb549e58dbe52badc4a024d41e7f4d5de5c4f4d5c63561200ca2474d97bb4fc6c9f3121e4cdde6364ac15051ada5ea3646b6f8e2767b4dc1dd79895058072f9c65819e336afe4c8efdadbc27bad2cd090e6f60befd38dfb017f8ea765ef5161b495058072d2cd7bb9d7c052b3f7e8b0af95041ad2dea3e5006f6ea746ebdc642501a0bcf61e2543bc26969abdc7c82bbc21108d6a9f71b259c71c76e6766ae29ab2b200506edf182d977f431b57dec4af26f07d4f349ed045d7c0adde9c4e8eae252b0a00e5f7cdb1d2eb9ba345be393a84bcd10638c7ca020de11b23659e3797d3a36b48d792950580f28b6fe0d3e6f51bbfa92567c537c7850dad34506a71ae7e63943ce7cce30a22bfe1cdb0001ac6de6d612d6d5cb7fa0dadb26843bd6de2c4f01e3b04504a718e7e63b4dce9cde14aa373ff96b8a6ec1000504efb8d9411fb8e96c7f7d5c65574be394a0eb4c300a5a473bfdd9bbbf9238fc7b56587018032095de206bdef2859ed37b0fcf9e66859b5ef18196407044a45e7fe906aceff585bd7c0febc29164069b4b7858fee374a96ed372a84aa67a4fc69dfd6f0493b34500aba397f5ad7c05fdc395b70f45817c53567870680fad87754d84837e5fbbc4655ad6803bcaabd3dbcdb8600d455fcbeffbe23e51a6fae562bba067e13d79e0d01006a6bbfd1324a37ffa7bd0655ed68033cd88601d4956efe877873b4fa91a7785f00809ad3c6334f1bd0aafdb511d52722fa1030c18603d4c5be2364db3817fd395afd74acc19132db860300d513bff4ae9bff515e33aa79468615078e921e3634a0a6e2dc8b73d09d9b35ce7ea3c211bc391040d5ec31583e74c048b9f8006d386589befa7ab4bd4dd6b521023511e75c9c7bde9cac57743cf1cd811fb421024031f61d259fd60673b7d778ea9d38aef609e1c33654a0aae25cdb7fa4dce7cdc57a47d7c21ded63e553365400c8e79ba3c3fafacaff8103466a932969b4215fca2705a2dae21c8b73cd9b83a5c908f9dd0163653d1b32005466bf91d2f5c011f2b703b5b1943ddaf8cee6fba0a89ed0e5c091729e37f7ca165d0b8fecd71636b78103409a6f6d218374f37fda6b30c545c4fff71566842ce12100c50b5d74533dd59d7315a7e0b9ffe6e8da8d6bd84e0000b2d1c631541bc873dfd24652958c90d5df1a29fb1f344aa6b9ff3d57e4283b0da010ba591fedcfb5caf3fadc97fd5f5f0bfeff9337710deb834b8b9d0600bcb3b8f96b637ade6b2885e4f55726e3ec70efd27f3edefdfff26444f8b6950772d14df460778ee589ce792b1fd7dbb88e35e1fd7f05a4e3415ed7b41d0e007c1d9bff08ddfc4768f3a84ae4def6b6fffcd9fe73fb85f7e9716ff1ffffcaa38def48be1d80ca852e710e79732b5f64f99b7fc67f5c13716df8ff7ffe1cb8050f0100de8136a1d68374f33f481b4655b2859cfb767f4f79bf56f98c36c047dd3f972b72320f014817bae87c3dd59f5379227f8b73dd0ef21fe2da886bc4ff73f9a30f003c040078ab6a6efeda74566a16daa1ded6b746c9006d80af7a35f2445f019dc35f11445671aee87c3dcf9b4bf9222feb5cec6787795b71adc435e3d7c81b795e6bf31000e075b6f9bfd0ae0da2f8c8b3df4af88125fa003059ff8cf8b52a8f9edfe57a9efc0855bca33847740e5ee9cda17c118973db0ef35fc53513d78e5f2b6f780800a0b4d10cabdae6bf85fcf5c011d2cd0e9599fed97ddf52ab98dca30d7e2d3b0cf01fda47cb3aba39deebcc9b22b2af1d26b3b876e21a726a1510793e3ef8dba1007436fa2a6050b5367f7db5f3cbfd87c9da76a864daf84ef1eae68d8eeb914a1e4ad0dc0e1c2e3d7453fc9b3767f246d7d8c9769864710dc5b5e4d5cd9d2dc20a3def3e7628009d457b9b6cac9bec93dfde2284c2d32657e6fd72fbd289e13ddfde422e71ebe78c8e6d859e3f3f4a181d74e3df56e7ec73de5cc91b9d67e7879c6f428d6b29ae29af7edec41e107b811d0a40b3fb6eab7c4637d787bc86903b6d727adcbced50b9b44f0cefd77a37bac7c9196d7ca2b50f8e3fded80e874e26ce53ddfc0eed980bce1cc91d9dbb710edbe172e97820d6b5e51e2777e4a1d813ec50009a55fc4966da48ee3e58177ed1d1baff3c6274f8b81daa10b19e36a87bbde31511ad7d153f3dadf3396c947c5ae7eb35de9c28246df2cbaaac055d63eef17226f6047ea226d0c4e2ab086d4c977a0da0a8e8867a59de2f79be59dca0abfc10f0677d2538d80e8726d73e425a0ede42fee2cd8542a29bffe1ade19376b842c43515d7967bbca2a2bda1a8afde0128196d7aa7b80bbff0c877ec9085e978c556c587001df32a6d8007d2009b577b5b78afcea1f68e7bedce81025285cd3f8a6bca3d5ee19153ec90009ac57786cb01df690ba116d126287abcafd8a10b131f02b4f6bdde310bcb70b9fd9011b2811d124de29061f2059d3b77b8f7bca80c0ff75469f3ffbf8e35e51db32a91fdecd0001a9d36bf79fe42af6286cb0b9a1e3684c2d4e221e0e0e161c5b7db644ed1dfca40edc57bf8fafc97e7bc7b5d58aab4f9c73574f07079d13d661513af990d0140a3d2570f430f69939587c4455deb0c9787da0717ff06bb58531bfa1dee318bccf070f361adb2a91d160de63b2364339dfbb7baf7b6c0e8267d5b3536fff6b6f0bf3afe3f79c7ac7e6465ec1d3614008da6bd45d6d185fcd8a1baa0eb17b9b1bd6b317f15ea8d8e1d2c1fd2078c9ffac72c2e7afd5ed6e3ec1fbf7f6c8746c9c5f9a6f7edc04387cb2bde3d2d327a9c653a37dc1f7095473c87b876bc63d62ab177c41e624302d028ac81dce12decda27ff87a178e21bf6b4f669fe318b8d36c3df69c6dba15152f11ee9c6ffa0770f0bcf7039a51a6f1a8d6b25ae19f798358fdc518d07780055a4af5a4ff517747da2e3596c432b9cd63e481bbf78c72d3cc3e56abe2d503edf6d95aef1deb8f7ace0c4b9a639d00e5d38ad7d8277dc7a45c753f1471903a8316d8433bd855cef1cd296fe0351b23a6498ccd246f59a77dce2232be3034dfb10f9ac1d1e75f2dd91f2b98e0d73b8acf2ef55b1e99863babeecf0858b6bc43b6ebda3e73dc38608a0ac0e1b2e030e1d26af7e777808658b364e39ac4d76b6a116eebbc365989efb3fbd6357237aac17bf3b2c1c11ff66820d013512df20a7d7ff48bde72f79f7a61ad1e33dae1b74d57e829eae8fa9718d78c7ae7b86c5f753487f1b2a80b2899fe7ad0f007f3b4c176c6119262fb8ffbec2682359ad63dcd6865cb84347cae7b5fecfbc63572bba093dafd7e9e06afc8d07fca76374e3d7fb7b48d1f3f2bf45eff1dd716ed9300a17d7c4eb6bc33f7e451926ff72ff7d85d16bf0083f330028a1f866246d20cbbd855b6974c1df681b6ab10f151dafda64840dbd70278c970fe831cef48f5dbde8f57f519bee8987b7868d6c282848bca6f1dac6b9e35dfbaa66987c2fce291b4ae10e1f26c38b3e2f9d8b0fc5b51b1f5cbcff5e69624fe0d3328192d1857990b7602b4d6c20ff7e457bf870e9517ce3ed780818d331f82ad1c63d5f8fb3d23f7ef5125fc97d7758587a58ab0cb2a1a042f11ac66b19afa977adab193de6ab870f0f736d2855a19bffc8e237ffb0e288a1d22dd68fafd8e35af6febfca2307740c1e40fdc526a99bdd2a7fb1a6471bc65387bde967846ba3da4e376cf1feff4aa3f55ed6e354f5afd6e92bc77edab01ef48e5f8be839fe5aefcd2e45ff64b866d6de163e11af99deb7df78d7b416d135f0fb4387495f1b5255e8398e2d7ef3eff816db5676880ef1013e3e1478ff7f25d139fd9a1e63809507502f478f918fe803c01f0f1f1642319195f1558995ff0fdab0f6f3ff4ce5d1b1bfaac7dbda0e5115edfdc28775eca77bc7af55f4f82f6bce3d7c68d8a2fd5de1dd3634988e6f610d97113a17ce8bd7cabb86b58acec9d3e29cb1a155851e63fce1adf28a77fc5c69953dec10ff411f8447eb3157bb7fa6a2c81f62efb1f200eae108ddd88ed005595c649a957e8bf80125da60cef7ff5c9e743c746c6787a99a235bc39775fc4ff963a8615ae5313ddf138e181a5a3bf3c3403cf7780df49e9ca479dcbd56358d3c796415dfa0fa6f47b6ca8438e7fd31541ebd8667da215cfadf17787faed268bdd3ac34805a8bcdca5b98954637a563adf4db8a1f7baacdeb6eefcfe78b36c456f9aa1da66a0e1d266beb71aef5c750fb68137d547352fcb26db55f759641c75763f45ce339c773f7ae497d22571fd516d6b261564d7c08adc6e6af73fa962c9fd817afbbfbe72b88f60b890f33561a40adc40f40d105f884b7302b4a6c20193fef3e364a6d627f72ebe48836a7d55a77173b4cd5747c25635898aee7fcb4378ebaa5555e890f277a1df688dfb76d86af0ec473387ca8f48ae714cfade31cbd73af53745c4fe99c9b568d8faa7e335dafb3f5fc5779e3c895567928eb5fcf8b0f093a8ebbdc3a95a455fe197b919507506daf6f6072b9bb202b49ab3c96faea27be49509b6775be6cdb2ac7d4a221c7a6a9d7f13c8db8e3a8775ac38af8ca54afc7011def1d680b1fb5a197d6912df2b13856bda607be3ef6780eceb9d539afdf7339377eae800dbd6ae25cd67b7888378ebcd135f8e8d1c3e40b76a84c0e1926ebe9b93fe9d5ab24b117d562bd0250bae8171cd91a4221192aabb4690fb3d249e2abd4238786156edd9cd18d6369fc76831daaaa8e6c9551470c953f7ae32853741311cdc39a653ade83f5d7af1edd2a5de34f46b453a99978cca38748f73806bd7edfd1f15ca273e94f718cded84b95a1f2079df355fb1c8a378aafb8f59a9ceb8e236f86ca93f11ed8a1921cd52263f59ead76eb5696aafe7549002a7e208a2efc178fd2455744b4d65e56ba22ba010d3aaa555ef26ae78d8eed76dd686af2e97a71438b1b99e6656f2ce58ffc53afd7dd9a0b8e1a2a4769f6d68d67866e74dbeaabbd16fd75b33877e22b5efdf5936ffc6a42fc7dfc77f6df368affafd61bdaf167b546acd551b3557e1c8f118fe58fa1dce9b8b7fae054ab07cb1306caffe8f5bade1b4bfec8f371edd9a12aa2633bd0af9d1eadf5a23e8c6c60a501142d7e994d17fe75de02ac24ba682f2ee24b775a6bb48e6be59beb17111de31fe2a66487aaba6386c97a7a2e6769d678e3218d98782fe52c7da0a9d9cfb63fa24dd6d5878dfbfcf1e48dac3cfa6dfeaa6e8ab8f6757d5de11f233dfa807599950650346d2853bd85574974b1fe75715bf88495ceeda861f27fda4c567bc7ca1f795a53d39fc51fdfb8a6e773b53f1ed22879fd1e4a4fbbad35a1c71baaebebefde78f2a6638d15f857660f1b209fd69a8f79c7aa2447b6862f5b690045397a887cf668dd088fd6459637fa20b15a1b549b952eccd1436596363ff18e993fb2467350addf197fcc3019a7d7eb5e7f4ca4ac89f72c7e9fdb6e63cde81cfdbaae81d7bc31e54d5c5b470d0bd3ed508589d7a9b0753b541e5dd2006f56051a8a2ed0f3dd055751e4702b5b38ad1dbf67bcda3f6efe68ed2b6af5be807febf8d68bbeead263dfed8d899427ba4eee8af7aad6ef4a8f9b9ece8f0bbc311591b8a6f495fa4c3b5ce1f4ba1def1db792e8588fb3b200f23ab64546e893b51c333484dc6909f764f9c0903c8e1e229374bcafb9c72f222df2e76386481f3b5c4d1dd32aa38e192a37bae32275cbd12d7283cebbdcdf17af447cd3a41eff7e6f5c85a44556e9a6ba931dae2ae21b23755effd63d7e6ae2785b426f2b0da052ba30df5bd4c2d44df9e5c583e44b56baaa8e6a91ed74dc2bbd7114921679257ecbc10e5773c70e95c17afc4bf51cd7b8e3233548bcf6f2d3a3ebf85317750e7c45f39c3fbe22222b75f3dfde0e575547b54a4f7d9079d51f47625ae4eecefc31d74021b4b9ece52eb00aa2b5aafe297b6fa4afd2c769037bc91b4b616991652764fc14b46a382efed5ba9670849ee713eef84815a2d7ba450e4bfd009c22e9abfe8fe938bee78faf98e87a7d59b3a51db226f4baeee98da5a2b4c8022b0b2055fc743e6d32cf1dab8b29775a6479adbf2f1a1d3d4486ebabe5e7dd311514bd46ff3c6ea86c6387ac8b13c6cb078e1d2293f461e0666f8ca480e81c8ed7b8dadfc2fa6f74736bd539fdb03bc682a29be70bf15b7f76c89a89afda753ddde98d29357a0effaac5cf57009a92369933bc85959c1679e59856d9d4cad65cfc12ad369567dcb1151a3923be32b3c3d68d9e6f571dcbb19a47fd7192cc6991bfe946724cadbe75f54ee28347c7577b5a64b53bd6821237ce6386488b1db6e6f461ba9bcedd95ded852a3e7c24f0c0452c54de4b821b2eab89610f24617e10156b66ee203889ecfc3def80acd10f9737c856687adabd75f4d85561dd349c7b5c8e3ee788913bd567acde2b5abc757ad3cc70f91ee3aa65ffbe32d2ec70e9147e2066c87ad1b7df0fa8e37bee4680f3b6648d8dcca02c84217e025ee824a8edc777abff03e2b5b57f1a366b521dce68fb3c8c89ab88114f94147792d9d18dea3631aa9f99ee61ffeb83b6f74be3faaf7ed34fd7544bc5676d9ea2ebeead7fbf52ddd985ff5c65d6ce467470d28c797cc3bbea5d522bff7c7991a59666501fc37c70d96a1fe424a8b36add5c70e95c156b614ec7be5e77be32d3ef2b836b129657915f946c70e961e3ab67df45a5cab1bcc2bfef89b387ace76ee7bc76b6197a5548e192a63747c7f70c75f7864993ea87fd80e5d0a1def756811f1c79b967a7e4b036828da0cee58ac8b267786c88956b254e286bcb8e34b8c22eeb80b8e36f1e527b44a573b7ce9c4c6bf78a86ca9e33c56efd95dfaebabde793474e243ce10b9339ea36ef8e3cbb6d9bdd1492db28e8ef742f73caa1239a6ac7f654eefd729fe985323b75b49006f479be3f6fe024a8d3c1e7f1a99952da5e3f5d579ed363b59a9af448e387a8c7cc40e5f5af15b36c70f91017a6d16e943d2b93af6076af5b0544c648d8ef7f78b878473f455fe42fd7dffb27c1bea9dc4cfdc583c5876d7cdff79ffbc0a4ec77b7c64be1dbe94e2b7d1741e3ee98e3f3543f83901c0db8a0d4837c5df1faf8b2577eaf8213929e2b73bf49cffee9e4315a24df711dd5c6794e9fbcc59c487b98e87821699acd7eb908e57a843e4d7fafb97bdf3ac4574a37f49c7f4ab389638a638b6b8d997e16f62a43a61b08cd7f3f98d779ed5881eebe9784c3b7ca9e943d13cef1cd223bf8f3dceca0278236d0a73fc85939821f28b46fa14aee307c9e77413b9c93d972a458ff7bb66784512bf9da20f07eb9e305406c7cf42d00d78b6deff6fe9f99da8e7b9547f7fab9ee73dfaebfd9a3f69fea6ffed59fd6f2bde703d5674fc3bfd6ff6ffdc6f7fe6d658a3a396d68cb5e331e2b1e231cbf8de8a54f15cf4dc96bfe15a543fba3e170f0a1bda104a2f3e2ceb987fe59e4b62628fb3b200fe2d7e4ff4f8c1f2d8f14374a1e488366bd1463dccca368cd864f495c677b4d1acf1ceab5ad163dea5d76cb80d039d843ec074d5fbbe2cae176f5e542b7abc93e21b616d180de3841619e19d4f72b4c795f9fd1f405d9c3844be7e822e90bcd105f6232bd990b4d18c3d61883ce59d5b553358ae5ccc0f30697ac7f497f5747e9da9f77b953b0faa145d972fe8c3ed241b4643d2f358fae6f3aa247a2df6b09200e2f7c5b4213de22d9694688379e9f8a1617d2bdbb0e2396893b8cb3bc76a46af9fe87db826bedab1a1a049c457fc3aa7ced2cd7fa577efab9ac1f2db139be0c3704e1c285fd06bf88a7b8e09d11aff38bb2d7cd0ca029ddb898365aa36889037da680eb1920d2fbe6b5c9bf551270e9135deb9563b7a2d7f71d29030b1d1de2c88ff74628b0cd37974a946bcfb5cede871cf6ea62f79ebba38dc3bcff4c8422b09745ef18d54ba187ee72f92ecd185f9ac369a8f5bd9a671fca0d0aa0f480f7be75c8b68037fe88441b280572c8d23be01f6c441f2159d377778f7b416d1f5f8441c830da9691c3b583ea5afe25778e79c12bd3e7fadf70f7502eaee8481b2dd89837551e48eec6f259bced13de5237a7ea768d310ffdc6b11794a1f048ed3e6c5e79a97d42943e4b37a9fbea1f3e40ffe3dac4d4e181496c6b1d8b09a8e5edf83bcf34e4f63fc5565a06a4e1a2c779da48b214ff495c6137193b4924d6bc91019a5e7fa57ef1ad432dab86ed3fb364d5f0d7dc886863a89aff6970c96f17a4f2ed6bce6ddaf9a65903ca369e837fa65a12f5afe47aff553ee35488afcae19fe2a2950919306852dfc8591165d8c9de65db5b1f968933dd3bb0eb58ebe8a59a1633969097f7ba0e6e21b4575033948afff23debda97de48ae3facada36bca6a73d671fff3a2466888cb39240e7b264905cb34417419e6803fc7b67fcfe747cd5a7e7fe90774dea11dd007eaf39e4e441d2d3868882e9c3dfbaba66beaef7fe56cd1aef3ed43a7acf9fd27938c386d869c4af7ee9b93fe65d93b4c8722b09741e270c913efe8248cc205960253b9df8812ada7c0fd06bf0b27b6dea16f9a38ee9306d907d6da8a8d0a983c2867a8ff7d46b799746fceb5d8fc81a1dcf29f14d7136d44ee7a481b2c8bf366989bdd04a029dc3c903e5ec9307859027bac93cc6bbd33bfecae0fafaca7b99778dea1dbd477fd2b12dd6fbbdf592b6f0511b32de46fc4c8c9387488b5eaf83f4bafdc2bba6f58eded3bb4e61d3eaf82ac09281f284778d52a235be6f2581e6b7b857f88436b897bdc5909481b29f95843a69808cd34de30feeb52a4174e358a9e3bb457ffd968e75083f18e5754b064837bd265fd78de032bd3ecf79d7ae1419284fea1867f2c6b5ff9fdeb703dd6b9510adf152ec895612686e270f965dbd85909481f2028be6ad96760def8f0f46a5de482c4b068515baa15c1ac77bcae030ba33dccf8eef1debc38f9ef72e7adee76bf37fccbb36a5ca4059a5e35cc27a7bab535ac327632f72af5b424e19288bac24d0dc7473faed2971d2e78a1c6de5e038bd5ff85fbdce47696379d9bf7ee58b8e57b499fe517ffda16e907be80342eb990df8a375ffade361acbf0c387980ccd7f97aa69ed7aff57eacf2cebd9c91353ade1feb03cba6764a70e87d5dec5fbf840c94fbac1cd0bc4e1d2c434fd5099f27da98567e6fa0ac6b25f10e4e6a9175f47a9da679cdbb968d106d8e7fd72cd77c4fb3cfc903c3974f1d285dcbf053e5e247369f3a4836d1ebbba58e6d77fdfd12cd35facf7fd67f5eed9d4f6344aed06bdccb4e13ef20be0747afd52aff3a664f7cef8795049a9336c673bdc99f9873ac1c323aad45bea84dea07dad8d738d7b341d3f10af5ef7a5ef76aaeea985b03e518fd752ffd756adc944f1b20fdf51556bfd38784cd4fe91f36d207d0cfc72fdbbef163a3e3efe3bfebf86ffaff9cd25f368b7f26fed9d306cb783dc6cea70d923db5de91fafbb33b36c741f273cddff438b91b7f99a2e7784b7c48b74b838c3ae69e733d5312e79695039a4f47931d202f9f3a50277c8e6853ee6125914837b7ee7a0f2ed68d6b8d776d49678dfcfce48132d6a60912e9baeae35fd784686fe47d16685afa8a693777e227449f926fb772c861c960d9589bfe297a3d5ff2ae33e90cd187c00172856efcfcf8e702e85abad3bfced973da00d9d5ca01cd451bcefda7c5499e27fd658a954301e29b05f5be1ca48de709f77a93a68b6efaaf684e8fdfeab0698002e81a9ae65defb4c86fad1cd03c4eef2f2da7eb04cf135d1c4ff1c13fd511afeb6983c2dcd307ca83deb5278d9fb87e74933ab8997f525f3dc5bfe2a9ebe769efdaa744efd1102b0934079dd4c77b933d25dac08eb172a892f8d3e5f4616d4bbdde4bf57aaf7cf33d208d18b953d7dfecd3fb850fdb6d4695e8b53ed6bf070919208bad1cd0f86c53f9fbe903e2e4ae2cdac0e4d441b28995440dc4578aa7f7933d4eeb2fbff7ee092971facb13ba668ed34d7f73bb9da881d8a362af72ef49d668af8c3dd34a028ded7b0365983bd113a28bea7a2b873ad0eb3f441bd399faeae405effe90fa471fd456ebfdb9527ffd8a6efcefb35b871a8bbdcabb3f2939b51f7f15134de27bfde584efe9a4ce135d543b5939d4d192aee1a367f497297a4f2fd1bcecdd2b52cbc81a7d30bb4bb3f7997d641dbb4da8a3d8abfc7b9510ed99560e685cf14b59670c90c7ced0495d79e485f37aca47ac244a22de9333078689ba09fd581bd6f3febd234547aff56a7d08bb517f5dc4a65f3e715de89a78d1bb7799c3b701d00ce297ffdd099e105d4ce759399454fc5b04fa2a74dbeff50fe7e8c6f48c771f499ec8ab7a5dafd0f5342bfed54dbbec28a9d8b3fcfb983db1775a39a031e94238c99bdc6991f1560e0da0e3ab3e8342bf3306ca3774d3ba56efdf4bfe7d256f97f82a5ff38b33fa8723cee8276378077f63893dcbbbaf49e92f275a39a0f1c48d409bd8e3eee4ce98f8e7974e0cefb1926840276c2c1f38a35fd8421bda219abb34abbc7bddd9a373fdf7ba712cd187e6ede3c766dbe543036a6f0befd579fe84779fb3471ee3db00685867f597b633fb879027faeae7782b8726117fc4ef990364f899fd64cf33fbcb0ff5d73f68b314effe376bf47cffa1e77d999e7ffbf7faca84b30784b5ecf2a049e8bd3dc1bbf749d17562e580c61217c0593a89f34417407f2b8726767abff0f133fbca089d33fbe8c6f8e3b3fac9fdfa00f9aa37271a297a2eabf55cfeace9d8eccfd2cdfeb4beb2b69d369a98be7819e8cd8994e89c39ceca018d459bdf1fbd499d3df28895422714bffc79661fd940e7c268dd3817e87c38366ea49a07b531ae7ceb7ca94fe226afe37958738dfe7e898e73777d98d95aff79b3a55dc3fbed74d0c98477852e3a1ffeeecd99cce9c7cf0640033aa7af7cd19dd0499193ac1cf01667f596cf9c3550baea3c69fb7e7fd9419bedaebae97e47fff954cd25da3c6fd079744f47fac91ff4bfff49fffd3f34cfeaef9ffbf73c7bfdf7f2ace631fb7f1efa7f7faebfdca4357faa39437f7f88febadb197d65a73307c8a8eff7951ef1d57cfc7eaf0d09f80f3a5f4ef9f73cab34fc554f341c7dc5f6756f32a7445f45f1f3c901342c7d481ce7f5b6a4f493a9560e680c3a69aff97ebf107264055f3e05d0c8e2df80d11743cf39fd2d2172be9503ca2f4e7a7df27df96c9dbc954627fd85560e001a96f6b3a56fee6f49e92bff8cef27b07240b99dd34786bb133921fa00c167ff036878ba814ff67a5c4aceea2dbdac1c506eba79b77b933873facaaab37b854f58390068583fec113ea93d71b5dbebb2a6afec63e58072d3c97acb397d43a8387de42e2b05000defec3e72b7dbebb2a68f5c67a580f2ba70b07ce89cbef2aa3b89334617cb77ad1c00343cddc00ff77a5dd6684f7c39f6562b0794d3d9fdc216e7ea84cd139deca3ac1c0034bcf3fac918afd7a524beb7caca01e5a4affef7f7266fe6f4915778d205d04ce24f733cb7afbceaf6bcace9237b5a39a09cf401e03277f2664d1f596ea500a069e803c02d6ecfcb9a3efcd5689458fcbbaae7f591a7cfd3c95a71fac881560e009ac6797da5dded7919a30f107fb65240f9fca0bf6ce64ddc949cdd4f865a3900681ae7f69636afe7a524fefc0b2b0794cb79bd65ea0ffa8450717acb6b67b7850f5a3900681af17d00da2357b9bd2f63f421622b2b07948b6ee0c77993366bceeb1deeb15200d074ceeb23bff27a5f42be6da58072d1c9bddc99b099a34fc7a7592900683ada23bfe7f5beec912bad14501ef10d80e7f796e7ced7495a697472cfb47200d074b447cef27a5fd6688f7cd24a01e5f1c3deb289376193d2577a583900683a3fea233dddde9790f37aca17ac1c500ee7f794affcb0770895469f8c5f583a31bcc7ca0140d3893d4e5f2cbde8f5c0acf9412fd9deca01e5707e2f39d09bacd923b75a2900685ab1d7f93d306b647f2b0594c30f7bc98f7ea493b3d2e8a45e62a500a069fda8979cecf5c0acd15efb432b0594834ecadf7893356bf40160a1950280a6a50f008bbc1e983df22b2b05d45ffcbe964eea57fcc99a2d17f40a5b583900685ae7f792115e0fcc1a7db1f572fbbbc2bbad1c505f3fec1136ba4027669efca8bb7cceca0140d35a3a20ace5f5c0a4f40a1b5a39a0be7edc3b8c762769d6f492a7ad140034bd0b7acbb36e2fcc9a3e32ca4a01f5f5e35e32efc7bd42a834fa00709b950280a677414fb9ddeb855973612f9963a580fafa71cf70843749b34617031f010ca0d3d09ef73daf17668f1c6ea580fad20780a5fe24cd960b7ac93e560a009a9ef6bc6f7abd306bf401e2422b05d4d7853de51717eaa4ac343fee2993ac140034bd0b7bcb4e5e2fcc9c9ef2732b05d4d7853de4b1a53d43a834177593162b05004d4ffb5eeb9bfb60527ac83fac14503fcbdbc27b97f69435ee24cd980bbac97a560e009adec57d6403af17668dbee85ac5cf4e41ddc5cddb9ba059c34406d0d9c4174edafb567b3d316b7ed257d6b672407d5cd453067993336b2eec298f582900e83496f694bf793d316b2eea2efdad14501ffa00f0958be264ac343df80c00009d8f3e00dce1f6c48cb9b0876c6ba580fa58da43665fac93b1e2f4e0afb300e87cb4ff2d7d4b3f4cc8d2ee32c34a01f5715177f9a6373933a7879c6aa500a0d3b8a8a79ceef6c4cc91bdac14501fba811f7d710f9d8c15461f200eb55200d0695cd4430ef77a62428eb052407de803c059cec4cc9eee3cc502e87c2eea267bbb3d316bbacb19560aa88f9ff4904b7ea293b1d25cd45d665a2900e8342eee26b3bc9e9835fae26b999502eae327dde586653a192bcd25ddc397ad1400741acbbac957bc9e9835fae2eb5a2b05d4874ec23bbdc99939dda5cd4a0140a771713719e1f6c48cd1175ffc156ad4d74fbac97dcbbaeb84ac301775979e560a003a0ded9dbdbc9e9835b1f75a29a03e7412fec59b9c99d35336b55200d069fcb4ab74757b62c6fca4bb3c6ca580fab8a49b3c71894ec64a7359d7b0be9502804e23f63eaf27668f3c66a580faf869b7b0e2a73a192b0d0f00003aa3d8fbbc9e9839da7bad14501f791f00aee8113e69a500a0d358b6b97cdaeb8999c30300eaed926ef29c4ec438192bcad27ee1e3560a003a8dd8fbbc9e98395d7900409db9133321d7f6948f582900e83462eff37a62f6c81a2b05d4c7a53a11f3c4ca0040a7e3f5c4945819a03e2ed34998275606003a1daf27a6c4ca00f5e14dca94581900e874bc9e98122b03d487372953626500a0d3f17a624aac0c501f97770d214fac0c00743a5e4f4c899501eac39b9429b13200d0e9783d31255606a88f2b7412e6899501804ec7eb8929b132407d789332255606003a1daf27a6c4ca00f5e14dca94581900e874bc9e98122b03d4c7955f0a214fac0c00743a5e4f4c899501eac39b9429b13200d0e9783d31255606a88fab7412e6899501804ec7eb8929b132407d789332255606003a1daf27a6c4ca00f571b54ec23cb13200d0e9783d31255606a80f6f52a6c4ca0040a7e3f5c4945819a03ebc4999122b03009d8ed71353626580fab866f310f2c4ca0040a7e3f5c4945819a03ebc4999122b535ade985362650054c05b5329b132a5e58d39255606a88f6b7512e68995292d6fcc29b132002ae0ada9945899d2f2c69c122b03d48737295362654acb1b734aac0c800a786b2a2556a6b4bc31a7c4ca00f5e14dca945899d2f2c69c122b03a002de9a4a8995292d6fcc29b132407d5cb759087962654acb1b734aac0c800a786b2a2556a6b4bc31a7c4ca00f5e14dca945899d2f2c69c122b03a002de9a4a8995292d6fcc29b132407d5caf93304fac4c6979634e89950150016f4da5c4ca949637e6945819a03ebc4999122b535ade985362650054c05b5329b132a5e58d39255606a80f6f52a6c4ca949637e69458190015f0d6544aac4c6979634e899501eae3864d43c8132b535ade985362650054c05b5329b132a5e58d39255606a88f1b7512e68995292d6fcc29b132002ae0ada9945899d2f2c69c122b03d48737295362654acb1b734aac0c800a786b2a2556a6b4bc31a7c4ca00f5e14dca945899d2f2c69c122b03a002de9a4a8995292d6fcc29b132407d7893322556a6b4bc31a7c4ca00a880b7a65262654acb1b734aac0c501f37e924cc132b535ade985362650054c05b5329b132a5e58d39255606a88fe59b84902756a6b4bc31a7c4ca00a880b7a65262654acb1b734aac0c501fdea424841052fd581b06eac39b94841042aa1f6bc3407d789392104248f5636d18a88f9b7512124208a97dac0d03f571cbc621104208a97dac0d03f5e14d4a420821d58fb561a03ebc49490821a4fab1360cd4873729092184543fd68681fab8552721218490dac7da30501fb7e92424841052fb581b06eac39b94841042aa1f6bc3407ddcf6459d888410426a1e6bc3407d789392104248f5636d18a88fdb7512124208a97dac0d03f571874e42420821b58fb561a03ebc49490821a4fab1360c00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000400dbdeb5dff1fd645c2b43a7d75340000000049454e44ae426082, 'Duong', 'Malay', 1, '123456', '3897-11-02', '79', '123456789', 'Quan 7', '778', '1', '1', '0147258963', '0147258369', '0147258369', '96352871', '1', '2', '3914-08-01', '01', '01', 1, '1', '23', '23', 'hello i\'m black');

-- --------------------------------------------------------

--
-- Table structure for table `quandoi`
--

CREATE TABLE `quandoi` (
  `MaTVQD` int(11) NOT NULL,
  `MaNV` int(11) NOT NULL,
  `NgayGiaNhap` date NOT NULL,
  `ChucVu` varchar(40) NOT NULL,
  `NoiSinhHoat` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `quandoi`
--

INSERT INTO `quandoi` (`MaTVQD`, `MaNV`, `NgayGiaNhap`, `ChucVu`, `NoiSinhHoat`) VALUES
(10, 431, '1923-11-01', '22', '22'),
(11, 499, '1935-11-02', '33', '33'),
(12, 221, '1923-11-04', '22', '22eeeeeeeeeeee'),
(13, 432, '1903-04-03', '3', '33333333333333333333333');

-- --------------------------------------------------------

--
-- Table structure for table `quoctich`
--

CREATE TABLE `quoctich` (
  `maqt` varchar(40) NOT NULL,
  `tenqt` varchar(40) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `quoctich`
--

INSERT INTO `quoctich` (`maqt`, `tenqt`) VALUES
('1', 'Việt Nam'),
('2', 'Lào');

-- --------------------------------------------------------

--
-- Table structure for table `test`
--

CREATE TABLE `test` (
  `ma` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tongiao`
--

CREATE TABLE `tongiao` (
  `matg` varchar(40) NOT NULL,
  `tentg` varchar(40) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tongiao`
--

INSERT INTO `tongiao` (`matg`, `tentg`) VALUES
('1', 'Thiên chúa'),
('2', 'Phật giáo');

-- --------------------------------------------------------

--
-- Table structure for table `trinhdohv`
--

CREATE TABLE `trinhdohv` (
  `matdhv` varchar(40) NOT NULL,
  `tentdhv` varchar(40) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `trinhdohv`
--

INSERT INTO `trinhdohv` (`matdhv`, `tentdhv`) VALUES
('1', 'THPT'),
('2', 'Đai Học'),
('3', 'Tốt nghiệp đại học');

-- --------------------------------------------------------

--
-- Table structure for table `tthonnhan`
--

CREATE TABLE `tthonnhan` (
  `mahn` varchar(40) NOT NULL,
  `tentthn` varchar(40) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tthonnhan`
--

INSERT INTO `tthonnhan` (`mahn`, `tentthn`) VALUES
('1', 'Đã kết hôn');

-- --------------------------------------------------------

--
-- Table structure for table `vanhoa`
--

CREATE TABLE `vanhoa` (
  `mavh` varchar(40) NOT NULL,
  `tenvh` varchar(40) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vanhoa`
--

INSERT INTO `vanhoa` (`mavh`, `tenvh`) VALUES
('1', 'Có văn hóa');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dantoc`
--
ALTER TABLE `dantoc`
  ADD PRIMARY KEY (`MaDT`);

--
-- Indexes for table `dcsvn`
--
ALTER TABLE `dcsvn`
  ADD PRIMARY KEY (`MaTVDCS`),
  ADD KEY `MaNV` (`MaNV`);

--
-- Indexes for table `devvn_quanhuyen`
--
ALTER TABLE `devvn_quanhuyen`
  ADD PRIMARY KEY (`maqh`),
  ADD KEY `matp` (`matp`),
  ADD KEY `matp_2` (`matp`);

--
-- Indexes for table `devvn_tinhthanhpho`
--
ALTER TABLE `devvn_tinhthanhpho`
  ADD PRIMARY KEY (`matp`);

--
-- Indexes for table `doanthanhnien`
--
ALTER TABLE `doanthanhnien`
  ADD PRIMARY KEY (`maTV`),
  ADD KEY `MaNV` (`MaNV`);

--
-- Indexes for table `nhanvien`
--
ALTER TABLE `nhanvien`
  ADD PRIMARY KEY (`MaNV`),
  ADD KEY `nhanvien_ibfk_1` (`QuocTich`),
  ADD KEY `nhanvien_ibfk_2` (`TTHonNhan`),
  ADD KEY `nhanvien_ibfk_3` (`VanHoa`),
  ADD KEY `nhanvien_ibfk_4` (`TrinhDoHV`),
  ADD KEY `nhanvien_ibfk_5` (`DanToc`),
  ADD KEY `nhanvien_ibfk_6` (`TonGiao`);

--
-- Indexes for table `quandoi`
--
ALTER TABLE `quandoi`
  ADD PRIMARY KEY (`MaTVQD`),
  ADD KEY `MaNV` (`MaNV`);

--
-- Indexes for table `quoctich`
--
ALTER TABLE `quoctich`
  ADD PRIMARY KEY (`maqt`);

--
-- Indexes for table `test`
--
ALTER TABLE `test`
  ADD PRIMARY KEY (`ma`);

--
-- Indexes for table `tongiao`
--
ALTER TABLE `tongiao`
  ADD PRIMARY KEY (`matg`);

--
-- Indexes for table `trinhdohv`
--
ALTER TABLE `trinhdohv`
  ADD PRIMARY KEY (`matdhv`);

--
-- Indexes for table `tthonnhan`
--
ALTER TABLE `tthonnhan`
  ADD PRIMARY KEY (`mahn`);

--
-- Indexes for table `vanhoa`
--
ALTER TABLE `vanhoa`
  ADD PRIMARY KEY (`mavh`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `dcsvn`
--
ALTER TABLE `dcsvn`
  MODIFY `MaTVDCS` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `doanthanhnien`
--
ALTER TABLE `doanthanhnien`
  MODIFY `maTV` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `quandoi`
--
ALTER TABLE `quandoi`
  MODIFY `MaTVQD` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `test`
--
ALTER TABLE `test`
  MODIFY `ma` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `dcsvn`
--
ALTER TABLE `dcsvn`
  ADD CONSTRAINT `dcsvn_ibfk_1` FOREIGN KEY (`MaNV`) REFERENCES `nhanvien` (`MaNV`);

--
-- Constraints for table `devvn_quanhuyen`
--
ALTER TABLE `devvn_quanhuyen`
  ADD CONSTRAINT `devvn_quanhuyen_ibfk_1` FOREIGN KEY (`matp`) REFERENCES `devvn_tinhthanhpho` (`matp`);

--
-- Constraints for table `doanthanhnien`
--
ALTER TABLE `doanthanhnien`
  ADD CONSTRAINT `doanthanhnien_ibfk_1` FOREIGN KEY (`MaNV`) REFERENCES `nhanvien` (`MaNV`);

--
-- Constraints for table `nhanvien`
--
ALTER TABLE `nhanvien`
  ADD CONSTRAINT `nhanvien_ibfk_1` FOREIGN KEY (`QuocTich`) REFERENCES `quoctich` (`maqt`),
  ADD CONSTRAINT `nhanvien_ibfk_2` FOREIGN KEY (`TTHonNhan`) REFERENCES `tthonnhan` (`mahn`),
  ADD CONSTRAINT `nhanvien_ibfk_3` FOREIGN KEY (`VanHoa`) REFERENCES `vanhoa` (`mavh`),
  ADD CONSTRAINT `nhanvien_ibfk_4` FOREIGN KEY (`TrinhDoHV`) REFERENCES `trinhdohv` (`matdhv`),
  ADD CONSTRAINT `nhanvien_ibfk_5` FOREIGN KEY (`DanToc`) REFERENCES `dantoc` (`MaDT`),
  ADD CONSTRAINT `nhanvien_ibfk_6` FOREIGN KEY (`TonGiao`) REFERENCES `tongiao` (`matg`);

--
-- Constraints for table `quandoi`
--
ALTER TABLE `quandoi`
  ADD CONSTRAINT `quandoi_ibfk_1` FOREIGN KEY (`MaNV`) REFERENCES `nhanvien` (`MaNV`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
