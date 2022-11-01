-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Nov 01, 2022 at 10:35 AM
-- Server version: 5.7.36
-- PHP Version: 7.4.26

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
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` decimal(8,2) NOT NULL DEFAULT '0.00',
  `old_price` decimal(8,2) NOT NULL DEFAULT '0.00',
  `inStock` int(11) NOT NULL DEFAULT '0',
  `qty` int(11) NOT NULL DEFAULT '0',
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `products_category_id_foreign` (`category_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `title`, `slug`, `description`, `price`, `old_price`, `inStock`, `qty`, `image`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 'Product 1', 'sapiente-ex-amet-culpa-sit-voluptas-facere-iusto-voluptas-atque-in-quia-eos-expedita-ab-consequatur-non-aliquid-in-in-assumenda-ut', 'Et voluptatem est pariatur et. Dolor saepe voluptas saepe et quae ex. Error aut ratione rem sed. Occaecati odit dolores ducimus ullam quis.', '375.00', '335.00', 6, 0, 'https://picsum.photos/600', 10, '2022-10-29 12:34:57', '2022-10-29 12:34:57'),
(2, 'Product 2', 'ex-eos-et-doloribus-officia-excepturi-harum-sequi-quia-ut-aut-sed', 'Qui error ducimus facere consequatur error. Dolorem eos sed sed fugit. Dolorem facere expedita excepturi est cupiditate dolores hic delectus. Natus nihil alias deserunt molestiae quod alias corporis.', '757.00', '842.00', 5, 0, 'https://picsum.photos/600', 9, '2022-10-29 12:34:57', '2022-10-29 12:34:57'),
(3, 'Product 3', 'et-occaecati-eaque-asperiores-omnis-maxime-velit-quae-hic-nesciunt-expedita-ut-soluta-sit-magnam-vitae-a-dignissimos-ut-et-et', 'Voluptatibus et labore qui ratione libero voluptatem qui. Eos nam perferendis cum fugit est. Id sit quis accusamus et perferendis excepturi velit sit.', '519.00', '655.00', 10, 0, 'https://picsum.photos/600', 4, '2022-10-29 12:34:57', '2022-10-29 12:34:57'),
(4, 'Product 4', 'voluptatem-autem-ut-et-nesciunt-illum-quae-sequi-facilis-nemo-quasi-sint-autem-impedit-et-eligendi-perferendis-corrupti-explicabo-dignissimos', 'Voluptatibus reprehenderit eius sed et. Nisi ea quaerat ipsum. Aliquam ratione eveniet consequatur cumque. Amet architecto et architecto veniam.', '515.00', '583.00', 3, 0, 'https://picsum.photos/600', 10, '2022-10-29 12:34:57', '2022-10-29 12:34:57'),
(5, 'Product 5', 'reiciendis-est-et-nisi-expedita-accusamus-voluptatem-veritatis-beatae-culpa-ut-nulla-blanditiis-libero-laudantium-sed-quo-quia-sint-asperiores-placeat-sit-error-tenetur', 'Non adipisci delectus molestiae adipisci quos adipisci. Porro deserunt sed animi ut est aut sed. Aspernatur ipsum sapiente aliquam ratione dolor.', '710.00', '348.00', 8, 0, 'https://picsum.photos/600', 1, '2022-10-29 12:34:57', '2022-10-29 12:34:57'),
(6, 'Product 6', 'consectetur-asperiores-voluptate-quia-et-ut-voluptatem-dolorem-est-ratione-sapiente-id-dolor-voluptatem-voluptas-ut-sint-consequuntur-est-nobis', 'Impedit at est eaque voluptatum et sint dicta. Voluptatem recusandae velit et cupiditate.', '650.00', '684.00', 8, 0, 'https://picsum.photos/600', 6, '2022-10-29 12:34:57', '2022-10-29 12:34:57'),
(7, 'Product 7', 'aut-possimus-maiores-eum-eum-veritatis-neque-facilis-odio-veritatis-assumenda-nisi-voluptatem-repellendus-qui-est-quas-perferendis-odit-ut-nesciunt-officia-corporis-sit-laudantium-maxime', 'Ipsam sapiente qui natus labore nostrum asperiores. Maiores placeat molestias aut quod dolore optio. Voluptatem est delectus quas tempora et qui.', '470.00', '473.00', 6, 0, 'https://picsum.photos/600', 3, '2022-10-29 12:34:57', '2022-10-29 12:34:57'),
(8, 'Product 8', 'et-ut-sed-itaque-quaerat-optio-et-facere-ut-dolorem-qui-qui-voluptatem-adipisci-veritatis-placeat-tempora-illo-cum-optio-explicabo-omnis', 'Odio omnis blanditiis non aut facilis doloremque aut. Consectetur dignissimos voluptate facere assumenda illum. Dignissimos quia ipsam officiis ex. Deleniti cum iure perferendis culpa quae ut.', '155.00', '318.00', 6, 0, 'https://picsum.photos/600', 7, '2022-10-29 12:34:57', '2022-10-29 12:34:57'),
(9, 'Product 9', 'dolores-quidem-itaque-ut-doloremque-et-expedita-aut-dolore-quia-nobis-nam-eos-est-tempore-adipisci-id-quae-recusandae-et-sunt-nobis-accusamus-qui-itaque-veniam', 'Enim non nam dicta ullam aut quia necessitatibus. Repudiandae voluptate rerum rem assumenda. Non qui error laboriosam illum et dignissimos. Ullam modi minus libero facilis sit aliquid alias. Ullam molestias soluta autem temporibus culpa.', '105.00', '519.00', 5, 0, 'https://picsum.photos/600', 8, '2022-10-29 12:34:57', '2022-10-29 12:34:57'),
(10, 'Product 10', 'qui-sint-ullam-dolorum-ut-sit-accusamus-esse-soluta-labore-commodi-fugiat-voluptates', 'Facere ipsa illum neque. Rerum harum explicabo blanditiis. Autem id maiores ipsum.', '287.00', '349.00', 5, 0, 'https://picsum.photos/600', 3, '2022-10-29 12:34:57', '2022-10-29 12:34:57');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
