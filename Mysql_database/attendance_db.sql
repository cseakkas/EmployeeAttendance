-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 28, 2023 at 07:13 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `attendance_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

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
(25, 'Can add employee info', 7, 'add_employeeinfo'),
(26, 'Can change employee info', 7, 'change_employeeinfo'),
(27, 'Can delete employee info', 7, 'delete_employeeinfo'),
(28, 'Can view employee info', 7, 'view_employeeinfo'),
(29, 'Can add shift master', 8, 'add_shiftmaster'),
(30, 'Can change shift master', 8, 'change_shiftmaster'),
(31, 'Can delete shift master', 8, 'delete_shiftmaster'),
(32, 'Can view shift master', 8, 'view_shiftmaster'),
(33, 'Can add company branch', 9, 'add_companybranch'),
(34, 'Can change company branch', 9, 'change_companybranch'),
(35, 'Can delete company branch', 9, 'delete_companybranch'),
(36, 'Can view company branch', 9, 'view_companybranch'),
(37, 'Can add company information', 10, 'add_companyinformation'),
(38, 'Can change company information', 10, 'change_companyinformation'),
(39, 'Can delete company information', 10, 'delete_companyinformation'),
(40, 'Can view company information', 10, 'view_companyinformation'),
(41, 'Can add employee department', 11, 'add_employeedepartment'),
(42, 'Can change employee department', 11, 'change_employeedepartment'),
(43, 'Can delete employee department', 11, 'delete_employeedepartment'),
(44, 'Can view employee department', 11, 'view_employeedepartment'),
(45, 'Can add employee designation', 12, 'add_employeedesignation'),
(46, 'Can change employee designation', 12, 'change_employeedesignation'),
(47, 'Can delete employee designation', 12, 'delete_employeedesignation'),
(48, 'Can view employee designation', 12, 'view_employeedesignation'),
(49, 'Can add employee list', 13, 'add_employeelist'),
(50, 'Can change employee list', 13, 'change_employeelist'),
(51, 'Can delete employee list', 13, 'delete_employeelist'),
(52, 'Can view employee list', 13, 'view_employeelist'),
(53, 'Can add employee attendance', 14, 'add_employeeattendance'),
(54, 'Can change employee attendance', 14, 'change_employeeattendance'),
(55, 'Can delete employee attendance', 14, 'delete_employeeattendance'),
(56, 'Can view employee attendance', 14, 'view_employeeattendance');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$390000$3PxUHO8LvXKPZnnocZ1Pb4$0yt6Ok9+G8FuGdiQ9dIhXPxM+hGBgWIXEYZNkDLsJbs=', '2023-04-27 16:41:35.363880', 1, 'admin', '', '', '', 1, 1, '2023-04-27 15:31:36.189983');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--
-- Error reading structure for table attendance_db.auth_user_user_permissions: #1932 - Table 'attendance_db.auth_user_user_permissions' doesn't exist in engine
-- Error reading data for table attendance_db.auth_user_user_permissions: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'FROM `attendance_db`.`auth_user_user_permissions`' at line 1

-- --------------------------------------------------------

--
-- Table structure for table `branch_list`
--

CREATE TABLE `branch_list` (
  `id` bigint(20) NOT NULL,
  `branch_name` varchar(150) NOT NULL,
  `address` longtext DEFAULT NULL,
  `branch_author` varchar(150) DEFAULT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `mobile` varchar(15) DEFAULT NULL,
  `email` varchar(150) DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `created` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `branch_list`
--

INSERT INTO `branch_list` (`id`, `branch_name`, `address`, `branch_author`, `phone`, `mobile`, `email`, `status`, `created`) VALUES
(1, 'Head Office, Dhaka', 'Dhaka, Bangladesh', 'Md. Akash Ahmed', '3489573489', '01902353773', 'akkas.cse69@gmail.com', 1, '2023-04-27 16:55:19.350985');

-- --------------------------------------------------------

--
-- Table structure for table `company_setup`
--

CREATE TABLE `company_setup` (
  `id` bigint(20) NOT NULL,
  `company_name` varchar(150) NOT NULL,
  `logo` varchar(100) DEFAULT NULL,
  `address_line` longtext DEFAULT NULL,
  `address_line_2` longtext DEFAULT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `mobile` varchar(15) DEFAULT NULL,
  `email` varchar(150) DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `created` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `company_setup`
--

INSERT INTO `company_setup` (`id`, `company_name`, `logo`, `address_line`, `address_line_2`, `phone`, `mobile`, `email`, `status`, `created`) VALUES
(1, 'Wanton Digitech Ltd.', '', 'Dhaka, Bangladesh', '', '8982367846', '01902353773', 'akkas@walton.com', 1, '2023-04-27 16:54:29.569535');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2023-04-27 16:54:29.571085', '1', 'Wanton Digitech Ltd.', 1, '[{\"added\": {}}]', 10, 1),
(2, '2023-04-27 16:55:19.351983', '1', 'Head Office, Dhaka', 1, '[{\"added\": {}}]', 9, 1),
(3, '2023-04-27 16:55:40.254892', '1', 'Information Technology', 1, '[{\"added\": {}}]', 11, 1),
(4, '2023-04-27 16:56:03.607534', '2', 'Accounts and Finance', 1, '[{\"added\": {}}]', 11, 1),
(5, '2023-04-27 16:56:29.077289', '3', 'Supply Chain Management', 1, '[{\"added\": {}}]', 11, 1),
(6, '2023-04-27 16:56:53.509871', '4', 'Marketing Management', 1, '[{\"added\": {}}]', 11, 1),
(7, '2023-04-27 16:57:04.983873', '1', 'HR and Admin', 1, '[{\"added\": {}}]', 12, 1),
(8, '2023-04-27 16:57:12.512483', '2', 'Senior Software Engineer', 1, '[{\"added\": {}}]', 12, 1),
(9, '2023-04-27 16:57:16.551689', '3', 'Software Engineer', 1, '[{\"added\": {}}]', 12, 1),
(10, '2023-04-27 16:57:19.672537', '4', 'Marketing Officer', 1, '[{\"added\": {}}]', 12, 1),
(11, '2023-04-27 16:57:23.401992', '5', 'System Analysis', 1, '[{\"added\": {}}]', 12, 1),
(12, '2023-04-27 16:57:26.192569', '6', 'Founder & CEO', 1, '[{\"added\": {}}]', 12, 1),
(13, '2023-04-27 16:57:31.712153', '7', 'Web Design & Developer', 1, '[{\"added\": {}}]', 12, 1),
(14, '2023-04-27 17:08:28.288132', '1', 'Md. Akkas', 1, '[{\"added\": {}}]', 13, 1),
(15, '2023-04-27 17:09:31.550090', '1', 'Md. Akkas', 2, '[{\"changed\": {\"fields\": [\"Designation\", \"Department\"]}}]', 13, 1),
(16, '2023-04-27 17:11:09.053524', '5', 'Admin', 1, '[{\"added\": {}}]', 11, 1),
(17, '2023-04-27 17:11:22.378100', '2', 'Md. Abdul', 1, '[{\"added\": {}}]', 13, 1),
(18, '2023-04-27 17:53:17.143369', '3', 'Erich', 1, '[{\"added\": {}}]', 13, 1),
(19, '2023-04-28 14:35:09.701982', '2', 'General Shift', 1, '[{\"added\": {}}]', 8, 1),
(20, '2023-04-28 14:36:06.717408', '3', 'Night Shift', 1, '[{\"added\": {}}]', 8, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(9, 'attendance_app', 'companybranch'),
(10, 'attendance_app', 'companyinformation'),
(14, 'attendance_app', 'employeeattendance'),
(11, 'attendance_app', 'employeedepartment'),
(12, 'attendance_app', 'employeedesignation'),
(7, 'attendance_app', 'employeeinfo'),
(13, 'attendance_app', 'employeelist'),
(8, 'attendance_app', 'shiftmaster'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2023-04-27 15:30:31.096170'),
(2, 'auth', '0001_initial', '2023-04-27 15:30:31.788310'),
(3, 'admin', '0001_initial', '2023-04-27 15:30:31.981145'),
(4, 'admin', '0002_logentry_remove_auto_add', '2023-04-27 15:30:32.026673'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2023-04-27 15:30:32.047190'),
(6, 'contenttypes', '0002_remove_content_type_name', '2023-04-27 15:30:32.168765'),
(7, 'auth', '0002_alter_permission_name_max_length', '2023-04-27 15:30:32.247006'),
(8, 'auth', '0003_alter_user_email_max_length', '2023-04-27 15:30:32.336600'),
(9, 'auth', '0004_alter_user_username_opts', '2023-04-27 15:30:32.360536'),
(10, 'auth', '0005_alter_user_last_login_null', '2023-04-27 15:30:32.420479'),
(11, 'auth', '0006_require_contenttypes_0002', '2023-04-27 15:30:32.427500'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2023-04-27 15:30:32.443462'),
(13, 'auth', '0008_alter_user_username_max_length', '2023-04-27 15:30:32.475374'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2023-04-27 15:30:32.526843'),
(15, 'auth', '0010_alter_group_name_max_length', '2023-04-27 15:30:32.614519'),
(16, 'auth', '0011_update_proxy_permissions', '2023-04-27 15:30:32.638237'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2023-04-27 15:30:32.671452'),
(18, 'sessions', '0001_initial', '2023-04-27 15:30:32.721739'),
(19, 'attendance_app', '0001_initial', '2023-04-27 16:39:20.632982'),
(20, 'attendance_app', '0002_alter_employeeinfo_table', '2023-04-27 16:59:04.076620'),
(21, 'attendance_app', '0003_alter_employeeinfo_table_alter_shiftmaster_table', '2023-04-27 17:01:06.423772'),
(22, 'attendance_app', '0002_employeelist', '2023-04-27 17:04:28.725751'),
(23, 'attendance_app', '0003_alter_employeelist_date_of_birth_and_more', '2023-04-27 17:06:51.329772'),
(24, 'attendance_app', '0004_alter_employeelist_status', '2023-04-27 17:09:08.616115');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('0grw1vyfafnx17hrn79nvb5qz1462lzo', '.eJxVj8sOgjAQRX_FdG2alj6g7nTPN5CBmQoCreGxMMZ_F5AF7iZz7pzMfbMC5qku5pGGokF2YZKdj7sSqpbCCvAB4R55FcM0NCVfI3ynI88jUnfbs3-CGsZ6ufaplKlOvHWJMRV4ZTNpLWkFXtrKGsDECiRfohZeW69M6RKXonOGvBF6kVL_3F6U29jFF1ERoKfFniM_XdsWRnZgvzpSCKEy9vkC-FZK4g:1psEpD:vUanwbb0NVJgwlFHEb_uG3aKcpXXxaK9kCH2jSISGM0', '2023-05-12 03:31:11.730964');

-- --------------------------------------------------------

--
-- Table structure for table `employee_attendance`
--

CREATE TABLE `employee_attendance` (
  `id` bigint(20) NOT NULL,
  `employee_id` bigint(20) NOT NULL,
  `shift_id` bigint(20) NOT NULL,
  `att_date` date DEFAULT NULL,
  `in_time` time(6) DEFAULT NULL,
  `out_time` time(6) DEFAULT NULL,
  `shift_in_time` time(6) DEFAULT NULL,
  `shift_out_time` time(6) DEFAULT NULL,
  `atten_status` varchar(20) NOT NULL,
  `is_manual` tinyint(1) NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified_by` int(11) DEFAULT NULL,
  `created` datetime(6) DEFAULT NULL,
  `modified` datetime(6) DEFAULT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `employee_attendance`
