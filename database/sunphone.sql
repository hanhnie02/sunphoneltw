


SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `sunphone`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `email` varchar(150) NOT NULL,
  `password` varchar(100) NOT NULL,
  `admin_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `admin`
--

INSERT INTO `admin` (`id`, `email`, `password`, `admin_name`) VALUES
(1, 'nhom9@gmail.com', 'nhom9', 'Nhóm9'),
(2, 'nhom9ltw@gmail.com', 'nhom9ltw', 'NHOM9LTW');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `banner`
--

CREATE TABLE `banner` (
  `ma_banner` int(11) NOT NULL,
  `ten_banner` varchar(200) NOT NULL,
  `img` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `banner`
--

INSERT INTO `banner` (`ma_banner`, `ten_banner`, `img`) VALUES
(1, '', 'images/banners/banner1.png'),
(2, '', 'images/banners/banner2.png'),
(3, '', 'images/banners/banner3.png');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `blog`
--

CREATE TABLE `blog` (
  `blog_id` int(11) NOT NULL,
  `blog_name` varchar(200) NOT NULL,
  `bog_image` varchar(200) NOT NULL,
  `blog_noidung` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `danhmuc`
--

CREATE TABLE `danhmuc` (
  `danhmuc_id` int(11) NOT NULL,
  `tendanhmuc` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Đang đổ dữ liệu cho bảng `danhmuc`
--

INSERT INTO `danhmuc` (`danhmuc_id`, `tendanhmuc`) VALUES
(1, 'Samsung'),
(2, 'Oppo'),
(3, 'Xiaomi'),
(4, 'Vivo'),
(5, 'Realme'),
(6, 'Iphone');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `donhang`
--

CREATE TABLE `donhang` (
  `donhang_id` int(11) NOT NULL,
  `sanpham_id` int(11) NOT NULL,
  `soluong` int(11) NOT NULL,
  `khach_id` int(11) NOT NULL,
  `ghichu` text NOT NULL,
  `ngay` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `giaodich`
--

CREATE TABLE `giaodich` (
  `giaodich_id` int(11) NOT NULL,
  `sanpham_id` int(11) NOT NULL,
  `soluong` int(11) NOT NULL,
  `magiaodich` int(11) NOT NULL,
  `ngaythang` date NOT NULL,
  `khach_id` int(11) NOT NULL,
  `tinhtrangdon` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `giohang`
--

CREATE TABLE `giohang` (
  `giohang_id` int(11) NOT NULL,
  `tensanpham` varchar(100) NOT NULL,
  `sanpham_id` int(11) NOT NULL,
  `giasanpham` varchar(50) NOT NULL,
  `hinhanh` varchar(200) NOT NULL,
  `soluong` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khachhang`
--

