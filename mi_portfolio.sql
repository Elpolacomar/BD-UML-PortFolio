-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: b6fdywwk50uug0h54mnp-mysql.services.clever-cloud.com:3306
-- Generation Time: May 14, 2022 at 12:28 AM
-- Server version: 8.0.15-5
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `b6fdywwk50uug0h54mnp`
--

-- --------------------------------------------------------

--
-- Table structure for table `educacion`
--

CREATE TABLE `educacion` (
  `id` bigint(20) NOT NULL,
  `career` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `end` int(11) NOT NULL,
  `school` varchar(255) DEFAULT NULL,
  `score` int(11) NOT NULL,
  `start` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `educacion`
--

INSERT INTO `educacion` (`id`, `career`, `description`, `end`, `school`, `score`, `start`, `title`) VALUES
(6, 'Bachillerato', 'Estudios Secundarios Completos', 2006, 'Federico Garcia Lorca', 100, 1995, 'Perito Mercantil Especializado en Informática'),
(7, 'SeProgramar', 'Programa de la Nación Argentina', 2021, 'Argentina Programa', 100, 2020, 'Desarrollo WEB Full Stack'),
(10, 'PHP, Javascript, HTML, CSS, Mysql', 'Duración de cursado un año y dos meses.', 2020, 'Escuela Newton', 50, 2019, 'Programador Full Stack');

-- --------------------------------------------------------

--
-- Table structure for table `experiencia`
--

CREATE TABLE `experiencia` (
  `id` bigint(20) NOT NULL,
  `area` varchar(255) DEFAULT NULL,
  `empresa` varchar(255) DEFAULT NULL,
  `lugar_trabajo` varchar(255) DEFAULT NULL,
  `tiempo` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `experiencia`
--

INSERT INTO `experiencia` (`id`, `area`, `empresa`, `lugar_trabajo`, `tiempo`) VALUES
(2, 'Desarrollo Web', 'Belatrix', 'Front End', '2 años');

-- --------------------------------------------------------

--
-- Table structure for table `habilidad`
--

CREATE TABLE `habilidad` (
  `id` bigint(20) NOT NULL,
  `anio` int(11) DEFAULT NULL,
  `porcentaje` int(11) DEFAULT NULL,
  `tipo` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `habilidad`
--

INSERT INTO `habilidad` (`id`, `anio`, `porcentaje`, `tipo`) VALUES
(8, 2010, 50, 'Javascript'),
(9, 2012, 70, 'Front End'),
(11, 2021, 80, 'Back End'),
(13, 2022, 30, 'Java, Node');

-- --------------------------------------------------------

--
-- Table structure for table `hibernate_sequence`
--

CREATE TABLE `hibernate_sequence` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `hibernate_sequence`
--

INSERT INTO `hibernate_sequence` (`next_val`) VALUES
(14);

-- --------------------------------------------------------

--
-- Table structure for table `menu_nav`
--

CREATE TABLE `menu_nav` (
  `id` bigint(20) NOT NULL,
  `apellido` varchar(255) DEFAULT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `ruta_image` varchar(255) DEFAULT NULL,
  `ubicacion` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `menu_nav`
--

INSERT INTO `menu_nav` (`id`, `apellido`, `descripcion`, `nombre`, `ruta_image`, `ubicacion`) VALUES
(1, 'Bastías', 'Desarrollador WEB', 'Omar', 'assets/img/imgPerfil.png', 'Mendoza - Argentina');

-- --------------------------------------------------------

--
-- Table structure for table `proyecto`
--

CREATE TABLE `proyecto` (
  `id` bigint(20) NOT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `nombre` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `proyecto`
--

INSERT INTO `proyecto` (`id`, `descripcion`, `nombre`) VALUES
(3, 'Es un proyecto para la identificación de mascotas', 'Hi-Pet'),
(4, 'Es un proyecto la gestión de las ventas de números para sorteos particulares', 'MiSorteo');

-- --------------------------------------------------------

--
-- Table structure for table `usuario`
--

CREATE TABLE `usuario` (
  `id` bigint(20) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `is_enabled` bit(1) NOT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `usuario`
--

INSERT INTO `usuario` (`id`, `email`, `is_enabled`, `nombre`, `password`) VALUES
(5, 'omarbastias@gmail.com', b'1', 'Omar', '$2a$10$uDDU7PnVnHhKtlg90C1daO6w85.hh2hMFq0g6tE3YEaA0j54km1ea'),
(12, 'elizabeth@gmail.com', b'1', 'Elizabeth', '$2a$10$EVN2Y9eeWmtW6591ubNWne58q2ypKfh7YC2wlRxD2WjNmzhkhG9DK');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `educacion`
--
ALTER TABLE `educacion`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `experiencia`
--
ALTER TABLE `experiencia`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `habilidad`
--
ALTER TABLE `habilidad`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu_nav`
--
ALTER TABLE `menu_nav`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `proyecto`
--
ALTER TABLE `proyecto`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
