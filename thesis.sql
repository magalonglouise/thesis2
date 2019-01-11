-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 11, 2019 at 09:23 AM
-- Server version: 10.1.32-MariaDB
-- PHP Version: 7.2.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `thesis`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(255) NOT NULL,
  `firstName` varchar(255) NOT NULL,
  `middleName` varchar(255) NOT NULL,
  `lastName` varchar(255) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_modified` datetime DEFAULT NULL,
  `user_idfk` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `firstName`, `middleName`, `lastName`, `date_created`, `date_modified`, `user_idfk`) VALUES
(2, '', '', '', '2018-09-12 07:26:00', '2018-09-12 07:26:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `appointments`
--

CREATE TABLE `appointments` (
  `id` int(255) NOT NULL,
  `serviceId` varchar(255) NOT NULL,
  `vehicleId` int(255) NOT NULL,
  `personalId` int(11) NOT NULL,
  `otherService` varchar(255) DEFAULT NULL,
  `additionalMessage` varchar(255) DEFAULT NULL,
  `status` varchar(255) NOT NULL,
  `date` varchar(255) NOT NULL,
  `adminDate` varchar(255) DEFAULT NULL,
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified` datetime DEFAULT NULL,
  `notification` int(1) NOT NULL DEFAULT '1',
  `targetEndDate` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `appointments`
--

