-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 09-12-2024 a las 20:44:08
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
-- Base de datos: `datos`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `adm`
--

CREATE TABLE `adm` (
  `id` int(11) NOT NULL,
  `Fecha del evento` date DEFAULT NULL,
  `Nombre del evento` varchar(255) NOT NULL,
  `usuario_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `adm`
--

INSERT INTO `adm` (`id`, `Fecha del evento`, `Nombre del evento`, `usuario_id`) VALUES
(13, '2034-11-08', 'Conferencias y Seminarios', NULL),
(19, '0000-00-00', 'esther', NULL),
(20, '2024-11-02', 'mria', NULL),
(21, '2024-12-12', 'Fiestas y Celebraciones', NULL),
(22, '2024-12-11', 'Fiestas y Celebraciones', NULL),
(23, '2024-12-05', 'Fiestas y Celebraciones', NULL),
(24, '2024-12-12', 'Fiestas y Celebraciones', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `correo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `correo`) VALUES
(1, 'ANGIE', 'mirisleysi.meneses@utp.ac.pa'),
(2, 'MARADB', 'AMSMMAM@gmail.com'),
(19, 'xxx', 'ñññññññññññññ'),
(32, 'Mirisleysi', 'mirisleysi.meneses@utp.wc.xn--pa-zjaa'),
(33, 'fffffffffffff', 'eeee@rrr'),
(34, 'MiriamD', 'SSSSSSSS@DDD');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `adm`
--
ALTER TABLE `adm`
  ADD PRIMARY KEY (`id`),
  ADD KEY `usuario_id` (`usuario_id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `correo` (`correo`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `adm`
--
ALTER TABLE `adm`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `adm`
--
ALTER TABLE `adm`
  ADD CONSTRAINT `adm_ibfk_1` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
