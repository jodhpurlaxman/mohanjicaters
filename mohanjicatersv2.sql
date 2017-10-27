-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 27, 2017 at 04:58 PM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mohanjicatersv2`
--
CREATE DATABASE IF NOT EXISTS `mohanjicatersv2` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `mohanjicatersv2`;

-- --------------------------------------------------------

--
-- Table structure for table `addresses_address`
--

CREATE TABLE `addresses_address` (
  `id` int(11) NOT NULL,
  `address_type` varchar(120) COLLATE utf8_bin NOT NULL,
  `address_line_1` varchar(120) COLLATE utf8_bin NOT NULL,
  `address_line_2` varchar(120) COLLATE utf8_bin DEFAULT NULL,
  `city` varchar(120) COLLATE utf8_bin NOT NULL,
  `country` varchar(120) COLLATE utf8_bin NOT NULL,
  `state` varchar(120) COLLATE utf8_bin NOT NULL,
  `postal_code` varchar(120) COLLATE utf8_bin NOT NULL,
  `billing_profile_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(80) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_bin NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can add permission', 2, 'add_permission'),
(5, 'Can change permission', 2, 'change_permission'),
(6, 'Can delete permission', 2, 'delete_permission'),
(7, 'Can add group', 3, 'add_group'),
(8, 'Can change group', 3, 'change_group'),
(9, 'Can delete group', 3, 'delete_group'),
(10, 'Can add user', 4, 'add_user'),
(11, 'Can change user', 4, 'change_user'),
(12, 'Can delete user', 4, 'delete_user'),
(13, 'Can add content type', 5, 'add_contenttype'),
(14, 'Can change content type', 5, 'change_contenttype'),
(15, 'Can delete content type', 5, 'delete_contenttype'),
(16, 'Can add session', 6, 'add_session'),
(17, 'Can change session', 6, 'change_session'),
(18, 'Can delete session', 6, 'delete_session'),
(19, 'Can add user social auth', 7, 'add_usersocialauth'),
(20, 'Can change user social auth', 7, 'change_usersocialauth'),
(21, 'Can delete user social auth', 7, 'delete_usersocialauth'),
(22, 'Can add association', 8, 'add_association'),
(23, 'Can change association', 8, 'change_association'),
(24, 'Can delete association', 8, 'delete_association'),
(25, 'Can add code', 9, 'add_code'),
(26, 'Can change code', 9, 'change_code'),
(27, 'Can delete code', 9, 'delete_code'),
(28, 'Can add nonce', 10, 'add_nonce'),
(29, 'Can change nonce', 10, 'change_nonce'),
(30, 'Can delete nonce', 10, 'delete_nonce'),
(31, 'Can add partial', 11, 'add_partial'),
(32, 'Can change partial', 11, 'change_partial'),
(33, 'Can delete partial', 11, 'delete_partial'),
(34, 'Can add guest email', 12, 'add_guestemail'),
(35, 'Can change guest email', 12, 'change_guestemail'),
(36, 'Can delete guest email', 12, 'delete_guestemail'),
(37, 'Can add address', 13, 'add_address'),
(38, 'Can change address', 13, 'change_address'),
(39, 'Can delete address', 13, 'delete_address'),
(40, 'Can add billing profile', 14, 'add_billingprofile'),
(41, 'Can change billing profile', 14, 'change_billingprofile'),
(42, 'Can delete billing profile', 14, 'delete_billingprofile'),
(43, 'Can add cart', 15, 'add_cart'),
(44, 'Can change cart', 15, 'change_cart'),
(45, 'Can delete cart', 15, 'delete_cart'),
(46, 'Can add order', 16, 'add_order'),
(47, 'Can change order', 16, 'change_order'),
(48, 'Can delete order', 16, 'delete_order'),
(49, 'Can add product', 17, 'add_product'),
(50, 'Can change product', 17, 'change_product'),
(51, 'Can delete product', 17, 'delete_product'),
(52, 'Can add category1', 18, 'add_category1'),
(53, 'Can change category1', 18, 'change_category1'),
(54, 'Can delete category1', 18, 'delete_category1'),
(55, 'Can add tag', 19, 'add_tag'),
(56, 'Can change tag', 19, 'change_tag'),
(57, 'Can delete tag', 19, 'delete_tag'),
(58, 'Can add brands', 20, 'add_brands'),
(59, 'Can change brands', 20, 'change_brands'),
(60, 'Can delete brands', 20, 'delete_brands');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) COLLATE utf8_bin NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) COLLATE utf8_bin NOT NULL,
  `first_name` varchar(30) COLLATE utf8_bin NOT NULL,
  `last_name` varchar(30) COLLATE utf8_bin NOT NULL,
  `email` varchar(254) COLLATE utf8_bin NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$36000$UTO8xq2Lzeg1$ri+b1uHqfJYcqDc+eoNZQZSIRKtG048Pwl1pYcc6Sg8=', '2017-10-27 11:15:14.378568', 1, 'it', '', '', '', 1, 1, '2017-10-24 09:59:54.917389');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `billing_billingprofile`
