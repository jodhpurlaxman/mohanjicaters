-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Oct 22, 2017 at 11:27 PM
-- Server version: 5.7.19-0ubuntu0.16.04.1
-- PHP Version: 7.0.22-0ubuntu0.16.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mohanjicatersv2`
--
CREATE DATABASE IF NOT EXISTS `mohanjicatersv2` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `mohanjicatersv2`;

-- --------------------------------------------------------

--
-- Table structure for table `addresses_address`
--

CREATE TABLE `addresses_address` (
  `id` int(11) NOT NULL,
  `address_type` varchar(120) NOT NULL,
  `address_line_1` varchar(120) NOT NULL,
  `address_line_2` varchar(120) DEFAULT NULL,
  `city` varchar(120) NOT NULL,
  `country` varchar(120) NOT NULL,
  `state` varchar(120) NOT NULL,
  `postal_code` varchar(120) NOT NULL,
  `billing_profile_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
(7, 'Can add user', 3, 'add_user'),
(8, 'Can change user', 3, 'change_user'),
(9, 'Can delete user', 3, 'delete_user'),
(10, 'Can add group', 4, 'add_group'),
(11, 'Can change group', 4, 'change_group'),
(12, 'Can delete group', 4, 'delete_group'),
(13, 'Can add content type', 5, 'add_contenttype'),
(14, 'Can change content type', 5, 'change_contenttype'),
(15, 'Can delete content type', 5, 'delete_contenttype'),
(16, 'Can add guest email', 6, 'add_guestemail'),
(17, 'Can change guest email', 6, 'change_guestemail'),
(18, 'Can delete guest email', 6, 'delete_guestemail'),
(19, 'Can add address', 7, 'add_address'),
(20, 'Can change address', 7, 'change_address'),
(21, 'Can delete address', 7, 'delete_address'),
(22, 'Can add billing profile', 8, 'add_billingprofile'),
(23, 'Can change billing profile', 8, 'change_billingprofile'),
(24, 'Can delete billing profile', 8, 'delete_billingprofile'),
(25, 'Can add cart', 9, 'add_cart'),
(26, 'Can change cart', 9, 'change_cart'),
(27, 'Can delete cart', 9, 'delete_cart'),
(28, 'Can add product', 10, 'add_product'),
(29, 'Can change product', 10, 'change_product'),
(30, 'Can delete product', 10, 'delete_product'),
(31, 'Can add session', 11, 'add_session'),
(32, 'Can change session', 11, 'change_session'),
(33, 'Can delete session', 11, 'delete_session'),
(34, 'Can add partial', 12, 'add_partial'),
(35, 'Can change partial', 12, 'change_partial'),
(36, 'Can delete partial', 12, 'delete_partial'),
(37, 'Can add code', 13, 'add_code'),
(38, 'Can change code', 13, 'change_code'),
(39, 'Can delete code', 13, 'delete_code'),
(40, 'Can add nonce', 14, 'add_nonce'),
(41, 'Can change nonce', 14, 'change_nonce'),
(42, 'Can delete nonce', 14, 'delete_nonce'),
(43, 'Can add user social auth', 15, 'add_usersocialauth'),
(44, 'Can change user social auth', 15, 'change_usersocialauth'),
(45, 'Can delete user social auth', 15, 'delete_usersocialauth'),
(46, 'Can add association', 16, 'add_association'),
(47, 'Can change association', 16, 'change_association'),
(48, 'Can delete association', 16, 'delete_association'),
(49, 'Can add order', 17, 'add_order'),
(50, 'Can change order', 17, 'change_order'),
(51, 'Can delete order', 17, 'delete_order'),
(52, 'Can add tag', 18, 'add_tag'),
(53, 'Can change tag', 18, 'change_tag'),
(54, 'Can delete tag', 18, 'delete_tag');

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
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$36000$61y3W7wM4VBI$Bg49v//dzBVogZ7eRrkYQfXWLXCfJrtZtMKlUptoVs4=', '2017-10-22 16:36:08.280530', 1, 'lky', '', '', '', 1, 1, '2017-10-22 16:35:43.848732');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `billing_billingprofile`
--

