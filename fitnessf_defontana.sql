-- phpMyAdmin SQL Dump
-- version 4.7.3
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 16-11-2017 a las 13:48:04
-- Versión del servidor: 5.6.38
-- Versión de PHP: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `fitnessf_defontana`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `balance_generale`
--

CREATE TABLE `balance_generale` (
  `activo_fecha` date NOT NULL,
  `activo_saldo` varchar(250) NOT NULL DEFAULT '0',
  `pasivo_patrimonio_fecha` date NOT NULL,
  `pasivo_patrimonio_saldo` varchar(250) NOT NULL DEFAULT '0',
  `resultado_perdida_fecha` date NOT NULL,
  `resultado_perdida_saldo` varchar(250) NOT NULL DEFAULT '0',
  `resultado_ganancia_fecha` date NOT NULL,
  `resultado_ganancia_saldo` varchar(250) NOT NULL DEFAULT '0',
  `utilidad_fecha` date NOT NULL,
  `id` int(10) UNSIGNED NOT NULL,
  `id_empresa` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `balance_generale`
--

INSERT INTO `balance_generale` (`activo_fecha`, `activo_saldo`, `pasivo_patrimonio_fecha`, `pasivo_patrimonio_saldo`, `resultado_perdida_fecha`, `resultado_perdida_saldo`, `resultado_ganancia_fecha`, `resultado_ganancia_saldo`, `utilidad_fecha`, `id`, `id_empresa`) VALUES
('0000-00-00', '0', '0000-00-00', '0', '0000-00-00', '0', '0000-00-00', '0', '0000-00-00', 1, '1'),
('0000-00-00', '0', '0000-00-00', '0', '0000-00-00', '0', '0000-00-00', '0', '0000-00-00', 2, '2'),
('2016-12-31', '1256537984', '2016-12-31', '1216211347', '2016-12-31', '40326601', '2016-12-31', '488658067', '2016-12-31', 3, '3'),
('2017-09-13', '654', '0000-00-00', '0.00', '0000-00-00', '0.00', '0000-00-00', '0.00', '0000-00-00', 4, '4'),
('0000-00-00', '0', '0000-00-00', '0', '0000-00-00', '0', '0000-00-00', '0', '0000-00-00', 5, '5'),
('2016-12-31', '2141758745.00', '2016-12-31', '2143863534.00', '2016-12-31', '2104789', '2016-12-31', '38614789.00', '2016-12-31', 6, '6'),
('2016-12-31', '2539595965.00', '2016-12-31', '2539595965.00', '2016-12-31', '244589400.00', '2016-12-31', '230859457', '2016-12-31', 7, '7'),
('0000-00-00', '0', '0000-00-00', '0', '0000-00-00', '0', '0000-00-00', '0', '0000-00-00', 8, '8'),
('0000-00-00', '0', '0000-00-00', '0', '0000-00-00', '0', '0000-00-00', '0', '0000-00-00', 9, '9'),
('0000-00-00', '0', '0000-00-00', '0', '0000-00-00', '0', '0000-00-00', '0', '0000-00-00', 10, '10'),
('0000-00-00', '0', '0000-00-00', '0', '0000-00-00', '0', '0000-00-00', '0', '0000-00-00', 11, '11'),
('0000-00-00', '0', '0000-00-00', '0', '0000-00-00', '0', '0000-00-00', '0', '0000-00-00', 12, '12'),
('2016-12-31', '2343250573', '2016-12-31', '2334886470', '2016-12-31', '8364103', '2016-12-31', '53578632', '2016-12-31', 13, '13'),
('0000-00-00', '0', '0000-00-00', '0', '0000-00-00', '0', '0000-00-00', '0', '0000-00-00', 14, '14'),
('0000-00-00', '0', '0000-00-00', '0', '0000-00-00', '0', '0000-00-00', '0', '0000-00-00', 15, '15'),
('0000-00-00', '0', '0000-00-00', '0', '0000-00-00', '0', '0000-00-00', '0', '0000-00-00', 16, '16'),
('0000-00-00', '0', '0000-00-00', '0', '0000-00-00', '0', '0000-00-00', '0', '0000-00-00', 17, '17'),
('0000-00-00', '0', '0000-00-00', '0', '0000-00-00', '0', '0000-00-00', '0', '0000-00-00', 18, '18'),
('0000-00-00', '0', '0000-00-00', '0', '0000-00-00', '0', '0000-00-00', '0', '0000-00-00', 19, '19'),
('0000-00-00', '0', '0000-00-00', '0', '0000-00-00', '0', '0000-00-00', '0', '0000-00-00', 20, '20'),
('0000-00-00', '0', '0000-00-00', '0', '0000-00-00', '0', '0000-00-00', '0', '0000-00-00', 21, '21'),
('0000-00-00', '0', '0000-00-00', '0', '0000-00-00', '0', '0000-00-00', '0', '0000-00-00', 22, '22'),
('0000-00-00', '0', '0000-00-00', '0', '0000-00-00', '0', '0000-00-00', '0', '0000-00-00', 23, '23'),
('0000-00-00', '0', '0000-00-00', '0', '0000-00-00', '0', '0000-00-00', '0', '0000-00-00', 24, '24'),
('0000-00-00', '0', '0000-00-00', '0', '0000-00-00', '0', '0000-00-00', '0', '0000-00-00', 25, '25'),
('0000-00-00', '0', '0000-00-00', '0', '0000-00-00', '0', '0000-00-00', '0', '0000-00-00', 26, '26'),
('0000-00-00', '0', '0000-00-00', '0', '0000-00-00', '0', '0000-00-00', '0', '0000-00-00', 27, '27'),
('0000-00-00', '0', '0000-00-00', '0', '0000-00-00', '0', '0000-00-00', '0', '0000-00-00', 28, '28'),
('0000-00-00', '0', '0000-00-00', '0', '0000-00-00', '0', '0000-00-00', '0', '0000-00-00', 29, '29');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cajas`
--

CREATE TABLE `cajas` (
  `id` int(10) UNSIGNED NOT NULL,
  `caja` varchar(250) NOT NULL,
  `fecha_emision` date NOT NULL,
  `saldo` int(250) NOT NULL,
  `id_empresa` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `cajas`
--

INSERT INTO `cajas` (`id`, `caja`, `fecha_emision`, `saldo`, `id_empresa`) VALUES
(4, 'Caja General', '2016-12-31', 3974796, 6),
(5, 'Banco Santander ', '2016-12-31', 1041744, 6),
(7, 'Banco Santander Dolares', '2016-12-31', 1227373, 6),
(8, 'Caja General', '2016-12-31', 1375654, 7),
(9, 'BANCO SANTANDER PESOS', '2016-12-31', 13006178, 3),
(15, 'BANCO SANTANDER DOLARES', '2016-12-31', 105410776, 3),
(16, 'Caja General', '2016-12-31', 3307242, 13),
(17, 'BANCO SANTANDER ', '2016-12-31', 711879, 13),
(18, 'CORPBANCA', '2016-12-31', 12623449, 7),
(19, 'BANCO DE CHILE', '2016-12-31', 5838092, 40);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contras`
--

CREATE TABLE `contras` (
  `id` int(10) UNSIGNED NOT NULL,
  `contra` varchar(250) NOT NULL,
  `fecha_emision` date NOT NULL,
  `saldo` varchar(250) NOT NULL,
  `id_empresa` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empresas`
--

CREATE TABLE `empresas` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(11) NOT NULL,
  `empresa` varchar(200) NOT NULL,
  `have_children` tinyint(4) NOT NULL DEFAULT '0',
  `participacion` varchar(250) NOT NULL,
  `comentario_reporte_empresa` longtext NOT NULL,
  `comentario_reporte_inversion` longtext NOT NULL,
  `inversor` int(11) NOT NULL,
  `ghost` int(11) NOT NULL DEFAULT '0',
  `status` int(11) DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `empresas`
--

INSERT INTO `empresas` (`id`, `parent_id`, `empresa`, `have_children`, `participacion`, `comentario_reporte_empresa`, `comentario_reporte_inversion`, `inversor`, `ghost`, `status`) VALUES
(1, 0, 'JC', 1, '', '', '', 0, 1, 1),
(2, 1, 'BULLILEO', 1, '', '\r\n', '\r\n\r\n', 0, 1, 1),
(3, 2, 'ASIMFRUT', 0, '98%', '\r\n', '', 0, 0, 1),
(4, 2, 'CENFRUTAL', 0, '50%', '', '', 0, 0, 0),
(35, 3, 'hija asimfrut', 0, '', '', '', 1, 1, 0),
(5, 2, 'SURFRUTAL', 0, '33%', '', '', 0, 0, 0),
(6, 2, 'BULLILEO', 0, '33%', '', '', 0, 0, 1),
(7, 2, 'TIERRA BUENA', 0, '10%', '', '', 0, 0, 1),
(8, 1, 'JPJ', 1, '', '', '', 0, 1, 1),
(9, 8, 'ASIM LTDA', 0, '50%', '', '', 0, 0, 1),
(10, 8, 'LOS NOTROS', 1, '50%', '', '', 0, 0, 1),
(11, 8, 'RENTAL', 0, '50%', '', '', 0, 0, 1),
(12, 8, 'IBF', 0, '15%', '', '', 0, 0, 1),
(13, 8, 'JPJ', 0, '', '', '', 0, 0, 1),
(14, 8, 'INVERSIÓN', 1, '', '', '', 1, 1, 1),
(15, 10, 'AGUA DEL VALLE', 0, '5% JPJ 11% Los Nostro', '', '', 0, 0, 1),
(16, 10, 'Inversiones  EL TRANQUE', 0, '25%', '', '', 0, 0, 1),
(17, 10, 'PROPIEDADES VARIAS', 0, '100%', '', '', 0, 0, 1),
(18, 14, 'PRIVANZA', 1, '', '', '', 1, 1, 1),
(19, 14, 'IBF', 1, '', '', '', 1, 1, 1),
(20, 14, 'VANTRUST', 1, '', '', '', 1, 1, 1),
(21, 18, 'FIP Torre Mayor II', 0, '', '', '', 1, 0, 1),
(22, 18, 'FIP Montau', 0, '', '', '', 1, 0, 1),
(23, 18, 'FIP Hipodromo', 0, '', '', '', 1, 0, 1),
(24, 19, 'FIP E Solar', 0, '', '', '', 1, 0, 1),
(25, 19, 'FIP Cementerio', 0, '', '', '', 1, 0, 1),
(26, 19, 'FIP Clinica', 0, '', '', '', 1, 0, 1),
(27, 20, 'FIP MALBEC', 0, '', '\r\n', '', 1, 0, 1),
(28, 20, 'TITANIUM', 0, '', '', '', 1, 0, 1),
(29, 20, 'FIP crucero', 0, '', '', '', 1, 0, 1),
(32, 3, 'FIP SOLAR', 0, '15%', '', '', 1, 1, 0),
(36, 2, 'CENFRUTAL 2', 0, '50%', '', '', 0, 0, 0),
(37, 2, 'CENFRUTAL', 0, '50%', '', '', 0, 0, 1),
(38, 2, 'SURFRUTAL', 0, '50%', '', '', 0, 0, 1),
(39, 2, 'PRUEBA ', 0, '50%', '', '', 0, 0, 0),
(48, 42, 'INM. LOS ANDES', 0, '', '', '', 0, 0, 1),
(40, 2, 'LOS CARROS', 0, '', '', '', 0, 0, 1),
(41, 8, 'EXPLORACIÓN MINERA', 0, '', '', '', 0, 0, 1),
(42, 0, 'Empresas Asociadas', 1, '', '', '', 0, 1, 1),
(43, 42, 'Inversiones Santa Maria', 0, '', '', '', 0, 0, 1),
(44, 42, 'Banco Santander', 0, '', '', '', 0, 0, 1),
(45, 42, 'Jorge Cabrera', 0, '', '', '', 0, 0, 1),
(46, 42, 'EXPORTADORA', 0, '', '', '', 0, 0, 1),
(47, 42, 'CORPBANCA', 0, '', '', '', 0, 0, 1),
(49, 42, 'BANCO  DE CHILE', 0, '', '', '', 0, 0, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `favores`
--

CREATE TABLE `favores` (
  `id` int(10) UNSIGNED NOT NULL,
  `favor` varchar(250) NOT NULL,
  `fecha_emision` date NOT NULL,
  `saldo` varchar(250) NOT NULL,
  `id_empresa` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `identificardor_pares`
--

CREATE TABLE `identificardor_pares` (
  `id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `identificardor_pares`
--

INSERT INTO `identificardor_pares` (`id`) VALUES
(1),
(2),
(3),
(4),
(5),
(6),
(7),
(8),
(9),
(10),
(11),
(12),
(13),
(14),
(15),
(16),
(17),
(18),
(19),
(20),
(21),
(22),
(23),
(24),
(25),
(26),
(27),
(28),
(29),
(30),
(31),
(32),
(33),
(34),
(35),
(36),
(37),
(38),
(39),
(40),
(41),
(42),
(43),
(44),
(45),
(46),
(47),
(48),
(49),
(50),
(51),
(52),
(53),
(54),
(55),
(56),
(57),
(58),
(59),
(60),
(61),
(62),
(63),
(64),
(65),
(66),
(67),
(68),
(69);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permisos_emps_users`
--

CREATE TABLE `permisos_emps_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_empresa` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `permisos_emps_users`
--

INSERT INTO `permisos_emps_users` (`id`, `id_user`, `id_empresa`) VALUES
(1, 8, 2),
(24, 9, 1),
(3, 8, 4),
(4, 8, 5),
(5, 8, 6),
(6, 8, 7),
(7, 8, 14),
(8, 8, 18),
(9, 8, 21),
(10, 8, 22),
(11, 8, 23),
(12, 8, 19),
(13, 8, 24),
(14, 8, 25),
(15, 8, 26),
(16, 8, 20),
(17, 8, 27),
(18, 8, 28),
(19, 8, 29),
(20, 7, 19),
(21, 7, 24),
(22, 7, 25),
(23, 7, 26),
(25, 9, 2),
(26, 9, 3),
(27, 9, 4),
(28, 9, 5),
(29, 9, 6),
(30, 9, 7),
(31, 9, 8),
(32, 9, 9),
(33, 9, 10),
(34, 9, 15),
(35, 9, 16),
(36, 9, 17),
(37, 9, 11),
(38, 9, 12),
(39, 9, 13),
(40, 9, 14),
(41, 9, 18),
(42, 9, 21),
(43, 9, 22),
(44, 9, 23),
(45, 9, 19),
(46, 9, 24),
(47, 9, 25),
(48, 9, 26),
(49, 9, 20),
(50, 9, 27),
(51, 9, 28),
(52, 9, 29),
(63, 11, 9),
(58, 10, 3),
(57, 10, 2),
(56, 10, 11),
(60, 10, 5),
(61, 10, 6),
(62, 10, 7),
(64, 11, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `registro_reporte_inversiones`
--

CREATE TABLE `registro_reporte_inversiones` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_reporte_inversiones` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `detalle_glosa` varchar(250) NOT NULL,
  `monto` varchar(250) NOT NULL,
  `tipo` int(11) NOT NULL,
  `orden` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `registro_reporte_inversiones`
--

INSERT INTO `registro_reporte_inversiones` (`id`, `id_reporte_inversiones`, `fecha`, `detalle_glosa`, `monto`, `tipo`, `orden`) VALUES
(1, 1, '2018-09-08', 'Detalle de prueba', '4234', 1, 1),
(2, 1, '2018-09-13', 'CM', '56456', 1, 2),
(3, 1, '0000-00-00', 'SALDO', '', 1, 3),
(24, 8, '0000-00-00', 'SALDO', '', 1, 3),
(18, 6, '0000-00-00', 'SALDO', '', 0, 3),
(16, 6, '2017-09-13', 'Detalle de prueba', '4234', 1, 1),
(17, 6, '0000-00-00', 'CM', '', 0, 2),
(23, 8, '0000-00-00', 'CM', '', 1, 2),
(22, 8, '2017-08-08', 'Ingreso de prueba', '123123', 1, 1),
(25, 9, '2017-09-13', '50 M COMPRA', '100000000', 1, 1),
(26, 9, '0000-00-00', 'CM', '102000000', 2, 2),
(27, 9, '0000-00-00', 'SALDO', '2000000', 1, 3),
(28, 10, '2017-09-05', 'jumbo', '10', 1, 1),
(29, 10, '0000-00-00', 'CM', '', 1, 2),
(30, 10, '0000-00-00', 'SALDO', '', 1, 3),
(31, 11, '2017-09-05', 'XXXX', '1000', 1, 1),
(32, 11, '0000-00-00', 'CM', '', 1, 2),
(33, 11, '0000-00-00', 'SALDO', '', 1, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reporte_empresas`
--

CREATE TABLE `reporte_empresas` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_empresa` int(11) NOT NULL,
  `registro_transaccion` varchar(250) NOT NULL,
  `descripcion` int(11) NOT NULL,
  `origen` varchar(250) NOT NULL,
  `destino` varchar(250) NOT NULL,
  `monto` varchar(250) NOT NULL,
  `fecha_realizacion` date NOT NULL,
  `fecha_limite` date NOT NULL,
  `pares` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `reporte_empresas`
--

INSERT INTO `reporte_empresas` (`id`, `id_empresa`, `registro_transaccion`, `descripcion`, `origen`, `destino`, `monto`, `fecha_realizacion`, `fecha_limite`, `pares`) VALUES
(24, 3, '11-A', 3, '4', '3', '456456', '0000-00-00', '0000-00-00', '25'),
(25, 4, '11-B', 4, '4', '3', '456456', '0000-00-00', '0000-00-00', '24'),
(26, 3, '12-A', 3, '4', '3', '456456', '0000-00-00', '0000-00-00', '27'),
(27, 4, '12-B', 4, '4', '3', '456456', '0000-00-00', '0000-00-00', '26'),
(59, 4, '30-A', 2, '4', '5', '200000000', '2017-09-13', '0000-00-00', '60'),
(60, 5, '30-B', 1, '4', '5', '200000000', '2017-09-13', '0000-00-00', '59'),
(61, 4, '31-A', 2, '4', '5', '200000000', '2017-09-13', '0000-00-00', '62'),
(62, 5, '31-B', 1, '4', '5', '200000000', '2017-09-13', '0000-00-00', '61'),
(63, 4, '36-A', 4, '4', '5', '1000', '2017-10-10', '2017-11-03', '64'),
(64, 5, '36-B', 3, '4', '5', '1000', '2017-10-10', '2017-11-03', '63'),
(85, 3, '47-A', 4, '3', '11', '20000000', '2016-12-31', '2018-12-31', '86'),
(86, 11, '47-B', 3, '3', '11', '20000000', '2016-12-31', '2018-12-31', '85'),
(87, 3, '48-A', 4, '3', '13', '114191586', '2016-12-31', '2019-08-10', '88'),
(88, 13, '48-B', 3, '3', '13', '114191586', '2016-12-31', '2019-08-10', '87'),
(89, 3, '49-A', 4, '3', '6', '76253243', '2016-12-31', '2019-08-10', '90'),
(90, 6, '49-B', 3, '3', '6', '76253243', '2016-12-31', '2019-08-10', '89'),
(91, 3, '50-A', 3, '37', '3', '9890100', '2016-12-31', '2019-08-10', '92'),
(92, 37, '50-B', 4, '37', '3', '9890100', '2016-12-31', '2019-08-10', '91'),
(93, 3, '51-A', 3, '6', '3', '433160000', '2016-12-31', '2019-08-10', '94'),
(94, 6, '51-B', 4, '6', '3', '433160000', '2016-12-31', '2019-08-10', '93'),
(95, 6, '52-A', 4, '6', '13', '340548000', '2016-12-31', '2019-04-27', '96'),
(96, 13, '52-B', 3, '6', '13', '340548000', '2016-12-31', '2019-04-27', '95'),
(97, 6, '53-A', 3, '43', '6', '36000000', '2016-12-31', '2018-09-07', '98'),
(98, 43, '53-B', 4, '43', '6', '36000000', '2016-12-31', '2018-09-07', '97'),
(99, 6, '54-A', 4, '6', '13', '1000000', '2016-12-31', '2019-01-25', '100'),
(100, 13, '54-B', 3, '6', '13', '1000000', '2016-12-31', '2019-01-25', '99'),
(101, 6, '55-A', 4, '6', '7', '43400000', '2016-12-31', '2019-01-25', '102'),
(102, 7, '55-B', 3, '6', '7', '43400000', '2016-12-31', '2019-01-25', '101'),
(103, 6, '56-A', 4, '6', '40', '75000000', '2016-12-31', '2019-01-25', '104'),
(104, 40, '56-B', 3, '6', '40', '75000000', '2016-12-31', '2019-01-25', '103'),
(105, 6, '57-A', 3, '37', '6', '164150000', '2016-12-31', '2019-01-25', '106'),
(106, 37, '57-B', 4, '37', '6', '164150000', '2016-12-31', '2019-01-25', '105'),
(107, 13, '58-A', 4, '13', '37', '1000000', '2016-12-31', '2018-09-21', '108'),
(108, 37, '58-B', 3, '13', '37', '1000000', '2016-12-31', '2018-09-21', '107'),
(109, 13, '59-A', 3, '44', '13', '200000000', '2016-12-31', '2018-09-14', '110'),
(110, 44, '59-B', 4, '44', '13', '200000000', '2016-12-31', '2018-09-14', '109'),
(111, 13, '60-A', 3, '45', '13', '249994761', '2016-12-31', '2018-10-11', '112'),
(112, 45, '60-B', 4, '45', '13', '249994761', '2016-12-31', '2018-10-11', '111'),
(113, 3, '61-A', 3, '44', '3', '199782000', '2016-12-31', '2018-10-27', '114'),
(114, 44, '61-B', 4, '44', '3', '199782000', '2016-12-31', '2018-10-27', '113'),
(117, 7, '63-A', 3, '46', '7', '60419226', '2016-12-31', '2019-03-21', '118'),
(118, 46, '63-B', 4, '46', '7', '60419226', '2016-12-31', '2019-03-21', '117'),
(119, 7, '64-A', 3, '47', '7', '800000000', '2016-12-31', '2018-11-16', '120'),
(120, 47, '64-B', 4, '47', '7', '800000000', '2016-12-31', '2018-11-16', '119'),
(121, 40, '65-A', 3, '38', '40', '109680401', '2016-12-31', '2018-10-27', '122'),
(122, 38, '65-B', 4, '38', '40', '109680401', '2016-12-31', '2018-10-27', '121'),
(123, 40, '66-A', 3, '37', '40', '1178666', '2016-12-31', '2018-10-27', '124'),
(124, 37, '66-B', 4, '37', '40', '1178666', '2016-12-31', '2018-10-27', '123'),
(125, 40, '67-A', 3, '48', '40', '75000000', '2016-12-31', '2018-07-14', '126'),
(126, 48, '67-B', 4, '48', '40', '75000000', '2016-12-31', '2018-07-14', '125'),
(127, 40, '68-A', 3, '43', '40', '75000000', '2016-12-31', '2018-07-14', '128'),
(128, 43, '68-B', 4, '43', '40', '75000000', '2016-12-31', '2018-07-14', '127'),
(129, 40, '69-A', 3, '49', '40', '231809528', '2016-12-31', '2018-12-08', '130'),
(130, 49, '69-B', 4, '49', '40', '231809528', '2016-12-31', '2018-12-08', '129');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reporte_inversiones`
--

CREATE TABLE `reporte_inversiones` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_empresa` int(11) NOT NULL,
  `fecha` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `reporte_inversiones`
--

INSERT INTO `reporte_inversiones` (`id`, `id_empresa`, `fecha`) VALUES
(1, 21, '2018-09-08'),
(6, 21, '2017-09-13'),
(8, 21, '2017-08-08'),
(9, 28, '2017-09-13'),
(10, 27, '2017-09-05'),
(11, 22, '2017-09-05');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reporte_propiedades`
--

CREATE TABLE `reporte_propiedades` (
  `id` int(10) UNSIGNED NOT NULL,
  `fecha_registro` date NOT NULL,
  `rental` varchar(250) NOT NULL,
  `rol` varchar(250) NOT NULL,
  `fecha_compra` date NOT NULL,
  `folio` varchar(250) NOT NULL,
  `notaria` varchar(250) NOT NULL,
  `deuda_uf` varchar(250) NOT NULL,
  `banco` varchar(250) NOT NULL,
  `dividendo` varchar(250) NOT NULL,
  `monto_uf` varchar(250) NOT NULL,
  `fecha_vencimiento` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `reporte_propiedades`
--

INSERT INTO `reporte_propiedades` (`id`, `fecha_registro`, `rental`, `rol`, `fecha_compra`, `folio`, `notaria`, `deuda_uf`, `banco`, `dividendo`, `monto_uf`, `fecha_vencimiento`) VALUES
(5, '2017-11-08', 'UNIVERSIDAD', '563-28', '2017-07-16', '919191', 'CARLA SALAZAR SAN FERNANDO', '15000', 'BANCO DE CHILE', 'MENSUAL', '200', '2019-02-06');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(10) UNSIGNED NOT NULL,
  `nombre` varchar(250) NOT NULL,
  `email` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL,
  `tipo` int(11) NOT NULL DEFAULT '2',
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='tabla de usuarios (agentes)';

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `email`, `password`, `tipo`, `status`) VALUES
(7, 'Carlos Ramos', 'carlos.00.r@gmail.com', '12345', 1, 1),
(8, 'Usuario 2', 'usuario@gmail.com', '123', 2, 1),
(9, 'Omar Felipe Leonardini Cavero', 'omar.leonardini@gmail.com', '1234', 1, 1),
(10, 'Javier Cabrera', 'javiercabrera@rentalautos.cl', 'cabrera2', 1, 1),
(11, 'MARCO PEREZ', 'mperezn@pypltda.cl', 'PEREZ1', 2, 1),
(13, 'Jorge Cabrera', 'jcabrera@asim.cl', 'cabrera1', 1, 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `balance_generale`
--
ALTER TABLE `balance_generale`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cajas`
--
ALTER TABLE `cajas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `contras`
--
ALTER TABLE `contras`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `empresas`
--
ALTER TABLE `empresas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `favores`
--
ALTER TABLE `favores`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `identificardor_pares`
--
ALTER TABLE `identificardor_pares`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `permisos_emps_users`
--
ALTER TABLE `permisos_emps_users`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `registro_reporte_inversiones`
--
ALTER TABLE `registro_reporte_inversiones`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `reporte_empresas`
--
ALTER TABLE `reporte_empresas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `reporte_inversiones`
--
ALTER TABLE `reporte_inversiones`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `reporte_propiedades`
--
ALTER TABLE `reporte_propiedades`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `balance_generale`
--
ALTER TABLE `balance_generale`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
--
-- AUTO_INCREMENT de la tabla `cajas`
--
ALTER TABLE `cajas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT de la tabla `contras`
--
ALTER TABLE `contras`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `empresas`
--
ALTER TABLE `empresas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;
--
-- AUTO_INCREMENT de la tabla `favores`
--
ALTER TABLE `favores`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `identificardor_pares`
--
ALTER TABLE `identificardor_pares`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;
--
-- AUTO_INCREMENT de la tabla `permisos_emps_users`
--
ALTER TABLE `permisos_emps_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;
--
-- AUTO_INCREMENT de la tabla `registro_reporte_inversiones`
--
ALTER TABLE `registro_reporte_inversiones`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
--
-- AUTO_INCREMENT de la tabla `reporte_empresas`
--
ALTER TABLE `reporte_empresas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=131;
--
-- AUTO_INCREMENT de la tabla `reporte_inversiones`
--
ALTER TABLE `reporte_inversiones`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT de la tabla `reporte_propiedades`
--
ALTER TABLE `reporte_propiedades`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
