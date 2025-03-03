-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 02-03-2025 a las 17:19:36
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `hospital_nueva_ese_choco`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cirugias`
--

CREATE TABLE `cirugias` (
  `id` int(11) NOT NULL,
  `paciente_id` int(11) NOT NULL,
  `medico_id` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `tipo` varchar(100) DEFAULT NULL,
  `descripcion` text DEFAULT NULL,
  `estado` varchar(50) DEFAULT NULL,
  `tipo_cirugia` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `cirugias`
--

INSERT INTO `cirugias` (`id`, `paciente_id`, `medico_id`, `fecha`, `tipo`, `descripcion`, `estado`, `tipo_cirugia`) VALUES
(1, 1, 4, '2025-04-10', NULL, NULL, NULL, 'Apendicectomía'),
(2, 2, 2, '2025-04-12', NULL, NULL, NULL, 'Colecistectomía'),
(3, 3, 3, '2025-04-15', NULL, NULL, NULL, 'Herniorrafia'),
(4, 2, 1, '2025-03-10', NULL, NULL, NULL, 'Apendicectomía'),
(5, 3, 2, '2025-03-12', NULL, NULL, NULL, 'Colecistectomía'),
(6, 4, 3, '2025-03-15', NULL, NULL, NULL, 'Cirugía de hernia'),
(7, 5, 4, '2025-03-18', NULL, NULL, NULL, 'Bypass gástrico'),
(8, 6, 5, '2025-03-20', NULL, NULL, NULL, 'Reparación de fractura'),
(9, 9, 1, '2025-04-18', NULL, NULL, NULL, 'Cirugía de tiroides'),
(10, 10, 10, '2025-04-20', NULL, NULL, NULL, 'Reparación de fractura');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `citas`
--

CREATE TABLE `citas` (
  `id` int(11) NOT NULL,
  `paciente_id` int(11) DEFAULT NULL,
  `medico_id` int(11) DEFAULT NULL,
  `fecha_cita` date DEFAULT NULL,
  `hora` time DEFAULT NULL,
  `estado` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `citas`
--

INSERT INTO `citas` (`id`, `paciente_id`, `medico_id`, `fecha_cita`, `hora`, `estado`) VALUES
(1, 1, 1, '2025-03-01', '10:00:00', 'Confirmada'),
(2, 2, 2, '2025-03-02', '11:30:00', 'Pendiente'),
(3, 3, 3, '2025-03-03', '09:15:00', 'Cancelada'),
(9, 3, 5, '2025-02-21', '13:21:00', 'Pendiente'),
(10, 6, 7, '2025-01-07', '16:36:00', 'Pendiente'),
(11, 5, 8, '2025-01-30', '05:40:00', 'Pendiente'),
(12, 5, 8, '2025-01-30', '05:40:00', 'Pendiente');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `diagnosticos`
--

CREATE TABLE `diagnosticos` (
  `id` int(11) NOT NULL,
  `historia_clinica_id` int(11) NOT NULL,
  `enfermedad_id` int(11) NOT NULL,
  `descripcion` text DEFAULT NULL,
  `paciente_id` int(11) NOT NULL,
  `medico_id` int(11) NOT NULL,
  `fecha` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `diagnosticos`
--

INSERT INTO `diagnosticos` (`id`, `historia_clinica_id`, `enfermedad_id`, `descripcion`, `paciente_id`, `medico_id`, `fecha`) VALUES
(1, 0, 0, 'Hipertensión moderada', 1, 1, '2025-04-05'),
(2, 0, 0, 'Infección respiratoria', 2, 2, '2025-04-06'),
(3, 0, 0, 'Dermatitis leve', 3, 3, '2025-04-07'),
(4, 0, 0, 'Hipertensión leve', 2, 1, '2025-03-10'),
(5, 0, 0, 'Rinitis alérgica', 3, 2, '2025-03-11'),
(6, 0, 0, 'Dermatitis atópica', 4, 3, '2025-03-12'),
(7, 0, 0, 'Diabetes tipo 2', 5, 4, '2025-03-13'),
(8, 0, 0, 'Asma bronquial', 6, 5, '2025-03-14'),
(9, 0, 0, 'Migraña crónica', 9, 9, '2025-04-08'),
(10, 0, 0, 'Diabetes tipo 2', 10, 10, '2025-04-09');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `enfermedades`
--

CREATE TABLE `enfermedades` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `descripcion` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `enfermedades`
--

INSERT INTO `enfermedades` (`id`, `nombre`, `descripcion`) VALUES
(4, 'Hipertensión', 'Presión arterial elevada de forma crónica'),
(5, 'Rinitis alérgica', 'Reacción alérgica que afecta las vías respiratorias'),
(6, 'Dermatitis atópica', 'Enfermedad inflamatoria crónica de la piel'),
(7, 'Diabetes tipo 2', 'Alteración en el metabolismo de la glucosa'),
(8, 'Asma', 'Enfermedad respiratoria que causa dificultad para respirar');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `facturacion`
--

CREATE TABLE `facturacion` (
  `id` int(11) NOT NULL,
  `paciente_id` int(11) DEFAULT NULL,
  `monto` decimal(10,2) DEFAULT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `facturacion`
--

INSERT INTO `facturacion` (`id`, `paciente_id`, `monto`, `fecha`) VALUES
(1, 1, 150000.00, '2025-03-01 05:00:00'),
(2, 2, 200000.00, '2025-03-02 05:00:00'),
(3, 3, 175000.00, '2025-03-03 05:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `formularios_medicos`
--

CREATE TABLE `formularios_medicos` (
  `id` int(11) NOT NULL,
  `paciente_id` int(11) DEFAULT NULL,
  `medicamento_id` int(11) DEFAULT NULL,
  `dosis` varchar(50) DEFAULT NULL,
  `cantidad` int(11) DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `medico_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `formularios_medicos`
--

