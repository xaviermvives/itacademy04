-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 01-04-2019 a las 09:25:07
-- Versión del servidor: 10.1.38-MariaDB
-- Versión de PHP: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `Optica-Cul_de_Got`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ulleres`
--

CREATE TABLE `ulleres` (
  `id_ulleres` int(11) NOT NULL,
  `marca_ulle` int(11) NOT NULL,
  `graduacio_vidre-esqu` decimal(10,0) NOT NULL,
  `graduacio_vidre-dret` decimal(10,0) NOT NULL,
  `muntura_ulle` int(11) NOT NULL,
  `color_munt_ulle` int(11) NOT NULL,
  `color_vidre_ulle` int(11) NOT NULL,
  `preu` decimal(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `ulleres`
--

INSERT INTO `ulleres` (`id_ulleres`, `marca_ulle`, `graduacio_vidre-esqu`, `graduacio_vidre-dret`, `muntura_ulle`, `color_munt_ulle`, `color_vidre_ulle`, `preu`) VALUES
(1, 1, '0', '0', 1, 1, 1, '35'),
(2, 1, '0', '0', 1, 1, 1, '35'),
(3, 3, '1', '2', 3, 1, 1, '25'),
(4, 3, '1', '2', 3, 1, 1, '25'),
(5, 3, '5', '3', 2, 1, 1, '20');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `ulleres`
--
ALTER TABLE `ulleres`
  ADD PRIMARY KEY (`id_ulleres`),
  ADD KEY `marca_ulle` (`marca_ulle`),
  ADD KEY `muntura_ulle` (`muntura_ulle`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `ulleres`
--
ALTER TABLE `ulleres`
  MODIFY `id_ulleres` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `ulleres`
--
ALTER TABLE `ulleres`
  ADD CONSTRAINT `ulleres_ibfk_1` FOREIGN KEY (`marca_ulle`) REFERENCES `marques_ulleres` (`id_marca_ull`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ulleres_ibfk_2` FOREIGN KEY (`muntura_ulle`) REFERENCES `muntures` (`id_muntura`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
