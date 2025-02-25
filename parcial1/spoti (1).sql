-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 25-02-2025 a las 01:59:57
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
-- Base de datos: `spoti`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `artistas`
--

CREATE TABLE `artistas` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `descripcion` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `artistas`
--

INSERT INTO `artistas` (`id`, `nombre`, `descripcion`) VALUES
(1, 'Kendrick Lamar', 'Kendrick Lamar, el rey del hip hop Kendrick Lamar Duckworth (17 de junio de 1987, Compton, California) es un rapero norteamericano. Lamar nació en el seno de una familia muy humilde de Compton, un suburbio multirracial de L.A., famoso por ser el origen del supergrupo de rap N.W.A.'),
(2, 'Taylor swift', 'Taylor Alison Swift (West Reading, Pensilvania, 13 de diciembre de 1989), más conocida como Taylor Swift, es una cantante, compositora y actriz estadounidense y una de las artistas con mayores ventas discográficas del mundo, más de 114 millones de álbumes en formato físico'),
(3, 'Bad Bunny', 'Benito Antonio Martínez Ocasio (10 de marzo de 1994, Vega Baja, San Juan), conocido universalmente como Bad Bunny, es un intérprete y compositor de música urbana puertorriqueño. Se le considera uno de los principales nombres del panorama actual del rap, trap y reguetón en español.'),
(4, 'David Bowie', 'Bowie nació en una familia de clase trabajadora residente en el distrito de Lambeth, al sur de Londres. Su madre trabajaba en un cine y su padre en una organización benéfica. Ya en la escuela infantil, se le señaló como un niño superdotado, pero también con un carácter rebelde y desafiante.'),
(5, 'Natanael Cano', 'Natanael Cano es el pionero de los corridos tumbados. Natanael Cano habla por un género, una generación y un país que, como su música, ha sido ampliamente influenciado por elementos externos. Aunque es de origen mexicano, su ritmo se ha impregnado de la cultura mexicoamericana.'),
(6, 'Kanye West', 'Kanye Omari West es un rapero, cantante, productor musical, emprendedor, político y diseñador de moda estadounidense. ​ Ha sido una de las personas más influyentes para el desarrollo del hip hop mainstream, la música popular y la cultura popular en general del siglo 21.'),
(7, 'Frank Ocean', 'Es considerado por amplios medios artísticos como uno de los mejores artistas de la década de 2010 por sus estilos musicales vanguardistas y sus letras introspectivas y elípticas. Ocean en 2021.'),
(8, 'Metallica', 'Metallica es una banda de trash metal, un género musical caracterizado por rápidos cortes de guitarra y una percusión acelerada, y uno de los grupos más populares de la historia gracias a su particular ejecución tanto vocal como instrumental.'),
(9, 'Prince', 'Metallica es una banda de trash metal, un género musical caracterizado por rápidos cortes de guitarra y una percusión acelerada, y uno de los grupos más populares de la historia gracias a su particular ejecución tanto vocal como instrumental.'),
(10, 'Luis Miguel', 'Luis Miguel Gallego Bastery, artísticamente conocido como Luis Miguel, es una de las mejores voces masculinas de habla hispana. Nacido el 19 de abril de 1970 en Puerto Rico y siendo hijo de madre italiana y padre español, emigró con ellos a México desde temprana edad, país del que adquirió la nacion');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `artistascanciones`
--

