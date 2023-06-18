-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 21, 2023 at 08:52 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kbgstonedb`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add appointment', 7, 'add_appointment'),
(26, 'Can change appointment', 7, 'change_appointment'),
(27, 'Can delete appointment', 7, 'delete_appointment'),
(28, 'Can view appointment', 7, 'view_appointment'),
(29, 'Can add available slot', 8, 'add_availableslot'),
(30, 'Can change available slot', 8, 'change_availableslot'),
(31, 'Can delete available slot', 8, 'delete_availableslot'),
(32, 'Can view available slot', 8, 'view_availableslot'),
(33, 'Can add contact form', 9, 'add_contactform'),
(34, 'Can change contact form', 9, 'change_contactform'),
(35, 'Can delete contact form', 9, 'delete_contactform'),
(36, 'Can view contact form', 9, 'view_contactform'),
(37, 'Can add pop up submission', 10, 'add_popupsubmission'),
(38, 'Can change pop up submission', 10, 'change_popupsubmission'),
(39, 'Can delete pop up submission', 10, 'delete_popupsubmission'),
(40, 'Can view pop up submission', 10, 'view_popupsubmission'),
(41, 'Can add product', 11, 'add_product'),
(42, 'Can change product', 11, 'change_product'),
(43, 'Can delete product', 11, 'delete_product'),
(44, 'Can view product', 11, 'view_product');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$390000$BccICTTkrgfrw6fPtecRCn$iUETlgvKWAvf2AzufWyI5B+QXhRdQgpcPbSy9ruuBus=', '2023-03-21 07:51:54.320517', 1, 'admin', '', '', 'niloy.islam@kbgbd.com.au', 1, 1, '2023-03-09 06:13:59.453093');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dashboard_appointment`
--

