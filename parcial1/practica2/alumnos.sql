-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 08-02-2025 a las 02:07:32
-- Versión del servidor: 10.1.39-MariaDB
-- Versión de PHP: 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `cetis107`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alumnos`
--

CREATE TABLE `alumnos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `apellido` varchar(100) NOT NULL,
  `numero_control` varchar(20) NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  `genero` tinyint(1) NOT NULL,
  `correo` varchar(80) NOT NULL,
  `telefono` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `alumnos`
--

INSERT INTO `alumnos` (`id`, `nombre`, `apellido`, `numero_control`, `fecha_nacimiento`, `genero`, `correo`, `telefono`) VALUES
(1, 'Axel Armando', 'Beltrán López', '23325061070317', '2008-05-13', 1, 'axel.beltran23@cetis107.edu.mx', '6674066013'),
(2, 'Maximno', 'Coronel Aispuro', '23325061070422', '2008-04-12', 1, 'maximo.coronel23@cetis107.edu.mx', '6673819305'),
(3, 'Maya', 'Almaral', '23325061070317', '2008-02-01', 0, 'maya.almaral23@cetis107.edu.mx', '6671514276'),
(4, 'Diego Joan', 'Dominguez Lizarraga', '23325061070579', '2008-11-10', 1, 'diego.dominguez23@cetis107.edu.mx', ''),
(5, 'hector Aaron', 'Ortiz Serrano', '23325061070233', '2008-08-23', 1, 'hector.ortiz23@cetis107.edu.mx', '6673583222'),
(6, 'Emiliano', 'López Sanchez', '23325061070957', '2008-01-25', 1, 'emiliano.lopez23@cetis107.edu.mx', '6675137288'),
(7, 'Victor', 'Diaz Gastelum', '23325061070728', '2008-09-28', 1, 'victor.diaz23@cetis107.edu.mx', '6677911274'),
(8, 'Frida Sofía', 'Sanchez Valenzuela', '23325061070611', '2008-01-10', 0, 'frida.sanchez23@cetis107.edu.mx', '6674087474'),
(9, 'Angel Gibran', 'Loaiza García', '23325061070808', '2008-08-26', 1, 'amgel.loaiza23@cetis107.edu.mx', ''),
(10, 'Bayron Uriel', 'Estrada Camacho', '23325061070375', '2008-08-13', 1, 'bayron.estrada23@cetis107.edu.mx', '(909)5160134'),
(11, 'Santiago', 'López Aispuro', '23325061070386', '2008-04-20', 1, 'santiago.lopez23@cetis107.edu.mx', ''),
(12, 'Luis Angel', 'Moya Preciado', '23325061070393', '2008-12-29', 1, 'luis.moya23@cetis107.edu.mx\r\n', ''),
(13, 'Paolo Nicholas', 'Valdez Bernal', '23325061070460', '2008-10-30', 1, 'paolo.valdez@cetis107.edu.mx', '6675412714'),
(14, 'Mateo', 'Ibarra Gastelum', '23325061070484', '2008-06-24', 1, 'mateo.gastelum23@cetis107.edu.mx', '6677868960'),
(15, 'Oscar Ivan', 'Torres Burgos', '23325061070510', '2008-05-03', 1, 'oscar.torres23@cetis107.edu.mx', '6679910392');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `alumnos`
--
ALTER TABLE `alumnos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `alumnos`
--
ALTER TABLE `alumnos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
