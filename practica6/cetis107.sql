-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 15-02-2025 a las 01:13:58
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
(15, 'Oscar Ivan', 'Torres Burgos', '23325061070510', '2008-05-03', 1, 'oscar.torres23@cetis107.edu.mx', '6679910392'),
(16, 'Angel Daniel', 'Gastelum Rocha', '23325061070380', '2008-01-05', 0, 'angel.gastelum23@cetis107.edu.mx', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carga_academica`
--

CREATE TABLE `carga_academica` (
  `id` int(11) NOT NULL,
  `clase_id` int(11) NOT NULL,
  `alumno_id` int(11) NOT NULL,
  `calificación` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `carga_academica`
--

INSERT INTO `carga_academica` (`id`, `clase_id`, `alumno_id`, `calificación`) VALUES
(1, 1, 1, 10),
(2, 2, 1, 9),
(3, 3, 1, 8),
(4, 4, 1, 9),
(5, 5, 1, 9),
(6, 6, 1, 9),
(7, 7, 1, 7),
(8, 8, 1, 9),
(9, 9, 1, 7);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clases`
--

CREATE TABLE `clases` (
  `ma6teria<` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clasess`
--

CREATE TABLE `clasess` (
  `id` int(11) NOT NULL,
  `materia_id` int(11) NOT NULL,
  `maestra_id` int(11) NOT NULL,
  `hora` time NOT NULL,
  `aula` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `clasess`
--

INSERT INTO `clasess` (`id`, `materia_id`, `maestra_id`, `hora`, `aula`) VALUES
(1, 1, 1, '16:00:00', 'cc1'),
(2, 7, 7, '14:56:00', '12'),
(3, 2, 3, '13:20:00', 'cc2'),
(4, 6, 5, '17:20:00', '12'),
(5, 9, 4, '15:19:00', '12'),
(6, 5, 8, '16:41:00', '12'),
(7, 4, 2, '16:00:00', '12'),
(8, 3, 10, '15:22:00', '12'),
(9, 8, 2, '18:00:00', '12');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `especialidades`
--

CREATE TABLE `especialidades` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `descripción` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `especialidades`
--

INSERT INTO `especialidades` (`id`, `nombre`, `descripción`) VALUES
(1, 'programación', 'contribuye a la formación de personas capaces de\r\nintegrarse a un mercado laboral dinámico y de alta demanda, que esta a la vanguardia en el uso de la tecnología y que contribuye a la\r\ntransformación digital de los sectores productivos en el país'),
(2, 'Ofimatica', 'La carrera técnica en ofimática enseña a usar software de oficina para tareas administrativas y de gestión.'),
(3, 'Construccion ', 'La carrera técnica en construcción forma profesionales en la planificación, ejecución y supervisión de obras civiles, como edificios e infraestructuras.'),
(4, 'Eletronica', 'La carrera técnica en Electrónica enseña diseño, mantenimiento y reparación de sistemas electrónicos para diversas industrias.'),
(5, 'contabilidad', 'La carrera técnica en Contabilidad forma profesionales en registro, análisis y gestión de información financiera.'),
(6, 'diseño grafico', 'La carrera técnica en Diseño Gráfico enseña creación visual para comunicación digital e impresa.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `maestros`
--

CREATE TABLE `maestros` (
  `id` int(11) NOT NULL,
  `nombre` varchar(200) NOT NULL,
  `correo` varchar(100) NOT NULL,
  `género` tinyint(1) NOT NULL,
  `fecha_nacimiento` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `maestros`
--

INSERT INTO `maestros` (`id`, `nombre`, `correo`, `género`, `fecha_nacimiento`) VALUES
(1, 'Luis Carlos', 'luis.santillan23@cetis107.edu.mx', 0, '0000-00-00'),
(2, 'Francisco Jose', 'francisco.rochin23@cetis107.edu.mx', 0, '1980-08-12'),
(3, 'Jorge ', 'jorge.ibarra23@cetis107.edu.mx', 0, '1920-12-06'),
(4, 'Maria Guadalupe', 'maria.ruelas@cetis107.edu.mx', 1, '1986-03-28'),
(5, 'Enoc', 'anoc.hernandez@cetis107.edu.mx', 0, '1980-05-14'),
(6, 'maria de Jesus', 'maria.verduzco@cetis107.edu.mx', 1, '1970-09-24'),
(7, 'cynthia eloiza', 'cynthia.gonzales@cetis107.edu.mx', 1, '1995-04-27'),
(8, 'Luis Alfonso', 'luis.aispuro@cetis107.edu.mx', 0, '1987-08-25'),
(9, 'Papik Heriberto', 'papik.millan@cetis107.edu.mx', 0, '1984-07-23'),
(10, 'Liliana Juarez Espinoza', 'liliana.juarez@cetis107.edu.mx', 1, '1978-10-30');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `materias`
--

CREATE TABLE `materias` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `semestre` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `materias`
--

INSERT INTO `materias` (`id`, `nombre`, `semestre`) VALUES
(1, 'Base de Datos Relacionales', 4),
(2, 'Base de datos no relacionales', 4),
(3, 'Temas Matemáticas 1', 4),
(4, 'Recursos Sociemocionales 4', 4),
(5, 'Reacciones Químicas', 4),
(6, 'Historia', 4),
(7, 'Ciencias Sociales 3', 4),
(8, 'Tutorias', 4),
(9, 'Inglés IV', 4);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `alumnos`
--
ALTER TABLE `alumnos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `carga_academica`
--
ALTER TABLE `carga_academica`
  ADD PRIMARY KEY (`id`),
  ADD KEY `materia_id` (`clase_id`),
  ADD KEY `alumno_id` (`alumno_id`);

--
-- Indices de la tabla `clasess`
--
ALTER TABLE `clasess`
  ADD PRIMARY KEY (`id`,`materia_id`),
  ADD KEY `maestra_id` (`maestra_id`),
  ADD KEY `materia_id` (`materia_id`);

--
-- Indices de la tabla `especialidades`
--
ALTER TABLE `especialidades`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `maestros`
--
ALTER TABLE `maestros`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `materias`
--
ALTER TABLE `materias`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `alumnos`
--
ALTER TABLE `alumnos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `carga_academica`
--
ALTER TABLE `carga_academica`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `clasess`
--
ALTER TABLE `clasess`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `especialidades`
--
ALTER TABLE `especialidades`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `maestros`
--
ALTER TABLE `maestros`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `materias`
--
ALTER TABLE `materias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `carga_academica`
--
ALTER TABLE `carga_academica`
  ADD CONSTRAINT `carga_academica_ibfk_1` FOREIGN KEY (`clase_id`) REFERENCES `clasess` (`id`),
  ADD CONSTRAINT `carga_academica_ibfk_2` FOREIGN KEY (`alumno_id`) REFERENCES `alumnos` (`id`);

--
-- Filtros para la tabla `clasess`
--
ALTER TABLE `clasess`
  ADD CONSTRAINT `clasess_ibfk_1` FOREIGN KEY (`materia_id`) REFERENCES `materias` (`id`),
  ADD CONSTRAINT `clasess_ibfk_2` FOREIGN KEY (`maestra_id`) REFERENCES `maestros` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