INSERT INTO `formularios_medicos` (`id`, `paciente_id`, `medicamento_id`, `dosis`, `cantidad`, `fecha`, `medico_id`) VALUES
(1, 1, 1, '1 tableta diaria', NULL, '2025-03-01', 1),
(2, 2, 2, '10 ml cada 12 horas', NULL, '2025-03-02', 2),
(3, 3, 3, 'Aplicar dos veces al día', NULL, '2025-03-03', 3),
(4, 2, 1, '1 tableta en la mañana', 30, '2025-03-04', 0),
(5, 3, 2, '10 ml cada 8 horas', 20, '2025-03-05', 0),
(6, 4, 3, 'Aplicar en la noche', 15, '2025-03-06', 0),
(7, 5, 1, '2 tabletas al día', 60, '2025-03-07', 0),
(8, 6, 2, '5 ml cada 6 horas', 40, '2025-03-08', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `historia_clinica`
--

CREATE TABLE `historia_clinica` (
  `id` int(11) NOT NULL,
  `paciente_id` int(11) DEFAULT NULL,
  `medico_id` int(11) DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `diagnostico` text DEFAULT NULL,
  `tratamiento_id` int(11) DEFAULT NULL,
  `recomendaciones` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `historia_clinica`
--

INSERT INTO `historia_clinica` (`id`, `paciente_id`, `medico_id`, `fecha`, `diagnostico`, `tratamiento_id`, `recomendaciones`) VALUES
(1, 3, NULL, '2025-02-15', 'Hipertensión arterial', NULL, NULL),
(2, 4, NULL, '2025-02-20', 'Rinitis alérgica', NULL, NULL),
(3, 5, NULL, '2025-02-25', 'Psoriasis crónica', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `hospitalizacion`
--

CREATE TABLE `hospitalizacion` (
  `id` int(11) NOT NULL,
  `paciente_id` int(11) NOT NULL,
  `fecha_ingreso` date NOT NULL,
  `fecha_alta` date DEFAULT NULL,
  `habitacion` varchar(50) DEFAULT NULL,
  `estado` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `hospitalizacion`
--

INSERT INTO `hospitalizacion` (`id`, `paciente_id`, `fecha_ingreso`, `fecha_alta`, `habitacion`, `estado`) VALUES
(1, 1, '2025-02-20', '2025-02-25', '101', 'Alta médica'),
(2, 2, '2025-02-22', NULL, '202', 'En observación'),
(3, 3, '2025-04-27', '2025-05-02', '103', 'Alta médica'),
(4, 4, '2025-04-28', '2025-05-03', '104', 'Alta médica'),
(5, 5, '2025-04-29', NULL, '105', 'En hospitalización'),
(6, 6, '2025-04-25', '2025-04-30', '101', 'Alta médica'),
(7, 7, '2025-04-26', NULL, '102', 'En hospitalización');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `medicamentos`
--

CREATE TABLE `medicamentos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `descripcion` text DEFAULT NULL,
  `precio` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `medicamentos`
--

INSERT INTO `medicamentos` (`id`, `nombre`, `descripcion`, `precio`) VALUES
(1, 'Losartán', 'Medicamento para la presión arterial', 50000.00),
(2, 'Loratadina', 'Antialérgico', 30000.00),
(3, 'Clotrimazol', 'Antifúngico tópico', 40000.00);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `medicamentos_pacientes`
--

CREATE TABLE `medicamentos_pacientes` (
  `id` int(11) NOT NULL,
  `paciente_id` int(11) NOT NULL,
  `medicamento_id` int(11) NOT NULL,
  `fecha_inicio` date NOT NULL,
  `fecha_fin` date DEFAULT NULL,
  `cantidad` int(11) NOT NULL,
  `fecha` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `medicamentos_pacientes`
--

INSERT INTO `medicamentos_pacientes` (`id`, `paciente_id`, `medicamento_id`, `fecha_inicio`, `fecha_fin`, `cantidad`, `fecha`) VALUES
(1, 1, 1, '0000-00-00', NULL, 15, '2025-04-10'),
(2, 2, 2, '0000-00-00', NULL, 10, '2025-04-11'),
(3, 3, 3, '0000-00-00', NULL, 20, '2025-04-12'),
(4, 2, 1, '0000-00-00', NULL, 15, '2025-03-10'),
(5, 3, 2, '0000-00-00', NULL, 10, '2025-03-11'),
(6, 4, 3, '0000-00-00', NULL, 20, '2025-03-12'),
(7, 5, 1, '0000-00-00', NULL, 30, '2025-03-13'),
(8, 6, 2, '0000-00-00', NULL, 25, '2025-03-14'),
(9, 9, 9, '0000-00-00', NULL, 30, '2025-04-13'),
(10, 10, 10, '0000-00-00', NULL, 25, '2025-04-14');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `medicos`
--

CREATE TABLE `medicos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `apellido` varchar(100) DEFAULT NULL,
  `especializacion` varchar(255) DEFAULT NULL,
  `telefono` varchar(15) DEFAULT NULL,
  `correo` varchar(100) DEFAULT NULL,
  `contrasena` varchar(255) DEFAULT NULL,
  `direccion` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `medicos`
--

INSERT INTO `medicos` (`id`, `nombre`, `apellido`, `especializacion`, `telefono`, `correo`, `contrasena`, `direccion`) VALUES
(1, 'Ana', 'Martínez', 'Cardiología', '3006547891', 'ana.martinez@hospital.com', 'password123', 'Calle 10, Chocó'),
(2, 'Pedro', 'López', 'Pediatría', '3101122334', 'pedro.lopez@hospital.com', 'password123', 'Carrera 20, Quibdó'),
(3, 'Lucía', 'Ramírez', 'Dermatología', '3205566778', 'lucia.ramirez@hospital.com', 'password123', 'Avenida 5, Chocó'),
(5, 'Jaider', 'Rovira', 'medico general', '3202498131', 'jaiderrm@gmail.com', '$2y$10$N7suPjB90LLiSKaTMql9oeU6EbCEk376gYR3IcwFchaKAJk3LruYS', 'cabi'),
(6, 'David', 'Copete', 'Anestesiologia', '3202184536', 'David@gmail.com', '$2y$10$1vcOySN30/8YAo6Vl9zMdO9LMGZhUTlVkDIsd9NXY.je0QjlCp0CW', 'carrera 1'),
(7, 'Jairo', 'Ceballos', 'Anestesiologia', '3202184563', 'JC@gmail.com', '$2y$10$MIT1QuK5t93maiXmxR.4Ye1TlaSPvnWweU.xIGAitI355KuZr/QCe', 'carrera 2'),
(8, 'Marlon', 'Perea', 'Medico general', '3206753423', 'MP@gmail.com', '$2y$10$HInw/4v/oakxYjJg6S0vpO6.7vALO378OpyyWxNHeA0lm7qXZYyxm', 'Calle 25');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pacientes`
--

CREATE TABLE `pacientes` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `apellido` varchar(100) DEFAULT NULL,
  `telefono` varchar(15) DEFAULT NULL,
  `direccion` varchar(255) DEFAULT NULL,
  `correo` varchar(100) DEFAULT NULL,
  `contrasena` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `pacientes`
--

INSERT INTO `pacientes` (`id`, `nombre`, `apellido`, `telefono`, `direccion`, `correo`, `contrasena`) VALUES
(1, 'Juan', 'Pérez', '3001234567', 'Calle 123, Chocó', 'juan.perez@correo.com', 'password123'),
(2, 'María', 'Gómez', '3107654321', 'Carrera 45, Quibdó', 'maria.gomez@correo.com', 'password123'),
(3, 'camilo', 'martinez', '3202184536', 'carrera 3', 'cam@gmail.com', '$2y$10$U1pS06kE3h9QMyC4tu8gmu/OQTPQYqM01JbUNKJ5.jbWZYLMUYJHC'),
(4, 'Yam', 'Mejia', '3112456789', 'carrera 6', 'Yam@gmail.com', '$2y$10$41kg.I3vXEhGss1/UdGe9.mrpckO1GAQ9IBcSk6siNC34LHPkDfVu'),
(5, 'Sergio', 'Mejia', '3112456789', 'carrera 6', 'SM@gmail.com', '$2y$10$iMd2f.iED/BM9lL3WZj9s.Brg/LE.supSg4dl10ctiEzHH/1MIOlq'),
(6, 'Jhon', 'Cordoba', '3206753421', 'flores de buenaños', 'Jhon@gmail.com', '$2y$10$hDO/8beU.gj6m0nhGXP/Xez2fhrcNCCrxZ9hh1O5UphPp7we.RBKG'),
(8, 'Carlos', 'Rodríguez', '3209876543', 'Avenida 12, Chocó', 'carlos.rodriguez@correo.com', 'password123');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tratamientos`
--

CREATE TABLE `tratamientos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `descripcion` text DEFAULT NULL,
  `paciente_id` int(11) DEFAULT NULL,
  `medico_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tratamientos`
--

INSERT INTO `tratamientos` (`id`, `nombre`, `descripcion`, `paciente_id`, `medico_id`) VALUES
(1, 'Tratamiento para hipertensión', 'Control de presión arterial con medicación diaria', 1, 1),
(2, 'Terapia para alergia infantil', 'Terapia con antihistamínicos y seguimiento mensual', 1, 1),
(3, 'Tratamiento para psoriasis', 'Aplicación tópica de medicamentos y control dermatológico', 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `turnos`
--

CREATE TABLE `turnos` (
  `id` int(11) NOT NULL,
  `medico_id` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `hora_inicio` time NOT NULL,
  `hora_fin` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `turnos`
--

INSERT INTO `turnos` (`id`, `medico_id`, `fecha`, `hora_inicio`, `hora_fin`) VALUES
(4, 1, '2025-03-04', '08:00:00', '14:00:00'),
(5, 2, '2025-03-05', '10:00:00', '16:00:00'),
(6, 3, '2025-03-06', '12:00:00', '18:00:00'),
(7, 4, '2025-03-07', '07:00:00', '13:00:00'),
(8, 5, '2025-03-08', '09:00:00', '15:00:00');

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vistas_cirugias_citas_paciente`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vistas_cirugias_citas_paciente` (
`paciente_nombre` varchar(100)
,`paciente_apellido` varchar(100)
,`fecha_cita` date
,`hora` time
,`estado` varchar(50)
,`cirugia_tipo` varchar(100)
,`cirugia_fecha` date
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vistas_cirugias_pacientes_diagnosticos`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vistas_cirugias_pacientes_diagnosticos` (
`cirugia_tipo` varchar(100)
,`cirugia_fecha` date
,`paciente_nombre` varchar(100)
,`paciente_apellido` varchar(100)
,`diagnostico` text
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vistas_cirugias_realizadas_por_medico`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vistas_cirugias_realizadas_por_medico` (
`medico_nombre` varchar(100)
,`medico_apellido` varchar(100)
,`cirugia_tipo` varchar(100)
,`cirugia_fecha` date
,`paciente_nombre` varchar(100)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vistas_citas_diagnosticos_por_medico`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vistas_citas_diagnosticos_por_medico` (
`medico_nombre` varchar(100)
,`medico_apellido` varchar(100)
,`fecha_cita` date
,`hora` time
,`paciente_nombre` varchar(100)
,`paciente_apellido` varchar(100)
,`diagnostico` text
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vistas_citas_paciente_medico_tratamiento`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vistas_citas_paciente_medico_tratamiento` (
`paciente_nombre` varchar(100)
,`paciente_apellido` varchar(100)
,`medico_nombre` varchar(100)
,`medico_apellido` varchar(100)
,`fecha_cita` date
,`hora` time
,`estado` varchar(50)
,`tratamiento_nombre` varchar(100)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vistas_facturacion_diaria`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vistas_facturacion_diaria` (
`fecha` date
,`monto_total` decimal(32,2)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vistas_facturacion_por_fecha_paciente`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vistas_facturacion_por_fecha_paciente` (
`fecha` timestamp
,`paciente_nombre` varchar(100)
,`paciente_apellido` varchar(100)
,`monto` decimal(10,2)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vistas_facturacion_por_medico`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vistas_facturacion_por_medico` (
`medico_nombre` varchar(100)
,`medico_apellido` varchar(100)
,`total_facturado` decimal(32,2)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vistas_facturacion_por_rango_fechas`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vistas_facturacion_por_rango_fechas` (
`fecha` timestamp
,`paciente_nombre` varchar(100)
,`paciente_apellido` varchar(100)
,`monto` decimal(10,2)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vistas_medicamentos_a_pacientes_con_diagnostico_especifico`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vistas_medicamentos_a_pacientes_con_diagnostico_especifico` (
`paciente_nombre` varchar(100)
,`paciente_apellido` varchar(100)
,`medicamento_nombre` varchar(100)
,`dosis` varchar(50)
,`cantidad` int(11)
,`fecha` date
,`diagnostico` text
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vistas_medicamentos_en_cirugias`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vistas_medicamentos_en_cirugias` (
`paciente_nombre` varchar(100)
,`paciente_apellido` varchar(100)
,`cirugia_tipo` varchar(100)
,`cirugia_fecha` date
,`medicamento_nombre` varchar(100)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vistas_medicamentos_por_paciente_tipo`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vistas_medicamentos_por_paciente_tipo` (
`paciente_nombre` varchar(100)
,`paciente_apellido` varchar(100)
,`medicamento_nombre` varchar(100)
,`medicamento_descripcion` text
,`dosis` varchar(50)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vistas_medicamentos_recetados_por_paciente`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vistas_medicamentos_recetados_por_paciente` (
`paciente_nombre` varchar(100)
,`paciente_apellido` varchar(100)
,`medicamento_nombre` varchar(100)
,`dosis` varchar(50)
,`cantidad` int(11)
,`fecha` date
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vistas_medicamentos_recetados_totales`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vistas_medicamentos_recetados_totales` (
`medicamento_nombre` varchar(100)
,`total_cantidad` decimal(32,0)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vistas_medicamentos_uso_en_pacientes`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vistas_medicamentos_uso_en_pacientes` (
`medicamento_nombre` varchar(100)
,`paciente_nombre` varchar(100)
,`paciente_apellido` varchar(100)
,`dosis` varchar(50)
,`cantidad` int(11)
,`fecha` date
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vistas_medicos_citas_canceladas`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vistas_medicos_citas_canceladas` (
`medico_nombre` varchar(100)
,`medico_apellido` varchar(100)
,`fecha_cita` date
,`hora` time
,`paciente_nombre` varchar(100)
,`paciente_apellido` varchar(100)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vistas_medicos_citas_pendientes`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vistas_medicos_citas_pendientes` (
`medico_nombre` varchar(100)
,`medico_apellido` varchar(100)
,`fecha_cita` date
,`hora` time
,`paciente_nombre` varchar(100)
,`paciente_apellido` varchar(100)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vistas_medicos_pacientes_atendidos`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vistas_medicos_pacientes_atendidos` (
`medico_nombre` varchar(100)
,`medico_apellido` varchar(100)
,`paciente_nombre` varchar(100)
,`paciente_apellido` varchar(100)
,`fecha_cita` date
,`hora` time
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vistas_medicos_pacientes_cirugias_programadas`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vistas_medicos_pacientes_cirugias_programadas` (
`medico_nombre` varchar(100)
,`medico_apellido` varchar(100)
,`paciente_nombre` varchar(100)
,`paciente_apellido` varchar(100)
,`cirugia_tipo` varchar(100)
,`cirugia_fecha` date
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vistas_medicos_pacientes_diagnosticos`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vistas_medicos_pacientes_diagnosticos` (
`medico_nombre` varchar(100)
,`medico_apellido` varchar(100)
,`paciente_nombre` varchar(100)
,`paciente_apellido` varchar(100)
,`diagnostico` text
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vistas_pacientes_citas_diagnosticos`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vistas_pacientes_citas_diagnosticos` (
`paciente_nombre` varchar(100)
,`paciente_apellido` varchar(100)
,`fecha_cita` date
,`hora` time
,`estado` varchar(50)
,`diagnostico` text
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vistas_pacientes_citas_diagnosticos_recientes`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vistas_pacientes_citas_diagnosticos_recientes` (
`paciente_nombre` varchar(100)
,`paciente_apellido` varchar(100)
,`fecha_cita` date
,`hora` time
,`diagnostico` text
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vistas_pacientes_citas_diagnostico_no_tratado`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vistas_pacientes_citas_diagnostico_no_tratado` (
`paciente_nombre` varchar(100)
,`paciente_apellido` varchar(100)
,`fecha_cita` date
,`hora` time
,`diagnostico` text
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vistas_pacientes_citas_pendientes`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vistas_pacientes_citas_pendientes` (
`paciente_nombre` varchar(100)
,`paciente_apellido` varchar(100)
,`fecha_cita` date
,`hora` time
,`estado` varchar(50)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vistas_pacientes_citas_pendientes_proximo_mes`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vistas_pacientes_citas_pendientes_proximo_mes` (
`paciente_nombre` varchar(100)
,`paciente_apellido` varchar(100)
,`fecha_cita` date
,`hora` time
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vistas_pacientes_citas_programadas_estado`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vistas_pacientes_citas_programadas_estado` (
`paciente_nombre` varchar(100)
,`paciente_apellido` varchar(100)
,`fecha_cita` date
,`hora` time
,`estado` varchar(50)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vistas_pacientes_con_cirugias_programadas`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vistas_pacientes_con_cirugias_programadas` (
`paciente_nombre` varchar(100)
,`paciente_apellido` varchar(100)
,`cirugia_tipo` varchar(100)
,`cirugia_fecha` date
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vistas_pacientes_con_cirugia_y_medicamentos`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vistas_pacientes_con_cirugia_y_medicamentos` (
`paciente_nombre` varchar(100)
,`paciente_apellido` varchar(100)
,`cirugia_tipo` varchar(100)
,`cirugia_fecha` date
,`medicamento_nombre` varchar(100)
,`dosis` varchar(50)
,`cantidad` int(11)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vistas_pacientes_con_consultas_cirugias`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vistas_pacientes_con_consultas_cirugias` (
`paciente_nombre` varchar(100)
,`paciente_apellido` varchar(100)
,`fecha_cita` date
,`hora` time
,`cirugia_tipo` varchar(100)
,`cirugia_fecha` date
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vistas_pacientes_con_hospitalizacion_y_cirugias`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vistas_pacientes_con_hospitalizacion_y_cirugias` (
`paciente_nombre` varchar(100)
,`paciente_apellido` varchar(100)
,`fecha_ingreso` date
,`fecha_alta` date
,`cirugia_tipo` varchar(100)
,`cirugia_fecha` date
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vistas_pacientes_diagnosticos`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vistas_pacientes_diagnosticos` (
`paciente_nombre` varchar(100)
,`paciente_apellido` varchar(100)
,`diagnostico_descripcion` text
,`enfermedad_nombre` varchar(100)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vistas_pacientes_diagnosticos_recientes_tratamientos`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vistas_pacientes_diagnosticos_recientes_tratamientos` (
`paciente_nombre` varchar(100)
,`paciente_apellido` varchar(100)
,`diagnostico` text
,`tratamiento_nombre` varchar(100)
,`fecha` date
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vistas_pacientes_diagnostico_tratamiento_reciente`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vistas_pacientes_diagnostico_tratamiento_reciente` (
`paciente_nombre` varchar(100)
,`paciente_apellido` varchar(100)
,`historia_fecha` date
,`diagnostico` text
,`tratamiento_nombre` varchar(100)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vistas_pacientes_facturacion_detallada`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vistas_pacientes_facturacion_detallada` (
`paciente_nombre` varchar(100)
,`paciente_apellido` varchar(100)
,`monto` decimal(10,2)
,`fecha` timestamp
,`medico_nombre` varchar(100)
,`medico_apellido` varchar(100)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vistas_pacientes_facturacion_monto_total`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vistas_pacientes_facturacion_monto_total` (
`paciente_nombre` varchar(100)
,`paciente_apellido` varchar(100)
,`monto_total` decimal(32,2)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vistas_pacientes_historial_cirugias`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vistas_pacientes_historial_cirugias` (
`paciente_nombre` varchar(100)
,`paciente_apellido` varchar(100)
,`cirugia_tipo` varchar(100)
,`cirugia_fecha` date
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vistas_pacientes_historial_tratamientos`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vistas_pacientes_historial_tratamientos` (
`paciente_nombre` varchar(100)
,`paciente_apellido` varchar(100)
,`fecha` date
,`tratamiento_nombre` varchar(100)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vistas_pacientes_historia_clinica_diagnostico`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vistas_pacientes_historia_clinica_diagnostico` (
`paciente_nombre` varchar(100)
,`paciente_apellido` varchar(100)
,`fecha` date
,`diagnostico` text
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vistas_pacientes_hospitalizados_cirugias`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vistas_pacientes_hospitalizados_cirugias` (
`paciente_nombre` varchar(100)
,`paciente_apellido` varchar(100)
,`fecha_ingreso` date
,`fecha_alta` date
,`cirugia_tipo` varchar(100)
,`cirugia_fecha` date
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vistas_pacientes_hospitalizados_con_medico`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vistas_pacientes_hospitalizados_con_medico` (
`paciente_nombre` varchar(100)
,`paciente_apellido` varchar(100)
,`fecha_ingreso` date
,`fecha_alta` date
,`hospitalizacion_estado` varchar(50)
,`medico_nombre` varchar(100)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vistas_pacientes_hospitalizados_en_fecha`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vistas_pacientes_hospitalizados_en_fecha` (
`paciente_nombre` varchar(100)
,`paciente_apellido` varchar(100)
,`fecha_ingreso` date
,`fecha_alta` date
,`estado` varchar(50)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vistas_pacientes_ingresados_cirugias`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vistas_pacientes_ingresados_cirugias` (
`paciente_nombre` varchar(100)
,`paciente_apellido` varchar(100)
,`fecha_ingreso` date
,`fecha_alta` date
,`cirugia_tipo` varchar(100)
,`cirugia_fecha` date
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vistas_pacientes_medicamentos_cantidades`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vistas_pacientes_medicamentos_cantidades` (
`paciente_nombre` varchar(100)
,`paciente_apellido` varchar(100)
,`medicamento_nombre` varchar(100)
,`dosis` varchar(50)
,`cantidad` int(11)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vistas_pacientes_medicamentos_dosis`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vistas_pacientes_medicamentos_dosis` (
`paciente_nombre` varchar(100)
,`paciente_apellido` varchar(100)
,`medicamento_nombre` varchar(100)
,`dosis` varchar(50)
,`cantidad` int(11)
,`fecha` date
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vistas_pacientes_tratamientos_en_curso`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vistas_pacientes_tratamientos_en_curso` (
`paciente_nombre` varchar(100)
,`paciente_apellido` varchar(100)
,`tratamiento_nombre` varchar(100)
,`fecha` date
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vistas_pacientes_tratamiento_medicamentos`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vistas_pacientes_tratamiento_medicamentos` (
`paciente_nombre` varchar(100)
,`paciente_apellido` varchar(100)
,`tratamiento_nombre` varchar(100)
,`medicamento_nombre` varchar(100)
,`dosis` varchar(50)
,`cantidad` int(11)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vista_citas_confirmadas`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vista_citas_confirmadas` (
`paciente_nombre` varchar(100)
,`paciente_apellido` varchar(100)
,`cita_fecha` date
,`cita_hora` time
,`cita_estado` varchar(50)
,`medico_nombre` varchar(100)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vista_citas_facturacion`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vista_citas_facturacion` (
`paciente_nombre` varchar(100)
,`paciente_apellido` varchar(100)
,`cita_fecha` date
,`cita_hora` time
,`cita_estado` varchar(50)
,`medico_nombre` varchar(100)
,`monto_factura` decimal(10,2)
,`factura_fecha` timestamp
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vista_citas_paciente`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vista_citas_paciente` (
`paciente_nombre` varchar(100)
,`paciente_apellido` varchar(100)
,`cita_fecha` date
,`cita_hora` time
,`cita_estado` varchar(50)
,`medico_nombre` varchar(100)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vista_citas_pasadas`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vista_citas_pasadas` (
`paciente_nombre` varchar(100)
,`paciente_apellido` varchar(100)
,`cita_fecha` date
,`cita_hora` time
,`medico_nombre` varchar(100)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vista_citas_pendientes_medico`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vista_citas_pendientes_medico` (
`medico_nombre` varchar(100)
,`medico_apellido` varchar(100)
,`cita_fecha` date
,`cita_hora` time
,`cita_estado` varchar(50)
,`paciente_nombre` varchar(100)
,`paciente_apellido` varchar(100)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vista_citas_por_estado`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vista_citas_por_estado` (
`paciente_nombre` varchar(100)
,`paciente_apellido` varchar(100)
,`cita_fecha` date
,`cita_hora` time
,`cita_estado` varchar(50)
,`medico_nombre` varchar(100)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vista_citas_por_medico_fecha`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vista_citas_por_medico_fecha` (
`medico_nombre` varchar(100)
,`medico_apellido` varchar(100)
,`cita_fecha` date
,`cita_hora` time
,`paciente_nombre` varchar(100)
,`paciente_apellido` varchar(100)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vista_consultas_por_especializacion`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vista_consultas_por_especializacion` (
`medico_nombre` varchar(100)
,`medico_apellido` varchar(100)
,`especializacion` varchar(255)
,`paciente_nombre` varchar(100)
,`paciente_apellido` varchar(100)
,`diagnostico` text
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vista_consultas_por_medico_diagnostico`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vista_consultas_por_medico_diagnostico` (
`medico_nombre` varchar(100)
,`medico_apellido` varchar(100)
,`paciente_nombre` varchar(100)
,`paciente_apellido` varchar(100)
,`diagnostico` text
,`fecha_consulta` date
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vista_diagnosticos_mas_comunes`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vista_diagnosticos_mas_comunes` (
`diagnostico` text
,`cantidad` bigint(21)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vista_diagnosticos_paciente`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vista_diagnosticos_paciente` (
`paciente_nombre` varchar(100)
,`paciente_apellido` varchar(100)
,`historia_fecha` date
,`diagnostico` text
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vista_diagnosticos_recientes`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vista_diagnosticos_recientes` (
`paciente_nombre` varchar(100)
,`paciente_apellido` varchar(100)
,`historia_fecha` date
,`diagnostico` text
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vista_facturacion_detallada_paciente`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vista_facturacion_detallada_paciente` (
`paciente_nombre` varchar(100)
,`paciente_apellido` varchar(100)
,`monto_facturado` decimal(10,2)
,`fecha_factura` timestamp
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vista_facturacion_mensual`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vista_facturacion_mensual` (
`mes` int(2)
,`monto_total` decimal(32,2)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vista_facturacion_paciente`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vista_facturacion_paciente` (
`paciente_nombre` varchar(100)
,`paciente_apellido` varchar(100)
,`monto_factura` decimal(10,2)
,`factura_fecha` timestamp
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vista_facturacion_por_fecha`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vista_facturacion_por_fecha` (
`paciente_nombre` varchar(100)
,`paciente_apellido` varchar(100)
,`monto_facturado` decimal(10,2)
,`fecha_factura` timestamp
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vista_facturacion_por_medico`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vista_facturacion_por_medico` (
`medico_nombre` varchar(100)
,`medico_apellido` varchar(100)
,`total_facturado` decimal(32,2)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vista_facturacion_por_paciente_medico`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vista_facturacion_por_paciente_medico` (
`paciente_nombre` varchar(100)
,`paciente_apellido` varchar(100)
,`medico_nombre` varchar(100)
,`medico_apellido` varchar(100)
,`monto_facturado` decimal(10,2)
,`factura_fecha` timestamp
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vista_facturacion_total_fecha`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vista_facturacion_total_fecha` (
`fecha_factura` timestamp
,`total_facturado` decimal(32,2)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vista_facturacion_total_paciente`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vista_facturacion_total_paciente` (
`paciente_nombre` varchar(100)
,`paciente_apellido` varchar(100)
,`total_facturado` decimal(32,2)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vista_facturado_por_medico`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vista_facturado_por_medico` (
`medico_nombre` varchar(100)
,`medico_apellido` varchar(100)
,`total_facturado` decimal(32,2)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vista_historial_medico_paciente`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vista_historial_medico_paciente` (
`paciente_nombre` varchar(100)
,`paciente_apellido` varchar(100)
,`historia_fecha` date
,`historia_diagnostico` text
,`tratamiento_nombre` varchar(100)
,`tratamiento_descripcion` text
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vista_medicamentos_mas_recetados`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vista_medicamentos_mas_recetados` (
`medicamento_nombre` varchar(100)
,`veces_recetado` bigint(21)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vista_medicamentos_precio`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vista_medicamentos_precio` (
`medicamento_nombre` varchar(100)
,`medicamento_descripcion` text
,`medicamento_precio` decimal(10,2)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vista_medicamentos_recetados`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vista_medicamentos_recetados` (
`paciente_nombre` varchar(100)
,`paciente_apellido` varchar(100)
,`medicamento_nombre` varchar(100)
,`dosis` varchar(50)
,`cantidad_recetada` int(11)
,`fecha_receta` date
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vista_medicamentos_recetados_con_cantidad`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vista_medicamentos_recetados_con_cantidad` (
`paciente_nombre` varchar(100)
,`paciente_apellido` varchar(100)
,`medicamento_nombre` varchar(100)
,`dosis` varchar(50)
,`cantidad_recetada` int(11)
,`fecha_receta` date
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vista_medicamentos_recetados_por_fecha`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vista_medicamentos_recetados_por_fecha` (
`paciente_nombre` varchar(100)
,`paciente_apellido` varchar(100)
,`medicamento_nombre` varchar(100)
,`dosis` varchar(50)
,`cantidad_recetada` int(11)
,`fecha_receta` date
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vista_medicamentos_tratamientos`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vista_medicamentos_tratamientos` (
`paciente_nombre` varchar(100)
,`paciente_apellido` varchar(100)
,`medicamento_nombre` varchar(100)
,`dosis` varchar(50)
,`cantidad` int(11)
,`tratamiento_nombre` varchar(100)
,`tratamiento_descripcion` text
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vista_medicamentos_utilizados_por_pacientes`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vista_medicamentos_utilizados_por_pacientes` (
`paciente_nombre` varchar(100)
,`paciente_apellido` varchar(100)
,`medicamento_nombre` varchar(100)
,`dosis` varchar(50)
,`cantidad_utilizada` int(11)
,`fecha_receta` date
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vista_medico_completo`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vista_medico_completo` (
`medico_id` int(11)
,`medico_nombre` varchar(100)
,`medico_apellido` varchar(100)
,`medico_especializacion` varchar(255)
,`medico_telefono` varchar(15)
,`medico_correo` varchar(100)
,`medico_direccion` text
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vista_pacientes_citas_pendientes`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vista_pacientes_citas_pendientes` (
`paciente_nombre` varchar(100)
,`paciente_apellido` varchar(100)
,`cita_fecha` date
,`cita_hora` time
,`medico_nombre` varchar(100)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vista_pacientes_con_citas_confirmadas_por_medico`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vista_pacientes_con_citas_confirmadas_por_medico` (
`medico_nombre` varchar(100)
,`medico_apellido` varchar(100)
,`paciente_nombre` varchar(100)
,`paciente_apellido` varchar(100)
,`fecha_cita` date
,`hora_cita` time
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vista_pacientes_con_citas_pendientes`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vista_pacientes_con_citas_pendientes` (
`paciente_nombre` varchar(100)
,`paciente_apellido` varchar(100)
,`fecha_cita` date
,`hora_cita` time
,`estado_cita` varchar(50)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vista_pacientes_con_diagnostico_especifico`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vista_pacientes_con_diagnostico_especifico` (
`paciente_nombre` varchar(100)
,`paciente_apellido` varchar(100)
,`diagnostico` text
,`fecha_diagnostico` date
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vista_pacientes_con_tratamientos_activos`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vista_pacientes_con_tratamientos_activos` (
`paciente_nombre` varchar(100)
,`paciente_apellido` varchar(100)
,`tratamiento_nombre` varchar(100)
,`tratamiento_descripcion` text
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vista_pacientes_medicamentos_fecha`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vista_pacientes_medicamentos_fecha` (
`paciente_nombre` varchar(100)
,`paciente_apellido` varchar(100)
,`medicamento_nombre` varchar(100)
,`dosis` varchar(50)
,`cantidad_recetada` int(11)
,`fecha_receta` date
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vista_pacientes_medicamentos_recetados`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vista_pacientes_medicamentos_recetados` (
`paciente_nombre` varchar(100)
,`paciente_apellido` varchar(100)
,`medicamento_nombre` varchar(100)
,`dosis` varchar(50)
,`cantidad_recetada` int(11)
,`fecha_receta` date
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vista_pacientes_por_tratamiento`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vista_pacientes_por_tratamiento` (
`paciente_nombre` varchar(100)
,`paciente_apellido` varchar(100)
,`tratamiento_nombre` varchar(100)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vista_paciente_completa`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vista_paciente_completa` (
`paciente_id` int(11)
,`paciente_nombre` varchar(100)
,`paciente_apellido` varchar(100)
,`paciente_telefono` varchar(15)
,`paciente_direccion` varchar(255)
,`paciente_correo` varchar(100)
,`paciente_contrasena` varchar(255)
,`facturacion_total` decimal(10,2)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vista_seguimiento_pacientes_medicamento`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vista_seguimiento_pacientes_medicamento` (
`paciente_nombre` varchar(100)
,`paciente_apellido` varchar(100)
,`medicamento_nombre` varchar(100)
,`dosis` varchar(50)
,`cantidad` int(11)
,`fecha_receta` date
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vista_seguimiento_pacientes_tratamiento`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vista_seguimiento_pacientes_tratamiento` (
`paciente_nombre` varchar(100)
,`paciente_apellido` varchar(100)
,`tratamiento_nombre` varchar(100)
,`tratamiento_descripcion` text
,`historia_fecha` date
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vista_tratamientos_activos_pacientes`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vista_tratamientos_activos_pacientes` (
`paciente_nombre` varchar(100)
,`paciente_apellido` varchar(100)
,`tratamiento_nombre` varchar(100)
,`tratamiento_descripcion` text
,`fecha_inicio_tratamiento` date
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vista_tratamientos_paciente`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vista_tratamientos_paciente` (
`paciente_nombre` varchar(100)
,`paciente_apellido` varchar(100)
,`historia_fecha` date
,`diagnostico` text
,`tratamiento_nombre` varchar(100)
,`tratamiento_descripcion` text
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vista_tratamientos_pacientes_recientes`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vista_tratamientos_pacientes_recientes` (
`paciente_nombre` varchar(100)
,`paciente_apellido` varchar(100)
,`tratamiento_nombre` varchar(100)
,`tratamiento_fecha` date
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vista_tratamientos_por_medico`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vista_tratamientos_por_medico` (
`medico_nombre` varchar(100)
,`medico_apellido` varchar(100)
,`tratamiento_nombre` varchar(100)
,`tratamiento_descripcion` text
,`paciente_nombre` varchar(100)
,`paciente_apellido` varchar(100)
);

-- --------------------------------------------------------

--
-- Estructura para la vista `vistas_cirugias_citas_paciente`
--
DROP TABLE IF EXISTS `vistas_cirugias_citas_paciente`;

CREATE ALGORITHM=UNDEFINED DEFINER=`` SQL SECURITY DEFINER VIEW `vistas_cirugias_citas_paciente`  AS SELECT `p`.`nombre` AS `paciente_nombre`, `p`.`apellido` AS `paciente_apellido`, `c`.`fecha_cita` AS `fecha_cita`, `c`.`hora` AS `hora`, `c`.`estado` AS `estado`, `cu`.`tipo` AS `cirugia_tipo`, `cu`.`fecha` AS `cirugia_fecha` FROM ((`pacientes` `p` left join `citas` `c` on(`p`.`id` = `c`.`paciente_id`)) left join `cirugias` `cu` on(`p`.`id` = `cu`.`paciente_id`)) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vistas_cirugias_pacientes_diagnosticos`
--
DROP TABLE IF EXISTS `vistas_cirugias_pacientes_diagnosticos`;

CREATE ALGORITHM=UNDEFINED DEFINER=`` SQL SECURITY DEFINER VIEW `vistas_cirugias_pacientes_diagnosticos`  AS SELECT `cu`.`tipo` AS `cirugia_tipo`, `cu`.`fecha` AS `cirugia_fecha`, `p`.`nombre` AS `paciente_nombre`, `p`.`apellido` AS `paciente_apellido`, `d`.`descripcion` AS `diagnostico` FROM (((`cirugias` `cu` join `pacientes` `p` on(`cu`.`paciente_id` = `p`.`id`)) join `historia_clinica` `h` on(`p`.`id` = `h`.`paciente_id`)) join `diagnosticos` `d` on(`h`.`id` = `d`.`historia_clinica_id`)) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vistas_cirugias_realizadas_por_medico`
--
DROP TABLE IF EXISTS `vistas_cirugias_realizadas_por_medico`;

CREATE ALGORITHM=UNDEFINED DEFINER=`` SQL SECURITY DEFINER VIEW `vistas_cirugias_realizadas_por_medico`  AS SELECT `m`.`nombre` AS `medico_nombre`, `m`.`apellido` AS `medico_apellido`, `cu`.`tipo` AS `cirugia_tipo`, `cu`.`fecha` AS `cirugia_fecha`, `p`.`nombre` AS `paciente_nombre` FROM ((`cirugias` `cu` join `medicos` `m` on(`cu`.`medico_id` = `m`.`id`)) join `pacientes` `p` on(`cu`.`paciente_id` = `p`.`id`)) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vistas_citas_diagnosticos_por_medico`
--
DROP TABLE IF EXISTS `vistas_citas_diagnosticos_por_medico`;

CREATE ALGORITHM=UNDEFINED DEFINER=`` SQL SECURITY DEFINER VIEW `vistas_citas_diagnosticos_por_medico`  AS SELECT `m`.`nombre` AS `medico_nombre`, `m`.`apellido` AS `medico_apellido`, `c`.`fecha_cita` AS `fecha_cita`, `c`.`hora` AS `hora`, `p`.`nombre` AS `paciente_nombre`, `p`.`apellido` AS `paciente_apellido`, `d`.`descripcion` AS `diagnostico` FROM ((((`citas` `c` join `medicos` `m` on(`c`.`medico_id` = `m`.`id`)) join `pacientes` `p` on(`c`.`paciente_id` = `p`.`id`)) join `historia_clinica` `h` on(`p`.`id` = `h`.`paciente_id`)) join `diagnosticos` `d` on(`h`.`id` = `d`.`historia_clinica_id`)) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vistas_citas_paciente_medico_tratamiento`
--
DROP TABLE IF EXISTS `vistas_citas_paciente_medico_tratamiento`;

CREATE ALGORITHM=UNDEFINED DEFINER=`` SQL SECURITY DEFINER VIEW `vistas_citas_paciente_medico_tratamiento`  AS SELECT `p`.`nombre` AS `paciente_nombre`, `p`.`apellido` AS `paciente_apellido`, `m`.`nombre` AS `medico_nombre`, `m`.`apellido` AS `medico_apellido`, `c`.`fecha_cita` AS `fecha_cita`, `c`.`hora` AS `hora`, `c`.`estado` AS `estado`, `t`.`nombre` AS `tratamiento_nombre` FROM ((((`citas` `c` join `pacientes` `p` on(`c`.`paciente_id` = `p`.`id`)) join `medicos` `m` on(`c`.`medico_id` = `m`.`id`)) join `historia_clinica` `h` on(`p`.`id` = `h`.`paciente_id`)) join `tratamientos` `t` on(`h`.`tratamiento_id` = `t`.`id`)) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vistas_facturacion_diaria`
--
DROP TABLE IF EXISTS `vistas_facturacion_diaria`;

CREATE ALGORITHM=UNDEFINED DEFINER=`` SQL SECURITY DEFINER VIEW `vistas_facturacion_diaria`  AS SELECT cast(`f`.`fecha` as date) AS `fecha`, sum(`f`.`monto`) AS `monto_total` FROM `facturacion` AS `f` GROUP BY cast(`f`.`fecha` as date) ORDER BY cast(`f`.`fecha` as date) DESC ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vistas_facturacion_por_fecha_paciente`
--
DROP TABLE IF EXISTS `vistas_facturacion_por_fecha_paciente`;

CREATE ALGORITHM=UNDEFINED DEFINER=`` SQL SECURITY DEFINER VIEW `vistas_facturacion_por_fecha_paciente`  AS SELECT `f`.`fecha` AS `fecha`, `p`.`nombre` AS `paciente_nombre`, `p`.`apellido` AS `paciente_apellido`, `f`.`monto` AS `monto` FROM (`facturacion` `f` join `pacientes` `p` on(`f`.`paciente_id` = `p`.`id`)) ORDER BY `f`.`fecha` DESC ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vistas_facturacion_por_medico`
--
DROP TABLE IF EXISTS `vistas_facturacion_por_medico`;

CREATE ALGORITHM=UNDEFINED DEFINER=`` SQL SECURITY DEFINER VIEW `vistas_facturacion_por_medico`  AS SELECT `m`.`nombre` AS `medico_nombre`, `m`.`apellido` AS `medico_apellido`, sum(`f`.`monto`) AS `total_facturado` FROM (((`facturacion` `f` join `pacientes` `p` on(`f`.`paciente_id` = `p`.`id`)) join `citas` `c` on(`p`.`id` = `c`.`paciente_id`)) join `medicos` `m` on(`c`.`medico_id` = `m`.`id`)) GROUP BY `m`.`id` ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vistas_facturacion_por_rango_fechas`
--
DROP TABLE IF EXISTS `vistas_facturacion_por_rango_fechas`;

CREATE ALGORITHM=UNDEFINED DEFINER=`` SQL SECURITY DEFINER VIEW `vistas_facturacion_por_rango_fechas`  AS SELECT `f`.`fecha` AS `fecha`, `p`.`nombre` AS `paciente_nombre`, `p`.`apellido` AS `paciente_apellido`, `f`.`monto` AS `monto` FROM (`facturacion` `f` join `pacientes` `p` on(`f`.`paciente_id` = `p`.`id`)) WHERE `f`.`fecha` between '2025-01-01' and '2025-12-31' ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vistas_medicamentos_a_pacientes_con_diagnostico_especifico`
--
DROP TABLE IF EXISTS `vistas_medicamentos_a_pacientes_con_diagnostico_especifico`;

CREATE ALGORITHM=UNDEFINED DEFINER=`` SQL SECURITY DEFINER VIEW `vistas_medicamentos_a_pacientes_con_diagnostico_especifico`  AS SELECT `p`.`nombre` AS `paciente_nombre`, `p`.`apellido` AS `paciente_apellido`, `m`.`nombre` AS `medicamento_nombre`, `f`.`dosis` AS `dosis`, `f`.`cantidad` AS `cantidad`, `h`.`fecha` AS `fecha`, `d`.`descripcion` AS `diagnostico` FROM ((((`formularios_medicos` `f` join `pacientes` `p` on(`f`.`paciente_id` = `p`.`id`)) join `medicamentos` `m` on(`f`.`medicamento_id` = `m`.`id`)) join `historia_clinica` `h` on(`p`.`id` = `h`.`paciente_id`)) join `diagnosticos` `d` on(`h`.`id` = `d`.`historia_clinica_id`)) WHERE `d`.`descripcion` = 'Hipertensión' ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vistas_medicamentos_en_cirugias`
--
DROP TABLE IF EXISTS `vistas_medicamentos_en_cirugias`;

CREATE ALGORITHM=UNDEFINED DEFINER=`` SQL SECURITY DEFINER VIEW `vistas_medicamentos_en_cirugias`  AS SELECT `p`.`nombre` AS `paciente_nombre`, `p`.`apellido` AS `paciente_apellido`, `cu`.`tipo` AS `cirugia_tipo`, `cu`.`fecha` AS `cirugia_fecha`, `m`.`nombre` AS `medicamento_nombre` FROM ((`cirugias` `cu` join `pacientes` `p` on(`cu`.`paciente_id` = `p`.`id`)) join `medicamentos` `m` on(`cu`.`id` = `m`.`id`)) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vistas_medicamentos_por_paciente_tipo`
--
DROP TABLE IF EXISTS `vistas_medicamentos_por_paciente_tipo`;

CREATE ALGORITHM=UNDEFINED DEFINER=`` SQL SECURITY DEFINER VIEW `vistas_medicamentos_por_paciente_tipo`  AS SELECT `p`.`nombre` AS `paciente_nombre`, `p`.`apellido` AS `paciente_apellido`, `m`.`nombre` AS `medicamento_nombre`, `m`.`descripcion` AS `medicamento_descripcion`, `f`.`dosis` AS `dosis` FROM ((`formularios_medicos` `f` join `pacientes` `p` on(`f`.`paciente_id` = `p`.`id`)) join `medicamentos` `m` on(`f`.`medicamento_id` = `m`.`id`)) ORDER BY `p`.`nombre` ASC, `m`.`nombre` ASC ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vistas_medicamentos_recetados_por_paciente`
--
DROP TABLE IF EXISTS `vistas_medicamentos_recetados_por_paciente`;

CREATE ALGORITHM=UNDEFINED DEFINER=`` SQL SECURITY DEFINER VIEW `vistas_medicamentos_recetados_por_paciente`  AS SELECT `p`.`nombre` AS `paciente_nombre`, `p`.`apellido` AS `paciente_apellido`, `m`.`nombre` AS `medicamento_nombre`, `f`.`dosis` AS `dosis`, `f`.`cantidad` AS `cantidad`, `f`.`fecha` AS `fecha` FROM ((`formularios_medicos` `f` join `pacientes` `p` on(`f`.`paciente_id` = `p`.`id`)) join `medicamentos` `m` on(`f`.`medicamento_id` = `m`.`id`)) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vistas_medicamentos_recetados_totales`
--
DROP TABLE IF EXISTS `vistas_medicamentos_recetados_totales`;

CREATE ALGORITHM=UNDEFINED DEFINER=`` SQL SECURITY DEFINER VIEW `vistas_medicamentos_recetados_totales`  AS SELECT `m`.`nombre` AS `medicamento_nombre`, sum(`f`.`cantidad`) AS `total_cantidad` FROM (`formularios_medicos` `f` join `medicamentos` `m` on(`f`.`medicamento_id` = `m`.`id`)) GROUP BY `m`.`id` ORDER BY sum(`f`.`cantidad`) DESC ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vistas_medicamentos_uso_en_pacientes`
--
DROP TABLE IF EXISTS `vistas_medicamentos_uso_en_pacientes`;

CREATE ALGORITHM=UNDEFINED DEFINER=`` SQL SECURITY DEFINER VIEW `vistas_medicamentos_uso_en_pacientes`  AS SELECT `m`.`nombre` AS `medicamento_nombre`, `p`.`nombre` AS `paciente_nombre`, `p`.`apellido` AS `paciente_apellido`, `f`.`dosis` AS `dosis`, `f`.`cantidad` AS `cantidad`, `f`.`fecha` AS `fecha` FROM ((`formularios_medicos` `f` join `medicamentos` `m` on(`f`.`medicamento_id` = `m`.`id`)) join `pacientes` `p` on(`f`.`paciente_id` = `p`.`id`)) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vistas_medicos_citas_canceladas`
--
DROP TABLE IF EXISTS `vistas_medicos_citas_canceladas`;

CREATE ALGORITHM=UNDEFINED DEFINER=`` SQL SECURITY DEFINER VIEW `vistas_medicos_citas_canceladas`  AS SELECT `m`.`nombre` AS `medico_nombre`, `m`.`apellido` AS `medico_apellido`, `c`.`fecha_cita` AS `fecha_cita`, `c`.`hora` AS `hora`, `p`.`nombre` AS `paciente_nombre`, `p`.`apellido` AS `paciente_apellido` FROM ((`citas` `c` join `medicos` `m` on(`c`.`medico_id` = `m`.`id`)) join `pacientes` `p` on(`c`.`paciente_id` = `p`.`id`)) WHERE `c`.`estado` = 'Cancelada' ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vistas_medicos_citas_pendientes`
--
DROP TABLE IF EXISTS `vistas_medicos_citas_pendientes`;

CREATE ALGORITHM=UNDEFINED DEFINER=`` SQL SECURITY DEFINER VIEW `vistas_medicos_citas_pendientes`  AS SELECT `m`.`nombre` AS `medico_nombre`, `m`.`apellido` AS `medico_apellido`, `c`.`fecha_cita` AS `fecha_cita`, `c`.`hora` AS `hora`, `p`.`nombre` AS `paciente_nombre`, `p`.`apellido` AS `paciente_apellido` FROM ((`citas` `c` join `medicos` `m` on(`c`.`medico_id` = `m`.`id`)) join `pacientes` `p` on(`c`.`paciente_id` = `p`.`id`)) WHERE `c`.`estado` = 'Pendiente' ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vistas_medicos_pacientes_atendidos`
--
DROP TABLE IF EXISTS `vistas_medicos_pacientes_atendidos`;

CREATE ALGORITHM=UNDEFINED DEFINER=`` SQL SECURITY DEFINER VIEW `vistas_medicos_pacientes_atendidos`  AS SELECT `m`.`nombre` AS `medico_nombre`, `m`.`apellido` AS `medico_apellido`, `p`.`nombre` AS `paciente_nombre`, `p`.`apellido` AS `paciente_apellido`, `c`.`fecha_cita` AS `fecha_cita`, `c`.`hora` AS `hora` FROM ((`medicos` `m` join `citas` `c` on(`m`.`id` = `c`.`medico_id`)) join `pacientes` `p` on(`c`.`paciente_id` = `p`.`id`)) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vistas_medicos_pacientes_cirugias_programadas`
--
DROP TABLE IF EXISTS `vistas_medicos_pacientes_cirugias_programadas`;

CREATE ALGORITHM=UNDEFINED DEFINER=`` SQL SECURITY DEFINER VIEW `vistas_medicos_pacientes_cirugias_programadas`  AS SELECT `m`.`nombre` AS `medico_nombre`, `m`.`apellido` AS `medico_apellido`, `p`.`nombre` AS `paciente_nombre`, `p`.`apellido` AS `paciente_apellido`, `cu`.`tipo` AS `cirugia_tipo`, `cu`.`fecha` AS `cirugia_fecha` FROM ((`medicos` `m` join `cirugias` `cu` on(`m`.`id` = `cu`.`medico_id`)) join `pacientes` `p` on(`cu`.`paciente_id` = `p`.`id`)) WHERE `cu`.`fecha` > curdate() ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vistas_medicos_pacientes_diagnosticos`
--
DROP TABLE IF EXISTS `vistas_medicos_pacientes_diagnosticos`;

CREATE ALGORITHM=UNDEFINED DEFINER=`` SQL SECURITY DEFINER VIEW `vistas_medicos_pacientes_diagnosticos`  AS SELECT `m`.`nombre` AS `medico_nombre`, `m`.`apellido` AS `medico_apellido`, `p`.`nombre` AS `paciente_nombre`, `p`.`apellido` AS `paciente_apellido`, `d`.`descripcion` AS `diagnostico` FROM ((((`medicos` `m` join `citas` `c` on(`m`.`id` = `c`.`medico_id`)) join `pacientes` `p` on(`c`.`paciente_id` = `p`.`id`)) join `historia_clinica` `h` on(`p`.`id` = `h`.`paciente_id`)) join `diagnosticos` `d` on(`h`.`id` = `d`.`historia_clinica_id`)) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vistas_pacientes_citas_diagnosticos`
--
DROP TABLE IF EXISTS `vistas_pacientes_citas_diagnosticos`;

CREATE ALGORITHM=UNDEFINED DEFINER=`` SQL SECURITY DEFINER VIEW `vistas_pacientes_citas_diagnosticos`  AS SELECT `p`.`nombre` AS `paciente_nombre`, `p`.`apellido` AS `paciente_apellido`, `c`.`fecha_cita` AS `fecha_cita`, `c`.`hora` AS `hora`, `c`.`estado` AS `estado`, `d`.`descripcion` AS `diagnostico` FROM (((`citas` `c` join `pacientes` `p` on(`c`.`paciente_id` = `p`.`id`)) left join `historia_clinica` `h` on(`p`.`id` = `h`.`paciente_id`)) left join `diagnosticos` `d` on(`h`.`id` = `d`.`historia_clinica_id`)) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vistas_pacientes_citas_diagnosticos_recientes`
--
DROP TABLE IF EXISTS `vistas_pacientes_citas_diagnosticos_recientes`;

CREATE ALGORITHM=UNDEFINED DEFINER=`` SQL SECURITY DEFINER VIEW `vistas_pacientes_citas_diagnosticos_recientes`  AS SELECT `p`.`nombre` AS `paciente_nombre`, `p`.`apellido` AS `paciente_apellido`, `c`.`fecha_cita` AS `fecha_cita`, `c`.`hora` AS `hora`, `d`.`descripcion` AS `diagnostico` FROM (((`citas` `c` join `pacientes` `p` on(`c`.`paciente_id` = `p`.`id`)) join `historia_clinica` `h` on(`p`.`id` = `h`.`paciente_id`)) join `diagnosticos` `d` on(`h`.`id` = `d`.`historia_clinica_id`)) WHERE `c`.`fecha_cita` >= '2025-01-01' ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vistas_pacientes_citas_diagnostico_no_tratado`
--
DROP TABLE IF EXISTS `vistas_pacientes_citas_diagnostico_no_tratado`;

CREATE ALGORITHM=UNDEFINED DEFINER=`` SQL SECURITY DEFINER VIEW `vistas_pacientes_citas_diagnostico_no_tratado`  AS SELECT `p`.`nombre` AS `paciente_nombre`, `p`.`apellido` AS `paciente_apellido`, `c`.`fecha_cita` AS `fecha_cita`, `c`.`hora` AS `hora`, `d`.`descripcion` AS `diagnostico` FROM (((`citas` `c` join `pacientes` `p` on(`c`.`paciente_id` = `p`.`id`)) join `historia_clinica` `h` on(`p`.`id` = `h`.`paciente_id`)) join `diagnosticos` `d` on(`h`.`id` = `d`.`historia_clinica_id`)) WHERE `d`.`descripcion` is not null AND `h`.`tratamiento_id` is null ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vistas_pacientes_citas_pendientes`
--
DROP TABLE IF EXISTS `vistas_pacientes_citas_pendientes`;

CREATE ALGORITHM=UNDEFINED DEFINER=`` SQL SECURITY DEFINER VIEW `vistas_pacientes_citas_pendientes`  AS SELECT `p`.`nombre` AS `paciente_nombre`, `p`.`apellido` AS `paciente_apellido`, `c`.`fecha_cita` AS `fecha_cita`, `c`.`hora` AS `hora`, `c`.`estado` AS `estado` FROM (`citas` `c` join `pacientes` `p` on(`c`.`paciente_id` = `p`.`id`)) WHERE `c`.`estado` = 'Pendiente' ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vistas_pacientes_citas_pendientes_proximo_mes`
--
DROP TABLE IF EXISTS `vistas_pacientes_citas_pendientes_proximo_mes`;

CREATE ALGORITHM=UNDEFINED DEFINER=`` SQL SECURITY DEFINER VIEW `vistas_pacientes_citas_pendientes_proximo_mes`  AS SELECT `p`.`nombre` AS `paciente_nombre`, `p`.`apellido` AS `paciente_apellido`, `c`.`fecha_cita` AS `fecha_cita`, `c`.`hora` AS `hora` FROM (`citas` `c` join `pacientes` `p` on(`c`.`paciente_id` = `p`.`id`)) WHERE `c`.`estado` = 'Pendiente' AND `c`.`fecha_cita` between curdate() and curdate() + interval 1 month ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vistas_pacientes_citas_programadas_estado`
--
DROP TABLE IF EXISTS `vistas_pacientes_citas_programadas_estado`;

CREATE ALGORITHM=UNDEFINED DEFINER=`` SQL SECURITY DEFINER VIEW `vistas_pacientes_citas_programadas_estado`  AS SELECT `p`.`nombre` AS `paciente_nombre`, `p`.`apellido` AS `paciente_apellido`, `c`.`fecha_cita` AS `fecha_cita`, `c`.`hora` AS `hora`, `c`.`estado` AS `estado` FROM (`citas` `c` join `pacientes` `p` on(`c`.`paciente_id` = `p`.`id`)) WHERE `c`.`fecha_cita` >= curdate() ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vistas_pacientes_con_cirugias_programadas`
--
DROP TABLE IF EXISTS `vistas_pacientes_con_cirugias_programadas`;

CREATE ALGORITHM=UNDEFINED DEFINER=`` SQL SECURITY DEFINER VIEW `vistas_pacientes_con_cirugias_programadas`  AS SELECT `p`.`nombre` AS `paciente_nombre`, `p`.`apellido` AS `paciente_apellido`, `cu`.`tipo` AS `cirugia_tipo`, `cu`.`fecha` AS `cirugia_fecha` FROM (`pacientes` `p` join `cirugias` `cu` on(`p`.`id` = `cu`.`paciente_id`)) WHERE `cu`.`fecha` > curdate() ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vistas_pacientes_con_cirugia_y_medicamentos`
--
DROP TABLE IF EXISTS `vistas_pacientes_con_cirugia_y_medicamentos`;

CREATE ALGORITHM=UNDEFINED DEFINER=`` SQL SECURITY DEFINER VIEW `vistas_pacientes_con_cirugia_y_medicamentos`  AS SELECT `p`.`nombre` AS `paciente_nombre`, `p`.`apellido` AS `paciente_apellido`, `cu`.`tipo` AS `cirugia_tipo`, `cu`.`fecha` AS `cirugia_fecha`, `m`.`nombre` AS `medicamento_nombre`, `f`.`dosis` AS `dosis`, `f`.`cantidad` AS `cantidad` FROM (((`pacientes` `p` join `cirugias` `cu` on(`p`.`id` = `cu`.`paciente_id`)) join `formularios_medicos` `f` on(`p`.`id` = `f`.`paciente_id`)) join `medicamentos` `m` on(`f`.`medicamento_id` = `m`.`id`)) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vistas_pacientes_con_consultas_cirugias`
--
DROP TABLE IF EXISTS `vistas_pacientes_con_consultas_cirugias`;

CREATE ALGORITHM=UNDEFINED DEFINER=`` SQL SECURITY DEFINER VIEW `vistas_pacientes_con_consultas_cirugias`  AS SELECT `p`.`nombre` AS `paciente_nombre`, `p`.`apellido` AS `paciente_apellido`, `c`.`fecha_cita` AS `fecha_cita`, `c`.`hora` AS `hora`, `cu`.`tipo` AS `cirugia_tipo`, `cu`.`fecha` AS `cirugia_fecha` FROM ((`pacientes` `p` left join `citas` `c` on(`p`.`id` = `c`.`paciente_id`)) left join `cirugias` `cu` on(`p`.`id` = `cu`.`paciente_id`)) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vistas_pacientes_con_hospitalizacion_y_cirugias`
--
DROP TABLE IF EXISTS `vistas_pacientes_con_hospitalizacion_y_cirugias`;

CREATE ALGORITHM=UNDEFINED DEFINER=`` SQL SECURITY DEFINER VIEW `vistas_pacientes_con_hospitalizacion_y_cirugias`  AS SELECT `p`.`nombre` AS `paciente_nombre`, `p`.`apellido` AS `paciente_apellido`, `h`.`fecha_ingreso` AS `fecha_ingreso`, `h`.`fecha_alta` AS `fecha_alta`, `cu`.`tipo` AS `cirugia_tipo`, `cu`.`fecha` AS `cirugia_fecha` FROM ((`hospitalizacion` `h` join `pacientes` `p` on(`h`.`paciente_id` = `p`.`id`)) left join `cirugias` `cu` on(`p`.`id` = `cu`.`paciente_id`)) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vistas_pacientes_diagnosticos`
--
DROP TABLE IF EXISTS `vistas_pacientes_diagnosticos`;

CREATE ALGORITHM=UNDEFINED DEFINER=`` SQL SECURITY DEFINER VIEW `vistas_pacientes_diagnosticos`  AS SELECT `p`.`nombre` AS `paciente_nombre`, `p`.`apellido` AS `paciente_apellido`, `d`.`descripcion` AS `diagnostico_descripcion`, `e`.`nombre` AS `enfermedad_nombre` FROM (((`diagnosticos` `d` join `historia_clinica` `h` on(`d`.`historia_clinica_id` = `h`.`id`)) join `pacientes` `p` on(`h`.`paciente_id` = `p`.`id`)) join `enfermedades` `e` on(`d`.`enfermedad_id` = `e`.`id`)) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vistas_pacientes_diagnosticos_recientes_tratamientos`
--
DROP TABLE IF EXISTS `vistas_pacientes_diagnosticos_recientes_tratamientos`;

CREATE ALGORITHM=UNDEFINED DEFINER=`` SQL SECURITY DEFINER VIEW `vistas_pacientes_diagnosticos_recientes_tratamientos`  AS SELECT `p`.`nombre` AS `paciente_nombre`, `p`.`apellido` AS `paciente_apellido`, `d`.`descripcion` AS `diagnostico`, `t`.`nombre` AS `tratamiento_nombre`, `h`.`fecha` AS `fecha` FROM (((`historia_clinica` `h` join `pacientes` `p` on(`h`.`paciente_id` = `p`.`id`)) join `diagnosticos` `d` on(`h`.`id` = `d`.`historia_clinica_id`)) join `tratamientos` `t` on(`h`.`tratamiento_id` = `t`.`id`)) WHERE `h`.`fecha` > '2025-01-01' ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vistas_pacientes_diagnostico_tratamiento_reciente`
--
DROP TABLE IF EXISTS `vistas_pacientes_diagnostico_tratamiento_reciente`;

CREATE ALGORITHM=UNDEFINED DEFINER=`` SQL SECURITY DEFINER VIEW `vistas_pacientes_diagnostico_tratamiento_reciente`  AS SELECT `p`.`nombre` AS `paciente_nombre`, `p`.`apellido` AS `paciente_apellido`, `h`.`fecha` AS `historia_fecha`, `d`.`descripcion` AS `diagnostico`, `t`.`nombre` AS `tratamiento_nombre` FROM (((`historia_clinica` `h` join `pacientes` `p` on(`h`.`paciente_id` = `p`.`id`)) join `diagnosticos` `d` on(`h`.`id` = `d`.`historia_clinica_id`)) join `tratamientos` `t` on(`h`.`tratamiento_id` = `t`.`id`)) WHERE `h`.`fecha` > '2025-01-01' ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vistas_pacientes_facturacion_detallada`
--
DROP TABLE IF EXISTS `vistas_pacientes_facturacion_detallada`;

CREATE ALGORITHM=UNDEFINED DEFINER=`` SQL SECURITY DEFINER VIEW `vistas_pacientes_facturacion_detallada`  AS SELECT `p`.`nombre` AS `paciente_nombre`, `p`.`apellido` AS `paciente_apellido`, `f`.`monto` AS `monto`, `f`.`fecha` AS `fecha`, `m`.`nombre` AS `medico_nombre`, `m`.`apellido` AS `medico_apellido` FROM (((`facturacion` `f` join `pacientes` `p` on(`f`.`paciente_id` = `p`.`id`)) join `citas` `c` on(`p`.`id` = `c`.`paciente_id`)) join `medicos` `m` on(`c`.`medico_id` = `m`.`id`)) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vistas_pacientes_facturacion_monto_total`
--
DROP TABLE IF EXISTS `vistas_pacientes_facturacion_monto_total`;

CREATE ALGORITHM=UNDEFINED DEFINER=`` SQL SECURITY DEFINER VIEW `vistas_pacientes_facturacion_monto_total`  AS SELECT `p`.`nombre` AS `paciente_nombre`, `p`.`apellido` AS `paciente_apellido`, sum(`f`.`monto`) AS `monto_total` FROM (`facturacion` `f` join `pacientes` `p` on(`f`.`paciente_id` = `p`.`id`)) GROUP BY `p`.`id` ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vistas_pacientes_historial_cirugias`
--
DROP TABLE IF EXISTS `vistas_pacientes_historial_cirugias`;

CREATE ALGORITHM=UNDEFINED DEFINER=`` SQL SECURITY DEFINER VIEW `vistas_pacientes_historial_cirugias`  AS SELECT `p`.`nombre` AS `paciente_nombre`, `p`.`apellido` AS `paciente_apellido`, `cu`.`tipo` AS `cirugia_tipo`, `cu`.`fecha` AS `cirugia_fecha` FROM (`pacientes` `p` left join `cirugias` `cu` on(`p`.`id` = `cu`.`paciente_id`)) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vistas_pacientes_historial_tratamientos`
--
DROP TABLE IF EXISTS `vistas_pacientes_historial_tratamientos`;

CREATE ALGORITHM=UNDEFINED DEFINER=`` SQL SECURITY DEFINER VIEW `vistas_pacientes_historial_tratamientos`  AS SELECT `p`.`nombre` AS `paciente_nombre`, `p`.`apellido` AS `paciente_apellido`, `h`.`fecha` AS `fecha`, `t`.`nombre` AS `tratamiento_nombre` FROM ((`historia_clinica` `h` join `pacientes` `p` on(`h`.`paciente_id` = `p`.`id`)) join `tratamientos` `t` on(`h`.`tratamiento_id` = `t`.`id`)) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vistas_pacientes_historia_clinica_diagnostico`
--
DROP TABLE IF EXISTS `vistas_pacientes_historia_clinica_diagnostico`;

CREATE ALGORITHM=UNDEFINED DEFINER=`` SQL SECURITY DEFINER VIEW `vistas_pacientes_historia_clinica_diagnostico`  AS SELECT `p`.`nombre` AS `paciente_nombre`, `p`.`apellido` AS `paciente_apellido`, `h`.`fecha` AS `fecha`, `d`.`descripcion` AS `diagnostico` FROM ((`historia_clinica` `h` join `pacientes` `p` on(`h`.`paciente_id` = `p`.`id`)) join `diagnosticos` `d` on(`h`.`id` = `d`.`historia_clinica_id`)) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vistas_pacientes_hospitalizados_cirugias`
--
DROP TABLE IF EXISTS `vistas_pacientes_hospitalizados_cirugias`;

CREATE ALGORITHM=UNDEFINED DEFINER=`` SQL SECURITY DEFINER VIEW `vistas_pacientes_hospitalizados_cirugias`  AS SELECT `p`.`nombre` AS `paciente_nombre`, `p`.`apellido` AS `paciente_apellido`, `h`.`fecha_ingreso` AS `fecha_ingreso`, `h`.`fecha_alta` AS `fecha_alta`, `cu`.`tipo` AS `cirugia_tipo`, `cu`.`fecha` AS `cirugia_fecha` FROM ((`hospitalizacion` `h` join `pacientes` `p` on(`h`.`paciente_id` = `p`.`id`)) left join `cirugias` `cu` on(`p`.`id` = `cu`.`paciente_id`)) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vistas_pacientes_hospitalizados_con_medico`
--
DROP TABLE IF EXISTS `vistas_pacientes_hospitalizados_con_medico`;

CREATE ALGORITHM=UNDEFINED DEFINER=`` SQL SECURITY DEFINER VIEW `vistas_pacientes_hospitalizados_con_medico`  AS SELECT `p`.`nombre` AS `paciente_nombre`, `p`.`apellido` AS `paciente_apellido`, `h`.`fecha_ingreso` AS `fecha_ingreso`, `h`.`fecha_alta` AS `fecha_alta`, `h`.`estado` AS `hospitalizacion_estado`, `m`.`nombre` AS `medico_nombre` FROM ((`hospitalizacion` `h` join `pacientes` `p` on(`h`.`paciente_id` = `p`.`id`)) join `medicos` `m` on(`p`.`id` = `m`.`id`)) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vistas_pacientes_hospitalizados_en_fecha`
--
DROP TABLE IF EXISTS `vistas_pacientes_hospitalizados_en_fecha`;

CREATE ALGORITHM=UNDEFINED DEFINER=`` SQL SECURITY DEFINER VIEW `vistas_pacientes_hospitalizados_en_fecha`  AS SELECT `p`.`nombre` AS `paciente_nombre`, `p`.`apellido` AS `paciente_apellido`, `h`.`fecha_ingreso` AS `fecha_ingreso`, `h`.`fecha_alta` AS `fecha_alta`, `h`.`estado` AS `estado` FROM (`hospitalizacion` `h` join `pacientes` `p` on(`h`.`paciente_id` = `p`.`id`)) WHERE `h`.`fecha_ingreso` = '2025-02-26' ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vistas_pacientes_ingresados_cirugias`
--
DROP TABLE IF EXISTS `vistas_pacientes_ingresados_cirugias`;

CREATE ALGORITHM=UNDEFINED DEFINER=`` SQL SECURITY DEFINER VIEW `vistas_pacientes_ingresados_cirugias`  AS SELECT `p`.`nombre` AS `paciente_nombre`, `p`.`apellido` AS `paciente_apellido`, `h`.`fecha_ingreso` AS `fecha_ingreso`, `h`.`fecha_alta` AS `fecha_alta`, `cu`.`tipo` AS `cirugia_tipo`, `cu`.`fecha` AS `cirugia_fecha` FROM ((`hospitalizacion` `h` join `pacientes` `p` on(`h`.`paciente_id` = `p`.`id`)) left join `cirugias` `cu` on(`p`.`id` = `cu`.`paciente_id`)) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vistas_pacientes_medicamentos_cantidades`
--
DROP TABLE IF EXISTS `vistas_pacientes_medicamentos_cantidades`;

CREATE ALGORITHM=UNDEFINED DEFINER=`` SQL SECURITY DEFINER VIEW `vistas_pacientes_medicamentos_cantidades`  AS SELECT `p`.`nombre` AS `paciente_nombre`, `p`.`apellido` AS `paciente_apellido`, `m`.`nombre` AS `medicamento_nombre`, `f`.`dosis` AS `dosis`, `f`.`cantidad` AS `cantidad` FROM ((`formularios_medicos` `f` join `pacientes` `p` on(`f`.`paciente_id` = `p`.`id`)) join `medicamentos` `m` on(`f`.`medicamento_id` = `m`.`id`)) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vistas_pacientes_medicamentos_dosis`
--
DROP TABLE IF EXISTS `vistas_pacientes_medicamentos_dosis`;

CREATE ALGORITHM=UNDEFINED DEFINER=`` SQL SECURITY DEFINER VIEW `vistas_pacientes_medicamentos_dosis`  AS SELECT `p`.`nombre` AS `paciente_nombre`, `p`.`apellido` AS `paciente_apellido`, `m`.`nombre` AS `medicamento_nombre`, `f`.`dosis` AS `dosis`, `f`.`cantidad` AS `cantidad`, `f`.`fecha` AS `fecha` FROM ((`formularios_medicos` `f` join `pacientes` `p` on(`f`.`paciente_id` = `p`.`id`)) join `medicamentos` `m` on(`f`.`medicamento_id` = `m`.`id`)) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vistas_pacientes_tratamientos_en_curso`
--
DROP TABLE IF EXISTS `vistas_pacientes_tratamientos_en_curso`;

CREATE ALGORITHM=UNDEFINED DEFINER=`` SQL SECURITY DEFINER VIEW `vistas_pacientes_tratamientos_en_curso`  AS SELECT `p`.`nombre` AS `paciente_nombre`, `p`.`apellido` AS `paciente_apellido`, `t`.`nombre` AS `tratamiento_nombre`, `h`.`fecha` AS `fecha` FROM ((`historia_clinica` `h` join `pacientes` `p` on(`h`.`paciente_id` = `p`.`id`)) join `tratamientos` `t` on(`h`.`tratamiento_id` = `t`.`id`)) WHERE `h`.`fecha` >= '2025-01-01' ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vistas_pacientes_tratamiento_medicamentos`
--
DROP TABLE IF EXISTS `vistas_pacientes_tratamiento_medicamentos`;

CREATE ALGORITHM=UNDEFINED DEFINER=`` SQL SECURITY DEFINER VIEW `vistas_pacientes_tratamiento_medicamentos`  AS SELECT `p`.`nombre` AS `paciente_nombre`, `p`.`apellido` AS `paciente_apellido`, `t`.`nombre` AS `tratamiento_nombre`, `m`.`nombre` AS `medicamento_nombre`, `f`.`dosis` AS `dosis`, `f`.`cantidad` AS `cantidad` FROM ((((`historia_clinica` `h` join `pacientes` `p` on(`h`.`paciente_id` = `p`.`id`)) join `tratamientos` `t` on(`h`.`tratamiento_id` = `t`.`id`)) join `formularios_medicos` `f` on(`p`.`id` = `f`.`paciente_id`)) join `medicamentos` `m` on(`f`.`medicamento_id` = `m`.`id`)) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vista_citas_confirmadas`
--
DROP TABLE IF EXISTS `vista_citas_confirmadas`;

CREATE ALGORITHM=UNDEFINED DEFINER=`` SQL SECURITY DEFINER VIEW `vista_citas_confirmadas`  AS SELECT `p`.`nombre` AS `paciente_nombre`, `p`.`apellido` AS `paciente_apellido`, `c`.`fecha_cita` AS `cita_fecha`, `c`.`hora` AS `cita_hora`, `c`.`estado` AS `cita_estado`, `m`.`nombre` AS `medico_nombre` FROM ((`citas` `c` join `pacientes` `p` on(`c`.`paciente_id` = `p`.`id`)) join `medicos` `m` on(`c`.`medico_id` = `m`.`id`)) WHERE `c`.`estado` = 'Confirmada' ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vista_citas_facturacion`
--
DROP TABLE IF EXISTS `vista_citas_facturacion`;

CREATE ALGORITHM=UNDEFINED DEFINER=`` SQL SECURITY DEFINER VIEW `vista_citas_facturacion`  AS SELECT `p`.`nombre` AS `paciente_nombre`, `p`.`apellido` AS `paciente_apellido`, `c`.`fecha_cita` AS `cita_fecha`, `c`.`hora` AS `cita_hora`, `c`.`estado` AS `cita_estado`, `m`.`nombre` AS `medico_nombre`, `f`.`monto` AS `monto_factura`, `f`.`fecha` AS `factura_fecha` FROM (((`citas` `c` join `pacientes` `p` on(`c`.`paciente_id` = `p`.`id`)) join `medicos` `m` on(`c`.`medico_id` = `m`.`id`)) left join `facturacion` `f` on(`p`.`id` = `f`.`paciente_id`)) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vista_citas_paciente`
--
DROP TABLE IF EXISTS `vista_citas_paciente`;

CREATE ALGORITHM=UNDEFINED DEFINER=`` SQL SECURITY DEFINER VIEW `vista_citas_paciente`  AS SELECT `p`.`nombre` AS `paciente_nombre`, `p`.`apellido` AS `paciente_apellido`, `c`.`fecha_cita` AS `cita_fecha`, `c`.`hora` AS `cita_hora`, `c`.`estado` AS `cita_estado`, `m`.`nombre` AS `medico_nombre` FROM ((`citas` `c` join `pacientes` `p` on(`c`.`paciente_id` = `p`.`id`)) join `medicos` `m` on(`c`.`medico_id` = `m`.`id`)) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vista_citas_pasadas`
--
DROP TABLE IF EXISTS `vista_citas_pasadas`;

CREATE ALGORITHM=UNDEFINED DEFINER=`` SQL SECURITY DEFINER VIEW `vista_citas_pasadas`  AS SELECT `p`.`nombre` AS `paciente_nombre`, `p`.`apellido` AS `paciente_apellido`, `c`.`fecha_cita` AS `cita_fecha`, `c`.`hora` AS `cita_hora`, `m`.`nombre` AS `medico_nombre` FROM ((`citas` `c` join `pacientes` `p` on(`c`.`paciente_id` = `p`.`id`)) join `medicos` `m` on(`c`.`medico_id` = `m`.`id`)) WHERE `c`.`fecha_cita` < curdate() ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vista_citas_pendientes_medico`
--
DROP TABLE IF EXISTS `vista_citas_pendientes_medico`;

CREATE ALGORITHM=UNDEFINED DEFINER=`` SQL SECURITY DEFINER VIEW `vista_citas_pendientes_medico`  AS SELECT `m`.`nombre` AS `medico_nombre`, `m`.`apellido` AS `medico_apellido`, `c`.`fecha_cita` AS `cita_fecha`, `c`.`hora` AS `cita_hora`, `c`.`estado` AS `cita_estado`, `p`.`nombre` AS `paciente_nombre`, `p`.`apellido` AS `paciente_apellido` FROM ((`citas` `c` join `medicos` `m` on(`c`.`medico_id` = `m`.`id`)) join `pacientes` `p` on(`c`.`paciente_id` = `p`.`id`)) WHERE `c`.`estado` = 'Pendiente' ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vista_citas_por_estado`
--
DROP TABLE IF EXISTS `vista_citas_por_estado`;

CREATE ALGORITHM=UNDEFINED DEFINER=`` SQL SECURITY DEFINER VIEW `vista_citas_por_estado`  AS SELECT `p`.`nombre` AS `paciente_nombre`, `p`.`apellido` AS `paciente_apellido`, `c`.`fecha_cita` AS `cita_fecha`, `c`.`hora` AS `cita_hora`, `c`.`estado` AS `cita_estado`, `m`.`nombre` AS `medico_nombre` FROM ((`citas` `c` join `pacientes` `p` on(`c`.`paciente_id` = `p`.`id`)) join `medicos` `m` on(`c`.`medico_id` = `m`.`id`)) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vista_citas_por_medico_fecha`
--
DROP TABLE IF EXISTS `vista_citas_por_medico_fecha`;

CREATE ALGORITHM=UNDEFINED DEFINER=`` SQL SECURITY DEFINER VIEW `vista_citas_por_medico_fecha`  AS SELECT `m`.`nombre` AS `medico_nombre`, `m`.`apellido` AS `medico_apellido`, `c`.`fecha_cita` AS `cita_fecha`, `c`.`hora` AS `cita_hora`, `p`.`nombre` AS `paciente_nombre`, `p`.`apellido` AS `paciente_apellido` FROM ((`citas` `c` join `medicos` `m` on(`c`.`medico_id` = `m`.`id`)) join `pacientes` `p` on(`c`.`paciente_id` = `p`.`id`)) ORDER BY `c`.`fecha_cita` ASC, `c`.`hora` ASC ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vista_consultas_por_especializacion`
--
DROP TABLE IF EXISTS `vista_consultas_por_especializacion`;

CREATE ALGORITHM=UNDEFINED DEFINER=`` SQL SECURITY DEFINER VIEW `vista_consultas_por_especializacion`  AS SELECT `m`.`nombre` AS `medico_nombre`, `m`.`apellido` AS `medico_apellido`, `m`.`especializacion` AS `especializacion`, `p`.`nombre` AS `paciente_nombre`, `p`.`apellido` AS `paciente_apellido`, `h`.`diagnostico` AS `diagnostico` FROM ((`historia_clinica` `h` join `medicos` `m` on(`h`.`medico_id` = `m`.`id`)) join `pacientes` `p` on(`h`.`paciente_id` = `p`.`id`)) WHERE `m`.`especializacion` = 'Cardiología' ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vista_consultas_por_medico_diagnostico`
--
DROP TABLE IF EXISTS `vista_consultas_por_medico_diagnostico`;

CREATE ALGORITHM=UNDEFINED DEFINER=`` SQL SECURITY DEFINER VIEW `vista_consultas_por_medico_diagnostico`  AS SELECT `m`.`nombre` AS `medico_nombre`, `m`.`apellido` AS `medico_apellido`, `p`.`nombre` AS `paciente_nombre`, `p`.`apellido` AS `paciente_apellido`, `h`.`diagnostico` AS `diagnostico`, `h`.`fecha` AS `fecha_consulta` FROM ((`historia_clinica` `h` join `medicos` `m` on(`h`.`medico_id` = `m`.`id`)) join `pacientes` `p` on(`h`.`paciente_id` = `p`.`id`)) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vista_diagnosticos_mas_comunes`
--
DROP TABLE IF EXISTS `vista_diagnosticos_mas_comunes`;

CREATE ALGORITHM=UNDEFINED DEFINER=`` SQL SECURITY DEFINER VIEW `vista_diagnosticos_mas_comunes`  AS SELECT `h`.`diagnostico` AS `diagnostico`, count(`h`.`diagnostico`) AS `cantidad` FROM `historia_clinica` AS `h` GROUP BY `h`.`diagnostico` ORDER BY count(`h`.`diagnostico`) DESC LIMIT 0, 10 ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vista_diagnosticos_paciente`
--
DROP TABLE IF EXISTS `vista_diagnosticos_paciente`;

CREATE ALGORITHM=UNDEFINED DEFINER=`` SQL SECURITY DEFINER VIEW `vista_diagnosticos_paciente`  AS SELECT `p`.`nombre` AS `paciente_nombre`, `p`.`apellido` AS `paciente_apellido`, `h`.`fecha` AS `historia_fecha`, `h`.`diagnostico` AS `diagnostico` FROM (`historia_clinica` `h` join `pacientes` `p` on(`h`.`paciente_id` = `p`.`id`)) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vista_diagnosticos_recientes`
--
DROP TABLE IF EXISTS `vista_diagnosticos_recientes`;

CREATE ALGORITHM=UNDEFINED DEFINER=`` SQL SECURITY DEFINER VIEW `vista_diagnosticos_recientes`  AS SELECT `p`.`nombre` AS `paciente_nombre`, `p`.`apellido` AS `paciente_apellido`, `h`.`fecha` AS `historia_fecha`, `h`.`diagnostico` AS `diagnostico` FROM (`historia_clinica` `h` join `pacientes` `p` on(`h`.`paciente_id` = `p`.`id`)) WHERE `h`.`fecha` > curdate() - interval 30 day ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vista_facturacion_detallada_paciente`
--
DROP TABLE IF EXISTS `vista_facturacion_detallada_paciente`;

CREATE ALGORITHM=UNDEFINED DEFINER=`` SQL SECURITY DEFINER VIEW `vista_facturacion_detallada_paciente`  AS SELECT `p`.`nombre` AS `paciente_nombre`, `p`.`apellido` AS `paciente_apellido`, `f`.`monto` AS `monto_facturado`, `f`.`fecha` AS `fecha_factura` FROM (`facturacion` `f` join `pacientes` `p` on(`f`.`paciente_id` = `p`.`id`)) ORDER BY `f`.`fecha` DESC ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vista_facturacion_mensual`
--
DROP TABLE IF EXISTS `vista_facturacion_mensual`;

CREATE ALGORITHM=UNDEFINED DEFINER=`` SQL SECURITY DEFINER VIEW `vista_facturacion_mensual`  AS SELECT extract(month from `f`.`fecha`) AS `mes`, sum(`f`.`monto`) AS `monto_total` FROM `facturacion` AS `f` GROUP BY extract(month from `f`.`fecha`) ORDER BY extract(month from `f`.`fecha`) ASC ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vista_facturacion_paciente`
--
DROP TABLE IF EXISTS `vista_facturacion_paciente`;

CREATE ALGORITHM=UNDEFINED DEFINER=`` SQL SECURITY DEFINER VIEW `vista_facturacion_paciente`  AS SELECT `p`.`nombre` AS `paciente_nombre`, `p`.`apellido` AS `paciente_apellido`, `f`.`monto` AS `monto_factura`, `f`.`fecha` AS `factura_fecha` FROM (`facturacion` `f` join `pacientes` `p` on(`f`.`paciente_id` = `p`.`id`)) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vista_facturacion_por_fecha`
--
DROP TABLE IF EXISTS `vista_facturacion_por_fecha`;

CREATE ALGORITHM=UNDEFINED DEFINER=`` SQL SECURITY DEFINER VIEW `vista_facturacion_por_fecha`  AS SELECT `p`.`nombre` AS `paciente_nombre`, `p`.`apellido` AS `paciente_apellido`, `f`.`monto` AS `monto_facturado`, `f`.`fecha` AS `fecha_factura` FROM (`facturacion` `f` join `pacientes` `p` on(`f`.`paciente_id` = `p`.`id`)) WHERE `f`.`fecha` >= curdate() - interval 30 day ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vista_facturacion_por_medico`
--
DROP TABLE IF EXISTS `vista_facturacion_por_medico`;

CREATE ALGORITHM=UNDEFINED DEFINER=`` SQL SECURITY DEFINER VIEW `vista_facturacion_por_medico`  AS SELECT `m`.`nombre` AS `medico_nombre`, `m`.`apellido` AS `medico_apellido`, sum(`f`.`monto`) AS `total_facturado` FROM (((`facturacion` `f` join `pacientes` `p` on(`f`.`paciente_id` = `p`.`id`)) join `citas` `c` on(`c`.`paciente_id` = `p`.`id`)) join `medicos` `m` on(`c`.`medico_id` = `m`.`id`)) GROUP BY `m`.`id` ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vista_facturacion_por_paciente_medico`
--
DROP TABLE IF EXISTS `vista_facturacion_por_paciente_medico`;

CREATE ALGORITHM=UNDEFINED DEFINER=`` SQL SECURITY DEFINER VIEW `vista_facturacion_por_paciente_medico`  AS SELECT `p`.`nombre` AS `paciente_nombre`, `p`.`apellido` AS `paciente_apellido`, `m`.`nombre` AS `medico_nombre`, `m`.`apellido` AS `medico_apellido`, `f`.`monto` AS `monto_facturado`, `f`.`fecha` AS `factura_fecha` FROM (((`facturacion` `f` join `pacientes` `p` on(`f`.`paciente_id` = `p`.`id`)) join `citas` `c` on(`p`.`id` = `c`.`paciente_id`)) join `medicos` `m` on(`c`.`medico_id` = `m`.`id`)) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vista_facturacion_total_fecha`
--
DROP TABLE IF EXISTS `vista_facturacion_total_fecha`;

CREATE ALGORITHM=UNDEFINED DEFINER=`` SQL SECURITY DEFINER VIEW `vista_facturacion_total_fecha`  AS SELECT `f`.`fecha` AS `fecha_factura`, sum(`f`.`monto`) AS `total_facturado` FROM `facturacion` AS `f` GROUP BY `f`.`fecha` ORDER BY `f`.`fecha` DESC ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vista_facturacion_total_paciente`
--
DROP TABLE IF EXISTS `vista_facturacion_total_paciente`;

CREATE ALGORITHM=UNDEFINED DEFINER=`` SQL SECURITY DEFINER VIEW `vista_facturacion_total_paciente`  AS SELECT `p`.`nombre` AS `paciente_nombre`, `p`.`apellido` AS `paciente_apellido`, sum(`f`.`monto`) AS `total_facturado` FROM (`facturacion` `f` join `pacientes` `p` on(`f`.`paciente_id` = `p`.`id`)) GROUP BY `p`.`id` ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vista_facturado_por_medico`
--
DROP TABLE IF EXISTS `vista_facturado_por_medico`;

CREATE ALGORITHM=UNDEFINED DEFINER=`` SQL SECURITY DEFINER VIEW `vista_facturado_por_medico`  AS SELECT `m`.`nombre` AS `medico_nombre`, `m`.`apellido` AS `medico_apellido`, sum(`f`.`monto`) AS `total_facturado` FROM (((`facturacion` `f` join `pacientes` `p` on(`f`.`paciente_id` = `p`.`id`)) join `citas` `c` on(`p`.`id` = `c`.`paciente_id`)) join `medicos` `m` on(`c`.`medico_id` = `m`.`id`)) GROUP BY `m`.`id` ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vista_historial_medico_paciente`
--
DROP TABLE IF EXISTS `vista_historial_medico_paciente`;

CREATE ALGORITHM=UNDEFINED DEFINER=`` SQL SECURITY DEFINER VIEW `vista_historial_medico_paciente`  AS SELECT `p`.`nombre` AS `paciente_nombre`, `p`.`apellido` AS `paciente_apellido`, `h`.`fecha` AS `historia_fecha`, `h`.`diagnostico` AS `historia_diagnostico`, `t`.`nombre` AS `tratamiento_nombre`, `t`.`descripcion` AS `tratamiento_descripcion` FROM ((`historia_clinica` `h` join `pacientes` `p` on(`h`.`paciente_id` = `p`.`id`)) left join `tratamientos` `t` on(`h`.`tratamiento_id` = `t`.`id`)) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vista_medicamentos_mas_recetados`
--
DROP TABLE IF EXISTS `vista_medicamentos_mas_recetados`;

CREATE ALGORITHM=UNDEFINED DEFINER=`` SQL SECURITY DEFINER VIEW `vista_medicamentos_mas_recetados`  AS SELECT `m`.`nombre` AS `medicamento_nombre`, count(`fm`.`id`) AS `veces_recetado` FROM (`formularios_medicos` `fm` join `medicamentos` `m` on(`fm`.`medicamento_id` = `m`.`id`)) GROUP BY `m`.`id` ORDER BY count(`fm`.`id`) DESC ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vista_medicamentos_precio`
--
DROP TABLE IF EXISTS `vista_medicamentos_precio`;

CREATE ALGORITHM=UNDEFINED DEFINER=`` SQL SECURITY DEFINER VIEW `vista_medicamentos_precio`  AS SELECT `m`.`nombre` AS `medicamento_nombre`, `m`.`descripcion` AS `medicamento_descripcion`, `m`.`precio` AS `medicamento_precio` FROM `medicamentos` AS `m` ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vista_medicamentos_recetados`
--
DROP TABLE IF EXISTS `vista_medicamentos_recetados`;

CREATE ALGORITHM=UNDEFINED DEFINER=`` SQL SECURITY DEFINER VIEW `vista_medicamentos_recetados`  AS SELECT `p`.`nombre` AS `paciente_nombre`, `p`.`apellido` AS `paciente_apellido`, `m`.`nombre` AS `medicamento_nombre`, `fm`.`dosis` AS `dosis`, `fm`.`cantidad` AS `cantidad_recetada`, `fm`.`fecha` AS `fecha_receta` FROM ((`formularios_medicos` `fm` join `pacientes` `p` on(`fm`.`paciente_id` = `p`.`id`)) join `medicamentos` `m` on(`fm`.`medicamento_id` = `m`.`id`)) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vista_medicamentos_recetados_con_cantidad`
--
DROP TABLE IF EXISTS `vista_medicamentos_recetados_con_cantidad`;

CREATE ALGORITHM=UNDEFINED DEFINER=`` SQL SECURITY DEFINER VIEW `vista_medicamentos_recetados_con_cantidad`  AS SELECT `p`.`nombre` AS `paciente_nombre`, `p`.`apellido` AS `paciente_apellido`, `m`.`nombre` AS `medicamento_nombre`, `fm`.`dosis` AS `dosis`, `fm`.`cantidad` AS `cantidad_recetada`, `fm`.`fecha` AS `fecha_receta` FROM ((`formularios_medicos` `fm` join `pacientes` `p` on(`fm`.`paciente_id` = `p`.`id`)) join `medicamentos` `m` on(`fm`.`medicamento_id` = `m`.`id`)) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vista_medicamentos_recetados_por_fecha`
--
DROP TABLE IF EXISTS `vista_medicamentos_recetados_por_fecha`;

CREATE ALGORITHM=UNDEFINED DEFINER=`` SQL SECURITY DEFINER VIEW `vista_medicamentos_recetados_por_fecha`  AS SELECT `p`.`nombre` AS `paciente_nombre`, `p`.`apellido` AS `paciente_apellido`, `m`.`nombre` AS `medicamento_nombre`, `fm`.`dosis` AS `dosis`, `fm`.`cantidad` AS `cantidad_recetada`, `fm`.`fecha` AS `fecha_receta` FROM ((`formularios_medicos` `fm` join `pacientes` `p` on(`fm`.`paciente_id` = `p`.`id`)) join `medicamentos` `m` on(`fm`.`medicamento_id` = `m`.`id`)) WHERE `fm`.`fecha` between curdate() - interval 30 day and curdate() ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vista_medicamentos_tratamientos`
--
DROP TABLE IF EXISTS `vista_medicamentos_tratamientos`;

CREATE ALGORITHM=UNDEFINED DEFINER=`` SQL SECURITY DEFINER VIEW `vista_medicamentos_tratamientos`  AS SELECT `p`.`nombre` AS `paciente_nombre`, `p`.`apellido` AS `paciente_apellido`, `m`.`nombre` AS `medicamento_nombre`, `fm`.`dosis` AS `dosis`, `fm`.`cantidad` AS `cantidad`, `t`.`nombre` AS `tratamiento_nombre`, `t`.`descripcion` AS `tratamiento_descripcion` FROM ((((`formularios_medicos` `fm` join `pacientes` `p` on(`fm`.`paciente_id` = `p`.`id`)) join `medicamentos` `m` on(`fm`.`medicamento_id` = `m`.`id`)) left join `historia_clinica` `h` on(`fm`.`paciente_id` = `h`.`paciente_id`)) left join `tratamientos` `t` on(`h`.`tratamiento_id` = `t`.`id`)) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vista_medicamentos_utilizados_por_pacientes`
--
DROP TABLE IF EXISTS `vista_medicamentos_utilizados_por_pacientes`;

CREATE ALGORITHM=UNDEFINED DEFINER=`` SQL SECURITY DEFINER VIEW `vista_medicamentos_utilizados_por_pacientes`  AS SELECT `p`.`nombre` AS `paciente_nombre`, `p`.`apellido` AS `paciente_apellido`, `m`.`nombre` AS `medicamento_nombre`, `fm`.`dosis` AS `dosis`, `fm`.`cantidad` AS `cantidad_utilizada`, `fm`.`fecha` AS `fecha_receta` FROM ((`formularios_medicos` `fm` join `pacientes` `p` on(`fm`.`paciente_id` = `p`.`id`)) join `medicamentos` `m` on(`fm`.`medicamento_id` = `m`.`id`)) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vista_medico_completo`
--
DROP TABLE IF EXISTS `vista_medico_completo`;

CREATE ALGORITHM=UNDEFINED DEFINER=`` SQL SECURITY DEFINER VIEW `vista_medico_completo`  AS SELECT `m`.`id` AS `medico_id`, `m`.`nombre` AS `medico_nombre`, `m`.`apellido` AS `medico_apellido`, `m`.`especializacion` AS `medico_especializacion`, `m`.`telefono` AS `medico_telefono`, `m`.`correo` AS `medico_correo`, `m`.`direccion` AS `medico_direccion` FROM `medicos` AS `m` ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vista_pacientes_citas_pendientes`
--
DROP TABLE IF EXISTS `vista_pacientes_citas_pendientes`;

CREATE ALGORITHM=UNDEFINED DEFINER=`` SQL SECURITY DEFINER VIEW `vista_pacientes_citas_pendientes`  AS SELECT `p`.`nombre` AS `paciente_nombre`, `p`.`apellido` AS `paciente_apellido`, `c`.`fecha_cita` AS `cita_fecha`, `c`.`hora` AS `cita_hora`, `m`.`nombre` AS `medico_nombre` FROM ((`citas` `c` join `pacientes` `p` on(`c`.`paciente_id` = `p`.`id`)) join `medicos` `m` on(`c`.`medico_id` = `m`.`id`)) WHERE `c`.`estado` = 'Pendiente' ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vista_pacientes_con_citas_confirmadas_por_medico`
--
DROP TABLE IF EXISTS `vista_pacientes_con_citas_confirmadas_por_medico`;

CREATE ALGORITHM=UNDEFINED DEFINER=`` SQL SECURITY DEFINER VIEW `vista_pacientes_con_citas_confirmadas_por_medico`  AS SELECT `m`.`nombre` AS `medico_nombre`, `m`.`apellido` AS `medico_apellido`, `p`.`nombre` AS `paciente_nombre`, `p`.`apellido` AS `paciente_apellido`, `c`.`fecha_cita` AS `fecha_cita`, `c`.`hora` AS `hora_cita` FROM ((`citas` `c` join `medicos` `m` on(`c`.`medico_id` = `m`.`id`)) join `pacientes` `p` on(`c`.`paciente_id` = `p`.`id`)) WHERE `c`.`estado` = 'Confirmada' ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vista_pacientes_con_citas_pendientes`
--
DROP TABLE IF EXISTS `vista_pacientes_con_citas_pendientes`;

CREATE ALGORITHM=UNDEFINED DEFINER=`` SQL SECURITY DEFINER VIEW `vista_pacientes_con_citas_pendientes`  AS SELECT `p`.`nombre` AS `paciente_nombre`, `p`.`apellido` AS `paciente_apellido`, `c`.`fecha_cita` AS `fecha_cita`, `c`.`hora` AS `hora_cita`, `c`.`estado` AS `estado_cita` FROM (`citas` `c` join `pacientes` `p` on(`c`.`paciente_id` = `p`.`id`)) WHERE `c`.`estado` = 'Pendiente' ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vista_pacientes_con_diagnostico_especifico`
--
DROP TABLE IF EXISTS `vista_pacientes_con_diagnostico_especifico`;

CREATE ALGORITHM=UNDEFINED DEFINER=`` SQL SECURITY DEFINER VIEW `vista_pacientes_con_diagnostico_especifico`  AS SELECT `p`.`nombre` AS `paciente_nombre`, `p`.`apellido` AS `paciente_apellido`, `h`.`diagnostico` AS `diagnostico`, `h`.`fecha` AS `fecha_diagnostico` FROM (`historia_clinica` `h` join `pacientes` `p` on(`h`.`paciente_id` = `p`.`id`)) WHERE `h`.`diagnostico` like '%hipertensión%' ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vista_pacientes_con_tratamientos_activos`
--
DROP TABLE IF EXISTS `vista_pacientes_con_tratamientos_activos`;

CREATE ALGORITHM=UNDEFINED DEFINER=`` SQL SECURITY DEFINER VIEW `vista_pacientes_con_tratamientos_activos`  AS SELECT `p`.`nombre` AS `paciente_nombre`, `p`.`apellido` AS `paciente_apellido`, `t`.`nombre` AS `tratamiento_nombre`, `t`.`descripcion` AS `tratamiento_descripcion` FROM ((`historia_clinica` `h` join `pacientes` `p` on(`h`.`paciente_id` = `p`.`id`)) join `tratamientos` `t` on(`h`.`tratamiento_id` = `t`.`id`)) WHERE `h`.`fecha` >= curdate() ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vista_pacientes_medicamentos_fecha`
--
DROP TABLE IF EXISTS `vista_pacientes_medicamentos_fecha`;

CREATE ALGORITHM=UNDEFINED DEFINER=`` SQL SECURITY DEFINER VIEW `vista_pacientes_medicamentos_fecha`  AS SELECT `p`.`nombre` AS `paciente_nombre`, `p`.`apellido` AS `paciente_apellido`, `m`.`nombre` AS `medicamento_nombre`, `fm`.`dosis` AS `dosis`, `fm`.`cantidad` AS `cantidad_recetada`, `fm`.`fecha` AS `fecha_receta` FROM ((`formularios_medicos` `fm` join `pacientes` `p` on(`fm`.`paciente_id` = `p`.`id`)) join `medicamentos` `m` on(`fm`.`medicamento_id` = `m`.`id`)) WHERE `fm`.`fecha` >= curdate() - interval 30 day ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vista_pacientes_medicamentos_recetados`
--
DROP TABLE IF EXISTS `vista_pacientes_medicamentos_recetados`;

CREATE ALGORITHM=UNDEFINED DEFINER=`` SQL SECURITY DEFINER VIEW `vista_pacientes_medicamentos_recetados`  AS SELECT `p`.`nombre` AS `paciente_nombre`, `p`.`apellido` AS `paciente_apellido`, `m`.`nombre` AS `medicamento_nombre`, `fm`.`dosis` AS `dosis`, `fm`.`cantidad` AS `cantidad_recetada`, `fm`.`fecha` AS `fecha_receta` FROM ((`formularios_medicos` `fm` join `pacientes` `p` on(`fm`.`paciente_id` = `p`.`id`)) join `medicamentos` `m` on(`fm`.`medicamento_id` = `m`.`id`)) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vista_pacientes_por_tratamiento`
--
DROP TABLE IF EXISTS `vista_pacientes_por_tratamiento`;

CREATE ALGORITHM=UNDEFINED DEFINER=`` SQL SECURITY DEFINER VIEW `vista_pacientes_por_tratamiento`  AS SELECT `p`.`nombre` AS `paciente_nombre`, `p`.`apellido` AS `paciente_apellido`, `t`.`nombre` AS `tratamiento_nombre` FROM ((`historia_clinica` `h` join `pacientes` `p` on(`h`.`paciente_id` = `p`.`id`)) left join `tratamientos` `t` on(`h`.`tratamiento_id` = `t`.`id`)) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vista_paciente_completa`
--
DROP TABLE IF EXISTS `vista_paciente_completa`;

CREATE ALGORITHM=UNDEFINED DEFINER=`` SQL SECURITY DEFINER VIEW `vista_paciente_completa`  AS SELECT `p`.`id` AS `paciente_id`, `p`.`nombre` AS `paciente_nombre`, `p`.`apellido` AS `paciente_apellido`, `p`.`telefono` AS `paciente_telefono`, `p`.`direccion` AS `paciente_direccion`, `p`.`correo` AS `paciente_correo`, `p`.`contrasena` AS `paciente_contrasena`, `f`.`monto` AS `facturacion_total` FROM (`pacientes` `p` left join `facturacion` `f` on(`p`.`id` = `f`.`paciente_id`)) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vista_seguimiento_pacientes_medicamento`
--
DROP TABLE IF EXISTS `vista_seguimiento_pacientes_medicamento`;

CREATE ALGORITHM=UNDEFINED DEFINER=`` SQL SECURITY DEFINER VIEW `vista_seguimiento_pacientes_medicamento`  AS SELECT `p`.`nombre` AS `paciente_nombre`, `p`.`apellido` AS `paciente_apellido`, `m`.`nombre` AS `medicamento_nombre`, `fm`.`dosis` AS `dosis`, `fm`.`cantidad` AS `cantidad`, `fm`.`fecha` AS `fecha_receta` FROM ((`formularios_medicos` `fm` join `pacientes` `p` on(`fm`.`paciente_id` = `p`.`id`)) join `medicamentos` `m` on(`fm`.`medicamento_id` = `m`.`id`)) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vista_seguimiento_pacientes_tratamiento`
--
DROP TABLE IF EXISTS `vista_seguimiento_pacientes_tratamiento`;

CREATE ALGORITHM=UNDEFINED DEFINER=`` SQL SECURITY DEFINER VIEW `vista_seguimiento_pacientes_tratamiento`  AS SELECT `p`.`nombre` AS `paciente_nombre`, `p`.`apellido` AS `paciente_apellido`, `t`.`nombre` AS `tratamiento_nombre`, `t`.`descripcion` AS `tratamiento_descripcion`, `h`.`fecha` AS `historia_fecha` FROM ((`historia_clinica` `h` join `pacientes` `p` on(`h`.`paciente_id` = `p`.`id`)) join `tratamientos` `t` on(`h`.`tratamiento_id` = `t`.`id`)) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vista_tratamientos_activos_pacientes`
--
DROP TABLE IF EXISTS `vista_tratamientos_activos_pacientes`;

CREATE ALGORITHM=UNDEFINED DEFINER=`` SQL SECURITY DEFINER VIEW `vista_tratamientos_activos_pacientes`  AS SELECT `p`.`nombre` AS `paciente_nombre`, `p`.`apellido` AS `paciente_apellido`, `t`.`nombre` AS `tratamiento_nombre`, `t`.`descripcion` AS `tratamiento_descripcion`, `h`.`fecha` AS `fecha_inicio_tratamiento` FROM ((`historia_clinica` `h` join `pacientes` `p` on(`h`.`paciente_id` = `p`.`id`)) join `tratamientos` `t` on(`h`.`tratamiento_id` = `t`.`id`)) WHERE `h`.`fecha` >= curdate() - interval 30 day ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vista_tratamientos_paciente`
--
DROP TABLE IF EXISTS `vista_tratamientos_paciente`;

CREATE ALGORITHM=UNDEFINED DEFINER=`` SQL SECURITY DEFINER VIEW `vista_tratamientos_paciente`  AS SELECT `p`.`nombre` AS `paciente_nombre`, `p`.`apellido` AS `paciente_apellido`, `h`.`fecha` AS `historia_fecha`, `h`.`diagnostico` AS `diagnostico`, `t`.`nombre` AS `tratamiento_nombre`, `t`.`descripcion` AS `tratamiento_descripcion` FROM ((`historia_clinica` `h` join `pacientes` `p` on(`h`.`paciente_id` = `p`.`id`)) left join `tratamientos` `t` on(`h`.`tratamiento_id` = `t`.`id`)) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vista_tratamientos_pacientes_recientes`
--
DROP TABLE IF EXISTS `vista_tratamientos_pacientes_recientes`;

CREATE ALGORITHM=UNDEFINED DEFINER=`` SQL SECURITY DEFINER VIEW `vista_tratamientos_pacientes_recientes`  AS SELECT `p`.`nombre` AS `paciente_nombre`, `p`.`apellido` AS `paciente_apellido`, `t`.`nombre` AS `tratamiento_nombre`, `h`.`fecha` AS `tratamiento_fecha` FROM ((`historia_clinica` `h` join `pacientes` `p` on(`h`.`paciente_id` = `p`.`id`)) join `tratamientos` `t` on(`h`.`tratamiento_id` = `t`.`id`)) WHERE `h`.`fecha` >= curdate() - interval 30 day ;

-- --------------------------------------------------------

--
-- Estructura para la vista `vista_tratamientos_por_medico`
--
DROP TABLE IF EXISTS `vista_tratamientos_por_medico`;

CREATE ALGORITHM=UNDEFINED DEFINER=`` SQL SECURITY DEFINER VIEW `vista_tratamientos_por_medico`  AS SELECT `m`.`nombre` AS `medico_nombre`, `m`.`apellido` AS `medico_apellido`, `t`.`nombre` AS `tratamiento_nombre`, `t`.`descripcion` AS `tratamiento_descripcion`, `p`.`nombre` AS `paciente_nombre`, `p`.`apellido` AS `paciente_apellido` FROM (((`historia_clinica` `h` join `medicos` `m` on(`h`.`medico_id` = `m`.`id`)) join `tratamientos` `t` on(`h`.`tratamiento_id` = `t`.`id`)) join `pacientes` `p` on(`h`.`paciente_id` = `p`.`id`)) ;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cirugias`
--
ALTER TABLE `cirugias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `citas`
--
ALTER TABLE `citas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `paciente_id` (`paciente_id`),
  ADD KEY `citas_ibfk_2` (`medico_id`);

--
-- Indices de la tabla `diagnosticos`
--
ALTER TABLE `diagnosticos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `enfermedades`
--
ALTER TABLE `enfermedades`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `facturacion`
--
ALTER TABLE `facturacion`
  ADD PRIMARY KEY (`id`),
  ADD KEY `paciente_id` (`paciente_id`);

--
-- Indices de la tabla `formularios_medicos`
--
ALTER TABLE `formularios_medicos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `paciente_id` (`paciente_id`),
  ADD KEY `medicamento_id` (`medicamento_id`);

--
-- Indices de la tabla `historia_clinica`
--
ALTER TABLE `historia_clinica`
  ADD PRIMARY KEY (`id`),
  ADD KEY `paciente_id` (`paciente_id`),
  ADD KEY `medico_id` (`medico_id`),
  ADD KEY `tratamiento_id` (`tratamiento_id`);

--
-- Indices de la tabla `hospitalizacion`
--
ALTER TABLE `hospitalizacion`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `medicamentos`
--
ALTER TABLE `medicamentos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `medicamentos_pacientes`
--
ALTER TABLE `medicamentos_pacientes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `medicos`
--
ALTER TABLE `medicos`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `correo` (`correo`);

--
-- Indices de la tabla `pacientes`
--
ALTER TABLE `pacientes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `correo` (`correo`);

--
-- Indices de la tabla `tratamientos`
--
ALTER TABLE `tratamientos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_tratamientos_paciente` (`paciente_id`),
  ADD KEY `fk_tratamientos_medico` (`medico_id`);

--
-- Indices de la tabla `turnos`
--
ALTER TABLE `turnos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `citas`
--
ALTER TABLE `citas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `facturacion`
--
ALTER TABLE `facturacion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `formularios_medicos`
--
ALTER TABLE `formularios_medicos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `historia_clinica`
--
ALTER TABLE `historia_clinica`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `medicamentos`
--
ALTER TABLE `medicamentos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `medicos`
--
ALTER TABLE `medicos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `pacientes`
--
ALTER TABLE `pacientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `tratamientos`
--
ALTER TABLE `tratamientos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `citas`
--
ALTER TABLE `citas`
  ADD CONSTRAINT `citas_ibfk_1` FOREIGN KEY (`paciente_id`) REFERENCES `pacientes` (`id`),
  ADD CONSTRAINT `citas_ibfk_2` FOREIGN KEY (`medico_id`) REFERENCES `medicos` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `facturacion`
--
ALTER TABLE `facturacion`
  ADD CONSTRAINT `facturacion_ibfk_1` FOREIGN KEY (`paciente_id`) REFERENCES `pacientes` (`id`);

--
-- Filtros para la tabla `formularios_medicos`
--
ALTER TABLE `formularios_medicos`
  ADD CONSTRAINT `formularios_medicos_ibfk_1` FOREIGN KEY (`paciente_id`) REFERENCES `pacientes` (`id`),
  ADD CONSTRAINT `formularios_medicos_ibfk_2` FOREIGN KEY (`medicamento_id`) REFERENCES `medicamentos` (`id`);

--
-- Filtros para la tabla `historia_clinica`
--
ALTER TABLE `historia_clinica`
  ADD CONSTRAINT `historia_clinica_ibfk_1` FOREIGN KEY (`paciente_id`) REFERENCES `pacientes` (`id`),
  ADD CONSTRAINT `historia_clinica_ibfk_2` FOREIGN KEY (`medico_id`) REFERENCES `medicos` (`id`),
  ADD CONSTRAINT `historia_clinica_ibfk_3` FOREIGN KEY (`tratamiento_id`) REFERENCES `tratamientos` (`id`);

--
-- Filtros para la tabla `tratamientos`
--
ALTER TABLE `tratamientos`
  ADD CONSTRAINT `fk_tratamientos_medico` FOREIGN KEY (`medico_id`) REFERENCES `medicos` (`id`),
  ADD CONSTRAINT `fk_tratamientos_paciente` FOREIGN KEY (`paciente_id`) REFERENCES `pacientes` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