CREATE TABLE `billing_billingprofile` (
  `id` int(11) NOT NULL,
  `email` varchar(254) NOT NULL,
  `active` tinyint(1) NOT NULL,
  `update` datetime(6) NOT NULL,
  `timestamp` datetime(6) NOT NULL,
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `carts_cart_products`
--

CREATE TABLE `carts_cart_products` (
  `id` int(11) NOT NULL,
  `cart_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2017-10-22 16:37:00.724499', '1', 'Anjir Barfi', 1, '[{"added": {}}]', 10, 1),
(2, '2017-10-22 16:38:41.703571', '2', 'Akhrot Qube', 1, '[{"added": {}}]', 10, 1),
(3, '2017-10-22 16:39:36.885324', '3', 'Anjir Dryfruit Cake', 1, '[{"added": {}}]', 10, 1),
(4, '2017-10-22 16:41:21.331193', '4', 'Rasgulla Tin', 1, '[{"added": {}}]', 10, 1),
(5, '2017-10-22 16:43:39.240981', '5', 'Rasgulla Tin', 1, '[{"added": {}}]', 10, 1),
(6, '2017-10-22 17:18:38.604105', '5', 'Rasgulla Tin', 2, '[{"changed": {"fields": ["image"]}}]', 10, 1),
(7, '2017-10-22 17:18:55.380202', '4', 'Rasgulla Tin', 2, '[{"changed": {"fields": ["image"]}}]', 10, 1),
(8, '2017-10-22 17:19:05.801389', '3', 'Anjir Dryfruit Cake', 2, '[{"changed": {"fields": ["image"]}}]', 10, 1),
(9, '2017-10-22 17:19:16.981682', '2', 'Akhrot Qube', 2, '[{"changed": {"fields": ["image"]}}]', 10, 1),
(10, '2017-10-22 17:19:29.595885', '1', 'Anjir Barfi', 2, '[{"changed": {"fields": ["image"]}}]', 10, 1),
(11, '2017-10-22 17:20:32.143867', '2', 'Akhrot Qube', 2, '[{"changed": {"fields": ["image"]}}]', 10, 1),
(12, '2017-10-22 17:21:04.170942', '2', 'Akhrot Qube', 2, '[{"changed": {"fields": ["image"]}}]', 10, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(6, 'accounts', 'guestemail'),
(7, 'addresses', 'address'),
(1, 'admin', 'logentry'),
(4, 'auth', 'group'),
(2, 'auth', 'permission'),
(3, 'auth', 'user'),
(8, 'billing', 'billingprofile'),
(9, 'carts', 'cart'),
(5, 'contenttypes', 'contenttype'),
(17, 'orders', 'order'),
(10, 'products', 'product'),
(11, 'sessions', 'session'),
(16, 'social_django', 'association'),
(13, 'social_django', 'code'),
(14, 'social_django', 'nonce'),
(12, 'social_django', 'partial'),
(15, 'social_django', 'usersocialauth'),
(18, 'tags', 'tag');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2017-10-22 07:18:52.457238'),
(2, 'auth', '0001_initial', '2017-10-22 07:18:52.813688'),
(3, 'admin', '0001_initial', '2017-10-22 07:18:52.897107'),
(4, 'admin', '0002_logentry_remove_auto_add', '2017-10-22 07:18:52.917598'),
(5, 'contenttypes', '0002_remove_content_type_name', '2017-10-22 07:18:52.991666'),
(6, 'auth', '0002_alter_permission_name_max_length', '2017-10-22 07:18:53.022135'),
(7, 'auth', '0003_alter_user_email_max_length', '2017-10-22 07:18:53.060264'),
(8, 'auth', '0004_alter_user_username_opts', '2017-10-22 07:18:53.078526'),
(9, 'auth', '0005_alter_user_last_login_null', '2017-10-22 07:18:53.112908'),
(10, 'auth', '0006_require_contenttypes_0002', '2017-10-22 07:18:53.116050'),
(11, 'auth', '0007_alter_validators_add_error_messages', '2017-10-22 07:18:53.131404'),
(12, 'auth', '0008_alter_user_username_max_length', '2017-10-22 07:18:53.172900'),
(13, 'billing', '0001_initial', '2017-10-22 07:18:53.233552'),
(14, 'products', '0001_initial', '2017-10-22 07:18:53.266353'),
(15, 'carts', '0001_initial', '2017-10-22 07:22:10.337488'),
(16, 'addresses', '0001_initial', '2017-10-22 08:01:02.258278'),
(17, 'orders', '0001_initial', '2017-10-22 08:01:25.638143'),
(18, 'sessions', '0001_initial', '2017-10-22 08:01:25.671261'),
(19, 'default', '0001_initial', '2017-10-22 08:01:25.850058'),
(20, 'social_auth', '0001_initial', '2017-10-22 08:01:25.853199'),
(21, 'default', '0002_add_related_name', '2017-10-22 08:01:25.909180'),
(22, 'social_auth', '0002_add_related_name', '2017-10-22 08:01:25.912612'),
(23, 'default', '0003_alter_email_max_length', '2017-10-22 08:01:25.945078'),
(24, 'social_auth', '0003_alter_email_max_length', '2017-10-22 08:01:25.949339'),
(25, 'default', '0004_auto_20160423_0400', '2017-10-22 08:01:25.967537'),
(26, 'social_auth', '0004_auto_20160423_0400', '2017-10-22 08:01:25.970545'),
(27, 'social_auth', '0005_auto_20160727_2333', '2017-10-22 08:01:25.989036'),
(28, 'social_django', '0006_partial', '2017-10-22 08:01:26.021466'),
(29, 'tags', '0001_initial', '2017-10-22 08:01:26.145340'),
(30, 'social_django', '0001_initial', '2017-10-22 08:01:26.151121'),
(31, 'social_django', '0003_alter_email_max_length', '2017-10-22 08:01:26.154101'),
(32, 'social_django', '0005_auto_20160727_2333', '2017-10-22 08:01:26.157028'),
(33, 'social_django', '0004_auto_20160423_0400', '2017-10-22 08:01:26.160331'),
(34, 'social_django', '0002_add_related_name', '2017-10-22 08:01:26.164921');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('jatffvn5rs6cvdxxdeugndtbg4ftefac', 'N2IyYTEzYTg0Zjk5YmE0Y2NlMGQ5Mjk4NDdjZDcxZmY5ZjRiZTBkYzp7Il9hdXRoX3VzZXJfYmFja2VuZCI6ImRqYW5nby5jb250cmliLmF1dGguYmFja2VuZHMuTW9kZWxCYWNrZW5kIiwiX2F1dGhfdXNlcl9oYXNoIjoiMGRjZWI0YTg4OGE4ZmZmMjg4YjI2Yzc2MDNiNzRmNzE4MTUwOGI2MSIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=', '2017-11-05 16:36:08.285507');

-- --------------------------------------------------------

--
-- Table structure for table `orders_order`
--

CREATE TABLE `orders_order` (
  `id` int(11) NOT NULL,
  `order_id` varchar(120) NOT NULL,
  `status` varchar(120) NOT NULL,
  `shipping_total` decimal(65,2) NOT NULL,
  `total` decimal(65,2) NOT NULL,
  `active` tinyint(1) NOT NULL,
  `billing_address_id` int(11) DEFAULT NULL,
  `billing_profile_id` int(11) DEFAULT NULL,
  `cart_id` int(11) NOT NULL,
  `shipping_address_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `products_product`
--

CREATE TABLE `products_product` (
  `id` int(11) NOT NULL,
  `title` varchar(120) NOT NULL,
  `slug` varchar(50) NOT NULL,
  `description` longtext NOT NULL,
  `price` decimal(20,2) NOT NULL,
  `image` varchar(100) DEFAULT NULL,
  `featured` tinyint(1) NOT NULL,
  `active` tinyint(1) NOT NULL,
  `timestamp` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products_product`
--

INSERT INTO `products_product` (`id`, `title`, `slug`, `description`, `price`, `image`, `featured`, `active`, `timestamp`) VALUES
(1, 'Anjir Barfi', 'anjir-barfi', 'anjeer Barfi', '1082.00', 'products/2013112929/2013112929.png', 0, 1, '2017-10-22 16:37:00.723724'),
(2, 'Akhrot Qube', 'akhrot-qube', 'Akhrot Qube', '900.00', 'products/2529416925/2529416925.png', 0, 1, '2017-10-22 16:38:41.702717'),
(3, 'Anjir Dryfruit Cake', 'anjir-dryfruit-cake', 'Anjir Barfi', '1080.00', 'products/1751412959/1751412959.png', 0, 1, '2017-10-22 16:39:36.884585'),
(4, 'Rasgulla Tin', 'rasgulla-tin', 'Rasgulla Tin', '200.00', 'products/1280043728/1280043728.png', 0, 1, '2017-10-22 16:41:21.329222'),
(5, 'Rasgulla Tin', 'rasgulla-tin-1dz9', 'Rasgulla Tin', '600.00', 'products/1316956605/1316956605.png', 0, 1, '2017-10-22 16:43:39.240270');

-- --------------------------------------------------------

--
-- Table structure for table `social_auth_association`
--

CREATE TABLE `social_auth_association` (
  `id` int(11) NOT NULL,
  `server_url` varchar(255) NOT NULL,
  `handle` varchar(255) NOT NULL,
  `secret` varchar(255) NOT NULL,
  `issued` int(11) NOT NULL,
  `lifetime` int(11) NOT NULL,
  `assoc_type` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `social_auth_code`
--

CREATE TABLE `social_auth_code` (
  `id` int(11) NOT NULL,
  `email` varchar(254) NOT NULL,
  `code` varchar(32) NOT NULL,
  `verified` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `social_auth_nonce`
--

CREATE TABLE `social_auth_nonce` (
  `id` int(11) NOT NULL,
  `server_url` varchar(255) NOT NULL,
  `timestamp` int(11) NOT NULL,
  `salt` varchar(65) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `social_auth_partial`
--

CREATE TABLE `social_auth_partial` (
  `id` int(11) NOT NULL,
  `token` varchar(32) NOT NULL,
  `next_step` smallint(5) UNSIGNED NOT NULL,
  `backend` varchar(32) NOT NULL,
  `data` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `social_auth_usersocialauth`
--

CREATE TABLE `social_auth_usersocialauth` (
  `id` int(11) NOT NULL,
  `provider` varchar(32) NOT NULL,
  `uid` varchar(255) NOT NULL,
  `extra_data` longtext NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tags_tag`
--

CREATE TABLE `tags_tag` (
  `id` int(11) NOT NULL,
  `title` varchar(120) NOT NULL,
  `slug` varchar(50) NOT NULL,
  `timestamp` datetime(6) NOT NULL,
  `active` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tags_tag_products`
--

CREATE TABLE `tags_tag_products` (
  `id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
-- Indexes for table `products_product`
--
ALTER TABLE `products_product`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `carts_cart`
--
ALTER TABLE `carts_cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `carts_cart_products`
--
ALTER TABLE `carts_cart_products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
--
-- AUTO_INCREMENT for table `orders_order`
--
ALTER TABLE `orders_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `products_product`
--
ALTER TABLE `products_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
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
