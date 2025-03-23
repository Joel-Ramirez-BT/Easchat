-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 30-08-2022 a las 01:05:16
-- Versión del servidor: 10.4.14-MariaDB
-- Versión de PHP: 8.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `chat`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `messages`
--

CREATE TABLE `messages` (
  `msg_id` int(11) NOT NULL,
  `incoming_msg_id` int(255) NOT NULL,
  `outgoing_msg_id` int(255) NOT NULL,
  `msg` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `messages`
--

INSERT INTO `messages` (`msg_id`, `incoming_msg_id`, `outgoing_msg_id`, `msg`) VALUES
(1, 1622688038, 340066300, 'hola man'),
(2, 340066300, 1622688038, 'bien'),
(3, 1622688038, 340066300, 'hola'),
(4, 340066300, 1622688038, 'hola'),
(5, 440971576, 1622688038, 'hola pedro, necesito tu ayuda'),
(6, 1622688038, 440971576, 'hola Mauricio, claro, dime !!'),
(7, 298387400, 602657557, 'hola'),
(8, 602657557, 298387400, 'hola'),
(9, 298387400, 602657557, 'como estas?'),
(10, 602657557, 298387400, 'Bien y tu?'),
(11, 298387400, 602657557, 'yo bien gracias a Dios'),
(12, 602657557, 298387400, 'Que bueno me alegro'),
(13, 298387400, 602657557, 'muchas gracias'),
(14, 298387400, 602657557, 'que me cuentas?'),
(15, 602657557, 298387400, 'Mmm pues acabo de crear un programa'),
(16, 298387400, 602657557, 'de que trata el programa'),
(17, 602657557, 827210838, 'hola'),
(18, 827210838, 298387400, 'Hola'),
(19, 602657557, 298387400, 'De un chat'),
(20, 827210838, 298387400, 'Cómo está todo'),
(21, 827210838, 298387400, 'Que te parece la app'),
(22, 827210838, 298387400, 'esta bastante buena'),
(23, 298387400, 602657557, 'Wuo está super');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `unique_id` int(255) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`user_id`, `unique_id`, `fname`, `lname`, `email`, `password`, `img`, `status`) VALUES
(4, 298387400, 'joel', 'Ramirez', 'j@gmail.com', 'c25f7e824064a2fb2163e869a38d9f60', '166180675296070104-acoustic-classic-guitar-head-on-cozy-plaid-background-folk-country-music-concept-.jpg', 'Offline now'),
(5, 602657557, 'Easlin', 'Escalante', 'e@gmail.com', '202cb962ac59075b964b07152d234b70', '1661806923¥@ n¤ br![[@&.jpg', 'Offline now'),
(6, 827210838, 'Cristofer', 'Lopez', 'C@gmail.com', '202cb962ac59075b964b07152d234b70', '1661811829350862-admin.jpg', 'Disponible');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`msg_id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `messages`
--
ALTER TABLE `messages`
  MODIFY `msg_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
