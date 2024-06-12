-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jun 12, 2024 at 08:57 PM
-- Server version: 8.0.31
-- PHP Version: 8.1.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

DROP TABLE IF EXISTS `admins`;
CREATE TABLE IF NOT EXISTS `admins` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admins_email_unique` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Mariam Fahim', 'mariam.fahim.2003@gmail.com', '2023-05-15 08:47:58', '$2y$10$G.InbpUNRcs8KiK66iyyuuELJtmL4S1yHcME7pSQLlDWH9RV0DdFK', 'wimUOucoP7zDrz6NYnYdDgfElR0CeRvBTmiYz9NudxG0wlLV7kcX50UwqeIg', '2023-05-15 08:47:58', '2023-05-15 08:47:58');

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

DROP TABLE IF EXISTS `carts`;
CREATE TABLE IF NOT EXISTS `carts` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` int NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `town` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `carts_user_id_foreign` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `carts`
--

INSERT INTO `carts` (`id`, `user_id`, `name`, `email`, `phone`, `address`, `country`, `town`, `created_at`, `updated_at`) VALUES
(1, 21, 'mehdi', 'mehdi@gmail.com', 635210514, 'N 782 LOT CHARAF', 'Maroc', 'Marrakech', '2023-10-28 14:49:06', '2023-10-28 14:49:06'),
(2, 22, 'mariam', 'mariam.fahim.2003@gmail.com', 635210514, 'N 782 LOT CHARAF', 'Maroc', 'Marrakech', '2024-05-15 14:26:36', '2024-05-15 14:26:36'),
(3, 22, 'mariam', 'mariam.fahim.2003@gmail.com', 635210514, 'N 782 LOT CHARAF', 'Maroc', 'Marrakech', '2024-05-15 16:38:15', '2024-05-15 16:38:15');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `title`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Occaecati deserunt quo reprehenderit qui fugiat voluptatibus. Magnam laboriosam vitae quia. Repellendus nam ipsum repudiandae sit. Maiores aut sapiente aut et facere nihil.', 'consequuntur-ex-sit-quod-minus-beatae-sit-iure-omnis-eos-voluptatum-qui-soluta-quasi-eum-voluptatum-qui-et-cumque-dolores-repellat-et', '2023-05-15 08:47:58', '2023-05-15 08:47:58'),
(2, 'Voluptatum suscipit modi assumenda et nemo. Facere repudiandae animi at distinctio incidunt voluptatem. Dicta atque temporibus corrupti repellendus.', 'numquam-repellendus-eos-consequatur-corrupti-eos-molestias-omnis-perferendis-mollitia-repellat-officia-quae-est-deleniti-aliquid-culpa-dolor-dicta-ex-sint-est-iusto-molestiae-in', '2023-05-15 08:47:58', '2023-05-15 08:47:58'),
(3, 'Quae maiores quia natus at. Accusantium beatae sit quia neque. Accusantium eos laboriosam commodi et inventore est.', 'accusamus-eos-minus-reprehenderit-qui-velit-voluptatibus-eum-id-voluptas-aut-amet-nihil-ex-nobis-porro', '2023-05-15 08:47:58', '2023-05-15 08:47:58'),
(4, 'Veritatis quod iusto beatae unde. Consequatur dolore quas ducimus nihil. Ut numquam quis qui repudiandae. Libero accusamus similique consectetur voluptas blanditiis voluptatum amet.', 'animi-iure-consequatur-voluptatem-sunt-beatae-quia-incidunt-molestiae-qui-est-reprehenderit-excepturi-praesentium-vel-enim-fugiat-nemo-sint-libero-nostrum-consectetur-reprehenderit-est', '2023-05-15 08:47:58', '2023-05-15 08:47:58'),
(5, 'Quo aliquid delectus aut molestias non maxime ut totam. Non dolorem perferendis velit facere. Vero beatae laborum culpa.', 'aperiam-non-est-amet-nihil-dolor-qui-doloremque-consequuntur-provident-omnis-molestiae-ut-iure-reprehenderit-sunt-eos-suscipit-deleniti-eveniet', '2023-05-15 08:47:58', '2023-05-15 08:47:58'),
(6, 'Nemo consequatur atque dolores dolore iure sit ullam. Debitis sunt et corporis facilis qui atque. Eligendi et dolor et rerum aliquam.', 'quia-sint-asperiores-sint-consequatur-non-necessitatibus-et-qui-ipsa-debitis-odio-libero-nam-quis-harum-sed-neque-pariatur-cum-quia-voluptates-voluptas', '2023-05-15 08:47:58', '2023-05-15 08:47:58'),
(7, 'Amet pariatur omnis non fugit dicta. Itaque ea iste ut qui. Suscipit maxime omnis mollitia suscipit. Fugit aperiam omnis odit enim libero. Dolorum dolore dolor et asperiores.', 'voluptatibus-placeat-laboriosam-voluptatem-voluptas-nulla-dolorem-commodi-sit-sunt-nulla-praesentium-praesentium-sit-dicta-culpa-error-dolor-aut-officia-vero-facilis-rerum-natus-doloribus', '2023-05-15 08:47:58', '2023-05-15 08:47:58'),
(8, 'Atque tenetur non dolorem cumque eos. Quia enim nisi et cum sit illo. Sunt debitis repellendus tempore velit et non quo dolores. Ipsa dignissimos quibusdam doloribus id mollitia rerum.', 'vel-voluptatem-possimus-eum-autem-quo-ut-nihil-consequatur-eum-eaque-totam-rem-id-qui', '2023-05-15 08:47:58', '2023-05-15 08:47:58'),
(9, 'Possimus praesentium quidem ea vitae. Sint voluptas est voluptatem modi velit natus et. Nisi maxime quis id dolorem molestiae eos.', 'nihil-repudiandae-et-quis-rerum-amet-nulla-iure-voluptatem-sunt-minus-suscipit-totam-eum-et-fugiat-ut-dolorum-sed-eveniet', '2023-05-15 08:47:58', '2023-05-15 08:47:58'),
(10, 'Ut id reiciendis cumque rerum occaecati. Autem qui voluptas qui sint nisi cum ipsum harum. Aliquid veniam vero eius reiciendis et. Qui est et id voluptatem et ea fuga.', 'ea-aut-non-ea-dolores-est-animi-ut-numquam-eius-soluta-consequatur-ratione-distinctio-ex-dolor-quae-dolore-amet-temporibus-rem-deleniti-amet-sit', '2023-05-15 08:47:58', '2023-05-15 08:47:58');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

