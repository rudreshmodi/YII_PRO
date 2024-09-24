-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Sep 24, 2024 at 09:57 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rudresh`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(6) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `status` enum('Active','InActive') NOT NULL DEFAULT 'InActive',
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted_at` timestamp(6) NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `image`, `status`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'First', 'uploads/images.jpeg', 'Active', '2024-08-14 13:18:17', '2024-08-14 13:15:30', NULL),
(2, 'Second', 'uploads/xceltec-logo.jpeg', 'InActive', '2024-08-14 18:37:58', '2024-08-14 13:16:54', NULL),
(3, 'Third', 'uploads/images.jpg', 'Active', '2024-08-14 18:51:08', '2024-08-14 13:23:32', NULL),
(4, 'Home Appliances', 'home_appliances.jpg', 'Active', '2024-08-14 10:15:00', '2024-08-14 04:45:00', NULL),
(5, 'Toys', 'uploads/logo_mini1 (1).png', 'Active', '2024-08-14 10:20:00', '2024-09-21 06:34:06', NULL),
(6, 'Furniture', 'furniture.jpg', 'InActive', '2024-08-14 10:25:00', '2024-08-14 04:55:00', NULL),
(7, 'Sports', 'sports.jpg', 'Active', '2024-08-14 10:30:00', '2024-08-14 05:00:00', NULL),
(8, 'Health & Beauty', 'health_beauty.jpg', 'Active', '2024-08-14 10:35:00', '2024-08-14 05:05:00', NULL),
(9, 'Garden', 'garden.jpg', 'InActive', '2024-08-14 10:40:00', '2024-08-14 05:10:00', NULL),
(10, 'Automotive', 'automotive.jpg', 'Active', '2024-08-14 10:45:00', '2024-08-14 05:15:00', NULL),
(11, 'Music', 'music.jpg', 'Active', '2024-08-14 10:50:00', '2024-08-14 05:20:00', NULL),
(12, 'Jewelry', 'jewelry.jpg', 'InActive', '2024-08-14 10:55:00', '2024-08-14 05:25:00', NULL),
(13, 'Office Supplies', 'office_supplies.jpg', 'Active', '2024-08-14 11:00:00', '2024-08-14 05:30:00', NULL),
(14, 'Pet Supplies', 'pet_supplies.jpg', 'Active', '2024-08-14 11:05:00', '2024-08-14 05:35:00', NULL),
(15, 'Books & Magazines', 'books_magazines.jpg', 'InActive', '2024-08-14 11:10:00', '2024-08-14 05:40:00', NULL),
(16, 'sadasd', '', 'InActive', '2024-08-20 18:55:05', '2024-08-20 13:25:05', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `state_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contact_form_entries`
--

CREATE TABLE `contact_form_entries` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `contact_form_entries`
--

INSERT INTO `contact_form_entries` (`id`, `user_id`, `name`, `email`, `subject`, `body`, `created_at`) VALUES
(1, NULL, 'Rudresh Modi', 'admin@gmail.com', 'heelooo', '<p><a href=\"www.google.com\">www.google.com</a> <strong>Google</strong></p>', '2024-07-22 10:42:31'),
(2, 1, 'dfsrasearar', 'admin@gmail.com', 'heelooo', '<p><strong>sfdfftsgsg &nbsp; &nbsp; &nbsp;</strong><i>sgstgsg <strong>dgf</strong></i></p>', '2024-07-30 05:44:00'),
(3, 1, 'Rudresh Modi', 'admin1@gmail.com', 'heelooo 435456 xgxfcgdsresfdd xdzfgwsg xzfd stszrs wrs ', '<p><strong>fgdszrsdrvg</strong></p><blockquote><p><strong>sdtfgx fareaerfuj</strong> &nbsp; &nbsp; &nbsp;tsrtbcxgcdyfghgj</p></blockquote><figure class=\"table\"><table><thead><tr><th>1</th><th>2</th><th>3</th></tr></thead><tbody><tr><th>4</th><td>5</td><td>6</td></tr><tr><th>7</th><td>8</td><td>9</td></tr><tr><th>10</th><td>11</td><td>12</td></tr></tbody></table></figure><h2>`12335`</h2><h3><i>fdtg<strong> &nbsp;radrerg</strong></i></h3>', '2024-07-30 05:57:34'),
(4, 1, 'Rudresh Modi', 'admin@gmail.com', 'Test Message', '<p>&lt;h1&gt;The Journey of Reflection&lt;/h1&gt;</p><p>&nbsp; &nbsp;&lt;p&gt;The sun dipped below the horizon, casting a warm, amber hue over the tranquil landscape, as Emily walked slowly through the fields she had known since childhood. Each step on the worn path seemed to echo the footsteps of her past, resonating with memories of a time when life felt simpler and every day was an adventure waiting to unfold. The tall grasses, now swaying gently in the evening breeze, had witnessed countless moments of joy and sorrow, of triumphs and defeats. Emily’s mind wandered back to the early days when she and her friends would race through these fields, laughter ringing out like the song of the larks overhead, their spirits unburdened by the complexities of adulthood.&lt;/p&gt;</p><p>&nbsp; &nbsp;&lt;h2&gt;Reflections on Youth&lt;/h2&gt;</p><p>&nbsp; &nbsp;&lt;p&gt;Those days were filled with an innocent sense of possibility, where the world seemed boundless and every horizon held a promise. Yet, as the years passed, the vibrancy of youth gave way to the more subdued shades of responsibility and introspection. Life had a way of reshaping dreams and altering perspectives, often in ways that were unexpected and challenging. Emily’s path had not been without its share of obstacles; she had navigated the &lt;/p&gt;</p>', '2024-07-30 14:11:24');

-- --------------------------------------------------------

--
-- Table structure for table `migration`
--

CREATE TABLE `migration` (
  `version` varchar(180) NOT NULL,
  `apply_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `migration`
--

INSERT INTO `migration` (`version`, `apply_time`) VALUES
('m000000_000000_base', 1718430588),
('m130524_201442_init', 1718430613),
('m190124_110200_add_verification_token_column_to_user_table', 1718430614);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `sku` varchar(10) NOT NULL,
  `barcode` varchar(12) NOT NULL,
  `type` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `category_id` int(100) DEFAULT NULL,
  `price` varchar(10) NOT NULL,
  `image` varchar(255) NOT NULL,
  `Created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_At` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `sku`, `barcode`, `type`, `description`, `category_id`, `price`, `image`, `Created_at`, `updated_At`, `deleted_at`) VALUES
(1, 'Aman', '45', '13536457654', 'zdtstgsgdsxfdsaet', 'sdrfgdsrfgxfgxdhgdfxfgxdgfxfg', 1, '10', 'uploads/logo_mini1 (1).png', '2024-08-14 08:52:10', '2024-09-21 07:04:41', NULL),
(2, 'zdfsgdsgsfs', '35543', '243253463534', 'sfgsdgsdgsdg', 'sfgsdgsfgxsgdsdgg', 1, '24,535', 'uploads/images.jpeg', '2024-08-14 12:42:57', '2024-08-14 13:25:33', NULL),
(3, 'Smart Refrigerator', 'SR2024', '123456789012', 'Electronics', 'The Smart Refrigerator features a sleek design with a built-in touchscreen interface, advanced cooling technology, and Wi-Fi connectivity to help you manage your groceries efficiently. With its spacious interior and energy-efficient operation, it’s perfect for any modern kitchen.', 4, '899.99', 'smart_refrigerator.jpg', '2024-08-14 05:45:00', '2024-08-14 05:45:00', NULL),
(4, 'Air Purifier', 'AP2024', '123456789013', 'Electronics', 'This Air Purifier is designed to improve air quality in your home by removing dust, allergens, and pollutants. With a HEPA filter and advanced purification technology, it ensures that you breathe cleaner and healthier air. Ideal for people with allergies or respiratory issues.', 4, '149.99', 'air_purifier.jpg', '2024-08-14 05:50:00', '2024-08-14 05:50:00', NULL),
(5, 'Microwave Oven', 'MO2024', '123456789014', 'Electronics', 'The Microwave Oven offers a compact and efficient way to heat or cook your food quickly. With various cooking presets and a user-friendly interface, it simplifies meal preparation. Its sleek design fits well in any kitchen setting.', 4, '99.99', 'microwave_oven.jpg', '2024-08-14 05:55:00', '2024-08-14 05:55:00', NULL),
(6, 'Building Blocks Set', 'BB2024', '223456789012', 'Toys', 'The Building Blocks Set includes a variety of colorful blocks that help children develop fine motor skills, creativity, and problem-solving abilities. Made from durable, non-toxic materials, it provides hours of fun and learning.', 5, '29.99', 'building_blocks.jpg', '2024-08-14 06:00:00', '2024-08-14 06:00:00', NULL),
(7, 'Remote Control Car', 'RC2024', '223456789013', 'Toys', 'This Remote Control Car is designed for high-speed racing and maneuverability. With a robust build and easy-to-use remote control, it provides an exciting experience for kids and enthusiasts alike. Perfect for indoor and outdoor fun.', 5, '59.99', 'remote_control_car.jpg', '2024-08-14 06:05:00', '2024-08-14 06:05:00', NULL),
(8, 'Dollhouse', 'DH2024', '223456789014', 'Toys', 'The Dollhouse is a beautifully crafted miniature home that features detailed rooms and furniture. It encourages imaginative play and storytelling. Made from high-quality materials, it’s designed to be a cherished part of any child’s playtime.', 5, '149.99', 'dollhouse.jpg', '2024-08-14 06:10:00', '2024-08-14 06:10:00', NULL),
(9, 'Office Desk', 'OD2024', '323456789012', 'Furniture', 'The Office Desk offers a modern design with ample workspace and storage options. Crafted from high-quality materials, it is both durable and stylish, making it an ideal addition to any home or professional office.', 6, '249.99', 'office_desk.jpg', '2024-08-14 06:15:00', '2024-08-14 06:15:00', NULL),
(10, 'Comfortable Armchair', 'CA2024', '323456789013', 'Furniture', 'This Comfortable Armchair features plush cushioning and ergonomic design for maximum comfort. Upholstered in premium fabric, it adds a touch of elegance and relaxation to any living room or reading nook.', 6, '179.99', 'armchair.jpg', '2024-08-14 06:20:00', '2024-08-14 06:20:00', NULL),
(11, 'Dining Table Set', 'DT2024', '323456789014', 'Furniture', 'The Dining Table Set includes a spacious table and matching chairs, designed to enhance your dining experience. Made from high-quality wood, it offers durability and style, perfect for family meals and gatherings.', 6, '399.99', 'dining_table_set.jpg', '2024-08-14 06:25:00', '2024-08-14 06:25:00', NULL),
(12, 'Yoga Mat', 'YM2024', '423456789012', 'Sports', 'The Yoga Mat provides a non-slip surface and cushioning for comfortable and effective yoga practice. Its durable construction ensures long-term use, and the mat is available in various colors to suit your preference.', 7, '29.99', 'yoga_mat.jpg', '2024-08-14 06:30:00', '2024-08-14 06:30:00', NULL),
(13, 'Dumbbell Set', 'DS2024', '423456789013', 'Sports', 'This Dumbbell Set includes various weights to help you customize your workout routine. Made from high-quality materials, these dumbbells are perfect for strength training and improving overall fitness.', 7, '89.99', 'dumbbell_set.jpg', '2024-08-14 06:35:00', '2024-08-14 06:35:00', NULL),
(14, 'Treadmill', 'TD2024', '423456789014', 'Sports', 'The Treadmill features multiple speed settings and incline options to simulate different terrains and intensities. With a sturdy build and advanced features, it’s perfect for both beginners and seasoned runners.', 7, '699.99', 'treadmill.jpg', '2024-08-14 06:40:00', '2024-08-14 06:40:00', NULL),
(15, 'Organic Face Cream', 'OFC2024', '523456789012', 'Health & Beauty', 'This Organic Face Cream is formulated with natural ingredients to nourish and hydrate your skin. Enriched with vitamins and antioxidants, it helps improve skin texture and reduce signs of aging, providing a youthful glow.', 8, '39.99', 'organic_face_cream.jpg', '2024-08-14 06:45:00', '2024-08-14 06:45:00', NULL),
(16, 'Essential Oils Set', 'EOS2024', '523456789013', 'Health & Beauty', 'The Essential Oils Set includes a variety of therapeutic oils, each offering unique benefits for relaxation, stress relief, and wellness. Perfect for aromatherapy and enhancing your overall well-being.', 8, '59.99', 'essential_oils_set.jpg', '2024-08-14 06:50:00', '2024-08-14 06:50:00', NULL),
(17, 'Hair Straightener', 'HS2024', '523456789014', 'Health & Beauty', 'The Hair Straightener features advanced ceramic plates for even heat distribution and smooth results. With adjustable temperature settings, it’s suitable for all hair types, helping you achieve sleek and stylish hair effortlessly.', 8, '79.99', 'hair_straightener.jpg', '2024-08-14 06:55:00', '2024-08-14 06:55:00', NULL),
(18, 'Garden Hose', 'GH2024', '623456789012', 'Garden', 'The Garden Hose is made from durable, high-quality materials and features a kink-resistant design. It offers a long reach and adjustable spray settings, making it perfect for watering plants and maintaining your garden.', 9, '49.99', 'garden_hose.jpg', '2024-08-14 07:00:00', '2024-08-14 07:00:00', NULL),
(19, 'Patio Furniture Set', 'PFS2024', '623456789013', 'Garden', 'This Patio Furniture Set includes comfortable chairs and a stylish table, designed to enhance your outdoor space. Made from weather-resistant materials, it provides durability and comfort for enjoying your garden or patio.', 9, '299.99', 'patio_furniture_set.jpg', '2024-08-14 07:05:00', '2024-08-14 07:05:00', NULL),
(20, 'BBQ Grill', 'BBQ2024', '623456789014', 'Garden', 'The BBQ Grill offers a spacious cooking area and adjustable heat settings for perfect grilling. Made from high-quality stainless steel, it’s ideal for outdoor cooking and entertaining, providing delicious meals and a great experience.', 9, '199.99', 'bbq_grill.jpg', '2024-08-14 07:10:00', '2024-08-14 07:10:00', NULL),
(21, 'Car Vacuum Cleaner', 'CVC2024', '723456789012', 'Automotive', 'The Car Vacuum Cleaner features a powerful suction system and various attachments to clean every corner of your vehicle. Compact and easy to use, it ensures a spotless interior and a more enjoyable driving experience.', 10, '59.99', 'car_vacuum_cleaner.jpg', '2024-08-14 07:15:00', '2024-08-14 07:15:00', NULL),
(22, 'Dash Cam', 'DC2024', '723456789013', 'Automotive', 'This Dash Cam records high-definition video of your driving experience, providing evidence in case of accidents and monitoring your vehicle’s surroundings. With easy installation and user-friendly features, it’s an essential tool for every driver.', 10, '89.99', 'dash_cam.jpg', '2024-08-14 07:20:00', '2024-08-14 07:20:00', NULL),
(23, 'Car Seat Cover', 'CSC2024', '723456789014', 'Automotive', 'The Car Seat Cover protects your vehicle’s seats from wear and tear. Made from high-quality, easy-to-clean materials, it offers comfort and durability while enhancing the interior appearance of your car.', 10, '39.99', 'car_seat_cover.jpg', '2024-08-14 07:25:00', '2024-08-14 07:25:00', NULL),
(24, 'Bluetooth Speaker', 'BS2024', '823456789012', 'Music', 'The Bluetooth Speaker offers high-quality sound and wireless connectivity, allowing you to enjoy your favorite music anywhere. Its compact design and long battery life make it perfect for travel and outdoor activities.', 11, '69.99', 'bluetooth_speaker.jpg', '2024-08-14 07:30:00', '2024-08-14 07:30:00', NULL),
(25, 'Headphones', 'HP2024', '823456789013', 'Music', 'These Headphones feature noise-cancellation technology and comfortable ear pads, delivering exceptional sound quality for a premium listening experience. Ideal for music lovers and professionals alike.', 11, '129.99', 'headphones.jpg', '2024-08-14 07:35:00', '2024-08-14 07:35:00', NULL),
(26, 'Guitar', 'GT2024', '823456789014', 'Music', 'The Guitar is crafted for both beginners and experienced players, featuring high-quality materials and precise tuning. Its rich sound and comfortable playability make it a great choice for practice and performance.', 11, '299.99', 'guitar.jpg', '2024-08-14 07:40:00', '2024-08-14 07:40:00', NULL),
(27, 'Gold Necklace', 'GN2024', '923456789012', 'Jewelry', 'The Gold Necklace features an elegant design with fine craftsmanship, adding a touch of luxury to any outfit. Made from high-quality gold, it’s a timeless piece that makes for a perfect gift or a beautiful addition to your jewelry collection.', 12, '499.99', 'gold_necklace.jpg', '2024-08-14 07:45:00', '2024-08-14 07:45:00', NULL),
(28, 'Diamond Ring', 'DR2024', '923456789013', 'Jewelry', 'This Diamond Ring showcases a stunning diamond set in a classic band, making it an ideal choice for special occasions. Its exceptional brilliance and quality make it a cherished piece of jewelry.', 12, '999.99', 'diamond_ring.jpg', '2024-08-14 07:50:00', '2024-08-14 07:50:00', NULL),
(29, 'Pearl Earrings', 'PE2024', '923456789014', 'Jewelry', 'The Pearl Earrings feature lustrous pearls set in a delicate design, offering a sophisticated and timeless look. Perfect for formal events or everyday elegance, these earrings enhance any outfit with their natural beauty.', 12, '249.99', 'pearl_earrings.jpg', '2024-08-14 07:55:00', '2024-08-14 07:55:00', NULL),
(30, 'Office Chair', 'OC2024', 'A23456789012', 'Office Supplies', 'The Office Chair is ergonomically designed to provide maximum comfort and support during long work hours. Featuring adjustable height and lumbar support, it enhances productivity while ensuring a healthy posture.', 13, '179.99', 'office_chair.jpg', '2024-08-14 08:00:00', '2024-08-14 08:00:00', NULL),
(31, 'Desk Organizer', 'DO2024', 'A23456789013', 'Office Supplies', 'This Desk Organizer helps keep your workspace tidy and efficient. With compartments for pens, papers, and other essentials, it’s designed to help you stay organized and improve your workflow.', 13, '29.99', 'desk_organizer.jpg', '2024-08-14 08:05:00', '2024-08-14 08:05:00', NULL),
(32, 'Laptop Stand', 'LS2024', 'A23456789014', 'Office Supplies', 'The Laptop Stand provides an adjustable platform to elevate your laptop to eye level, reducing strain on your neck and back. Its sturdy design ensures stability while you work, enhancing comfort and productivity.', 13, '49.99', 'laptop_stand.jpg', '2024-08-14 08:10:00', '2024-08-14 08:10:00', NULL),
(33, 'Pet Bed', 'PB2024', 'B23456789012', 'Pet Supplies', 'The Pet Bed offers a cozy and comfortable place for your furry friend to rest. Made from soft, durable materials, it provides optimal comfort and support, making it an essential accessory for any pet owner.', 14, '69.99', 'pet_bed.jpg', '2024-08-14 08:15:00', '2024-08-14 08:15:00', NULL),
(34, 'Cat Tree', 'CT2024', 'B23456789013', 'Pet Supplies', 'This Cat Tree features multiple levels and scratching posts, providing entertainment and exercise for your feline friend. Its sturdy construction and attractive design make it a great addition to any home.', 14, '129.99', 'cat_tree.jpg', '2024-08-14 08:20:00', '2024-08-14 08:20:00', NULL),
(35, 'Dog Leash', 'DL2024', 'B23456789014', 'Pet Supplies', 'The Dog Leash is made from durable materials and features a comfortable grip. With its adjustable length, it offers control and safety while walking your dog. Ideal for everyday use and outdoor adventures.', 14, '19.99', 'dog_leash.jpg', '2024-08-14 08:25:00', '2024-08-14 08:25:00', NULL),
(36, 'Novel: The Great Adventure', 'NA2024', 'C23456789012', 'Books & Magazines', 'This captivating novel takes you on an extraordinary journey with its intriguing plot and complex characters. Perfect for avid readers who enjoy a blend of excitement and depth in their literary adventures.', 15, '14.99', 'the_great_adventure.jpg', '2024-08-14 08:30:00', '2024-08-14 08:30:00', NULL),
(37, 'Science Magazine Subscription', 'SM2024', 'C23456789013', 'Books & Magazines', 'The Science Magazine Subscription offers monthly issues packed with the latest research, discoveries, and articles on various scientific topics. Stay informed and inspired by the cutting-edge developments in science and technology.', 15, '89.99', 'science_magazine.jpg', '2024-08-14 08:35:00', '2024-08-14 08:35:00', NULL),
(38, 'Cookbook: Delicious Recipes', 'CB2024', 'C23456789014', 'Books & Magazines', 'The Cookbook: Delicious Recipes features a collection of easy-to-follow recipes with vibrant photos and cooking tips. Ideal for home cooks looking to expand their culinary repertoire and impress family and friends with delightful dishes.', 15, '24.99', 'delicious_recipes.jpg', '2024-08-14 08:40:00', '2024-08-14 08:40:00', NULL),
(39, 'Smart Refrigerator1', 'SR2024', '123456789012', 'Electronics', 'The Smart Refrigerator features a sleek design with a built-in touchscreen interface, advanced cooling technology, and Wi-Fi connectivity to help you manage your groceries efficiently. With its spacious interior and energy-efficient operation, it’s perfect for any modern kitchen.', 4, '899.99', 'smart_refrigerator.jpg', '2024-08-14 05:45:00', '2024-08-14 05:45:00', NULL),
(40, 'Air Purifier1', 'AP2024', '123456789013', 'Electronics', 'This Air Purifier is designed to improve air quality in your home by removing dust, allergens, and pollutants. With a HEPA filter and advanced purification technology, it ensures that you breathe cleaner and healthier air. Ideal for people with allergies or respiratory issues.', 4, '149.99', 'air_purifier.jpg', '2024-08-14 05:50:00', '2024-08-14 05:50:00', NULL),
(41, 'Microwave Oven1', 'MO2024', '123456789014', 'Electronics', 'The Microwave Oven offers a compact and efficient way to heat or cook your food quickly. With various cooking presets and a user-friendly interface, it simplifies meal preparation. Its sleek design fits well in any kitchen setting.', 4, '99.99', 'microwave_oven.jpg', '2024-08-14 05:55:00', '2024-08-14 05:55:00', NULL),
(42, 'Building Blocks Set1', 'BB2024', '223456789012', 'Toys', 'The Building Blocks Set includes a variety of colorful blocks that help children develop fine motor skills, creativity, and problem-solving abilities. Made from durable, non-toxic materials, it provides hours of fun and learning.', 5, '29.99', 'building_blocks.jpg', '2024-08-14 06:00:00', '2024-08-14 06:00:00', NULL),
(43, 'Remote Control Car1', 'RC2024', '223456789013', 'Toys', 'This Remote Control Car is designed for high-speed racing and maneuverability. With a robust build and easy-to-use remote control, it provides an exciting experience for kids and enthusiasts alike. Perfect for indoor and outdoor fun.', 5, '59.99', 'remote_control_car.jpg', '2024-08-14 06:05:00', '2024-08-14 06:05:00', NULL),
(44, 'Dollhouse1', 'DH2024', '223456789014', 'Toys', 'The Dollhouse is a beautifully crafted miniature home that features detailed rooms and furniture. It encourages imaginative play and storytelling. Made from high-quality materials, it’s designed to be a cherished part of any child’s playtime.', 5, '149.99', 'dollhouse.jpg', '2024-08-14 06:10:00', '2024-08-14 06:10:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `Restaurants`
--

CREATE TABLE `Restaurants` (
  `RestaurantID` int(11) NOT NULL,
  `RestaurantName` varchar(100) NOT NULL,
  `Address` varchar(255) DEFAULT NULL,
  `City` varchar(100) DEFAULT NULL,
  `State` varchar(50) DEFAULT NULL,
  `ZipCode` varchar(20) DEFAULT NULL,
  `Phone` varchar(20) DEFAULT NULL,
  `Email` varchar(100) NOT NULL,
  `Website` varchar(255) DEFAULT NULL,
  `OpeningTime` varchar(5) NOT NULL,
  `ClosingTime` varchar(5) NOT NULL,
  `Description` text DEFAULT NULL,
  `Rating` varchar(3) NOT NULL,
  `CuisineType` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Restaurants`
--

INSERT INTO `Restaurants` (`RestaurantID`, `RestaurantName`, `Address`, `City`, `State`, `ZipCode`, `Phone`, `Email`, `Website`, `OpeningTime`, `ClosingTime`, `Description`, `Rating`, `CuisineType`) VALUES
(1, 'truffle', 'stfsderqwdf', 'Delhi', 'Chhattisgarh', '342333', '+048644424547', 'hsafifyhiyi@nsdkfhk.in', 'www.google.com', '23:53', '13:02', 'cbhcfh xfghfg gdthgdgdh', '2', 'north_indian,south_indian');

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

CREATE TABLE `states` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `id` int(11) NOT NULL,
  `enroll_number` varchar(6) DEFAULT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `gender` enum('Male','Female','Other') NOT NULL,
  `attendance` decimal(5,2) NOT NULL DEFAULT 0.00,
  `language` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`id`, `enroll_number`, `first_name`, `last_name`, `gender`, `attendance`, `language`, `created_at`, `updated_at`) VALUES
(1, 'E1001', 'John', 'Doe', 'Male', 340.25, 'Urdu,punjabi', '2023-01-15 05:00:00', '2024-07-25 09:54:43'),
(2, 'E1002', 'Jane', 'Smith', 'Female', 355.75, 'gujarati,Marathi', '2023-01-16 04:15:00', '2024-07-25 09:55:35'),
(3, 'E1003', 'Michael', 'Johnson', 'Male', 358.50, '', '2023-01-17 02:50:00', '2023-01-17 02:50:00'),
(4, 'E1004', 'Emily', 'Brown', 'Female', 333.00, '', '2023-01-18 05:30:00', '2023-01-18 05:30:00'),
(5, 'E1005', 'William', 'Martinez', 'Male', 337.20, '', '2023-01-19 08:45:00', '2023-01-19 08:45:00'),
(6, 'E1006', 'Sophia', 'Garcia', 'Female', 360.80, '', '2023-01-20 08:00:00', '2023-01-20 08:00:00'),
(7, 'E1007', 'Daniel', 'Wilson', 'Male', 348.90, '', '2023-01-21 07:15:00', '2023-01-21 07:15:00'),
(8, 'E1008', 'Olivia', 'Lopez', 'Female', 342.70, '', '2023-01-22 04:30:00', '2023-01-22 04:30:00'),
(9, 'E1009', 'Matthew', 'Anderson', 'Male', 344.10, '', '2023-01-23 03:15:00', '2023-01-23 03:15:00'),
(10, 'E1010', 'Emma', 'Thomas', 'Female', 359.30, '', '2023-01-24 06:00:00', '2023-01-24 06:00:00'),
(11, 'E1011', 'James', 'White', 'Male', 336.40, '', '2023-01-25 03:45:00', '2023-01-25 03:45:00'),
(12, 'E1012', 'Ava', 'Clark', 'Female', 351.60, '', '2023-01-26 08:30:00', '2023-01-26 08:30:00'),
(13, 'E1013', 'David', 'Hill', 'Male', 363.80, '', '2023-01-27 06:30:00', '2023-01-27 06:30:00'),
(14, 'E1014', 'Mia', 'Lewis', 'Female', 353.20, '', '2023-01-28 05:00:00', '2023-01-28 05:00:00'),
(15, 'E1015', 'Benjamin', 'Walker', 'Male', 350.00, '', '2023-01-29 02:30:00', '2023-01-29 02:30:00'),
(16, '000096', 'Rudresh1', 'Modi2', 'Male', 43.00, '', '2024-07-04 09:34:43', '2024-07-04 09:34:43'),
(19, 'BECE96', 'Rudresh34', 'cfyfg', 'Male', 365.00, 'Telugu,punjabi,gujarati,bengali', '2024-08-03 08:17:11', '2024-08-03 08:17:11'),
(20, 'E1044', 'Johndsr', 'Doefd', 'Male', 340.25, 'Urdu,punjabi', '2024-08-06 05:42:39', '2024-08-06 05:42:39'),
(22, '11244', 'Johr', 'Doefd', 'Other', 340.25, 'Urdu', '2024-08-06 05:54:22', '2024-08-06 05:54:22');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `auth_key` varchar(32) NOT NULL,
  `password_hash` varchar(255) NOT NULL,
  `password_reset_token` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `role` varchar(255) DEFAULT 'user',
  `status` smallint(6) NOT NULL DEFAULT 10,
  `created_at` int(255) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `verification_token` varchar(255) DEFAULT NULL,
  `phone` varchar(255) NOT NULL,
  `otp` varchar(6) DEFAULT NULL,
  `otp_expire` int(11) DEFAULT NULL,
  `created_otp` varchar(255) NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `auth_key`, `password_hash`, `password_reset_token`, `email`, `role`, `status`, `created_at`, `updated_at`, `verification_token`, `phone`, `otp`, `otp_expire`, `created_otp`) VALUES
