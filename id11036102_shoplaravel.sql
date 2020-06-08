-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost:3306
-- Thời gian đã tạo: Th6 01, 2020 lúc 01:11 PM
-- Phiên bản máy phục vụ: 10.3.16-MariaDB
-- Phiên bản PHP: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `id11036102_shoplaravel`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category_product`
--

CREATE TABLE `category_product` (
  `category_id` int(10) UNSIGNED NOT NULL,
  `category_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_desc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `category_product`
--

INSERT INTO `category_product` (`category_id`, `category_name`, `category_desc`, `category_status`, `created_at`, `updated_at`) VALUES
(1, 'Đồng hồ thời trang', 'Đồng hồ thời trang', 0, NULL, NULL),
(2, 'Đồng hồ thông minh', 'Đồng hồ thông minh', 0, NULL, NULL),
(3, 'Định vị trẻ em', 'Định vị trẻ em', 0, NULL, NULL),
(4, 'Dây đồng hồ', 'Dây đồng hồ', 0, NULL, NULL),
(5, 'Pin đồng hồ', 'Pin đồng hồ', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(7, '2014_10_12_000000_create_users_table', 1),
(8, '2014_10_12_100000_create_password_resets_table', 1),
(9, '2019_10_13_051047_create_tbl_admin_table', 1),
(10, '2019_10_13_113824_create_category_product_table', 1),
(11, '2019_10_24_025414_create_tbl_brand', 1),
(12, '2019_10_24_084356_create_tbl_product', 1),
(13, '2019_11_10_052835_create-table-address', 2),
(14, '2019_11_10_053521_create-table-district', 3),
(15, '2019_11_10_120143_create-table-checkout', 4),
(16, '2019_11_10_121024_create-table-oder', 5);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_address`
--

CREATE TABLE `tbl_address` (
  `address_id` int(10) UNSIGNED NOT NULL,
  `address_city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address_district` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address_desc` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_address`
--

INSERT INTO `tbl_address` (`address_id`, `address_city`, `address_district`, `address_desc`) VALUES
(1, 'Hồ Chí Minh', '1', '1'),
(2, 'Hà Nội', '2', '1');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `admin_id` int(10) UNSIGNED NOT NULL,
  `admin_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_password` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_phone` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_admin`
--

INSERT INTO `tbl_admin` (`admin_id`, `admin_email`, `admin_password`, `admin_name`, `admin_phone`, `created_at`, `updated_at`) VALUES
(1, 'admin@gmail.com', '21232f297a57a5a743894a0e4a801fc3', 'Hồ Quốc Duy', '0123456789', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_brand`
--

CREATE TABLE `tbl_brand` (
  `brand_id` int(10) UNSIGNED NOT NULL,
  `brand_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand_desc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand_status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_brand`
--

INSERT INTO `tbl_brand` (`brand_id`, `brand_name`, `brand_desc`, `brand_status`, `created_at`, `updated_at`) VALUES
(21, 'KORLEX', 'KORLEX', 0, NULL, NULL),
(20, 'FOSSIL', 'FOSSIL', 0, NULL, NULL),
(19, 'SRWATCH', 'SRWATCH', 0, NULL, NULL),
(18, 'CASIO', 'CASIO', 0, NULL, NULL),
(17, 'Citizen', 'Citizen', 0, NULL, NULL),
(16, 'Zeblaze', 'Zeblaze', 0, NULL, NULL),
(15, 'Huiwei', 'Huiwei', 0, NULL, NULL),
(14, 'Xiaomi', 'Xiaomi', 0, NULL, NULL),
(13, 'Samsung', 'Samsung', 0, NULL, NULL),
(12, 'Apple', 'Apple', 0, NULL, NULL),
(22, 'ORIENT', 'ORIENT', 0, NULL, NULL),
(23, 'Masstel', 'Masstel', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_checkout`
--

CREATE TABLE `tbl_checkout` (
  `checkout_id` int(10) UNSIGNED NOT NULL,
  `id_oder` int(11) NOT NULL,
  `checkout_address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `checkout_desc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `checkout_total` int(11) NOT NULL,
  `checkout_id_oder` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_checkout`
--

INSERT INTO `tbl_checkout` (`checkout_id`, `id_oder`, `checkout_address`, `checkout_desc`, `checkout_total`, `checkout_id_oder`, `email`) VALUES
(26, 0, 'Hồ Chí Minh / quận 2 / 180 cao lỗ', '', 2961000, '25loyqpisv', 'hoquocduy198@gmail.com');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_district`
--

CREATE TABLE `tbl_district` (
  `district_id` int(10) UNSIGNED NOT NULL,
  `district_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `district_city` int(11) NOT NULL,
  `district_desc` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_district`
--

INSERT INTO `tbl_district` (`district_id`, `district_name`, `district_city`, `district_desc`) VALUES
(1, 'quận 1', 1, 2),
(2, 'quận 2', 1, 2),
(3, 'quận 3', 1, 2),
(4, 'quận 4', 1, 2),
(5, 'Ba đình', 2, 2),
(6, 'Đống Đa', 2, 2),
(7, 'Cầu Giấy', 2, 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_oder`
--

CREATE TABLE `tbl_oder` (
  `oder_id` int(10) UNSIGNED NOT NULL,
  `checkout_id` int(11) NOT NULL,
  `oder_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `oder_price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_qty` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_oder`
--

INSERT INTO `tbl_oder` (`oder_id`, `checkout_id`, `oder_name`, `oder_price`, `order_qty`) VALUES
(27, 26, 'Đồng hồ Nam Casio MTP-X300L-7EVDF', '2178000', 1),
(28, 26, 'Đồng hồ Nữ Casio LA670WA-7SDF', '783000', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_product`
--

CREATE TABLE `tbl_product` (
  `product_id` int(10) UNSIGNED NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_desc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_status` int(11) NOT NULL,
  `product_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int(11) NOT NULL,
  `brand_id` int(11) NOT NULL,
  `product_gia` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_product`
--

INSERT INTO `tbl_product` (`product_id`, `product_name`, `product_desc`, `product_status`, `product_image`, `category_id`, `brand_id`, `product_gia`, `created_at`, `updated_at`) VALUES
(11, 'Đồng hồ Nữ Casio LA670WA-7SDF', 'Tinh hoa của sự sáng tạo\r\nThương hiệu đồng hồ nổi tiếng đến từ Nhật Bản không ngừng cải tiến và cho ra mắt những dòng sản phẩm chất lượng phù hợp với nhiều đối tượng khách hàng. Những dòng sản phẩm nổi tiếng của Casio là: G-Shock với thiết kế mạnh mẽ cùng độ bền cao, Edifice thiết kế hiện đại cùng nhiều tính năng vượt trội, Sheen với thiết kế cổ điển và sang trọng,…', 0, 'Casio-152.jpg', 1, 18, 783000, NULL, NULL),
(12, 'Đồng hồ Nam Casio MTP-X300L-7EVDF', 'Thiết kế tinh tế trong từng chi tiết, là sự lựa chọn đáng tin cậy dành cho các quý ông lịch lãm\r\n\r\nĐồng hồ nam Casio MTP-X300L-7EVDF thuộc hãng Casio đến từ Nhật Bản, sẽ khiến bạn hài lòng về chất lượng mà chiếc đồng hồ mang lại.\r\n\r\nHạn chế hư hỏng khi va đập ở mức độ vừa phải\r\n\r\n- Mặt kính trong suốt với độ cứng cao, có thể đánh bóng lại như mới khi bị trầy xước nhẹ.\r\n\r\n- Đồng hồ Casio có khung viền chắc chắn, chịu lực tốt, chống oxi hóa và ăn mòn hiệu quả.\r\n\r\nKhả năng chống nước 5 ATM, an toàn khi tắm, rửa tay và đi mưa, không đeo đồng hồ nam khi lặn, bơi\r\n\r\nXem giờ dễ dàng và thuận tiện hơn với định dạng giờ ở dạng 24 giờ trên đồng hồ Casio nam\r\n\r\nNắm bắt nhiều thông tin thời gian hơn với tiện ích lịch thứ và lịch ngày \r\n\r\nDây đồng hồ có trọng lượng nhẹ, êm ái và mềm mại, không gây khó chịu khi đeo trong thời gian dài', 0, 'Casio-217.jpg', 1, 18, 2178000, NULL, NULL),
(13, 'Apple Watch S5 40mm viền nhôm dây cao su', 'Đặc điểm nổi bật của Apple Watch S5 40mm viền nhôm dây cao su\r\n\r\nApple Watch S5 hồng chắc chắn là một trong những chiếc đồng hồ thông minh hiện đại đáng sở hữu nhất hiện nay. Máy được tích hợp màn hình Always-on luôn bật, đồng bộ nhạc với Apple Music, tính năng la bàn,...\r\nMàn hình OLED luôn hiển thị\r\nMàn hình hiển thị sắc nét, màu sắc chân thực ngay cả dưới trời nắng gắt. Tính năng luôn bật sáng màn hình xem giờ tiện lợi ngay cả khi đang lái xe. Bên cạnh đó, màn hình sẽ tự động giảm độ sáng khi không cần thiết để tăng tối đa thời lượng pin.', 0, 'apple-166.jpg', 2, 12, 11490000, NULL, NULL),
(14, 'Đồng hồ thông minh Samsung Galaxy Watch Active R500', 'Với thiết kế tối giản nhưng không kém phần thanh lịch, đồng hồ thông minh mới nhất của Samsung - Galaxy Watch Active, sẽ mang đến cho bạn trải nghiệm công nghệ và tính năng theo dõi sức khỏe tuyệt vời.', 0, 'samsung-19.jpg', 2, 13, 5490000, NULL, NULL),
(15, 'Masstel Super Hero', 'Đồng hồ thông minh Masstel Super Hero Xanh Dương có thiết kế năng động và màu sắc tươi tắn, phù hợp với hầu hết các trẻ em. Bên cạnh đó, chất liệu silicone không những an toàn đối với trẻ em mà còn mang đến cảm giác đeo thoải mái, cho các bé cả ngày thỏa thích học và chơi.', 0, 'masstel-183.jpg', 3, 23, 1490000, NULL, NULL),
(16, 'Dây đeo Apple Watch 44mm Apple Sport Loop MWU12 Khaki', 'Dây đeo Apple Watch 44mm Apple Sport Loop MWU12 Khaki thiết kế đơn giản với phong cách thể thao cá tính năng động. Phù hợp với các bạn trẻ khi sử dụng Apple Watch với mặt 42mm và 44mm...', 0, 'day-196.jpg', 4, 12, 1490000, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Hồ Quốc Duy', 'hoquocduy@gmail.com', '123456', NULL, NULL, NULL),
(2, 'abc', 'abc@gmail.com', '$2y$10$bCMk2R3sM81KkmjWygRqP.SEI9dJCllRk4aAsGR9f4FgNKAJEwD0q', 'LuARqSxtdwrCu6ZNlG8giuq6I160QJjBuWhmMTZUyPdFB7R9KKCveWl1SuIO', '2019-12-18 18:14:17', '2019-12-18 18:14:17'),
(3, 'ssaa', 'abcd@gmail.com', '$2y$10$TEgQ66hklof5sf9/EPKhnubrR.uS0rCXZ5ByLKjGgEbW8Y.TQ1Ktu', NULL, '2019-12-18 18:20:00', '2019-12-18 18:20:00'),
(4, 'hoquocduy', 'hoquocduy198@gmail.com', '$2y$10$OpNCgnvGiOicxiSM8qRpguo0fI6e1JYKL20UypLsfmPLuv0xMqv72', NULL, '2020-06-01 03:23:53', '2020-06-01 03:23:53');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `category_product`
--
ALTER TABLE `category_product`
  ADD PRIMARY KEY (`category_id`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_address`
--
ALTER TABLE `tbl_address`
  ADD PRIMARY KEY (`address_id`);

--
-- Chỉ mục cho bảng `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Chỉ mục cho bảng `tbl_brand`
--
ALTER TABLE `tbl_brand`
  ADD PRIMARY KEY (`brand_id`);

--
-- Chỉ mục cho bảng `tbl_checkout`
--
ALTER TABLE `tbl_checkout`
  ADD PRIMARY KEY (`checkout_id`);

--
-- Chỉ mục cho bảng `tbl_district`
--
ALTER TABLE `tbl_district`
  ADD PRIMARY KEY (`district_id`);

--
-- Chỉ mục cho bảng `tbl_oder`
--
ALTER TABLE `tbl_oder`
  ADD PRIMARY KEY (`oder_id`);

--
-- Chỉ mục cho bảng `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`product_id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `category_product`
--
ALTER TABLE `category_product`
  MODIFY `category_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT cho bảng `tbl_address`
--
ALTER TABLE `tbl_address`
  MODIFY `address_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `admin_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `tbl_brand`
--
ALTER TABLE `tbl_brand`
  MODIFY `brand_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT cho bảng `tbl_checkout`
--
ALTER TABLE `tbl_checkout`
  MODIFY `checkout_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT cho bảng `tbl_district`
--
ALTER TABLE `tbl_district`
  MODIFY `district_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `tbl_oder`
--
ALTER TABLE `tbl_oder`
  MODIFY `oder_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT cho bảng `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `product_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