CREATE TABLE `dashboard_appointment` (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(254) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `appointment_date` date NOT NULL,
  `appointment_time` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dashboard_contactform`
--

CREATE TABLE `dashboard_contactform` (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(254) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `message` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dashboard_popupsubmission`
--

CREATE TABLE `dashboard_popupsubmission` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `number` varchar(20) NOT NULL,
  `email` varchar(255) NOT NULL,
  `postcode` varchar(10) NOT NULL,
  `timestamp` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dashboard_product`
--

CREATE TABLE `dashboard_product` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `image` varchar(100) NOT NULL,
  `category` varchar(255) NOT NULL,
  `discount_percentage` int(10) UNSIGNED DEFAULT NULL CHECK (`discount_percentage` >= 0)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dashboard_product`
--

INSERT INTO `dashboard_product` (`id`, `name`, `description`, `image`, `category`, `discount_percentage`) VALUES
(1, 'Calacatta Oro', '<p>Calacatta Oro is a luxurious and elegant natural stone that is known for its stunning white background and bold, golden veining. This marble is characterized by its striking and dramatic appearance, which can add a touch of glamour and sophistication to any space. The golden veining is typically thick and irregular, creating a sense of movement and depth that draws the eye.</p>\r\n\r\n<p>Calacatta Oro marble is a popular choice for high-end interior design projects, including flooring, countertops, and wall cladding. Its opulent and rich color palette can add a sense of grandeur and luxury to any room. This marble is also highly durable and easy to maintain, making it a practical choice for high-traffic areas.</p>\r\n\r\n<p>Overall, Calacatta Oro marble is a timeless and breathtaking natural stone that can add a touch of luxury and refinement to any design project. Its bold veining and white background make it a popular choice among homeowners, architects, and designers alike who seek a sophisticated and lavish look for their spaces.</p>\r\n\r\n<p><b>Application:</b> High-end interior design projects, including flooring, countertops, and wall cladding.</p>\r\n\r\n<p><b>Material:</b> Marble Slabs</p>\r\n\r\n</p><b>Size: </b>3000x1950x20mm</p>', 'static/images/11-calacatta-oro_pA6Cnjf.jpg', 'Natural Marble', 20),
(2, 'Mugla White', '<p>Mugla White is a beautiful natural stone that is known for its crisp white background and subtle grey veining. This marble is characterized by its bright and luminous appearance, which can help to create an airy and spacious feel in any space. The grey veining is typically thin and delicate, creating a sense of movement and depth without overwhelming the overall aesthetic.</p>\r\n\r\n<p>Mugla White marble is a popular choice for a wide range of interior design projects, including flooring, countertops, and wall cladding. Its bright and clean color palette can add a sense of freshness and purity to any room. This marble is also highly durable and easy to maintain, making it a practical choice for both residential and commercial applications.</p>\r\n\r\n<p>Overall, Mugla White marble is a versatile and elegant natural stone that can add a touch of sophistication and refinement to any design project. Its soft veining and bright appearance make it a popular choice among homeowners, architects, and designers alike who seek a clean and timeless look for their spaces.</p>\r\n\r\n<p><b>Application:</b> interior design projects, including flooring, countertops, and wall cladding.</p>\r\n\r\n<p><b>Material:</b> Marble Slabs</p>\r\n\r\n<p><b>Size:</b> 3000x1950x20mm</p>', 'static/images/07-mugla-white_2fTtb0c.jpg', 'Natural Marble', 10),
(3, 'Zebrino', '<p>Zebrino marble is a beautiful natural stone that is characterized by its distinctive white and black stripes. This marble is often referred to as \"zebra\" marble due to its resemblance to the stripes of a zebra. The white and black stripes are typically irregular and can range in size and thickness, creating a unique and natural appearance.</p>\r\n\r\n<p>Zebrino marble is a popular choice for a variety of interior design projects, including flooring, countertops, and backsplashes. Its striking and bold appearance can add a touch of drama and sophistication to any space. This marble is also highly durable and easy to maintain, making it a practical choice for high-traffic areas.</p>\r\n\r\n<p>Overall, Zebrino marble is a stunning and unique natural stone that can add character and charm to any design project. Its bold stripes and natural appearance make it a popular choice among homeowners, architects, and designers alike who seek a distinctive and eye-catching look for their spaces.</p>\r\n\r\n<p>Application: Interior design projects, including flooring, countertops, and accent walls</p>\r\n\r\n<p>Material: Marble Slabs</p>\r\n\r\n<p>Size: 3000x1950x20mm</p>', 'static/images/06-zebrino.jpg', 'Natural Marble', NULL),
(5, 'Emperador Dark', '<p>Emperador Dark is a magnificent natural stone that is known for its rich, warm tones and distinctive veining. This marble is characterized by its deep brown background and bold, creamy veins that create a sense of depth and texture. The veins are typically thick and irregular, giving the stone a sense of movement and character.</p>\r\n\r\n<p>Emperador Dark marble is a popular choice for a wide range of interior design projects, including flooring, countertops, and wall cladding. Its dark and dramatic color palette can add a touch of sophistication and luxury to any space. This marble is also highly durable and easy to maintain, making it a practical choice for high-traffic areas.</p>\r\n\r\n<p>Overall, Emperador Dark marble is a timeless and elegant natural stone that can add warmth and depth to any design project. Its unique veining and warm tones make it a popular choice among homeowners, architects, and designers alike, particularly for those seeking a rich and luxurious look.</p>\r\n\r\n<p>Application: Interior design projects, including flooring, countertops, and accent walls</p>\r\n\r\n<p>Material: Marble Slabs</p>\r\n\r\n<p>Size: 2100x1100x20mm</p>', 'static/images/04-emperador-dark.jpg', 'Natural Marble', NULL),
(6, 'Crema Penta Light', '<p>Crema Penta Light is a stunning natural stone that is known for its soft, creamy tones and delicate veining. This marble is characterized by its light beige background and subtle, wispy veins that create a sense of movement and depth. The veins are typically thin and delicate, giving the stone a sense of grace and elegance.</p>\r\n\r\n<p>Crema Penta Light marble is a popular choice for a wide range of interior design projects, including flooring, countertops, and wall cladding. Its soft and neutral color palette can add a sense of warmth and tranquility to any space. This marble is also highly durable and easy to maintain, making it a practical choice for high-traffic areas.</p>\r\n\r\n<p>Overall, Crema Penta Light marble is a versatile and sophisticated natural stone that can add a touch of luxury and refinement to any design project.Its gentle veining and warm tones make it a popular choice among homeowners, architects, and designers alike.</p>\r\n\r\n<p>Application: Interior design projects, including flooring, countertops, and accent walls</p>\r\n\r\n<p>Material: Marble Slabs</p>\r\n\r\n<p>Size: 1850x1750x20mm</p>', 'static/images/03-Crema-penta-light.jpg', 'Natural Marble', NULL),
(7, 'Crema Penta Dark', '<p>Crema Penta Dark is a beautiful natural stone that is known for its rich, warm tones and intricate veining. This marble is characterized by its cream-colored background and delicate brown veins that create a stunning contrast and depth. The veins are typically thin and wispy, giving the stone a sense of movement and fluidity.<p>\r\n\r\n<p>Crema Penta Dark marble is a popular choice for a wide range of interior design projects, including flooring, countertops, and accent walls. Its warm and inviting color palette can add a touch of elegance and sophistication to any space. This marble is also highly durable and easy to maintain, making it a practical choice for high-traffic areas.<p>\r\n\r\n<p>Overall, Crema Penta Dark marble is a versatile and timeless natural stone that can add beauty and character to any design project. Its unique veining and warm tones make it a popular choice among homeowners, architects, and designers alike.<p>\r\n\r\n<p>Application: Interior design projects, including flooring, countertops, and accent walls<p>\r\n\r\n<p>Material: Marble Slabs<p>\r\n\r\n<p>Size: 1850x1750x20mm<p>', 'static/images/02-Crema-penta-dark.jpg', 'Natural Marble', NULL),
(8, 'Panda Book Match', '<p>Panda Book Match Marble is a unique and stunning natural stone that features a distinctive black and white pattern. This marble is characterized by its bold, contrasting veining that creates a striking and dramatic appearance. The black and white veins are typically arranged in a book-match pattern, which creates a mirrored effect that adds a sense of balance and harmony to any space.</p>\r\n\r\n<p>Panda Book Match Marble is a popular choice for interior design projects, including feature walls, countertops, and flooring. Its bold and dramatic appearance can add a touch of sophistication and elegance to any room. This marble is also highly durable and easy to maintain, making it a practical choice for high-traffic areas.</p>\r\n\r\n<p>Overall, Panda Book Match Marble is a unique and luxurious natural stone that can add a touch of drama and elegance to any design project. Its bold pattern and striking appearance make it a popular choice among homeowners, architects, and designers alike who seek a one-of-a-kind look for their spaces.</p>\r\n\r\n<p>Application: Interior design projects, including flooring, countertops, and accent walls</p>\r\n\r\n<p>Material: Marble Slabs</p>\r\n\r\nSize: 2000x1350x20mm', 'static/images/05-panda-book-match.jpg', 'Natural Marble', NULL),
(9, 'Calacatta-Carrara', '<p>Calacatta Carrara marble is a stunning natural stone that has been used in architecture and design for centuries. It is characterized by its white background and bold grey veining that creates a dramatic and elegant appearance. The white background has a slightly warm tone that provides a subtle contrast to the cool grey veins, creating a sense of depth and texture.<p>\r\n\r\n<p>This marble is a popular choice for a wide range of applications, including flooring, countertops, backsplashes, and accent walls. It is highly versatile and can be used to create a variety of design styles, from classic and traditional to modern and contemporary.<p>\r\n\r\n<p>Calacatta Carrara marble is prized for its natural beauty and durability. It is a dense and hard stone that can withstand heavy traffic and daily use, making it an ideal choice for high-traffic areas. Additionally, it is relatively easy to maintain and can be kept looking beautiful for years to come with proper care and maintenance.<p>\r\n\r\n<p>Overall, Calacatta Carrara marble is a timeless and elegant choice for any design project. Its classic beauty and durability make it a popular choice among architects, designers, and homeowners alike.<p>\r\n\r\n<p>Application: Kitchen, Bathroom, Internal Wall, External Wall, Internal Flooring, External Flooring  <p>\r\n\r\n<p>Material: Marble Slabs<p>\r\n\r\n<p>Size: 3150×1980×20mm<p>', 'static/images/01-Calacatta-Carrara.jpg', 'Natural Marble', NULL),
(10, 'Calacatta Corchia', 'Carrara’s soft grey shades have been used for centuries to create an ageless elegance and today remain as popular as ever. A true interior classic, it is offered here in a smooth, matt ‘honed’ finish, which gives a simple and stylish feel.White Carrara Marble is one of the iconic luxury Italian marbles featuring shades of white and gray. White Carrara marble slabs are offered in polished and honed finishes, and a wide variety of floor tiles, wall tiles, and mosaics are available to create stunning marble countertops, waterfall islands, marble tile floors, and accent walls throughout both residential and commercial properties.\r\nSize: 3000x2000x20mm', 'static/images/calacatta-corchiaUSE.jpg', 'Natural Material', NULL),
(11, 'Arielle Quartzite', 'Arielle Quartzite is a reminder of nature’s ability to produce wonderful and striking pieces of natural art. Arielle Quartzite is a spectacle of copper veins against the turquoise blue background, available in both a polished and leather finish.\r\n\r\nThe unique pattern and large slab size of this stone make it perfect for feature walls & oversized kitchen islands.', 'static/images/Arielle-QuartziteI.jpeg', 'QUARTZITE SLABS', NULL),
(12, 'Atlantis Quartzite', 'Atlantis Quartzite is a durable, earthy tone stone from South America.\r\n\r\nThe neutral grey background has dark angular veins through.\r\nDue to the stone’s quartzite composition Atlantis Quartzite is a durable and dynamic stone perfect for use in high use areas such as kitchen workbenches.', 'static/images/image_28.png', 'QUARTZITE SLABS', NULL),
(13, 'Aurora Quartzite', 'Named after the vibrant polar lights, Aurora Quartzite is Nature’s artwork in its truest form. Aurora Quartzite has spectacular colorations of pastel green, grey and white. Aurora Quartzite is suitable for External and Internal applications due to its dense and durable structure.\r\n\r\nAurora Quartzite has spectacular colorations of pastel green, grey and white. Aurora Quartzite is suitable for External and Internal applications due to its dense and durable structure.\r\nAurora Quartzite will certainly make a statement to any application..', 'static/images/image_29.png', 'QUARTZITE SLABS', NULL),
(14, 'Portoro Quartzite', 'Portoro Quartzite is a striking natural stone consisting of an intense black background with intersecting warm rust coloured veining and silver translucent crystals that give this stone luxurious persona.\r\n\r\nThe attractive patterns create high movement, and the distinctive veining can be incorporated into any design, from larger applications to unique detailed features that make a bold statement and stand out from the crowd', 'static/images/image_30.png', 'QUARTZITE SLABS', NULL),
(15, 'Smeraldo Quartzite', 'Smeraldo Quartzite is an alluring natural stone. Known forts captivating emerald green background littered with dark contrasting veining. Due to its composition as a Quartzite, Smeraldo Quartzite is a durable and dense natural stone.\r\n\r\nThe characteristics that make marble such a sought-after product in today\'s designer market include its beauty, originality, luxury, and flaws. Moreover, Italian marble has long been utilized for kitchen countertops and vanities. Marble benchtops are used and appreciated for their inherent beauty and qualities.', 'static/images/image_31.png', 'QUARTZITE SLABS', NULL),
(16, 'Winterfell White', 'Winterfell White Dolomite is a seamlessly beautiful natural stone. Characterized by its cool grey distinctive veins and speckles against a white background. Winterfell White gives a fresh, serene feel to any application. Due to its composition as a Dolomite stone, Winterfell White is denser and stronger than marble, making it a go to option for those seeking a white stone that is more forgiving than other white marbles. A simply stunning natural stone and blends graciously with other materials and finishes.', 'static/images/Frame_29_54ipt2z.png', 'Projects', NULL),
(17, 'Arctic Rain', 'Arctic Rain Dolomite is a striking natural stone. Cool grey white background with a myriad subtle white veining and dark blue central veins. Arctic Rain Dolomite is a timeless natural stone due to its colour tones and superior durability. Arctic Rain Dolomite is both dense and versatile, ideal for both commercial and residential applications. The unique patterning of this vibrant stone is balance of both dark and light elements. Available in a Honed and Leather finishes', 'static/images/rain_marble_1.jpg', 'Projects', NULL),
(18, 'Super White', 'Super White Dolomite remains one of our ever-popular stone products largely due to its modern colour tones & superior durability. The arctic cool toned grey along with the contrasting grey veining throughout adds beautiful depth to the stone. No two blocks of Super White Dolomite possess the same beauty, they can be mottled or veined. Super White Dolomite is both dense and versatile, ideal for both commercial and residential spaces. Super White can be used in interior spaces for flooring, fireplaces, and other surroundings. Integrating with any design scheme, subdued or vibrant with its harmony of both light and dark elements', 'static/images/Frame_28.png', 'Projects', 30);

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2023-03-09 07:02:20.610864', '1', 'Calacatta Oro', 1, '[{\"added\": {}}]', 11, 1),
(2, '2023-03-09 07:04:34.892718', '2', 'Mugla White', 1, '[{\"added\": {}}]', 11, 1),
(3, '2023-03-09 08:41:40.835268', '3', 'Zebrino', 1, '[{\"added\": {}}]', 11, 1),
(4, '2023-03-09 08:42:28.016017', '4', 'Panda Book Match', 1, '[{\"added\": {}}]', 11, 1),
(5, '2023-03-09 08:43:38.214592', '5', 'Emperador Dark', 1, '[{\"added\": {}}]', 11, 1),
(6, '2023-03-09 08:43:49.872429', '4', 'Panda Book Match', 3, '', 11, 1),
(7, '2023-03-09 08:44:51.842821', '6', 'Crema Penta Light', 1, '[{\"added\": {}}]', 11, 1),
(8, '2023-03-09 08:46:23.680869', '7', 'Crema Penta Dark', 1, '[{\"added\": {}}]', 11, 1),
(9, '2023-03-09 08:48:36.941102', '8', 'Panda Book Match', 1, '[{\"added\": {}}]', 11, 1),
(10, '2023-03-09 08:50:05.214650', '9', 'Calacatta-Carrara', 1, '[{\"added\": {}}]', 11, 1),
(11, '2023-03-09 08:51:12.119865', '9', 'Calacatta-Carrara', 2, '[]', 11, 1),
(12, '2023-03-09 08:51:20.305981', '8', 'Panda Book Match', 2, '[{\"changed\": {\"fields\": [\"Category\"]}}]', 11, 1),
(13, '2023-03-09 08:51:28.641698', '7', 'Crema Penta Dark', 2, '[{\"changed\": {\"fields\": [\"Category\"]}}]', 11, 1),
(14, '2023-03-09 08:51:36.906632', '6', 'Crema Penta Light', 2, '[{\"changed\": {\"fields\": [\"Category\"]}}]', 11, 1),
(15, '2023-03-09 08:51:44.817461', '3', 'Zebrino', 2, '[{\"changed\": {\"fields\": [\"Category\"]}}]', 11, 1),
(16, '2023-03-09 08:51:52.208703', '2', 'Mugla White', 2, '[{\"changed\": {\"fields\": [\"Category\"]}}]', 11, 1),
(17, '2023-03-09 08:51:59.313371', '1', 'Calacatta Oro', 2, '[{\"changed\": {\"fields\": [\"Category\"]}}]', 11, 1),
(18, '2023-03-09 08:52:07.575870', '5', 'Emperador Dark', 2, '[{\"changed\": {\"fields\": [\"Category\"]}}]', 11, 1),
(19, '2023-03-10 14:52:41.162349', '9', 'Calacatta-Carrara', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 11, 1),
(20, '2023-03-10 14:52:54.294243', '8', 'Panda Book Match', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 11, 1),
(21, '2023-03-10 14:53:07.268666', '7', 'Crema Penta Dark', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 11, 1),
(22, '2023-03-10 14:53:16.054969', '6', 'Crema Penta Light', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 11, 1),
(23, '2023-03-10 14:53:25.942152', '5', 'Emperador Dark', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 11, 1),
(24, '2023-03-10 14:53:36.133404', '3', 'Zebrino', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 11, 1),
(25, '2023-03-10 14:53:43.892777', '2', 'Mugla White', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 11, 1),
(26, '2023-03-10 14:53:54.438341', '1', 'Calacatta Oro', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 11, 1),
(27, '2023-03-10 17:12:59.034786', '26', 'Niloy Islam', 3, '', 7, 1),
(28, '2023-03-10 17:12:59.037133', '25', 'Niloy Islam', 3, '', 7, 1),
(29, '2023-03-10 17:12:59.039772', '24', 'Niloy Islam', 3, '', 7, 1),
(30, '2023-03-10 17:12:59.041708', '23', 'jahid', 3, '', 7, 1),
(31, '2023-03-10 17:12:59.043767', '22', 'Niloy Islam', 3, '', 7, 1),
(32, '2023-03-10 17:12:59.044767', '21', 'Niloy Islam', 3, '', 7, 1),
(33, '2023-03-10 17:12:59.048675', '20', 'Niloy Islam', 3, '', 7, 1),
(34, '2023-03-10 17:12:59.051248', '19', 'Shifat', 3, '', 7, 1),
(35, '2023-03-10 17:12:59.052981', '18', 'NAFAD JAWAD', 3, '', 7, 1),
(36, '2023-03-10 17:12:59.055979', '17', 'niloy', 3, '', 7, 1),
(37, '2023-03-10 17:12:59.057966', '16', 'ghsdg', 3, '', 7, 1),
(38, '2023-03-10 17:12:59.059758', '15', 'ghsdg', 3, '', 7, 1),
(39, '2023-03-10 17:12:59.061357', '14', 'nkljnldf', 3, '', 7, 1),
(40, '2023-03-10 17:12:59.061986', '13', 'ni;\'slgj', 3, '', 7, 1),
(41, '2023-03-10 17:12:59.063966', '12', 'niloy', 3, '', 7, 1),
(42, '2023-03-10 17:12:59.066660', '11', 'niloy', 3, '', 7, 1),
(43, '2023-03-10 17:12:59.068082', '10', 'Niloy', 3, '', 7, 1),
(44, '2023-03-10 17:12:59.068991', '9', 'Niloy ', 3, '', 7, 1),
(45, '2023-03-10 17:12:59.074056', '8', 'niloy', 3, '', 7, 1),
(46, '2023-03-10 17:12:59.078564', '7', 'niloy', 3, '', 7, 1),
(47, '2023-03-10 17:12:59.080604', '6', 'niloy', 3, '', 7, 1),
(48, '2023-03-10 17:12:59.083068', '5', 'niloy', 3, '', 7, 1),
(49, '2023-03-10 17:12:59.085851', '4', 'niloy', 3, '', 7, 1),
(50, '2023-03-10 17:12:59.087850', '3', 'Niloy', 3, '', 7, 1),
(51, '2023-03-10 17:12:59.090106', '2', 'Niloy', 3, '', 7, 1),
(52, '2023-03-10 17:12:59.091770', '1', 'Niloy Islam', 3, '', 7, 1),
(53, '2023-03-10 17:24:46.087624', '30', 'Niloy Islam', 3, '', 7, 1),
(54, '2023-03-10 17:24:46.088621', '29', 'Niloy Islam', 3, '', 7, 1),
(55, '2023-03-10 17:24:46.089619', '28', 'Niloy Islam', 3, '', 7, 1),
(56, '2023-03-10 17:24:46.091613', '27', 'Niloy Islam', 3, '', 7, 1),
(57, '2023-03-15 00:42:52.980034', '34', 'prome', 3, '', 7, 1),
(58, '2023-03-15 00:42:52.981632', '33', 'prome', 3, '', 7, 1),
(59, '2023-03-15 00:42:52.982739', '32', 'Bipro', 3, '', 7, 1),
(60, '2023-03-15 00:42:52.984147', '31', 'Niloy Islam', 3, '', 7, 1),
(61, '2023-03-15 00:55:31.049162', '10', 'Calacatta Corchia', 1, '[{\"added\": {}}]', 11, 1),
(62, '2023-03-15 00:56:09.600911', '10', 'Calacatta Corchia', 2, '[{\"changed\": {\"fields\": [\"Description\", \"Category\"]}}]', 11, 1),
(63, '2023-03-16 00:06:47.216376', '11', 'Arielle Quartzite', 1, '[{\"added\": {}}]', 11, 1),
(64, '2023-03-16 00:08:59.194004', '12', 'Atlantis Quartzite', 1, '[{\"added\": {}}]', 11, 1),
(65, '2023-03-16 00:10:15.623825', '13', 'Aurora Quartzite', 1, '[{\"added\": {}}]', 11, 1),
(66, '2023-03-16 00:11:11.934387', '14', 'Portoro Quartzite', 1, '[{\"added\": {}}]', 11, 1),
(67, '2023-03-16 00:11:56.869242', '15', 'Smeraldo Quartzite', 1, '[{\"added\": {}}]', 11, 1),
(68, '2023-03-16 22:00:47.370978', '16', 'Winterfell White', 1, '[{\"added\": {}}]', 11, 1),
(69, '2023-03-16 22:01:42.535780', '17', 'Arctic Rain', 1, '[{\"added\": {}}]', 11, 1),
(70, '2023-03-16 22:03:49.602121', '18', 'Super White', 1, '[{\"added\": {}}]', 11, 1),
(71, '2023-03-16 22:35:00.657509', '36', 'Prome', 3, '', 7, 1),
(72, '2023-03-16 22:35:00.659844', '35', 'prome', 3, '', 7, 1),
(73, '2023-03-16 22:35:06.524190', '1', 'Niloy Islam', 3, '', 9, 1),
(74, '2023-03-16 22:35:17.644799', '11', 'Prome', 3, '', 10, 1),
(75, '2023-03-16 22:35:17.646246', '10', 'Niloy Islam', 3, '', 10, 1),
(76, '2023-03-16 22:35:17.647591', '9', 'Niloy Islam', 3, '', 10, 1),
(77, '2023-03-16 22:35:17.650342', '8', 'Niloy ', 3, '', 10, 1),
(78, '2023-03-16 22:35:17.652336', '7', 'Niloy ', 3, '', 10, 1),
(79, '2023-03-16 22:35:17.653366', '6', 'Niloy ', 3, '', 10, 1),
(80, '2023-03-16 22:35:17.654666', '5', 'Niloy Islam', 3, '', 10, 1),
(81, '2023-03-16 22:35:17.655326', '4', 'Niloy ', 3, '', 10, 1),
(82, '2023-03-16 22:35:17.656328', '3', 'Niloy ', 3, '', 10, 1),
(83, '2023-03-16 22:35:17.658151', '2', 'Niloy Islam', 3, '', 10, 1),
(84, '2023-03-16 22:35:17.659504', '1', 'Niloy Islam', 3, '', 10, 1),
(85, '2023-03-16 23:06:38.236221', '18', 'Super White', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 11, 1),
(86, '2023-03-16 23:06:49.997153', '16', 'Winterfell White', 2, '[{\"changed\": {\"fields\": [\"Image\"]}}]', 11, 1),
(87, '2023-03-21 06:14:45.732805', '1', 'Calacatta Oro', 2, '[{\"changed\": {\"fields\": [\"Discount percentage\"]}}]', 11, 1),
(88, '2023-03-21 06:15:02.598074', '18', 'Super White', 2, '[{\"changed\": {\"fields\": [\"Discount percentage\"]}}]', 11, 1),
(89, '2023-03-21 06:18:45.639794', '2', 'Mugla White', 2, '[{\"changed\": {\"fields\": [\"Discount percentage\"]}}]', 11, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(7, 'dashboard', 'appointment'),
(8, 'dashboard', 'availableslot'),
(9, 'dashboard', 'contactform'),
(10, 'dashboard', 'popupsubmission'),
(11, 'dashboard', 'product'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2023-03-09 06:13:13.974152'),
(2, 'auth', '0001_initial', '2023-03-09 06:13:14.392061'),
(3, 'admin', '0001_initial', '2023-03-09 06:13:14.477806'),
(4, 'admin', '0002_logentry_remove_auto_add', '2023-03-09 06:13:14.485815'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2023-03-09 06:13:14.492765'),
(6, 'contenttypes', '0002_remove_content_type_name', '2023-03-09 06:13:14.561580'),
(7, 'auth', '0002_alter_permission_name_max_length', '2023-03-09 06:13:14.616434'),
(8, 'auth', '0003_alter_user_email_max_length', '2023-03-09 06:13:14.633390'),
(9, 'auth', '0004_alter_user_username_opts', '2023-03-09 06:13:14.642368'),
(10, 'auth', '0005_alter_user_last_login_null', '2023-03-09 06:13:14.689266'),
(11, 'auth', '0006_require_contenttypes_0002', '2023-03-09 06:13:14.692235'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2023-03-09 06:13:14.701210'),
(13, 'auth', '0008_alter_user_username_max_length', '2023-03-09 06:13:14.715171'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2023-03-09 06:13:14.730132'),
(15, 'auth', '0010_alter_group_name_max_length', '2023-03-09 06:13:14.746120'),
(16, 'auth', '0011_update_proxy_permissions', '2023-03-09 06:13:14.755096'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2023-03-09 06:13:14.779997'),
(18, 'dashboard', '0001_initial', '2023-03-09 06:13:14.823879'),
(19, 'sessions', '0001_initial', '2023-03-09 06:13:14.848817'),
(20, 'dashboard', '0002_delete_availableslot_product_discount_percentage', '2023-03-21 06:13:39.446018');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('1ydj2vuboqz2kj3y5al99vppm5qig7b3', '.eJxVjDsOgzAQRO_iOrIMXv9SpucMaNdexySRkTBUUe4ekCiScua9mbcYcVvLuDVeximJq-jE5bcjjE-uB0gPrPdZxrmuy0TyUORJmxzmxK_b6f4dFGxlX2vAwCqpgD576q0ByE45dAzWhsDgfWKCQF4bHfMeFFlNXWdBG2t68fkC1OM3Lw:1pcwBK:UVuZ8LW8Xt_GMRYwa2vcBi6i2LrQEDrqSC1snFziKXk', '2023-03-30 22:34:46.419964'),
('45c6upytzw48nisbkhohck7ls1gfgvh7', '.eJxVjDsOgzAQRO_iOrIMXv9SpucMaNdexySRkTBUUe4ekCiScua9mbcYcVvLuDVeximJq-jE5bcjjE-uB0gPrPdZxrmuy0TyUORJmxzmxK_b6f4dFGxlX2vAwCqpgD576q0ByE45dAzWhsDgfWKCQF4bHfMeFFlNXWdBG2t68fkC1OM3Lw:1paBru:z5te3u7I4vHTFFV308ksVQqH197YHq8UUMd06sJ-5Dw', '2023-03-23 08:43:22.827372'),
('4cq3mw9wray9a0b7fhpyp48ag4kgzxle', '.eJxVjDsOgzAQRO_iOrIMXv9SpucMaNdexySRkTBUUe4ekCiScua9mbcYcVvLuDVeximJq-jE5bcjjE-uB0gPrPdZxrmuy0TyUORJmxzmxK_b6f4dFGxlX2vAwCqpgD576q0ByE45dAzWhsDgfWKCQF4bHfMeFFlNXWdBG2t68fkC1OM3Lw:1pcFI9:Jyr18GKzwNnHELJ1Cds5Fka7sxEbQhyB3oBQDiRC4rA', '2023-03-29 00:46:57.595398'),
('59ss188536ep7qiriw67l0w8fyox412m', '.eJxVjDsOgzAQRO_iOrIMXv9SpucMaNdexySRkTBUUe4ekCiScua9mbcYcVvLuDVeximJq-jE5bcjjE-uB0gPrPdZxrmuy0TyUORJmxzmxK_b6f4dFGxlX2vAwCqpgD576q0ByE45dAzWhsDgfWKCQF4bHfMeFFlNXWdBG2t68fkC1OM3Lw:1paAFw:xZS4m66z62K2Bw5_Qr6A9b385pTtD2d2p6RajiWAhvc', '2023-03-23 07:00:04.850338'),
('5tktkokvspx3rw3slubj2ouwepxott9u', '.eJxVjDsOgzAQRO_iOrIMXv9SpucMaNdexySRkTBUUe4ekCiScua9mbcYcVvLuDVeximJq-jE5bcjjE-uB0gPrPdZxrmuy0TyUORJmxzmxK_b6f4dFGxlX2vAwCqpgD576q0ByE45dAzWhsDgfWKCQF4bHfMeFFlNXWdBG2t68fkC1OM3Lw:1paAuW:DpewRaCY-2-y31xHUG9Ea59c0oM35AekZHv004l262U', '2023-03-23 07:42:00.149381'),
('bzsvs41vs70sqffgchwu1x077fbdkuyw', '.eJxVjDsOgzAQRO_iOrIMXv9SpucMaNdexySRkTBUUe4ekCiScua9mbcYcVvLuDVeximJq-jE5bcjjE-uB0gPrPdZxrmuy0TyUORJmxzmxK_b6f4dFGxlX2vAwCqpgD576q0ByE45dAzWhsDgfWKCQF4bHfMeFFlNXWdBG2t68fkC1OM3Lw:1pa9Xj:dTBIY1GhSNX8abUN6wYE8qdJ_Tpm2CNuXBlvrAq3q0c', '2023-03-23 06:14:23.784588'),
('cex90gir74aymg7igftbzh269uwk0dy2', '.eJxVjDsOgzAQRO_iOrIMXv9SpucMaNdexySRkTBUUe4ekCiScua9mbcYcVvLuDVeximJq-jE5bcjjE-uB0gPrPdZxrmuy0TyUORJmxzmxK_b6f4dFGxlX2vAwCqpgD576q0ByE45dAzWhsDgfWKCQF4bHfMeFFlNXWdBG2t68fkC1OM3Lw:1paBuO:-cS-lsVBbv_E0sr6I73DfIEp5PnkftbM_XFdDEF1gCQ', '2023-03-23 08:45:56.031298'),
('djmttvht56vm1igvq0q0nxerkp60zp55', '.eJxVjDsOgzAQRO_iOrIMXv9SpucMaNdexySRkTBUUe4ekCiScua9mbcYcVvLuDVeximJq-jE5bcjjE-uB0gPrPdZxrmuy0TyUORJmxzmxK_b6f4dFGxlX2vAwCqpgD576q0ByE45dAzWhsDgfWKCQF4bHfMeFFlNXWdBG2t68fkC1OM3Lw:1peVGV:BWdAJiZ3ipQ4XkQePSrCACHCFh40Ju2s2DKWBcWqfqY', '2023-04-04 06:14:35.627386'),
('h3312g3artfyqc4dvi0g76qwmexzfz6f', '.eJxVjDsOgzAQRO_iOrIMXv9SpucMaNdexySRkTBUUe4ekCiScua9mbcYcVvLuDVeximJq-jE5bcjjE-uB0gPrPdZxrmuy0TyUORJmxzmxK_b6f4dFGxlX2vAwCqpgD576q0ByE45dAzWhsDgfWKCQF4bHfMeFFlNXWdBG2t68fkC1OM3Lw:1paBxw:EhxwZ-edP53NJcDc-D7j1ab-dAVOu0Pp2l5Ki1Aftck', '2023-03-23 08:49:36.636423'),
('htd37212bg5q6bexa6pkxblman66d4rq', '.eJxVjDsOgzAQRO_iOrIMXv9SpucMaNdexySRkTBUUe4ekCiScua9mbcYcVvLuDVeximJq-jE5bcjjE-uB0gPrPdZxrmuy0TyUORJmxzmxK_b6f4dFGxlX2vAwCqpgD576q0ByE45dAzWhsDgfWKCQF4bHfMeFFlNXWdBG2t68fkC1OM3Lw:1paAJu:-ntou-VS7_L5g-I62g4EFeY8BAenEEW2-7B_y4_yYsk', '2023-03-23 07:04:10.454402'),
('iumslf82y4ilokwlvdk3uucxs44qod6t', '.eJxVjDsOgzAQRO_iOrIMXv9SpucMaNdexySRkTBUUe4ekCiScua9mbcYcVvLuDVeximJq-jE5bcjjE-uB0gPrPdZxrmuy0TyUORJmxzmxK_b6f4dFGxlX2vAwCqpgD576q0ByE45dAzWhsDgfWKCQF4bHfMeFFlNXWdBG2t68fkC1OM3Lw:1peWmg:RoqEzV0wJKQFi_KlMTCkSCU4vRxYAkVSe3SzL6Fqr-8', '2023-04-04 07:51:54.324683'),
('j8v1uann6cl9ceuisoimukhaml9d2ijs', '.eJxVjDsOgzAQRO_iOrIMXv9SpucMaNdexySRkTBUUe4ekCiScua9mbcYcVvLuDVeximJq-jE5bcjjE-uB0gPrPdZxrmuy0TyUORJmxzmxK_b6f4dFGxlX2vAwCqpgD576q0ByE45dAzWhsDgfWKCQF4bHfMeFFlNXWdBG2t68fkC1OM3Lw:1pcuVH:0F1XVmYzxtHsHGAyKEtPeLv3S-AN45xBIsYJf1I--BE', '2023-03-30 20:47:15.347646'),
('jtls63tu3fu5vi3mofyq2nkrjdhnjhoo', '.eJxVjDsOgzAQRO_iOrIMXv9SpucMaNdexySRkTBUUe4ekCiScua9mbcYcVvLuDVeximJq-jE5bcjjE-uB0gPrPdZxrmuy0TyUORJmxzmxK_b6f4dFGxlX2vAwCqpgD576q0ByE45dAzWhsDgfWKCQF4bHfMeFFlNXWdBG2t68fkC1OM3Lw:1paBw6:3BFvLuiMoNd_SaEdP-lWIFHtJbRAriiv-qKsIzIXi6g', '2023-03-23 08:47:42.843726'),
('l0n72xhsrnpe55dy8clef296pnhcfi7j', '.eJxVjDsOgzAQRO_iOrIMXv9SpucMaNdexySRkTBUUe4ekCiScua9mbcYcVvLuDVeximJq-jE5bcjjE-uB0gPrPdZxrmuy0TyUORJmxzmxK_b6f4dFGxlX2vAwCqpgD576q0ByE45dAzWhsDgfWKCQF4bHfMeFFlNXWdBG2t68fkC1OM3Lw:1paBqk:fMAXUYLTRJNwGus92OjGi4-Y6yEyLP2_Ttc7ZI4LsYs', '2023-03-23 08:42:10.310345'),
('mccri2xcjny605yn12ulzcezk6v9s2ae', '.eJxVjDsOgzAQRO_iOrIMXv9SpucMaNdexySRkTBUUe4ekCiScua9mbcYcVvLuDVeximJq-jE5bcjjE-uB0gPrPdZxrmuy0TyUORJmxzmxK_b6f4dFGxlX2vAwCqpgD576q0ByE45dAzWhsDgfWKCQF4bHfMeFFlNXWdBG2t68fkC1OM3Lw:1paBt5:Cp3auI0RXUwcnS-x5fUYDohz6_PerFTFB2XfxZIfk1k', '2023-03-23 08:44:35.602232'),
('qjjc40yotim2oqs835z0938501kuywos', '.eJxVjDsOgzAQRO_iOrIMXv9SpucMaNdexySRkTBUUe4ekCiScua9mbcYcVvLuDVeximJq-jE5bcjjE-uB0gPrPdZxrmuy0TyUORJmxzmxK_b6f4dFGxlX2vAwCqpgD576q0ByE45dAzWhsDgfWKCQF4bHfMeFFlNXWdBG2t68fkC1OM3Lw:1pcF6Q:EDEWBSevGVAKUWHuNY8jG_JsysEKdakPAx8wj_oCvuY', '2023-03-29 00:34:50.698789'),
('qydp0m6lnk0ktb8tzynquw9eushmunyc', '.eJxVjDsOgzAQRO_iOrIMXv9SpucMaNdexySRkTBUUe4ekCiScua9mbcYcVvLuDVeximJq-jE5bcjjE-uB0gPrPdZxrmuy0TyUORJmxzmxK_b6f4dFGxlX2vAwCqpgD576q0ByE45dAzWhsDgfWKCQF4bHfMeFFlNXWdBG2t68fkC1OM3Lw:1pcZ6Y:ZPkO7hGcrKDTITAZYSp2Mzt98c8a1lLNDjDkzgQ3hzY', '2023-03-29 21:56:18.034076'),
('yfa329au52dgexno0cdmec15yi312euy', '.eJxVjDsOgzAQRO_iOrIMXv9SpucMaNdexySRkTBUUe4ekCiScua9mbcYcVvLuDVeximJq-jE5bcjjE-uB0gPrPdZxrmuy0TyUORJmxzmxK_b6f4dFGxlX2vAwCqpgD576q0ByE45dAzWhsDgfWKCQF4bHfMeFFlNXWdBG2t68fkC1OM3Lw:1pahLu:LcWDORrXQNOBasNrZi3m8hR4tBHv8gGqoDy4LfN9XYY', '2023-03-24 18:20:26.875056');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `dashboard_appointment`
--
ALTER TABLE `dashboard_appointment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dashboard_contactform`
--
ALTER TABLE `dashboard_contactform`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dashboard_popupsubmission`
--
ALTER TABLE `dashboard_popupsubmission`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dashboard_product`
--
ALTER TABLE `dashboard_product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dashboard_appointment`
--
ALTER TABLE `dashboard_appointment`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `dashboard_contactform`
--
ALTER TABLE `dashboard_contactform`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `dashboard_popupsubmission`
--
ALTER TABLE `dashboard_popupsubmission`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `dashboard_product`
--
ALTER TABLE `dashboard_product`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