INSERT INTO `appointments` (`id`, `serviceId`, `vehicleId`, `personalId`, `otherService`, `additionalMessage`, `status`, `date`, `adminDate`, `created`, `modified`, `notification`, `targetEndDate`) VALUES
(1, 'Change Oil,Check fuel filter,Change Brake Pads', 1, 1, 'Please handle with care', 'ganitong time nalang po sir', 'Rescheduled', '2019-01-19', 'admin', '2018-12-29 07:54:06', '2018-11-29 08:22:06', 0, NULL),
(2, 'check horn,check battery', 6, 1, 'Howmuch will it cost me ? ', NULL, 'Overdue', '2018-12-14', NULL, '2018-11-29 07:55:54', NULL, 1, NULL),
(3, 'Body Repair', 3, 2, 'Need it dine in 3 days', NULL, 'Overdue', '2018-12-01', NULL, '2018-11-29 07:56:45', NULL, 1, NULL),
(4, 'Customize', 2, 5, 'Make it vintage', NULL, 'Accepted', '2018-12-29', NULL, '2018-11-29 07:57:57', '2018-11-29 08:20:51', 1, NULL),
(5, 'Check headlights', 6, 1, 'dawd', NULL, 'Overdue', '2018-12-13', NULL, '2018-12-09 02:51:32', NULL, 1, NULL),
(6, 'Change Oil,Check fuel filter', 5, 1, 'Kewl', NULL, 'Done', '2018-12-20', 'admin', '2018-12-11 18:15:49', '2019-01-07 17:13:01', 1, '2019-01-08 00:00:00'),
(7, 'Change Brake Pads', 7, 1, 'Huehue', NULL, 'Overdue', '2018-12-13', NULL, '2018-12-11 19:24:15', NULL, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `chargeinvoice`
--

CREATE TABLE `chargeinvoice` (
  `id` int(11) NOT NULL,
  `vehicleId` int(11) NOT NULL,
  `personalId` int(11) NOT NULL,
  `scopeId` varchar(255) DEFAULT NULL,
  `sparePartsId` varchar(255) DEFAULT NULL,
  `date` date NOT NULL,
  `TotalPrice` int(11) NOT NULL,
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified` datetime DEFAULT NULL,
  `notification` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `chargeinvoice`
--

INSERT INTO `chargeinvoice` (`id`, `vehicleId`, `personalId`, `scopeId`, `sparePartsId`, `date`, `TotalPrice`, `created`, `modified`, `notification`) VALUES
(1, 1, 1, 'Panel Beat - Front Facia,Panel Beat - Rear Bumper', NULL, '2018-11-29', 500, '2018-11-29 08:13:21', NULL, 1),
(2, 3, 2, 'Replace Tail Light(Right),Install dashboard lights, speedo meter ', NULL, '2018-11-30', 5000, '2018-11-29 08:13:50', NULL, 1),
(3, 5, 1, 'New upholstery, new chair upholstery, new inside carpet,Check Seat belts', NULL, '2018-11-30', 10000, '2018-11-29 08:14:16', NULL, 1),
(4, 3, 2, 'Panel Beat - Rear Bumper,Fix sliding Door mechanism,Buff the whole vehicle', NULL, '2018-11-30', 5000, '2018-11-29 08:14:50', NULL, 1),
(5, 4, 4, 'Buff the rear bumper', NULL, '2018-11-30', 1000, '2018-11-29 08:15:22', NULL, 1),
(6, 1, 1, 'Recondition accelerator mechanism - Replace Assorted Bushings,Wheel balance,Panel Beat - Rear Bumper', NULL, '2018-11-07', 1000, '2018-11-29 08:20:01', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `daterestricted`
--

CREATE TABLE `daterestricted` (
  `id` int(11) NOT NULL,
  `date` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `created` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `daterestricted`
--

INSERT INTO `daterestricted` (`id`, `date`, `status`, `modified`, `created`) VALUES
(2, '2018-11-25', 'Accepted', NULL, '2018-11-29 11:19:59'),
(3, '2018-11-26', 'Accepted', NULL, '2018-11-29 11:20:15'),
(4, '2018-12-01', 'Accepted', NULL, '2018-11-29 11:20:23');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` int(11) NOT NULL,
  `name` varchar(250) DEFAULT NULL,
  `email` varchar(250) DEFAULT NULL,
  `phoneNumber` varchar(20) DEFAULT NULL,
  `message` varchar(250) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`id`, `name`, `email`, `phoneNumber`, `message`, `date`) VALUES
(2, 'Jane Doe', 'jane8@gmail.com', '09187723489', 'The shop replies fast. Easy communication', '2018-11-29 00:00:00'),
(3, NULL, NULL, NULL, 'The service is good! Approachableemployees', '2018-11-29 00:00:00'),
(4, 'Bravito', 'bravito@ymail.com', '', 'Great website! really responsive admins', '2019-01-07 12:46:02');

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `make_series`
--

CREATE TABLE `make_series` (
  `id` int(11) NOT NULL,
  `make` varchar(255) DEFAULT NULL,
  `series` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `make_series`
--

INSERT INTO `make_series` (`id`, `make`, `series`) VALUES
(1, 'Mitsubishi', 'Lancer'),
(2, 'Honda', 'Civic'),
(3, 'Toyota', 'Fortuner'),
(4, 'Hyundai', 'Grand Starex'),
(5, 'Toyota', 'Hiace'),
(6, 'Toyota', 'Innova'),
(7, 'Toyota', '`Land Cruiser'),
(8, 'Mitsubishi', 'Adventure'),
(9, 'Mitsubishi', 'Mirage'),
(10, 'Ford', 'Ecosport');

-- --------------------------------------------------------

--
-- Table structure for table `mobilenumbers`
--

CREATE TABLE `mobilenumbers` (
  `id` int(11) NOT NULL,
  `personalId` int(11) NOT NULL,
  `mobileNumber` varchar(255) NOT NULL,
  `created` datetime NOT NULL,
  `modified` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `owner`
--

CREATE TABLE `owner` (
  `id` int(11) NOT NULL,
  `vehicleId` int(11) NOT NULL,
  `personalId` int(11) NOT NULL,
  `status` varchar(255) NOT NULL,
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `personalinfo`
--

CREATE TABLE `personalinfo` (
  `personalId` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `firstName` varchar(250) NOT NULL,
  `lastName` varchar(250) NOT NULL,
  `middleName` varchar(250) DEFAULT NULL,
  `address` varchar(250) NOT NULL,
  `telephoneNumber` varchar(255) DEFAULT NULL,
  `email` varchar(250) DEFAULT NULL,
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified` datetime DEFAULT NULL,
  `mobileNumber` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `personalinfo`
--

INSERT INTO `personalinfo` (`personalId`, `user_id`, `firstName`, `lastName`, `middleName`, `address`, `telephoneNumber`, `email`, `created`, `modified`, `mobileNumber`) VALUES
(1, 1, 'Juan', ' Dela Cruz', ' Carlos', 'Kewl', NULL, ' juandelacruz@gmail.com', '2018-11-29 00:21:37', '2018-12-11 00:18:38', '99523123112'),
(2, 2, 'Maria', 'Makiling', 'Gretta', 'Petersville, Subdivision, Camp7', NULL, 'mariamakiling@gmail.com', '2018-11-29 00:31:11', NULL, ''),
(3, 3, 'Fernando', 'Delfino', 'Carpio', 'Tuding, Itogon', NULL, 'fernando@gmail.com', '2018-11-29 00:35:49', NULL, ''),
(4, 4, 'Sarah', 'Cruz', 'Reyes', 'La Trinindad, Benguet', NULL, 'sarahcruz@gmail.com', '2018-11-29 00:45:21', NULL, ''),
(5, 5, 'John', 'Bautista', 'Ocampo', 'Binalonan, Pangasinan', NULL, 'johnbautista@gmail.com', '2018-11-29 00:48:02', NULL, ''),
(6, 6, 'Mary Joy', 'Torres', 'Mendoza', 'Aurora Hill, Baguio City', NULL, 'maryjoy@gmail.com', '2018-11-29 00:50:41', NULL, ''),
(7, 7, 'admin', 'admin', 'admin', 'admn', '0749999999', 'admin@admin.com', '2018-12-07 14:53:43', NULL, '09088899999'),
(31, 8, 'asdasd', 'asdasdas', 'asdasd', 'asdasdasd', NULL, 'asdasdg@gmail.com', '2018-12-10 17:17:14', NULL, '123124123'),
(32, 9, 'asdasdasd', 'asdasdasd', 'asdasdasd', 'asdasd', NULL, 'asdasd@gmail.com', '2018-12-10 21:52:43', NULL, '1231231231');

-- --------------------------------------------------------

--
-- Table structure for table `scope`
--

CREATE TABLE `scope` (
  `id` int(11) NOT NULL,
  `scopeWork` varchar(255) NOT NULL,
  `subScope` varchar(255) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `scope`
--

INSERT INTO `scope` (`id`, `scopeWork`, `subScope`, `price`, `created`, `modified`) VALUES
(1, 'Mechanical Job', 'Recondition Brake System - Replace Brake Master Repair Kit', NULL, '2018-11-24 16:39:20', NULL),
(2, 'Mechanical Job', 'Recondition Brake System - Flush Down and Bleed Fluid System', NULL, '2018-11-24 16:43:31', NULL),
(3, 'Mechanical Job', 'Recondition Brake System - Clean Drum Brakes and Calipers', NULL, '2018-11-24 16:43:31', NULL),
(4, 'Mechanical Job', 'Recondition Brake System - Replace Brake Shoe', NULL, '2018-11-24 16:46:47', NULL),
(5, 'Mechanical Job', 'Recondition Brake System - Replace Brake Pads', NULL, '2018-11-24 16:46:47', NULL),
(6, 'Mechanical Job', 'Recondition accelerator mechanism - Replace Assorted Bushings', NULL, '2018-11-24 16:48:38', NULL),
(115, 'Mechanical job', 'Replace all bulbs', NULL, '2018-11-24 17:14:08', NULL),
(116, 'Mechanical job', 'Wiper Blades', NULL, '2018-11-24 17:14:08', NULL),
(117, 'Mechanical job', 'Overhaul - Change Nozzle Tips', NULL, '2018-11-24 17:14:08', NULL),
(118, 'Mechanical job', 'Overhaul - Change oil', NULL, '2018-11-24 17:14:08', NULL),
(119, 'Mechanical job', 'Overhaul - Change Oil Filter', NULL, '2018-11-24 17:14:08', NULL),
(120, 'Mechanical job', 'Overhaul - Change Transmission Oil', NULL, '2018-11-24 17:14:08', NULL),
(121, 'Mechanical job', 'Overhaul - Change Air Filter', NULL, '2018-11-24 17:14:08', NULL),
(122, 'Mechanical job', 'Wheel balance', NULL, '2018-11-24 17:14:08', NULL),
(123, 'Mechanical job', 'Replace Stud Bolts', NULL, '2018-11-24 17:14:08', NULL),
(124, 'Mechanical job', 'Replace Side Mirror', NULL, '2018-11-24 17:14:08', NULL),
(125, 'Mechanical job', 'Replace Engine fan blade', NULL, '2018-11-24 17:14:08', NULL),
(126, 'Mechanical job', 'Replace Fan Belt', NULL, '2018-11-24 17:14:08', NULL),
(127, 'Mechanical job', 'Replace brake, accelerator, clutch pads', NULL, '2018-11-24 17:14:08', NULL),
(128, 'Mechanical job', 'Replace battery', NULL, '2018-11-24 17:14:08', NULL),
(129, 'Mechanical job', 'Replace radiator', NULL, '2018-11-24 17:14:08', NULL),
(130, 'Painting and Body Repair Job', 'Panel Beat - Right Sliding Door', NULL, '2018-11-24 17:14:08', NULL),
(131, 'Painting and Body Repair Job', 'Panel Beat - Right Quarter Panel', NULL, '2018-11-24 17:14:08', NULL),
(132, 'Painting and Body Repair Job', 'Panel Beat - Front Bumper', NULL, '2018-11-24 17:14:08', NULL),
(133, 'Painting and Body Repair Job', 'Panel Beat - Right Front Door', NULL, '2018-11-24 17:14:08', NULL),
(134, 'Painting and Body Repair Job', 'Panel Beat - Front Facia', NULL, '2018-11-24 17:14:08', NULL),
(135, 'Painting and Body Repair Job', 'Panel Beat - Rear Bumper', NULL, '2018-11-24 17:14:08', NULL),
(136, 'Painting and Body Repair Job', 'Fix sliding Door mechanism', NULL, '2018-11-24 17:14:08', NULL),
(137, 'Painting and Body Repair Job', 'Repaint whole vehicle', NULL, '2018-11-24 17:14:08', NULL),
(138, 'Painting and Body Repair Job', 'Buff the whole vehicle', NULL, '2018-11-24 17:14:08', NULL),
(139, 'Painting and Body Repair Job', 'Buff the rear bumper', NULL, '2018-11-24 17:14:08', NULL),
(140, 'Painting and Body Repair Job', 'Paint the grill with black', NULL, '2018-11-24 17:14:08', NULL),
(141, 'Painting and Body Repair Job', 'Paint the rims with black', NULL, '2018-11-24 17:14:08', NULL),
(142, 'Painting and Body Repair Job', 'Wax and polish the whole vehicle', NULL, '2018-11-24 17:14:08', NULL),
(143, 'Electrical Job', 'Replace Tail Light(Right)', NULL, '2018-11-24 17:14:08', NULL),
(144, 'Electrical Job', 'Install new stereo/radio', NULL, '2018-11-24 17:14:08', NULL),
(145, 'Electrical Job', 'Install dashboard lights, speedo meter ', NULL, '2018-11-24 17:14:08', NULL),
(146, 'Electrical Job', 'Install Antenna', NULL, '2018-11-24 17:14:08', NULL),
(147, 'Others', 'Refill Aircon Freon', NULL, '2018-11-24 17:14:08', NULL),
(148, 'Others', 'New upholstery, new chair upholstery, new inside carpet', 17000, '2018-11-24 17:14:08', NULL),
(149, 'Others', 'Replace Tint', 3500, '2018-11-24 17:14:08', NULL),
(150, 'Others', 'Check Seat belts', NULL, '2018-11-24 17:14:08', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `serviceId` int(11) NOT NULL,
  `serviceName` varchar(420) NOT NULL,
  `serviceType` varchar(420) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`serviceId`, `serviceName`, `serviceType`, `created`, `modified`) VALUES
(1, 'Change Oil', 'Mechanical', '2018-09-18 00:00:00', '2018-09-18 00:00:00'),
(2, 'Check brakes', 'Mechanical', '2018-09-18 00:00:00', '2018-09-18 00:00:00'),
(3, 'Check Air filter', 'Mechanical', '2018-09-18 00:00:00', '2018-09-18 00:00:00'),
(4, 'Check fuel filter', 'Mechanical', '2018-09-18 00:00:00', '2018-09-18 00:00:00'),
(5, 'Check Cabin Filter', 'Mechanical', '2018-09-18 00:00:00', '2018-09-18 00:00:00'),
(6, 'Check Suspensions', 'Mechanical', '2018-09-18 00:00:00', '2018-09-18 00:00:00'),
(7, 'Change Brake Pads', 'Mechanical', '2018-09-18 00:00:00', '2018-09-18 00:00:00'),
(8, 'Change Air Filter', 'Mechanical', '2018-09-18 00:00:00', '2018-09-18 00:00:00'),
(9, 'Change Fuel Filter', 'Mechanical', '2018-09-18 00:00:00', '2018-09-18 00:00:00'),
(10, 'Change Cabin Filter', 'Mechanical', '2018-09-18 00:00:00', '2018-09-18 00:00:00'),
(11, 'Change wiper blades', 'Mechanical', '2018-09-18 00:00:00', '2018-09-18 00:00:00'),
(12, 'Check headlights', 'Electrical', '2018-09-18 00:00:00', '2018-09-18 00:00:00'),
(13, 'Check Front and rear signal lights', 'Electrical', '2018-09-18 00:00:00', '2018-09-18 00:00:00'),
(14, 'Check tail lights', 'Electrical', '2018-09-18 00:00:00', '2018-09-18 00:00:00'),
(15, 'Check park lights', 'Electrical', '2018-09-18 00:00:00', '2018-09-18 00:00:00'),
(16, 'Check Brake lights', 'Electrical', '2018-09-18 00:00:00', '2018-09-18 00:00:00'),
(17, 'Check reverse light', 'Electrical', '2018-09-18 00:00:00', '2018-09-18 00:00:00'),
(18, 'Check plate light', 'Electrical', '2018-09-18 00:00:00', '2018-09-18 00:00:00'),
(19, 'Check dome light', 'Electrical', '2018-09-18 00:00:00', '2018-09-18 00:00:00'),
(20, 'check horn', 'Electrical', '2018-09-18 00:00:00', '2018-09-18 00:00:00'),
(21, 'check battery', 'Electrical', '2018-09-18 00:00:00', '2018-09-18 00:00:00'),
(22, 'simple retouch', 'Painting', '2018-09-18 00:00:00', '2018-09-18 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `spareparts`
--

CREATE TABLE `spareparts` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `spareparts`
--

INSERT INTO `spareparts` (`id`, `name`, `price`, `created`, `modified`) VALUES
(1, 'Exhaust', 200, '2018-11-24 17:35:15', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `task`
--

CREATE TABLE `task` (
  `id` int(255) NOT NULL,
  `appointmentID` int(255) NOT NULL,
  `service` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'In-progress',
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified` datetime NOT NULL,
  `dateStart` date DEFAULT NULL,
  `dateEnd` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `task`
--

INSERT INTO `task` (`id`, `appointmentID`, `service`, `status`, `created`, `modified`, `dateStart`, `dateEnd`) VALUES
(1, 1, 'Please handle with care', 'In-progress', '2018-11-29 08:22:06', '2018-11-29 08:22:06', NULL, NULL),
(2, 1, 'Change Oil', 'In-progress', '2018-11-29 08:22:06', '2018-11-29 08:22:06', NULL, NULL),
(3, 1, 'Check fuel filter', 'In-progress', '2018-11-29 08:22:06', '2018-11-29 08:22:06', NULL, NULL),
(4, 1, 'Change Brake Pads', 'In-progress', '2018-11-29 08:22:06', '2018-11-29 08:22:06', NULL, NULL),
(6, 6, 'Change Oil', 'Done', '2019-01-07 17:13:01', '2019-01-07 17:13:01', '2019-01-08', '2019-01-08'),
(7, 6, 'Check fuel filter', 'Done', '2019-01-07 17:13:01', '2019-01-07 17:13:01', '2019-01-11', '2019-01-11');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified` datetime DEFAULT NULL,
  `status` varchar(250) NOT NULL DEFAULT 'active',
  `type` varchar(255) NOT NULL,
  `firstName` varchar(255) NOT NULL,
  `middleName` varchar(255) NOT NULL,
  `lastName` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `created`, `modified`, `status`, `type`, `firstName`, `middleName`, `lastName`) VALUES
(1, 'juandelacruz', '$2y$10$RkY6SJC.r7dq6tveki8Vv.IJU2EtTTSPcK64pViIlDpxG3QJcgmIm', '2018-11-29 00:21:37', NULL, 'Active', 'client', '', '', ''),
(2, 'mariamakiling', '$2y$10$/RwNwB4XPuJ4dwEWNbANYu/VQQOhf6nar94X4ehknb.aaBp99vQ7u', '2018-11-29 00:31:11', NULL, 'active', 'client', '', '', ''),
(3, 'fernando', '$2y$10$g0WKURBYU4K2bMW3Wq5jF.SbbxT2JkHLgqlOaG9jpMJ7HWAV2Ok9e', '2018-11-29 00:35:49', NULL, 'active', 'client', '', '', ''),
(4, 'sarahcruz', '$2y$10$pDStHl/lUnEWGMQUO7RBHuuuCydhJ.k1ZJcu9s5GHPsl6or3ocee.', '2018-11-29 00:45:21', NULL, 'active', 'client', '', '', ''),
(5, 'johnbautista', '$2y$10$/0gl9XdzJ9PYrdMGUqMjy.p3mLB4ZLpOC6sNw.oBkbaZj0gzASb7.', '2018-11-29 00:48:02', NULL, 'active', 'client', '', '', ''),
(6, 'maryjoy', '$2y$10$5Q01.XMpOXQHiS7OmhcHXe9uJh/HDORIW50riZJFuMtuZ7qrS4hga', '2018-11-29 00:50:41', NULL, 'active', 'client', '', '', ''),
(7, 'admin', '$2y$10$S9WHPCYnhpeqcOJCZm4X2OseUWzNIslxhwpZz2dpZvODZvAnZsjri', '2018-12-07 14:54:05', NULL, 'Active', 'admin', 'EAS', 'Master ', 'Admin'),
(8, 'manager', '$2y$10$S9WHPCYnhpeqcOJCZm4X2OseUWzNIslxhwpZz2dpZvODZvAnZsjri', '2018-12-10 17:17:14', NULL, 'active', 'manager', 'EAS', 'Master', 'Manager'),
(9, 'assistant', '$2y$10$S9WHPCYnhpeqcOJCZm4X2OseUWzNIslxhwpZz2dpZvODZvAnZsjri', '2018-12-10 21:52:43', NULL, 'active', 'assistant', 'EAS', 'Master', 'Assistant Manager');

-- --------------------------------------------------------

--
-- Table structure for table `vehicles`
--

CREATE TABLE `vehicles` (
  `id` int(11) NOT NULL,
  `personalId` int(11) NOT NULL,
  `plateNumber` varchar(255) NOT NULL,
  `bodyType` varchar(255) DEFAULT NULL,
  `yearModel` varchar(255) NOT NULL,
  `chasisNumber` varchar(255) DEFAULT NULL,
  `engineClassification` varchar(255) DEFAULT NULL,
  `numberOfCylinders` varchar(255) DEFAULT NULL,
  `typeOfDriveTrain` varchar(255) DEFAULT NULL,
  `make` varchar(255) NOT NULL,
  `series` varchar(255) NOT NULL,
  `color` varchar(255) NOT NULL,
  `engineNumber` varchar(255) DEFAULT NULL,
  `typeOfEngine` varchar(255) DEFAULT NULL,
  `engineDisplacement` varchar(255) DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'Active',
  `created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vehicles`
--

INSERT INTO `vehicles` (`id`, `personalId`, `plateNumber`, `bodyType`, `yearModel`, `chasisNumber`, `engineClassification`, `numberOfCylinders`, `typeOfDriveTrain`, `make`, `series`, `color`, `engineNumber`, `typeOfEngine`, `engineDisplacement`, `status`, `created`, `modified`) VALUES
(1, 1, 'ABC-123', NULL, '2010', NULL, NULL, NULL, NULL, 'Honda', 'Civic', 'Red', NULL, NULL, NULL, 'Active', '2018-11-29 07:21:20', NULL),
(2, 5, 'EFG-354', NULL, '2017', NULL, NULL, NULL, NULL, 'Toyota', 'Corolla', 'Black', NULL, NULL, NULL, 'Active', '2018-11-29 07:21:20', NULL),
(3, 2, 'LJK-354', NULL, '2010', NULL, NULL, NULL, NULL, 'Toyota', 'Innova', 'Yellow', NULL, NULL, NULL, 'Active', '2018-11-29 07:24:44', NULL),
(4, 4, 'RTY-347', NULL, '2018', NULL, NULL, NULL, NULL, 'Honda', 'Jazz', 'Blue', NULL, NULL, NULL, 'Active', '2018-11-29 07:24:44', NULL),
(5, 1, 'GHB-965', NULL, '2012', NULL, NULL, NULL, NULL, 'Ford', 'Muztang', 'white/blue', NULL, NULL, NULL, 'Active', '2018-11-29 07:26:19', NULL),
(6, 1, 'FAT-888', '', '2016', '0', '', '0', '', 'Ford', 'Ranger', 'Orange', '0', '', '', 'Active', '2018-11-29 07:27:40', '2018-11-29 08:17:02'),
(7, 1, 'FTG-765', '', '2016', '0', '', '0', '', 'Toyota', 'Lancer', 'Orange', '0', '', '', 'Active', '2018-11-29 07:27:49', '2018-11-29 08:17:02'),
(8, 7, 'TTT-123', '', 'Model', '', '', '', '', '', 'adhas', 'askldas', '', '', '', 'Active', '2018-12-07 14:54:00', NULL),
(32, 31, 'asd 123', NULL, '12342', NULL, NULL, NULL, NULL, 'asdasgd', 'asdjhasdjk', 'asdasf', NULL, NULL, NULL, 'Active', '2018-12-10 17:17:14', NULL),
(33, 2, 'RGX-421', 'Cedan', '2012', '0', 'very nice', '25', 'tunnel', 'Honda', 'Impreza', 'Yellow', '123', 'cleriacal', 'velocity', 'Active', '2018-12-10 21:52:43', '2019-01-07 12:40:04');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_idfk` (`user_idfk`);

--
-- Indexes for table `appointments`
--
ALTER TABLE `appointments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vehicleId` (`vehicleId`),
  ADD KEY `personalId` (`personalId`);

--
-- Indexes for table `chargeinvoice`
--
ALTER TABLE `chargeinvoice`
  ADD PRIMARY KEY (`id`),
  ADD KEY `personalId` (`personalId`),
  ADD KEY `vehicleId` (`vehicleId`);

--
-- Indexes for table `daterestricted`
--
ALTER TABLE `daterestricted`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `make_series`
--
ALTER TABLE `make_series`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mobilenumbers`
--
ALTER TABLE `mobilenumbers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `personalId` (`personalId`);

--
-- Indexes for table `owner`
--
ALTER TABLE `owner`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vehicleId` (`vehicleId`),
  ADD KEY `personalId` (`personalId`);

--
-- Indexes for table `personalinfo`
--
ALTER TABLE `personalinfo`
  ADD PRIMARY KEY (`personalId`),
  ADD KEY `userId` (`user_id`);

--
-- Indexes for table `scope`
--
ALTER TABLE `scope`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`serviceId`);

--
-- Indexes for table `spareparts`
--
ALTER TABLE `spareparts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `task`
--
ALTER TABLE `task`
  ADD PRIMARY KEY (`id`),
  ADD KEY `appointmentID` (`appointmentID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vehicles`
--
ALTER TABLE `vehicles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `personalId2` (`personalId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `appointments`
--
ALTER TABLE `appointments`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `chargeinvoice`
--
ALTER TABLE `chargeinvoice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `daterestricted`
--
ALTER TABLE `daterestricted`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `make_series`
--
ALTER TABLE `make_series`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `mobilenumbers`
--
ALTER TABLE `mobilenumbers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `owner`
--
ALTER TABLE `owner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personalinfo`
--
ALTER TABLE `personalinfo`
  MODIFY `personalId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `scope`
--
ALTER TABLE `scope`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=151;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `serviceId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `spareparts`
--
ALTER TABLE `spareparts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `task`
--
ALTER TABLE `task`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `vehicles`
--
ALTER TABLE `vehicles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `appointments`
--
ALTER TABLE `appointments`
  ADD CONSTRAINT `appointments_ibfk_1` FOREIGN KEY (`vehicleId`) REFERENCES `vehicles` (`id`),
  ADD CONSTRAINT `appointments_ibfk_2` FOREIGN KEY (`personalId`) REFERENCES `personalinfo` (`personalId`);

--
-- Constraints for table `chargeinvoice`
--
ALTER TABLE `chargeinvoice`
  ADD CONSTRAINT `chargeinvoice_ibfk_1` FOREIGN KEY (`personalId`) REFERENCES `personalinfo` (`personalId`),
  ADD CONSTRAINT `chargeinvoice_ibfk_2` FOREIGN KEY (`vehicleId`) REFERENCES `vehicles` (`id`);

--
-- Constraints for table `mobilenumbers`
--
ALTER TABLE `mobilenumbers`
  ADD CONSTRAINT `mobilenumbers_ibfk_1` FOREIGN KEY (`personalId`) REFERENCES `personalinfo` (`personalId`);

--
-- Constraints for table `owner`
--
ALTER TABLE `owner`
  ADD CONSTRAINT `owner_ibfk_1` FOREIGN KEY (`vehicleId`) REFERENCES `vehicles` (`id`),
  ADD CONSTRAINT `owner_ibfk_2` FOREIGN KEY (`personalId`) REFERENCES `personalinfo` (`personalId`);

--
-- Constraints for table `personalinfo`
--
ALTER TABLE `personalinfo`
  ADD CONSTRAINT `userId` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `vehicles`
--
ALTER TABLE `vehicles`
  ADD CONSTRAINT `personalId2` FOREIGN KEY (`personalId`) REFERENCES `personalinfo` (`personalId`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
