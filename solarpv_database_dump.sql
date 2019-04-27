-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 27, 2019 at 10:56 AM
-- Server version: 10.1.25-MariaDB
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `solarpv`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
(19, 'Can add certificate', 7, 'add_certificate'),
(20, 'Can change certificate', 7, 'change_certificate'),
(21, 'Can delete certificate', 7, 'delete_certificate'),
(22, 'Can add client', 8, 'add_client'),
(23, 'Can change client', 8, 'change_client'),
(24, 'Can delete client', 8, 'delete_client'),
(25, 'Can add location', 9, 'add_location'),
(26, 'Can change location', 9, 'change_location'),
(27, 'Can delete location', 9, 'delete_location'),
(28, 'Can add product', 10, 'add_product'),
(29, 'Can change product', 10, 'change_product'),
(30, 'Can delete product', 10, 'delete_product'),
(31, 'Can add test standard', 11, 'add_teststandard'),
(32, 'Can change test standard', 11, 'change_teststandard'),
(33, 'Can delete test standard', 11, 'delete_teststandard'),
(34, 'Can add user', 12, 'add_user'),
(35, 'Can change user', 12, 'change_user'),
(36, 'Can delete user', 12, 'delete_user'),
(37, 'Can add certificate', 13, 'add_certificate'),
(38, 'Can change certificate', 13, 'change_certificate'),
(39, 'Can delete certificate', 13, 'delete_certificate'),
(40, 'Can add client', 14, 'add_client'),
(41, 'Can change client', 14, 'change_client'),
(42, 'Can delete client', 14, 'delete_client'),
(43, 'Can add location', 15, 'add_location'),
(44, 'Can change location', 15, 'change_location'),
(45, 'Can delete location', 15, 'delete_location'),
(46, 'Can add performance data', 16, 'add_performancedata'),
(47, 'Can change performance data', 16, 'change_performancedata'),
(48, 'Can delete performance data', 16, 'delete_performancedata'),
(49, 'Can add product', 17, 'add_product'),
(50, 'Can change product', 17, 'change_product'),
(51, 'Can delete product', 17, 'delete_product'),
(52, 'Can add service', 18, 'add_service'),
(53, 'Can change service', 18, 'change_service'),
(54, 'Can delete service', 18, 'delete_service'),
(55, 'Can add test sequence', 19, 'add_testsequence'),
(56, 'Can change test sequence', 19, 'change_testsequence'),
(57, 'Can delete test sequence', 19, 'delete_testsequence'),
(58, 'Can add test standard', 20, 'add_teststandard'),
(59, 'Can change test standard', 20, 'change_teststandard'),
(60, 'Can delete test standard', 20, 'delete_teststandard'),
(61, 'Can add user', 21, 'add_user'),
(62, 'Can change user', 21, 'change_user'),
(63, 'Can delete user', 21, 'delete_user');

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
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `backend_certificate`
--