--

INSERT INTO `employee_attendance` (`id`, `employee_id`, `shift_id`, `att_date`, `in_time`, `out_time`, `shift_in_time`, `shift_out_time`, `atten_status`, `is_manual`, `created_by`, `modified_by`, `created`, `modified`, `status`) VALUES
(1, 1, 2, '2023-04-28', '10:13:00.000000', NULL, NULL, NULL, 'late present', 0, 0, NULL, '2023-04-28 15:13:47.383631', '2023-04-28 15:13:47.383631', 1),
(2, 2, 2, '2023-04-28', '09:13:00.000000', NULL, NULL, NULL, 'present', 0, 0, NULL, '2023-04-28 15:13:47.395352', '2023-04-28 15:13:47.395352', 1),
(3, 3, 2, '2023-04-28', '09:13:00.000000', NULL, NULL, NULL, 'present', 0, 0, NULL, '2023-04-28 15:13:47.398343', '2023-04-28 15:13:47.398343', 1),
(4, 4, 3, '2023-04-28', '09:13:00.000000', NULL, NULL, NULL, 'present', 0, 0, NULL, '2023-04-28 15:13:47.403324', '2023-04-28 15:13:47.403324', 1),
(5, 5, 3, '2023-04-28', '09:13:00.000000', NULL, NULL, NULL, 'present', 0, 0, NULL, '2023-04-28 15:13:47.407357', '2023-04-28 15:13:47.407357', 1),
(6, 6, 2, '2023-04-28', NULL, NULL, NULL, NULL, 'absent', 0, 0, NULL, '2023-04-28 15:13:47.410771', '2023-04-28 15:13:47.410771', 1),
(7, 7, 2, '2023-04-28', NULL, NULL, NULL, NULL, 'absent', 0, 0, NULL, '2023-04-28 15:13:47.413299', '2023-04-28 15:13:47.413299', 1),
(8, 8, 2, '2023-04-28', NULL, NULL, NULL, NULL, 'late present', 0, 0, NULL, '2023-04-28 15:13:47.416721', '2023-04-28 15:13:47.416721', 1),
(9, 9, 2, '2023-04-28', NULL, NULL, NULL, NULL, 'absent', 0, 0, NULL, '2023-04-28 15:13:47.420838', '2023-04-28 15:13:47.421709', 1),
(10, 10, 2, '2023-04-28', NULL, NULL, NULL, NULL, 'absent', 0, 0, NULL, '2023-04-28 15:13:47.424699', '2023-04-28 15:13:47.424699', 1),
(11, 11, 2, '2023-04-28', NULL, NULL, NULL, NULL, 'absent', 0, 0, NULL, '2023-04-28 15:13:47.427692', '2023-04-28 15:13:47.427692', 1),
(12, 12, 2, '2023-04-28', NULL, NULL, NULL, NULL, 'absent', 0, 0, NULL, '2023-04-28 15:13:47.430685', '2023-04-28 15:13:47.430685', 1),
(13, 13, 2, '2023-04-28', NULL, NULL, NULL, NULL, 'leave', 0, 0, NULL, '2023-04-28 15:13:47.433798', '2023-04-28 15:13:47.433798', 1),
(14, 14, 2, '2023-04-28', NULL, NULL, NULL, NULL, 'absent', 0, 0, NULL, '2023-04-28 15:13:47.437073', '2023-04-28 15:13:47.437073', 1),
(15, 15, 2, '2023-04-28', NULL, NULL, NULL, NULL, 'absent', 0, 0, NULL, '2023-04-28 15:13:47.439933', '2023-04-28 15:13:47.439933', 1),
(16, 16, 2, '2023-04-28', NULL, NULL, NULL, NULL, 'absent', 0, 0, NULL, '2023-04-28 15:13:47.443301', '2023-04-28 15:13:47.443301', 1),
(17, 17, 2, '2023-04-28', NULL, NULL, NULL, NULL, 'leave', 0, 0, NULL, '2023-04-28 15:13:47.451280', '2023-04-28 15:13:47.451280', 1),
(18, 18, 2, '2023-04-28', NULL, NULL, NULL, NULL, 'absent', 0, 0, NULL, '2023-04-28 15:13:47.454879', '2023-04-28 15:13:47.454879', 1),
(19, 19, 2, '2023-04-28', NULL, NULL, NULL, NULL, 'absent', 0, 0, NULL, '2023-04-28 15:13:47.457816', '2023-04-28 15:13:47.457816', 1),
(20, 20, 2, '2023-04-28', NULL, NULL, NULL, NULL, 'absent', 0, 0, NULL, '2023-04-28 15:13:47.460814', '2023-04-28 15:13:47.460814', 1),
(21, 21, 2, '2023-04-28', NULL, NULL, NULL, NULL, 'absent', 0, 0, NULL, '2023-04-28 15:13:47.463504', '2023-04-28 15:13:47.463504', 1),
(22, 22, 2, '2023-04-28', NULL, NULL, NULL, NULL, 'late present', 0, 0, NULL, '2023-04-28 15:13:47.466172', '2023-04-28 15:13:47.466172', 1),
(23, 23, 2, '2023-04-28', NULL, NULL, NULL, NULL, 'absent', 0, 0, NULL, '2023-04-28 15:13:47.470052', '2023-04-28 15:13:47.470052', 1),
(24, 24, 2, '2023-04-28', NULL, NULL, NULL, NULL, 'late present', 0, 0, NULL, '2023-04-28 15:13:47.473080', '2023-04-28 15:13:47.473080', 1),
(25, 25, 2, '2023-04-28', NULL, NULL, NULL, NULL, 'late present', 0, 0, NULL, '2023-04-28 15:13:47.476073', '2023-04-28 15:13:47.476073', 1),
(26, 26, 2, '2023-04-28', NULL, NULL, NULL, NULL, 'absent', 0, 0, NULL, '2023-04-28 15:13:47.479063', '2023-04-28 15:13:47.479063', 1),
(27, 27, 2, '2023-04-28', NULL, NULL, NULL, NULL, 'absent', 0, 0, NULL, '2023-04-28 15:13:47.482785', '2023-04-28 15:13:47.482785', 1),
(28, 28, 2, '2023-04-28', NULL, NULL, NULL, NULL, 'absent', 0, 0, NULL, '2023-04-28 15:13:47.486041', '2023-04-28 15:13:47.486041', 1),
(29, 29, 2, '2023-04-28', NULL, NULL, NULL, NULL, 'absent', 0, 0, NULL, '2023-04-28 15:13:47.490030', '2023-04-28 15:13:47.490030', 1),
(30, 30, 2, '2023-04-28', NULL, NULL, NULL, NULL, 'absent', 0, 0, NULL, '2023-04-28 15:13:47.493068', '2023-04-28 15:13:47.493068', 1),
(31, 31, 2, '2023-04-28', NULL, NULL, NULL, NULL, 'absent', 0, 0, NULL, '2023-04-28 15:13:47.497012', '2023-04-28 15:13:47.497012', 1),
(32, 32, 2, '2023-04-28', NULL, NULL, NULL, NULL, 'absent', 0, 0, NULL, '2023-04-28 15:13:47.500006', '2023-04-28 15:13:47.500006', 1),
(33, 33, 2, '2023-04-28', NULL, NULL, NULL, NULL, 'absent', 0, 0, NULL, '2023-04-28 15:13:47.503992', '2023-04-28 15:13:47.503992', 1),
(34, 34, 2, '2023-04-28', NULL, NULL, NULL, NULL, 'absent', 0, 0, NULL, '2023-04-28 15:13:47.506984', '2023-04-28 15:13:47.506984', 1),
(35, 35, 2, '2023-04-28', NULL, NULL, NULL, NULL, 'absent', 0, 0, NULL, '2023-04-28 15:13:47.510127', '2023-04-28 15:13:47.510974', 1),
(36, 36, 2, '2023-04-28', NULL, NULL, NULL, NULL, 'absent', 0, 0, NULL, '2023-04-28 15:13:47.512968', '2023-04-28 15:13:47.514010', 1),
(37, 37, 2, '2023-04-28', NULL, NULL, NULL, NULL, 'absent', 0, 0, NULL, '2023-04-28 15:13:47.516966', '2023-04-28 15:13:47.516966', 1),
(38, 38, 2, '2023-04-28', NULL, NULL, NULL, NULL, 'absent', 0, 0, NULL, '2023-04-28 15:13:47.520947', '2023-04-28 15:13:47.520947', 1),
(39, 39, 2, '2023-04-28', NULL, NULL, NULL, NULL, 'absent', 0, 0, NULL, '2023-04-28 15:13:47.523941', '2023-04-28 15:13:47.524940', 1),
(40, 40, 2, '2023-04-28', NULL, NULL, NULL, NULL, 'absent', 0, 0, NULL, '2023-04-28 15:13:47.527972', '2023-04-28 15:13:47.527972', 1),
(41, 41, 2, '2023-04-28', NULL, NULL, NULL, NULL, 'absent', 0, 0, NULL, '2023-04-28 15:13:47.530921', '2023-04-28 15:13:47.530921', 1),
(42, 42, 2, '2023-04-28', NULL, NULL, NULL, NULL, 'absent', 0, 0, NULL, '2023-04-28 15:13:47.534943', '2023-04-28 15:13:47.534943', 1),
(43, 43, 2, '2023-04-28', NULL, NULL, NULL, NULL, 'absent', 0, 0, NULL, '2023-04-28 15:13:47.539059', '2023-04-28 15:13:47.539059', 1),
(44, 44, 2, '2023-04-28', NULL, NULL, NULL, NULL, 'absent', 0, 0, NULL, '2023-04-28 15:13:47.542975', '2023-04-28 15:13:47.542975', 1),
(45, 45, 2, '2023-04-28', NULL, NULL, NULL, NULL, 'absent', 0, 0, NULL, '2023-04-28 15:13:47.545970', '2023-04-28 15:13:47.545970', 1),
(46, 46, 2, '2023-04-28', NULL, NULL, NULL, NULL, 'absent', 0, 0, NULL, '2023-04-28 15:13:47.549300', '2023-04-28 15:13:47.549300', 1),
(47, 47, 2, '2023-04-28', NULL, NULL, NULL, NULL, 'absent', 0, 0, NULL, '2023-04-28 15:13:47.553764', '2023-04-28 15:13:47.553764', 1),
(48, 48, 2, '2023-04-28', NULL, NULL, NULL, NULL, 'absent', 0, 0, NULL, '2023-04-28 15:13:47.556856', '2023-04-28 15:13:47.556856', 1),
(49, 49, 2, '2023-04-28', NULL, NULL, NULL, NULL, 'absent', 0, 0, NULL, '2023-04-28 15:13:47.559751', '2023-04-28 15:13:47.559751', 1),
(50, 50, 2, '2023-04-28', NULL, NULL, NULL, NULL, 'absent', 0, 0, NULL, '2023-04-28 15:13:47.562740', '2023-04-28 15:13:47.562740', 1),
(51, 51, 2, '2023-04-28', NULL, NULL, NULL, NULL, 'absent', 0, 0, NULL, '2023-04-28 15:13:47.565357', '2023-04-28 15:13:47.565357', 1),
(52, 1, 2, '2023-03-27', '11:02:00.000000', NULL, NULL, NULL, 'present', 0, 0, NULL, '2023-04-28 17:04:02.142427', '2023-04-28 17:04:02.142427', 1),
(53, 2, 2, '2023-03-27', '11:03:00.000000', NULL, NULL, NULL, 'present', 0, 0, NULL, '2023-04-28 17:04:02.146415', '2023-04-28 17:04:02.146415', 1),
(54, 3, 2, '2023-03-27', '11:03:00.000000', NULL, NULL, NULL, 'present', 0, 0, NULL, '2023-04-28 17:04:02.149411', '2023-04-28 17:04:02.149411', 1),
(55, 4, 2, '2023-03-27', '11:03:00.000000', NULL, NULL, NULL, 'present', 0, 0, NULL, '2023-04-28 17:04:02.152401', '2023-04-28 17:04:02.152401', 1),
(56, 5, 2, '2023-03-27', '11:03:00.000000', NULL, NULL, NULL, 'present', 0, 0, NULL, '2023-04-28 17:04:02.155391', '2023-04-28 17:04:02.155391', 1),
(57, 6, 2, '2023-03-27', '11:03:00.000000', NULL, NULL, NULL, 'present', 0, 0, NULL, '2023-04-28 17:04:02.157418', '2023-04-28 17:04:02.157418', 1),
(58, 7, 2, '2023-03-27', '11:03:00.000000', NULL, NULL, NULL, 'present', 0, 0, NULL, '2023-04-28 17:04:02.162129', '2023-04-28 17:04:02.162129', 1),
(59, 8, 2, '2023-03-27', '11:03:00.000000', NULL, NULL, NULL, 'present', 0, 0, NULL, '2023-04-28 17:04:02.166079', '2023-04-28 17:04:02.166079', 1),
(60, 9, 2, '2023-03-27', '11:03:00.000000', NULL, NULL, NULL, 'present', 0, 0, NULL, '2023-04-28 17:04:02.169066', '2023-04-28 17:04:02.169066', 1),
(61, 10, 2, '2023-04-28', '11:03:00.000000', NULL, NULL, NULL, 'present', 0, 0, NULL, '2023-04-28 17:04:02.171062', '2023-04-28 17:04:02.171062', 1),
(62, 11, 2, '2023-04-28', '11:03:00.000000', NULL, NULL, NULL, 'present', 0, 0, NULL, '2023-04-28 17:04:02.173541', '2023-04-28 17:04:02.173541', 1),
(63, 12, 2, '2023-04-28', '11:03:00.000000', NULL, NULL, NULL, 'present', 0, 0, NULL, '2023-04-28 17:04:02.176296', '2023-04-28 17:04:02.176296', 1),
(64, 13, 2, '2023-04-28', NULL, NULL, NULL, NULL, 'absent', 0, 0, NULL, '2023-04-28 17:04:02.178303', '2023-04-28 17:04:02.178303', 1),
(65, 14, 2, '2023-04-28', NULL, NULL, NULL, NULL, 'absent', 0, 0, NULL, '2023-04-28 17:04:02.183298', '2023-04-28 17:04:02.183298', 1),
(66, 15, 2, '2023-04-28', NULL, NULL, NULL, NULL, 'absent', 0, 0, NULL, '2023-04-28 17:04:02.186285', '2023-04-28 17:04:02.186285', 1),
(67, 16, 2, '2023-04-28', NULL, NULL, NULL, NULL, 'absent', 0, 0, NULL, '2023-04-28 17:04:02.188281', '2023-04-28 17:04:02.188281', 1),
(68, 17, 2, '2023-04-28', NULL, NULL, NULL, NULL, 'absent', 0, 0, NULL, '2023-04-28 17:04:02.191004', '2023-04-28 17:04:02.191004', 1),
(69, 18, 2, '2023-04-28', NULL, NULL, NULL, NULL, 'absent', 0, 0, NULL, '2023-04-28 17:04:02.193769', '2023-04-28 17:04:02.193769', 1),
(70, 19, 2, '2023-04-28', NULL, NULL, NULL, NULL, 'absent', 0, 0, NULL, '2023-04-28 17:04:02.196362', '2023-04-28 17:04:02.196362', 1),
(71, 20, 2, '2023-04-28', NULL, NULL, NULL, NULL, 'absent', 0, 0, NULL, '2023-04-28 17:04:02.199260', '2023-04-28 17:04:02.199260', 1),
(72, 21, 2, '2023-04-28', NULL, NULL, NULL, NULL, 'absent', 0, 0, NULL, '2023-04-28 17:04:02.202251', '2023-04-28 17:04:02.202251', 1),
(73, 22, 2, '2023-04-28', NULL, NULL, NULL, NULL, 'absent', 0, 0, NULL, '2023-04-28 17:04:02.204244', '2023-04-28 17:04:02.204244', 1),
(74, 23, 2, '2023-04-28', NULL, NULL, NULL, NULL, 'absent', 0, 0, NULL, '2023-04-28 17:04:02.206270', '2023-04-28 17:04:02.207237', 1),
(75, 24, 2, '2023-04-28', NULL, NULL, NULL, NULL, 'absent', 0, 0, NULL, '2023-04-28 17:04:02.211447', '2023-04-28 17:04:02.211447', 1),
(76, 25, 2, '2023-04-28', NULL, NULL, NULL, NULL, 'absent', 0, 0, NULL, '2023-04-28 17:04:02.219054', '2023-04-28 17:04:02.219054', 1),
(77, 26, 2, '2023-04-28', NULL, NULL, NULL, NULL, 'absent', 0, 0, NULL, '2023-04-28 17:04:02.221524', '2023-04-28 17:04:02.221524', 1),
(78, 27, 2, '2023-04-28', NULL, NULL, NULL, NULL, 'absent', 0, 0, NULL, '2023-04-28 17:04:02.224270', '2023-04-28 17:04:02.224270', 1),
(79, 28, 2, '2023-04-28', NULL, NULL, NULL, NULL, 'absent', 0, 0, NULL, '2023-04-28 17:04:02.227115', '2023-04-28 17:04:02.227115', 1),
(80, 29, 2, '2023-04-28', NULL, NULL, NULL, NULL, 'absent', 0, 0, NULL, '2023-04-28 17:04:02.229737', '2023-04-28 17:04:02.229737', 1),
(81, 30, 2, '2023-04-28', NULL, NULL, NULL, NULL, 'absent', 0, 0, NULL, '2023-04-28 17:04:02.232620', '2023-04-28 17:04:02.232620', 1),
(82, 31, 2, '2023-04-28', NULL, NULL, NULL, NULL, 'absent', 0, 0, NULL, '2023-04-28 17:04:02.235637', '2023-04-28 17:04:02.235637', 1),
(83, 32, 2, '2023-04-28', NULL, NULL, NULL, NULL, 'absent', 0, 0, NULL, '2023-04-28 17:04:02.237844', '2023-04-28 17:04:02.237844', 1),
(84, 33, 2, '2023-04-28', NULL, NULL, NULL, NULL, 'absent', 0, 0, NULL, '2023-04-28 17:04:02.240600', '2023-04-28 17:04:02.240600', 1),
(85, 34, 2, '2023-04-28', NULL, NULL, NULL, NULL, 'absent', 0, 0, NULL, '2023-04-28 17:04:02.248265', '2023-04-28 17:04:02.248265', 1),
(86, 35, 2, '2023-04-28', NULL, NULL, NULL, NULL, 'absent', 0, 0, NULL, '2023-04-28 17:04:02.251256', '2023-04-28 17:04:02.251256', 1),
(87, 36, 2, '2023-04-28', NULL, NULL, NULL, NULL, 'absent', 0, 0, NULL, '2023-04-28 17:04:02.254243', '2023-04-28 17:04:02.254243', 1),
(88, 37, 2, '2023-04-28', NULL, NULL, NULL, NULL, 'absent', 0, 0, NULL, '2023-04-28 17:04:02.256744', '2023-04-28 17:04:02.256744', 1),
(89, 38, 2, '2023-04-28', NULL, NULL, NULL, NULL, 'absent', 0, 0, NULL, '2023-04-28 17:04:02.259365', '2023-04-28 17:04:02.259365', 1),
(90, 39, 2, '2023-04-28', NULL, NULL, NULL, NULL, 'absent', 0, 0, NULL, '2023-04-28 17:04:02.261923', '2023-04-28 17:04:02.261923', 1),
(91, 40, 2, '2023-04-28', NULL, NULL, NULL, NULL, 'absent', 0, 0, NULL, '2023-04-28 17:04:02.265989', '2023-04-28 17:04:02.265989', 1),
(92, 41, 2, '2023-04-28', NULL, NULL, NULL, NULL, 'absent', 0, 0, NULL, '2023-04-28 17:04:02.267980', '2023-04-28 17:04:02.267980', 1),
(93, 42, 2, '2023-04-28', NULL, NULL, NULL, NULL, 'absent', 0, 0, NULL, '2023-04-28 17:04:02.270972', '2023-04-28 17:04:02.270972', 1),
(94, 43, 2, '2023-04-28', NULL, NULL, NULL, NULL, 'absent', 0, 0, NULL, '2023-04-28 17:04:02.273350', '2023-04-28 17:04:02.273350', 1),
(95, 44, 2, '2023-04-28', NULL, NULL, NULL, NULL, 'absent', 0, 0, NULL, '2023-04-28 17:04:02.275998', '2023-04-28 17:04:02.275998', 1),
(96, 45, 2, '2023-04-28', NULL, NULL, NULL, NULL, 'absent', 0, 0, NULL, '2023-04-28 17:04:02.278754', '2023-04-28 17:04:02.278754', 1),
(97, 46, 2, '2023-04-28', NULL, NULL, NULL, NULL, 'absent', 0, 0, NULL, '2023-04-28 17:04:02.282642', '2023-04-28 17:04:02.282642', 1),
(98, 47, 2, '2023-04-28', NULL, NULL, NULL, NULL, 'absent', 0, 0, NULL, '2023-04-28 17:04:02.284632', '2023-04-28 17:04:02.284632', 1),
(99, 48, 2, '2023-04-28', NULL, NULL, NULL, NULL, 'absent', 0, 0, NULL, '2023-04-28 17:04:02.287590', '2023-04-28 17:04:02.287590', 1),
(100, 49, 2, '2023-04-28', NULL, NULL, NULL, NULL, 'absent', 0, 0, NULL, '2023-04-28 17:04:02.290250', '2023-04-28 17:04:02.290250', 1),
(101, 50, 2, '2023-04-28', NULL, NULL, NULL, NULL, 'absent', 0, 0, NULL, '2023-04-28 17:04:02.292670', '2023-04-28 17:04:02.292670', 1),
(102, 51, 2, '2023-04-28', NULL, NULL, NULL, NULL, 'absent', 0, 0, NULL, '2023-04-28 17:04:02.295403', '2023-04-28 17:04:02.295403', 1);

