-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 03-10-2026 a las 16:14:07
-- Versión del servidor: 9.1.0
-- Versión de PHP: 8.3.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `biblioteca_utc`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumnos`
--

DROP TABLE IF EXISTS `alumnos`;
CREATE TABLE IF NOT EXISTS `alumnos` (
  `id_alumnos` int NOT NULL,
  `grado_y_grupo` varchar(100) NOT NULL,
  `nombre_completo` varchar(100) NOT NULL,
  PRIMARY KEY (`id_alumnos`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `alumnos`
--

INSERT INTO `alumnos` (`id_alumnos`, `grado_y_grupo`, `nombre_completo`) VALUES
(1, '3B', 'Cristian Rodolfo Salgado Santana'),
(2, '3A', 'Ania Citlalitzin Osorio Navarrete'),
(3, '3C', 'Jasub Osorio Carbajal');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inscripciones`
--

DROP TABLE IF EXISTS `inscripciones`;
CREATE TABLE IF NOT EXISTS `inscripciones` (
  `id_inscripciones` int NOT NULL AUTO_INCREMENT,
  `id_alumnos` int DEFAULT NULL,
  `turno` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id_inscripciones`),
  KEY `id_alumnos` (`id_alumnos`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `libros`
--

DROP TABLE IF EXISTS `libros`;
CREATE TABLE IF NOT EXISTS `libros` (
  `id_libro` int NOT NULL,
  `titulo` varchar(100) NOT NULL,
  `autor` varchar(100) NOT NULL,
  `ejemplares_disponibles` int NOT NULL,
  PRIMARY KEY (`id_libro`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `libros`
--

INSERT INTO `libros` (`id_libro`, `titulo`, `autor`, `ejemplares_disponibles`) VALUES
(1, 'Bicentenario en el estado de mexico', 'Gobierno del estado de mexico', 0),
(2, 'Historia secreta de la masoneria', 'Jeremy Harwood', 0),
(3, 'Introduccion a la psicologia', 'Fernando Zepeda Herrera', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `prestamos`
--

DROP TABLE IF EXISTS `prestamos`;
CREATE TABLE IF NOT EXISTS `prestamos` (
  `id_prestamo` int NOT NULL,
  `id_alumnos` int DEFAULT NULL,
  `fecha_prestamos` date NOT NULL,
  PRIMARY KEY (`id_prestamo`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `prestamos`
--

INSERT INTO `prestamos` (`id_prestamo`, `id_alumnos`, `fecha_prestamos`) VALUES
(1, 1, '2026-09-15'),
(2, 2, '2026-09-17'),
(3, 3, '2026-09-19');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