CREATE TABLE `khachhang` (
  `khach_id` int(11) NOT NULL,
  `hoten` varchar(100) NOT NULL,
  `sdt` varchar(50) NOT NULL,
  `diachi` varchar(200) NOT NULL,
  `ghichu` text NOT NULL,
  `email` varchar(150) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `lienhe`
--

CREATE TABLE `lienhe` (
  `lien_he_id` int(11) NOT NULL,
  `ten_lien_he` varchar(100) NOT NULL,
  `so_dien_thoai` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `tieu_de` text NOT NULL,
  `noi_dung` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham`
--

CREATE TABLE `sanpham` (
  `sanpham_id` int(11) NOT NULL,
  `ten_sp` varchar(100) NOT NULL,
  `chitiet` text NOT NULL,
  `hinh_anh` varchar(200) NOT NULL,
  `soluong` int(11) NOT NULL,
  `giaban` int(11) NOT NULL,
  `danhmuc_id` int(11) NOT NULL,
  `khuyenmai` int(11) NOT NULL,
  `color` text NOT NULL,
  `rate` varchar(20) NOT NULL,
  `kichthuocman` varchar(200) NOT NULL,
  `congngheman` varchar(200) NOT NULL,
  `cam_sau` varchar(200) NOT NULL,
  `cam_truoc` varchar(200) NOT NULL,
  `chipset` varchar(200) NOT NULL,
  `pin` text NOT NULL,
  `hedieuhanh` varchar(200) NOT NULL,

  `ram` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
=======
  `ram` varchar(100) NOT NULL,
  `bonhotrong` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


--
-- Đang đổ dữ liệu cho bảng `sanpham`
--


INSERT INTO `sanpham` (`sanpham_id`, `ten_sp`, `chitiet`, `hinh_anh`, `soluong`, `giaban`, `danhmuc_id`, `khuyenmai`, `color`, `rate`, `kichthuocman`, `congngheman`, `cam_sau`, `cam_truoc`, `chipset`, `pin`, `hedieuhanh`, `ram`) VALUES
(1, 'Samsung Galaxy Z Flip4 128GB', '', 'images/sp/1.png', 410, 19990000, 1, 0, 'tím mộng mơ', '50%', '6.7 inches', 'Dynamic AMOLED 2X', 'Camera góc rộng: 12 MP, f/1.8, PDAF, OIS\r\nCamera góc siêu rộng: 12 MP, f/2.2, 123˚', '10 MP, f/2.4', 'Snapdragon 8+ Gen 1 (4 nm)', '3700 mAh', 'Android 12, One UI 4.1.1', '8GB'),
(2, 'Samsung Galaxy S22 Ultra 256gb', '', 'images/sp/2.png', 325, 24990000, 1, 0, 'đen huyền bí', '', '6.8 inches', 'Dynamic AMOLED 2X', '108 MP, f/1.8 góc rộng\r\n12 MP, f/2.2 góc siêu rộng', '40 MP, f/2.2', 'Qualcomm Snapdragon 8 Gen 1 (4 nm)', '5000 mAh', 'Android 12, One UI 4.1', '12GB'),
(3, 'Samsung Galaxy Z Fold4\r\n', '', 'images/sp/3.png\r\n', 16, 40190000, 1, 35190000, 'đỏ pha lê', '45%', '7.6 inches\r\n', 'AMOLED', 'Camera góc siêu rộng: 12MP\r\nCamera tele: 10MP (3x zoom)', '10MP (bên ngoài) + 4MP (dưới màn hình)', 'Snapdragon 8 Plus Gen 1', '4400 mAh', 'Android 12, One UI 4.1.1', '12GB'),
(4, 'Samsung Galaxy A53 (5G)', '', 'images/sp/.png', 128, 9450000, 1, 0, 'trắng ngọc trinh', '45%', '6.5 inches\r\n\r\n\r\n', 'SUPER AMOLED', 'Camera chính góc rộng: 64 MP, f/1.8, PDAF, OIS\r\nCamera góc siêu rộng: 12 MP, f/2.2, 123˚', '32 MP, f/2.2', 'Exynos 1280 8 nhân', '5000 mAh', 'Android 12, One UI 4', '12GB'),
(5, 'Samsung Galaxy S21 Ultra 5G\r\n', '', 'images/sp/5.png', 5, 30990000, 1, 19900000, 'xanh navy', '50%', '6.8 inches\r\n', 'Dynamic AMOLED', 'Ống kính chính góc rộng: 108MP, f/1.8\r\nỐng kính zoom tiềm vọng: 10MP, zoom quang 10x\r\nCảm biến tele: 10MP, zoom quang 3x\r\nCảm biến siêu rộng: 12MP, f/2.2', '40 MP, f/2.2', 'Exynos 2100 8 nhân', '5500 mAh', 'Android 11, One UI 3.0', '12GB'),
(6, 'Oppo Reno8', '', 'images/sp/6.png', 10, 8990000, 2, 8390000, 'cầu vồng', '30%', '6.4 inches\r\n\r\n\r\n\r\n\r\n', 'AMOLED', 'Camera chính: 64MP, f/1.7\r\nCamera Marco: 2MP, f/3.3\r\nBokeh: 2MP, f/2.4', '32MP, f/2.4', 'Qualcomm Snapdragon 680', '5500 mAh', 'Android', '8GB'),
(7, 'OPPO Reno8 5G 8GB 256GB', '', 'images/sp/7.png', 13, 12990000, 2, 0, 'đen huyền ảo', '', '6.4 inches\r\n\r\n\r\n', 'AMOLED', 'Camera chính: 50 MP, f/1.8\r\nCamera phụ: 8 MP f/2.4\r\nCamera Marco: 2 MP f/2.2', '32 MP, f/2.4', 'MediaTek Dimensity 1300 8 nhân', '4000 mAh', 'Android 12', '8GB'),
(8, 'Oppo A55', '', 'images/sp/8.png', 5, 3990000, 2, 0, 'xanh tím than', '90%', '6.5 inches', 'IPS LCD', 'Camera góc rộng: 50 MP, f/2.2, 25mm 1/3.06\", 1.12µm, PDAF\r\nCamera cận cảnh: 2 MP, f/2.4\r\nCamera xóa phông: 2 MP, f/2.4', '16 MP, f/2.0', 'MediaTek Helio G35', '5000 mAh', 'Android 11', '4GB'),
(9, 'Oppo A15s', '', 'images/sp/9.png', 3, 4290000, 2, 3790000, 'trắng tinh', '', '6.52 inches\r\n\r\n', 'IPS LCD', 'Camera góc rộng: 13 MP, f/2.2, 1/3.1\", 1.12µm, PDAF\r\nCamera cận cảnh: 2 MP, f/2.4', '8 MP, f/2.0', 'Mediatek MT6765 Helio P35, tiến trình 12nm, 8 nhân', '4230 mAh', 'Android 10, giao diện ColorOS 7.2', '4GB'),
(10, 'Oppo A76', '', 'images/sp/10.png', 6, 5990000, 2, 5190000, 'đổi màu', '75%', '6.56 inches\r\n\r\n', 'IPS LCD', 'Góc rộng: 13 MP, f/2.2\r\nXoá phông: 2 MP, f/2.4', '12mp', 'Snapdragon 680 4G (6 nm)', '5000mAh', 'Android 11, ColorOS 11.1', '8GB'),
(11, 'Oppo Reno6 5G', '', 'images/sp/11.png', 13, 12990000, 2, 8990000, 'xanh lá', '40%', '6.43 inches\r\n\r\n\r\n\r\n', 'AMOLED', '32 MP, f/2.4\r\n', 'Camera góc rộng: 64 MP, f/1.7, PDAF\r\nCamera góc siêu rộng: 8 MP, f/2.2\r\nCamera macro: 2 MP, f/2.4', '\r\nMT6877 Dimensity 900 5G (6 nm)', '4300 mAh', 'Android 11, ColorOS 11.3', '8GB'),
(12, 'Oppo A77s', '', 'images/sp/12.png', 6, 6990000, 2, 5990000, 'hồng', '75%', '6.56\r\n', 'IPS', 'Camera góc rộng: 50 MP, f/1.8, PDAF\r\nCamera chân dung: 2 MP, f/2.4', '8 MP, f/2.0', 'Snapdragon 680 4G', '5000 mAh', 'Android 12', '8GB'),
(13, 'Xiaomi 12T', '', 'images/sp/13.png', 89, 12490000, 3, 11590000, 'silver', '50%', '6.67 inches\r\n', 'OLED', '108MP + 8MP + 2MP', '20MP', 'MediaTek Dimensity 8100 Ultra', '5000 mAh', 'Android 12, MIUI 13', '8GB'),
(14, 'Xiaomi 12T Pro', '', 'images/sp/14.png', 10, 16090000, 3, 0, 'đen', '90%', '6.67 inches\r\n\r\n\r\n', 'OLED', '200MP + 8MP + 2MP', '\r\n20MP', 'Snapdragon 8+ Gen 1 (4 nm)', '5000 mAh', 'Android 12', '12GB'),
(15, 'Xiaomi Redmi Note 11', '', 'images/sp/15.png', 4, 4400000, 3, 4400000, 'xám', '', '6.43 inches\r\n', 'OLED', 'Camera góc rộng: 50 MP, f/1.8, PDAF\r\nCamera góc siêu rộng: 8 MP\r\nCamera macro: 2MP\r\nCamera chân dung: 2MP', '13 MP, f/2.5', 'Snapdragon 680 8 nhân', '4000 mAh', 'Android 11, MIUI 12.5', '4GB'),
(16, 'Xiaomi Redmi 10', '', 'images/sp/16.png', 7, 3790000, 3, 0, 'gold', '30%', '6.58 inches\r\n\r\n', 'IPS LCD', 'Chính 50 MP, f/1.8\r\nPhụ 2 MP', '5 MP, f/2.2', 'MediaTek Dimensity 700 5G 8 nhân', '5000 mAh', 'Android 11', '4GB'),
(17, 'Xiaomi Poco F4', '', 'images/sp/17.png', 12, 9900000, 3, 8990000, 'bạc nhám', '', '6.5 inches', 'AMOLED', 'Camera chính: 64MP\r\nCamera góc rộng: 8MP\r\nCamera macro: 2MP', '20MP', 'Qualcomm Snapdragon 870 5G (7 nm)', '4500 mAh', 'Android 12, MIUI 13', '4GB'),
(18, 'Vivo V23e', '', 'images/sp/18.png', 3, 8490000, 4, 5490000, 'trắng xanh', '70%', '6.44 inches\r\n', 'AMOLED', 'Camera chính: 64MP AF\r\nCamera góc siêu rộng: 8MP, f/2.2\r\nCamera siêu cận: 2MP, f/2.4', '50MP AF, f/2.0', 'MediaTek Helio G96', '4050 mAh', 'Android 11', '8GB'),
(19, 'Vivo X80', '', 'images/sp/19.png', 56, 16690000, 4, 0, 'bạc ', '20%', '6.75 inches\r\n\r\n', 'AMOLED', '32 MP, f/2.5', '12mp', 'MediaTek Dimensity 9000', '4500 mAh', '\r\nFuntouch OS 12, Android 12', '8GB'),
(20, 'Realme 9 Pro', '', 'images/sp/20.png', 3, 9900000, 5, 7990000, 'cầu vồng', '80%', '6.6 inches\r\nCông nghệ màn hình\r\n\r\nIPS LCD\r\n\r\n\r\n16MP\r\n\r\n\r\n\r\n', '\r\nIPS LCD\r\n', '\r\nCamera chính: 64MP, f/1.79\r\nCamera góc rộng: 8MP, f/2.2\r\nCamera macro: 2MP, f/2.4\r\n', '\r\n16mp', 'Qualcomm Snapdragon 695 5G', '5000 mAh', '\r\nAndroid 12, UI 3.0', '12GB'),
(21, 'Realme 9 Pro Plus', '', 'images/sp/21.png', 4, 99000, 5, 7990000, 'xanh tím', '75%', '6.4 inches\r\n', 'Super AMOLED', 'Camera chính: 50MP, f/1.8\r\nCamera macro: 2MP, f/2.4\r\nCamera góc rộng: 8MP, 119°, f/2.2', '16MP, f/2.4', '\r\nMediaTek Dimensity 920 5G', '4500 mAh', 'UI 3.0, Android 12', '8GB'),
(23, 'Iphone 14 Pro', '', 'images/sp/23.png', 123, 30990000, 6, 29900000, 'gold', '', '6.1 inches', '\r\nOLED\r\n', 'Camera chính: 48MP\r\nCamera góc siêu rộng: 12MP\r\nCamera tele: 12MP', '', 'Apple A16 Bionic', '4000 mAh', '\r\niOS 16', '6GB'),
(24, 'Iphone 14 Promax', '', 'images/sp/22.png', 23, 34990000, 6, 32990000, 'tím nhám', '80', '6.1 inches\r\n', 'OLED', 'Camera chính: 12MP, ƒ/1.5\r\nCamera góc siêu rộng: 12MP, ƒ/2.4', '12MP, ƒ/1.9', 'Apple A15 Bionic', '4000 mAh', 'IOS 16', '6GB'),
(25, 'Iphone 13 Pro', '', 'images/sp/24.png', 23, 30490000, 6, 28490000, 'đen', '', '6.1 inches\r\n', 'OLED', 'Camera góc rộng: 12MP, ƒ/1.5\r\nCamera góc siêu rộng: 12MP, ƒ/1.8\r\nCamera tele : 12MP, /2.8', '12MP, ƒ/2.2', 'Apple A15', '3095 mAh', 'IOS 16', '6GB'),
(26, 'Iphone 12', '', 'images/sp/25.png', 3, 19990000, 6, 15490000, 'bạc', '95%', '4.7 inches\r\n\r\n', 'LED-backlit IPS LCD, HD', '7 MP', '\r\n12 MP', 'Apple A13 Bionic 6 nhân', '1750 mAh ', 'IOS 15 ', '3GB'),
(27, 'Iphone SE', '', 'images/sp/26.png', 9, 12990000, 6, 11900000, '', '', '', '', '', '', '', '', '', '');
=======
INSERT INTO `sanpham` (`sanpham_id`, `ten_sp`, `chitiet`, `hinh_anh`, `soluong`, `giaban`, `danhmuc_id`, `khuyenmai`, `color`, `rate`, `kichthuocman`, `congngheman`, `cam_sau`, `cam_truoc`, `chipset`, `pin`, `hedieuhanh`, `ram`, `bonhotrong`) VALUES
(1, 'Samsung Galaxy Z Flip4 128GB', 'Samsung Galaxy Z Flip 4 sở hữu thiết kế nhìn chung không có nhiều khác biệt so với thế hệ trước đó. Điện thoại vẫn sở hữu một thiết kế bao gồm hai tone màu với màn hình gập. Tuy nhiên các chi tiết sẽ được chăm chút hơn rất nhiều so với người đàn anh Z Flip 3. <br> Điện thoại Samsung ZFlip 4 tiếp tục là một mẫu mã sang chảnh, thời thượng của Samsung được lấy cảm hứng từ hộp trang điểm cầm tay của các chị em hay chiếc vỏ sò. Với công nghệ gập đột phá, Samsung đã tạo ra một chiếc smartphone mang đậm dấu ấn Samsung trên thị trường. Đóng lại là phụ kiện công nghệ với kích thước 4.2-inch, vừa vặn mọi ngăn túi. Mở ra là một chiếc smartphone gập phá vỡ mọi giới hạn từ trước đến nay. <br> Thiết kế đột phá đầy lôi cuốn  Khung nhôm của máy được bo tròn tinh tế với những đường nét mềm mại. Trông rất cao cấp. Chạm vào thì vô cùng thoải mái. Hơn nữa, lớp phủ nhám nhẹ trên bề mặt kính máy sẽ hạn chế tối đa dấu vân tay hoặc vết bẩn để máy luôn mới và sạch.<br>  Galaxy Z Flip 4 tiếp tục được trang bị kính siêu mỏng Ultra Thin Glass (UTG). Công nghệ màn hình này mang cho bạn trải nghiệm linh hoạt không tưởng. Bền hơn 80% so với phiên bản Z Flip trước đó. Và có gập mở đến 200.000 lần mà không gặp trục trặc gì. Phần bản lề này không chỉ bền bỉ hơn mà cũng nhỏ và nhẹ hơn.<br>  Nếu nếp gấp giữa màn hình từng là một điểm yếu trên Samsung Galaxy Z Flip 3 thì điều này đã hoàn toàn được cải thiện trên thế mới kế nhiệm này. Khi mở ra, màn hình Z Flip 4 vẫn tồn tại những nếp gấp tuy nhiên nếp gấp này mờ hơn đáng kể, rất khó để nhìn thấy và hoàn toàn không ảnh hưởng đến các trải nghiệm của người dùng.', 'images/sp/1.png', 410, 19990000, 1, 0, 'tím mộng mơ', '50%', '6.7 inches', 'Dynamic AMOLED 2X', 'Camera góc rộng: 12 MP, f/1.8, PDAF, OIS <br>&ensp;\nCamera góc siêu rộng: 12 MP, f/2.2, 123˚', '10 MP, f/2.4', 'Snapdragon 8+ Gen 1 (4 nm)', '3700 mAh', 'Android 12, One UI 4.1.1', '8GB', '128GB'),
(2, 'Samsung Galaxy S22 Ultra 256gb', 'Samsung Galaxy S22 Ultra 5G là siêu phẩm kế thừa tinh hoa Galaxy Note cùng đột phá Galaxy S, tạo nên sức mạnh vô song đỉnh cao. Điện thoại đã thiết lập chuẩn mực mới cho dòng smartphone cao cấp từ sức mạnh hàng đầu Snapdragon 8 Gen 1, camera “mắt thần bóng đêm”, khả năng zoom 100x, bút S-Pen tích hợp và thời gian sử dụng cả ngày dài. Đây là siêu phẩm tuyệt vời nhất mà Samsung từng mang đến. <br> Lần đầu tiên Samsung mang tới thiết kế dòng Galaxy Note lên Galaxy S. Siêu phẩm Galaxy S22 Ultra 5G xuất hiện độc bản đậm chất Galaxy Note, cụm camera không viền độc đáo và màu sắc thời thượng, tạo nên bản sắc riêng biệt, khó nhầm lẫn trên thị trường. <br> Dẫn đầu xu hướng màu trên thế hệ di động, Samsung trang bị hai màu sắc hoàn toàn mới là Đỏ Burgundy và Xanh Zeta bên cạnh hai phiên bản Trắng Phantom và Đen Phantom sang trọng và tinh tế.<br> Đây cũng là mẫu điện thoại Galaxy bền bỉ nhất với khung viền từ hợp kim nhôm Armor Aluminum cứng cáp nhất thị trường, mặt trước sau là thế hệ kính tiên tiến Corning Gorilla Glass Victus+ cùng chuẩn chống nước bụi IP68 vượt trội.', 'images/sp/2.png', 325, 24990000, 1, 0, 'đen huyền bí', '', '6.8 inches', 'Dynamic AMOLED 2X', '108 MP, f/1.8 góc rộng<br>&ensp;\n12 MP, f/2.2 góc siêu rộng', '40 MP, f/2.2', 'Qualcomm Snapdragon 8 Gen 1 (4 nm)', '5000 mAh', 'Android 12, One UI 4.1', '12GB', '256GB'),
(3, 'Samsung Galaxy Z Fold4\r\n', 'Với Samsung Galaxy Z Fold4, smartphone màn hình gập đã trở nên thân thiện, tiện dụng và bền bỉ hơn rất nhiều. Những cải tiến thiết thực trong từng khía cạnh giúp sản phẩm biến hóa linh hoạt hơn và đem lại những trải nghiệm không thể tìm thấy ở đâu khác. <br> Nét độc đáo nhất của Galaxy Z Fold4 là việc sản phẩm được trang bị tới hai màn hình/ Trong đó, màn hình chính rộng 7.6 inch có thể đóng - mở linh hoạt để “hô biến” thành một chiếc tablet khi cần. Khi gập lại, Samsung Galaxy Z Fold4 vẫn phục vụ bạn dễ dàng nhờ màn hình phụ rộng 6.2 inch trên mặt trước. Tất cả đem đến trải nghiệm hình ảnh trọn vẹn không thể tìm thấy ở đâu khác. <br> So với thế hệ cũ, Galaxy Z Fold4 đánh dấu bước tiến mới về độ hoàn thiện. Dù có kích cỡ tổng thể lớn hơn nhiều khi mở ra, nhưng nhờ những tinh chỉnh hợp lý về kết cấu và sử dụng vật liệu siêu nhẹ, sản phẩm rút gọn trọng lượng về mức xấp xỉ smartphone thông thường. <br> Mở Galaxy Z Fold4 ra, bạn sẽ cảm nhận được sự sang trọng trong từng chi tiết trên thân máy. Sản phẩm có các lựa chọn màu sắc cực kỳ sang trọng gồm Xanh titan, Đen Phantom và Kem Metallic', 'images/sp/3.png\r\n', 16, 40190000, 1, 35190000, 'đỏ pha lê', '45%', '7.6 inches\r\n', 'AMOLED', 'Camera góc siêu rộng: 12MP\n<br>&ensp;Camera tele: 10MP (3x zoom)', '10MP (bên ngoài) + 4MP (dưới màn hình)', 'Snapdragon 8 Plus Gen 1', '4400 mAh', 'Android 12, One UI 4.1.1', '12GB', '256GB'),
(4, 'Samsung Galaxy A53 (5G)', 'Tận hưởng hiệu năng mạnh mẽ Exynos 1280, màn hình siêu mượt 120Hz và hệ thống camera 64MP chống rung OIS cải tiến. Tất cả được hội tụ bên trong Samsung Galaxy A53 5G gọn nhẹ, tươi trẻ và đầy màu sắc cá tính. Phiên bản bộ nhớ 256GB độc quyền tại FPT Shop còn giúp bạn lưu trữ nhiều hơn. <br> Samsung Galaxy A53 5G với hiệu năng đáng kinh ngạc của vi xử lý mới Exynos 1280, đi kèm 8GB RAM và 256GB bộ nhớ trong. Exynos 1280 sản xuất trên tiến trình tiên tiến 5nm, CPU tăng 6%, GPU tăng 33%, mang tới sức mạnh đa tác vụ mượt mà, tối ưu dù “chiến” game hay giải trí. <br> Công nghệ mở rộng RAM Plus đến 6GB/8GB, cho phép bạn thực hiện nhiều ứng dụng cùng lúc mà không ngại giật, lag. Đồng thời, việc hỗ trợ 5G trên Galaxy A53 5G còn mở ra trải nghiệm trực tuyến vượt trội, nhanh như chớp, dù bạn đang xem video chất lượng 4K trên Youtube, game hay tải xuống một ứng dụng bất kỳ. <br> Mọi điều yêu thích đều có thể lưu trữ trên Samsung Galaxy A53 5G phiên bản 256GB được độc quyền tại FPT Shop. Giờ đây, bạn sẽ không phải bỏ lỡ ảnh, video hay bất cứ điều gì quan trọng với Galaxy A53 5G phiên bản 256GB. Ngoài ra, bạn cũng có thể thêm dung lượng bằng cách mở rộng thẻ nhớ đến 1TB thông qua microSD.', 'images/sp/.png', 128, 9450000, 1, 0, 'trắng ngọc trinh', '45%', '6.5 inches\r\n\r\n\r\n', 'SUPER AMOLED', 'Camera chính góc rộng: 64 MP, f/1.8, PDAF, OIS<br>&ensp;\nCamera góc siêu rộng: 12 MP, f/2.2, 123˚', '32 MP, f/2.2', 'Exynos 1280 8 nhân', '5000 mAh', 'Android 12, One UI 4', '12GB', '128GB'),
(5, 'Samsung Galaxy S21 Ultra 5G\r\n', 'Galaxy S21 Ultra với những cải tiến đáng kể về hiệu năng của máy cực kỳ mạnh mẽ cùng với thiết kế sang trọng cao cấp. Samsung đã mang đến cho người dùng một trải nghiệm hoàn toàn mới, đây hứa hẹn sẽ là chiếc smartphone đi đầu trên thế giới về các xu hướng công nghệ lẫn hiệu năng vượt trội đáng sở hữu nhất vào thời điểm ra mắt. <br> Samsung S21 Ultra đã được Samsung trang bị bộ khung kim loại nguyên khối mang đến một phong cách thiết kế cứng cáp khi cầm nắm sử dụng, kết hợp thiết kế bố cục với mặt kính cao cấp sáng bóng ở mặt sau tạo nên một vẻ ngoài sang trọng và tinh tế từ những chi tiết nhỏ nhất. Các phím chức năng cũng được làm từ kim loại cho độ nhạy rất cao khi sử dụng. <br>   Điểm nổi bật nhất trên chiếc S21 Ultra đó là được trang bị màn hình kích thước lớn lên đến 6.8 inch, mang đến một không gian rộng lớn khi sử dụng. Ngoài ra chiếc điện thoại cao cấp này cũng được hãng trang bị tấm nền hiển thị Dynamics AMOLED 2X mang đến độ phân giải cực cao cho mọi hình ảnh hiển thị cực kỳ sắc nét tần số quét của màn hình này cũng đạt 120Hz cho mọi khung hình tốc độ cao. <br> Không những có màn hình tràn viền kích thước lớn Samsung còn trang bị trên chiếc Samsung S21 Ultra cấu hình cực kỳ mạnh mẽ. Cụ thể máy được trang bị con chip mới nhất Exynos 2100 với 8 nhân tốc độ cao cho mọi tác vụ được xử lý nhanh chóng.<br> Ngoài ra bộ nhớ RAM của máy cũng được nâng cấp lên đến 12GB. Người dùng có thể thoải mái đa nhiệm cùng lúc nhiều ứng dụng nặng như chơi game, mạng xã hội cùng lúc mà không bị giật lag. ', 'images/sp/5.png', 5, 30990000, 1, 19900000, 'xanh navy', '50%', '6.8 inches\r\n', 'Dynamic AMOLED', 'Ống kính chính góc rộng: 108MP, f/1.8<br>&ensp;\nỐng kính zoom tiềm vọng: 10MP, zoom quang 10x<br>&ensp;\nCảm biến tele: 10MP, zoom quang 3x<br>&ensp;\nCảm biến siêu rộng: 12MP, f/2.2', '40 MP, f/2.2', 'Exynos 2100 8 nhân', '5500 mAh', 'Android 11, One UI 3.0', '12GB', '256GB'),
(6, 'Oppo Reno8', 'Với thiết kế cụm camera số 8 nhấn mạnh 8 tiếng tận hưởng mỗi ngày. Thay vì sống một cuộc sống gò bó, chỉ tập trung vào công việc như một robot được lập trình sẵn, hay chia thời gian mỗi ngày thành 3 phần: 8 tiếng làm việc, 8 tiếng tận hưởng và 8 tiếng nghỉ ngơi. <br> Ngoài ra, OPPO Reno8 còn mang lại cho người dùng:<br> - Thiết kế cạnh viền vuông vức cùng cụm camera tinh xảo và cao cấp. <br> - Chuyên gia chân dung đêm với bộ đôi cảm biến cao cấp Sony IMX709 (camera trước) và IMX766 (camera sau). <br> - Khả năng xử lý được cải thiện lên đến 40% so với thế hệ tiền nhiệm, lưu trữ thoải mái với 256GB ROM Bộ nhớ. <br> - Sạc siêu nhanh hơn 10 phút đạt 50% với khả năng bảo vệ 5 lớp. <br>   Với 8 tiếng làm việc, OPPO Reno8 hỗ trợ người dùng tập trung tối đa vào công việc, không có thời gian chờ với chip set mạnh mẽ, bộ nhớ RAM lớn giúp các tháo tác với google sheet, ppt mượt mà. <br> Sau thời gian làm việc hãy tập trung hoàn toàn cho các trải nghiệm cá nhân, tận hưởng các cuộc sống thú vị về ban đêm. OPPO Reno8 với camera siêu cảm biến giúp ghi lại những khoảng khắc đáng nhớ một cách rõ nét. Khung giờ cuối cùng là 8 tiếng để nghỉ ngơi, bổ sung năng lượng với chế độ sạc đêm an toàn.', 'images/sp/6.png', 10, 8990000, 2, 8390000, 'cầu vồng', '30%', '6.4 inches\r\n\r\n\r\n\r\n\r\n', 'AMOLED', 'Camera chính: 64MP, f/1.7<br>&ensp;\nCamera Marco: 2MP, f/3.3<br>&ensp;\nBokeh: 2MP, f/2.4', '32MP, f/2.4', 'Qualcomm Snapdragon 680', '5500 mAh', 'Android', '8GB', '128GB'),
(7, 'OPPO Reno8 5G 8GB 256GB', 'Không chỉ sở hữu hai cảm biến ảnh siêu cao cấp của Sony, OPPO Reno8 5G còn gây ấn tượng với công nghệ sạc siêu nhanh SuperVOOC 80W, thiết kế nguyên khối tinh gọn và chip xử lý Dimensity 1300  mạnh mẽ bậc nhất thế giới hiện nay. <br> -OPPO Reno8 5G được trang bị Sony IMX766 50MP trên camera chính và Sony IMX709 32MP ẩn trong camera selfie. Tất cả đều là những cảm biến ảnh cao cấp bậc nhất trên thị trường hiện tại và có thể chụp tốt dù trong môi trường thiếu sáng hoặc dưới ánh đèn rực rỡ. <br> -Chìa khóa trong cụm camera chính của OPPO Reno8 5G nằm ở cảm biến Sony IMX766 có khả năng thu sáng tốt hơn 64.36%, đem tới những khung hình luôn sắc nét với màu sắc chân thật. Ngoài ra, OPPO còn hỗ trợ công nghệ lấy nét theo pha PDAF nhằm gia tăng độ ổn định, tính chính xác khi hoạt động ngay cả trong môi trường ban đêm.<br> -Sử dụng cảm biến Sony IMX709 thế hệ mới trong camera trước, Reno 8 5G có thể thu sáng nhiều hơn 60% và cho thấy năng lực khử nhiễu tốt hơn 35% so với phiên bản tiền nhiệm. Không chỉ vậy, dải tần nhạy sáng rộng hơn 4 lần cũng giúp chất lượng ảnh chụp trở nên chi tiết hơn, độ tương phản cao hơn và có sắc màu rực rỡ hơn.<br> -Việc quay những video vào ban đêm giờ đây sẽ chẳng thể làm khó bạn khi có OPPO Reno8 5G trong tay. Hệ thống cảm biến Sony thế hệ mới sẽ được tối ưu thông qua thuật toán Video Siêu quay ban đêm mà OPPO dày công phát triển nhằm căn chỉnh cho video thực hiện từ Reno8 5G luôn đủ sáng, rõ ràng và trung thực.', 'images/sp/7.png', 13, 12990000, 2, 0, 'đen huyền ảo', '', '6.4 inches\r\n\r\n\r\n', 'AMOLED', 'Camera chính: 50 MP, f/1.8<br>&ensp;\nCamera phụ: 8 MP f/2.4<br>&ensp;\nCamera Marco: 2 MP f/2.2', '32 MP, f/2.4', 'MediaTek Dimensity 1300 8 nhân', '4000 mAh', 'Android 12', '8GB', '256GB'),
(8, 'Oppo A55', 'Điện thoại OPPO A55 sở hữu thiết kế khá quen thuộc so với các mẫu smartphone khác trên thị trường. Máy được hoàn thiện từ nhựa nhưng vẫn tạo cảm giác chắc chắn khi cầm trên tay chứ không hề ọp ẹp. Máy với màm hình đục lỗ, khung viền 3 bên mỏng, viền đáy sẽ dày hơn một chút. <br> Mặt lưng máy hiệu ứng gradiant, cụm camera sau xếp dọc theo thân máy trên modun hình chữ nhật. Khung viền trên A55 sẽ được làm bo cong nhẹ cho khả năng cầm nắm thoải mái. Máy sẽ được bán ra với hai phiên bản màu đen và xanh dương. <br> Cạnh phải OPPO A55 là nơi đặt phím nguồn kiêm cảm biến vân tay. Bên cạnh trái là nơi đặt nút tăng giảm âm lượng và khay SIM. Cạnh dưới A55 là nơi đặt loa, cổng sạc USB Type C, mic và jack âm thanh 3.5mm. <br> Điện thoại OPPO A55 sở hữu màn hình LCD kích thước 6.51 inch. Màn hình này với độ phân giải HD+ cho độ nét cao. Ngoài ra, máy còn hỗ trợ đèn nền thông minh AI giúp người dùng nhìn rõ hơn về ban ngày và nhẹ dịu hơn về ban đêm. <br> Màn hình điện thoại với thiết kế giọt nước, viền mỏng cho tỉ lệ hiển thị 89.2% cùng độ sáng cao nhất lên đến 480 nits. Màn hình này với tần số quét 60Hz cho độ phản hồi các tao tác mượt mà.<br> Điểm nổi bật trên màn hình OPPO A55 là máy có thể tìm hiểu thói quen sử dụng của người dùng, tự động điều chỉnh độ sáng thích hợp giúp bảo vệ mắt.', 'images/sp/8.png', 5, 3990000, 2, 0, 'xanh tím than', '90%', '6.5 inches', 'IPS LCD', 'Camera góc rộng: 50 MP, f/2.2, 25mm 1/3.06\", 1.12µm, PDAF<br>&ensp;\nCamera cận cảnh: 2 MP, f/2.4<br>&ensp;\nCamera xóa phông: 2 MP, f/2.4', '16 MP, f/2.0', 'MediaTek Helio G35', '5000 mAh', 'Android 11', '4GB', '128GB'),
(9, 'Oppo A15s', 'Điện thoại OPPO A15s là một phiên bản khác của OPPO A15 trước đó với một số nâng cấp nhằm tăng cường trải nghiệm sử dụng. Thiết kế của máy vẫn mang vẻ ngoài cá tính, mỏng chỉ 7.9mm với mặt kính cường lực tạo nét sang trọng cho chiếc máy. OPPO A15s vẫn giữ nguyên jack cắm tai nghe 3.5mm cho người dùng tai nghe có dây truyền thống. <br> OPPO A15s được trang bị màn hình kích thước 6.52 inch, độ phân giải HD+ (1600 x 720 pixels) trên nền màu IPS LCD. Màn hình có thiết kế đục lỗ bao phủ gần như trọn mặt trước, với viền hai bên siêu mỏng góp phần tạo nên trải nghiệm giải trí như chơi game, xem phim trở nên tối ưu nhất cho người dùng. <br> OPPO A15s có hệ thống camera ba ống kính ở mặt sau với thiết kế cụm vuông dọc đẹp mắt như những dòng flagship hiện nay. Cụ thể, cụm camera sau của OPPO A15s gồm có: ống kính chính 13 MP khẩu độ f/2.2 chụp góc rộng; ống kính phụ 2 MP khẩu độ f/2.4 chụp macro; và một ống kính phụ khác 2 MP khẩu độ f/2.4 cho chức năng chụp ảnh chiều sâu. Ngoài ra người dùng còn có thể quay video Full HD 30fps trên OPPO A15s. <br> Mặt trước OPPO A15s còn hiện diện camera selfie với độ phân giải 8 MP, khẩu độ f/2.0. Camera này cho phép người dùng chụp selfie với tính năng góc rộng và chỉnh màu HDR, góp phần gia tăng chất lượng tổng thể bức ảnh.', 'images/sp/9.png', 3, 4290000, 2, 3790000, 'trắng tinh', '', '6.52 inches\r\n\r\n', 'IPS LCD', 'Camera góc rộng: 13 MP, f/2.2, 1/3.1\", 1.12µm, PDAF<br>&ensp;\nCamera cận cảnh: 2 MP, f/2.4', '8 MP, f/2.0', 'Mediatek MT6765 Helio P35, tiến trình 12nm, 8 nhân', '4230 mAh', 'Android 10, giao diện ColorOS 7.2', '4GB', '128GB'),
(10, 'Oppo A76', 'Điện thoại OPPO A76 vẫn mang trên mình thiết kế quen thuộc như những phiên bản tiền nhiệm trước đó. Tất cả các chi tiết trên máy đều được gia công tỉ mỉ, tối ưu. Từ đó nhìn chiếc điện thoại OPPO trở nên mỏng nhẹ hơn, thiết kế thân máy cong 3D mang đến cảm giác mảnh mai và dễ cầm nắm sử dụng.<br> Để tối giản nhất có thể OPPO A76 mang tới cho người dùng 2 lựa chọn màu sắc bao gồm: màu đen và màu xanh. Người dùng có thể lựa chọn màu xanh thanh mát như một tảng băng trôi vô cùng thanh lịch, tươi mới hay màu đen cực kỳ huyền bí và sang trọng.<br> Ấn tượng nhất ở OPPO A76 là màu sắc mặt lưng máy được nhiều hãng lựa chọn trang bị cho sản phẩm của mình thời gian gần đây. Màu sắc thời thượng, trẻ trung và năng động. Nhưng chưa đủ, bởi màu sẽ thay đổi tùy theo góc nhìn một cách mềm mại, lấp lánh.<br> Thiết kế OPPO A76 rất phù hợp cho phái nữ. Tuy nhiên nếu bạn muốn cảm giác mạnh mẽ hơn thì A76 sẽ còn tùy chọn màu đen trầm. Ngoài ra, chất liệu mặt lưng là nhựa phủ nhám dù không mang lại cảm giác sang trọng nhưng sẽ không có tình trạng bám vân tay, vết mồ hôi trong quá trình sử dụng.<br> OPPO A76 sở hữu màn hình HD+ 6.56 inch cùng với đó là thiết kế đục lỗ quen thuộc. Tỷ lệ màn hình với thân máy lên đến 90,8% mang tới không gian hiển thị rộng rãi giúp trải nghiệm cực đã.<br> Ngoài ra, tấm nền AMOLED với màu sắc tươi tắn mang lại sự hài hòa. Độ sáng lớn, dễ dàng điều chỉnh cho người dùng thoải mái tận hưởng những hình ảnh.', 'images/sp/10.png', 6, 5990000, 2, 5190000, 'đổi màu', '75%', '6.56 inches\r\n\r\n', 'IPS LCD', 'Góc rộng: 13 MP, f/2.2<br>&ensp;\nXoá phông: 2 MP, f/2.4', '12mp', 'Snapdragon 680 4G (6 nm)', '5000mAh', 'Android 11, ColorOS 11.1', '8GB', '128GB'),
(11, 'Oppo Reno6 5G', 'Điện thoại OPPO Reno 6 (5G) là sản phẩm của công nghệ thiết kế vô cùng hoàn hảo và ấn tượng. Các góc cạnh của máy được bo cong mềm mại, uyển chuyển mang đến sự mượt mà và tinh tế. Kích thước máy nhỏ gọn dễ dàng cầm nắm trong quá trình sử dụng.<br> Mặt trước của điện thoại OPPO này cũng ấn tượng không kém với màn hình thiết kế kiểu tràn viền với độ cong nhẹ 2.5D. Hai cạnh viền siêu mỏng, cùng với đó là camera đục lỗ giúp mở rộng tối đa không gian hiển thị.<br> Oppo Reno6 5G sở hữu màn hình với kích thước 6.43 inches độ phân giải Full HD+. Từ đó mang đến cho người dùng hình ảnh vô cùng chân thật và sắc nét. Đặc biệt là màu đen sâu giúp thu hút sự tập trung của người nhìn vào những video giải trí hay những game đồ họa hấp dẫn.<br> Ngoài ra, điện thoại còn khẳng định được vị thế của mình so với các mẫu khác cùng phân khúc khi được tích hợp tần số quét 90 Hz, mang đến độ mượt mà trong những trải nghiệm vuốt chạm hàng ngày. Và chúng thật phù hợp với những ai đam mê chơi game khi hoàn toàn không có độ trễ.<br> OPPO Reno6 5G lại lần nữa gây ấn tượng với người dùng bởi cấu hình tương đối mạnh mẽ. Máy được trang bị chipset 6 nm và là nền tảng Mediatek, hay còn được gọi với cái tên quen thuộc hơn là Dimensity 900. Với con chip này, người dùng thoải mái trải nghiệm các game đồ họa hot nhất hiện nay mà không cần lo giật lag.', 'images/sp/11.png', 13, 12990000, 2, 8990000, 'xanh lá', '40%', '6.43 inches\r\n\r\n\r\n\r\n', 'AMOLED', '32 MP, f/2.4\r\n', 'Camera góc rộng: 64 MP, f/1.7, PDAF\r\nCamera góc siêu rộng: 8 MP, f/2.2\r\nCamera macro: 2 MP, f/2.4', '\r\nMT6877 Dimensity 900 5G (6 nm)', '4300 mAh', 'Android 11, ColorOS 11.3', '8GB', '128GB'),
(12, 'Oppo A77s', 'Một trong số những đặc điểm nổi bật của OPPO A77 được giữ trong bản nâng cấp A77s chính là thiết kế thanh mảnh đậm vẻ hiện đại. Có kích thước là hình chữ nhật thuôn dài với chiều cao 163,8mm cùng chiều rộng 75mm, chiếc smartphone này giúp tối ưu khung hình hiển thị để mang đến cảm giác thoải mái nhất cho mắt.<br> Độ dày chỉ khoảng 8mm cùng với trọng lượng chỉ 187gram, OPPO A77s mang đến cảm giác nhẹ như không khi cầm trên tay. Điều này cũng cực kỳ phù hợp với xu hướng điện thoại ngày càng mỏng nhẹ hiện tại và mang đến cảm giác cực kỳ thời thượng, hiện đại. Mặt trước của OPPO A77s được làm bằng kính có khả năng chịu lực và mắt sau được cấu thành từ vật liệu nhựa hoặc da giúp tối đa hóa độ bền của máy.  <br> Để mang đến hiệu quả tốt nhất cho các khung hình, OPPO có sự đầu tư lớn vào màn hình của A77s. Những chiến binh smartphone mới đến từ thương hiệu điện thoại này được trang bị tấm nền IPS LCD với độ sáng cao từ 480 - 600 nits. Nhờ điều này mà OPPO A77s có thể hiển thị sắc nét hình ảnh ngay cả khi phải hoạt động trong môi trường cường độ ánh sáng lớn.<br> Khả năng cảm ứng của OPPO A77s cũng khá tốt với tốc độ quét 90Hz cùng tỷ lệ lấy mẫu cảm ứng 180Hz. So với kích thước tổng thể của cả điện thoại thì màn hình chiếm 84,2%. Đây không phải kích thước lý tưởng cho những chiếc điện thoại có màn hình tràn viền nhưng là kích thước hợp lý để tạo ra cảm giác thoải mái khi thực hiện các thao tác.', 'images/sp/12.png', 6, 6990000, 2, 5990000, 'hồng', '75%', '6.56\r\n', 'IPS', 'Camera góc rộng: 50 MP, f/1.8, PDAF<br>&ensp;\nCamera chân dung: 2 MP, f/2.4', '8 MP, f/2.0', 'Snapdragon 680 4G', '5000 mAh', 'Android 12', '8GB', '128GB'),
(13, 'Xiaomi 12T', 'Điện thoại Xiaomi Mi 12T sở hữu thân máy bóng bẩy quyến rũ với mặt lưng cong viền phủ kính bền cứng. Phần khung máy chế tạo từ chất liệu cao cấp giúp tăng thêm độ bền cho thân máy. Thiết kế mỏng nhẹ giúp cho bạn luôn cầm nắm Xiaomi Mi 12T một cách êm vừa tay. <br> Điện thoại Xiaomi Mi 12T trang bị màn hình thiết kế viền mỏng tối giản đẹp mắt. Màn hình Xiaomi Mi 12T có độ phân giải cao cho hình ảnh trở nên sắc nét và sống động hơn. Mi 12T còn được tích hợp tần số quét lên đến tận 120 Hz cho những trải nghiệm giải trí tuyệt đỉnh, khả năng vuốt chạm mượt mà, trơn tru. Ngoài ra màn hình Xiaomi Mi 12T còn sở hữu màn hình CrystalRes AMOLED cho chất lượng ảnh hoàn mỹ. <br> Bên cạnh độ phân giải cao, sản phẩm còn tích hợp nhiều công nghệ hiện đại nhằm nâng cao trải nghiệm người dùng. Một trong những điểm nổi bật là cảm biến vân tay dưới màn hình thay vì vân tay cạnh bên như ở thế hệ trước.<br> Điện thoại Xiaomi Mi 12T nổi bật thu hút ở cụm camera chụp ảnh chuyên nghiệp. Trong đó, camera chính có độ phân giải tận 108 MP với thuật toán thông minh (AI) giúp xử lý chi tiết môi trường tốt hơn để cho ra ảnh chụp đầy đủ trọn vẹn. Hơn nữa, camera 108 MP giúp Xiaomi Mi 12T chụp ảnh ban đêm, chụp ảnh thiếu sáng với kết quả vô cùng ấn tượng.', 'images/sp/13.png', 89, 12490000, 3, 11590000, 'silver', '50%', '6.67 inches\r\n', 'OLED', '108MP + 8MP + 2MP', '20MP', 'MediaTek Dimensity 8100 Ultra', '5000 mAh', 'Android 12, MIUI 13', '8GB', '128GB'),
(14, 'Xiaomi 12T Pro', 'Xiaomi Mi 12T Pro sở hữu vi xử lý Snapdragon 8 Gen 1+ mạnh mẽ, RAM 12GB + Bộ nhớ trong 256GB cho không gian lưu trữ thoải mái. Thêm vào đó, cụm camera cảm biến 200MP cùng camera selfie 20MP cho ảnh chụp, video chi tiết, sắc nét. Không chỉ vậy, màn hình AMOLED DotDisplay độ phân giải FHD+ với tần số quét 120Hz mang đến hình ảnh rực rỡ, sống động. <br> Xiaomi 12T Pro là mẫu smartphone thuộc phân khúc cận cao cấp mà Xiaomi muốn ra mắt thị trường trong năm nay. Bên cạnh thiết kế thời trang thì Xiaomi 12T Pro còn mang tới cho người dùng trải nghiệm siêu đỉnh nhờ con chip mạnh mẽ bậc nhất hiện nay. Dưới đây là chi tiết về mẫu smartphone nhà Xiaomi.<br> Điện thoại Xiaomi 12T Pro được trang bị màn hình mỏng nhẹ tối giản và vô cùng đẹp mắt. Điện thoại có độ phân giải màn hình 6.67 inch Full HD+ cùng với đó là tấm nền AMOLED DotDisplay chất lượng. Tất cả sẽ mang tối cho người dùng chất lượng hình ảnh vô cùng hoàn mỹ với độ chính xác màu cao.<br> Đặc biệt màn hình được trang bị tần số quét lớn lên tới 120 Hz. Nhờ trang bị mạnh tay này màn hình mang đến cho người dùng tốc độ phản hồi nhanh chóng mọi thao tác vuốt chạm được diễn ra một cách mượt mà. Đặc biệt hình ảnh không bị trễ khi người dùng đắm chìm trong những game đồ họa cực mạnh.<br> Về tổng thể thiết kế Xiaomi 12T Pro sở hữu thân máy khá gọn gàng và bóng bẩy nhờ mặt lưng được thiết kế mềm mại và phủ lớp kính cường lực Corning Gorilla Glass 5. Phần thân của máy được hoàn thiện nguyên khối cao cấp không chỉ mang tới cảm giác cầm nắm chắc chắn mà còn góp phần giúp gia tăng độ bền.<br> Khả năng chống nước và chống bụi bẩn khá ổn nước người dùng có thể thoải mái sử dụng trong mọi điều kiện thời tiết khác nhau ngay cả khi sử dụng dưới trời mưa.', 'images/sp/14.png', 10, 16090000, 3, 0, 'đen', '90%', '6.67 inches\r\n\r\n\r\n', 'OLED', '200MP + 8MP + 2MP', '\r\n20MP', 'Snapdragon 8+ Gen 1 (4 nm)', '5000 mAh', 'Android 12', '12GB', '256GB'),
(15, 'Xiaomi Redmi Note 11', 'Điện thoại Xiaomi Redmi Note 11 khoác trên mình thiết kế vô cùng thanh lịch và sang trọng. Máy có kích thước nhỏ gọn cùng trọng lượng chỉ khá nhẹ giúp người dùng thoải mái cầm nắm cũng như thao tác trên tay.<br> Bên cạnh khung viền nguyên khối được hoàn thiện bằng chất liệu cao cấp thì mặt trước của Xiaomi Redmi Note 11 được trang bị kính cường lực giúp bảo vệ điện thoại an toàn hơn trước những va chạm khi sử dụng.<br> Điện thoại có khả năng chống nước và bụi bẩn vượt trội với chỉ số IP53. Do đó, bạn hoàn toàn yên tâm khi sử dụng dưới trời mưa hoặc không còn lo lắng trong trường hợp chẳng may đánh rơi vào nước.<br> Redmi Note 11 được Xiaomi trang bị tấm nền IPS LCD với độ phân phải FHD+ cùng khả năng hiển thị tới 16 triệu màu sẽ mang đến chất lượng hình ảnh vô cùng sống động. Người dùng có thể thoải mái tận hưởng và trải nghiệm những video giải trí hoặc những game đồ hoạ ấn tượng.<br> Bên cạnh đó, kích thước 6.43 inch cùng thiết kế tràn viền giúp mở rộng không gian hiển thị cho người dùng. Tốc độ quét 90Hz mang đến khả năng phản hồi nhanh chóng, thao tác vuốt chạm mượt mà và tiết kiệm tối đa điện năng.', 'images/sp/15.png', 4, 4400000, 3, 4400000, 'xám', '', '6.43 inches\r\n', 'OLED', 'Camera góc rộng: 50 MP, f/1.8, PDAF\n<br>&ensp;Camera góc siêu rộng: 8 MP\n<br>&ensp;Camera macro: 2MP\n<br>&ensp;Camera chân dung: 2MP', '13 MP, f/2.5', 'Snapdragon 680 8 nhân', '4000 mAh', 'Android 11, MIUI 12.5', '4GB', '128GB'),
(16, 'Xiaomi Redmi 10', 'Về thiết kế, Xiaomi Redmi 10 không có quá nhiều khác biệt so với người tiền nhiệm. Máy vẫn sở hữu một màn hình lớn với khung viền siêu mỏng. Mặt trước được phủ lớp kính cường lực bảo vệ màn hình điện thoại. Mặt sau là cụm camera cùng logo Redmi.<br>  Các góc cạnh trên Xiaomi Redmi 10 được làm bo cong nhẹ nhàng cùng khả năng cầm nắm thoải mái, kể cả khi sử dụng bằng một tay. Mặt lưng với hiệu ứng màu gradian bắt mắt với nhiều phiên bản màu sắc khác nhau cho người dùng lựa chọn.<br> Điện thoại Redmi 10 được trang bị màn hình lên tới 6,5 inch cùng độ phân giải FHD+. Điểm nổi bật là máy được trang bị tần số quét màn hình lên đến 90Hz. Nhờ đó máy mang lại những trải nghiệm hình ảnh chất lượng cùng chuyển động mượt mà.<br> Điện thoại Xiaomi Redmi 10 mang lại khả năng chụp ảnh ổn định với cụm camera độ phân giải cao. Cụ thể, máy được trang bị cụm bốn camera sau với camera chính có độ phân giải lên đến 50MP. Ba ống kính còn lại lần lượt là ống kính góc siêu rộng 8MP, ống kính cận cảnh 2MP và ống kính cảm biến độ sâu 2MP.<br> Ngoài ra, cụm camera này còn được trang bị nhiều tính năng chụp ảnh thông minh. Nhờ đó những bức ảnh chụp được rõ ràng, màu sắc sống động. Camera trước của máy được trang bị ống kính 8MP mang lại những bức ảnh selfie chất lượng.', 'images/sp/16.png', 7, 3790000, 3, 0, 'gold', '30%', '6.58 inches\r\n\r\n', 'IPS LCD', 'Chính 50 MP, f/1.8<br>&ensp;\nPhụ 2 MP', '5 MP, f/2.2', 'MediaTek Dimensity 700 5G 8 nhân', '5000 mAh', 'Android 11', '4GB', '64GB'),
(17, 'Xiaomi Poco F4', 'Xiaomi Poco F4 với thiết kế khác hoàn toàn so với những máy tiền nhiệm trước đây. Với cạnh viền vuông tạo nên sự mạnh mẽ, cá tính, không kém phần sang trọng, tạo sự thú vị khác biệt với nhiều sản phẩm điện thoại cùng phân khúc hiện nay.<br> Camera sắc nét ấn tượng giúp người dùng nắm bắt từng khoảnh khắc nhờ máy ảnh selfie là 20MP, rõ ràng, sinh động.<br> Ngoài ra, sản phẩm với hệ thống có ba camera, gọn gàng, không chiếm diện tích của máy, phía sau còn gồm có cảm biến chính lên đến 64MP. Phóng tầm nhìn với góc rộng là 8MP và kèm theo là camera macro 2MP, tạo cảm giác rõ nét, rộng hơn khi chụp ảnh.<br> Xiaomi Poco F4 được khởi động với giao diện là MIUI 13 dựa trên nền tảng Android 12, ra mắt với phiên bản đổi tên của dòng máy Redmi K40, đây là tin đồn của nhiều người về sản phẩm này.<br> Bên cạnh thiết kế, người dùng quan tâm hơn đó là hiệu năng máy, POCO F4 sẽ khởi động dựa trên hệ điều hành Android 12 với chipset Qualcomm Snapdragon 870 tạo sự mạnh mẽ cho máy. Đây chính là phần người dùng bỏ tiền ra vô cùng xứng đáng. Khi chơi game sẽ giảm độ trễ đi rất nhiều thay vào đó là sự nhanh nhẹn, chiến thắng dễ dàng hơn, giống với sản phẩm tiền nhiệm trước là POCO F3. Ngoài ra, Chipset còn được ghép nối RAM LPDDR5 và cả bộ nhớ trong là UFS 3.1.<br> Xiaomi Poco F4 sẽ có các phiên bản RAM lớn giúp người dùng lưu trữ nhiều thông tin, không lo lắng nhanh hết dung lượng khi đang sử dụng. Với bộ nhớ dung lượng lớn, có hai phiên bản 8GB/128GB và 12GB/256GB.', 'images/sp/17.png', 12, 9900000, 3, 8990000, 'bạc nhám', '', '6.5 inches', 'AMOLED', 'Camera chính: 64MP<br>&ensp;\nCamera góc rộng: 8MP<br>&ensp;\nCamera macro: 2MP', '20MP', 'Qualcomm Snapdragon 870 5G (7 nm)', '4500 mAh', 'Android 12, MIUI 13', '4GB', '128GB'),
(18, 'Vivo V23e', 'Điện thoại Vivo V23e sở hữu thiết kế tương tự như phiên bản tiền nhiệm của chúng. Với vẻ ngoài mỏng, nhẹ cùng phần khung máy cứng cáp mang lại cảm giác sang trọng và cao cấp. Mặt lưng của máy được phủ lớp kính giúp cầm nắm được êm tay đồng thời chống trầy xước và mồ hôi một cách hiệu quả. <br> Máy được trang bị cảm biến vân tay quang học ẩn dưới màn hình. Công nghệ bảo mật thông minh này sẽ giúp bạn có thể mở khóa máy nhanh hơn so với các loại cảm biến truyền thống được thiết kế ở mặt lưng điện thoại thông thường. <br> Vivo V23e được trang bị màn hình kích thước 6.44 inch. Kết hợp với đó là thiết kế tràn viền mang đến khả năng hiển thị rộng hơn. Người dùng thoải mái để trải nghiệm giải trí xem video hay đắm chìm trong những tựa game đồ hoạ hấp dẫn. <br> Ngoài ra, màn hình của máy có độ phân giải Full HD+ . Tấm nền với công nghệ màu sắc cho hình ảnh chân thật và đẹp mắt. Tốc độ làm tươi cao giúp chuyển động ảnh trở nên mượt mà và không hề ngắt quãng.', 'images/sp/18.png', 3, 8490000, 4, 5490000, 'trắng xanh', '70%', '6.44 inches\r\n', 'AMOLED', 'Camera chính: 64MP AF<br>&ensp;\nCamera góc siêu rộng: 8MP, f/2.2<br>&ensp;\nCamera siêu cận: 2MP, f/2.4', '50MP AF, f/2.0', 'MediaTek Helio G96', '4050 mAh', 'Android 11', '8GB', '128GB'),
(19, 'Vivo X80', 'Điện thoại ViVo X80 được trang bị một thiết kế cao cấp với viền màn hình siêu mỏng ở cả bốn cạnh. Các góc trên máy cũng được hoàn thiện bo cong nhẹ nhàng, mang lại sự trang nhã cùng khả năng cần nắm thoải mái.<br> Mặt lưng máy là cụm camera được thiết kế dọc theo thân máy và logo Vivo. Điện thoại ViVo X80 cũng sẽ được ra mắt với nhiều phiên bản màu sắc độc đáo khác nhau cho người dùng lựa chọn.<br> Điện thoại ViVo X80 được trang bị một màn hình lớn với tần số quét lên đến 120Hz. Nhờ đó máy không chỉ mang lại một khả năng hiển thị sắc nét với chi tiết màu sắc sống động mà còn hoạt động mượt mà, kể cả khi chơi game.<br> Về hiệu năng, điện thoại ViVo X80 được trang bị công con chip cao cấp được sản xuất trên tiến trình 4nm đó là Dimensity 9000. Con chip này không chỉ có sức mạnh lớn, tương tự Snapdragon 8 Gen 1 cùng khả năng tiết kiệm điện năng lên đến 25%.<br> Ngoài ra, máy còn được trang bị một dung lượng RAM lớn, mang lại khả năng đa nhiệm ổn định khi người dùng mở cùng lúc nhiều ứng dụng. Máy cũng được trang bị bộ nhớ trong lên đên 256Gb, giúp người dùng thoải mái lưu trữ những dữ liệu quan trọng. Ngoài ra, người dùng cũng có thể mở rộng không gian lưu trữ thông qua thẻ nhớ mở rộng với dung lượng tối đa lên đến 512GB.', 'images/sp/19.png', 56, 16690000, 4, 0, 'bạc ', '20%', '6.75 inches\r\n\r\n', 'AMOLED', '32 MP, f/2.5', '12mp', 'MediaTek Dimensity 9000', '4500 mAh', '\r\nFuntouch OS 12, Android 12', '8GB', '256GB'),
(20, 'Realme 9 Pro', 'Realme 9 Pro vẫn giữ nguyên được thiết kế bên ngoài vô cùng sang trọng và nhỏ gọn. Cũng giống như phiên bản tiền nhiệm trên thiết kế mới này, khung viền của máy được bo tròn mềm mại, cùng với đó là chế tạo bằng vật liệu cao cấp, mang đến cảm giác cầm nắm vô cùng chắc chắn. <br> Mặt lưng của máy cũng được khá đầu tư một cách chỉn chu. Với dài màu gradient ấn tượng cùng logo Realme giúp người dùng trở nên nổi bật hơn khi sở hữu điện thoại trên tay.<br> Realme 9 Pro cũng được khá chú trọng đầu tư vào màn hình khi sở hữu tấm nền Super AMOLED kích thước 6,6 inch, mật độ điểm ảnh 405 ppi và độ phân giải 1080 x 2412 pixel. Với những trang bị như vậy, điện thoại mang đến khả năng hiển thị vô cùng sắc nét, hình ảnh vô cùng sống động để có những trải nghiệm cực hoàn hảo.<br> Trên phiên bản mới này, hãng vẫn giữ nguyên thiết kế tràn viền và có bố cục lỗ đục ở mặt trước. Tỉ lệ khung hình 20:9 giúp không gian hiển thị trở nên rộng hơn. Tốc độ làm mới lên tới 120hz mang đến cảm giác vuốt trở nên mượt mà và nhanh chóng hơn.<br> Realme 9 Pro được cung cấp sức mạnh vượt trội với bộ vi xử lý Snapdragon 695 giúp máy có thể hoạt động ở cường độ cao mà không hề bị nóng cũng như có khả năng tiết kiệm năng lượng một cách tối ưu nhờ tiến trình mới.<br> Bên cạnh đó là CPU và GPU tiên tiến mang đến khả năng tăng cường xử lý hình ảnh và tính toán dữ liệu cấp độ cao. Máy không chỉ không chỉ đảm bảo xử lý một cách mượt mà mà còn mang đến những trải nghiệm game vô cùng ấn tượng.', 'images/sp/20.png', 3, 9900000, 5, 7990000, 'cầu vồng', '80%', '6.6 inches\r\nCông nghệ màn hình\r\n\r\nIPS LCD\r\n\r\n\r\n16MP\r\n\r\n\r\n\r\n', '\r\nIPS LCD\r\n', '\nCamera chính: 64MP, f/1.79 <br>&ensp;\nCamera góc rộng: 8MP, f/2.2 <br>&ensp;\nCamera macro: 2MP, f/2.4\n', '\r\n16mp', 'Qualcomm Snapdragon 695 5G', '5000 mAh', '\r\nAndroid 12, UI 3.0', '12GB', '128GB'),
(21, 'Realme 9 Pro Plus', 'Điện thoại Realme 9 Pro+ sở hữu thiết kế không có quá nhiều khác biệt so với người đàn anh. Máy tiếp tục được trang bị một mặt ưng hiệu ứng gradian độc đáo, giúp màu sắc thay đổi theo từng góc nhìn. Máy cũng sẽ có nhiều phiên bản màu sắc khác nhau cho người dung lượng chọn như xanh, đen, trắng,…<br> Mặt trước là màn hình với khung viền siêu mỏng ở cả bốn cạnh, nhờ đó Realme 9 Pro Plus có không gian hiển thị lớn hơn. Phần viền và góc cạnh cũng được hoàn thiện bo cong nhẹ mang lại khả năng cần nắm chắc chắn.<br> Điện thoại Realme 9 Pro+ được trang bị màn hình lớn, kết hợp với tấm nền Amoled cùng tần số quét cao. Nhờ đó điện thoại mang lại khả năng hiển thị ấn tượng với độ sáng cao, chi tiết và màu sắc sống động. Màn hình này giúp người dùng đắm chìm trong các trải nghiệm giải trí: xem phim, chơi game, lướt web.<br> Điện thoại Realme 9 Pro Plus được trang bị một cấu hình khủng với con chip MediaTek Dimensity 920 5G cùng dung lượng RAM khủng. Cấu hình này giúp điện thoại có thể hoạt động mượt mà từ các tác vụ cơ bản như xem phim, lướt web đế các tác vụ nâng cao như chơi game.', 'images/sp/21.png', 4, 99000, 5, 7990000, 'xanh tím', '75%', '6.4 inches\r\n', 'Super AMOLED', 'Camera chính: 50MP, f/1.8<br>&ensp;\nCamera macro: 2MP, f/2.4<br>&ensp;\nCamera góc rộng: 8MP, 119°, f/2.2', '16MP, f/2.4', '\r\nMediaTek Dimensity 920 5G', '4500 mAh', 'UI 3.0, Android 12', '8GB', '128GB'),
(23, 'Iphone 14 Pro', 'Kích thước màn hình iPhone 14 Pro vẫn là 6.1 inch tuy nhiên phần “tai thỏ” đã được thay thế bằng một đường cắt hình viên thuốc. Apple gọi đây là Dynamic Island - nơi chứa camera Face ID và một đường cắt hình tròn thứ hai cho camera trước.<br> Ngoài ra, iPhone 14 Pro có tính năng màn hình luôn bật hoạt động (Always-on Display) với tiện ích màn hình khóa mới trên iOS 16. Người dùng có thể xem các thông tin như lời nhắc, sự kiện lịch và thời tiết mà không cần bật máy lên để xem. Thậm chí, có một trạng thái ngủ cho hình nền, trạng thái này sẽ làm tối hình nền để sử dụng ít pin hơn.<br> iPhone 14 Pro được trang bị bộ vi xử lý Apple A16 Bionic. Apple đã tập trung vào hiệu quả sử dụng năng lượng, màn hình và camera với con chip mới của mình. CPU sáu nhân bao gồm hai nhân hiệu suất cao sử dụng năng lượng thấp hơn 20% và bốn nhân tiết kiệm pin chỉ sử dụng một phần ba năng lượng so với chip của các đối thủ cạnh tranh.', 'images/sp/23.png', 123, 30990000, 6, 29900000, 'gold', '', '6.1 inches', '\r\nOLED\r\n', 'Camera chính: 48MP <br>&ensp;\nCamera góc siêu rộng: 12MP <br>&ensp;\nCamera tele: 12MP', '', 'Apple A16 Bionic', '4000 mAh', '\r\niOS 16', '6GB', '128GB'),
(24, 'Iphone 14 Promax', 'Chỉ trong ngày đầu mở bán, lượng khách hàng đặt mua iPhone 14 Pro Max tăng đột biến. Trong đó, phiên bản iPhone 14 Pro Max bản 128GB chỉ trong thời gian ngắn nhanh chóng hết hàng, chỉ còn lại các bản 256GB, 512GB và 1TB. Nhiều khách hàng đăng ký sau phải chờ đến đợt giao hàng tiếp theo. Dự kiến tại Việt Nam sẽ xảy ra tình trạng khan hiếm hàng trong tuần đầu trả hàng. Tại CellphoneS, bạn hoàn toàn có thể nhận được ưu đãi cực khủng khi tham gia chương trình thu cũ đổi mới và nhận hoàn tiền từ các đối tác liên kết.<br> Theo nguồn thông tin đáng tin cậy, iPhone 14 Pro Max sở hữu màn hình được chấm điểm lên đến 149. Đây là điểm số cao nhất ở phân khúc sản phẩm cao cấp và là điểm số tốt trên thị trường. Chất lượng hiển thị được đánh giá cao, đặc biệt là khi sử dụng ở ngoài trời với độ sáng tối đa 2000 nit. Đồng thời, nhờ tần số quét cao mà màn hình cũng thích hợp để chơi game, xem phim, hoặc xem video HD.<br> Thêm vào đó, về mặt âm thanh DxOMark còn đánh giá siêu phẩm đến từ nhà Apple thích hợp để nghe nhạc kịch, hoà tấu, kịch nói, xem phim và chơi game. Trong các danh sách sản phẩm có chất lượng âm thanh tốt, iPhone 14 Pro Max xếp hạng nằm ở vị trí thứ 9 với 142 điểm.<br> Những chiếc điện thoại iPhone 14 2022 được gọi tên trong hàng ngũ siêu phẩm smartphone thế hệ mới bởi công nghệ hàng đầu, thiết kế hoàn hảo cùng nhiều đột phá đáng kinh ngạc. Độ hoàn hảo của thế hệ Flagship mới nhất của Apple được tạo thành từ sự thống nhất giữa các yếu tố thiết kế, màn hình, cấu hình, hệ điều hành, camera, pin và các tính năng cải tiến.', 'images/sp/22.png', 23, 34990000, 6, 32990000, 'tím nhám', '80', '6.1 inches\r\n', 'OLED', 'Camera chính: 12MP, ƒ/1.5 <br>&ensp;\nCamera góc siêu rộng: 12MP, ƒ/2.4', '12MP, ƒ/1.9', 'Apple A15 Bionic', '4000 mAh', 'IOS 16', '6GB', '128GB'),
(25, 'Iphone 13 Pro', 'Sự cao cấp toát lên ở mọi chi tiết là điều mà bạn có thể dễ dàng cảm nhận được trên iPhone 13 Pro. Được chế tác từ khung thép không gỉ cứng cáp, bảo vệ màn hình là mặt gốm Ceramic Shield siêu cứng cùng ngôn ngữ thiết kế phẳng hiện đại, iPhone 13 Pro có vẻ đẹp trường tồn theo năm tháng.<br> Điện thoại còn đạt chuẩn chống nước IP68, tránh được mọi nguy cơ từ nước trong cuộc sống thường ngày. Bên cạnh 3 màu sắc quen thuộc là Xám, Vàng, Trắng, iPhone 13 Pro năm nay có thêm màu Xanh Sierra đẹp theo xu hướng thanh lịch và độc đáo.<br> Với việc bổ sung thêm tùy chọn Alpine Green vào các phiên bản màu sắc, iPhone 13 Pro màu xanh lá giờ đây cho thấy vẻ đẹp khác biệt, phô diễn nét đẹp trầm mặc và diện mạo thực sự cao cấp. Apple đã nghiên cứu kỹ lưỡng để chọn ra sắc màu thành phẩm sau cùng cho chiếc điện thoại nhằm truyền tải rõ nét tinh thần sang trọng vốn có của sản phẩm.<br> Hệ thống camera Pro với 3 camera được nâng cấp mạnh mẽ, với phần cứng ống kính chất lượng hơn, phần mềm thông minh hơn và con chip xử lý hình ảnh tốc độ nhanh hơn.<br> iPhone 13 Pro sở hữu camera chính khẩu độ f/1.5, điểm ảnh 1.9 um, lớn nhất trong thế giới smartphone cho khả năng thu sáng vượt trội; camera góc siêu rộng khẩu độ f/1.8, cảm biến nhanh hơn, lấy nét từng điểm ảnh và camera tele có khả năng zoom quang học 3x. Hãy cùng đón chờ những điều kỳ diệu đang chờ đón bạn ở camera iPhone 13 Pro.', 'images/sp/24.png', 23, 30490000, 6, 28490000, 'đen', '', '6.1 inches\r\n', 'OLED', 'Camera góc rộng: 12MP, ƒ/1.5 <br>&ensp;\nCamera góc siêu rộng: 12MP, ƒ/1.8 <br>&ensp;\nCamera tele : 12MP, /2.8', '12MP, ƒ/2.2', 'Apple A15', '3095 mAh', 'IOS 16', '6GB', '256GB'),
(26, 'Iphone 12', 'iPhone 12 đã có sự đột phá về thiết kế với kiểu dáng mới vuông vắn, mạnh mẽ và sang trọng hơn. Không chỉ vậy, iPhone 12 mỏng hơn 11%, nhỏ gọn hơn 15% và nhẹ hơn 16% so với thế hệ trước iPhone 11.<br> Bất ngờ hơn nữa là dù gọn hơn đáng kể nhưng iPhone 12 vẫn có màn hình 6,1 inch như iPhone 11 mà không hề bị cắt giảm. Phần viền màn hình thu hẹp tối đa cùng sự nỗ lực trong thiết kế đã tạo nên điều kỳ diệu ở iPhone 12.<br> iPhone 12 thể hiện sự cao cấp từ những vật liệu chế tác, bao gồm khung nhôm cứng cáp và 2 mặt kính tuyệt đẹp. Hơn thế nữa, mặt kính của iPhone 12 được bảo vệ bởi một lớp gốm (Ceramic Shield), giúp cứng hơn mặt kính của bất kỳ chiếc điện thoại nào khác. iPhone của bạn sẽ bền vững hơn tới 4 lần, khó xước hơn, mang tới cảm giác yên tâm khi sử dụng.<br> iPhone 12 tiếp tục có khả năng chống nước và chống bụi chuẩn IP68, nhưng giờ đây bạn đã có thể ngâm nước ở độ sâu tới 6m trong vòng 30 phút thay vì 1,5m như trước kia. Tha hồ sử dụng mà không còn bất cứ nỗi lo nào về hư hại từ nước.', 'images/sp/25.png', 3, 19990000, 6, 15490000, 'bạc', '95%', '4.7 inches\r\n\r\n', 'LED-backlit IPS LCD, HD', '7 MP', '\r\n12 MP', 'Apple A13 Bionic 6 nhân', '1750 mAh ', 'IOS 15 ', '3GB', '64GB'),
(27, 'Iphone SE', '', 'images/sp/26.png', 9, 12990000, 6, 11900000, '', '', '', '', '', '', '', '', '', '', '');


--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`ma_banner`);

--
-- Chỉ mục cho bảng `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`blog_id`);

--
-- Chỉ mục cho bảng `danhmuc`
--
ALTER TABLE `danhmuc`
  ADD PRIMARY KEY (`danhmuc_id`);

--
-- Chỉ mục cho bảng `donhang`
--
ALTER TABLE `donhang`
  ADD PRIMARY KEY (`donhang_id`),
  ADD KEY `fk_foreign_dh1` (`khach_id`),
  ADD KEY `fk_foreign_d` (`sanpham_id`);

--
-- Chỉ mục cho bảng `giaodich`
--
ALTER TABLE `giaodich`
  ADD PRIMARY KEY (`giaodich_id`);

--
-- Chỉ mục cho bảng `khachhang`
--
ALTER TABLE `khachhang`
  ADD PRIMARY KEY (`khach_id`);

--
-- Chỉ mục cho bảng `lienhe`
--
ALTER TABLE `lienhe`
  ADD PRIMARY KEY (`lien_he_id`);

--
-- Chỉ mục cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`sanpham_id`),
  ADD KEY `fk_foreign_sp` (`danhmuc_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `banner`
--
ALTER TABLE `banner`
  MODIFY `ma_banner` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `blog`
--
ALTER TABLE `blog`
  MODIFY `blog_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `danhmuc`
--
ALTER TABLE `danhmuc`
  MODIFY `danhmuc_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `donhang`
--
ALTER TABLE `donhang`
  MODIFY `donhang_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `giaodich`
--
ALTER TABLE `giaodich`
  MODIFY `giaodich_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `khachhang`
--
ALTER TABLE `khachhang`
  MODIFY `khach_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `lienhe`
--
ALTER TABLE `lienhe`
  MODIFY `lien_he_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `sanpham_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `donhang`
--
ALTER TABLE `donhang`
  ADD CONSTRAINT `fk_foreign_d` FOREIGN KEY (`sanpham_id`) REFERENCES `sanpham` (`sanpham_id`),
  ADD CONSTRAINT `fk_foreign_dh` FOREIGN KEY (`sanpham_id`) REFERENCES `sanpham` (`sanpham_id`),
  ADD CONSTRAINT `fk_foreign_dh1` FOREIGN KEY (`khach_id`) REFERENCES `khachhang` (`khach_id`);

--
-- Các ràng buộc cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD CONSTRAINT `fk_foreign_sp` FOREIGN KEY (`danhmuc_id`) REFERENCES `danhmuc` (`danhmuc_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