CREATE TABLE `artistascanciones` (
  `id` int(11) NOT NULL,
  `artista_id` int(11) NOT NULL,
  `canciones_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `artistascanciones`
--

INSERT INTO `artistascanciones` (`id`, `artista_id`, `canciones_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(4, 1, 4),
(5, 1, 5),
(6, 2, 6),
(7, 2, 7),
(8, 2, 8),
(9, 2, 9),
(10, 2, 10),
(11, 3, 26),
(12, 3, 27),
(13, 3, 28),
(14, 3, 29),
(15, 3, 30),
(16, 4, 21),
(17, 4, 22),
(18, 4, 23),
(19, 4, 24),
(20, 4, 25),
(21, 5, 36),
(22, 5, 37),
(23, 5, 38),
(24, 5, 39),
(25, 5, 40),
(26, 6, 16),
(27, 6, 17),
(28, 6, 18),
(29, 6, 19),
(30, 6, 20),
(31, 7, 11),
(32, 7, 12),
(33, 7, 13),
(34, 7, 14),
(35, 7, 15),
(36, 8, 41),
(37, 8, 42),
(38, 8, 43),
(39, 8, 40),
(40, 8, 45),
(41, 9, 46),
(42, 9, 47),
(43, 9, 48),
(44, 4, 49),
(45, 9, 50),
(46, 10, 31),
(47, 10, 32),
(48, 10, 33),
(49, 10, 34),
(50, 10, 35);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `canciones`
--

CREATE TABLE `canciones` (
  `id` int(11) NOT NULL,
  `nombre` varchar(200) NOT NULL,
  `genero_id` int(11) NOT NULL,
  `duracion` time NOT NULL,
  `fecha` date NOT NULL,
  `activo` tinyint(1) NOT NULL,
  `foto` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `canciones`
--

INSERT INTO `canciones` (`id`, `nombre`, `genero_id`, `duracion`, `fecha`, `activo`, `foto`) VALUES
(1, 'Alright', 1, '03:39:00', '2015-03-16', 1, 'alright.jpg'),
(2, 'How Much A Dollar Cost', 1, '04:20:00', '2015-03-16', 1, 'howmuchadollarcost.jpg'),
(3, 'Sing About me, I\'m Dying Of Thrist', 1, '12:03:00', '2012-01-01', 1, 'SingAboutmeI\'mDyingOfThrist.jpg'),
(4, 'Duckworth', 1, '04:08:00', '2017-04-14', 1, 'duckworth.jpg'),
(5, 'N95', 1, '03:15:00', '2022-05-13', 1, 'n95.jpg'),
(6, 'Willow', 2, '03:33:00', '2021-01-07', 1, 'willow.jpg'),
(7, 'Champagne problems', 2, '04:03:00', '2021-01-07', 1, 'champagneproblems.jpg'),
(8, 'Cardigan', 2, '03:59:00', '2020-07-24', 1, 'cardigan'),
(9, 'August', 2, '04:21:00', '2020-07-24', 1, 'august.jpg'),
(10, 'Hoax', 2, '03:39:00', '2020-07-24', 1, 'hoax.jpg'),
(11, 'ivy', 3, '04:09:00', '2016-08-20', 1, 'ivy.jpg'),
(12, 'Solo', 3, '04:17:00', '2016-08-20', 1, 'solo.jpg'),
(13, 'Nights', 3, '05:07:00', '2016-08-20', 1, 'nights.jpg'),
(14, 'White Ferrari', 3, '04:08:00', '2016-08-20', 1, 'whiteferrari.jpg'),
(15, 'Seigfried', 3, '05:34:00', '2016-08-20', 1, 'seigfreid.jpg'),
(16, 'POWER', 1, '04:51:00', '2010-11-22', 1, 'power.jpg'),
(17, 'Flashing Lights', 1, '03:57:00', '2007-09-11', 1, 'flashinglights.jpg'),
(18, '24', 1, '03:17:00', '2021-11-14', 1, '24.jpg'),
(19, 'Touch The Sky', 1, '03:56:00', '2005-08-30', 1, 'touchthesky.jpg'),
(20, 'Bound 2', 1, '03:49:00', '2013-06-18', 1, 'bound2.jpg'),
(21, 'Five Years', 4, '04:43:00', '1972-06-06', 1, 'fiveyears.jpg'),
(22, 'Soul Love', 4, '03:34:00', '1972-06-06', 1, 'soullove.jpg'),
(23, 'Moonage Daydream', 4, '04:39:00', '1972-06-06', 1, 'moonagedaydream.jpg'),
(24, 'Starman', 4, '04:14:00', '1972-06-06', 1, 'starman.jpg'),
(25, 'it Ain\'t Easy', 4, '02:57:00', '1972-06-06', 1, 'itAin\'tEasy.jpg'),
(26, 'NUEVAYoL', 6, '03:03:00', '2025-01-05', 1, 'nuevayol.jpg'),
(27, 'BAILE INoLVIDABLE', 6, '06:07:00', '2025-01-05', 1, 'baileinolvidable.jpg'),
(28, 'TURiSTA', 6, '03:10:00', '2025-01-05', 1, 'turista.jpg'),
(29, 'EoO', 6, '03:24:00', '2025-01-05', 1, 'eoo.jpg'),
(30, 'DtMF', 6, '03:56:00', '2025-01-05', 1, 'dtmf.jpg'),
(31, 'Culpable O No', 9, '03:57:00', '1988-11-25', 1, 'culpableono.jpg'),
(32, 'Fria Como El Viento', 9, '03:55:00', '1988-11-25', 1, 'friacomoelviento.jpg'),
(33, 'Esa Niña', 9, '04:06:00', '1988-11-25', 1, 'esaniña.jpg'),
(34, 'Un Hombre Busca Una Mujer', 9, '03:35:00', '1988-11-25', 1, 'unhombrebuscaunamujer.jpg'),
(35, 'La Incondicional', 9, '04:16:00', '1988-11-25', 1, 'laincondicional.jpg'),
(36, 'Diamantes', 11, '03:30:00', '2021-05-28', 1, 'diamantes.jpg'),
(37, 'El F', 11, '04:08:00', '2021-05-28', 1, 'elf.jpg'),
(38, 'Carlitos', 11, '03:01:00', '2021-05-28', 1, 'carlitos.jpg'),
(39, 'Se Les Olvida', 11, '03:21:00', '2021-05-28', 1, 'selesolvida.jpg'),
(40, 'En EL Cielo o En El Infierno', 11, '03:21:00', '2021-05-28', 1, 'enelcielooenelinfierno.jpg'),
(41, 'Enter sandman', 10, '05:31:00', '1991-08-12', 1, 'entersandman.jpg'),
(42, 'Sad But True', 10, '05:23:00', '1991-08-12', 1, 'sadbutrue.jpg'),
(43, 'holier Than You', 10, '03:47:00', '1991-08-12', 1, 'holierthanyou.jpg'),
(44, 'The Unforgiven', 10, '06:26:00', '1991-08-12', 1, 'theunforgiven.jpg'),
(45, 'Wherever I May Roam', 10, '06:43:00', '1991-08-12', 1, 'whereverimayroam'),
(46, 'Darling Nikki', 7, '04:14:00', '1984-07-25', 1, 'darlingnikki.jpg'),
(47, 'When Doves Cry', 10, '05:55:00', '1984-07-25', 1, 'whendovescry.jpg'),
(48, 'I Would Die 4 u', 7, '02:49:00', '1984-07-25', 1, 'iwoulddie4u.jpg'),
(49, 'Baby I\'m Star', 7, '04:24:00', '1984-07-25', 1, 'babyimstar.jpg'),
(50, 'Purple Rain', 7, '08:41:00', '1984-07-25', 1, 'purplerain.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `favoritos`
--

CREATE TABLE `favoritos` (
  `id` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `canciones_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `genero`
--

CREATE TABLE `genero` (
  `id` int(11) NOT NULL,
  `nombre` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `genero`
--

INSERT INTO `genero` (`id`, `nombre`) VALUES
(1, 'Hip-Hop/Rap'),
(2, 'Pop'),
(3, 'R&B'),
(4, 'Rock'),
(5, 'Country'),
(6, 'Reggeaton'),
(7, 'funk'),
(8, 'Soul'),
(9, 'Boleros'),
(10, 'Metal'),
(11, 'corridos tumbados');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `membresias`
--

CREATE TABLE `membresias` (
  `id` int(11) NOT NULL,
  `descripcion` varchar(100) NOT NULL,
  `precio` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `membresias`
--

INSERT INTO `membresias` (`id`, `descripcion`, `precio`) VALUES
(1, 'Free', 0),
(2, 'Individual', 129),
(3, 'Familiar', 179),
(4, 'Duo', 159),
(5, 'Estudiantes', 69);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `playlist`
--

CREATE TABLE `playlist` (
  `id` int(11) NOT NULL,
  `nombre` varchar(200) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `duracion` time NOT NULL,
  `totalcanciones` int(11) NOT NULL,
  `descripcion` varchar(200) NOT NULL,
  `publico` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `playlistcanciones`
--

CREATE TABLE `playlistcanciones` (
  `id` int(11) NOT NULL,
  `playlist_id` int(11) NOT NULL,
  `canciones_id` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `correo` varchar(300) NOT NULL,
  `membresia_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `correo`, `membresia_id`) VALUES
(1, 'Axel Beltrán', 'axel.beltran23@cetis107.edu.mx', 2),
(2, 'Maximo Coronel', 'maximo.coronel23@cetis107.edu.mx', 1),
(3, 'Emiliano Lopez', 'emilino.lopez23@cetis107.edu.mx', 3),
(4, 'Hector Ortiz', 'hector.ortiz23@cetis107.edu.mx', 4),
(5, 'Luis Ernesto Beltran', 'luisebel202@gmail.com', 5);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `artistas`
--
ALTER TABLE `artistas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `artistascanciones`
--
ALTER TABLE `artistascanciones`
  ADD PRIMARY KEY (`id`),
  ADD KEY `artista_id` (`artista_id`),
  ADD KEY `canciones_id` (`canciones_id`);

--
-- Indices de la tabla `canciones`
--
ALTER TABLE `canciones`
  ADD PRIMARY KEY (`id`),
  ADD KEY `genero_id` (`genero_id`);

--
-- Indices de la tabla `favoritos`
--
ALTER TABLE `favoritos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `usuario_id` (`usuario_id`),
  ADD KEY `canciones_id` (`canciones_id`);

--
-- Indices de la tabla `genero`
--
ALTER TABLE `genero`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `membresias`
--
ALTER TABLE `membresias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `playlist`
--
ALTER TABLE `playlist`
  ADD PRIMARY KEY (`id`),
  ADD KEY `usuario_id` (`usuario_id`);

--
-- Indices de la tabla `playlistcanciones`
--
ALTER TABLE `playlistcanciones`
  ADD PRIMARY KEY (`id`),
  ADD KEY `playlist_id` (`playlist_id`),
  ADD KEY `canciones_id` (`canciones_id`),
  ADD KEY `usuario_id` (`usuario_id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD KEY `membresia_id` (`membresia_id`),
  ADD KEY `membresia_id_2` (`membresia_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `artistas`
--
ALTER TABLE `artistas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `artistascanciones`
--
ALTER TABLE `artistascanciones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT de la tabla `canciones`
--
ALTER TABLE `canciones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT de la tabla `favoritos`
--
ALTER TABLE `favoritos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `genero`
--
ALTER TABLE `genero`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `membresias`
--
ALTER TABLE `membresias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `playlist`
--
ALTER TABLE `playlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `playlistcanciones`
--
ALTER TABLE `playlistcanciones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `artistascanciones`
--
ALTER TABLE `artistascanciones`
  ADD CONSTRAINT `artistascanciones_ibfk_1` FOREIGN KEY (`artista_id`) REFERENCES `artistas` (`id`),
  ADD CONSTRAINT `artistascanciones_ibfk_2` FOREIGN KEY (`canciones_id`) REFERENCES `canciones` (`id`);

--
-- Filtros para la tabla `canciones`
--
ALTER TABLE `canciones`
  ADD CONSTRAINT `canciones_ibfk_1` FOREIGN KEY (`genero_id`) REFERENCES `genero` (`id`);

--
-- Filtros para la tabla `favoritos`
--
ALTER TABLE `favoritos`
  ADD CONSTRAINT `favoritos_ibfk_1` FOREIGN KEY (`canciones_id`) REFERENCES `canciones` (`id`),
  ADD CONSTRAINT `favoritos_ibfk_2` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`);

--
-- Filtros para la tabla `playlist`
--
ALTER TABLE `playlist`
  ADD CONSTRAINT `playlist_ibfk_1` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`);

--
-- Filtros para la tabla `playlistcanciones`
--
ALTER TABLE `playlistcanciones`
  ADD CONSTRAINT `playlistcanciones_ibfk_1` FOREIGN KEY (`canciones_id`) REFERENCES `canciones` (`id`),
  ADD CONSTRAINT `playlistcanciones_ibfk_2` FOREIGN KEY (`playlist_id`) REFERENCES `playlist` (`id`),
  ADD CONSTRAINT `playlistcanciones_ibfk_3` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`);

--
-- Filtros para la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD CONSTRAINT `usuarios_ibfk_1` FOREIGN KEY (`membresia_id`) REFERENCES `membresias` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