(1, 'gyf', 'lIIL97Kye12YyuUr0Llnzq2V1QXpe5HJ', '$2y$13$Zfulip9huotduCv3fEzHEeShbRlSBvzjA/4gIf4gETvoZD8YwlYNu', NULL, 'savogot363@orsbap.com', 'user', 10, 1721997138, 1721997138, 'fFvc3QpJQd3w7CreEYe-mH8_roUYxDKw_1721997138', '+91(706) 905-9917', '723228', NULL, '2024-07-26 18:02:18'),
(2, 'Rudresh', 'w4gjeNYALMhaJFn-pTCkVy2SN6cqvQzp', '$2y$13$SalRy3mpvJqzHUqzjE33kO4NojsImtpPaxrQosGVOx7Sfk8H6ozj6', NULL, 'volix83144@brinkc.com', 'admin', 10, 1723628538, 1723628585, 'xsmWrrcjYvp-L3XxhIHdnI_8AwPjus3M_1723628538', '+91(706) 905-9917', '863765', NULL, '2024-08-14 15:12:18'),
(24, 'abc', 'cTqZjT85Zgk_8HYR2JfyBTTfkM0z5fhr', '$2y$13$eQqFzJi6HR.Dyn4zZ8CH/ub8.3K7G3bhx3ZrBa7MujvHQ.tAmQJqK', NULL, 'foloye5430@nastyx.com', 'user', 10, 1726730597, 1726730634, 'vRVol_uvA09eT9t_hxv2uvjklO4a9IXv_1726730597', '+91(706) 905-9917', '976082', NULL, '2024-09-19 12:53:17');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) NOT NULL,
  `username` varchar(50) CHARACTER SET ascii COLLATE ascii_general_ci NOT NULL,
  `password` varchar(255) CHARACTER SET ascii COLLATE ascii_bin NOT NULL,
  `email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `email`) VALUES
(1, 'admin', 'admin', 'admin@gmail.com'),
(2, 'Rudresh', '$2y$10$MT4gzgcRnNTJydlv0h9eru7H1SFxL4boEdl4YKVwO3bqx1UY97.VC', 'Rudresh@gmail.com'),
(3, 'sahil', '$2y$13$hAd.TzfBdoCbeaBwNpPa/u2RHmZ8q.00hh1FlU4Wv/TlPG5I.4HH6', 'sahil@gmail.com'),
(4, 'user', '$2y$10$ITaflRUe931XWxA/zNzfoe3fqsIPCZ5rC2cAOYcsMnJLreJ6RsMCG', 'user@gmail.com'),
(5, 'user1', 'password1', 'user1@example.com'),
(6, 'user10', 'password10', 'user10@example.com'),
(7, 'user11', 'password11', 'user11@example.com'),
(8, 'user12', 'password12', 'user12@example.com'),
(9, 'user13', 'password13', 'user13@example.com'),
(10, 'user14', 'password14', 'user14@example.com'),
(11, 'user15', 'password15', 'user15@example.com'),
(12, 'user2', 'password2', 'user2@example.com'),
(13, 'user3', 'password3', 'user3@example.com'),
(14, 'user4', 'password4', 'user4@example.com'),
(15, 'user5', 'password5', 'user5@example.com'),
(16, 'user6', 'password6', 'user6@example.com'),
(17, 'user7', 'password7', 'user7@example.com'),
(18, 'user8', 'password8', 'user8@example.com'),
(19, 'user9', 'password9', 'user9@example.com');

-- --------------------------------------------------------

--
-- Table structure for table `user_test`
--

CREATE TABLE `user_test` (
  `id` int(10) NOT NULL,
  `f_name` varchar(255) NOT NULL,
  `l_name` varchar(255) NOT NULL,
  `contact` int(10) NOT NULL,
  `email` varchar(255) NOT NULL,
  `roll` enum('User','Admin') NOT NULL,
  `password` varchar(8) NOT NULL,
  `image` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `country` varchar(15) NOT NULL,
  `state` varchar(20) NOT NULL,
  `city` varchar(25) NOT NULL,
  `status` enum('Active','Inactive') NOT NULL DEFAULT 'Active',
  `created_At` timestamp NOT NULL DEFAULT current_timestamp(),
  `deleted_At` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `state_id` (`state_id`);

--
-- Indexes for table `contact_form_entries`
--
ALTER TABLE `contact_form_entries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_contact_form_user` (`user_id`);

--
-- Indexes for table `migration`
--
ALTER TABLE `migration`
  ADD PRIMARY KEY (`version`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `products` (`category_id`);

--
-- Indexes for table `Restaurants`
--
ALTER TABLE `Restaurants`
  ADD PRIMARY KEY (`RestaurantID`);

--
-- Indexes for table `states`
--
ALTER TABLE `states`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `enroll_number` (`enroll_number`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `password_reset_token` (`password_reset_token`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`username`,`id`) USING BTREE,
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `email_2` (`email`),
  ADD UNIQUE KEY `email_3` (`email`),
  ADD KEY `id` (`id`),
  ADD KEY `username_2` (`username`),
  ADD KEY `username_3` (`username`);
ALTER TABLE `users` ADD FULLTEXT KEY `password` (`password`);
ALTER TABLE `users` ADD FULLTEXT KEY `password_2` (`password`);

--
-- Indexes for table `user_test`
--
ALTER TABLE `user_test`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `contact` (`contact`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contact_form_entries`
--
ALTER TABLE `contact_form_entries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `Restaurants`
--
ALTER TABLE `Restaurants`
  MODIFY `RestaurantID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `states`
--
ALTER TABLE `states`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `user_test`
--
ALTER TABLE `user_test`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cities`
--
ALTER TABLE `cities`
  ADD CONSTRAINT `cities_ibfk_1` FOREIGN KEY (`state_id`) REFERENCES `states` (`id`);

--
-- Constraints for table `contact_form_entries`
--
ALTER TABLE `contact_form_entries`
  ADD CONSTRAINT `fk_contact_form_user` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
