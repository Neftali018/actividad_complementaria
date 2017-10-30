-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 30-10-2017 a las 21:38:16
-- Versión del servidor: 10.1.26-MariaDB
-- Versión de PHP: 7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `actividad_complementaria`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `actividad_comp`
--

CREATE TABLE `actividad_comp` (
  `clave_act` int(11) NOT NULL,
  `nombre_act` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `actividad_comp`
--

INSERT INTO `actividad_comp` (`clave_act`, `nombre_act`) VALUES
(1, 'taller de lectura'),
(2, 'computacion'),
(3, 'futbol'),
(4, 'Vasquetbol'),
(66, 'voli');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carrera`
--

CREATE TABLE `carrera` (
  `clave` varchar(20) NOT NULL,
  `nombre` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `carrera`
--

INSERT INTO `carrera` (`clave`, `nombre`) VALUES
('010214', 'Ingeniería en Agronomía'),
('2010-213', 'Ingeniería en Administración'),
('IINF-2010-220', 'Ingeniería en Informática'),
('LADM-2010-234', 'Licenciatura en Administración'),
('LBIO-2010-233', 'Licenciatura en Biología');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `departamento`
--

CREATE TABLE `departamento` (
  `clave_departamento` int(13) NOT NULL,
  `nombre_departamento` varchar(45) NOT NULL,
  `trabajador_rfc` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `departamento`
--

INSERT INTO `departamento` (`clave_departamento`, `nombre_departamento`, `trabajador_rfc`) VALUES
(1, 'desarrollo', 'gfds234x521345'),
(2323, 'ingles', 'gfds234x521345'),
(324321, 'computacion', 'GOVL801204159');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estudiante`
--

CREATE TABLE `estudiante` (
  `n_control` int(11) NOT NULL,
  `a_paterno` varchar(45) NOT NULL,
  `a_materno` varchar(45) NOT NULL,
  `nombre_estudiante` varchar(45) NOT NULL,
  `semestre` varchar(45) NOT NULL,
  `firma` varchar(45) NOT NULL,
  `carrera_clave` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `estudiante`
--

INSERT INTO `estudiante` (`n_control`, `a_paterno`, `a_materno`, `nombre_estudiante`, `semestre`, `firma`, `carrera_clave`) VALUES
(234234, 'cabrera', 'Torres', 'elizabeth', 'VI', '', 'LBIO-2010-233'),
(4534354, 'joser', 'pereza', 'juana', 'I', '', 'LADM-2010-234'),
(15930012, 'Lopez', 'Antunez', 'Maria', 'V', '', 'LBIO-2010-233'),
(15930159, 'Arroyo', 'Romero', 'Citlali', 'V', '', 'IINF-2010-220'),
(15930163, 'Medrano', 'Alcantar', 'Alan Henry', 'V', '', 'IINF-2010-220'),
(15930164, 'Alonso', 'Cruz', 'Lucas Alberto', 'V', '', 'IINF-2010-220'),
(15930167, 'Benitez', 'Bartolo', 'Paola Rubi', 'V', '', 'IINF-2010-220'),
(15930168, 'Cabrera', 'Torres', 'Neftali', 'V', '', 'IINF-2010-220'),
(15930170, 'Carranza', 'Diaz', 'Mario de jesus', 'V', '', 'IINF-2010-220'),
(15930178, 'García', 'Pineda', 'Ernesto_Quintin', 'V', '', 'IINF-2010-220'),
(15930185, 'Jaimes', 'Gutierrez', 'Alondra', 'V', '', 'IINF-2010-220'),
(15930187, 'Maldonado', 'Miranda', 'Evelia', 'V', '', 'IINF-2010-220'),
(15930194, 'Ocampo', 'Millan', 'Jorge Luis', 'V', '', 'IINF-2010-220'),
(15930200, 'Ortiz', 'Lopez', 'Jose_Ramon', 'V', '', 'IINF-2010-220'),
(15930208, 'Roque', 'Pineda', 'Jorge', 'V', '', 'IINF-2010-220'),
(15930210, 'Ruiz', 'Gutierrez', 'Carlos Alberto ', 'V', '', 'IINF-2010-220'),
(15930216, 'Santana', 'Benitez', 'Hernan', 'V', '', 'IINF-2010-220'),
(15930219, 'Valle', 'Toledo', 'Marco Antonio', 'V', '', 'IINF-2010-220'),
(15930221, 'Vivas ', 'Pineda', 'Agustin', 'V', '', 'IINF-2010-220'),
(15930227, 'Alonso', 'Ignacio', 'Cristian', 'V', '', 'IINF-2010-220'),
(18976782, 'lopez', 'salgado', 'omar', 'VI', '', 'LBIO-2010-233');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `instituto`
--

CREATE TABLE `instituto` (
  `clave` varchar(20) NOT NULL,
  `nombre` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `instituto`
--

INSERT INTO `instituto` (`clave`, `nombre`) VALUES
('12DIT0005B', 'TECNOLOGICO'),
('23', 'POLAS'),
('234323', 'UTDEC'),
('443', 'VCEtA');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `instructor`
--

CREATE TABLE `instructor` (
  `rfc_inst` varchar(13) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `a_paterno` varchar(45) NOT NULL,
  `a_materno` varchar(45) NOT NULL,
  `actividad_comple` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `instructor`
--

INSERT INTO `instructor` (`rfc_inst`, `nombre`, `a_paterno`, `a_materno`, `actividad_comple`) VALUES
('23423', 'ff', 'klkl', 'kk', 2),
('30452435', 'carlos', 'carla', 'bomn', 2),
('32111111112', 'Leonel', 'González', 'Vidales', 1),
('34243423', 'RUIB', 'BUIR', 'BIUR', 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `solicitud`
--

CREATE TABLE `solicitud` (
  `fecha` date NOT NULL,
  `asunto` varchar(45) NOT NULL,
  `folio` int(11) NOT NULL,
  `instituto_clave` varchar(20) NOT NULL,
  `estudiante_n_control` int(11) NOT NULL,
  `clave_actividad` int(11) NOT NULL,
  `trabajador_rfc` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `solicitud`
--

INSERT INTO `solicitud` (`fecha`, `asunto`, `folio`, `instituto_clave`, `estudiante_n_control`, `clave_actividad`, `trabajador_rfc`) VALUES
('2017-10-16', 'actividad', 23456, '12DIT0005B', 15930210, 2, 'GOVL801204159');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `trabajador`
--

CREATE TABLE `trabajador` (
  `rfc` varchar(20) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `a_paterno` varchar(45) NOT NULL,
  `a_materno` varchar(45) NOT NULL,
  `clase_presupuestal` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `trabajador`
--

INSERT INTO `trabajador` (`rfc`, `nombre`, `a_paterno`, `a_materno`, `clase_presupuestal`) VALUES
('2212121', 'elizabeth', 'velazquez', 'torres', ''),
('gfds234x521345', 'maruca', 'perez', 'bartolo', '76y65'),
('GOVL801204159', 'Leonel', 'González', 'Vidales', '');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `actividad_comp`
--
ALTER TABLE `actividad_comp`
  ADD PRIMARY KEY (`clave_act`);

--
-- Indices de la tabla `carrera`
--
ALTER TABLE `carrera`
  ADD PRIMARY KEY (`clave`);

--
-- Indices de la tabla `departamento`
--
ALTER TABLE `departamento`
  ADD PRIMARY KEY (`clave_departamento`),
  ADD KEY `fk_departamento_trabajador1_idx` (`trabajador_rfc`);

--
-- Indices de la tabla `estudiante`
--
ALTER TABLE `estudiante`
  ADD PRIMARY KEY (`n_control`),
  ADD KEY `fk_estudiante_carrera_idx` (`carrera_clave`);

--
-- Indices de la tabla `instituto`
--
ALTER TABLE `instituto`
  ADD PRIMARY KEY (`clave`);

--
-- Indices de la tabla `instructor`
--
ALTER TABLE `instructor`
  ADD PRIMARY KEY (`rfc_inst`,`actividad_comple`),
  ADD KEY `fk_instructor_actividad_comp1_idx` (`actividad_comple`);

--
-- Indices de la tabla `solicitud`
--
ALTER TABLE `solicitud`
  ADD PRIMARY KEY (`folio`,`estudiante_n_control`,`clave_actividad`,`trabajador_rfc`),
  ADD KEY `fk_solicitud_instituto1_idx` (`instituto_clave`),
  ADD KEY `fk_solicitud_estudiante1_idx` (`estudiante_n_control`),
  ADD KEY `fk_solicitud_actividad_comp1_idx` (`clave_actividad`),
  ADD KEY `fk_solicitud_trabajador1_idx` (`trabajador_rfc`);

--
-- Indices de la tabla `trabajador`
--
ALTER TABLE `trabajador`
  ADD PRIMARY KEY (`rfc`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `departamento`
--
ALTER TABLE `departamento`
  ADD CONSTRAINT `fk_departamento_trabajador1` FOREIGN KEY (`trabajador_rfc`) REFERENCES `trabajador` (`rfc`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `estudiante`
--
ALTER TABLE `estudiante`
  ADD CONSTRAINT `fk_estudiante_carrera` FOREIGN KEY (`carrera_clave`) REFERENCES `carrera` (`clave`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `instructor`
--
ALTER TABLE `instructor`
  ADD CONSTRAINT `fk_instructor_actividad_comp1` FOREIGN KEY (`actividad_comple`) REFERENCES `actividad_comp` (`clave_act`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `solicitud`
--
ALTER TABLE `solicitud`
  ADD CONSTRAINT `fk_solicitud_actividad_comp1` FOREIGN KEY (`clave_actividad`) REFERENCES `actividad_comp` (`clave_act`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_solicitud_estudiante1` FOREIGN KEY (`estudiante_n_control`) REFERENCES `estudiante` (`n_control`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_solicitud_instituto1` FOREIGN KEY (`instituto_clave`) REFERENCES `instituto` (`clave`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_solicitud_trabajador1` FOREIGN KEY (`trabajador_rfc`) REFERENCES `trabajador` (`rfc`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
