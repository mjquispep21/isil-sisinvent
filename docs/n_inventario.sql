-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 19-02-2024 a las 02:39:51
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `n_inventario`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `almacen`
--

CREATE TABLE `almacen` (
  `ID_Almacen` int(11) NOT NULL,
  `Tipo_almacen` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `almacen`
--

INSERT INTO `almacen` (`ID_Almacen`, `Tipo_almacen`) VALUES
(1, 'Informática'),
(2, 'Fotografía');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `equipo`
--

CREATE TABLE `equipo` (
  `ID_equipo` int(11) NOT NULL,
  `Nombre_equipo` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `equipo`
--

INSERT INTO `equipo` (`ID_equipo`, `Nombre_equipo`) VALUES
(1, 'CAMARA'),
(2, 'BATERÍA'),
(3, 'CARGADOR DE BATERIA T5'),
(4, 'LENTE MACRO'),
(5, 'LENTE EF 28MM'),
(6, 'LENTE TELEOBJETIVO EF70-200'),
(7, 'SPEEDLITE'),
(8, 'FOTÓMETRO'),
(9, 'RTS'),
(10, 'CÁMARA DE VIDEO'),
(11, 'CARGADOR DE VIDEO'),
(12, 'BATERIA DE VIDEO'),
(13, 'MICRÓFONO DE MANO'),
(14, 'MICRÓFONO PERCHERO'),
(15, 'TRANSMISOR PERCHERO'),
(16, 'RECEPTOR PERCHERO'),
(17, 'MICRÓFONO BOOM'),
(18, 'MANUBRIO'),
(19, 'CAÑA BOOM'),
(20, 'LECTORA DE MEMORIA'),
(21, 'AUDÍFONOS'),
(22, 'MALETA CON 3 LUCES + 3 TRIPODES'),
(23, 'MALETA CON 2 LUCES + 2 TRIPODES'),
(24, 'MALETA CON 3 LUCES 650 + 1 TRIPODE AS01570051 + 2 '),
(25, 'MALETA'),
(26, 'TRÍPODE'),
(27, 'BOWENS'),
(28, 'OLLA'),
(29, 'SNOOTH'),
(30, 'OLLA CON GRILLA'),
(31, 'PARANTE O TRÍPODE FOTO'),
(32, 'PORTAFONDO'),
(33, 'SOFTBOX '),
(34, 'TRÍPODE DE FOTO'),
(35, 'SOMBRILLA BLANCO/NEGRO'),
(36, 'REBOTADOR'),
(37, 'EXTENSIONES DE CABLE VULCANIZADO'),
(38, 'EXTENSIONES SOLERA'),
(39, 'EXTENSIONES '),
(40, 'EXTENSION HALUX'),
(41, 'MALETA PORTA MICROFONO'),
(42, 'MESA DE PRODUCTO PORTATIL'),
(43, 'CAJA DE PRODUCTO'),
(44, 'LENTE'),
(45, 'LENTES EF50'),
(46, 'LENTES EF70-200'),
(47, 'LENTES EF100'),
(48, 'MEMORIAS SD (31 UNIDADES)'),
(49, 'MULTILECTOR DE MEMORIAS '),
(50, 'PAÑOS DE LIMPIEZA (3 CAJITAS)'),
(51, 'Audífonos'),
(52, 'Pack - Micrófono Inalambrico Solapero'),
(53, 'Micrófono Unidireccional'),
(54, 'Estrella para Trípode'),
(55, 'Cabezal de Tripode'),
(56, 'PELUCHE DE MICROFONO RODE WS6'),
(57, 'CABLE XRL '),
(58, 'FOTOMETRO'),
(59, 'MEMORIAS SD (13 UNIDADES)'),
(60, 'Bateria de Camara Fotografica '),
(61, 'Bateria Larga Duración para Videocamara'),
(62, 'Bateria de Camara Fotografica'),
(63, 'Bateria cr2032 '),
(64, 'Focos para Flash Bowens '),
(65, 'Cables para microfono '),
(66, 'Rejilla para difusor Bowens'),
(67, 'Rebotadores '),
(68, 'Esponja Repuesto De Microfonos'),
(69, 'MEMORIAS SD '),
(70, 'ADAPTADOR DE MICROSD A SD '),
(71, 'BW FLASH TUBE (ANILLO DE REPUESTO BOWENS)'),
(72, 'FOCO REPUESTO PARA FLASH BOWENS '),
(73, 'BATERIA PARA CANON 6D LP-E6N'),
(74, 'BATERIA PARA CANON 6D LP-E6'),
(75, 'CARGADOR DE BATERIA (1 UNIDAD)'),
(76, 'AUDIFONO'),
(77, 'SOMBRILLA GENERICO'),
(78, 'SOMBRILLA GODOX'),
(79, 'TRIPODE'),
(80, 'FONDOS GRIS LOTE 2023'),
(81, 'FONDOS VERDES LOTE 2023'),
(82, 'TRIPODE PARA LUZ ARRI'),
(83, 'TRIPODE BOWEN BW6610 (2 UNIDADES)'),
(84, 'TRIPODE GENERICO (2 UNIDADES)'),
(85, 'SOMBRILLA (2 UNIDADES)'),
(86, 'MALETA PARA VIDEOCAMARA (2 UNIDADES)'),
(87, 'MALETA DE LUCES ARRI 3 DE 650+3 TRIPODES'),
(88, 'MALETA PARA FLASH BOWENS'),
(89, 'MALETIN PARA TRIPODE (2 UNIDADES)'),
(90, 'TUBO RECUBIERTO BW-2032 (10 UNIDADES)'),
(91, 'TUBO RECUBIERTO BW-1079 (1 UNIDADES)'),
(92, 'FOCO PARA LUCES ARRI DE 650 '),
(93, 'FOCO PARA LUCES ARRI DE 300 '),
(94, 'FOCO PARA LUCES ARRI DE 650 '),
(95, 'FOCO PARA LUCES ARRI DE 1000'),
(96, 'FOCO PARA LUCES ARRI DE 150 '),
(97, 'FOCO PARA LUCES ARRI DE 500'),
(98, 'CABLE MICROFONO CANON'),
(99, 'CABLE ENTRADA MINIPLUG A CANON '),
(100, 'CABLE DE PODER LARGO '),
(101, 'CABLE DE PODER 1.5 MTS APROX'),
(102, 'CABLE HDMI '),
(103, 'FILTRO AZUL '),
(104, 'FILTRO ROJO '),
(105, 'FILTRO BLANCO '),
(106, 'FONDO BLANCO EN CAJA )'),
(107, 'FONDO NEGRO EN CAJA '),
(108, 'FONDO GRIS EN CAJA '),
(109, 'FONDO NEGRO EN CONO '),
(110, 'FONDO BLANCO EN CONO '),
(111, 'MALETA DE ILUMINACION'),
(112, 'MALETINES PARA CAMARA CANON '),
(113, 'BEAUTYDISH '),
(114, 'MONITOR ASUS'),
(115, 'TELAS VERDE CLARO, VERDE OSCURO Y 2 NEGROS'),
(116, 'PARLANTE'),
(117, 'INFINTY BOARD'),
(118, 'ESTUCHES PARA SOFTBOX LUMINAIR '),
(119, 'ESCALERA DE 3 PASOS'),
(120, 'CARRITO PARA FILMACION'),
(121, 'ARCHIVADORES'),
(122, 'RUEDAS PARA CARRITO DE FILMACION 3 UNIDADES'),
(123, 'DVD PANASONIC'),
(124, 'ACCESORIOS VARIOS');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ficha`
--

CREATE TABLE `ficha` (
  `ID_ficha` int(11) NOT NULL,
  `ID_sede` int(11) NOT NULL,
  `ID_torre` int(11) NOT NULL,
  `Salon` varchar(30) DEFAULT NULL,
  `ID_almacen` int(11) NOT NULL,
  `ID_equipo` int(11) NOT NULL,
  `Descripcion` varchar(50) DEFAULT NULL,
  `ID_marca` int(11) NOT NULL,
  `ID_modelo` int(11) NOT NULL,
  `Numero_serie` varchar(30) DEFAULT NULL,
  `Codigo_isil` varchar(30) DEFAULT NULL,
  `Cantidad` int(11) DEFAULT NULL,
  `Imagen` mediumtext DEFAULT NULL,
  `ID_usuario` int(11) NOT NULL,
  `ID_operatividad` int(11) NOT NULL,
  `Observaciones` varchar(50) DEFAULT NULL,
  `Fecha_registro` datetime DEFAULT NULL,
  `ID_usuario_modificador` varchar(90) DEFAULT NULL,
  `Fecha_modificacion` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `ficha`
--

INSERT INTO `ficha` (`ID_ficha`, `ID_sede`, `ID_torre`, `Salon`, `ID_almacen`, `ID_equipo`, `Descripcion`, `ID_marca`, `ID_modelo`, `Numero_serie`, `Codigo_isil`, `Cantidad`, `Imagen`, `ID_usuario`, `ID_operatividad`, `Observaciones`, `Fecha_registro`, `ID_usuario_modificador`, `Fecha_modificacion`) VALUES
(1, 1, 1, '105', 1, 70, 'Memoria para camara', 5, 9, 'A212121', 'LM-212121', 1, NULL, 2, 3, 'Se encuentra partida por la mitad', '2024-02-18 19:02:32', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `marca`
--

CREATE TABLE `marca` (
  `ID_marca` int(11) NOT NULL,
  `Nombre_marca` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `marca`
--

INSERT INTO `marca` (`ID_marca`, `Nombre_marca`) VALUES
(1, 'CANON'),
(2, 'POLARIS'),
(3, 'BOWENS'),
(4, 'PIXEL'),
(5, 'SONY'),
(6, 'SHURE'),
(7, 'SENNHEISER'),
(8, 'RODE'),
(9, 'AURAY'),
(10, 'K-TEK'),
(11, 'SANDISK'),
(12, 'ARRI'),
(13, 'LOWEL DP'),
(14, 'MANFROTTO'),
(15, 'RED WING'),
(16, 'IMPACT'),
(17, 'FOTOBE/STWAY'),
(18, 'PLOMAS'),
(19, 'SOLERA'),
(20, 'CUPPER'),
(21, 'PATRIOT'),
(22, 'UGREEN'),
(23, 'ZEISS'),
(24, 'KOPUL'),
(25, 'GOSSEN'),
(26, 'DELKIN DEVICES'),
(27, 'KINGSTON'),
(28, 'GODOX'),
(29, 'NEUTRIK'),
(30, 'WINDTECH'),
(31, 'LEXAR MULTIUSE'),
(32, 'LEXAR PLATINUM2'),
(33, 'LEXAR'),
(34, 'SAVAGE'),
(35, 'SACHTLER'),
(36, 'GENERICO'),
(37, 'PHILIPS'),
(38, 'OSRAM'),
(39, 'SHOWBIZ'),
(40, 'CASSELL'),
(41, 'ROSCO'),
(42, 'NEEWER'),
(43, 'ASUS'),
(44, 'CREATIVE'),
(45, 'MSEGRIP');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `modelo`
--

CREATE TABLE `modelo` (
  `ID_modelo` int(11) NOT NULL,
  `Nombre_modelo` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `modelo`
--

INSERT INTO `modelo` (`ID_modelo`, `Nombre_modelo`) VALUES
(1, 'EOS - REBEL T5'),
(2, 'EOS - REBEL T5'),
(3, 'EOS - 6D (MARK II)'),
(4, 'LP-E10'),
(5, 'LC-E10'),
(6, 'EF 100 MM F/1.2.8 USM'),
(7, 'EF 28 MM F/1,8 USM'),
(8, 'EF 70-200 MM F/2.8L USM'),
(9, '580EXII'),
(10, 'FLASH METER'),
(11, 'PULSAR - BW5170'),
(12, 'SOLDIER'),
(13, 'NXCAM - HXR-NX5N'),
(14, 'NXCAM - HXR-NX3'),
(15, 'AC-VQ1051D'),
(16, 'AC-VL1'),
(17, 'AC - VL1'),
(18, 'NP-F970'),
(19, 'NP-F570'),
(20, 'PG58'),
(21, 'SK100 G3'),
(22, 'EK100 G3'),
(23, 'ME 66'),
(24, 'DUSM-1'),
(25, 'Avalon KE-89CC'),
(26, 'MRW-EA7'),
(27, 'MRW-E80'),
(28, 'MDR - 7502'),
(29, 'MDR - 7506'),
(30, 'ARRI - 650-300-150 W'),
(31, 'ARRI - 300W -150 W'),
(32, 'ARRI - 650 W'),
(33, '1000 w'),
(34, '546B'),
(35, 'GEMINI GM1000PRO'),
(36, 'GEMINI GM500PRO'),
(37, 'GEMINI GM500R'),
(38, 'GEMINI GM500C'),
(39, 'BW6615'),
(40, 'BW6610'),
(41, '272B'),
(42, '1052BAC'),
(43, 'LUMINAIR'),
(44, 'VCT-R640'),
(45, '732CY'),
(46, 'EFS 18-55 MM'),
(47, '4B'),
(48, 'EF 50 MM F/1.8 STM'),
(49, 'EF 70-200 MM F/2.8L IS III USM'),
(50, 'EF 100 MM F/2.8L MACRO IS USM'),
(51, 'SD DE 64GB'),
(52, '30333 USB 3.0'),
(53, 'CLEANING TISSUE'),
(54, 'HD 206'),
(55, 'EK 100 G4'),
(56, 'MKE600'),
(57, '165mv'),
(58, '496RC2'),
(59, 'DELUXE WINDSHIELD WS6'),
(60, 'SERIES 3000 1.5 MTS'),
(61, 'SIXTOMAT F2'),
(62, 'SD DE 16GB'),
(63, 'JDD F27'),
(64, 'NC-MXX'),
(65, 'NC-MX'),
(66, 'BW 1864'),
(67, 'RFT-10'),
(68, 'SG-1'),
(69, 'SD DE 8GB'),
(70, 'SD DE 4GB'),
(71, 'ADAPTADOR'),
(72, 'LP-E6N'),
(73, 'LP-E6'),
(74, 'LC-E6'),
(75, 'EOS - REBEL T5i'),
(76, 'EOS - REBEL T6'),
(77, 'EOS - REBEL T6'),
(78, 'HD202'),
(79, 'MK-190X3-2W'),
(80, '56-12 FASHION GRAY'),
(81, '46-12 TECH GREEN'),
(82, '050MKARF'),
(83, 'SC003'),
(84, 'I-TRIGUE 3400'),
(85, 'EOS - REBEL T5'),
(86, 'EOS - REBEL T5'),
(87, 'EOS - 6D (MARK II)'),
(88, 'LP-E10'),
(89, 'LC-E10'),
(90, 'EF 100 MM F/1.2.8 USM'),
(91, 'EF 28 MM F/1,8 USM'),
(92, 'EF 70-200 MM F/2.8L USM'),
(93, '580EXII'),
(94, 'FLASH METER'),
(95, 'PULSAR - BW5170'),
(96, 'SOLDIER'),
(97, 'NXCAM - HXR-NX5N'),
(98, 'NXCAM - HXR-NX3'),
(99, 'AC-VQ1051D'),
(100, 'AC-VL1'),
(101, 'AC - VL1'),
(102, 'NP-F970'),
(103, 'NP-F570'),
(104, 'PG58'),
(105, 'SK100 G3'),
(106, 'EK100 G3'),
(107, 'ME 66'),
(108, 'DUSM-1'),
(109, 'Avalon KE-89CC'),
(110, 'MRW-EA7'),
(111, 'MRW-E80'),
(112, 'MDR - 7502'),
(113, 'MDR - 7506'),
(114, 'ARRI - 650-300-150 W'),
(115, 'ARRI - 300W -150 W'),
(116, 'ARRI - 650 W'),
(117, '1000 w'),
(118, '546B'),
(119, 'GEMINI GM1000PRO'),
(120, 'GEMINI GM500PRO'),
(121, 'GEMINI GM500R'),
(122, 'GEMINI GM500C'),
(123, 'BW6615'),
(124, 'BW6610'),
(125, '272B'),
(126, '1052BAC'),
(127, 'LUMINAIR'),
(128, 'VCT-R640'),
(129, '732CY'),
(130, 'EFS 18-55 MM'),
(131, '4B'),
(132, 'EF 50 MM F/1.8 STM'),
(133, 'EF 70-200 MM F/2.8L IS III USM'),
(134, 'EF 100 MM F/2.8L MACRO IS USM'),
(135, 'SD DE 64GB'),
(136, '30333 USB 3.0'),
(137, 'CLEANING TISSUE'),
(138, 'HD 206'),
(139, 'EK 100 G4'),
(140, 'MKE600'),
(141, '165mv'),
(142, '496RC2'),
(143, 'DELUXE WINDSHIELD WS6'),
(144, 'SERIES 3000 1.5 MTS'),
(145, 'SIXTOMAT F2'),
(146, 'SD DE 16GB'),
(147, 'JDD F27'),
(148, 'NC-MXX'),
(149, 'NC-MX'),
(150, 'BW 1864'),
(151, 'RFT-10'),
(152, 'SG-1'),
(153, 'SD DE 8GB'),
(154, 'SD DE 4GB'),
(155, 'ADAPTADOR'),
(156, 'LP-E6N'),
(157, 'LP-E6'),
(158, 'LC-E6'),
(159, 'EOS - REBEL T5i'),
(160, 'EOS - REBEL T6'),
(161, 'EOS - REBEL T6'),
(162, 'HD202'),
(163, 'MK-190X3-2W'),
(164, '56-12 FASHION GRAY'),
(165, '46-12 TECH GREEN'),
(166, '050MKARF'),
(167, 'SC003'),
(168, 'I-TRIGUE 3400');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `operatividad`
--

CREATE TABLE `operatividad` (
  `ID_operatividad` int(11) NOT NULL,
  `Tipo_operatividad` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `operatividad`
--

INSERT INTO `operatividad` (`ID_operatividad`, `Tipo_operatividad`) VALUES
(1, 'Operativo'),
(2, 'Inoperativo'),
(3, 'En revisión');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `ID_roles` int(11) NOT NULL,
  `Nombre_Rol` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`ID_roles`, `Nombre_Rol`) VALUES
(1, 'Administrador'),
(2, 'Editor'),
(3, 'especial');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sede`
--

CREATE TABLE `sede` (
  `ID_sede` int(11) NOT NULL,
  `Nombre_sede` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `sede`
--

INSERT INTO `sede` (`ID_sede`, `Nombre_sede`) VALUES
(1, 'La Molina'),
(2, 'San Isidro'),
(3, 'Miraflores');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `torre`
--

CREATE TABLE `torre` (
  `ID_torre` int(11) NOT NULL,
  `Nombre_torre` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `torre`
--

INSERT INTO `torre` (`ID_torre`, `Nombre_torre`) VALUES
(1, 'A'),
(2, 'B'),
(3, 'C'),
(4, 'D'),
(5, 'E');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `ID_usuario` int(11) NOT NULL,
  `ID_roles` int(11) NOT NULL,
  `Nombre` varchar(50) DEFAULT NULL,
  `Apellidos` varchar(50) NOT NULL,
  `Correo` varchar(50) DEFAULT NULL,
  `Numero` int(11) DEFAULT NULL,
  `Usuario` varchar(30) DEFAULT NULL,
  `contrasena` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`ID_usuario`, `ID_roles`, `Nombre`, `Apellidos`, `Correo`, `Numero`, `Usuario`, `contrasena`) VALUES
(1, 1, 'Miguel John', 'Quispe Pozo', 'correo1@gmail.com', 906838713, 'mquispe', '12345'),
(2, 3, 'Gonzalo Ronald', 'García Saravia', 'correo2@gmail.com', 913593235, 'ggarcias', '12345'),
(3, 1, 'Isaac Jedidias', 'Olivera Colonio ', 'correo3@gmail.com', 969703281, 'iolivera', '12345'),
(7, 3, 'Alexandrea Alexandrea ', 'Del Solar Maldini de las Casas', 'correo22@gmail.com', 973752339, 'aadelascasas', 'f23c92baa9b37099420c006ac4f776'),
(9, 1, 'pepe', 'el pollo', 'pepelpollo@gmail.com', 986532014, 'elpepe', '12345'),
(10, 2, 'test', 'test', 'tesqt@gmail.com', 12345, 'test', '098f6bcd4621d373cade4e832627b4'),
(13, 2, 'Alexandrea Lausa', 'Del Solar Maldini de las Casas', 'correo22@gmail.com', 973752339, 'aadelascasas', '827ccb0eea8a706c4c34a16891f84e');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `almacen`
--
ALTER TABLE `almacen`
  ADD PRIMARY KEY (`ID_Almacen`);

--
-- Indices de la tabla `equipo`
--
ALTER TABLE `equipo`
  ADD PRIMARY KEY (`ID_equipo`);

--
-- Indices de la tabla `ficha`
--
ALTER TABLE `ficha`
  ADD PRIMARY KEY (`ID_ficha`),
  ADD KEY `ID_sede` (`ID_sede`),
  ADD KEY `ID_torre` (`ID_torre`),
  ADD KEY `ID_almacen` (`ID_almacen`),
  ADD KEY `ID_equipo` (`ID_equipo`),
  ADD KEY `ID_marca` (`ID_marca`),
  ADD KEY `ID_modelo` (`ID_modelo`),
  ADD KEY `ID_operatividad` (`ID_operatividad`),
  ADD KEY `ID_usuario` (`ID_usuario`);

--
-- Indices de la tabla `marca`
--
ALTER TABLE `marca`
  ADD PRIMARY KEY (`ID_marca`);

--
-- Indices de la tabla `modelo`
--
ALTER TABLE `modelo`
  ADD PRIMARY KEY (`ID_modelo`);

--
-- Indices de la tabla `operatividad`
--
ALTER TABLE `operatividad`
  ADD PRIMARY KEY (`ID_operatividad`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`ID_roles`);

--
-- Indices de la tabla `sede`
--
ALTER TABLE `sede`
  ADD PRIMARY KEY (`ID_sede`);

--
-- Indices de la tabla `torre`
--
ALTER TABLE `torre`
  ADD PRIMARY KEY (`ID_torre`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`ID_usuario`),
  ADD KEY `ID_roles` (`ID_roles`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `almacen`
--
ALTER TABLE `almacen`
  MODIFY `ID_Almacen` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `equipo`
--
ALTER TABLE `equipo`
  MODIFY `ID_equipo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=125;

--
-- AUTO_INCREMENT de la tabla `ficha`
--
ALTER TABLE `ficha`
  MODIFY `ID_ficha` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `marca`
--
ALTER TABLE `marca`
  MODIFY `ID_marca` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT de la tabla `modelo`
--
ALTER TABLE `modelo`
  MODIFY `ID_modelo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=169;

--
-- AUTO_INCREMENT de la tabla `operatividad`
--
ALTER TABLE `operatividad`
  MODIFY `ID_operatividad` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `ID_roles` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `sede`
--
ALTER TABLE `sede`
  MODIFY `ID_sede` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `torre`
--
ALTER TABLE `torre`
  MODIFY `ID_torre` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `ID_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `ficha`
--
ALTER TABLE `ficha`
  ADD CONSTRAINT `ficha_ibfk_1` FOREIGN KEY (`ID_sede`) REFERENCES `sede` (`ID_sede`),
  ADD CONSTRAINT `ficha_ibfk_2` FOREIGN KEY (`ID_torre`) REFERENCES `torre` (`ID_torre`),
  ADD CONSTRAINT `ficha_ibfk_3` FOREIGN KEY (`ID_almacen`) REFERENCES `almacen` (`ID_Almacen`),
  ADD CONSTRAINT `ficha_ibfk_4` FOREIGN KEY (`ID_equipo`) REFERENCES `equipo` (`ID_equipo`),
  ADD CONSTRAINT `ficha_ibfk_5` FOREIGN KEY (`ID_marca`) REFERENCES `marca` (`ID_marca`),
  ADD CONSTRAINT `ficha_ibfk_6` FOREIGN KEY (`ID_modelo`) REFERENCES `modelo` (`ID_modelo`),
  ADD CONSTRAINT `ficha_ibfk_7` FOREIGN KEY (`ID_operatividad`) REFERENCES `operatividad` (`ID_operatividad`),
  ADD CONSTRAINT `ficha_ibfk_8` FOREIGN KEY (`ID_usuario`) REFERENCES `usuario` (`ID_usuario`);

--
-- Filtros para la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `usuario_ibfk_1` FOREIGN KEY (`ID_roles`) REFERENCES `roles` (`ID_roles`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