-- --------------------------------------------------------

--
-- Table structure for table `employee_list`
--

CREATE TABLE `employee_list` (
  `id` bigint(20) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `employee_id` varchar(45) DEFAULT NULL,
  `father_name` varchar(255) DEFAULT NULL,
  `mother_name` varchar(255) DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `religion` varchar(255) DEFAULT NULL,
  `nationality` varchar(255) DEFAULT NULL,
  `nid` varchar(255) DEFAULT NULL,
  `photo` varchar(100) DEFAULT NULL,
  `joining_date` date DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `created` datetime(6) DEFAULT NULL,
  `branch_id` bigint(20) DEFAULT NULL,
  `department_id` bigint(20) DEFAULT NULL,
  `designation_id` bigint(20) DEFAULT NULL,
  `permanent_address` longtext DEFAULT NULL,
  `present_address` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `employee_list`
--

INSERT INTO `employee_list` (`id`, `first_name`, `last_name`, `employee_id`, `father_name`, `mother_name`, `mobile`, `email`, `gender`, `date_of_birth`, `religion`, `nationality`, `nid`, `photo`, `joining_date`, `password`, `status`, `created`, `branch_id`, `department_id`, `designation_id`, `permanent_address`, `present_address`) VALUES
(1, 'Riazul Islam', 'nan', '1100005', 'Nazrul Islam', 'Shamsun Nahar', '1912145217', 'riazulislambd68@gmail.com', 'Male', '1990-10-09', 'Islam', 'Bangladeshi', NULL, '', NULL, NULL, 1, '2023-04-28 14:44:40.812232', 1, 1, 3, NULL, NULL),
(2, 'M. M. A. Yeasin', 'nan', '1100012', 'M M A Wadud', 'Atica Afroz', '01750161515', 'mma.yeasin@gmail.com', 'Male', '1992-04-21', 'Islam', 'Bangladeshi', NULL, '', NULL, NULL, 1, '2023-04-28 14:44:40.816227', 1, 1, 3, NULL, NULL),
(3, 'Ahmed Reja', 'nan', '1100008', 'Late Md. Dulal Uddin Ahmed', 'Monowara Ahmed', '1819028970', 'reja@isho.com', 'Male', '1989-10-15', 'Islam', 'Bangladeshi', NULL, '', NULL, NULL, 1, '2023-04-28 14:44:40.819975', 1, 1, 3, NULL, NULL),
(4, 'Shaiful Islam', 'nan', '1100014', 'Sadak Ahmed ', 'Jahanara Begum ', '1628705126', 'saifulislamrobin@gmail.com', 'Male', '1994-12-10', 'Islam', 'Bangladeshi', NULL, '', NULL, NULL, 1, '2023-04-28 14:44:40.825964', 1, 1, 3, NULL, NULL),
(5, 'Md. Farhad', 'nan', '1100011', 'Late Ali Ahmmad ', 'Pyara Begum ', '1813024412', 'nan', 'Male', '1985-04-02', 'nan', 'Bangladeshi', NULL, '', NULL, NULL, 1, '2023-04-28 14:44:40.828953', 1, 1, 3, NULL, NULL),
(6, 'Md. Imran Hossain', 'nan', '1100007', 'Md. Wahidul Islam ', 'Momtaz Begam ', '1780079690', 'imran_ied@yahoo.com', 'Male', '1993-01-01', 'Islam', 'Bangladeshi', NULL, '', NULL, NULL, 1, '2023-04-28 14:44:40.832946', 1, 1, 3, NULL, NULL),
(7, 'Pinak Pani Saha', 'nan', '1100001', 'Braja Gopal Saha', 'Kastury Pramanik', '1520104652', 'pinakarchi@gmail.com', 'Male', '1992-05-31', 'Islam', 'Bangladeshi', NULL, '', NULL, NULL, 1, '2023-04-28 14:44:40.836621', 1, 1, 3, NULL, NULL),
(8, 'Md. Jahurul', 'Islam', '1100023', 'Md. Abdul Mojid', 'Mrs. Jahura Khatun', '01915099950', 'nan', 'Male', '1993-01-01', 'Islam', 'Bangladeshi', NULL, '', NULL, NULL, 1, '2023-04-28 14:44:40.840245', 1, 1, 3, NULL, NULL),
(9, 'S.M. Ariful Haider', 'nan', '1100021', 'md.Abdul hamid', 'Jannatul latifa', '01721281004', 'ariful750262@gmail.com', 'Male', '1990-02-13', 'Islam', 'Bangladeshi', NULL, '', NULL, NULL, 1, '2023-04-28 14:44:40.843228', 1, 1, 3, NULL, NULL),
(10, 'Md. Monirul', ' Islam', '1100016', 'Jendar Ali Sarkar', 'Rekha Begum', '01915047779', 'monirul89@gmail.com', 'Male', '1998-02-12', 'Islam', 'Bangladeshi', NULL, '', NULL, NULL, 1, '2023-04-28 14:44:40.846221', 1, 1, 3, NULL, NULL),
(11, 'Alif Arman', 'Arman', '1100027', 'MD. Nurul Haque', 'Afroza Haque', '01671300377', 'alifarmaneee@gmail.com', 'Male', '1996-10-01', 'Islam', 'Bangladeshi', NULL, '', NULL, NULL, 1, '2023-04-28 14:44:40.853263', 1, 1, 3, NULL, NULL),
(12, 'Nayeem Ahmed', 'nan', '1100019', 'Late. Ahmed Hossain', 'Taslima Hossain', '1841296837', 'nayeemahmed123@yahoo.com', 'Male', '1996-01-24', 'Islam', 'Bangladeshi', NULL, '', NULL, NULL, 1, '2023-04-28 14:44:40.861058', 1, 1, 3, NULL, NULL),
(13, 'Rayana Hossain', 'nan', '1100000', 'M Shahid Hossain', 'nan', 'nan', 'nan', 'Female', '1990-09-01', 'nan', 'Bangladeshi', NULL, '', NULL, NULL, 1, '2023-04-28 14:44:40.865376', 1, 1, 3, NULL, NULL),
(14, 'Imam Hossain', 'nan', '1100044', 'Saiful Islam', 'nan', '01716491735', 'imam.hossain@isho.com', 'Male', '1995-01-02', 'nan', 'Bangladeshi', NULL, '', NULL, NULL, 1, '2023-04-28 14:44:40.868623', 1, 1, 3, NULL, NULL),
(15, 'Mazharul Islam', 'nan', '1300026', 'Harunur Rashid', 'Monoyara  Begum', '01533852386', 'nan', 'Male', '1988-11-30', 'islam', 'Bangladeshi', NULL, '', NULL, NULL, 1, '2023-04-28 14:44:40.872600', 1, 1, 3, NULL, NULL),
(16, 'A. K. M. Rezowan Uddin Ansari (Palash)', 'nan', '1100039', 'nan', 'nan', 'nan', 'nan', 'Male', '1988-12-01', 'nan', 'Bangladeshi', NULL, '', NULL, NULL, 1, '2023-04-28 14:44:40.876619', 1, 1, 3, NULL, NULL),
(17, 'Md. Fazlul Hoque', 'nan', '1100052', 'Md. Sahidur Rahman', 'Mst. Ferdousi Begum', 'nan', 'nan', 'Male', '1992-02-27', 'nan', 'Bangladeshi', NULL, '', NULL, NULL, 1, '2023-04-28 14:44:40.880181', 1, 1, 3, NULL, NULL),
(18, 'Md Swakhawat Hossen', 'nan', '1100054', 'nan', 'nan', 'nan', 'nan', 'Male', '1983-03-01', 'nan', 'Bangladeshi', NULL, '', NULL, NULL, 1, '2023-04-28 14:44:40.883594', 1, 1, 3, NULL, NULL),
(19, 'Ayatullah Al Murji Sadik', 'nan', '1100055', 'nan', 'nan', 'nan', 'nan', 'Male', '1995-06-02', 'nan', 'Bangladeshi', NULL, '', NULL, NULL, 1, '2023-04-28 14:44:40.887275', 1, 1, 3, NULL, NULL),
(20, 'Maruf Hasan Taman', 'nan', '1100057', 'Tania Akter', 'A.K.M. Rustum Ali Mia', '01881655563', 'marufhasantaman@gmail.com', 'Male', '1995-11-30', 'Islam', 'Bangladeshi', NULL, '', NULL, NULL, 1, '2023-04-28 14:44:40.891006', 1, 1, 3, NULL, NULL),
(21, 'Atiqur Rahman', 'nan', '1100062', 'Abdul Hai', 'Salina Begum', '01689307457', 'nan', 'Male', '1994-06-22', 'islam', 'Bangladeshi', NULL, '', NULL, NULL, 1, '2023-04-28 14:44:40.894511', 1, 1, 3, NULL, NULL),
(22, 'Md. Raka Sheikh', 'nan', '1100093', 'Md. Aliar Sheikh', 'Sajeda Begum', '01745359346', 'nan', 'Male', '1988-11-27', 'islam', 'Bangladeshi', NULL, '', NULL, NULL, 1, '2023-04-28 14:44:40.897922', 1, 1, 3, NULL, NULL),
(23, 'Md. Mursalin Molla', 'nan', '1100068', 'Md. Asraf Ali Molla', 'Shokuron Nesa', '01939450192', 'nan', 'Male', '1994-02-02', 'islam', 'Bangladeshi', NULL, '', NULL, NULL, 1, '2023-04-28 14:44:40.901564', 1, 1, 3, NULL, NULL),
(24, 'MD. Tanvir Ahmed', 'nan', '1100069', 'Late Tomizuddin', 'Mst. Fazilatun Nesa', '01787903148', 'nan', 'Male', '2000-08-19', 'islam', 'Bangladeshi', NULL, '', NULL, NULL, 1, '2023-04-28 14:44:40.905217', 1, 1, 3, NULL, NULL),
(25, 'Alok Varman', 'nan', '1100070', 'Lt. S R Varman', 'Neera Varman', '+91-9717900920', 'nan', 'Male', '1976-10-23', 'hindu', 'Bangladeshi', NULL, '', NULL, NULL, 1, '2023-04-28 14:44:40.908203', 1, 1, 3, NULL, NULL),
(26, 'Afroz Hossain', 'nan', '1100071', 'Late Imran Hossain', 'Akbari Begum', '01766226262', 'nan', 'Male', '1997-12-05', 'islam', 'Bangladeshi', NULL, '', NULL, NULL, 1, '2023-04-28 14:44:40.911192', 1, 1, 3, NULL, NULL),
(27, 'Md. Golam Mostofa', 'nan', '1300027', 'Mohammod Ali', 'Mst. Hasina Khatun', '01735014334', 'nan', 'Male', '1990-12-27', 'islam', 'Bangladeshi', NULL, '', NULL, NULL, 1, '2023-04-28 14:44:40.915363', 1, 1, 3, NULL, NULL),
(28, 'Zakir Hosen', 'nan', '1100077', 'Samsul Alam', 'Salma Begum', '01624637619', 'nan', 'Male', '1988-12-03', 'islam', 'Bangladeshi', NULL, '', NULL, NULL, 1, '2023-04-28 14:44:40.918955', 1, 1, 3, NULL, NULL),
(29, 'Ayan Gupta', 'nan', '1200054', 'Swapan Kumar Gupta', 'Popi Paul', '01711081617', 'nan', 'Male', '1988-12-30', 'Hindu', 'Bangladeshi', NULL, '', NULL, NULL, 1, '2023-04-28 14:44:40.922857', 1, 1, 3, NULL, NULL),
(30, 'Rupa Chakraborty', 'nan', '1100078', 'Partha Sarothi Chakraborty', 'Dippali Chakraborty', '01748747897', 'nan', 'Female', '1996-12-20', 'hindu', 'Bangladeshi', NULL, '', NULL, NULL, 1, '2023-04-28 14:44:40.926394', 1, 1, 3, NULL, NULL),
(31, 'Asma Azad Purnima', 'nan', '1200055', 'Majharul Ehasan Azad', 'Sazeda Sultana', '01865657712', 'nan', 'Female', '1993-10-09', 'islam', 'Bangladeshi', NULL, '', NULL, NULL, 1, '2023-04-28 14:44:40.930022', 1, 1, 3, NULL, NULL),
(32, 'Md. Atiqur Rahaman', 'nan', '1100079', 'Md. Amir Hossain', 'Mst. Sharmin Hossain', '01647544158', 'nan', 'Male', '1990-07-13', 'islam', 'Bangladeshi', NULL, '', NULL, NULL, 1, '2023-04-28 14:44:40.934007', 1, 1, 3, NULL, NULL),
(33, 'Sufia Akter', 'nan', '1200062', 'Md. Sobahan', 'Bilkis Begum', '01737445540', 'nan', 'Female', '1997-01-16', 'islam', 'Bangladeshi', NULL, '', NULL, NULL, 1, '2023-04-28 14:44:40.940983', 1, 1, 3, NULL, NULL),
(34, 'Md. Moudud Shah Tutul', 'nan', '1200064', 'Md. Mursalin Shah', 'Mst. Moriom Nesa', '01738385290', 'nan', 'Male', '1997-01-01', 'islam', 'Bangladeshi', NULL, '', NULL, NULL, 1, '2023-04-28 14:44:40.944371', 1, 1, 3, NULL, NULL),
(35, 'Md. Mahadi Hasan', 'nan', '1100080', 'Md. Mojibur Rahman', 'Khairun Nahar', '01677671201', 'nan', 'Male', '1995-09-21', 'islam', 'Bangladeshi', NULL, '', NULL, NULL, 1, '2023-04-28 14:44:40.947814', 1, 1, 3, NULL, NULL),
(36, 'Shaudia Sarker Sunny', 'nan', '1100081', 'Md. Shafiqul Islam', 'Kalpona Begum', '01757427129', 'nan', 'Female', '1988-12-17', 'nan', 'Bangladeshi', NULL, '', NULL, NULL, 1, '2023-04-28 14:44:40.951105', 1, 1, 3, NULL, NULL),
(37, 'Mahiul Adnan', 'nan', '1200066', 'Md. Akram Uddin', 'Fakhrunnahar', '01683839644', 'nan', 'Male', '1995-07-04', 'islam', 'Bangladeshi', NULL, '', NULL, NULL, 1, '2023-04-28 14:44:40.954095', 1, 1, 3, NULL, NULL),
(38, 'Nusrat Binte Wahid', 'nan', '1200067', 'Md.Wahidur Rahman', 'Zinat Ara', '01721835195', 'nan', 'Female', '1998-03-10', 'islam', 'Bangladeshi', NULL, '', NULL, NULL, 1, '2023-04-28 14:44:40.957723', 1, 1, 3, NULL, NULL),
(39, 'Kajal Kumar Addya', 'nan', '1100082', 'Kanai Lal Addya', 'Rekha Rani Addya', '01741584838', 'nan', 'Male', '1975-06-01', 'hindu', 'Bangladeshi', NULL, '', NULL, NULL, 1, '2023-04-28 14:44:40.962066', 1, 1, 3, NULL, NULL),
(40, 'Md. Moktadir Rahman', 'nan', '1100083', 'MD Mizanur Rahman', 'Mhamuda Khatun', '01726704979', 'nan', 'Male', '1999-05-18', 'islam', 'Bangladeshi', NULL, '', NULL, NULL, 1, '2023-04-28 14:44:40.965057', 1, 1, 3, NULL, NULL),
(41, 'Muntaha Arifin Mim', 'nan', '1100084', 'Md Mamtaj Ali', 'Samsun Nahar', '01730984577', 'nan', 'Female', '2000-11-10', 'islam', 'Bangladeshi', NULL, '', NULL, NULL, 1, '2023-04-28 14:44:40.971804', 1, 1, 3, NULL, NULL),
(42, 'Rizvi Ahsan Mostaq', 'nan', '1200069', 'Md. Rafiqul Islam', 'Mostab Shiba Husni', '01737696575', 'nan', 'Male', '1993-09-10', 'islam', 'Bangladeshi', NULL, '', NULL, NULL, 1, '2023-04-28 14:44:40.975986', 1, 1, 3, NULL, NULL),
(43, 'Mashtura Binte Alam', 'nan', '1100086', 'MD. Badiul Alam', 'Rowshan Ara Islam', '01784654670', 'nan', 'Female', '1999-05-15', 'islam', 'Bangladeshi', NULL, '', NULL, NULL, 1, '2023-04-28 14:44:40.979897', 1, 1, 3, NULL, NULL),
(44, 'Kazi Mehtaj Tanjum', 'nan', '1300028', 'Kazi Iftekher Hossain', 'Nazmina Akther', '01992501468', 'nan', 'Female', '1999-09-18', 'islam', 'Bangladeshi', NULL, '', NULL, NULL, 1, '2023-04-28 14:44:40.983390', 1, 1, 3, NULL, NULL),
(45, 'Md Mofazzal Hossain', 'nan', '1300029', 'Mohammad Hossain', 'Mushammat Mahamuda Akter', '01617440042 ', 'nan', 'Male', '1994-09-23', 'islam', 'Bangladeshi', NULL, '', NULL, NULL, 1, '2023-04-28 14:44:40.986932', 1, 1, 3, NULL, NULL),
(46, 'Sahanur Karim Ridoy', 'nan', '1300030', 'Shafiq Ullah', 'Nazmun Nahar', '01516042028', 'nan', 'Male', '1999-12-01', 'islam', 'Bangladeshi', NULL, '', NULL, NULL, 1, '2023-04-28 14:44:40.990665', 1, 1, 3, NULL, NULL),
(47, 'Md. Rashid Abid', 'nan', '1100090', 'Md. Altafur Rahman', 'Sokhina Begum', '01966988311', 'nan', 'Male', '1993-07-01', 'islam', 'Bangladeshi', NULL, '', NULL, NULL, 1, '2023-04-28 14:44:40.994367', 1, 1, 3, NULL, NULL),
(48, 'Mukhlesur Rahman Bhuiyan', 'nan', '1300031', 'Zillur Rahman Bhuiyan', 'Hazera Begum', '01611525254', 'nan', 'Male', '1985-07-18', 'islam', 'Bangladeshi', NULL, '', NULL, NULL, 1, '2023-04-28 14:44:40.997354', 1, 1, 3, NULL, NULL),
(49, 'Md. Abdullah Al Maruf', 'nan', '1100092', 'Md. Bahadur Alam', 'Nasrin Sultana', '01571265314', 'nan', 'Male', '1997-11-15', 'islam', 'Bangladeshi', NULL, '', NULL, NULL, 1, '2023-04-28 14:44:41.001348', 1, 1, 3, NULL, NULL),
(50, 'Md. Faysal Ahmed', 'nan', '1100094', 'Md. Motalabe Miah', 'Sheuli Begum', '01754296994', 'nan', 'Male', '1993-10-20', 'islam', 'Bangladeshi', NULL, '', NULL, NULL, 1, '2023-04-28 14:44:41.005280', 1, 1, 3, NULL, NULL),
(51, 'Syeda Afruza Rupa', 'nan', '1200072', 'Md. Jalal Uddin', 'Rowsonara Begum', '01676236405', 'nan', 'Female', '1994-03-05', 'islam', 'Bangladeshi', NULL, '', NULL, NULL, 1, '2023-04-28 14:44:41.008035', 1, 1, 3, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `emp_department`
--

CREATE TABLE `emp_department` (
  `id` bigint(20) NOT NULL,
  `department` varchar(150) NOT NULL,
  `short_code` varchar(50) DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `created` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `emp_department`
--

INSERT INTO `emp_department` (`id`, `department`, `short_code`, `status`, `created`) VALUES
(1, 'Information Technology', 'IT', 1, '2023-04-27 16:55:40.253892'),
(2, 'Accounts and Finance', 'AC', 1, '2023-04-27 16:56:03.606391'),
(3, 'Supply Chain Management', 'SCM', 1, '2023-04-27 16:56:29.076313'),
(4, 'Marketing Management', 'Marketing', 1, '2023-04-27 16:56:53.508873'),
(5, 'Admin', 'Admin', 1, '2023-04-27 17:11:09.052524');

-- --------------------------------------------------------

--
-- Table structure for table `emp_designation`
--

CREATE TABLE `emp_designation` (
  `id` bigint(20) NOT NULL,
  `designation` varchar(150) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `emp_designation`
--

INSERT INTO `emp_designation` (`id`, `designation`, `status`, `created`) VALUES
(1, 'HR and Admin', 1, '2023-04-27 16:57:04.982842'),
(2, 'Senior Software Engineer', 1, '2023-04-27 16:57:12.511488'),
(3, 'Software Engineer', 1, '2023-04-27 16:57:16.550610'),
(4, 'Marketing Officer', 1, '2023-04-27 16:57:19.671541'),
(5, 'System Analysis', 1, '2023-04-27 16:57:23.401023'),
(6, 'Founder & CEO', 1, '2023-04-27 16:57:26.191891'),
(7, 'Web Design & Developer', 1, '2023-04-27 16:57:31.711156');

-- --------------------------------------------------------

--
-- Table structure for table `shift_master`
--

CREATE TABLE `shift_master` (
  `id` bigint(20) NOT NULL,
  `shift_name` varchar(100) NOT NULL,
  `details` varchar(255) DEFAULT NULL,
  `in_time` time(6) DEFAULT NULL,
  `out_time` time(6) DEFAULT NULL,
  `is_day_shift` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created` datetime(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `shift_master`
--

INSERT INTO `shift_master` (`id`, `shift_name`, `details`, `in_time`, `out_time`, `is_day_shift`, `status`, `created`) VALUES
(2, 'General Shift', 'This is general shift', '09:00:00.000000', '18:00:00.000000', 1, 1, '2023-04-28 14:35:09.689700'),
(3, 'Night Shift', 'This is night shift', '21:00:00.000000', '06:00:00.000000', 0, 1, '2023-04-28 14:36:06.716139');

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
-- Indexes for table `branch_list`
--
ALTER TABLE `branch_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `company_setup`
--
ALTER TABLE `company_setup`
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
-- Indexes for table `employee_attendance`
--
ALTER TABLE `employee_attendance`
  ADD PRIMARY KEY (`id`),
  ADD KEY `employee_attendance_employee_id_d9440ea4_fk_employee_list_id` (`employee_id`);

--
-- Indexes for table `employee_list`
--
ALTER TABLE `employee_list`
  ADD PRIMARY KEY (`id`),
  ADD KEY `employee_list_branch_id_ecc61577_fk_branch_list_id` (`branch_id`),
  ADD KEY `employee_list_department_id_2f34c7dc_fk_emp_department_id` (`department_id`),
  ADD KEY `employee_list_designation_id_e885f910_fk_emp_designation_id` (`designation_id`);

--
-- Indexes for table `emp_department`
--
ALTER TABLE `emp_department`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `emp_designation`
--
ALTER TABLE `emp_designation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shift_master`
--
ALTER TABLE `shift_master`
  ADD PRIMARY KEY (`id`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

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
-- AUTO_INCREMENT for table `branch_list`
--
ALTER TABLE `branch_list`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `company_setup`
--
ALTER TABLE `company_setup`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `employee_attendance`
--
ALTER TABLE `employee_attendance`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT for table `employee_list`
--
ALTER TABLE `employee_list`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `emp_department`
--
ALTER TABLE `emp_department`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `emp_designation`
--
ALTER TABLE `emp_designation`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `shift_master`
--
ALTER TABLE `shift_master`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

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
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `employee_attendance`
--
ALTER TABLE `employee_attendance`
  ADD CONSTRAINT `employee_attendance_employee_id_d9440ea4_fk_employee_list_id` FOREIGN KEY (`employee_id`) REFERENCES `employee_list` (`id`);

--
-- Constraints for table `employee_list`
--
ALTER TABLE `employee_list`
  ADD CONSTRAINT `employee_list_branch_id_ecc61577_fk_branch_list_id` FOREIGN KEY (`branch_id`) REFERENCES `branch_list` (`id`),
  ADD CONSTRAINT `employee_list_department_id_2f34c7dc_fk_emp_department_id` FOREIGN KEY (`department_id`) REFERENCES `emp_department` (`id`),
  ADD CONSTRAINT `employee_list_designation_id_e885f910_fk_emp_designation_id` FOREIGN KEY (`designation_id`) REFERENCES `emp_designation` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
