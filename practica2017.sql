-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 14-07-2017 a las 21:48:13
-- Versión del servidor: 10.1.21-MariaDB
-- Versión de PHP: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `practica2017`
--

DELIMITER $$
--
-- Procedimientos
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_autenticarUsuario` (`_nick` VARCHAR(30), `_contrasena` VARCHAR(30))  BEGIN
	
	SELECT * FROM Usuario WHERE nick = _nick AND contrasena = _contrasena LIMIT 1;
	
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_deleteUsuario` (IN `u_idUsuario` INT)  BEGIN   
    DELETE FROM Usuario
    WHERE  idUsuario = u_idUsuario;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_insertTarea` (`_titulo` VARCHAR(30), `_descripcion` VARCHAR(30))  BEGIN
	INSERT INTO Tarea(titulo, descripcion, cambios_contrasena, fecha_registro, fecha_final)
    VALUES(_titulo, _descripcion, 0, NOW(), NOW(), NULL);
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_insertUsuario` (`_nick` VARCHAR(30), `_contrasena` VARCHAR(30))  BEGIN
	INSERT INTO Usuario(nick, contrasena, cambios_contrasena, fecha_registro, fecha_modificacion, picture)
    VALUES(_nick, _contrasena, 0, NOW(), NOW(), NULL);
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_selectTarea` (`_titulo` VARCHAR(30), `_descripcion` VARCHAR(30))  BEGIN
	SELECT * FROM Tarea;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_selectUsuario` (`_nick` VARCHAR(30), `_contrasena` VARCHAR(30))  BEGIN
	SELECT * FROM usuario;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_updateUsuario` (IN `u_idUsuario` INT, IN `user_name` VARCHAR(30), IN `passwordUser` VARCHAR(30))  BEGIN
    UPDATE Usuario
    SET
		nick = user_name, 
        contrasena = passwordUser
    WHERE idUsuario =  u_idUsuario;
    END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tarea`
--

CREATE TABLE `tarea` (
  `idTarea` int(11) NOT NULL,
  `titulo` varchar(30) NOT NULL,
  `descripcion` varchar(40) NOT NULL,
  `fecha_registro` datetime NOT NULL,
  `fecha_final` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tarea`
--

INSERT INTO `tarea` (`idTarea`, `titulo`, `descripcion`, `fecha_registro`, `fecha_final`) VALUES
(1, 'laboratorio', 'matematica', '2017-07-11 00:00:00', '2017-07-21 07:15:04'),
(2, 'practica ', 'examen', '2017-07-12 00:00:00', '2017-07-18 00:00:00'),
(3, 'lectura', 'idioma', '2017-07-22 00:00:00', '2017-07-31 00:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `idUsuario` int(11) NOT NULL,
  `nick` varchar(30) NOT NULL,
  `contrasena` varchar(30) NOT NULL,
  `cambios_contrasena` int(11) NOT NULL,
  `fecha_registro` datetime NOT NULL,
  `fecha_modificacion` datetime DEFAULT NULL,
  `picture` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`idUsuario`, `nick`, `contrasena`, `cambios_contrasena`, `fecha_registro`, `fecha_modificacion`, `picture`) VALUES
(2, 'pablo', '1234', 0, '2017-07-14 11:00:17', '2017-07-14 11:00:17', NULL),
(3, 'Sam', 'zero', 0, '2017-07-14 13:31:39', '2017-07-14 13:31:39', NULL),
(4, 'juan jose', 'asfts', 0, '2017-07-14 13:32:17', '2017-07-14 13:32:17', NULL),
(5, 'fernando', 'wicho', 0, '2017-07-14 13:32:52', '2017-07-14 13:32:52', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuariotareas`
--

CREATE TABLE `usuariotareas` (
  `idUsuarioTareas` int(11) NOT NULL,
  `idUsuario` int(11) NOT NULL,
  `idTarea` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tarea`
--
ALTER TABLE `tarea`
  ADD PRIMARY KEY (`idTarea`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`idUsuario`);

--
-- Indices de la tabla `usuariotareas`
--
ALTER TABLE `usuariotareas`
  ADD PRIMARY KEY (`idUsuarioTareas`),
  ADD KEY `idUsuario` (`idUsuario`),
  ADD KEY `idTarea` (`idTarea`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `tarea`
--
ALTER TABLE `tarea`
  MODIFY `idTarea` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `idUsuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de la tabla `usuariotareas`
--
ALTER TABLE `usuariotareas`
  MODIFY `idUsuarioTareas` int(11) NOT NULL AUTO_INCREMENT;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `usuariotareas`
--
ALTER TABLE `usuariotareas`
  ADD CONSTRAINT `usuariotareas_ibfk_1` FOREIGN KEY (`idUsuario`) REFERENCES `usuario` (`idUsuario`),
  ADD CONSTRAINT `usuariotareas_ibfk_2` FOREIGN KEY (`idTarea`) REFERENCES `tarea` (`idTarea`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
