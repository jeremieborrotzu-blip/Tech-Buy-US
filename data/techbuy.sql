-- phpMyAdmin SQL Dump
-- version 4.9.11
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generated: Fri. Apr 14, 2023 at 11:42
-- Server version: 10.6.12-MariaDB
-- PHP version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `diay0794_techbuy`
--

-- --------------------------------------------------------

--
-- Table structure for `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`) VALUES
(1, 'Computers'),
(2, 'Screens'),
(3, 'Accessories');

-- --------------------------------------------------------

--
-- Table structure for `doctrine_migration_versions`
--

CREATE TABLE `doctrine_migration_versions` (
  `version` varchar(191) NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20230331105228', '2023-03-31 12:52:31', 88),
('DoctrineMigrations\\Version20230407231013', '2023-04-08 01:10:23', 67);

-- --------------------------------------------------------

--
-- Table structure for `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `reference` varchar(255) NOT NULL,
  `price` double NOT NULL,
  `description` longtext NOT NULL,
  `image` varchar(255) NOT NULL,
  `short_description` varchar(255) NOT NULL,
  `best` tinyint(1) NOT NULL,
  `suggested` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `category_id`, `name`, `reference`, `price`, `description`, `image`, `short_description`, `best`, `suggested`) VALUES
(1, 2, '24\" Screen', '3409FI304', 400, '    <p><strong>Tech Specs</strong></p>\r\n    <p>This computer monitor features revolutionary \"ultra-bright pixel\" technology offering 16K resolution for unmatched image quality. Its ultra-fast wireless connection enables instant data transmission.</p>\r\n    <p><strong>12-month commercial warranty</strong></p>\r\n    <p>In case of failure the product is repaired free of charge. If repair is not possible, the product is exchanged. 30 days to test the product. You have 30 days after receiving the product to use it. If it does not meet your expectations, we will refund you immediately.</p>\r\n', 'assets/products/p1.png', 'LCD, FHD U24GERH', 1, 1),
(2, 2, '21\" Screen', '9384OE399', 250, '    <p><strong>Tech Specs</strong></p>\r\n    <p>The screen settings are fully automated thanks to integrated artificial intelligence, offering an unprecedented user experience. Its titanium chassis guarantees unmatched durability and stability.</p>\r\n    <p><strong>12-month commercial warranty</strong></p>\r\n    <p>In case of failure the product is repaired free of charge. If repair is not possible, the product is exchanged. 30 days to test the product. You have 30 days after receiving the product to use it. If it does not meet your expectations, we will refund you immediately.</p>\r\n', 'assets/products/p2.png', 'FHD Dell P2219H', 1, 0),
(3, 3, 'FSTYLER Mouse', '5839VF102', 72, '    <p><strong>Tech Specs</strong></p>\r\n    <p>This computer mouse is equipped with a high-precision optical sensor that enables smooth and accurate movement tracking. The programmable buttons offer maximum customization to meet your productivity needs.</p>\r\n    <p><strong>12-month commercial warranty</strong></p>\r\n    <p>In case of failure the product is repaired free of charge. If repair is not possible, the product is exchanged. 30 days to test the product. You have 30 days after receiving the product to use it. If it does not meet your expectations, we will refund you immediately.</p>\r\n', 'assets/products/p3.png', 'Pro, Wireless', 1, 0),
(4, 3, 'Focus 21 Keyboard', '8002CX930', 155, '    <p><strong>Tech Specs</strong></p>\r\n    <p>This computer keyboard features pneumatic key technology offering a tactile and immersive typing experience. It is equipped with programmable keys for maximum customization of your keyboard shortcuts. The keyboard is compatible with a wide range of devices thanks to its Bluetooth or USB connectivity. Its clean and elegant design adapts to any type of desk and its customizable LED backlighting adds a touch of style to your workspace.</p>\r\n    <p><strong>12-month commercial warranty</strong></p>\r\n    <p>In case of failure the product is repaired free of charge. If repair is not possible, the product is exchanged. 30 days to test the product. You have 30 days after receiving the product to use it. If it does not meet your expectations, we will refund you immediately.</p>\r\n', 'assets/products/p4.png', 'Wireless, Bluetooth', 1, 0),
(5, 1, 'Macbook Pro 13"', '2239UE903', 1400, '    <p><strong>Tech Specs</strong></p>\n    <p>The Apple MacBook Pro 16 2021 is a laptop announced on October 18, 2021. A major iteration of the MacBook Pro, it notably introduces a new Apple M1 Pro SoC (M1 Max optional) with 10 CPU cores and 16 to 32 GPU cores, supported by 16 to 64 GB of RAM.</p>\n    <p><strong>12-month commercial warranty</strong></p>\n    <p>In case of failure the product is repaired free of charge. If repair is not possible, the product is exchanged. 30 days to test the product. You have 30 days after receiving the product to use it. If it does not meet your expectations, we will refund you immediately.</p>\n', 'assets/products/p5.png', '256GB, 16GB RAM', 0, 1),
(6, 3, 'Magic Mouse', '2356PL091', 70, '    <p><strong>Tech Specs</strong></p>\r\n    <p>The mouse is compatible with a wide range of devices thanks to its wireless Bluetooth or USB connectivity. It also features an integrated rechargeable battery for extended wireless use. The ergonomic design ensures a comfortable grip, even during extended work sessions.</p>\r\n    <p><strong>12-month commercial warranty</strong></p>\r\n    <p>In case of failure the product is repaired free of charge. If repair is not possible, the product is exchanged. 30 days to test the product. You have 30 days after receiving the product to use it. If it does not meet your expectations, we will refund you immediately.</p>\r\n', 'assets/products/p6.png', 'Wireless, White', 0, 1),
(7, 1, 'HP 11" Notebook', '7729DI092', 572, '    <p><strong>Tech Specs</strong></p>\r\n    <p>This ultra-thin laptop is equipped with a latest-generation processor for peak performance and maximum energy efficiency. Its Full HD screen offers exceptional image quality for an immersive visual experience. The laptop features a backlit keyboard for comfortable use in dark environments and a precise touchpad for easy navigation. It also has fast Bluetooth and Wi-Fi connectivity for easy access to the internet and your wireless peripherals. Its elegant and clean design makes it the perfect work companion for all mobile professionals.</p>\r\n    <p><strong>12-month commercial warranty</strong></p>\r\n    <p>In case of failure the product is repaired free of charge. If repair is not possible, the product is exchanged. 30 days to test the product. You have 30 days after receiving the product to use it. If it does not meet your expectations, we will refund you immediately.</p>\r\n', 'assets/products/p7.png', '128GB, 8GB RAM', 0, 1),
(8, 3, 'Apple Keyboard', '8293DU737', 75, '    <p><strong>Tech Specs</strong></p>\r\n    <p>This computer keyboard is equipped with an advanced voice recognition system that allows you to dictate your text directly on the keyboard. It also features pressure sensors for a more ergonomic and comfortable typing experience. The keyboard is compatible with a wide range of devices thanks to its Bluetooth or USB connectivity. Its compact and lightweight design makes it easy to transport and use on the go.</p>\r\n    <p><strong>12-month commercial warranty</strong></p>\r\n    <p>In case of failure the product is repaired free of charge. If repair is not possible, the product is exchanged. 30 days to test the product. You have 30 days after receiving the product to use it. If it does not meet your expectations, we will refund you immediately.</p>\r\n', 'assets/products/p8.png', 'Wireless, Bluetooth', 0, 1),
(9, 3, 'DRTZ Gamer Keyboard', '9114BZ029', 400, '    <p><strong>Tech Specs</strong></p>\r\n    <p>This computer keyboard is equipped with fingerprint recognition technology for enhanced security of your sensitive data. It also features customizable backlighting for a more enjoyable typing experience in all lighting conditions. The keyboard is compatible with a wide range of devices thanks to its wireless Bluetooth or USB connectivity. Its ergonomic design ensures a comfortable and healthy typing position for hands and wrists.</p>\r\n    <p><strong>12-month commercial warranty</strong></p>\r\n    <p>In case of failure the product is repaired free of charge. If repair is not possible, the product is exchanged. 30 days to test the product. You have 30 days after receiving the product to use it. If it does not meet your expectations, we will refund you immediately.</p>\r\n', 'assets/products/p9.png', 'Wired, Backlit', 0, 1),
(10, 2, '21\" LCD Screen', '7275YC761', 230, '    <p><strong>Tech Specs</strong></p><p>This computer screen features advanced LED lighting that offers exceptional brightness for dazzling image quality. Its ultra-resistant tempered glass and brushed aluminum frame give it an elegant and modern look.</p>\r\n    <p><strong>12-month commercial warranty</strong></p>\r\n    <p>In case of failure the product is repaired free of charge. If repair is not possible, the product is exchanged. 30 days to test the product. You have 30 days after receiving the product to use it. If it does not meet your expectations, we will refund you immediately.</p>\r\n', 'assets/products/p10.png', 'FHD Dell P2219H', 0, 1),
(11, 3, 'G Click Mouse', '8203WS839', 155, '    <p><strong>Tech Specs</strong></p>\r\n    <p>This computer mouse is equipped with advanced gesture recognition technology, enabling intuitive interaction with your computer. Thanks to its biometric sensors, the mouse can track your heart rate to automatically adapt to your stress level.</p>\r\n    <p><strong>12-month commercial warranty</strong></p>\r\n    <p>In case of failure the product is repaired free of charge. If repair is not possible, the product is exchanged. 30 days to test the product. You have 30 days after receiving the product to use it. If it does not meet your expectations, we will refund you immediately.</p>\r\n', 'assets/products/p11.png', 'Wireless & Wired', 0, 1),
(12, 2, '50\" OLED Screen', '4934OL020', 800, '    <p><strong>Tech Specs</strong></p><p>With HDMI and VGA connectivity, this screen is compatible with a wide range of devices. The screen settings are easily accessible via an on-screen menu for easy customization of brightness, contrast and color temperature.</p>\r\n    <p><strong>12-month commercial warranty</strong></p>\r\n    <p>In case of failure the product is repaired free of charge. If repair is not possible, the product is exchanged. 30 days to test the product. You have 30 days after receiving the product to use it. If it does not meet your expectations, we will refund you immediately.</p>\r\n', 'assets/products/p12.png', 'OLED Screen LG 125cm', 0, 0),
(13, 3, 'Pro-Gamer Mouse', '9834SO811', 34, '    <p><strong>Tech Specs</strong></p><p>The programmable buttons offer maximum customization to meet your specific needs. The mouse is compatible with Android and iOS devices, offering a unified browsing experience for all your devices.</p>\r\n    <p><strong>12-month commercial warranty</strong></p>\r\n    <p>In case of failure the product is repaired free of charge. If repair is not possible, the product is exchanged. 30 days to test the product. You have 30 days after receiving the product to use it. If it does not meet your expectations, we will refund you immediately.</p>\r\n', 'assets/products/p13.png', 'Designed for gamers', 0, 0),
(14, 3, 'FastType Keyboard', '0398FT441', 80, '    <p><strong>Tech Specs</strong></p><p>This computer keyboard features silent key technology for a more pleasant and discreet typing experience. It also includes a removable numeric keypad for more flexible use and a more ergonomic typing position. The keyboard is compatible with a wide range of devices thanks to its wireless Bluetooth or USB connectivity. Its compact and elegant design fits easily into any type of desk and its padded wrist rest ensures optimal comfort.</p>\r\n    <p><strong>12-month commercial warranty</strong></p>\r\n    <p>In case of failure the product is repaired free of charge. If repair is not possible, the product is exchanged. 30 days to test the product. You have 30 days after receiving the product to use it. If it does not meet your expectations, we will refund you immediately.</p>\r\n', 'assets/products/p14.png', 'Built for fast typing', 0, 0),
(15, 1, 'Acer Aspire 5', '3948AA183', 499, '    <p><strong>Tech Specs</strong></p><p>This desktop computer is designed to meet all your professional needs. It is equipped with a fast processor for reliable performance and large storage space to store all your files and documents. The computer also features a high-resolution screen for exceptional image quality and a wireless keyboard and mouse for easy and comfortable use. It has fast Bluetooth and Wi-Fi connectivity for easy access to the internet and your wireless peripherals. Its elegant and professional design is perfectly suited to any office environment.</p>     <p><strong>12-month commercial warranty</strong></p>     <p>In case of failure the product is repaired free of charge. If repair is not possible, the product is exchanged. 30 days to test the product. You have 30 days after receiving the product to use it. If it does not meet your expectations, we will refund you immediately.</p>', 'assets/products/p15.png', 'Perfect for office work', 0, 0),
(16, 1, 'MSI GF63', '2203GF063', 1650, '    <p><strong>Tech Specs</strong></p><p>This high-performance gaming computer is equipped with a cutting-edge processor and powerful graphics card to deliver the ultimate gaming experience. Its high-resolution screen ensures exceptional image quality for total immersion. The computer features an advanced cooling system to maintain optimal temperatures during intense gaming sessions. It also includes a programmable backlit keyboard for maximum customization of your gaming setup. Its fast Bluetooth and Wi-Fi connectivity allows easy access to the internet and your wireless peripherals. Its futuristic and aggressive design makes it the perfect gaming computer for passionate gamers.</p>     <p><strong>12-month commercial warranty</strong></p>     <p>In case of failure the product is repaired free of charge. If repair is not possible, the product is exchanged. 30 days to test the product. You have 30 days after receiving the product to use it. If it does not meet your expectations, we will refund you immediately.</p>', 'assets/products/p16.png', 'Designed for gamers', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `email` varchar(180) NOT NULL,
  `roles` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`roles`)),
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctrine_migration_versions`
--
ALTER TABLE `doctrine_migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_D34A04AD12469DE2` (`category_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_8D93D649E7927C74` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `FK_D34A04AD12469DE2` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
