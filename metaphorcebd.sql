-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 25-07-2022 a las 06:20:29
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `metaphorcebd`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contract`
--

CREATE TABLE `contract` (
  `ContractId` bigint(20) NOT NULL,
  `EmployeeId` int(11) DEFAULT NULL,
  `ContractTypeId` int(11) DEFAULT NULL,
  `DateFrom` datetime NOT NULL,
  `DateTo` datetime NOT NULL,
  `SalaryPerDay` decimal(10,0) NOT NULL,
  `IsActive` tinyint(1) NOT NULL,
  `DateCreated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contracttype`
--

CREATE TABLE `contracttype` (
  `ContractTypeId` int(11) NOT NULL,
  `Name` text NOT NULL,
  `Description` text DEFAULT NULL,
  `IsActive` tinyint(1) NOT NULL,
  `DateCreated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `contracttype`
--

INSERT INTO `contracttype` (`ContractTypeId`, `Name`, `Description`, `IsActive`, `DateCreated`) VALUES
(1, 'Permanent', 'The job is full time', 1, '2022-07-24 05:22:00'),
(2, 'Fixed-Term', 'The term of this contract is fixed.', 1, '2022-07-24 05:23:00'),
(3, 'External', 'This type of contract is external', 1, '2022-07-24 05:24:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `employee`
--

CREATE TABLE `employee` (
  `EmployeeId` int(11) NOT NULL,
  `TaxtIdNumber` tinytext NOT NULL,
  `Name` tinytext NOT NULL,
  `LastName` text NOT NULL,
  `BirthDate` date NOT NULL,
  `Email` tinytext NOT NULL,
  `Cellphone` tinytext NOT NULL,
  `IsActive` tinyint(1) NOT NULL,
  `DateCreated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `employee`
--

INSERT INTO `employee` (`EmployeeId`, `TaxtIdNumber`, `Name`, `LastName`, `BirthDate`, `Email`, `Cellphone`, `IsActive`, `DateCreated`) VALUES
(1, 'XAXX010101000', 'OMAR', 'ALVAREZ', '1998-06-24', 'omar@gmail.com', '4444444444', 1, '2022-07-24 05:25:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `userpassword` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `username`, `userpassword`) VALUES
(1, 'metaphorce', 'm3t4Ph0rc3');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `contract`
--
ALTER TABLE `contract`
  ADD PRIMARY KEY (`ContractId`),
  ADD KEY `FKIdEmployee` (`EmployeeId`),
  ADD KEY `FKIdContractType` (`ContractTypeId`);

--
-- Indices de la tabla `contracttype`
--
ALTER TABLE `contracttype`
  ADD PRIMARY KEY (`ContractTypeId`);

--
-- Indices de la tabla `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`EmployeeId`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `contract`
--
ALTER TABLE `contract`
  MODIFY `ContractId` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `contracttype`
--
ALTER TABLE `contracttype`
  MODIFY `ContractTypeId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `employee`
--
ALTER TABLE `employee`
  MODIFY `EmployeeId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `contract`
--
ALTER TABLE `contract`
  ADD CONSTRAINT `FKIdContractType` FOREIGN KEY (`ContractTypeId`) REFERENCES `contracttype` (`ContractTypeId`),
  ADD CONSTRAINT `FKIdEmployee` FOREIGN KEY (`EmployeeId`) REFERENCES `employee` (`EmployeeId`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