--

CREATE TABLE `billing_billingprofile` (
  `id` int(11) NOT NULL,
  `email` varchar(254) COLLATE utf8_bin NOT NULL,
  `active` tinyint(1) NOT NULL,
  `update` datetime(6) NOT NULL,
  `timestamp` datetime(6) NOT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `billing_billingprofile`
--

INSERT INTO `billing_billingprofile` (`id`, `email`, `active`, `update`, `timestamp`, `user_id`) VALUES
(1, '', 1, '2017-10-24 10:03:13.691149', '2017-10-24 10:03:13.691208', 1);

-- --------------------------------------------------------

--
-- Table structure for table `carts_cart`
--

CREATE TABLE `carts_cart` (
  `id` int(11) NOT NULL,
  `subtotal` decimal(65,2) NOT NULL,
  `total` decimal(65,2) NOT NULL,
  `updated` datetime(6) NOT NULL,
  `timestamp` datetime(6) NOT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `carts_cart`
--

INSERT INTO `carts_cart` (`id`, `subtotal`, `total`, `updated`, `timestamp`, `user_id`) VALUES
(1, '900.00', '972.00', '2017-10-24 10:03:07.850234', '2017-10-24 10:03:01.110780', 1);

-- --------------------------------------------------------

--
-- Table structure for table `carts_cart_products`
--

CREATE TABLE `carts_cart_products` (
  `id` int(11) NOT NULL,
  `cart_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `carts_cart_products`
--

INSERT INTO `carts_cart_products` (`id`, `cart_id`, `product_id`) VALUES
(1, 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `category_category1`
--

CREATE TABLE `category_category1` (
  `id` int(11) NOT NULL,
  `title` varchar(120) COLLATE utf8_bin NOT NULL,
  `description` longtext COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `category_category1`
--

INSERT INTO `category_category1` (`id`, `title`, `description`) VALUES
(1, 'Food', 'Food Products'),
(2, 'Froots', 'Froots items');

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext COLLATE utf8_bin,
  `object_repr` varchar(200) COLLATE utf8_bin NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext COLLATE utf8_bin NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2017-10-24 10:00:52.993972', '1', 'Food', 1, '[{"added": {}}]', 18, 1),
(2, '2017-10-24 10:00:54.694431', '1', 'Food', 2, '[]', 18, 1),
(3, '2017-10-24 10:01:35.772279', '2', 'Froots', 1, '[{"added": {}}]', 18, 1),
(4, '2017-10-24 10:02:34.453597', '1', 'Kaju Katri', 1, '[{"added": {}}]', 17, 1),
(5, '2017-10-24 10:02:57.015909', '2', 'Anjir Barfi', 1, '[{"added": {}}]', 17, 1),
(6, '2017-10-24 10:03:30.407583', '2', 'Anjir Barfi', 2, '[]', 17, 1),
(7, '2017-10-24 10:03:32.363820', '2', 'Anjir Barfi', 2, '[]', 17, 1),
(8, '2017-10-24 10:03:48.440737', '3', 'Akhrot Qube', 1, '[{"added": {}}]', 17, 1),
(9, '2017-10-24 10:04:14.318123', '4', 'Rasgulla Tin', 1, '[{"added": {}}]', 17, 1),
(10, '2017-10-27 11:16:03.890201', '1', 'Brands object', 1, '[{"added": {}}]', 20, 1),
(11, '2017-10-27 11:16:11.077680', '2', 'Brands object', 1, '[{"added": {}}]', 20, 1),
(12, '2017-10-27 11:27:16.753881', '4', 'Rasgulla Tin', 2, '[{"changed": {"fields": ["brand"]}}]', 17, 1),
(13, '2017-10-27 11:27:26.591603', '3', 'Akhrot Qube', 2, '[{"changed": {"fields": ["brand"]}}]', 17, 1),
(14, '2017-10-27 11:27:36.815339', '2', 'Anjir Barfi', 2, '[{"changed": {"fields": ["brand"]}}]', 17, 1),
(15, '2017-10-27 11:27:44.051596', '1', 'Kaju Katri', 2, '[{"changed": {"fields": ["brand"]}}]', 17, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) COLLATE utf8_bin NOT NULL,
  `model` varchar(100) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(12, 'accounts', 'guestemail'),
(13, 'addresses', 'address'),
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(14, 'billing', 'billingprofile'),
(15, 'carts', 'cart'),
(18, 'category', 'category1'),
(5, 'contenttypes', 'contenttype'),
(16, 'orders', 'order'),
(20, 'products', 'brands'),
(17, 'products', 'product'),
(6, 'sessions', 'session'),
(8, 'social_django', 'association'),
(9, 'social_django', 'code'),
(10, 'social_django', 'nonce'),
(11, 'social_django', 'partial'),
(7, 'social_django', 'usersocialauth'),
(19, 'tags', 'tag');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) COLLATE utf8_bin NOT NULL,
  `name` varchar(255) COLLATE utf8_bin NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2017-10-24 09:58:07.026447'),
(2, 'auth', '0001_initial', '2017-10-24 09:58:21.474351'),
(3, 'billing', '0001_initial', '2017-10-24 09:58:23.615134'),
(4, 'addresses', '0001_initial', '2017-10-24 09:58:25.458491'),
(5, 'admin', '0001_initial', '2017-10-24 09:58:28.541905'),
(6, 'admin', '0002_logentry_remove_auto_add', '2017-10-24 09:58:28.601870'),
(7, 'contenttypes', '0002_remove_content_type_name', '2017-10-24 09:58:30.484647'),
(8, 'auth', '0002_alter_permission_name_max_length', '2017-10-24 09:58:31.945224'),
(9, 'auth', '0003_alter_user_email_max_length', '2017-10-24 09:58:33.321492'),
(10, 'auth', '0004_alter_user_username_opts', '2017-10-24 09:58:33.405934'),
(11, 'auth', '0005_alter_user_last_login_null', '2017-10-24 09:58:34.139934'),
(12, 'auth', '0006_require_contenttypes_0002', '2017-10-24 09:58:34.218559'),
(13, 'auth', '0007_alter_validators_add_error_messages', '2017-10-24 09:58:34.332723'),
(14, 'auth', '0008_alter_user_username_max_length', '2017-10-24 09:58:35.661526'),
(15, 'category', '0001_initial', '2017-10-24 09:58:36.508220'),
(16, 'products', '0001_initial', '2017-10-24 09:58:38.604075'),
(17, 'carts', '0001_initial', '2017-10-24 09:58:43.807127'),
(18, 'orders', '0001_initial', '2017-10-24 09:58:50.195115'),
(19, 'sessions', '0001_initial', '2017-10-24 09:58:51.019596'),
(20, 'default', '0001_initial', '2017-10-24 09:58:55.829277'),
(21, 'social_auth', '0001_initial', '2017-10-24 09:58:55.883528'),
(22, 'default', '0002_add_related_name', '2017-10-24 09:58:57.591603'),
(23, 'social_auth', '0002_add_related_name', '2017-10-24 09:58:57.651016'),
(24, 'default', '0003_alter_email_max_length', '2017-10-24 09:58:59.265834'),
(25, 'social_auth', '0003_alter_email_max_length', '2017-10-24 09:58:59.331193'),
(26, 'default', '0004_auto_20160423_0400', '2017-10-24 09:58:59.399285'),
(27, 'social_auth', '0004_auto_20160423_0400', '2017-10-24 09:58:59.473238'),
(28, 'social_auth', '0005_auto_20160727_2333', '2017-10-24 09:59:00.195797'),
(29, 'social_django', '0006_partial', '2017-10-24 09:59:01.014239'),
(30, 'tags', '0001_initial', '2017-10-24 09:59:05.766070'),
(31, 'social_django', '0005_auto_20160727_2333', '2017-10-24 09:59:05.850486'),
(32, 'social_django', '0001_initial', '2017-10-24 09:59:05.907365'),
(33, 'social_django', '0004_auto_20160423_0400', '2017-10-24 09:59:05.970610'),
(34, 'social_django', '0002_add_related_name', '2017-10-24 09:59:06.016188'),
(35, 'social_django', '0003_alter_email_max_length', '2017-10-24 09:59:06.054187'),
(36, 'products', '0002_auto_20171027_1103', '2017-10-27 11:03:40.558969'),
(37, 'products', '0003_auto_20171027_1300', '2017-10-27 13:00:58.940409');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) COLLATE utf8_bin NOT NULL,
  `session_data` longtext COLLATE utf8_bin NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('l54tp7idowemcvjqu3dz6g2nzbac3t6e', 'MGU0ZjkzZjhjNzBhZTExMDc4ZDdmODI1NWQyYzMzYzUyN2VlMmM4Mzp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJiMzFkMDY2NzVlZjg0ZmQxMWJmYTQ3ZTgzNmIyNTY1MWIyNTQ1ZmZjIn0=', '2017-11-10 11:15:14.512712'),
('uomb9ke5x630ts6gipj5v4d7u4uobc49', 'YTc5OTBlYTE3MzJjZDQzYmI0ZDNjYjI5MGEzZmIyMWJmYWM3NDY1Zjp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiY2FydF9pZCI6MSwiX2F1dGhfdXNlcl9oYXNoIjoiYjMxZDA2Njc1ZWY4NGZkMTFiZmE0N2U4MzZiMjU2NTFiMjU0NWZmYyIsImNhcnRfaXRlbXMiOjEsIl9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIn0=', '2017-11-07 10:03:07.990606');

-- --------------------------------------------------------

--
-- Table structure for table `orders_order`
--

CREATE TABLE `orders_order` (
  `id` int(11) NOT NULL,
  `order_id` varchar(120) COLLATE utf8_bin NOT NULL,
  `status` varchar(120) COLLATE utf8_bin NOT NULL,
  `shipping_total` decimal(65,2) NOT NULL,
  `total` decimal(65,2) NOT NULL,
  `active` tinyint(1) NOT NULL,
  `billing_address_id` int(11) DEFAULT NULL,
  `billing_profile_id` int(11) DEFAULT NULL,
  `cart_id` int(11) NOT NULL,
  `shipping_address_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `orders_order`
--

INSERT INTO `orders_order` (`id`, `order_id`, `status`, `shipping_total`, `total`, `active`, `billing_address_id`, `billing_profile_id`, `cart_id`, `shipping_address_id`) VALUES
(1, '5flnliif2z', 'created', '5.99', '977.99', 1, NULL, 1, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `products_brands`
--

CREATE TABLE `products_brands` (
  `id` int(11) NOT NULL,
  `title` varchar(120) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `products_brands`
--

INSERT INTO `products_brands` (`id`, `title`) VALUES
(1, 'Bikaji'),
(2, 'HaldiRam');

-- --------------------------------------------------------

--
-- Table structure for table `products_product`
--

CREATE TABLE `products_product` (
  `id` int(11) NOT NULL,
  `title` varchar(120) COLLATE utf8_bin NOT NULL,
  `slug` varchar(50) COLLATE utf8_bin NOT NULL,
  `description` longtext COLLATE utf8_bin NOT NULL,
  `price` decimal(20,2) NOT NULL,
  `image` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `featured` tinyint(1) NOT NULL,
  `active` tinyint(1) NOT NULL,
  `timestamp` datetime(6) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `brands_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `products_product`
--

INSERT INTO `products_product` (`id`, `title`, `slug`, `description`, `price`, `image`, `featured`, `active`, `timestamp`, `category_id`, `brands_id`) VALUES
(1, 'Kaju Katri', 'kaju-katri', 'Kaju Katri', '790.00', 'products/1536162061/1536162061.png', 0, 1, '2017-10-24 10:02:34.451694', 1, 2),
(2, 'Anjir Barfi', 'anjir-barfi', 'Anjir Barfi', '900.00', 'products/3176658901/3176658901.png', 0, 1, '2017-10-24 10:02:57.014864', 1, 1),
(3, 'Akhrot Qube', 'akhrot-qube', 'Akhrot Qube', '500.00', 'products/1168390229/1168390229.jpg', 0, 1, '2017-10-24 10:03:48.439726', 2, 2),
(4, 'Rasgulla Tin', 'rasgulla-tin', 'Rasgulla Tin', '200.00', 'products/2150842864/2150842864.jpg', 0, 1, '2017-10-24 10:04:14.317128', 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `social_auth_association`
--

CREATE TABLE `social_auth_association` (
  `id` int(11) NOT NULL,
  `server_url` varchar(255) COLLATE utf8_bin NOT NULL,
  `handle` varchar(255) COLLATE utf8_bin NOT NULL,
  `secret` varchar(255) COLLATE utf8_bin NOT NULL,
  `issued` int(11) NOT NULL,
  `lifetime` int(11) NOT NULL,
  `assoc_type` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `social_auth_code`
--

CREATE TABLE `social_auth_code` (
  `id` int(11) NOT NULL,
  `email` varchar(254) COLLATE utf8_bin NOT NULL,
  `code` varchar(32) COLLATE utf8_bin NOT NULL,
  `verified` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `social_auth_nonce`
--

CREATE TABLE `social_auth_nonce` (
  `id` int(11) NOT NULL,
  `server_url` varchar(255) COLLATE utf8_bin NOT NULL,
  `timestamp` int(11) NOT NULL,
  `salt` varchar(65) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `social_auth_partial`
--

CREATE TABLE `social_auth_partial` (
  `id` int(11) NOT NULL,
  `token` varchar(32) COLLATE utf8_bin NOT NULL,
  `next_step` smallint(5) UNSIGNED NOT NULL,
  `backend` varchar(32) COLLATE utf8_bin NOT NULL,
  `data` longtext COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `social_auth_usersocialauth`
--

CREATE TABLE `social_auth_usersocialauth` (
  `id` int(11) NOT NULL,
  `provider` varchar(32) COLLATE utf8_bin NOT NULL,
  `uid` varchar(255) COLLATE utf8_bin NOT NULL,
  `extra_data` longtext COLLATE utf8_bin NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `tags_tag`
--

CREATE TABLE `tags_tag` (
  `id` int(11) NOT NULL,
  `title` varchar(120) COLLATE utf8_bin NOT NULL,
  `slug` varchar(50) COLLATE utf8_bin NOT NULL,
  `timestamp` datetime(6) NOT NULL,
  `active` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `tags_tag_products`
--

CREATE TABLE `tags_tag_products` (
  `id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addresses_address`
--
ALTER TABLE `addresses_address`
  ADD PRIMARY KEY (`id`),
  ADD KEY `addresses_address_billing_profile_id_115cdf27_fk_billing_b` (`billing_profile_id`);

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
-- Indexes for table `billing_billingprofile`
--
ALTER TABLE `billing_billingprofile`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- Indexes for table `carts_cart`
--
ALTER TABLE `carts_cart`
  ADD PRIMARY KEY (`id`),
  ADD KEY `carts_cart_user_id_bd0756c7_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `carts_cart_products`
--
ALTER TABLE `carts_cart_products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `carts_cart_products_cart_id_product_id_75f0c8ea_uniq` (`cart_id`,`product_id`),
  ADD KEY `carts_cart_products_product_id_17f38e1e_fk_products_product_id` (`product_id`);

--
-- Indexes for table `category_category1`
--
ALTER TABLE `category_category1`
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
-- Indexes for table `orders_order`
--
ALTER TABLE `orders_order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_order_billing_address_id_deb02e83_fk_addresses_address_id` (`billing_address_id`),
  ADD KEY `orders_order_billing_profile_id_0e11b610_fk_billing_b` (`billing_profile_id`),
  ADD KEY `orders_order_cart_id_7e0252e3_fk_carts_cart_id` (`cart_id`),
  ADD KEY `orders_order_shipping_address_id_c4f8227a_fk_addresses` (`shipping_address_id`);

--
-- Indexes for table `products_brands`
--
ALTER TABLE `products_brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products_product`
--
ALTER TABLE `products_product`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`),
  ADD KEY `products_product_category_id_9b594869_fk_category_category1_id` (`category_id`),
  ADD KEY `products_product_brands_id_01925bd0_fk_products_brands_id` (`brands_id`);

--
-- Indexes for table `social_auth_association`
--
ALTER TABLE `social_auth_association`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `social_auth_association_server_url_handle_078befa2_uniq` (`server_url`,`handle`);

--
-- Indexes for table `social_auth_code`
--
ALTER TABLE `social_auth_code`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `social_auth_code_email_code_801b2d02_uniq` (`email`,`code`),
  ADD KEY `social_auth_code_code_a2393167` (`code`);

--
-- Indexes for table `social_auth_nonce`
--
ALTER TABLE `social_auth_nonce`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `social_auth_nonce_server_url_timestamp_salt_f6284463_uniq` (`server_url`,`timestamp`,`salt`);

--
-- Indexes for table `social_auth_partial`
--
ALTER TABLE `social_auth_partial`
  ADD PRIMARY KEY (`id`),
  ADD KEY `social_auth_partial_token_3017fea3` (`token`);

--
-- Indexes for table `social_auth_usersocialauth`
--
ALTER TABLE `social_auth_usersocialauth`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `social_auth_usersocialauth_provider_uid_e6b5e668_uniq` (`provider`,`uid`),
  ADD KEY `social_auth_usersocialauth_user_id_17d28448_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `tags_tag`
--
ALTER TABLE `tags_tag`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tags_tag_slug_78c2b8d8` (`slug`);

--
-- Indexes for table `tags_tag_products`
--
ALTER TABLE `tags_tag_products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tags_tag_products_tag_id_product_id_ed6e4461_uniq` (`tag_id`,`product_id`),
  ADD KEY `tags_tag_products_product_id_f64ffb65_fk_products_product_id` (`product_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `addresses_address`
--
ALTER TABLE `addresses_address`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;
--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `billing_billingprofile`
--
ALTER TABLE `billing_billingprofile`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `carts_cart`
--
ALTER TABLE `carts_cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `carts_cart_products`
--
ALTER TABLE `carts_cart_products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `category_category1`
--
ALTER TABLE `category_category1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;
--
-- AUTO_INCREMENT for table `orders_order`
--
ALTER TABLE `orders_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `products_brands`
--
ALTER TABLE `products_brands`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `products_product`
--
ALTER TABLE `products_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `social_auth_association`
--
ALTER TABLE `social_auth_association`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `social_auth_code`
--
ALTER TABLE `social_auth_code`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `social_auth_nonce`
--
ALTER TABLE `social_auth_nonce`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `social_auth_partial`
--
ALTER TABLE `social_auth_partial`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `social_auth_usersocialauth`
--
ALTER TABLE `social_auth_usersocialauth`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tags_tag`
--
ALTER TABLE `tags_tag`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tags_tag_products`
--
ALTER TABLE `tags_tag_products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `addresses_address`
--
ALTER TABLE `addresses_address`
  ADD CONSTRAINT `addresses_address_billing_profile_id_115cdf27_fk_billing_b` FOREIGN KEY (`billing_profile_id`) REFERENCES `billing_billingprofile` (`id`);

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
-- Constraints for table `billing_billingprofile`
--
ALTER TABLE `billing_billingprofile`
  ADD CONSTRAINT `billing_billingprofile_user_id_1a5112fa_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `carts_cart`
--
ALTER TABLE `carts_cart`
  ADD CONSTRAINT `carts_cart_user_id_bd0756c7_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `carts_cart_products`
--
ALTER TABLE `carts_cart_products`
  ADD CONSTRAINT `carts_cart_products_cart_id_3124fdb4_fk_carts_cart_id` FOREIGN KEY (`cart_id`) REFERENCES `carts_cart` (`id`),
  ADD CONSTRAINT `carts_cart_products_product_id_17f38e1e_fk_products_product_id` FOREIGN KEY (`product_id`) REFERENCES `products_product` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `orders_order`
--
ALTER TABLE `orders_order`
  ADD CONSTRAINT `orders_order_billing_address_id_deb02e83_fk_addresses_address_id` FOREIGN KEY (`billing_address_id`) REFERENCES `addresses_address` (`id`),
  ADD CONSTRAINT `orders_order_billing_profile_id_0e11b610_fk_billing_b` FOREIGN KEY (`billing_profile_id`) REFERENCES `billing_billingprofile` (`id`),
  ADD CONSTRAINT `orders_order_cart_id_7e0252e3_fk_carts_cart_id` FOREIGN KEY (`cart_id`) REFERENCES `carts_cart` (`id`),
  ADD CONSTRAINT `orders_order_shipping_address_id_c4f8227a_fk_addresses` FOREIGN KEY (`shipping_address_id`) REFERENCES `addresses_address` (`id`);

--
-- Constraints for table `products_product`
--
ALTER TABLE `products_product`
  ADD CONSTRAINT `products_product_brands_id_01925bd0_fk_products_brands_id` FOREIGN KEY (`brands_id`) REFERENCES `products_brands` (`id`),
  ADD CONSTRAINT `products_product_category_id_9b594869_fk_category_category1_id` FOREIGN KEY (`category_id`) REFERENCES `category_category1` (`id`);

--
-- Constraints for table `social_auth_usersocialauth`
--
ALTER TABLE `social_auth_usersocialauth`
  ADD CONSTRAINT `social_auth_usersocialauth_user_id_17d28448_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `tags_tag_products`
--
ALTER TABLE `tags_tag_products`
  ADD CONSTRAINT `tags_tag_products_product_id_f64ffb65_fk_products_product_id` FOREIGN KEY (`product_id`) REFERENCES `products_product` (`id`),
  ADD CONSTRAINT `tags_tag_products_tag_id_7ed0fcd2_fk_tags_tag_id` FOREIGN KEY (`tag_id`) REFERENCES `tags_tag` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