CREATE TABLE `backend_certificate` (
  `id` int(11) NOT NULL,
  `certificate_number` varchar(20) NOT NULL,
  `report_number` varchar(50) NOT NULL,
  `issue_date` varchar(20) NOT NULL,
  `location_ID_id` varchar(10) NOT NULL,
  `model_number_id` varchar(50) NOT NULL,
  `standard_ID_id` varchar(10) NOT NULL,
  `userID_id` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `backend_certificate`
--

INSERT INTO `backend_certificate` (`id`, `certificate_number`, `report_number`, `issue_date`, `location_ID_id`, `model_number_id`, `standard_ID_id`, `userID_id`) VALUES
(1, 'US 82180014', '31540020', '03/12/2018', '0012', 'Solar-Strap', 'UL1703', 'jramirez'),
(2, 'PV72092751', '30973615', '02/12/2009', '0013', 'Eldora 270', 'IEC61215', 'mkhuntia');

-- --------------------------------------------------------

--
-- Table structure for table `backend_client`
--

CREATE TABLE `backend_client` (
  `id` int(11) NOT NULL,
  `client_ID` varchar(10) NOT NULL,
  `client_name` varchar(40) NOT NULL,
  `client_type` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `backend_client`
--

INSERT INTO `backend_client` (`id`, `client_ID`, `client_name`, `client_type`) VALUES
(1, 'ZHT', 'Zhuhai Tianbo', 'PV module manufacturer'),
(2, 'APV', 'Advanced Photovoltaic Systems', 'PV System Inataller'),
(3, 'CEC', 'California Energy Commission', 'Regulator'),
(4, 'PRL', 'Photovoltaic Reliability lab', 'research lab'),
(5, 'PMC', 'Permacity Construction', 'racks and trackers manufacturer'),
(6, 'MEB', 'Meyer Burger Global', 'PV Manufacturer'),
(7, 'VIK', 'Vikram Solar Private Ltd.', 'PV module manufacturer');

-- --------------------------------------------------------

--
-- Table structure for table `backend_location`
--

CREATE TABLE `backend_location` (
  `id` int(11) NOT NULL,
  `location_ID` varchar(10) NOT NULL,
  `address1` varchar(50) NOT NULL,
  `address2` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL,
  `state` varchar(50) NOT NULL,
  `postal_code` varchar(50) NOT NULL,
  `country` varchar(50) NOT NULL,
  `phone_number` varchar(50) NOT NULL,
  `fax_number` varchar(50) NOT NULL,
  `client_ID_id` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `backend_location`
--

INSERT INTO `backend_location` (`id`, `location_ID`, `address1`, `address2`, `city`, `state`, `postal_code`, `country`, `phone_number`, `fax_number`, `client_ID_id`) VALUES
(1, '0010', 'No.1 Pingbei 2nd Road', 'Zhuhai', '', '', '519060.0', 'China', '+86-756-8911378', '', 'ZHT'),
(2, '0011', 'Schorenstrasse 39', 'Gwatt', '', '', '3645.0', 'Switzerland', '', '', 'MEB'),
(3, '0012', 'DBA Permacity Solar', 'Los Angeles', '525 S Hewitt St', 'CA', '90013.0', 'USA', '', '', 'PMC'),
(4, '0013', 'Tobacco House', 'Kolkata', '1, Old Court House Corner', '', '700001.0', 'India', '', '', 'VIK'),
(5, '0014', 'DD Wire Co', 'Temple City', '4336 Temple City Blvd', 'CA', '91780.0', 'USA', '', '', 'PMC');

-- --------------------------------------------------------

--
-- Table structure for table `backend_performancedata`
--

CREATE TABLE `backend_performancedata` (
  `id` int(11) NOT NULL,
  `max_system_voltage` double DEFAULT NULL,
  `voc` double DEFAULT NULL,
  `isc` double DEFAULT NULL,
  `vmp` double DEFAULT NULL,
  `imp` double DEFAULT NULL,
  `pmp` double DEFAULT NULL,
  `ff` double DEFAULT NULL,
  `model_number_id` varchar(50) NOT NULL,
  `sequence_ID_id` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `backend_performancedata`
--

INSERT INTO `backend_performancedata` (`id`, `max_system_voltage`, `voc`, `isc`, `vmp`, `imp`, `pmp`, `ff`, `model_number_id`, `sequence_ID_id`) VALUES
(1, 1000, 44.2, 35.2, 5.25, 4.97, 175, 75, 'KUT0012', 'rating'),
(2, 1000, NULL, NULL, NULL, NULL, NULL, NULL, 'Solar-Strap', 'rating'),
(3, 1000, 44.3, 36.2, 8.1, 7.8, 270, NULL, 'Eldora 270', 'rating'),
(4, 1000, 44.6, 35.7, 8.43, 7.77, 277.3, NULL, 'Eldora 270', 'baseline'),
(5, 1000, 44.3, 35.9, 9, 8.5, 300, NULL, 'Sky SmartWire', 'rating'),
(6, 1000, 44.3, 36.2, 8.1, 7.8, 270, NULL, 'Eldora 270', 'rating'),
(7, 1000, 44.6, 35.7, 8.43, 7.77, 277.3, NULL, 'Eldora 270', 'baseline'),
(8, 1000, 44.3, 35.9, 9, 8.5, 300, NULL, 'Sky SmartWire', 'rating');

-- --------------------------------------------------------

--
-- Table structure for table `backend_product`
--

CREATE TABLE `backend_product` (
  `id` int(11) NOT NULL,
  `model_number` varchar(50) NOT NULL,
  `product_name` varchar(50) NOT NULL,
  `cell_technology` varchar(50) NOT NULL,
  `cell_manufacturer` varchar(50) NOT NULL,
  `number_of_cells` int(10) UNSIGNED DEFAULT NULL,
  `number_of_cells_in_series` int(10) UNSIGNED DEFAULT NULL,
  `number_of_series_strings` int(10) UNSIGNED DEFAULT NULL,
  `number_diodes` int(10) UNSIGNED DEFAULT NULL,
  `product_length` double DEFAULT NULL,
  `product_width` double DEFAULT NULL,
  `product_weight` double DEFAULT NULL,
  `superstate_type` varchar(50) NOT NULL,
  `superstate_manufacturer` varchar(50) NOT NULL,
  `substrate_type` varchar(50) NOT NULL,
  `substrate_manufacturer` varchar(50) NOT NULL,
  `frame_type` varchar(50) NOT NULL,
  `frame_adhesive` varchar(50) NOT NULL,
  `encapsulate_type` varchar(50) NOT NULL,
  `encapsulate_manufacturer` varchar(50) NOT NULL,
  `junction_box_type` varchar(50) NOT NULL,
  `junction_box_manufacturer` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `backend_product`
--

INSERT INTO `backend_product` (`id`, `model_number`, `product_name`, `cell_technology`, `cell_manufacturer`, `number_of_cells`, `number_of_cells_in_series`, `number_of_series_strings`, `number_diodes`, `product_length`, `product_width`, `product_weight`, `superstate_type`, `superstate_manufacturer`, `substrate_type`, `substrate_manufacturer`, `frame_type`, `frame_adhesive`, `encapsulate_type`, `encapsulate_manufacturer`, `junction_box_type`, `junction_box_manufacturer`) VALUES
(1, 'KUT0012', 'PV Module', 'Mono-Si', 'Motech', 72, 72, 3, 3, 158, 80.8, 148.58, 'Tempered Glass', 'Dongguan CSG Solar Glass Co., Ltd.', 'TPT', 'ISOVOLTA ', 'Aluminum alloy', 'Dow Corning 7091', 'EVA/0.5 mm ', 'Bridge Stone Corporation', 'PV-RH0502B', 'Cixi Renhe Photovoltaic Electrical Appliance Co.,L'),
(2, 'Solar-Strap', 'Rack Mounting system', '', '', 72, NULL, NULL, NULL, 77, 39, 1248, '', '', '', '', '', '', '', '', '', ''),
(3, 'Eldora 270', 'PV Module', 'poly-Si', '', 72, 72, 3, 3, 1955, 982, NULL, 'Tempered Glass', 'Saint Gobain Glass India Ltd', '', 'Madico', 'Anodized Aluminum', 'Urethane foam tape', 'Fast cure EVA', 'STR', 'Dow Corning PV 804', 'Tyco Electronics'),
(4, 'Sky SmartWire', 'Flat-Plate Photovoltaic Modules', 'heterojunction', '', 60, NULL, NULL, NULL, 1663, 997, NULL, '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `backend_service`
--

CREATE TABLE `backend_service` (
  `id` int(11) NOT NULL,
  `service_ID` varchar(10) NOT NULL,
  `service_name` varchar(50) NOT NULL,
  `description` longtext NOT NULL,
  `is_FI_required` tinyint(1) NOT NULL,
  `FI_frequency` varchar(50) NOT NULL,
  `standard_ID_id` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `backend_service`
--

INSERT INTO `backend_service` (`id`, `service_ID`, `service_name`, `description`, `is_FI_required`, `FI_frequency`, `standard_ID_id`) VALUES
(1, 'FP PV Perf', 'flat-plate PV Module Qualification ', '', 1, '1.0', 'IEC61215'),
(2, 'FP PV Safe', 'Flat-plate PV Module Safety certification', '', 1, '2.0', 'UL1703');

-- --------------------------------------------------------

--
-- Table structure for table `backend_testsequence`
--

CREATE TABLE `backend_testsequence` (
  `id` int(11) NOT NULL,
  `sequence_ID` varchar(10) NOT NULL,
  `sequence` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `backend_testsequence`
--

INSERT INTO `backend_testsequence` (`id`, `sequence_ID`, `sequence`) VALUES
(1, 'rating', 'Manufacturer rating'),
(2, 'baseline', 'Baseline or initial measurements'),
(3, 'HF10', 'humidity freeze 10 cycles'),
(4, 'TC200', 'Thermal cycling 200 cycles'),
(5, 'Terminatio', 'Robustness of terminations'),
(6, 'BPR', 'Bonding path resistance'),
(7, 'dynamic', 'Dynamic Load'),
(8, 'mechanical', 'Mechanical or static Load');

-- --------------------------------------------------------

--
-- Table structure for table `backend_teststandard`
--

CREATE TABLE `backend_teststandard` (
  `id` int(11) NOT NULL,
  `standard_ID` varchar(10) NOT NULL,
  `standard_name` varchar(50) NOT NULL,
  `description` longtext NOT NULL,
  `published_date` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `backend_teststandard`
--

INSERT INTO `backend_teststandard` (`id`, `standard_ID`, `standard_name`, `description`, `published_date`) VALUES
(1, 'UL1703', 'Standard for Safety - flat-plate photovoltaic modu', 'Requirements for flat-plate photovoltaic modules and panels intended for installation on or integral with buildings, or to be freestanding (that is, not attached to buildings), in accordance with the National Electrical Code, NAFPA 70, and Model Building Codes', '37330.0'),
(2, 'IEC61215', 'Crystalline silicon terrestrial PV modules - Desig', 'Determine the electrical and thermal characteristics of the module and to show, as far as possible within reasonable constraints of cost and time, that the module is capable of withstanding prolonged exposure in climates', '2005.0'),
(3, 'ANSI/UL270', 'Standard for Safety - Mounting system, mounting de', 'These requirements cover rack mounting systems, mounting grounding/bonding components, and clamping/retention devices for specific flat-plate photovoltaic modules and panels that comply with UL1703. Systems, components, and/or devices evaluated under this standard may be used to ground and/or mount a PV module when the specific module or frame has been evaluated for bonding/grounding or the module has been evaluated with the evaluated system, components, or device', '42032.0');

-- --------------------------------------------------------

--
-- Table structure for table `backend_user`
--

CREATE TABLE `backend_user` (
  `id` int(11) NOT NULL,
  `userID` varchar(10) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `middle_name` varchar(50) NOT NULL,
  `job_title` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `office_phone` varchar(50) NOT NULL,
  `cell_phone` varchar(50) NOT NULL,
  `prefix` varchar(50) NOT NULL,
  `client_ID_id` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `backend_user`
--

INSERT INTO `backend_user` (`id`, `userID`, `first_name`, `last_name`, `middle_name`, `job_title`, `email`, `office_phone`, `cell_phone`, `prefix`, `client_ID_id`) VALUES
(1, 'wgisler', 'Walter', '', 'Gisler', 'Compliance Engineer', 'walter.gisler@meyerberger.com', '480-748-7994', '', '', 'MEB'),
(2, 'jramirez', 'Jerry', '', 'Ramirez', 'Operations Manager', '', '', '', '', 'PMC'),
(3, 'mkhuntia', 'Manoranjan', '', 'Khuntia', 'Compliance Manager', 'mkhuntia@vikram.in', '91 33 2230 7299', '', '', 'VIK');

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(13, 'backend', 'certificate'),
(14, 'backend', 'client'),
(15, 'backend', 'location'),
(16, 'backend', 'performancedata'),
(17, 'backend', 'product'),
(18, 'backend', 'service'),
(19, 'backend', 'testsequence'),
(20, 'backend', 'teststandard'),
(21, 'backend', 'user'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session'),
(7, 'solarpv', 'certificate'),
(8, 'solarpv', 'client'),
(9, 'solarpv', 'location'),
(10, 'solarpv', 'product'),
(11, 'solarpv', 'teststandard'),
(12, 'solarpv', 'user');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2019-04-26 19:19:07.486942'),
(2, 'auth', '0001_initial', '2019-04-26 19:19:17.249112'),
(3, 'admin', '0001_initial', '2019-04-26 19:19:19.429236'),
(4, 'admin', '0002_logentry_remove_auto_add', '2019-04-26 19:19:19.470242'),
(5, 'contenttypes', '0002_remove_content_type_name', '2019-04-26 19:19:20.609776'),
(6, 'auth', '0002_alter_permission_name_max_length', '2019-04-26 19:19:21.474846'),
(7, 'auth', '0003_alter_user_email_max_length', '2019-04-26 19:19:23.285679'),
(8, 'auth', '0004_alter_user_username_opts', '2019-04-26 19:19:23.665542'),
(9, 'auth', '0005_alter_user_last_login_null', '2019-04-26 19:19:24.394938'),
(10, 'auth', '0006_require_contenttypes_0002', '2019-04-26 19:19:24.435976'),
(11, 'auth', '0007_alter_validators_add_error_messages', '2019-04-26 19:19:24.515088'),
(12, 'auth', '0008_alter_user_username_max_length', '2019-04-26 19:19:25.317808'),
(13, 'auth', '0009_alter_user_last_name_max_length', '2019-04-26 19:19:26.030362'),
(14, 'backend', '0001_initial', '2019-04-26 19:19:41.027870'),
(15, 'sessions', '0001_initial', '2019-04-26 19:19:41.450782'),
(16, 'solarpv', '0001_initial', '2019-04-26 19:19:50.650650'),
(17, 'solarpv', '0002_auto_20190427_0947', '2019-04-27 08:47:51.602646');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('hqm5nxx98aihxh2ptd43isvprqtnugnr', 'ZTdjYjI1ZDFjMWFhM2I0MDJhNzY4NmIzMTc3NGMxMWU2MjNkNWJkZTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI2MTU2YjNiMjUwNDA3ZDUzNjMwY2Y5ZDIyZDlhNGQ2MTliNDRjM2M3In0=', '2019-05-10 19:33:21.931338');

-- --------------------------------------------------------

--
-- Table structure for table `solarpv_certificate`
--

CREATE TABLE `solarpv_certificate` (
  `id` int(11) NOT NULL,
  `report_number` varchar(50) NOT NULL,
  `issue_date` date NOT NULL,
  `model_number` varchar(50) NOT NULL,
  `certificate_number_id` varchar(50) NOT NULL,
  `location_ID_id` varchar(10) NOT NULL,
  `standard_ID_id` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `solarpv_client`
--

CREATE TABLE `solarpv_client` (
  `id` int(11) NOT NULL,
  `client_ID` varchar(10) NOT NULL,
  `client_name` varchar(40) NOT NULL,
  `client_type` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `solarpv_location`
--

CREATE TABLE `solarpv_location` (
  `id` int(11) NOT NULL,
  `location_ID` varchar(10) NOT NULL,
  `address1` varchar(50) NOT NULL,
  `address2` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL,
  `state` varchar(50) NOT NULL,
  `postal_code` varchar(50) NOT NULL,
  `country` varchar(50) NOT NULL,
  `phone_number` varchar(50) NOT NULL,
  `fax_number` varchar(50) NOT NULL,
  `client_ID_id` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `solarpv_product`
--

CREATE TABLE `solarpv_product` (
  `id` int(11) NOT NULL,
  `model_number` varchar(50) NOT NULL,
  `product_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `solarpv_teststandard`
--

CREATE TABLE `solarpv_teststandard` (
  `id` int(11) NOT NULL,
  `standard_ID` varchar(10) NOT NULL,
  `standard_name` varchar(50) NOT NULL,
  `description` longtext NOT NULL,
  `published_date` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `solarpv_user`
--

CREATE TABLE `solarpv_user` (
  `id` int(11) NOT NULL,
  `userID` varchar(10) NOT NULL,
  `password` varchar(20) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `middle_name` varchar(50) DEFAULT NULL,
  `job_title` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `office_phone` varchar(50) DEFAULT NULL,
  `cell_phone` varchar(50) DEFAULT NULL,
  `client_ID_id` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
-- Indexes for table `backend_certificate`
--
ALTER TABLE `backend_certificate`
  ADD PRIMARY KEY (`id`),
  ADD KEY `backend_certificate_location_ID_id_e95a40c6_fk_backend_l` (`location_ID_id`),
  ADD KEY `backend_certificate_model_number_id_390ef8dc_fk_backend_p` (`model_number_id`),
  ADD KEY `backend_certificate_standard_ID_id_543a5089_fk_backend_t` (`standard_ID_id`),
  ADD KEY `backend_certificate_userID_id_0622e368_fk_backend_user_userID` (`userID_id`);

--
-- Indexes for table `backend_client`
--
ALTER TABLE `backend_client`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `client_ID` (`client_ID`);

--
-- Indexes for table `backend_location`
--
ALTER TABLE `backend_location`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `location_ID` (`location_ID`),
  ADD KEY `backend_location_client_ID_id_34732f11_fk_backend_c` (`client_ID_id`);

--
-- Indexes for table `backend_performancedata`
--
ALTER TABLE `backend_performancedata`
  ADD PRIMARY KEY (`id`),
  ADD KEY `backend_performanced_model_number_id_863b26ee_fk_backend_p` (`model_number_id`),
  ADD KEY `backend_performanced_sequence_ID_id_42f778a4_fk_backend_t` (`sequence_ID_id`);

--
-- Indexes for table `backend_product`
--
ALTER TABLE `backend_product`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `model_number` (`model_number`);

--
-- Indexes for table `backend_service`
--
ALTER TABLE `backend_service`
  ADD PRIMARY KEY (`id`),
  ADD KEY `backend_service_standard_ID_id_935c1971_fk_backend_t` (`standard_ID_id`);

--
-- Indexes for table `backend_testsequence`
--
ALTER TABLE `backend_testsequence`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sequence_ID` (`sequence_ID`);

--
-- Indexes for table `backend_teststandard`
--
ALTER TABLE `backend_teststandard`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `standard_ID` (`standard_ID`);

--
-- Indexes for table `backend_user`
--
ALTER TABLE `backend_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `userID` (`userID`),
  ADD KEY `backend_user_client_ID_id_33d02e09_fk_backend_client_client_ID` (`client_ID_id`);

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
-- Indexes for table `solarpv_certificate`
--
ALTER TABLE `solarpv_certificate`
  ADD PRIMARY KEY (`id`),
  ADD KEY `solarpv_certificate_certificate_number_i_312557ad_fk_solarpv_p` (`certificate_number_id`),
  ADD KEY `solarpv_certificate_location_ID_id_28a4b149_fk_solarpv_l` (`location_ID_id`),
  ADD KEY `solarpv_certificate_standard_ID_id_48432d37_fk_solarpv_t` (`standard_ID_id`);

--
-- Indexes for table `solarpv_client`
--
ALTER TABLE `solarpv_client`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `client_ID` (`client_ID`);

--
-- Indexes for table `solarpv_location`
--
ALTER TABLE `solarpv_location`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `location_ID` (`location_ID`),
  ADD KEY `solarpv_location_client_ID_id_2c3a3013_fk_solarpv_c` (`client_ID_id`);

--
-- Indexes for table `solarpv_product`
--
ALTER TABLE `solarpv_product`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `model_number` (`model_number`);

--
-- Indexes for table `solarpv_teststandard`
--
ALTER TABLE `solarpv_teststandard`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `standard_ID` (`standard_ID`);

--
-- Indexes for table `solarpv_user`
--
ALTER TABLE `solarpv_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `userID` (`userID`),
  ADD KEY `solarpv_user_client_ID_id_cec40ea9_fk_solarpv_client_client_ID` (`client_ID_id`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;
--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
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
-- AUTO_INCREMENT for table `backend_certificate`
--
ALTER TABLE `backend_certificate`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `backend_client`
--
ALTER TABLE `backend_client`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `backend_location`
--
ALTER TABLE `backend_location`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `backend_performancedata`
--
ALTER TABLE `backend_performancedata`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `backend_product`
--
ALTER TABLE `backend_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `backend_service`
--
ALTER TABLE `backend_service`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `backend_testsequence`
--
ALTER TABLE `backend_testsequence`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `backend_teststandard`
--
ALTER TABLE `backend_teststandard`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `backend_user`
--
ALTER TABLE `backend_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `solarpv_certificate`
--
ALTER TABLE `solarpv_certificate`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `solarpv_client`
--
ALTER TABLE `solarpv_client`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `solarpv_location`
--
ALTER TABLE `solarpv_location`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `solarpv_product`
--
ALTER TABLE `solarpv_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `solarpv_teststandard`
--
ALTER TABLE `solarpv_teststandard`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `solarpv_user`
--
ALTER TABLE `solarpv_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
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
-- Constraints for table `backend_certificate`
--
ALTER TABLE `backend_certificate`
  ADD CONSTRAINT `backend_certificate_location_ID_id_e95a40c6_fk_backend_l` FOREIGN KEY (`location_ID_id`) REFERENCES `backend_location` (`location_ID`),
  ADD CONSTRAINT `backend_certificate_model_number_id_390ef8dc_fk_backend_p` FOREIGN KEY (`model_number_id`) REFERENCES `backend_product` (`model_number`),
  ADD CONSTRAINT `backend_certificate_standard_ID_id_543a5089_fk_backend_t` FOREIGN KEY (`standard_ID_id`) REFERENCES `backend_teststandard` (`standard_ID`),
  ADD CONSTRAINT `backend_certificate_userID_id_0622e368_fk_backend_user_userID` FOREIGN KEY (`userID_id`) REFERENCES `backend_user` (`userID`);

--
-- Constraints for table `backend_location`
--
ALTER TABLE `backend_location`
  ADD CONSTRAINT `backend_location_client_ID_id_34732f11_fk_backend_c` FOREIGN KEY (`client_ID_id`) REFERENCES `backend_client` (`client_ID`);

--
-- Constraints for table `backend_performancedata`
--
ALTER TABLE `backend_performancedata`
  ADD CONSTRAINT `backend_performanced_model_number_id_863b26ee_fk_backend_p` FOREIGN KEY (`model_number_id`) REFERENCES `backend_product` (`model_number`),
  ADD CONSTRAINT `backend_performanced_sequence_ID_id_42f778a4_fk_backend_t` FOREIGN KEY (`sequence_ID_id`) REFERENCES `backend_testsequence` (`sequence_ID`);

--
-- Constraints for table `backend_service`
--
ALTER TABLE `backend_service`
  ADD CONSTRAINT `backend_service_standard_ID_id_935c1971_fk_backend_t` FOREIGN KEY (`standard_ID_id`) REFERENCES `backend_teststandard` (`standard_ID`);

--
-- Constraints for table `backend_user`
--
ALTER TABLE `backend_user`
  ADD CONSTRAINT `backend_user_client_ID_id_33d02e09_fk_backend_client_client_ID` FOREIGN KEY (`client_ID_id`) REFERENCES `backend_client` (`client_ID`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `solarpv_certificate`
--
ALTER TABLE `solarpv_certificate`
  ADD CONSTRAINT `solarpv_certificate_certificate_number_i_312557ad_fk_solarpv_p` FOREIGN KEY (`certificate_number_id`) REFERENCES `solarpv_product` (`model_number`),
  ADD CONSTRAINT `solarpv_certificate_location_ID_id_28a4b149_fk_solarpv_l` FOREIGN KEY (`location_ID_id`) REFERENCES `solarpv_location` (`location_ID`),
  ADD CONSTRAINT `solarpv_certificate_standard_ID_id_48432d37_fk_solarpv_t` FOREIGN KEY (`standard_ID_id`) REFERENCES `solarpv_teststandard` (`standard_ID`);

--
-- Constraints for table `solarpv_location`
--
ALTER TABLE `solarpv_location`
  ADD CONSTRAINT `solarpv_location_client_ID_id_2c3a3013_fk_solarpv_c` FOREIGN KEY (`client_ID_id`) REFERENCES `solarpv_client` (`client_ID`);

--
-- Constraints for table `solarpv_user`
--
ALTER TABLE `solarpv_user`
  ADD CONSTRAINT `solarpv_user_client_ID_id_cec40ea9_fk_solarpv_client_client_ID` FOREIGN KEY (`client_ID_id`) REFERENCES `solarpv_client` (`client_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
