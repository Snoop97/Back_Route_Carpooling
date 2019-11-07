-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 07-11-2019 a las 06:25:48
-- Versión del servidor: 10.4.8-MariaDB
-- Versión de PHP: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bd_route-carpool`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `administrador`
--

CREATE TABLE `administrador` (
  `adm_id` int(11) NOT NULL,
  `email_adm` varchar(100) NOT NULL,
  `psw_adm` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `administrador`
--

INSERT INTO `administrador` (`adm_id`, `email_adm`, `psw_adm`) VALUES
(1, 'admin', 'sysadmin123');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `duenio`
--

CREATE TABLE `duenio` (
  `id_due` int(11) NOT NULL,
  `nom_due` text NOT NULL,
  `apePat_due` text NOT NULL,
  `apeMat_due` text NOT NULL,
  `tel_due` varchar(9) NOT NULL,
  `email_due` varchar(100) NOT NULL,
  `psw_due` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `duenio`
--

INSERT INTO `duenio` (`id_due`, `nom_due`, `apePat_due`, `apeMat_due`, `tel_due`, `email_due`, `psw_due`) VALUES
(1, 'Fabian', 'Lopez', 'Sarango', '981562743', 'flopez@gmail.com', '12345'),
(2, 'Sandra', 'Lopez', 'Sarango', '987654321', 'slopez@gmail.com', '123456'),
(3, 'Miguel', 'Rodas', 'Balbin', '965434897', 'mrodas@gmail.com', '1234567'),
(4, 'Luis', 'Ramirez', 'Sotelo', '987654321', 'adfdsf@gmil.com', '123456'),
(5, 'Fabian', 'SADSA', 'DSA', '987654321', 'abc', '123');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ruta`
--

CREATE TABLE `ruta` (
  `id_rut` int(11) NOT NULL,
  `num_placa` varchar(7) NOT NULL,
  `marca` varchar(50) NOT NULL,
  `par_ini` varchar(100) NOT NULL,
  `par_fin` varchar(100) NOT NULL,
  `par1_` varchar(100) NOT NULL,
  `fecha` date NOT NULL,
  `hora` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `ruta`
--

INSERT INTO `ruta` (`id_rut`, `num_placa`, `marca`, `par_ini`, `par_fin`, `par1_`, `fecha`, `hora`) VALUES
(1, 'ABC-123', 'Hyundai', 'La Molina', 'Pershing', 'Javier Prado', '0000-00-00', 21),
(2, 'ABC-123', 'Hyundai', 'La Molina', 'Pershing', 'Javier Prado', '0000-00-00', 21),
(3, 'EMD-123', 'Toyota', 'Jockey Club', 'Puente Nuevo', 'Santa Anita', '2019-10-30', 0),
(4, 'DFE-345', 'Toyota', 'Aviacion con Javier Prado', 'Rivera Navarrete', 'Guardia Civil con Javier Prado', '2019-10-30', 19),
(5, 'DFE-123', 'Toyota', 'Javier Prado con Rivera Navarrete', 'Plaza San Miguel', 'Salaverry con Pershing', '2019-10-31', 21),
(6, 'EDF-567', 'Hyundai', 'Javier Prado con Pershing', 'Plaza San Miguel', 'Sucre con La Marina', '2019-10-31', 19),
(7, 'EDF-567', 'Hyundai', 'Javier Prado con Pershing', 'Plaza San Miguel', 'Sucre con La Marina', '2019-10-31', 19),
(8, 'ABC-678', 'ttttt', 'asdf', 'lkjh', 'zxcv', '0000-00-00', 18),
(9, 'EMD-123', 'Toyota', 'abfdsfds', 'fdsfdsfsdf', 'fdsfdsfdsf', '2019-12-30', 14),
(10, 'EMD-123', 'TOYOTA', 'Av. Javier Prado 123', 'Av Pershing 123', '123', '2019-10-30', 21);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id_user` int(11) NOT NULL,
  `nom_user` text NOT NULL,
  `apePat_user` text NOT NULL,
  `apeMat_user` text NOT NULL,
  `email_user` varchar(100) NOT NULL,
  `psw_user` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id_user`, `nom_user`, `apePat_user`, `apeMat_user`, `email_user`, `psw_user`) VALUES
(1, 'Carlos', 'Romero', 'Tapia', 'ctapia@gmail.com', 'abc123'),
(2, 'Erica', 'Tapia', 'Nuñez', 'etapia@gmail.com', '1234'),
(3, 'Luis', 'Lopez', 'Zeballos', 'llopez@gmail.com', 'abc1234');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `administrador`
--
ALTER TABLE `administrador`
  ADD PRIMARY KEY (`adm_id`);

--
-- Indices de la tabla `duenio`
--
ALTER TABLE `duenio`
  ADD PRIMARY KEY (`id_due`);

--
-- Indices de la tabla `ruta`
--
ALTER TABLE `ruta`
  ADD PRIMARY KEY (`id_rut`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `administrador`
--
ALTER TABLE `administrador`
  MODIFY `adm_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `duenio`
--
ALTER TABLE `duenio`
  MODIFY `id_due` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `ruta`
--
ALTER TABLE `ruta`
  MODIFY `id_rut` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