DROP TABLE IF EXISTS `contacts`;
CREATE TABLE IF NOT EXISTS `contacts` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_07_27_163912_create_categories_table', 1),
(6, '2022_07_27_164010_create_products_table', 1),
(7, '2022_07_27_164027_create_orders_table', 1),
(8, '2022_07_27_165429_create_admins_table', 1),
(9, '2022_08_19_193714_create_contacts_table', 1),
(10, '2022_08_31_193237_create_carts_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
CREATE TABLE IF NOT EXISTS `orders` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint UNSIGNED NOT NULL,
  `product_name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `qty` int NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `total` decimal(8,2) NOT NULL,
  `paid` tinyint(1) NOT NULL DEFAULT '0',
  `delivered` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `orders_user_id_foreign` (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `product_name`, `qty`, `price`, `total`, `paid`, `delivered`, `created_at`, `updated_at`) VALUES
(1, 3, 'Eius magni et qui numquam suscipit reprehenderit nisi. Optio non hic eligendi praesentium esse. Quo perferendis nulla aperiam quod dolorum natus et.', 6, '790.00', '5613.00', 0, 0, '2023-05-15 08:47:58', '2023-05-15 08:47:58'),
(2, 1, 'Dolores voluptate cupiditate praesentium unde est. Ea est commodi cumque labore.', 9, '497.00', '3764.00', 0, 0, '2023-05-15 08:47:58', '2023-05-15 08:47:58'),
(3, 3, 'Exercitationem distinctio enim et debitis nam. Ea amet molestias vel. Qui repellendus suscipit eos vitae.', 4, '267.00', '8536.00', 0, 0, '2023-05-15 08:47:58', '2023-05-15 08:47:58'),
(4, 1, 'Rerum ipsum quos distinctio hic dolor cum quo. Enim nesciunt quis laborum magni. Dolorum fugiat distinctio rerum voluptatibus ducimus aut quas et. Aut reprehenderit id ut et maxime non.', 2, '611.00', '1349.00', 0, 0, '2023-05-15 08:47:58', '2023-05-15 08:47:58'),
(5, 2, 'Voluptatum voluptas adipisci ut deleniti enim vel nihil. Labore tempora magni qui error. Qui est magni dolor.', 2, '151.00', '6708.00', 0, 0, '2023-05-15 08:47:58', '2023-05-15 08:47:58'),
(6, 7, 'Ut vel molestiae tempore accusantium. Ipsum vitae modi eum delectus sunt rem laborum.', 2, '126.00', '3553.00', 0, 0, '2023-05-15 08:47:58', '2023-05-15 08:47:58'),
(7, 3, 'Voluptas est sint tempore aut odio nihil. Ipsam magnam eius non id tempore. Autem quia et vel. Doloremque ducimus quis id.', 5, '399.00', '7435.00', 0, 0, '2023-05-15 08:47:58', '2023-05-15 08:47:58'),
(8, 5, 'Sint quibusdam est consequatur repudiandae tempore enim consequatur. Ut ut et labore et ut vero.', 10, '664.00', '7064.00', 0, 0, '2023-05-15 08:47:58', '2023-05-15 08:47:58'),
(9, 9, 'Provident fugit enim voluptates nihil qui et rerum. Magnam eum repellat officiis fuga alias modi. Suscipit illo assumenda perferendis et voluptas quo.', 9, '207.00', '4600.00', 0, 0, '2023-05-15 08:47:58', '2023-05-15 08:47:58'),
(10, 5, 'Soluta neque sit fuga rerum et et. Ullam ut et sapiente. Sed temporibus dignissimos nihil at autem et. Molestias quidem quos assumenda ea nihil animi velit.', 8, '261.00', '2556.00', 0, 0, '2023-05-15 08:47:58', '2023-05-15 08:47:58');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` decimal(8,2) NOT NULL DEFAULT '0.00',
  `old_price` decimal(8,2) NOT NULL DEFAULT '0.00',
  `inStock` int NOT NULL DEFAULT '0',
  `qty` int NOT NULL DEFAULT '0',
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `products_category_id_foreign` (`category_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `title`, `slug`, `description`, `price`, `old_price`, `inStock`, `qty`, `image`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 'product 1', 'product-1', 'description 1', '500.00', '200.00', 5, 0, 'images/products/1698507471_chopper 100 bounty.jpeg', 1, '2023-05-15 08:47:58', '2023-10-28 14:37:51'),
(2, 'Dolorem omnis tenetur temporibus nostrum suscipit dolor laudantium quia. Est nostrum commodi quia quo deserunt aperiam aut. Est et rerum nobis.', 'et-amet-sunt-necessitatibus-qui-dolor-aliquid-ut-sunt-iste-impedit-dolorem-eius-tempore-qui-iure-et-voluptatem-ratione-ratione-nihil-dolores-non-unde-optio', 'Dolores neque dicta aut recusandae porro. Reprehenderit vitae tenetur temporibus vero. Rem voluptatum impedit alias quia.', '706.00', '779.00', 6, 0, 'https://via.placeholder.com/640x480.png/00ccdd?text=voluptas', 2, '2023-05-15 08:47:58', '2023-05-15 08:47:58'),
(3, 'Voluptates et ipsum eius qui praesentium illum non est. Sit vel sit tempora non laboriosam atque omnis impedit. Debitis maiores quo blanditiis earum quasi odio. Atque est voluptatem omnis ipsa.', 'facilis-quam-sint-corrupti-suscipit-et-quis-et-omnis-sunt-sit-ut-quo-sint-quas-expedita-ut-ut-quia-fugiat-iusto-vero-veniam-omnis', 'Est ea ipsam consectetur totam reprehenderit ut itaque. Et amet commodi qui asperiores. Eveniet tempora nam facilis. Non exercitationem doloremque laboriosam magnam qui nihil.', '247.00', '546.00', 4, 0, 'https://via.placeholder.com/640x480.png/005566?text=cum', 3, '2023-05-15 08:47:58', '2023-05-15 08:47:58'),
(4, 'Id a sit est reprehenderit quo quibusdam. Accusantium quod ab animi et nihil sed.', 'dolores-error-unde-earum-minima-asperiores-rem-fuga-et-quia-temporibus-facilis-vel-officiis-optio-perspiciatis-assumenda-enim-in-minima-ut-facere', 'Aperiam sit tenetur deserunt similique dignissimos eum. Delectus eos quis quis quo quidem. Nemo magnam perferendis aspernatur ut laborum velit.', '898.00', '841.00', 5, 0, 'https://via.placeholder.com/640x480.png/00eedd?text=possimus', 10, '2023-05-15 08:47:58', '2023-05-15 08:47:58'),
(5, 'Laboriosam ullam ad iusto odit ut vero corrupti. Maiores et aut nesciunt beatae enim fugit ut. Recusandae suscipit consequatur et quod.', 'voluptas-explicabo-rerum-ea-harum-maiores-possimus-numquam-quisquam-aperiam-explicabo-iusto-modi-ut-beatae-repellendus-odit-delectus', 'Aut sint ex saepe sed voluptate omnis. Excepturi dolores a totam minima. Quo sit nihil animi totam sed pariatur quis. Fugiat labore consequatur beatae.', '326.00', '556.00', 7, 0, 'https://via.placeholder.com/640x480.png/005599?text=quos', 3, '2023-05-15 08:47:58', '2023-05-15 08:47:58'),
(6, 'Enim veniam adipisci aut. Tempore ratione esse quo. Aperiam doloremque voluptas quibusdam similique provident ducimus in. Illum facere est ea ipsam facilis autem.', 'ut-sed-qui-hic-maxime-aut-id-est-placeat-facere-hic-dolorem-omnis-qui-magni-et-doloribus-nesciunt-corporis-modi-et-est-similique-nostrum-eligendi-suscipit-ratione-dolore-et-odit-in', 'Est ex dolor nihil beatae nihil rem. Similique minima qui ut reiciendis. Ex quo dicta provident ut nostrum ut corporis qui. Praesentium illum vitae et minima.', '183.00', '330.00', 10, 0, 'https://via.placeholder.com/640x480.png/004455?text=nulla', 3, '2023-05-15 08:47:58', '2023-05-15 08:47:58'),
(7, 'Eos magni pariatur qui. Voluptate rerum voluptas autem facere iusto blanditiis et. Ullam qui in officia. Et eaque repellat adipisci laudantium.', 'exercitationem-minus-doloremque-dolorem-perspiciatis-ut-non-voluptates-ut-tempora-eos-pariatur-et-cupiditate-ad-consequuntur-vero-id-ipsum', 'Quas nulla nam molestiae sit inventore. Quia reprehenderit doloribus dolorem. Autem vel earum quia aperiam nulla ut reprehenderit.', '209.00', '866.00', 8, 0, 'https://via.placeholder.com/640x480.png/002233?text=aut', 7, '2023-05-15 08:47:58', '2023-05-15 08:47:58'),
(8, 'Placeat autem repellat ea provident dolore itaque qui. Enim repellat eos quia quo. Omnis omnis recusandae rem aliquam qui aspernatur fuga.', 'ipsa-non-mollitia-totam-accusantium-rerum-quasi-nesciunt-voluptatem-atque-ut-quasi-consequatur-mollitia-at-dolor-fuga-hic-sed-animi-est-repudiandae-nam-animi-repudiandae-vel-vitae', 'Qui officia cumque quo sit. Aut dolor ad veniam nam. Est cupiditate aut et ut minus occaecati impedit. Necessitatibus saepe eligendi autem dolorem sapiente.', '800.00', '360.00', 9, 0, 'https://via.placeholder.com/640x480.png/0033cc?text=sequi', 2, '2023-05-15 08:47:58', '2023-05-15 08:47:58'),
(9, 'Rerum eos ex cum et consequatur sunt. Temporibus nihil odio delectus quam et quos ea. Aut doloremque dolores totam voluptates rerum eius. Nihil est corrupti aliquam et ut mollitia possimus ipsum.', 'dolor-sapiente-repellat-provident-repellendus-nulla-voluptas-non-minus-aperiam-illo-enim-enim-est-rerum', 'Neque amet neque ut fugit rem. Quis veniam laboriosam magni incidunt sit similique quas et. Nulla natus id quo et est cumque et. Odio aspernatur nobis ipsam et culpa quo quo.', '879.00', '277.00', 3, 0, 'https://via.placeholder.com/640x480.png/007766?text=hic', 7, '2023-05-15 08:47:58', '2023-05-15 08:47:58'),
(10, 'Incidunt dicta voluptates perspiciatis optio. Occaecati modi minima aliquid sit. Quis neque in laboriosam omnis quibusdam eligendi veritatis.', 'ut-fugiat-et-odio-doloremque-quidem-maxime-unde-ex-qui-illum-debitis-maxime-rem-est-provident-delectus-omnis-velit', 'Quam cumque assumenda id dolor. Commodi sit perferendis similique ut autem. Sint laboriosam dolorem odio sit enim.', '614.00', '630.00', 1, 0, 'https://via.placeholder.com/640x480.png/005588?text=modi', 3, '2023-05-15 08:47:58', '2023-05-15 08:47:58');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Prof. Gabriel Leannon V', 'janiya.swaniawski@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'eUtVvplbz0', '2023-05-15 08:47:58', '2023-05-15 08:47:58'),
(2, 'Berniece Batz', 'napoleon.feest@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '96tE6ccOM1', '2023-05-15 08:47:58', '2023-05-15 08:47:58'),
(3, 'Miss Arielle Thiel', 'luisa98@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'scm97H2FXe', '2023-05-15 08:47:58', '2023-05-15 08:47:58'),
(4, 'Verda King', 'miracle41@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'FnTAzLwkbq', '2023-05-15 08:47:58', '2023-05-15 08:47:58'),
(5, 'Lisette Wolff MD', 'freda76@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '6I6R1ATk7w', '2023-05-15 08:47:58', '2023-05-15 08:47:58'),
(6, 'Noelia Senger', 'sbeier@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'b5oiFv9qWO', '2023-05-15 08:47:58', '2023-05-15 08:47:58'),
(7, 'Rodolfo Walter', 'annie.kiehn@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'feeHgorHQe', '2023-05-15 08:47:58', '2023-05-15 08:47:58'),
(8, 'Marguerite Grant', 'elsa14@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'X0Jm3Xa9TU', '2023-05-15 08:47:58', '2023-05-15 08:47:58'),
(9, 'Mrs. Florine Vandervort V', 'marquise03@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'vbXPnW6BEh', '2023-05-15 08:47:58', '2023-05-15 08:47:58'),
(10, 'Eddie Bednar', 'christiansen.mike@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2iJHuSzGJ7', '2023-05-15 08:47:58', '2023-05-15 08:47:58'),
(11, 'May Nolan', 'valentina04@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '4U8hotlQia', '2023-05-15 08:47:58', '2023-05-15 08:47:58'),
(12, 'Miss Angelina Hills I', 'mjacobs@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'OhVSPpBL1R', '2023-05-15 08:47:58', '2023-05-15 08:47:58'),
(13, 'Destiny Farrell', 'beth06@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'NYda9APJT5', '2023-05-15 08:47:58', '2023-05-15 08:47:58'),
(14, 'Dalton Jast', 'bergstrom.savanna@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'st5Sut73Ck', '2023-05-15 08:47:58', '2023-05-15 08:47:58'),
(15, 'Prof. Lila Abbott', 'gwalsh@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'VC83VAtRL9', '2023-05-15 08:47:58', '2023-05-15 08:47:58'),
(16, 'Grover Schuppe', 'christina.boyer@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '89611p535s', '2023-05-15 08:47:58', '2023-05-15 08:47:58'),
(17, 'Hailey Schuppe', 'aylin.klocko@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'nG3TEr9vNW', '2023-05-15 08:47:58', '2023-05-15 08:47:58'),
(18, 'Ms. Myrtice Schoen', 'cecelia.barton@example.org', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'AFvCcdlEf7', '2023-05-15 08:47:58', '2023-05-15 08:47:58'),
(19, 'Flossie Bahringer', 'lydia.kirlin@example.com', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'v89K9ZuZv4', '2023-05-15 08:47:58', '2023-05-15 08:47:58'),
(20, 'Kallie Feest', 'bmedhurst@example.net', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'XQtNljWpQz', '2023-05-15 08:47:58', '2023-05-15 08:47:58'),
(22, 'mariam', 'mariam.fahim.2003@gmail.com', '$2y$10$W8wDo.3WdsAodfhmeoMt7OY36TiMAnyQdllqp/x5ZUP3frwlz.cfi', NULL, '2024-05-15 14:23:52', '2024-05-15 14:23:52');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
