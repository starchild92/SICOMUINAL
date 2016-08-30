-- phpMyAdmin SQL Dump
-- version 4.4.14
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 29-08-2016 a las 22:58:10
-- Versión del servidor: 5.6.26
-- Versión de PHP: 5.6.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `sicomunal`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `admin_aguas_blancas`
--

CREATE TABLE IF NOT EXISTS `admin_aguas_blancas` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `admin_aguas_blancas`
--

INSERT INTO `admin_aguas_blancas` (`id`, `nombre`) VALUES
(1, 'Acuaeducto'),
(2, 'Camión'),
(4, 'Del Río'),
(3, 'Pila Pública');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `admin_aguas_servidas`
--

CREATE TABLE IF NOT EXISTS `admin_aguas_servidas` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `admin_aguas_servidas`
--

INSERT INTO `admin_aguas_servidas` (`id`, `nombre`) VALUES
(2, 'Cloaca'),
(1, 'Pozos sépticos');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `admin_area_trabajo_c_c`
--

CREATE TABLE IF NOT EXISTS `admin_area_trabajo_c_c` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `admin_area_trabajo_c_c`
--

INSERT INTO `admin_area_trabajo_c_c` (`id`, `nombre`) VALUES
(7, 'Alimentación y Nutrición'),
(1, 'Contraloría y Seguimiento'),
(8, 'Educación, Cultura y Tecnología'),
(10, 'Ejecución de Programas Sociales y las Misiones'),
(6, 'Elaboración de Proyectos de Desarrollo Comunitario (Endógeno)'),
(5, 'Formación y Conciencia Ideológica'),
(4, 'Infraestructura, Vivienda y Servicios Públicos'),
(2, 'Relaciones Públicas y Medios'),
(9, 'Salud, Deporte y Saneamiento Ambiental'),
(11, 'Seguridad Ciudadana');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `admin_capacidad_bombona`
--

CREATE TABLE IF NOT EXISTS `admin_capacidad_bombona` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `admin_capacidad_bombona`
--

INSERT INTO `admin_capacidad_bombona` (`id`, `nombre`) VALUES
(1, '10Kg'),
(2, '18Kg'),
(3, '43Kg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `admin_clas_ingreso_familiar`
--

CREATE TABLE IF NOT EXISTS `admin_clas_ingreso_familiar` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `admin_clas_ingreso_familiar`
--

INSERT INTO `admin_clas_ingreso_familiar` (`id`, `nombre`) VALUES
(2, 'Diario'),
(1, 'Mensual'),
(6, 'Por trabajo realizado'),
(9, 'Quincenal'),
(3, 'Semanal');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `admin_empresa_gas`
--

CREATE TABLE IF NOT EXISTS `admin_empresa_gas` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `admin_empresa_gas`
--

INSERT INTO `admin_empresa_gas` (`id`, `nombre`) VALUES
(1, 'PDVSA Gas'),
(2, 'Gas Comunal'),
(3, 'PETROVAL');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `admin_estado_civil`
--

CREATE TABLE IF NOT EXISTS `admin_estado_civil` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `admin_estado_civil`
--

INSERT INTO `admin_estado_civil` (`id`, `nombre`) VALUES
(2, 'Casado(a)'),
(4, 'Concubino(a)'),
(3, 'Divorciado(a)'),
(1, 'Soltero(a)'),
(5, 'Viudo(a)');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `admin_incapacidades`
--

CREATE TABLE IF NOT EXISTS `admin_incapacidades` (
  `id` int(11) NOT NULL,
  `incapacidad` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `admin_incapacidades`
--

INSERT INTO `admin_incapacidades` (`id`, `incapacidad`) VALUES
(2, 'Disfunción Auditiva'),
(3, 'Disfunción Verbal'),
(1, 'Disfunción Visual'),
(6, 'Especial'),
(5, 'Problemas Renales');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `admin_mecanismo_informacion`
--

CREATE TABLE IF NOT EXISTS `admin_mecanismo_informacion` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `admin_mecanismo_informacion`
--

INSERT INTO `admin_mecanismo_informacion` (`id`, `nombre`) VALUES
(4, 'Internet'),
(5, 'Medios Alternativos Comunitarios'),
(3, 'Prensa'),
(2, 'Radio'),
(1, 'Televisión');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `admin_misiones_comunidad`
--

CREATE TABLE IF NOT EXISTS `admin_misiones_comunidad` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `admin_misiones_comunidad`
--

INSERT INTO `admin_misiones_comunidad` (`id`, `nombre`) VALUES
(6, 'Barrio Adentro'),
(7, 'Ezequiel Zamora'),
(5, 'Identidad'),
(8, 'Mercal'),
(1, 'Ribas'),
(2, 'Sucre'),
(3, 'Vuelvan Caras');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `admin_nacionalidad`
--

CREATE TABLE IF NOT EXISTS `admin_nacionalidad` (
  `id` int(11) NOT NULL,
  `nacionalidad` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `admin_nacionalidad`
--

INSERT INTO `admin_nacionalidad` (`id`, `nacionalidad`) VALUES
(4, 'E'),
(1, 'V');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `admin_nivel_instruccion`
--

CREATE TABLE IF NOT EXISTS `admin_nivel_instruccion` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `admin_nivel_instruccion`
--

INSERT INTO `admin_nivel_instruccion` (`id`, `nombre`) VALUES
(3, 'Bachiller'),
(2, 'Básica'),
(1, 'Ninguna'),
(7, 'Post Grado'),
(4, 'Técnico Medio'),
(5, 'Técnico Superior'),
(6, 'Universitario');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `admin_org_comunitaria`
--

CREATE TABLE IF NOT EXISTS `admin_org_comunitaria` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `admin_org_comunitaria`
--

INSERT INTO `admin_org_comunitaria` (`id`, `nombre`) VALUES
(1, 'Consejo Comunal');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `admin_pensionado_institucion`
--

CREATE TABLE IF NOT EXISTS `admin_pensionado_institucion` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `admin_pensionado_institucion`
--

INSERT INTO `admin_pensionado_institucion` (`id`, `nombre`) VALUES
(3, 'Empresa Privada'),
(4, 'Ente del Estado'),
(1, 'IVICC'),
(2, 'IVSS');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `admin_preguntas`
--

CREATE TABLE IF NOT EXISTS `admin_preguntas` (
  `id` int(11) NOT NULL,
  `pregunta` longtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `admin_preguntas`
--

INSERT INTO `admin_preguntas` (`id`, `pregunta`) VALUES
(1, 'Participa Ud. o asiste a las asambleas de ciudadanos(as).'),
(2, '¿Cree Ud. que en la actualidad el pueblo está interviniendo en las decisiones sobre cómo deben gastarse los recursos de su comunidad?'),
(3, '¿Está de acuerdo, que según la Constitución, es ahora el Pueblo organizado quien debe tener el protagonismo y el Poder para decidir sobre cómo invertir el presupuesto en su comunidad?'),
(4, '¿Tiene información sobre la propuesta de creación de consejos comunales?'),
(5, '¿Estaría dispuesto(a) a apoyar y participar en la creación de un consejo comunal en su comunidad?');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `admin_preguntas_participacion_comunitaria`
--

CREATE TABLE IF NOT EXISTS `admin_preguntas_participacion_comunitaria` (
  `id` int(11) NOT NULL,
  `interrogante` int(11) DEFAULT NULL,
  `respuesta` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `admin_preguntas_participacion_comunitaria`
--

INSERT INTO `admin_preguntas_participacion_comunitaria` (`id`, `interrogante`, `respuesta`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 3, 1),
(4, 4, 1),
(5, 5, 1),
(6, 4, 1),
(7, 3, 2),
(8, 5, 2),
(9, 4, 2),
(10, 2, 2),
(11, 3, 1),
(12, 4, 1),
(13, 5, 1),
(14, 1, 1),
(15, 1, 1),
(16, 2, 1),
(17, 3, 1),
(18, 4, 1),
(19, 4, 2),
(20, 1, 2),
(21, 4, 1),
(22, 5, 1),
(23, 2, 1),
(24, 3, 1),
(25, 3, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `admin_preguntas_situacion_comunidad`
--

CREATE TABLE IF NOT EXISTS `admin_preguntas_situacion_comunidad` (
  `id` int(11) NOT NULL,
  `pregunta_sit_com` int(11) DEFAULT NULL,
  `pregunta` longtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `admin_preguntas_situacion_comunidad`
--

INSERT INTO `admin_preguntas_situacion_comunidad` (`id`, `pregunta_sit_com`, `pregunta`) VALUES
(1, 1, 'NADA'),
(2, 2, 'No tenemos consejo comunal, inseguridad, calles deterioradas, servicios básicos'),
(3, 2, 'Agua, inseguridad, Alumbrado público, mercados vecinales'),
(4, 1, 'Es una comunidad céntrica, fácil acceso, bastante tiempo de fundada, numerosos habitantes'),
(5, 2, 'Deficiencia, atención en el area de salud, alumbrado público, no se cumplen las misiones, deficiencia de aseo urbano.'),
(6, 1, 'Situación geográfica'),
(7, 2, 'Alumbrado público, inseguridad, poca actividad del consejo comunal para el sector');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `admin_preguntas_sit_com`
--

CREATE TABLE IF NOT EXISTS `admin_preguntas_sit_com` (
  `id` int(11) NOT NULL,
  `pregunta` longtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `admin_preguntas_sit_com`
--

INSERT INTO `admin_preguntas_sit_com` (`id`, `pregunta`) VALUES
(1, 'En orden de importancia. ¿Cuáles cree Ud que son las principales potencialidades y aspectos ventajosos que tiene su comunidad?'),
(2, 'En orden de importancia. ¿Cuáles creed Ud que son los principales problemas y debilidades de su comunidad?');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `admin_profesion`
--

CREATE TABLE IF NOT EXISTS `admin_profesion` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `admin_profesion`
--

INSERT INTO `admin_profesion` (`id`, `nombre`) VALUES
(25, 'Abogado'),
(11, 'Acesor de Ventas'),
(2, 'Albañil'),
(24, 'Analista de Contabilidad'),
(1, 'Analista Programador en Sistemas'),
(26, 'Bioanalista'),
(19, 'Comerciante'),
(16, 'Costurera'),
(10, 'del Hogar'),
(15, 'Diseñador Gráfico'),
(21, 'Docente'),
(22, 'Economista'),
(12, 'Estudiante'),
(23, 'Instrumentista'),
(27, 'Maestro(a)'),
(28, 'Manicurista'),
(20, 'Mecanico'),
(9, 'Modelo'),
(3, 'Ninguna'),
(18, 'Odontologo'),
(14, 'Técnico de Acensor'),
(17, 'TSU Informática'),
(4, 'Vedel'),
(13, 'Vendedora');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `admin_recoleccion_basura`
--

CREATE TABLE IF NOT EXISTS `admin_recoleccion_basura` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `admin_recoleccion_basura`
--

INSERT INTO `admin_recoleccion_basura` (`id`, `nombre`) VALUES
(5, 'Al Aire Libre'),
(1, 'Aseo Urbano'),
(3, 'Bajante'),
(4, 'Camión'),
(2, 'Container'),
(6, 'Quemada');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `admin_resp_cerrada`
--

CREATE TABLE IF NOT EXISTS `admin_resp_cerrada` (
  `id` int(11) NOT NULL,
  `respuesta` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `admin_resp_cerrada`
--

INSERT INTO `admin_resp_cerrada` (`id`, `respuesta`) VALUES
(2, 'No'),
(1, 'Si');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `admin_salubridad_vivienda`
--

CREATE TABLE IF NOT EXISTS `admin_salubridad_vivienda` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `admin_salubridad_vivienda`
--

INSERT INTO `admin_salubridad_vivienda` (`id`, `nombre`) VALUES
(1, 'Limpia'),
(3, 'Medio Limpia'),
(2, 'Sucia');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `admin_servicios_comunales`
--

CREATE TABLE IF NOT EXISTS `admin_servicios_comunales` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `admin_servicios_comunales`
--

INSERT INTO `admin_servicios_comunales` (`id`, `nombre`) VALUES
(2, 'Abastos'),
(3, 'Bodega'),
(10, 'Cancha'),
(11, 'Casa Comunal'),
(9, 'Centro de Salud'),
(14, 'Escuela para Sordos'),
(7, 'Escuelas'),
(4, 'Farmacias'),
(12, 'Iglesia'),
(8, 'Liceos'),
(1, 'Mercado'),
(13, 'Mercal'),
(5, 'Plazas y Parques'),
(6, 'Preescolar');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `admin_sistema_electrico`
--

CREATE TABLE IF NOT EXISTS `admin_sistema_electrico` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `admin_sistema_electrico`
--

INSERT INTO `admin_sistema_electrico` (`id`, `nombre`) VALUES
(1, 'Electrificado Público'),
(3, 'No tiene'),
(2, 'Planta Eléctrica Propia');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `admin_tipo_ayuda_especial`
--

CREATE TABLE IF NOT EXISTS `admin_tipo_ayuda_especial` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `admin_tipo_ayuda_especial`
--

INSERT INTO `admin_tipo_ayuda_especial` (`id`, `nombre`) VALUES
(13, 'Medicinas'),
(14, 'Marcapasos'),
(15, 'Glaucoma');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `admin_tipo_condicion_terreno`
--

CREATE TABLE IF NOT EXISTS `admin_tipo_condicion_terreno` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `admin_tipo_condicion_terreno`
--

INSERT INTO `admin_tipo_condicion_terreno` (`id`, `nombre`) VALUES
(1, 'Estable'),
(2, 'Inestable');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `admin_tipo_enseres`
--

CREATE TABLE IF NOT EXISTS `admin_tipo_enseres` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `admin_tipo_enseres`
--

INSERT INTO `admin_tipo_enseres` (`id`, `nombre`) VALUES
(4, 'Camas'),
(2, 'Cocina'),
(13, 'Comedor'),
(3, 'Gabineta'),
(6, 'Juego de Comedor'),
(7, 'Muebles de Sala'),
(1, 'Nevera'),
(12, 'Películas'),
(10, 'TV'),
(9, 'Utensilios de Cocina'),
(5, 'Ventilador');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `admin_tipo_gas`
--

CREATE TABLE IF NOT EXISTS `admin_tipo_gas` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `admin_tipo_gas`
--

INSERT INTO `admin_tipo_gas` (`id`, `nombre`) VALUES
(1, 'Bombonas'),
(3, 'No posee'),
(2, 'Tubería');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `admin_tipo_habitaciones_vivienda`
--

CREATE TABLE IF NOT EXISTS `admin_tipo_habitaciones_vivienda` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `admin_tipo_habitaciones_vivienda`
--

INSERT INTO `admin_tipo_habitaciones_vivienda` (`id`, `nombre`) VALUES
(4, 'Baño'),
(3, 'Cocina'),
(2, 'Comedor'),
(1, 'Sala');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `admin_tipo_ingresos`
--

CREATE TABLE IF NOT EXISTS `admin_tipo_ingresos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `admin_tipo_ingresos`
--

INSERT INTO `admin_tipo_ingresos` (`id`, `nombre`) VALUES
(3, '201 a 600'),
(4, '601 a 2000'),
(5, 'Menos de 1 Salario Minímo'),
(2, 'Menos de 200.000'),
(1, 'Ninguno');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `admin_tipo_mascotas`
--

CREATE TABLE IF NOT EXISTS `admin_tipo_mascotas` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `admin_tipo_mascotas`
--

INSERT INTO `admin_tipo_mascotas` (`id`, `nombre`) VALUES
(7, 'Cabras'),
(6, 'Cochinos'),
(4, 'Gallinas'),
(2, 'Gato'),
(3, 'Pajáros'),
(1, 'Perro');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `admin_tipo_padecencia`
--

CREATE TABLE IF NOT EXISTS `admin_tipo_padecencia` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `admin_tipo_padecencia`
--

INSERT INTO `admin_tipo_padecencia` (`id`, `nombre`) VALUES
(10, 'Asma'),
(9, 'Corazón'),
(3, 'Daltonismo'),
(2, 'Diabetes'),
(8, 'Glaucoma'),
(6, 'Hipersensibilidad al Aire'),
(5, 'Hipertensión'),
(7, 'Síndrome Nefritico');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `admin_tipo_paredes`
--

CREATE TABLE IF NOT EXISTS `admin_tipo_paredes` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `admin_tipo_paredes`
--

INSERT INTO `admin_tipo_paredes` (`id`, `nombre`) VALUES
(4, 'Baharaque o Adobe'),
(6, 'Cartón Piedra'),
(1, 'Frisadas'),
(2, 'Sin Frizar'),
(3, 'Tablas'),
(5, 'Zinc');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `admin_tipo_plagas`
--

CREATE TABLE IF NOT EXISTS `admin_tipo_plagas` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `admin_tipo_plagas`
--

INSERT INTO `admin_tipo_plagas` (`id`, `nombre`) VALUES
(5, 'Ciempies'),
(4, 'Cucarachas'),
(3, 'Hormigas'),
(1, 'Moscas'),
(2, 'Ratones');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `admin_tipo_situacion`
--

CREATE TABLE IF NOT EXISTS `admin_tipo_situacion` (
  `id` int(11) NOT NULL,
  `situacion` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `admin_tipo_situacion`
--

INSERT INTO `admin_tipo_situacion` (`id`, `situacion`) VALUES
(4, 'Discapacitados'),
(3, 'Enfermos terminales'),
(2, 'Indigentes'),
(1, 'Niños en la Calle'),
(5, 'Tercera Edad');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `admin_tipo_situacion_exclusion`
--

CREATE TABLE IF NOT EXISTS `admin_tipo_situacion_exclusion` (
  `id` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `situacion_id` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `admin_tipo_situacion_exclusion`
--

INSERT INTO `admin_tipo_situacion_exclusion` (`id`, `cantidad`, `situacion_id`) VALUES
(1, 1, 5),
(2, 1, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `admin_tipo_techo`
--

CREATE TABLE IF NOT EXISTS `admin_tipo_techo` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `admin_tipo_techo`
--

INSERT INTO `admin_tipo_techo` (`id`, `nombre`) VALUES
(2, 'Asbesto'),
(6, 'Machihembrado'),
(1, 'Platabanda'),
(4, 'Taja'),
(7, 'Techo Razo'),
(5, 'Zinc');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `admin_tipo_telefonia`
--

CREATE TABLE IF NOT EXISTS `admin_tipo_telefonia` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `admin_tipo_telefonia`
--

INSERT INTO `admin_tipo_telefonia` (`id`, `nombre`) VALUES
(1, 'Celular'),
(3, 'Centro de Conexión'),
(2, 'Domiciliaría'),
(4, 'No Posee'),
(5, 'Prepago');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `admin_tipo_tenencia`
--

CREATE TABLE IF NOT EXISTS `admin_tipo_tenencia` (
  `id` int(11) NOT NULL,
  `forma` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `admin_tipo_tenencia`
--

INSERT INTO `admin_tipo_tenencia` (`id`, `forma`) VALUES
(2, 'Alquilada'),
(3, 'Compartida'),
(4, 'Invadida'),
(6, 'Prestada'),
(1, 'Propia'),
(5, 'Traspasada');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `admin_tipo_transporte`
--

CREATE TABLE IF NOT EXISTS `admin_tipo_transporte` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `admin_tipo_transporte`
--

INSERT INTO `admin_tipo_transporte` (`id`, `nombre`) VALUES
(3, 'Bestias'),
(4, 'Privado (Taxi)'),
(1, 'Propio'),
(2, 'Público');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `admin_tipo_vivienda`
--

CREATE TABLE IF NOT EXISTS `admin_tipo_vivienda` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `admin_tipo_vivienda`
--

INSERT INTO `admin_tipo_vivienda` (`id`, `nombre`) VALUES
(3, 'Apartamento'),
(5, 'Barraca'),
(2, 'Casa'),
(6, 'Habitación o Anexo'),
(1, 'Quinta'),
(4, 'Rancho');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `admin_ubicacion_trabajo`
--

CREATE TABLE IF NOT EXISTS `admin_ubicacion_trabajo` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `admin_ubicacion_trabajo`
--

INSERT INTO `admin_ubicacion_trabajo` (`id`, `nombre`) VALUES
(5, 'Buhonería'),
(3, 'Comercial'),
(1, 'Institución Pública'),
(4, 'Por cuenta propia'),
(2, 'Privada');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `admin_venta_vivienda`
--

CREATE TABLE IF NOT EXISTS `admin_venta_vivienda` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `admin_venta_vivienda`
--

INSERT INTO `admin_venta_vivienda` (`id`, `nombre`) VALUES
(5, 'Cervezas'),
(1, 'Dulces'),
(3, 'Empanadas'),
(29, 'Helados'),
(7, 'Hielo'),
(6, 'Maltas'),
(4, 'Refrescos');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bitacora`
--

CREATE TABLE IF NOT EXISTS `bitacora` (
  `id` int(11) NOT NULL,
  `usuario` int(11) DEFAULT NULL,
  `accion` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `detalles` longtext COLLATE utf8_unicode_ci NOT NULL,
  `fecha` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=301 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `bitacora`
--

INSERT INTO `bitacora` (`id`, `usuario`, `accion`, `detalles`, `fecha`) VALUES
(1, 1, 'modificó', 'Unidad Ejecutiva', '2016-08-14 21:55:58'),
(2, 1, 'modificó', 'Unidad Ejecutiva', '2016-08-14 21:56:52'),
(3, 1, 'modificó', 'Unidad de Contraloría Social', '2016-08-14 21:57:07'),
(4, 1, 'modificó', 'Unidad Administrativa y Financiera Comunitaria', '2016-08-14 21:57:22'),
(5, 1, 'modificó', 'Comisión Electoral Permanente', '2016-08-14 21:57:34'),
(6, 1, 'agregó', 'un Jefe de Grupo Familiar', '2016-08-14 22:08:38'),
(7, 1, 'eliminó', 'Quincenal de los parámetros de la Clasificación Ingreso Familiar del sistema', '2016-08-14 22:10:27'),
(8, 1, 'agregó', 'un nuevo tipo de la Clasificación del Ingreso Familiar a los parámetros del sistema', '2016-08-14 22:12:11'),
(9, 1, 'agregó', 'un Jefe de Grupo Familiar', '2016-08-14 22:15:26'),
(10, 1, 'eliminó', 'Quincenal de los parámetros de la Clasificación Ingreso Familiar del sistema', '2016-08-14 22:15:41'),
(11, 1, 'agregó', 'un nuevo tipo de la Clasificación del Ingreso Familiar a los parámetros del sistema', '2016-08-14 22:16:42'),
(12, 1, 'agregó', 'un Jefe de Grupo Familiar', '2016-08-14 22:17:43'),
(13, 1, 'eliminó', 'Quincenal de los parámetros de la Clasificación Ingreso Familiar del sistema', '2016-08-14 22:18:01'),
(14, 1, 'agregó', 'un nuevo tipo de la Clasificación del Ingreso Familiar a los parámetros del sistema', '2016-08-14 22:18:49'),
(15, 1, 'modificó', 'un Jefe de Grupo Familiar', '2016-08-14 22:19:08'),
(16, 1, 'modificó', 'un Jefe de Grupo Familiar', '2016-08-14 22:20:44'),
(17, 1, 'modificó', 'un Jefe de Grupo Familiar', '2016-08-14 22:21:24'),
(18, 1, 'modificó', 'un Jefe de Grupo Familiar', '2016-08-14 22:22:11'),
(19, 1, 'modificó', 'un Jefe de Grupo Familiar', '2016-08-14 22:22:41'),
(20, 1, 'modificó', 'un Jefe de Grupo Familiar', '2016-08-14 22:24:20'),
(21, 1, 'modificó', 'un Jefe de Grupo Familiar', '2016-08-14 22:24:41'),
(22, 1, 'modificó', 'un Jefe de Grupo Familiar', '2016-08-14 22:26:52'),
(23, 1, 'modificó', 'un Jefe de Grupo Familiar', '2016-08-14 22:28:01'),
(24, 1, 'modificó', 'un Jefe de Grupo Familiar', '2016-08-14 22:30:40'),
(25, 1, 'continuó', 'con el llenado de la encuesta 3', '2016-08-14 22:31:00'),
(26, 1, 'agregó', 'un Grupo Familiar', '2016-08-14 22:31:55'),
(27, 1, 'agregó', 'a Erika del M Villegas Machado al Grupo Familiar Brito Leal', '2016-08-14 22:33:22'),
(28, 1, 'agregó', 'un Situación Económica a la planilla 3', '2016-08-14 22:36:55'),
(29, 1, 'eliminó', 'Bambinos de los parámetros de Venta Vivienda del sistema', '2016-08-14 22:37:32'),
(30, 1, 'eliminó', 'CD Quemaditos de los parámetros de Venta Vivienda del sistema', '2016-08-14 22:38:29'),
(31, 1, 'agregó', 'un nuevo tipo de Venta Vivienda a los parámetros del sistema', '2016-08-14 22:38:54'),
(32, 1, 'modificó', 'la informacion Situación Económica de la planilla 3', '2016-08-14 22:40:10'),
(33, 1, 'modificó', 'la informacion Situación Económica de la planilla 3', '2016-08-14 22:41:39'),
(34, 1, 'continuó', 'con el llenado de la encuesta 3', '2016-08-14 22:42:18'),
(35, 1, 'agregó', 'un nuevo tipo de condición de terreno vivienda a los parámetros del sistema', '2016-08-14 22:45:56'),
(36, 1, 'agregó', 'un nuevo tipo de condición de terreno vivienda a los parámetros del sistema', '2016-08-14 22:46:17'),
(37, 1, 'agregó', 'un Situación de Vivienda a la planilla 3', '2016-08-14 22:47:50'),
(38, 1, 'eliminó', 'Jacuzzi de los parámetros de Tipo de Habitación del sistema', '2016-08-14 22:48:07'),
(39, 1, 'eliminó', 'Jardin de los parámetros de Tipo de Habitación del sistema', '2016-08-14 22:48:19'),
(40, 1, 'modificó', 'la informacion Situación de Salud de la planilla 3', '2016-08-14 22:49:07'),
(41, 1, 'eliminó', 'Terraza de los parámetros de Tipo de Habitación del sistema', '2016-08-14 22:49:27'),
(42, 1, 'continuó', 'con el llenado de la encuesta 3', '2016-08-14 22:49:56'),
(43, 1, 'agregó', 'un Situación de Salud a la planilla 3', '2016-08-14 22:56:42'),
(44, 1, 'eliminó', 'Aaron Samuels de los parámetros de Tipo de Recolección de Basura del sistema', '2016-08-14 23:01:36'),
(45, 1, 'eliminó', 'Hannukka de los parámetros de Tipo de Transporte del sistema', '2016-08-14 23:02:15'),
(46, 1, 'agregó', 'un nuevo tipo de Tipo de Telefonía a los parámetros del sistema', '2016-08-14 23:02:32'),
(47, 1, 'agregó', 'un Situación de Servicios a la planilla 3', '2016-08-14 23:03:05'),
(48, 1, 'modificó', 'un parámetro de Pregunta', '2016-08-14 23:09:10'),
(49, 1, 'agregó', 'un nuevo tipo de Pregunta a los parámetros del sistema', '2016-08-14 23:10:19'),
(50, 1, 'agregó', 'un nuevo tipo de Pregunta a los parámetros del sistema', '2016-08-14 23:10:58'),
(51, 1, 'agregó', 'un nuevo tipo de Pregunta a los parámetros del sistema', '2016-08-14 23:11:44'),
(52, 1, 'agregó', 'información de Participación Comunitaria', '2016-08-14 23:13:13'),
(53, 1, 'agregó', 'La Situación de Comunidad a la planilla 3', '2016-08-14 23:16:44'),
(54, 1, 'eliminó', 'PeTAs de los parámetros de Organizaciones Comunitarias del sistema', '2016-08-14 23:40:10'),
(55, 1, 'eliminó', 'Organización 2 de los parámetros de Organizaciones Comunitarias del sistema', '2016-08-14 23:40:25'),
(56, 1, 'eliminó', 'Organización 1 de los parámetros de Organizaciones Comunitarias del sistema', '2016-08-14 23:40:39'),
(57, 1, 'eliminó', 'Niños en la calle de los parámetros de Tipo de Situación Exclusión del sistema', '2016-08-14 23:42:55'),
(58, 1, 'eliminó', 'Niños en la calle de los parámetros de Tipo de Situación Exclusión del sistema', '2016-08-14 23:43:08'),
(59, 1, 'eliminó', 'Pobreza extrema de los parámetros de Tipo de Situación Exclusión del sistema', '2016-08-14 23:43:22'),
(60, 1, 'eliminó', 'Patos de los parámetros de Tipo de Mascota del sistema', '2016-08-14 23:44:46'),
(61, 1, 'eliminó', 'Suegras de los parámetros de Tipo de Plaga del sistema', '2016-08-14 23:45:14'),
(62, 1, 'eliminó', 'Ingenieria Civil de los parámetros de Tipo de Profesión del sistema', '2016-08-14 23:50:37'),
(63, 1, 'eliminó', 'Escritor de los parámetros de Tipo de Profesión del sistema', '2016-08-14 23:51:24'),
(64, 1, 'modificó', 'un parámetro de Nivel de Instrucción', '2016-08-14 23:52:09'),
(65, 1, 'modificó', 'un Grupo Familiar', '2016-08-14 23:56:40'),
(66, 1, 'modificó', 'un Grupo Familiar', '2016-08-15 00:04:08'),
(67, 1, 'modificó', 'un Grupo Familiar', '2016-08-15 00:04:34'),
(68, 1, 'agregó', 'un Jefe de Grupo Familiar', '2016-08-15 10:21:27'),
(69, 1, 'agregó', 'un Grupo Familiar', '2016-08-15 10:22:08'),
(70, 1, 'eliminó', 'Protan Color Deficency de los parámetros de Discapacidades del sistema', '2016-08-15 10:27:26'),
(71, 1, 'agregó', 'un nuevo tipo de Discapacidad a los parámetros del sistema', '2016-08-15 10:27:43'),
(72, 1, 'agregó', 'a Bregdinson Tineo Carrasquel al Grupo Familiar Carrasquel Roa', '2016-08-15 11:11:04'),
(73, 1, 'agregó', 'a Yostyn Tineo al Grupo Familiar Carrasquel Roa', '2016-08-15 11:20:54'),
(74, 1, 'modificó', 'un Grupo Familiar', '2016-08-15 11:25:26'),
(75, 1, 'modificó', 'un Grupo Familiar', '2016-08-15 11:26:41'),
(76, 1, 'modificó', 'los datos de Bregdinson Tineo Carrasquel', '2016-08-15 11:29:57'),
(77, 1, 'continuó', 'con el llenado de la encuesta 4', '2016-08-15 11:31:40'),
(78, 1, 'agregó', 'un Situación Económica a la planilla 4', '2016-08-15 11:32:16'),
(79, 1, 'continuó', 'con el llenado de la encuesta 4', '2016-08-15 11:33:54'),
(80, 1, 'agregó', 'un Situación de Vivienda a la planilla 4', '2016-08-15 11:35:29'),
(81, 1, 'agregó', 'un Situación de Salud a la planilla 4', '2016-08-15 11:38:33'),
(82, 1, 'agregó', 'un nuevo tipo de Tipo de Telefonía a los parámetros del sistema', '2016-08-15 11:42:44'),
(83, 1, 'agregó', 'un Situación de Servicios a la planilla 4', '2016-08-15 11:43:28'),
(84, 1, 'agregó', 'información de Participación Comunitaria', '2016-08-15 11:50:49'),
(85, 1, 'agregó', 'La Situación de Comunidad a la planilla 4', '2016-08-15 11:51:06'),
(86, 1, 'modificó', 'La Participación Comunitaria de la planilla 4', '2016-08-15 12:04:31'),
(87, 1, 'modificó', 'La Participación Comunitaria de la planilla 4', '2016-08-15 12:08:10'),
(88, 1, 'agregó', 'un Jefe de Grupo Familiar', '2016-08-15 12:42:37'),
(89, 1, 'agregó', 'un Grupo Familiar', '2016-08-15 12:43:31'),
(90, 1, 'agregó', 'a Ana Zerpa al Grupo Familiar Rodriguez', '2016-08-15 13:36:11'),
(91, 1, 'agregó', 'a Carlos Zerpa al Grupo Familiar Rodriguez', '2016-08-15 13:37:32'),
(92, 1, 'modificó', 'un parámetro de Tipo de Profesión', '2016-08-15 13:38:03'),
(93, 1, 'agregó', 'a Ana K Zerpa al Grupo Familiar Rodriguez', '2016-08-15 13:41:48'),
(94, 1, 'agregó', 'a Carla Zerpa al Grupo Familiar Rodriguez', '2016-08-15 13:43:19'),
(95, 1, 'agregó', 'un Situación Económica a la planilla 5', '2016-08-15 13:44:50'),
(96, 1, 'agregó', 'un Situación de Vivienda a la planilla 5', '2016-08-15 13:48:06'),
(97, 1, 'agregó', 'un Situación de Salud a la planilla 5', '2016-08-15 13:49:42'),
(98, 1, 'agregó', 'un Situación de Servicios a la planilla 5', '2016-08-15 13:52:23'),
(99, 1, 'agregó', 'información de Participación Comunitaria', '2016-08-15 13:53:31'),
(100, 1, 'agregó', 'La Situación de Comunidad a la planilla 5', '2016-08-15 13:54:13'),
(101, 1, 'modificó', 'la informacion Situación de Servicios de la planilla 5', '2016-08-15 14:17:08'),
(102, 1, 'modificó', 'la informacion Situación de Servicios de la planilla 5', '2016-08-15 14:18:29'),
(103, 1, 'agregó', 'un Jefe de Grupo Familiar', '2016-08-15 14:26:03'),
(104, 1, 'modificó', 'un Jefe de Grupo Familiar', '2016-08-15 14:27:32'),
(105, 1, 'modificó', 'un Jefe de Grupo Familiar', '2016-08-15 14:27:58'),
(106, 1, 'continuó', 'con el llenado de la encuesta 6', '2016-08-15 14:28:13'),
(107, 1, 'agregó', 'un Grupo Familiar', '2016-08-15 14:29:52'),
(108, 1, 'agregó', 'a Belkis De Parra al Grupo Familiar Parra Morales', '2016-08-15 14:35:58'),
(109, 1, 'agregó', 'a Fernando Parra al Grupo Familiar Parra Morales', '2016-08-15 14:37:10'),
(110, 1, 'agregó', 'a Richard Parra al Grupo Familiar Parra Morales', '2016-08-15 14:38:15'),
(111, 1, 'agregó', 'a Javier Parra al Grupo Familiar Parra Morales', '2016-08-15 14:39:51'),
(112, 1, 'agregó', 'a Xavier Parra al Grupo Familiar Parra Morales', '2016-08-15 14:43:05'),
(113, 1, 'agregó', 'a Mathias Parra al Grupo Familiar Parra Morales', '2016-08-15 14:44:14'),
(114, 1, 'agregó', 'a María Parra al Grupo Familiar Parra Morales', '2016-08-15 14:45:34'),
(115, 1, 'eliminó', 'Beisbolista Profesional de los parámetros de Tipo de Profesión del sistema', '2016-08-15 14:48:11'),
(116, 1, 'agregó', 'a Maria Gabriela Parra al Grupo Familiar Parra Morales', '2016-08-15 14:54:22'),
(118, 1, 'agregó', 'un Situación Económica a la planilla 6', '2016-08-15 15:00:29'),
(119, 1, 'agregó', 'un Situación de Vivienda a la planilla 6', '2016-08-15 15:02:54'),
(120, 1, 'agregó', 'un Situación de Salud a la planilla 6', '2016-08-15 15:03:31'),
(121, 1, 'agregó', 'un Situación de Servicios a la planilla 6', '2016-08-15 15:05:33'),
(122, 1, 'agregó', 'información de Participación Comunitaria', '2016-08-15 15:08:41'),
(123, 1, 'agregó', 'La Situación de Comunidad a la planilla 6', '2016-08-15 15:10:00'),
(124, 1, 'modificó', 'la informacion Situación de Servicios de la planilla 6', '2016-08-15 15:38:59'),
(125, 1, 'modificó', 'La Participación Comunitaria de la planilla 6', '2016-08-15 16:03:23'),
(126, 2, 'agregó', 'un Jefe de Grupo Familiar', '2016-08-15 23:45:03'),
(127, 2, 'agregó', 'un Grupo Familiar', '2016-08-15 23:45:50'),
(128, 2, 'agregó', 'a Noris Mendoza al Grupo Familiar Mendoza', '2016-08-15 23:50:37'),
(129, 2, 'modificó', 'un Jefe de Grupo Familiar', '2016-08-15 23:52:15'),
(130, 2, 'continuó', 'con el llenado de la encuesta 7', '2016-08-15 23:52:22'),
(131, 2, 'agregó', 'a Sebastian Mendoza al Grupo Familiar Mendoza', '2016-08-15 23:55:51'),
(132, 2, 'continuó', 'con el llenado de la encuesta 7', '2016-08-15 23:55:58'),
(133, 2, 'agregó', 'un Situación Económica a la planilla 7', '2016-08-15 23:56:30'),
(134, 2, 'agregó', 'un Situación de Vivienda a la planilla 7', '2016-08-16 00:00:48'),
(135, 2, 'agregó', 'un Situación de Salud a la planilla 7', '2016-08-16 00:01:50'),
(136, 2, 'agregó', 'un Situación de Servicios a la planilla 7', '2016-08-16 00:09:48'),
(137, 2, 'agregó', 'información de Participación Comunitaria', '2016-08-16 00:10:33'),
(138, 2, 'agregó', 'La Situación de Comunidad a la planilla 7', '2016-08-16 00:11:11'),
(139, 2, 'agregó', 'un Jefe de Grupo Familiar', '2016-08-16 13:48:10'),
(140, 2, 'agregó', 'un Grupo Familiar', '2016-08-16 13:49:09'),
(141, 2, 'agregó', 'a Diana Martinez Noguera al Grupo Familiar Noguera Escobar', '2016-08-16 13:50:04'),
(142, 2, 'agregó', 'a Diego Martinez Noguera al Grupo Familiar Noguera Escobar', '2016-08-16 13:55:13'),
(143, 2, 'agregó', 'un Situación Económica a la planilla 8', '2016-08-16 13:58:10'),
(144, 2, 'agregó', 'un Situación de Vivienda a la planilla 8', '2016-08-16 13:59:30'),
(145, 2, 'agregó', 'un Situación de Salud a la planilla 8', '2016-08-16 14:00:42'),
(146, 2, 'agregó', 'un Situación de Servicios a la planilla 8', '2016-08-16 14:03:18'),
(147, 2, 'modificó', 'la informacion Situación de Servicios de la planilla 8', '2016-08-16 14:04:06'),
(148, 2, 'agregó', 'información de Participación Comunitaria', '2016-08-16 14:04:55'),
(149, 2, 'modificó', 'La Participación Comunitaria de la planilla 8', '2016-08-16 14:05:43'),
(150, 2, 'agregó', 'La Situación de Comunidad a la planilla 8', '2016-08-16 14:07:20'),
(151, 2, 'agregó', 'un Jefe de Grupo Familiar', '2016-08-16 15:48:10'),
(152, 2, 'agregó', 'un Grupo Familiar', '2016-08-16 16:14:55'),
(153, 2, 'modificó', 'un Grupo Familiar', '2016-08-16 16:43:57'),
(154, 2, 'agregó', 'a Carmen Luisa Salcedo al Grupo Familiar García De Salacedo', '2016-08-16 16:55:17'),
(155, 2, 'agregó', 'a María Eugenia Salcedo al Grupo Familiar García De Salacedo', '2016-08-16 16:56:39'),
(156, 2, 'modificó', 'los datos de María Eugenia Salcedo', '2016-08-16 16:57:02'),
(157, 2, 'agregó', 'a Cesar Alonzo Salcedo al Grupo Familiar García De Salacedo', '2016-08-16 17:01:48'),
(158, 2, 'agregó', 'a Santiago Josein Rios Salcedo al Grupo Familiar García De Salacedo', '2016-08-16 17:03:25'),
(159, 2, 'agregó', 'a Michel Stefany Salcedo al Grupo Familiar García De Salacedo', '2016-08-16 17:05:03'),
(160, 2, 'agregó', 'a Ashley Valeria Salcedo al Grupo Familiar García De Salacedo', '2016-08-16 17:05:54'),
(161, 2, 'continuó', 'con el llenado de la encuesta 9', '2016-08-16 17:06:24'),
(162, 2, 'agregó', 'un Situación Económica a la planilla 9', '2016-08-16 17:06:51'),
(163, 2, 'agregó', 'un Situación de Vivienda a la planilla 9', '2016-08-16 17:08:39'),
(164, 2, 'agregó', 'un Situación de Salud a la planilla 9', '2016-08-16 17:09:41'),
(165, 2, 'agregó', 'un Situación de Servicios a la planilla 9', '2016-08-16 17:12:30'),
(166, 2, 'agregó', 'información de Participación Comunitaria', '2016-08-16 17:12:51'),
(167, 2, 'continuó', 'con el llenado de la encuesta 9', '2016-08-16 17:13:32'),
(168, 2, 'modificó', 'La Participación Comunitaria de la planilla 9', '2016-08-16 17:13:52'),
(169, 2, 'continuó', 'con el llenado de la encuesta 9', '2016-08-16 17:14:01'),
(170, 2, 'agregó', 'La Situación de Comunidad a la planilla 9', '2016-08-16 17:14:17'),
(171, 2, 'modificó', 'un Grupo Familiar', '2016-08-16 18:08:16'),
(172, 2, 'modificó', 'un Jefe de Grupo Familiar', '2016-08-16 18:13:59'),
(173, 2, 'modificó', 'la informacion Situación Económica de la planilla 8', '2016-08-16 18:17:43'),
(174, 2, 'modificó', 'la informacion Situación de Salud de la planilla 8', '2016-08-16 18:40:45'),
(175, 2, 'modificó', 'la informacion Situación de Servicios de la planilla 8', '2016-08-16 18:47:45'),
(176, 2, 'modificó', 'la informacion Situación de Servicios de la planilla 8', '2016-08-16 18:49:51'),
(177, 1, 'agregó', 'un Jefe de Grupo Familiar', '2016-08-16 23:19:22'),
(178, 1, 'agregó', 'un Grupo Familiar', '2016-08-16 23:22:40'),
(179, 1, 'continuó', 'con el llenado de la encuesta 10', '2016-08-16 23:26:25'),
(180, 1, 'agregó', 'un nuevo tipo de Discapacidad a los parámetros del sistema', '2016-08-16 23:28:51'),
(181, 1, 'modificó', 'un parámetro de Discapacidades', '2016-08-16 23:29:07'),
(182, 1, 'continuó', 'con el llenado de la encuesta 10', '2016-08-16 23:29:40'),
(183, 1, 'agregó', 'a Andres R Malpica Viloria al Grupo Familiar Malpica Viloria', '2016-08-16 23:31:22'),
(184, 1, 'agregó', 'a Pedro Eleazar Malpica Viloria al Grupo Familiar Malpica Viloria', '2016-08-16 23:32:32'),
(185, 1, 'agregó', 'a Angelica B Malpica Viloria al Grupo Familiar Malpica Viloria', '2016-08-16 23:34:20'),
(186, 1, 'agregó', 'un Situación Económica a la planilla 10', '2016-08-16 23:36:21'),
(187, 1, 'agregó', 'un Situación de Vivienda a la planilla 10', '2016-08-16 23:38:13'),
(188, 1, 'agregó', 'un Situación de Salud a la planilla 10', '2016-08-16 23:43:09'),
(189, 1, 'agregó', 'un Situación de Servicios a la planilla 10', '2016-08-16 23:46:02'),
(190, 1, 'agregó', 'información de Participación Comunitaria', '2016-08-16 23:46:29'),
(191, 1, 'modificó', 'La Participación Comunitaria de la planilla 10', '2016-08-16 23:47:38'),
(192, 1, 'continuó', 'con el llenado de la encuesta 10', '2016-08-16 23:47:45'),
(193, 1, 'agregó', 'La Situación de Comunidad a la planilla 10', '2016-08-16 23:48:03'),
(194, 1, 'agregó', 'un Jefe de Grupo Familiar', '2016-08-17 12:33:11'),
(195, 1, 'agregó', 'un Grupo Familiar', '2016-08-17 12:34:02'),
(196, 1, 'agregó', 'a Dinalva Rivero al Grupo Familiar Rivero', '2016-08-17 12:35:51'),
(197, 1, 'agregó', 'a Manuel Rivero al Grupo Familiar Rivero', '2016-08-17 12:37:01'),
(198, 1, 'agregó', 'a Juan C Zapata Rivero al Grupo Familiar Rivero', '2016-08-17 12:38:12'),
(199, 1, 'agregó', 'un Situación Económica a la planilla 11', '2016-08-17 12:38:34'),
(200, 1, 'agregó', 'un Situación de Vivienda a la planilla 11', '2016-08-17 12:40:34'),
(201, 1, 'agregó', 'un Situación de Salud a la planilla 11', '2016-08-17 12:41:08'),
(202, 1, 'agregó', 'un Situación de Servicios a la planilla 11', '2016-08-17 12:42:53'),
(203, 1, 'agregó', 'información de Participación Comunitaria', '2016-08-17 12:43:38'),
(204, 1, 'agregó', 'La Situación de Comunidad a la planilla 11', '2016-08-17 12:43:47'),
(205, 2, 'agregó', 'un Jefe de Grupo Familiar', '2016-08-17 14:47:32'),
(206, 2, 'agregó', 'un Grupo Familiar', '2016-08-17 14:48:00'),
(207, 2, 'agregó', 'a Gilbert Jesus Moreno al Grupo Familiar Salcedo García', '2016-08-17 14:59:16'),
(208, 2, 'agregó', 'a Grisell Andrea Salcedo al Grupo Familiar Salcedo García', '2016-08-17 15:00:37'),
(209, 2, 'agregó', 'a Gissel Cristine Salcedo al Grupo Familiar Salcedo García', '2016-08-17 15:01:29'),
(210, 2, 'continuó', 'con el llenado de la encuesta 12', '2016-08-17 15:01:41'),
(211, 2, 'agregó', 'un Situación Económica a la planilla 12', '2016-08-17 15:02:37'),
(212, 2, 'agregó', 'un Situación de Vivienda a la planilla 12', '2016-08-17 15:04:11'),
(213, 2, 'agregó', 'un Situación de Salud a la planilla 12', '2016-08-17 15:06:55'),
(214, 2, 'agregó', 'un Situación de Servicios a la planilla 12', '2016-08-17 15:09:16'),
(215, 2, 'agregó', 'información de Participación Comunitaria', '2016-08-17 15:10:26'),
(216, 2, 'agregó', 'La Situación de Comunidad a la planilla 12', '2016-08-17 15:12:26'),
(217, 1, 'modificó', 'La Participación Comunitaria de la planilla 6', '2016-08-20 09:40:08'),
(218, 1, 'modificó', 'la información de la Comunidad.', '2016-08-20 16:41:57'),
(219, 1, 'generó', 'un PDF de la planilla 9', '2016-08-21 00:00:27'),
(220, 1, 'generó', 'un PDF de la planilla 9', '2016-08-21 00:01:29'),
(221, 1, 'generó', 'un PDF de la planilla 9', '2016-08-21 00:02:09'),
(222, 1, 'generó', 'un PDF de la planilla 11', '2016-08-21 00:10:19'),
(223, 1, 'generó', 'un PDF de la planilla 12', '2016-08-22 11:05:30'),
(224, 1, 'generó', 'un PDF de la planilla 12', '2016-08-22 11:11:41'),
(225, 1, 'generó', 'un PDF de la planilla 12', '2016-08-22 11:22:11'),
(226, 1, 'generó', 'un PDF de la planilla 12', '2016-08-22 11:22:50'),
(227, 1, 'generó', 'un PDF de la planilla 12', '2016-08-22 11:23:49'),
(228, 1, 'generó', 'un PDF de la planilla 10', '2016-08-22 11:24:38'),
(229, 1, 'modificó', 'la información del Consejo Comunal.', '2016-08-22 11:26:28'),
(230, 1, 'generó', 'un PDF de la planilla 10', '2016-08-22 11:26:41'),
(231, 1, 'generó', 'un PDF de la planilla 12', '2016-08-22 11:27:13'),
(232, 1, 'generó', 'un PDF de la planilla 12', '2016-08-22 11:27:16'),
(233, 1, 'generó', 'un PDF de la planilla 6', '2016-08-22 11:30:37'),
(234, 1, 'generó', 'un PDF de la planilla 6', '2016-08-22 11:32:39'),
(235, 1, 'generó', 'un PDF de la planilla 6', '2016-08-22 11:33:46'),
(236, 1, 'generó', 'un PDF de la planilla 6', '2016-08-22 11:34:41'),
(237, 1, 'generó', 'un PDF de la planilla 6', '2016-08-22 11:36:12'),
(238, 1, 'generó', 'un PDF de la planilla 6', '2016-08-22 11:44:14'),
(239, 1, 'generó', 'un PDF de la planilla 11', '2016-08-23 19:15:23'),
(240, 1, 'generó', 'un PDF de la planilla 11', '2016-08-23 19:17:49'),
(241, 1, 'generó', 'un PDF de la planilla 11', '2016-08-23 19:19:11'),
(242, 1, 'generó', 'un PDF de la planilla 11', '2016-08-23 19:21:04'),
(243, 1, 'generó', 'un PDF de la planilla 11', '2016-08-23 19:22:47'),
(244, 1, 'generó', 'un PDF de la planilla 6', '2016-08-24 17:31:29'),
(245, 1, 'generó', 'un PDF de la planilla 6', '2016-08-24 17:31:33'),
(246, 1, 'generó', 'un PDF de la planilla 6', '2016-08-24 17:33:11'),
(247, 1, 'generó', 'un PDF de la planilla 6', '2016-08-24 17:39:26'),
(248, 1, 'generó', 'un PDF de la planilla 9', '2016-08-26 22:54:28'),
(249, 1, 'generó', 'un PDF de la planilla 9', '2016-08-26 22:54:33'),
(250, 1, 'modificó', 'la informacion Situación de Salud de la planilla 11', '2016-08-28 22:07:21'),
(251, 1, 'agregó', 'un nuevo tipo de Situación de Exclusión a los parámetros del sistema', '2016-08-28 23:14:57'),
(252, 1, 'agregó', 'un nuevo tipo de Situación de Exclusión a los parámetros del sistema', '2016-08-28 23:15:19'),
(253, 1, 'agregó', 'un nuevo tipo de Situación de Exclusión a los parámetros del sistema', '2016-08-28 23:15:45'),
(254, 1, 'agregó', 'un nuevo tipo de Situación de Exclusión a los parámetros del sistema', '2016-08-28 23:16:11'),
(255, 1, 'modificó', 'la informacion Situación de Salud de la planilla 11', '2016-08-28 23:17:13'),
(256, 1, 'modificó', 'la informacion Situación de Salud de la planilla 11', '2016-08-28 23:42:01'),
(257, 1, 'modificó', 'la informacion Situación de Salud de la planilla 11', '2016-08-28 23:42:39'),
(258, 1, 'modificó', 'la informacion Situación de Salud de la planilla 11', '2016-08-28 23:43:19'),
(259, 1, 'modificó', 'la informacion Situación de Salud de la planilla 11', '2016-08-28 23:48:48'),
(260, 1, 'modificó', 'la informacion Situación de Salud de la planilla 11', '2016-08-28 23:54:26'),
(261, 1, 'modificó', 'la informacion Situación de Salud de la planilla 11', '2016-08-29 00:00:49'),
(262, 1, 'modificó', 'la informacion Situación de Salud de la planilla 11', '2016-08-29 00:01:30'),
(263, 1, 'generó', 'un PDF de la planilla 11', '2016-08-29 00:13:56'),
(264, 1, 'generó', 'un PDF de la planilla 11', '2016-08-29 00:14:00'),
(265, 1, 'generó', 'un PDF de la planilla 11', '2016-08-29 00:14:44'),
(266, 1, 'generó', 'un PDF de la planilla 11', '2016-08-29 00:15:06'),
(267, 1, 'generó', 'un PDF de la planilla 11', '2016-08-29 00:17:13'),
(268, 1, 'generó', 'un PDF de la planilla 11', '2016-08-29 00:21:49'),
(269, 1, 'generó', 'un PDF de la planilla 6', '2016-08-29 00:49:24'),
(270, 1, 'modificó', 'Comisión Electoral Permanente', '2016-08-29 17:47:18'),
(271, 1, 'modificó', 'Comisión Electoral Permanente', '2016-08-29 17:52:03'),
(272, 1, 'modificó', 'Comisión Electoral Permanente', '2016-08-29 17:57:59'),
(273, 1, 'modificó', 'Comisión Electoral Permanente', '2016-08-29 18:00:51'),
(274, 1, 'modificó', 'Comisión Electoral Permanente', '2016-08-29 18:05:04'),
(275, 1, 'agregó', '1 miembro(s) a Unidad Ejecutiva', '2016-08-29 18:05:55'),
(276, 1, 'modificó', 'Unidad Ejecutiva', '2016-08-29 18:07:57'),
(277, 1, 'eliminó', 'Unidad Ejecutiva y 0 sus voceros.', '2016-08-29 18:08:12'),
(278, 1, 'agregó', 'un Jefe de Grupo Familiar a la planilla 13', '2016-08-29 22:23:51'),
(280, 1, 'agregó', 'un Grupo Familiar (Pacheco) para la planilla 13', '2016-08-29 22:25:08'),
(281, 1, 'agregó', 'a Yudith López De Pacheco al Grupo Familiar Pacheco', '2016-08-29 22:27:09'),
(282, 1, 'agregó', 'a Miguel Angel Pacheco al Grupo Familiar Pacheco', '2016-08-29 22:28:24'),
(283, 1, 'agregó', 'a Katherine S Pacheco al Grupo Familiar Pacheco', '2016-08-29 22:30:18'),
(284, 1, 'agregó', 'la Situación Económica a la planilla 13', '2016-08-29 22:30:44'),
(285, 1, 'agregó', 'la Situación de Vivienda a la planilla 13', '2016-08-29 22:32:28'),
(286, 1, 'agregó', 'la Situación de Salud a la planilla 13', '2016-08-29 22:32:50'),
(287, 1, 'agregó', 'un nuevo tipo de Proveedor de Gas a los parámetros del sistema', '2016-08-29 22:34:04'),
(288, 1, 'agregó', 'la Situación de Servicios a la planilla 13', '2016-08-29 22:36:01'),
(289, 1, 'agregó', 'información de Participación Comunitaria a la planilla 13', '2016-08-29 22:38:12'),
(290, 1, 'agregó', 'La Situación de Comunidad a la planilla 13', '2016-08-29 22:39:21'),
(291, 2, 'agregó', 'un Jefe de Grupo Familiar a la planilla 14', '2016-08-29 22:46:27'),
(292, 2, 'agregó', 'un Grupo Familiar (García De Fuentes) para la planilla 14', '2016-08-29 22:47:09'),
(293, 2, 'agregó', 'a Francisco J García al Grupo Familiar García De Fuentes', '2016-08-29 22:48:47'),
(294, 2, 'agregó', 'a Maria Pulido García al Grupo Familiar García De Fuentes', '2016-08-29 22:50:06'),
(295, 2, 'agregó', 'la Situación Económica a la planilla 14', '2016-08-29 22:50:40'),
(296, 2, 'agregó', 'la Situación de Vivienda a la planilla 14', '2016-08-29 22:51:47'),
(297, 2, 'agregó', 'la Situación de Salud a la planilla 14', '2016-08-29 22:52:33'),
(298, 2, 'agregó', 'la Situación de Servicios a la planilla 14', '2016-08-29 22:54:42'),
(299, 2, 'agregó', 'información de Participación Comunitaria a la planilla 14', '2016-08-29 22:55:01'),
(300, 2, 'agregó', 'La Situación de Comunidad a la planilla 14', '2016-08-29 22:55:29');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comite`
--

CREATE TABLE IF NOT EXISTS `comite` (
  `id` int(11) NOT NULL,
  `nombre` varchar(225) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cant_voceros` int(11) DEFAULT NULL,
  `tipo_unidad` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `comite`
--

INSERT INTO `comite` (`id`, `nombre`, `cant_voceros`, `tipo_unidad`) VALUES
(3, NULL, 0, 'Unidad Administrativa y Financiera Comunitaria'),
(5, NULL, 0, 'Unidad de Contraloría Social'),
(6, NULL, 0, 'Comisión Electoral Permanente'),
(7, 'Comité de Salud', 0, 'Unidad Ejecutiva'),
(9, 'Comité de seguridad', 0, 'Unidad Ejecutiva'),
(10, 'Comité de servicios públicos', 0, 'Unidad Ejecutiva'),
(11, 'Comité de infraestructura', 0, 'Unidad Ejecutiva'),
(12, 'Comité de tierra urbana', 0, 'Unidad Ejecutiva'),
(13, 'Comité de vivienda y hábitat', 0, 'Unidad Ejecutiva'),
(14, 'Comité de economía comunal', 0, 'Unidad Ejecutiva'),
(15, 'Comité de recreación y deportes', 0, 'Unidad Ejecutiva'),
(16, 'Comité de alimentación y defensa del consumidor', 0, 'Unidad Ejecutiva'),
(17, 'Comité de mesa técnica de agua', 0, 'Unidad Ejecutiva'),
(18, 'Comité de mesa técnica de energía y gas', 0, 'Unidad Ejecutiva'),
(19, 'Comité de protección social de niños, niñas y adolescentes', 0, 'Unidad Ejecutiva'),
(20, 'Comité comunitario de personas con discapacidad', 0, 'Unidad Ejecutiva'),
(21, 'Comité de educación, cultura y formación ciudadana', 0, 'Unidad Ejecutiva'),
(22, 'Comité de familia e igualdad de género', 0, 'Unidad Ejecutiva');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comite_voceros`
--

CREATE TABLE IF NOT EXISTS `comite_voceros` (
  `comite_id` int(11) NOT NULL,
  `vocero_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comunicado`
--

CREATE TABLE IF NOT EXISTS `comunicado` (
  `id` int(11) NOT NULL,
  `usuario_id` int(11) DEFAULT NULL,
  `titulo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cuerpo` longtext COLLATE utf8_unicode_ci NOT NULL,
  `fecha` datetime NOT NULL,
  `numDestinatarios` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comunidad`
--

CREATE TABLE IF NOT EXISTS `comunidad` (
  `id` int(11) NOT NULL,
  `estado` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `municipio` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `parroquia` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sector` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `comunidad` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `direccion` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `comunidad`
--

INSERT INTO `comunidad` (`id`, `estado`, `municipio`, `parroquia`, `sector`, `comunidad`, `direccion`) VALUES
(1, 'Carabobo', 'Valencia', 'Candelaria', 'II', 'Eutimio Rivas', 'Los Guayos');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `consejo_comunal`
--

CREATE TABLE IF NOT EXISTS `consejo_comunal` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `codigo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `rif` varchar(9) COLLATE utf8_unicode_ci NOT NULL,
  `numeroCuenta` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `consejo_comunal`
--

INSERT INTO `consejo_comunal` (`id`, `nombre`, `codigo`, `rif`, `numeroCuenta`) VALUES
(1, 'Los Guayos', '15425896587', '199194680', '97987546613132564987');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `grupo_familiar`
--

CREATE TABLE IF NOT EXISTS `grupo_familiar` (
  `id` int(11) NOT NULL,
  `apellidos` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cantidadMiembros` int(11) NOT NULL,
  `numeroCasa` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `avenida` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `calle` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `grupo_familiar`
--

INSERT INTO `grupo_familiar` (`id`, `apellidos`, `cantidadMiembros`, `numeroCasa`, `avenida`, `calle`) VALUES
(1, 'Brito Leal', 2, '88-120', '111-B', ''),
(2, 'Carrasquel Roa', 3, '88-136', '111-C', ''),
(3, 'Rodriguez', 5, '0', '111-C', ''),
(4, 'Parra Morales', 9, '89-14', '111-B', ''),
(5, 'Mendoza', 3, '110-86', '111-C', 'Plaza'),
(6, 'Noguera Escobar', 3, '112-49', '111-B', 'López 88'),
(7, 'García De Salacedo', 7, '110-B7', '111-B', 'López'),
(8, 'Malpica Viloria', 4, '88-55', '111', '-'),
(9, 'Rivero', 4, '87-51', '111-B', 'López'),
(10, 'Salcedo García', 4, '110-137', '111', 'López'),
(11, 'Pacheco', 4, '112-113', '111-B', 'López'),
(12, 'García De Fuentes', 3, '112-A-261', 'Lisandro Alvarado', 'Plaza');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jefe_grupo_familiar`
--

CREATE TABLE IF NOT EXISTS `jefe_grupo_familiar` (
  `id` int(11) NOT NULL,
  `nac_id` int(11) DEFAULT NULL,
  `cne` int(11) DEFAULT NULL,
  `incap_id` int(11) DEFAULT NULL,
  `profesion_id` int(11) DEFAULT NULL,
  `nombres` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `apellidos` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cedula` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fechaNacimiento` date NOT NULL,
  `edad` int(11) NOT NULL,
  `tiempoEnComunidad` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sexo` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `incapacitado` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pensionado` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ingresoMensual` double NOT NULL,
  `recibir_correo` tinyint(1) NOT NULL,
  `pensIns_id` int(11) DEFAULT NULL,
  `edoCivil_id` int(11) DEFAULT NULL,
  `nivelIns_id` int(11) DEFAULT NULL,
  `respC_id_3` int(11) DEFAULT NULL,
  `ingFam_id` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `jefe_grupo_familiar`
--

INSERT INTO `jefe_grupo_familiar` (`id`, `nac_id`, `cne`, `incap_id`, `profesion_id`, `nombres`, `apellidos`, `cedula`, `fechaNacimiento`, `edad`, `tiempoEnComunidad`, `sexo`, `incapacitado`, `pensionado`, `email`, `ingresoMensual`, `recibir_correo`, `pensIns_id`, `edoCivil_id`, `nivelIns_id`, `respC_id_3`, `ingFam_id`) VALUES
(3, 1, 1, NULL, 17, 'José Brigido', 'Brito Leal', '14161843', '1976-09-24', 39, '28', 'Masculino', 'no', 'no', NULL, 33000, 0, NULL, 2, 5, 1, 9),
(4, 1, 1, NULL, 19, 'Brigmar Alejandra', 'Carrasquel Roa', '24472766', '1994-10-07', 21, '21', 'Femenino', 'no', 'no', 'brigmarcarrasquel@gmail.com', 10000, 1, NULL, 2, 2, 1, 2),
(5, 1, 2, NULL, 10, 'Vilma Mercedes', 'Rodriguez', '7100005', '1968-01-01', 48, '28', 'Femenino', 'no', 'no', NULL, 18000, 0, NULL, 2, 3, 2, 9),
(6, 1, 1, NULL, 21, 'Juvenal José', 'Parra Morales', '8578484', '1954-02-04', 62, '25', 'Masculino', 'no', 'si', NULL, 0, 0, 3, 2, 6, 2, 1),
(7, 1, 1, NULL, 15, 'Douglas', 'Mendoza', '13900356', '1978-11-08', 37, '5', 'Masculino', 'no', 'no', NULL, 18000, 0, NULL, 2, 5, 1, 9),
(8, 1, 1, NULL, 24, 'Elvira Mireya', 'Noguera Escobar', '13324373', '1975-04-12', 41, '2', 'Femenino', 'no', 'no', 'elviranoguera@hotmail.com', 0, 1, NULL, 3, 5, 1, 9),
(9, 1, 1, NULL, 10, 'Carmen Teresa', 'García De Salacedo', '13784447', '1937-02-03', 79, '1', 'Femenino', 'no', 'si', NULL, 15051, 0, 2, 5, 1, 2, 9),
(10, 1, 1, NULL, 10, 'Maria Constanza', 'Malpica Viloria', '3490836', '1945-02-25', 71, '60', 'Femenino', 'no', 'no', NULL, 11548, 0, NULL, 1, 2, 2, 1),
(11, 1, 1, NULL, 10, 'Carmen Balbina', 'Rivero', '2836839', '1940-04-08', 76, '75', 'Femenino', 'no', 'si', NULL, 50000, 0, 2, 1, 3, 2, 9),
(12, 1, 1, NULL, 10, 'Gisela Josefina', 'Salcedo García', '4874221', '1957-04-18', 59, '59', 'Femenino', 'no', 'si', NULL, 15051, 0, 2, 1, 3, 1, 1),
(13, 1, 1, NULL, 26, 'Miguel Angel', 'Pacheco', '5388720', '1959-01-01', 57, '57', 'Masculino', 'no', 'no', 'pacheco59@hotmail.com', 0, 1, NULL, 2, 6, 1, 9),
(14, 1, 1, NULL, 27, 'Rosa Leonide', 'García De Fuentes', '2841157', '1937-10-08', 78, '71', 'Femenino', 'no', 'si', NULL, 15000, 0, 3, 5, 6, 2, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jgf_telefonos`
--

CREATE TABLE IF NOT EXISTS `jgf_telefonos` (
  `telefono_id` int(11) NOT NULL,
  `jefeGF_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `jgf_telefonos`
--

INSERT INTO `jgf_telefonos` (`telefono_id`, `jefeGF_id`) VALUES
(8, 3),
(9, 3),
(10, 5),
(11, 6),
(13, 7),
(14, 7),
(15, 8),
(16, 8),
(17, 9),
(18, 10),
(19, 11),
(20, 12),
(21, 12),
(22, 13),
(23, 13),
(24, 14);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `noticia`
--

CREATE TABLE IF NOT EXISTS `noticia` (
  `id` int(11) NOT NULL,
  `usuario_id` int(11) DEFAULT NULL,
  `titulo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cuerpo` longtext COLLATE utf8_unicode_ci NOT NULL,
  `fecha` datetime NOT NULL,
  `fechaPub` datetime NOT NULL,
  `visibilidad` tinyint(1) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `noticia`
--

INSERT INTO `noticia` (`id`, `usuario_id`, `titulo`, `cuerpo`, `fecha`, `fechaPub`, `visibilidad`) VALUES
(1, 1, 'Jornada de Vacunación de niños', '<p style="text-align: right;">Este s&aacute;bado habr&aacute; jornada de vacunaci&oacute;n en la calle los Andes, para ni&ntilde;os desde 8 a 12 a&ntilde;os.</p>', '2016-08-08 15:54:45', '2016-07-14 17:55:59', 1),
(2, 1, 'Esto es Otra Noticia Super Importante del Consejo Comunal', '<h2 style="text-align: left;">Primer Apartado</h2>\r\n<p style="text-align: justify;">lleg&oacute; la harina paz al hyperlider de San Diego One of the most common and challenging tasks for any application involves persisting and reading information to and from a database. Although the Symfony full-stack Framework doesn''t integrate any ORM by default, the <strong><em>Symfony Standard Edition</em></strong>, which is the most widely used distribution, comes integrated with Doctrine, a library whose sole goal is to give you powerful tools to make this easy. In this chapter, you''ll learn the basic philosophy behind Doctrine and see how easy working with a database can be.</p>\r\n<h2 style="text-align: justify;">Segundo Apartado</h2>\r\n<p>Esto es lo mejor que le pudo haber pasado a la facultad desde la inveci&oacute;n de la computadora personal.</p>\r\n<ol>\r\n<li>a</li>\r\n<li>b</li>\r\n<li>c</li>\r\n<li>d</li>\r\n<li>f</li>\r\n</ol>\r\n<blockquote>\r\n<p>Esto es algo diferente. pero sirve.</p>\r\n</blockquote>', '2016-08-08 15:55:13', '2016-07-15 00:08:43', 1),
(3, 1, 'Noticia Invisible', '<p>Hay una invasi&oacute;n de ellas. y crealo o no es muy malo</p>', '2016-08-08 15:55:28', '2016-07-15 11:01:46', 0),
(5, 1, 'Kylie Minogue', '<p>La cantante australiana visitar&aacute; alexander burgos la semana que viene.</p>', '2016-08-08 15:53:02', '2016-07-15 11:06:28', 0),
(6, 1, 'The Last Five Years', '<p style="text-align: center;">Es un musical por Jason Robert Brown, basa es las experiencias propias de sus antiguos noviazgos, matrimonio y posterior ruptura.</p>', '2016-07-21 10:27:08', '2016-07-20 13:51:27', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `partcom_areatrabajo`
--

CREATE TABLE IF NOT EXISTS `partcom_areatrabajo` (
  `areacc_id` int(11) NOT NULL,
  `partCom_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `partcom_areatrabajo`
--

INSERT INTO `partcom_areatrabajo` (`areacc_id`, `partCom_id`) VALUES
(1, 1),
(9, 1),
(10, 1),
(1, 6),
(2, 6),
(8, 6),
(8, 11),
(9, 11);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `partcom_misiones`
--

CREATE TABLE IF NOT EXISTS `partcom_misiones` (
  `mision_id` int(11) NOT NULL,
  `partCom_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `partcom_misiones`
--

INSERT INTO `partcom_misiones` (`mision_id`, `partCom_id`) VALUES
(1, 1),
(2, 1),
(6, 2),
(8, 2),
(1, 11),
(2, 11);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `partcom_orgs`
--

CREATE TABLE IF NOT EXISTS `partcom_orgs` (
  `orgs_id` int(11) NOT NULL,
  `partCom_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `partcom_orgs`
--

INSERT INTO `partcom_orgs` (`orgs_id`, `partCom_id`) VALUES
(1, 2),
(1, 11),
(1, 12);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `partcom_pregpart`
--

CREATE TABLE IF NOT EXISTS `partcom_pregpart` (
  `partCom_id` int(11) NOT NULL,
  `pregPart_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `partcom_pregpart`
--

INSERT INTO `partcom_pregpart` (`partCom_id`, `pregPart_id`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(2, 5),
(2, 6),
(4, 7),
(4, 8),
(4, 9),
(4, 10),
(6, 11),
(6, 12),
(6, 13),
(7, 14),
(8, 15),
(8, 16),
(8, 17),
(8, 18),
(9, 19),
(9, 20),
(10, 21),
(10, 22),
(10, 23),
(10, 24),
(11, 25);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `participacion_comunitaria`
--

CREATE TABLE IF NOT EXISTS `participacion_comunitaria` (
  `id` int(11) NOT NULL,
  `participaOrganizacion` int(11) DEFAULT NULL,
  `participaMiembroOrganizacion` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `participacion_comunitaria`
--

INSERT INTO `participacion_comunitaria` (`id`, `participaOrganizacion`, `participaMiembroOrganizacion`) VALUES
(1, 2, 2),
(2, 2, 2),
(3, 2, 2),
(4, 2, 2),
(5, 2, 2),
(6, 2, 2),
(7, 2, 2),
(8, 2, 2),
(9, 2, 2),
(10, 2, 2),
(11, 2, 2),
(12, 2, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `persona`
--

CREATE TABLE IF NOT EXISTS `persona` (
  `id` int(11) NOT NULL,
  `nac_id` int(11) DEFAULT NULL,
  `profesion_id` int(11) DEFAULT NULL,
  `cne` int(11) DEFAULT NULL,
  `incap_id` int(11) DEFAULT NULL,
  `grupo_fam_id` int(11) DEFAULT NULL,
  `nombre` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `apellido` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sexo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cedula` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fechaNacimiento` date NOT NULL,
  `edad` int(11) NOT NULL,
  `parentesco` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `incapacitado` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pensionado` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ingresoMensual` double NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `recibir_correo` tinyint(1) NOT NULL,
  `nivelInstr_id` int(11) DEFAULT NULL,
  `embrarazoTemp` int(11) DEFAULT NULL,
  `pensIns_id` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `persona`
--

INSERT INTO `persona` (`id`, `nac_id`, `profesion_id`, `cne`, `incap_id`, `grupo_fam_id`, `nombre`, `apellido`, `sexo`, `cedula`, `fechaNacimiento`, `edad`, `parentesco`, `incapacitado`, `pensionado`, `ingresoMensual`, `email`, `recibir_correo`, `nivelInstr_id`, `embrarazoTemp`, `pensIns_id`) VALUES
(1, 1, 18, 1, NULL, 1, 'Erika del M', 'Villegas Machado', 'Femenino', '19861500', '1989-04-12', 27, 'Esposa', 'no', 'no', 33000, NULL, 0, 6, 2, NULL),
(2, 1, 3, 2, 5, 2, 'Bregdinson Tineo', 'Carrasquel', 'Masculino', NULL, '2013-02-28', 3, 'Hijo', 'si', 'no', 0, NULL, 0, 1, NULL, NULL),
(3, 1, 19, 1, NULL, 2, 'Yostyn', 'Tineo', 'Masculino', '25682419', '1995-01-16', 21, 'Esposo', 'no', 'no', 10000, NULL, 0, 2, NULL, NULL),
(4, 1, 3, 2, NULL, 3, 'Ana', 'Zerpa', 'Femenino', '7503728', '1940-05-30', 76, 'Hermana', 'no', 'si', 0, NULL, 0, 1, 2, 2),
(5, 1, 20, 2, NULL, 3, 'Carlos', 'Zerpa', 'Masculino', '7088807', '1963-04-19', 53, 'Hermano', 'no', 'no', 0, NULL, 0, 1, NULL, NULL),
(6, 1, 12, 2, NULL, 3, 'Ana K', 'Zerpa', 'Femenino', '26392626', '1999-07-09', 17, 'Hija', 'no', 'no', 0, NULL, 0, 3, 2, NULL),
(7, 1, 12, 2, NULL, 3, 'Carla', 'Zerpa', 'Femenino', '20316925', '1990-11-22', 25, 'Hija', 'no', 'no', 0, NULL, 0, 3, 2, NULL),
(8, 1, 10, 1, NULL, 4, 'Belkis', 'De Parra', 'Femenino', '9859777', '1956-11-13', 59, 'Esposa', 'no', 'no', 0, NULL, 0, 3, 2, NULL),
(9, 1, 21, 1, NULL, 4, 'Fernando', 'Parra', 'Masculino', '12997839', '1977-02-08', 39, 'Hijo', 'no', 'no', 0, NULL, 0, 6, NULL, NULL),
(10, 1, 22, 1, NULL, 4, 'Richard', 'Parra', 'Masculino', '13509901', '1979-01-14', 37, 'Hijo', 'no', 'no', 0, NULL, 0, 6, NULL, NULL),
(11, 1, 23, 1, NULL, 4, 'Javier', 'Parra', 'Masculino', '17267179', '1983-12-02', 32, 'Hijo', 'no', 'no', 0, NULL, 0, 6, NULL, NULL),
(12, 1, 3, 2, NULL, 4, 'Xavier', 'Parra', 'Masculino', NULL, '2009-03-22', 7, 'Nieto', 'no', 'no', 0, NULL, 0, 1, NULL, NULL),
(13, 1, 3, 2, NULL, 4, 'Mathias', 'Parra', 'Masculino', NULL, '2012-11-22', 3, 'Nieta', 'no', 'no', 0, NULL, 0, 1, NULL, NULL),
(14, 1, 3, 2, NULL, 4, 'María', 'Parra', 'Femenino', NULL, '2008-05-17', 8, 'Nieta', 'no', 'no', 0, NULL, 0, 1, 2, NULL),
(15, 1, 3, 2, NULL, 4, 'Maria Gabriela', 'Parra', 'Femenino', NULL, '2010-05-21', 6, 'Nieta', 'no', 'no', 0, NULL, 0, 1, 2, NULL),
(16, 1, 16, 1, NULL, 5, 'Noris', 'Mendoza', 'Femenino', '14714069', '1978-11-28', 37, 'Esposa', 'no', 'no', 10000, NULL, 0, 3, 2, NULL),
(17, 1, 3, 2, NULL, 5, 'Sebastian', 'Mendoza', 'Masculino', NULL, '2008-10-10', 7, 'Hijo', 'no', 'no', 0, NULL, 0, 2, NULL, NULL),
(18, 1, 3, 2, NULL, 6, 'Diana', 'Martinez Noguera', 'Femenino', NULL, '2008-11-13', 7, 'Hija', 'no', 'no', 0, NULL, 0, 2, 2, NULL),
(19, 1, 3, 2, NULL, 6, 'Diego', 'Martinez Noguera', 'Masculino', NULL, '2011-05-20', 5, 'Hijo', 'no', 'no', 0, NULL, 0, 2, NULL, NULL),
(20, 1, 10, 1, NULL, 7, 'Carmen Luisa', 'Salcedo', 'Femenino', '4876106', '1958-03-31', 58, 'Hija', 'no', 'no', 0, NULL, 0, 1, 2, NULL),
(21, 1, 19, 2, NULL, 7, 'María Eugenia', 'Salcedo', 'Femenino', '21240595', '1991-04-21', 25, 'Nieta', 'no', 'no', 30000, NULL, 0, 3, 2, NULL),
(22, 1, 14, 1, NULL, 7, 'Cesar Alonzo', 'Salcedo', 'Masculino', '19990220', '1989-02-22', 27, 'Nieto', 'no', 'no', 0, NULL, 0, 3, NULL, NULL),
(23, 1, 3, 2, NULL, 7, 'Santiago Josein', 'Rios Salcedo', 'Masculino', NULL, '2010-10-05', 5, 'Bisnieto', 'no', 'no', 0, NULL, 0, 2, NULL, NULL),
(24, 1, 3, 2, NULL, 7, 'Michel Stefany', 'Salcedo', 'Femenino', NULL, '2011-03-15', 5, 'Bisnieta', 'no', 'no', 0, NULL, 0, 2, 2, NULL),
(25, 1, 3, 2, NULL, 7, 'Ashley Valeria', 'Salcedo', 'Femenino', NULL, '2012-10-24', 3, 'Bisnieta', 'no', 'no', 0, NULL, 0, 1, 2, NULL),
(26, 1, 3, 1, 6, 8, 'Andres R', 'Malpica Viloria', 'Masculino', '10732508', '1949-12-25', 66, 'Hermano', 'si', 'no', 0, NULL, 0, 1, NULL, NULL),
(27, 1, 3, 2, 6, 8, 'Pedro Eleazar', 'Malpica Viloria', 'Masculino', '7149019', '1954-06-16', 62, 'Hermano', 'si', 'no', 0, NULL, 0, 1, NULL, NULL),
(28, 1, 10, 1, NULL, 8, 'Angelica B', 'Malpica Viloria', 'Femenino', '7055525', '1957-07-20', 59, 'Hermana', 'no', 'si', 0, NULL, 0, 1, 2, 2),
(29, 1, 25, 1, NULL, 9, 'Dinalva', 'Rivero', 'Femenino', '7120463', '1968-04-21', 48, 'Hija', 'no', 'no', 30000, NULL, 0, 6, 2, NULL),
(30, 1, 3, 2, NULL, 9, 'Manuel', 'Rivero', 'Masculino', NULL, '1947-03-05', 69, 'Hermano', 'no', 'no', 0, NULL, 0, 2, NULL, NULL),
(31, 1, 12, 2, NULL, 9, 'Juan C', 'Zapata Rivero', 'Masculino', '25535211', '1994-12-14', 21, 'Nieto', 'no', 'no', 0, NULL, 0, 3, NULL, NULL),
(32, 1, 11, 1, NULL, 10, 'Gilbert Jesus', 'Moreno', 'Masculino', '17681816', '1985-06-04', 31, 'Hijo', 'no', 'no', 30102, NULL, 0, 3, NULL, NULL),
(33, 1, 12, 1, NULL, 10, 'Grisell Andrea', 'Salcedo', 'Femenino', '18239494', '1988-12-05', 27, 'Hija', 'no', 'no', 0, NULL, 0, 3, 2, NULL),
(34, 1, 3, 2, NULL, 10, 'Gissel Cristine', 'Salcedo', 'Femenino', NULL, '2015-03-05', 1, 'Nieta', 'no', 'no', 0, NULL, 0, 1, 2, NULL),
(35, 1, 3, 2, NULL, 11, 'Yudith', 'López De Pacheco', 'Femenino', '7499759', '1964-03-24', 52, 'Esposa', 'no', 'no', 0, NULL, 0, 3, 2, NULL),
(36, 1, 3, 2, NULL, 11, 'Miguel Angel', 'Pacheco', 'Masculino', '21114632', '1994-02-08', 22, 'Hijo', 'no', 'no', 0, NULL, 0, 3, NULL, NULL),
(37, 1, 3, 2, NULL, 11, 'Katherine S', 'Pacheco', 'Femenino', '28094062', '2000-05-30', 16, 'Hija', 'no', 'no', 0, NULL, 0, 2, 2, NULL),
(38, 1, 3, 1, NULL, 12, 'Francisco J', 'García', 'Masculino', '1362157', '1940-01-29', 76, 'Hermano', 'no', 'si', 0, NULL, 0, 2, NULL, 2),
(39, 1, 28, 1, NULL, 12, 'Maria Pulido', 'García', 'Femenino', '4461272', '1946-10-21', 69, 'Sobrina', 'no', 'no', 0, NULL, 0, 3, 2, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `planillas`
--

CREATE TABLE IF NOT EXISTS `planillas` (
  `id` int(11) NOT NULL,
  `usuario_id` int(11) DEFAULT NULL,
  `observaciones` longtext COLLATE utf8_unicode_ci,
  `terminada` int(11) NOT NULL,
  `fecha` datetime NOT NULL,
  `jefegFam` int(11) DEFAULT NULL,
  `grupoFam` int(11) DEFAULT NULL,
  `sitEco` int(11) DEFAULT NULL,
  `sitViv` int(11) DEFAULT NULL,
  `sitSal` int(11) DEFAULT NULL,
  `sitServ` int(11) DEFAULT NULL,
  `partCom` int(11) DEFAULT NULL,
  `sitCom` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `planillas`
--

INSERT INTO `planillas` (`id`, `usuario_id`, `observaciones`, `terminada`, `fecha`, `jefegFam`, `grupoFam`, `sitEco`, `sitViv`, `sitSal`, `sitServ`, `partCom`, `sitCom`) VALUES
(3, 1, NULL, 100, '2016-08-14 23:16:44', 3, 1, 1, 1, 1, 1, 1, 1),
(4, 1, NULL, 100, '2016-08-15 11:51:06', 4, 2, 2, 2, 2, 2, 2, 2),
(5, 1, NULL, 100, '2016-08-15 13:54:13', 5, 3, 3, 3, 3, 3, 3, 3),
(6, 1, NULL, 100, '2016-08-15 15:10:00', 6, 4, 4, 4, 4, 4, 4, 4),
(7, 2, NULL, 100, '2016-08-16 00:11:12', 7, 5, 5, 5, 5, 5, 5, 5),
(8, 2, NULL, 100, '2016-08-16 14:07:21', 8, 6, 6, 6, 6, 6, 6, 6),
(9, 2, NULL, 100, '2016-08-16 17:14:17', 9, 7, 7, 7, 7, 7, 7, 7),
(10, 1, NULL, 100, '2016-08-16 23:48:03', 10, 8, 8, 8, 8, 8, 8, 8),
(11, 1, NULL, 100, '2016-08-17 12:43:48', 11, 9, 9, 9, 9, 9, 9, 9),
(12, 2, NULL, 100, '2016-08-17 15:12:26', 12, 10, 10, 10, 10, 10, 10, 10),
(13, 1, NULL, 100, '2016-08-29 22:39:21', 13, 11, 11, 11, 11, 11, 11, 11),
(14, 2, NULL, 100, '2016-08-29 22:55:30', 14, 12, 12, 12, 12, 12, 12, 12);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `siteco_actcomercial`
--

CREATE TABLE IF NOT EXISTS `siteco_actcomercial` (
  `sitEco` int(11) NOT NULL,
  `ActComercial` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `siteco_actcomercial`
--

INSERT INTO `siteco_actcomercial` (`sitEco`, `ActComercial`) VALUES
(10, 7);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sitsalud_ayu`
--

CREATE TABLE IF NOT EXISTS `sitsalud_ayu` (
  `ayuda_id` int(11) NOT NULL,
  `sitSalud_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `sitsalud_ayu`
--

INSERT INTO `sitsalud_ayu` (`ayuda_id`, `sitSalud_id`) VALUES
(13, 1),
(13, 3),
(13, 4),
(13, 5),
(14, 5),
(15, 5),
(13, 8),
(13, 12);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sitsalud_exc`
--

CREATE TABLE IF NOT EXISTS `sitsalud_exc` (
  `exclusion_id` int(11) NOT NULL,
  `sitSalud_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `sitsalud_exc`
--

INSERT INTO `sitsalud_exc` (`exclusion_id`, `sitSalud_id`) VALUES
(1, 9),
(2, 9);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sitsalud_padecencia`
--

CREATE TABLE IF NOT EXISTS `sitsalud_padecencia` (
  `padecencia_id` int(11) NOT NULL,
  `sitSalud_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `sitsalud_padecencia`
--

INSERT INTO `sitsalud_padecencia` (`padecencia_id`, `sitSalud_id`) VALUES
(5, 1),
(6, 1),
(7, 2),
(2, 3),
(5, 3),
(5, 4),
(5, 5),
(8, 5),
(2, 6),
(5, 6),
(9, 6),
(10, 6),
(2, 7),
(5, 7),
(5, 9),
(5, 10),
(5, 12);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sitserv_mecinf`
--

CREATE TABLE IF NOT EXISTS `sitserv_mecinf` (
  `sitServ_id` int(11) NOT NULL,
  `mecInf_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `sitserv_mecinf`
--

INSERT INTO `sitserv_mecinf` (`sitServ_id`, `mecInf_id`) VALUES
(1, 1),
(1, 2),
(1, 4),
(2, 2),
(2, 3),
(2, 4),
(4, 2),
(5, 1),
(5, 2),
(5, 3),
(5, 4),
(6, 1),
(6, 2),
(8, 1),
(8, 2),
(8, 3),
(8, 4),
(9, 1),
(9, 2),
(9, 3),
(10, 1),
(10, 2),
(10, 3),
(10, 4),
(11, 1),
(11, 2),
(11, 3),
(12, 1),
(12, 2),
(12, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sitserv_servcom`
--

CREATE TABLE IF NOT EXISTS `sitserv_servcom` (
  `sitServ_id` int(11) NOT NULL,
  `servCom_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `sitserv_servcom`
--

INSERT INTO `sitserv_servcom` (`sitServ_id`, `servCom_id`) VALUES
(5, 6),
(5, 7),
(8, 1),
(8, 2),
(8, 3),
(8, 4),
(8, 5),
(8, 6),
(8, 7),
(8, 9),
(8, 10),
(9, 1),
(9, 2),
(9, 3),
(9, 4),
(9, 6),
(9, 7),
(9, 8),
(9, 9),
(10, 3),
(10, 4),
(10, 6),
(10, 7),
(10, 8),
(11, 1),
(11, 2),
(11, 4),
(11, 5),
(11, 6),
(11, 7),
(11, 9),
(11, 12),
(12, 1),
(12, 2),
(12, 3),
(12, 4),
(12, 5),
(12, 6),
(12, 7),
(12, 9),
(12, 10),
(12, 11),
(12, 12),
(12, 13),
(12, 14);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sitserv_telefonia`
--

CREATE TABLE IF NOT EXISTS `sitserv_telefonia` (
  `telefonia_id` int(11) NOT NULL,
  `sitServ_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `sitserv_telefonia`
--

INSERT INTO `sitserv_telefonia` (`telefonia_id`, `sitServ_id`) VALUES
(1, 1),
(2, 1),
(4, 2),
(4, 3),
(2, 4),
(1, 5),
(2, 5),
(5, 5),
(1, 6),
(1, 7),
(2, 8),
(2, 9),
(1, 10),
(2, 10),
(2, 11),
(1, 12),
(2, 12);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sitserv_tiptrans`
--

CREATE TABLE IF NOT EXISTS `sitserv_tiptrans` (
  `sitServ_id` int(11) NOT NULL,
  `tipTrans_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `sitserv_tiptrans`
--

INSERT INTO `sitserv_tiptrans` (`sitServ_id`, `tipTrans_id`) VALUES
(1, 2),
(2, 2),
(4, 2),
(5, 2),
(6, 2),
(8, 2),
(9, 2),
(10, 2),
(11, 1),
(12, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `situacion_comunidad`
--

CREATE TABLE IF NOT EXISTS `situacion_comunidad` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `situacion_comunidad`
--

INSERT INTO `situacion_comunidad` (`id`) VALUES
(1),
(2),
(3),
(4),
(5),
(6),
(7),
(8),
(9),
(10),
(11),
(12);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `situacion_economica`
--

CREATE TABLE IF NOT EXISTS `situacion_economica` (
  `id` int(11) NOT NULL,
  `ingresoFamiliar` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `placa` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ubcTrab` int(11) DEFAULT NULL,
  `ingFam_id` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `situacion_economica`
--

INSERT INTO `situacion_economica` (`id`, `ingresoFamiliar`, `placa`, `ubcTrab`, `ingFam_id`) VALUES
(1, '33000', NULL, 1, 2),
(2, '20000', NULL, 5, 2),
(3, '18000', NULL, NULL, NULL),
(4, NULL, NULL, NULL, 4),
(5, NULL, NULL, 2, NULL),
(6, '30000', NULL, 2, NULL),
(7, NULL, NULL, NULL, 2),
(8, '11548', NULL, NULL, 1),
(9, NULL, NULL, NULL, NULL),
(10, NULL, NULL, NULL, 2),
(11, NULL, NULL, 2, NULL),
(12, NULL, NULL, NULL, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `situacion_salud`
--

CREATE TABLE IF NOT EXISTS `situacion_salud` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `situacion_salud`
--

INSERT INTO `situacion_salud` (`id`) VALUES
(1),
(2),
(3),
(4),
(5),
(6),
(7),
(8),
(9),
(10),
(11),
(12);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `situacion_servicios`
--

CREATE TABLE IF NOT EXISTS `situacion_servicios` (
  `id` int(11) NOT NULL,
  `gas` int(11) DEFAULT NULL,
  `medidor` int(11) DEFAULT NULL,
  `lts_tanque` int(11) NOT NULL,
  `cant_pipotes` int(11) NOT NULL,
  `cantBombonas` int(11) NOT NULL,
  `precioBombona` double NOT NULL,
  `duracionBombona` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `aguasBlancas` int(11) DEFAULT NULL,
  `aguasServidas` int(11) DEFAULT NULL,
  `sistemaElectrico` int(11) DEFAULT NULL,
  `recoleccionBasura` int(11) DEFAULT NULL,
  `empresaGas` int(11) DEFAULT NULL,
  `capacidadBombona` int(11) DEFAULT NULL,
  `medidorElectrico` int(11) DEFAULT NULL,
  `bombillosAhorradores` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `situacion_servicios`
--

INSERT INTO `situacion_servicios` (`id`, `gas`, `medidor`, `lts_tanque`, `cant_pipotes`, `cantBombonas`, `precioBombona`, `duracionBombona`, `aguasBlancas`, `aguasServidas`, `sistemaElectrico`, `recoleccionBasura`, `empresaGas`, `capacidadBombona`, `medidorElectrico`, `bombillosAhorradores`) VALUES
(1, 1, 1, 0, 1, 1, 0, '1 mes', 2, 2, 1, 1, 1, 1, 1, 2),
(2, 1, 1, 0, 0, 1, 200, '20 días', 2, 2, 1, 1, 2, 1, 2, 1),
(3, 3, 2, 0, 0, 0, 0, NULL, 1, 2, 3, 1, NULL, NULL, 2, 2),
(4, 1, 2, 0, 0, 1, 200, '15 días', 1, 2, 1, 1, NULL, NULL, 1, 2),
(5, 1, 1, 0, 3, 1, 600, '2 meses', 1, 2, 1, NULL, 1, 3, 1, 1),
(6, 3, 1, 0, 0, 0, 0, '-20', 1, 2, 1, 1, NULL, NULL, 1, 2),
(7, 1, 1, 0, 0, 2, 0, NULL, 1, 2, 1, 1, 1, 3, 1, 2),
(8, 1, 2, 0, 0, 0, 0, NULL, 1, 2, 1, 1, NULL, NULL, 2, 2),
(9, 1, 2, 0, 0, 0, 0, NULL, 2, 2, 1, 1, NULL, NULL, 2, 2),
(10, 1, 1, 0, 0, 2, 0, NULL, 1, 2, 1, 1, 1, 2, 1, 2),
(11, 1, 1, 0, 0, 1, 0, NULL, 1, NULL, 1, 1, 3, 2, 1, 1),
(12, 1, 1, 0, 1, 2, 600, '2 meses', 1, 2, 1, 1, 2, 3, 2, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `situacion_vivienda`
--

CREATE TABLE IF NOT EXISTS `situacion_vivienda` (
  `id` int(11) NOT NULL,
  `ovc` int(11) DEFAULT NULL,
  `salubridad` int(11) DEFAULT NULL,
  `leypoliticahabitacional` int(11) DEFAULT NULL,
  `sivih` int(11) DEFAULT NULL,
  `cantidadHabitaciones` int(11) NOT NULL,
  `tipoVivienda` int(11) DEFAULT NULL,
  `tipoTenencia` int(11) DEFAULT NULL,
  `terrenoPropio` int(11) DEFAULT NULL,
  `tipoParedes` int(11) DEFAULT NULL,
  `tipoTecho` int(11) DEFAULT NULL,
  `condicionesTerreno` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `situacion_vivienda`
--

INSERT INTO `situacion_vivienda` (`id`, `ovc`, `salubridad`, `leypoliticahabitacional`, `sivih`, `cantidadHabitaciones`, `tipoVivienda`, `tipoTenencia`, `terrenoPropio`, `tipoParedes`, `tipoTecho`, `condicionesTerreno`) VALUES
(1, 2, 1, 1, 2, 2, 2, 1, 1, 1, 2, 1),
(2, 2, 3, 1, 2, 5, 2, 6, 1, 1, 1, 1),
(3, 2, 1, 2, 2, 3, 2, 3, 1, 1, 5, 1),
(4, 2, 2, 2, 2, 3, 2, 1, 2, 2, 2, 1),
(5, 2, 1, 1, 2, 4, 6, 3, 2, 1, 2, 1),
(6, 2, 1, 1, 2, 4, 2, 6, 1, 1, 1, 1),
(7, 2, 1, 2, 2, 4, 3, 1, 1, 1, 1, 1),
(8, 2, 1, 2, 2, 4, 2, 1, 2, 1, 1, 1),
(9, 2, 1, 2, 2, 3, 2, 1, 1, 1, 7, 1),
(10, 2, 1, 2, 2, 2, 2, 3, 2, 1, 5, 1),
(11, 2, 1, 2, 2, 4, 2, 6, 1, 1, 4, 1),
(12, 2, 1, 2, 2, 4, 2, 1, 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `situcom_pregsitucomunidad`
--

CREATE TABLE IF NOT EXISTS `situcom_pregsitucomunidad` (
  `situCom_id` int(11) NOT NULL,
  `pregSituComunidad_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `situcom_pregsitucomunidad`
--

INSERT INTO `situcom_pregsitucomunidad` (`situCom_id`, `pregSituComunidad_id`) VALUES
(4, 1),
(4, 2),
(5, 3),
(6, 4),
(6, 5),
(11, 6),
(11, 7);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sitvivi_enseres`
--

CREATE TABLE IF NOT EXISTS `sitvivi_enseres` (
  `enseres_id` int(11) NOT NULL,
  `sitViv` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `sitvivi_enseres`
--

INSERT INTO `sitvivi_enseres` (`enseres_id`, `sitViv`) VALUES
(1, 1),
(2, 1),
(4, 1),
(5, 1),
(7, 1),
(9, 1),
(13, 1),
(2, 2),
(5, 2),
(7, 2),
(10, 2),
(1, 3),
(2, 3),
(4, 3),
(5, 3),
(7, 3),
(9, 3),
(1, 4),
(2, 4),
(1, 5),
(2, 5),
(3, 5),
(4, 5),
(5, 5),
(6, 5),
(7, 5),
(9, 5),
(10, 5),
(1, 6),
(2, 6),
(4, 6),
(9, 6),
(10, 6),
(1, 7),
(2, 7),
(3, 7),
(4, 7),
(5, 7),
(6, 7),
(9, 7),
(13, 7),
(1, 8),
(2, 8),
(3, 8),
(4, 8),
(5, 8),
(6, 8),
(7, 8),
(9, 8),
(10, 8),
(1, 9),
(2, 9),
(4, 9),
(5, 9),
(6, 9),
(7, 9),
(9, 9),
(10, 9),
(1, 10),
(2, 10),
(4, 10),
(5, 10),
(6, 10),
(7, 10),
(9, 10),
(1, 11),
(2, 11),
(4, 11),
(5, 11),
(6, 11),
(7, 11),
(9, 11),
(1, 12),
(2, 12),
(3, 12),
(4, 12),
(6, 12),
(7, 12),
(9, 12),
(10, 12),
(13, 12);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sitvivi_mascota`
--

CREATE TABLE IF NOT EXISTS `sitvivi_mascota` (
  `masco_id` int(11) NOT NULL,
  `sitViv` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `sitvivi_mascota`
--

INSERT INTO `sitvivi_mascota` (`masco_id`, `sitViv`) VALUES
(1, 2),
(4, 2),
(1, 4),
(1, 8),
(2, 8),
(1, 9),
(2, 10);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sitvivi_plaga`
--

CREATE TABLE IF NOT EXISTS `sitvivi_plaga` (
  `plaga_id` int(11) NOT NULL,
  `sitViv` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `sitvivi_plaga`
--

INSERT INTO `sitvivi_plaga` (`plaga_id`, `sitViv`) VALUES
(4, 1),
(5, 1),
(2, 2),
(3, 2),
(4, 2),
(2, 4),
(3, 4),
(1, 5),
(2, 5),
(3, 5),
(4, 5),
(5, 5),
(2, 6),
(3, 6),
(4, 6),
(1, 7),
(2, 7),
(3, 7),
(4, 7),
(1, 8),
(4, 8),
(1, 10),
(3, 10),
(4, 10),
(1, 11),
(3, 11),
(4, 12);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sitvivi_thv`
--

CREATE TABLE IF NOT EXISTS `sitvivi_thv` (
  `sitViv` int(11) NOT NULL,
  `tHabViv_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `sitvivi_thv`
--

INSERT INTO `sitvivi_thv` (`sitViv`, `tHabViv_id`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(2, 1),
(2, 2),
(2, 3),
(2, 4),
(3, 1),
(3, 2),
(3, 3),
(3, 4),
(4, 1),
(4, 2),
(4, 4),
(5, 1),
(5, 2),
(5, 3),
(5, 4),
(6, 1),
(6, 2),
(6, 3),
(6, 4),
(7, 1),
(7, 2),
(7, 3),
(7, 4),
(8, 1),
(8, 2),
(8, 3),
(8, 4),
(9, 2),
(9, 3),
(9, 4),
(10, 1),
(10, 2),
(10, 3),
(10, 4),
(11, 1),
(11, 2),
(11, 3),
(11, 4),
(12, 1),
(12, 2),
(12, 3),
(12, 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `telefono`
--

CREATE TABLE IF NOT EXISTS `telefono` (
  `id` int(11) NOT NULL,
  `codigo` varchar(225) COLLATE utf8_unicode_ci NOT NULL,
  `numero` varchar(225) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `telefono`
--

INSERT INTO `telefono` (`id`, `codigo`, `numero`) VALUES
(8, '0414', '4801367'),
(9, '0241', '8357853'),
(10, '0241', '8313158'),
(11, '0241', '8851998'),
(12, '0241', '8486460'),
(13, '0241', '8977955'),
(14, '0424', '4337744'),
(15, '0412', '5023441'),
(16, '0241', '8561156'),
(17, '0412', '1794408'),
(18, '0241', '8355739'),
(19, '0241', '8351653'),
(20, '0412', '4146157'),
(21, '0241', '8530840'),
(22, '0416', '7440159'),
(23, '0241', '8316327'),
(24, '0241', '8357317');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE IF NOT EXISTS `usuario` (
  `id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `username_canonical` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email_canonical` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  `salt` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `locked` tinyint(1) NOT NULL,
  `expired` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  `confirmation_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password_requested_at` datetime DEFAULT NULL,
  `roles` longtext COLLATE utf8_unicode_ci NOT NULL COMMENT '(DC2Type:array)',
  `credentials_expired` tinyint(1) NOT NULL,
  `credentials_expire_at` datetime DEFAULT NULL,
  `primerNombre` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `segundoNombre` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `primerApellido` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `segundoApellido` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cedula` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fechaNacimiento` date NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id`, `username`, `username_canonical`, `email`, `email_canonical`, `enabled`, `salt`, `password`, `last_login`, `locked`, `expired`, `expires_at`, `confirmation_token`, `password_requested_at`, `roles`, `credentials_expired`, `credentials_expire_at`, `primerNombre`, `segundoNombre`, `primerApellido`, `segundoApellido`, `cedula`, `fechaNacimiento`) VALUES
(1, 'lapv1992', 'lapv1992', 'lapv1992@gmail.com', 'lapv1992@gmail.com', 1, 'qafdg29ko7404sss44gwwgsooowsgw8', '$2y$13$qafdg29ko7404sss44gwwe62QxJarXxGwxOWv9a5MfX56934B7yXi', '2016-08-24 18:29:34', 0, 0, NULL, '7vLAhTM1SgtNRBRoB1di68SMsqVYZfwTCHS0fpmzP-o', '2016-08-16 23:03:38', 'a:1:{i:0;s:10:"ROLE_ADMIN";}', 0, NULL, 'Luis', 'Alberto', 'Pérez', 'Vera', '19919468', '1992-03-20'),
(2, 'ajpv16', 'ajpv16', 'ajpv16@gmail.com', 'ajpv16@gmail.com', 1, 'esmm1xv957kg4csg8c0ggw8088ss4kc', '$2y$13$esmm1xv957kg4csg8c0ggu4zLP/SFxYcWvcJCw990EBR8o/fznzKa', '2016-08-29 22:43:08', 0, 0, NULL, 'eZZDHTFpngTaSFa29po3OkYH8fLx9xd5uI0nSpgfxss', '2016-08-16 23:08:32', 'a:0:{}', 0, NULL, 'Anny', 'Yordana', 'Pérez', 'Vera', '24244451', '1989-01-14');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario_telefonos`
--

CREATE TABLE IF NOT EXISTS `usuario_telefonos` (
  `usuario_id` int(11) NOT NULL,
  `telefono_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `usuario_telefonos`
--

INSERT INTO `usuario_telefonos` (`usuario_id`, `telefono_id`) VALUES
(2, 12);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vocero`
--

CREATE TABLE IF NOT EXISTS `vocero` (
  `id` int(11) NOT NULL,
  `tipo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `votos_electo` int(11) DEFAULT NULL,
  `persona` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `admin_aguas_blancas`
--
ALTER TABLE `admin_aguas_blancas`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_49AED3053A909126` (`nombre`);

--
-- Indices de la tabla `admin_aguas_servidas`
--
ALTER TABLE `admin_aguas_servidas`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_8AF41F1B3A909126` (`nombre`);

--
-- Indices de la tabla `admin_area_trabajo_c_c`
--
ALTER TABLE `admin_area_trabajo_c_c`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_B4D46A5B3A909126` (`nombre`);

--
-- Indices de la tabla `admin_capacidad_bombona`
--
ALTER TABLE `admin_capacidad_bombona`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `admin_clas_ingreso_familiar`
--
ALTER TABLE `admin_clas_ingreso_familiar`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_96BB03423A909126` (`nombre`);

--
-- Indices de la tabla `admin_empresa_gas`
--
ALTER TABLE `admin_empresa_gas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `admin_estado_civil`
--
ALTER TABLE `admin_estado_civil`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_8D638F693A909126` (`nombre`);

--
-- Indices de la tabla `admin_incapacidades`
--
ALTER TABLE `admin_incapacidades`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_66979F5B3804154D` (`incapacidad`);

--
-- Indices de la tabla `admin_mecanismo_informacion`
--
ALTER TABLE `admin_mecanismo_informacion`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_B1D0AA673A909126` (`nombre`);

--
-- Indices de la tabla `admin_misiones_comunidad`
--
ALTER TABLE `admin_misiones_comunidad`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_E6DAAAE3A909126` (`nombre`);

--
-- Indices de la tabla `admin_nacionalidad`
--
ALTER TABLE `admin_nacionalidad`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_EA5CFD2E931D5FC3` (`nacionalidad`);

--
-- Indices de la tabla `admin_nivel_instruccion`
--
ALTER TABLE `admin_nivel_instruccion`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_8C1A5C8A3A909126` (`nombre`);

--
-- Indices de la tabla `admin_org_comunitaria`
--
ALTER TABLE `admin_org_comunitaria`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_C9D8D3733A909126` (`nombre`);

--
-- Indices de la tabla `admin_pensionado_institucion`
--
ALTER TABLE `admin_pensionado_institucion`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_F28A9F263A909126` (`nombre`);

--
-- Indices de la tabla `admin_preguntas`
--
ALTER TABLE `admin_preguntas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `admin_preguntas_participacion_comunitaria`
--
ALTER TABLE `admin_preguntas_participacion_comunitaria`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_6CCE0A82D5B0D295` (`interrogante`),
  ADD KEY `IDX_6CCE0A826C6EC5EE` (`respuesta`);

--
-- Indices de la tabla `admin_preguntas_situacion_comunidad`
--
ALTER TABLE `admin_preguntas_situacion_comunidad`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_F2BB96AF96BE66AD` (`pregunta_sit_com`);

--
-- Indices de la tabla `admin_preguntas_sit_com`
--
ALTER TABLE `admin_preguntas_sit_com`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `admin_profesion`
--
ALTER TABLE `admin_profesion`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_954AA8383A909126` (`nombre`);

--
-- Indices de la tabla `admin_recoleccion_basura`
--
ALTER TABLE `admin_recoleccion_basura`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_82DEF06D3A909126` (`nombre`);

--
-- Indices de la tabla `admin_resp_cerrada`
--
ALTER TABLE `admin_resp_cerrada`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_58CF10E46C6EC5EE` (`respuesta`);

--
-- Indices de la tabla `admin_salubridad_vivienda`
--
ALTER TABLE `admin_salubridad_vivienda`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_E0273B753A909126` (`nombre`);

--
-- Indices de la tabla `admin_servicios_comunales`
--
ALTER TABLE `admin_servicios_comunales`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_AB2E721E3A909126` (`nombre`);

--
-- Indices de la tabla `admin_sistema_electrico`
--
ALTER TABLE `admin_sistema_electrico`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_E51FF9153A909126` (`nombre`);

--
-- Indices de la tabla `admin_tipo_ayuda_especial`
--
ALTER TABLE `admin_tipo_ayuda_especial`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `admin_tipo_condicion_terreno`
--
ALTER TABLE `admin_tipo_condicion_terreno`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `admin_tipo_enseres`
--
ALTER TABLE `admin_tipo_enseres`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_28DDCF2F3A909126` (`nombre`);

--
-- Indices de la tabla `admin_tipo_gas`
--
ALTER TABLE `admin_tipo_gas`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_BCEA1B5F3A909126` (`nombre`);

--
-- Indices de la tabla `admin_tipo_habitaciones_vivienda`
--
ALTER TABLE `admin_tipo_habitaciones_vivienda`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_A640E8FF3A909126` (`nombre`);

--
-- Indices de la tabla `admin_tipo_ingresos`
--
ALTER TABLE `admin_tipo_ingresos`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_9ECDDC743A909126` (`nombre`);

--
-- Indices de la tabla `admin_tipo_mascotas`
--
ALTER TABLE `admin_tipo_mascotas`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_DD7987B73A909126` (`nombre`);

--
-- Indices de la tabla `admin_tipo_padecencia`
--
ALTER TABLE `admin_tipo_padecencia`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_BEF2AA653A909126` (`nombre`);

--
-- Indices de la tabla `admin_tipo_paredes`
--
ALTER TABLE `admin_tipo_paredes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_C9A638E13A909126` (`nombre`);

--
-- Indices de la tabla `admin_tipo_plagas`
--
ALTER TABLE `admin_tipo_plagas`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_9569BE9C3A909126` (`nombre`);

--
-- Indices de la tabla `admin_tipo_situacion`
--
ALTER TABLE `admin_tipo_situacion`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_10857C8621E3F5EC` (`situacion`);

--
-- Indices de la tabla `admin_tipo_situacion_exclusion`
--
ALTER TABLE `admin_tipo_situacion_exclusion`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_C1E4978696714AEF` (`situacion_id`);

--
-- Indices de la tabla `admin_tipo_techo`
--
ALTER TABLE `admin_tipo_techo`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_32B262713A909126` (`nombre`);

--
-- Indices de la tabla `admin_tipo_telefonia`
--
ALTER TABLE `admin_tipo_telefonia`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_4FF01B083A909126` (`nombre`);

--
-- Indices de la tabla `admin_tipo_tenencia`
--
ALTER TABLE `admin_tipo_tenencia`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_E07F4491E866ABF` (`forma`);

--
-- Indices de la tabla `admin_tipo_transporte`
--
ALTER TABLE `admin_tipo_transporte`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_9E3C327B3A909126` (`nombre`);

--
-- Indices de la tabla `admin_tipo_vivienda`
--
ALTER TABLE `admin_tipo_vivienda`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_25F82E703A909126` (`nombre`);

--
-- Indices de la tabla `admin_ubicacion_trabajo`
--
ALTER TABLE `admin_ubicacion_trabajo`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_64A6E23B3A909126` (`nombre`);

--
-- Indices de la tabla `admin_venta_vivienda`
--
ALTER TABLE `admin_venta_vivienda`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_5749D5643A909126` (`nombre`);

--
-- Indices de la tabla `bitacora`
--
ALTER TABLE `bitacora`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_9087FEF92265B05D` (`usuario`);

--
-- Indices de la tabla `comite`
--
ALTER TABLE `comite`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `comite_voceros`
--
ALTER TABLE `comite_voceros`
  ADD PRIMARY KEY (`comite_id`,`vocero_id`),
  ADD KEY `IDX_28DCA084D61C3573` (`comite_id`),
  ADD KEY `IDX_28DCA084F74B9CAF` (`vocero_id`);

--
-- Indices de la tabla `comunicado`
--
ALTER TABLE `comunicado`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_B5F88310DB38439E` (`usuario_id`);

--
-- Indices de la tabla `comunidad`
--
ALTER TABLE `comunidad`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `consejo_comunal`
--
ALTER TABLE `consejo_comunal`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `grupo_familiar`
--
ALTER TABLE `grupo_familiar`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `jefe_grupo_familiar`
--
ALTER TABLE `jefe_grupo_familiar`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_911AFAF47BF39BE0` (`cedula`),
  ADD KEY `IDX_911AFAF497FDD5BB` (`nac_id`),
  ADD KEY `IDX_911AFAF473767F95` (`cne`),
  ADD KEY `IDX_911AFAF4A902CCF6` (`incap_id`),
  ADD KEY `IDX_911AFAF4F509D0E2` (`pensIns_id`),
  ADD KEY `IDX_911AFAF494702A8` (`edoCivil_id`),
  ADD KEY `IDX_911AFAF4FDAC90A1` (`nivelIns_id`),
  ADD KEY `IDX_911AFAF4C5AF4D0F` (`profesion_id`),
  ADD KEY `IDX_911AFAF471F96440` (`respC_id_3`),
  ADD KEY `IDX_911AFAF4B0A667C3` (`ingFam_id`);

--
-- Indices de la tabla `jgf_telefonos`
--
ALTER TABLE `jgf_telefonos`
  ADD PRIMARY KEY (`jefeGF_id`,`telefono_id`),
  ADD UNIQUE KEY `UNIQ_AA10AEC1FD6D75CD` (`telefono_id`),
  ADD KEY `IDX_AA10AEC1CABCC9E7` (`jefeGF_id`);

--
-- Indices de la tabla `noticia`
--
ALTER TABLE `noticia`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_31205F96DB38439E` (`usuario_id`);

--
-- Indices de la tabla `partcom_areatrabajo`
--
ALTER TABLE `partcom_areatrabajo`
  ADD PRIMARY KEY (`partCom_id`,`areacc_id`),
  ADD KEY `IDX_D12BC43F6A6BB17E` (`partCom_id`),
  ADD KEY `IDX_D12BC43F3743E14B` (`areacc_id`);

--
-- Indices de la tabla `partcom_misiones`
--
ALTER TABLE `partcom_misiones`
  ADD PRIMARY KEY (`partCom_id`,`mision_id`),
  ADD KEY `IDX_F1DF0B666A6BB17E` (`partCom_id`),
  ADD KEY `IDX_F1DF0B662F612167` (`mision_id`);

--
-- Indices de la tabla `partcom_orgs`
--
ALTER TABLE `partcom_orgs`
  ADD PRIMARY KEY (`partCom_id`,`orgs_id`),
  ADD KEY `IDX_9273F20E6A6BB17E` (`partCom_id`),
  ADD KEY `IDX_9273F20E6DE0F7B5` (`orgs_id`);

--
-- Indices de la tabla `partcom_pregpart`
--
ALTER TABLE `partcom_pregpart`
  ADD PRIMARY KEY (`partCom_id`,`pregPart_id`),
  ADD KEY `IDX_D88264E66A6BB17E` (`partCom_id`),
  ADD KEY `IDX_D88264E6B5F176FD` (`pregPart_id`);

--
-- Indices de la tabla `participacion_comunitaria`
--
ALTER TABLE `participacion_comunitaria`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_288572BD8D4889E5` (`participaOrganizacion`),
  ADD KEY `IDX_288572BDED3EAD41` (`participaMiembroOrganizacion`);

--
-- Indices de la tabla `persona`
--
ALTER TABLE `persona`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_51E5B69B97FDD5BB` (`nac_id`),
  ADD KEY `IDX_51E5B69BE11D40EA` (`nivelInstr_id`),
  ADD KEY `IDX_51E5B69BC5AF4D0F` (`profesion_id`),
  ADD KEY `IDX_51E5B69B73767F95` (`cne`),
  ADD KEY `IDX_51E5B69BE30347FD` (`embrarazoTemp`),
  ADD KEY `IDX_51E5B69BA902CCF6` (`incap_id`),
  ADD KEY `IDX_51E5B69BF509D0E2` (`pensIns_id`),
  ADD KEY `IDX_51E5B69B97778FDC` (`grupo_fam_id`);

--
-- Indices de la tabla `planillas`
--
ALTER TABLE `planillas`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_9F245E57EFFB6DE9` (`jefegFam`),
  ADD UNIQUE KEY `UNIQ_9F245E573E719A50` (`grupoFam`),
  ADD UNIQUE KEY `UNIQ_9F245E57A987F7BD` (`sitEco`),
  ADD UNIQUE KEY `UNIQ_9F245E572963AADE` (`sitViv`),
  ADD UNIQUE KEY `UNIQ_9F245E571A131B47` (`sitSal`),
  ADD UNIQUE KEY `UNIQ_9F245E57508E6BAF` (`sitServ`),
  ADD UNIQUE KEY `UNIQ_9F245E5776590EDA` (`partCom`),
  ADD UNIQUE KEY `UNIQ_9F245E57EFB1A52F` (`sitCom`),
  ADD KEY `IDX_9F245E57DB38439E` (`usuario_id`);

--
-- Indices de la tabla `siteco_actcomercial`
--
ALTER TABLE `siteco_actcomercial`
  ADD PRIMARY KEY (`sitEco`,`ActComercial`),
  ADD KEY `IDX_EE8876396F6EBA4A` (`ActComercial`),
  ADD KEY `IDX_EE887639A987F7BD` (`sitEco`);

--
-- Indices de la tabla `sitsalud_ayu`
--
ALTER TABLE `sitsalud_ayu`
  ADD PRIMARY KEY (`sitSalud_id`,`ayuda_id`),
  ADD KEY `IDX_D406572319D257E1` (`sitSalud_id`),
  ADD KEY `IDX_D40657232D542B0F` (`ayuda_id`);

--
-- Indices de la tabla `sitsalud_exc`
--
ALTER TABLE `sitsalud_exc`
  ADD PRIMARY KEY (`sitSalud_id`,`exclusion_id`),
  ADD KEY `IDX_3EC07BEF19D257E1` (`sitSalud_id`),
  ADD KEY `IDX_3EC07BEF4012D45C` (`exclusion_id`);

--
-- Indices de la tabla `sitsalud_padecencia`
--
ALTER TABLE `sitsalud_padecencia`
  ADD PRIMARY KEY (`sitSalud_id`,`padecencia_id`),
  ADD KEY `IDX_227FB6B619D257E1` (`sitSalud_id`),
  ADD KEY `IDX_227FB6B6F700F065` (`padecencia_id`);

--
-- Indices de la tabla `sitserv_mecinf`
--
ALTER TABLE `sitserv_mecinf`
  ADD PRIMARY KEY (`sitServ_id`,`mecInf_id`),
  ADD KEY `IDX_B2359330386CC376` (`sitServ_id`),
  ADD KEY `IDX_B2359330E068AC8F` (`mecInf_id`);

--
-- Indices de la tabla `sitserv_servcom`
--
ALTER TABLE `sitserv_servcom`
  ADD PRIMARY KEY (`sitServ_id`,`servCom_id`),
  ADD KEY `IDX_E41428FB386CC376` (`sitServ_id`),
  ADD KEY `IDX_E41428FB4B2F4A58` (`servCom_id`);

--
-- Indices de la tabla `sitserv_telefonia`
--
ALTER TABLE `sitserv_telefonia`
  ADD PRIMARY KEY (`sitServ_id`,`telefonia_id`),
  ADD KEY `IDX_D00B0305386CC376` (`sitServ_id`),
  ADD KEY `IDX_D00B0305770904E9` (`telefonia_id`);

--
-- Indices de la tabla `sitserv_tiptrans`
--
ALTER TABLE `sitserv_tiptrans`
  ADD PRIMARY KEY (`sitServ_id`,`tipTrans_id`),
  ADD KEY `IDX_630DAFB8386CC376` (`sitServ_id`),
  ADD KEY `IDX_630DAFB85796464F` (`tipTrans_id`);

--
-- Indices de la tabla `situacion_comunidad`
--
ALTER TABLE `situacion_comunidad`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `situacion_economica`
--
ALTER TABLE `situacion_economica`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_D862A9E174D2FD67` (`ubcTrab`),
  ADD KEY `IDX_D862A9E1B0A667C3` (`ingFam_id`);

--
-- Indices de la tabla `situacion_salud`
--
ALTER TABLE `situacion_salud`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `situacion_servicios`
--
ALTER TABLE `situacion_servicios`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_18C85AB2E418525E` (`aguasBlancas`),
  ADD KEY `IDX_18C85AB276E021E6` (`aguasServidas`),
  ADD KEY `IDX_18C85AB27337ED7` (`gas`),
  ADD KEY `IDX_18C85AB28A9E46C7` (`sistemaElectrico`),
  ADD KEY `IDX_18C85AB2AC677493` (`recoleccionBasura`),
  ADD KEY `IDX_18C85AB216180132` (`medidor`),
  ADD KEY `IDX_18C85AB2B21E496` (`empresaGas`),
  ADD KEY `IDX_18C85AB2D5E61B0D` (`capacidadBombona`),
  ADD KEY `IDX_18C85AB2F6CAB85B` (`medidorElectrico`),
  ADD KEY `IDX_18C85AB2C7398EE5` (`bombillosAhorradores`);

--
-- Indices de la tabla `situacion_vivienda`
--
ALTER TABLE `situacion_vivienda`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_960EEC76B3380955` (`tipoVivienda`),
  ADD KEY `IDX_960EEC7676BF63B4` (`tipoTenencia`),
  ADD KEY `IDX_960EEC76EE4B270B` (`terrenoPropio`),
  ADD KEY `IDX_960EEC761114BB9D` (`ovc`),
  ADD KEY `IDX_960EEC762993AB` (`tipoParedes`),
  ADD KEY `IDX_960EEC766AFBD666` (`tipoTecho`),
  ADD KEY `IDX_960EEC76751FB05E` (`salubridad`),
  ADD KEY `IDX_960EEC766004226D` (`leypoliticahabitacional`),
  ADD KEY `IDX_960EEC769954F8ED` (`sivih`),
  ADD KEY `IDX_960EEC76B738CA13` (`condicionesTerreno`);

--
-- Indices de la tabla `situcom_pregsitucomunidad`
--
ALTER TABLE `situcom_pregsitucomunidad`
  ADD PRIMARY KEY (`situCom_id`,`pregSituComunidad_id`),
  ADD KEY `IDX_FD42D1715A9CAA56` (`situCom_id`),
  ADD KEY `IDX_FD42D171C62EE28F` (`pregSituComunidad_id`);

--
-- Indices de la tabla `sitvivi_enseres`
--
ALTER TABLE `sitvivi_enseres`
  ADD PRIMARY KEY (`sitViv`,`enseres_id`),
  ADD KEY `IDX_3873324E2963AADE` (`sitViv`),
  ADD KEY `IDX_3873324E4C064FE2` (`enseres_id`);

--
-- Indices de la tabla `sitvivi_mascota`
--
ALTER TABLE `sitvivi_mascota`
  ADD PRIMARY KEY (`sitViv`,`masco_id`),
  ADD KEY `IDX_6B3FF35B2963AADE` (`sitViv`),
  ADD KEY `IDX_6B3FF35BAA6CA4D7` (`masco_id`);

--
-- Indices de la tabla `sitvivi_plaga`
--
ALTER TABLE `sitvivi_plaga`
  ADD PRIMARY KEY (`sitViv`,`plaga_id`),
  ADD KEY `IDX_EF776E1E2963AADE` (`sitViv`),
  ADD KEY `IDX_EF776E1E7744938E` (`plaga_id`);

--
-- Indices de la tabla `sitvivi_thv`
--
ALTER TABLE `sitvivi_thv`
  ADD PRIMARY KEY (`sitViv`,`tHabViv_id`),
  ADD KEY `IDX_32FADE5E2963AADE` (`sitViv`),
  ADD KEY `IDX_32FADE5EE0AB0CD6` (`tHabViv_id`);

--
-- Indices de la tabla `telefono`
--
ALTER TABLE `telefono`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_2265B05D92FC23A8` (`username_canonical`),
  ADD UNIQUE KEY `UNIQ_2265B05DA0D96FBF` (`email_canonical`);

--
-- Indices de la tabla `usuario_telefonos`
--
ALTER TABLE `usuario_telefonos`
  ADD PRIMARY KEY (`usuario_id`,`telefono_id`),
  ADD UNIQUE KEY `UNIQ_524EAEBEFD6D75CD` (`telefono_id`),
  ADD KEY `IDX_524EAEBEDB38439E` (`usuario_id`);

--
-- Indices de la tabla `vocero`
--
ALTER TABLE `vocero`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_D050997851E5B69B` (`persona`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `admin_aguas_blancas`
--
ALTER TABLE `admin_aguas_blancas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `admin_aguas_servidas`
--
ALTER TABLE `admin_aguas_servidas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `admin_area_trabajo_c_c`
--
ALTER TABLE `admin_area_trabajo_c_c`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT de la tabla `admin_capacidad_bombona`
--
ALTER TABLE `admin_capacidad_bombona`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `admin_clas_ingreso_familiar`
--
ALTER TABLE `admin_clas_ingreso_familiar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT de la tabla `admin_empresa_gas`
--
ALTER TABLE `admin_empresa_gas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `admin_estado_civil`
--
ALTER TABLE `admin_estado_civil`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de la tabla `admin_incapacidades`
--
ALTER TABLE `admin_incapacidades`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT de la tabla `admin_mecanismo_informacion`
--
ALTER TABLE `admin_mecanismo_informacion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de la tabla `admin_misiones_comunidad`
--
ALTER TABLE `admin_misiones_comunidad`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT de la tabla `admin_nacionalidad`
--
ALTER TABLE `admin_nacionalidad`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `admin_nivel_instruccion`
--
ALTER TABLE `admin_nivel_instruccion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT de la tabla `admin_org_comunitaria`
--
ALTER TABLE `admin_org_comunitaria`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `admin_pensionado_institucion`
--
ALTER TABLE `admin_pensionado_institucion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `admin_preguntas`
--
ALTER TABLE `admin_preguntas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de la tabla `admin_preguntas_participacion_comunitaria`
--
ALTER TABLE `admin_preguntas_participacion_comunitaria`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT de la tabla `admin_preguntas_situacion_comunidad`
--
ALTER TABLE `admin_preguntas_situacion_comunidad`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT de la tabla `admin_preguntas_sit_com`
--
ALTER TABLE `admin_preguntas_sit_com`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `admin_profesion`
--
ALTER TABLE `admin_profesion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT de la tabla `admin_recoleccion_basura`
--
ALTER TABLE `admin_recoleccion_basura`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT de la tabla `admin_resp_cerrada`
--
ALTER TABLE `admin_resp_cerrada`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `admin_salubridad_vivienda`
--
ALTER TABLE `admin_salubridad_vivienda`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `admin_servicios_comunales`
--
ALTER TABLE `admin_servicios_comunales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT de la tabla `admin_sistema_electrico`
--
ALTER TABLE `admin_sistema_electrico`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `admin_tipo_ayuda_especial`
--
ALTER TABLE `admin_tipo_ayuda_especial`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT de la tabla `admin_tipo_condicion_terreno`
--
ALTER TABLE `admin_tipo_condicion_terreno`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `admin_tipo_enseres`
--
ALTER TABLE `admin_tipo_enseres`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT de la tabla `admin_tipo_gas`
--
ALTER TABLE `admin_tipo_gas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `admin_tipo_habitaciones_vivienda`
--
ALTER TABLE `admin_tipo_habitaciones_vivienda`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `admin_tipo_ingresos`
--
ALTER TABLE `admin_tipo_ingresos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de la tabla `admin_tipo_mascotas`
--
ALTER TABLE `admin_tipo_mascotas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT de la tabla `admin_tipo_padecencia`
--
ALTER TABLE `admin_tipo_padecencia`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT de la tabla `admin_tipo_paredes`
--
ALTER TABLE `admin_tipo_paredes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT de la tabla `admin_tipo_plagas`
--
ALTER TABLE `admin_tipo_plagas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de la tabla `admin_tipo_situacion`
--
ALTER TABLE `admin_tipo_situacion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de la tabla `admin_tipo_situacion_exclusion`
--
ALTER TABLE `admin_tipo_situacion_exclusion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `admin_tipo_techo`
--
ALTER TABLE `admin_tipo_techo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT de la tabla `admin_tipo_telefonia`
--
ALTER TABLE `admin_tipo_telefonia`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de la tabla `admin_tipo_tenencia`
--
ALTER TABLE `admin_tipo_tenencia`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT de la tabla `admin_tipo_transporte`
--
ALTER TABLE `admin_tipo_transporte`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `admin_tipo_vivienda`
--
ALTER TABLE `admin_tipo_vivienda`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT de la tabla `admin_ubicacion_trabajo`
--
ALTER TABLE `admin_ubicacion_trabajo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de la tabla `admin_venta_vivienda`
--
ALTER TABLE `admin_venta_vivienda`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=30;
--
-- AUTO_INCREMENT de la tabla `bitacora`
--
ALTER TABLE `bitacora`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=301;
--
-- AUTO_INCREMENT de la tabla `comite`
--
ALTER TABLE `comite`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT de la tabla `comunicado`
--
ALTER TABLE `comunicado`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `comunidad`
--
ALTER TABLE `comunidad`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `consejo_comunal`
--
ALTER TABLE `consejo_comunal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `grupo_familiar`
--
ALTER TABLE `grupo_familiar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT de la tabla `jefe_grupo_familiar`
--
ALTER TABLE `jefe_grupo_familiar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT de la tabla `noticia`
--
ALTER TABLE `noticia`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT de la tabla `participacion_comunitaria`
--
ALTER TABLE `participacion_comunitaria`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT de la tabla `persona`
--
ALTER TABLE `persona`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=40;
--
-- AUTO_INCREMENT de la tabla `planillas`
--
ALTER TABLE `planillas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT de la tabla `situacion_comunidad`
--
ALTER TABLE `situacion_comunidad`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT de la tabla `situacion_economica`
--
ALTER TABLE `situacion_economica`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT de la tabla `situacion_salud`
--
ALTER TABLE `situacion_salud`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT de la tabla `situacion_servicios`
--
ALTER TABLE `situacion_servicios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT de la tabla `situacion_vivienda`
--
ALTER TABLE `situacion_vivienda`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT de la tabla `telefono`
--
ALTER TABLE `telefono`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `vocero`
--
ALTER TABLE `vocero`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `admin_preguntas_participacion_comunitaria`
--
ALTER TABLE `admin_preguntas_participacion_comunitaria`
  ADD CONSTRAINT `FK_6CCE0A826C6EC5EE` FOREIGN KEY (`respuesta`) REFERENCES `admin_resp_cerrada` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_6CCE0A82D5B0D295` FOREIGN KEY (`interrogante`) REFERENCES `admin_preguntas` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `admin_preguntas_situacion_comunidad`
--
ALTER TABLE `admin_preguntas_situacion_comunidad`
  ADD CONSTRAINT `FK_F2BB96AF96BE66AD` FOREIGN KEY (`pregunta_sit_com`) REFERENCES `admin_preguntas_sit_com` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `admin_tipo_situacion_exclusion`
--
ALTER TABLE `admin_tipo_situacion_exclusion`
  ADD CONSTRAINT `FK_C1E4978696714AEF` FOREIGN KEY (`situacion_id`) REFERENCES `admin_tipo_situacion` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `bitacora`
--
ALTER TABLE `bitacora`
  ADD CONSTRAINT `FK_9087FEF92265B05D` FOREIGN KEY (`usuario`) REFERENCES `usuario` (`id`);

--
-- Filtros para la tabla `comite_voceros`
--
ALTER TABLE `comite_voceros`
  ADD CONSTRAINT `FK_28DCA084D61C3573` FOREIGN KEY (`comite_id`) REFERENCES `comite` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_28DCA084F74B9CAF` FOREIGN KEY (`vocero_id`) REFERENCES `vocero` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `comunicado`
--
ALTER TABLE `comunicado`
  ADD CONSTRAINT `FK_B5F88310DB38439E` FOREIGN KEY (`usuario_id`) REFERENCES `usuario` (`id`);

--
-- Filtros para la tabla `jefe_grupo_familiar`
--
ALTER TABLE `jefe_grupo_familiar`
  ADD CONSTRAINT `FK_911AFAF471F96440` FOREIGN KEY (`respC_id_3`) REFERENCES `admin_resp_cerrada` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_911AFAF473767F95` FOREIGN KEY (`cne`) REFERENCES `admin_resp_cerrada` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_911AFAF494702A8` FOREIGN KEY (`edoCivil_id`) REFERENCES `admin_estado_civil` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_911AFAF497FDD5BB` FOREIGN KEY (`nac_id`) REFERENCES `admin_nacionalidad` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_911AFAF4A902CCF6` FOREIGN KEY (`incap_id`) REFERENCES `admin_incapacidades` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_911AFAF4B0A667C3` FOREIGN KEY (`ingFam_id`) REFERENCES `admin_clas_ingreso_familiar` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_911AFAF4C5AF4D0F` FOREIGN KEY (`profesion_id`) REFERENCES `admin_profesion` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_911AFAF4F509D0E2` FOREIGN KEY (`pensIns_id`) REFERENCES `admin_pensionado_institucion` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_911AFAF4FDAC90A1` FOREIGN KEY (`nivelIns_id`) REFERENCES `admin_nivel_instruccion` (`id`) ON DELETE SET NULL;

--
-- Filtros para la tabla `jgf_telefonos`
--
ALTER TABLE `jgf_telefonos`
  ADD CONSTRAINT `FK_AA10AEC1CABCC9E7` FOREIGN KEY (`jefeGF_id`) REFERENCES `jefe_grupo_familiar` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_AA10AEC1FD6D75CD` FOREIGN KEY (`telefono_id`) REFERENCES `telefono` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `noticia`
--
ALTER TABLE `noticia`
  ADD CONSTRAINT `FK_31205F96DB38439E` FOREIGN KEY (`usuario_id`) REFERENCES `usuario` (`id`);

--
-- Filtros para la tabla `partcom_areatrabajo`
--
ALTER TABLE `partcom_areatrabajo`
  ADD CONSTRAINT `FK_D12BC43F3743E14B` FOREIGN KEY (`areacc_id`) REFERENCES `admin_area_trabajo_c_c` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_D12BC43F6A6BB17E` FOREIGN KEY (`partCom_id`) REFERENCES `participacion_comunitaria` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `partcom_misiones`
--
ALTER TABLE `partcom_misiones`
  ADD CONSTRAINT `FK_F1DF0B662F612167` FOREIGN KEY (`mision_id`) REFERENCES `admin_misiones_comunidad` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_F1DF0B666A6BB17E` FOREIGN KEY (`partCom_id`) REFERENCES `participacion_comunitaria` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `partcom_orgs`
--
ALTER TABLE `partcom_orgs`
  ADD CONSTRAINT `FK_9273F20E6A6BB17E` FOREIGN KEY (`partCom_id`) REFERENCES `participacion_comunitaria` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_9273F20E6DE0F7B5` FOREIGN KEY (`orgs_id`) REFERENCES `admin_org_comunitaria` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `partcom_pregpart`
--
ALTER TABLE `partcom_pregpart`
  ADD CONSTRAINT `FK_D88264E66A6BB17E` FOREIGN KEY (`partCom_id`) REFERENCES `participacion_comunitaria` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_D88264E6B5F176FD` FOREIGN KEY (`pregPart_id`) REFERENCES `admin_preguntas_participacion_comunitaria` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `participacion_comunitaria`
--
ALTER TABLE `participacion_comunitaria`
  ADD CONSTRAINT `FK_288572BD8D4889E5` FOREIGN KEY (`participaOrganizacion`) REFERENCES `admin_resp_cerrada` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_288572BDED3EAD41` FOREIGN KEY (`participaMiembroOrganizacion`) REFERENCES `admin_resp_cerrada` (`id`) ON DELETE SET NULL;

--
-- Filtros para la tabla `persona`
--
ALTER TABLE `persona`
  ADD CONSTRAINT `FK_51E5B69B73767F95` FOREIGN KEY (`cne`) REFERENCES `admin_resp_cerrada` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_51E5B69B97778FDC` FOREIGN KEY (`grupo_fam_id`) REFERENCES `grupo_familiar` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_51E5B69B97FDD5BB` FOREIGN KEY (`nac_id`) REFERENCES `admin_nacionalidad` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_51E5B69BA902CCF6` FOREIGN KEY (`incap_id`) REFERENCES `admin_incapacidades` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_51E5B69BC5AF4D0F` FOREIGN KEY (`profesion_id`) REFERENCES `admin_profesion` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_51E5B69BE11D40EA` FOREIGN KEY (`nivelInstr_id`) REFERENCES `admin_nivel_instruccion` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_51E5B69BE30347FD` FOREIGN KEY (`embrarazoTemp`) REFERENCES `admin_resp_cerrada` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_51E5B69BF509D0E2` FOREIGN KEY (`pensIns_id`) REFERENCES `admin_pensionado_institucion` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `planillas`
--
ALTER TABLE `planillas`
  ADD CONSTRAINT `FK_9F245E571A131B47` FOREIGN KEY (`sitSal`) REFERENCES `situacion_salud` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_9F245E572963AADE` FOREIGN KEY (`sitViv`) REFERENCES `situacion_vivienda` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_9F245E573E719A50` FOREIGN KEY (`grupoFam`) REFERENCES `grupo_familiar` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_9F245E57508E6BAF` FOREIGN KEY (`sitServ`) REFERENCES `situacion_servicios` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_9F245E5776590EDA` FOREIGN KEY (`partCom`) REFERENCES `participacion_comunitaria` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_9F245E57A987F7BD` FOREIGN KEY (`sitEco`) REFERENCES `situacion_economica` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_9F245E57DB38439E` FOREIGN KEY (`usuario_id`) REFERENCES `usuario` (`id`),
  ADD CONSTRAINT `FK_9F245E57EFB1A52F` FOREIGN KEY (`sitCom`) REFERENCES `situacion_comunidad` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_9F245E57EFFB6DE9` FOREIGN KEY (`jefegFam`) REFERENCES `jefe_grupo_familiar` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `siteco_actcomercial`
--
ALTER TABLE `siteco_actcomercial`
  ADD CONSTRAINT `FK_EE8876396F6EBA4A` FOREIGN KEY (`ActComercial`) REFERENCES `admin_venta_vivienda` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_EE887639A987F7BD` FOREIGN KEY (`sitEco`) REFERENCES `situacion_economica` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `sitsalud_ayu`
--
ALTER TABLE `sitsalud_ayu`
  ADD CONSTRAINT `FK_D406572319D257E1` FOREIGN KEY (`sitSalud_id`) REFERENCES `situacion_salud` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_D40657232D542B0F` FOREIGN KEY (`ayuda_id`) REFERENCES `admin_tipo_ayuda_especial` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `sitsalud_exc`
--
ALTER TABLE `sitsalud_exc`
  ADD CONSTRAINT `FK_3EC07BEF19D257E1` FOREIGN KEY (`sitSalud_id`) REFERENCES `situacion_salud` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_3EC07BEF4012D45C` FOREIGN KEY (`exclusion_id`) REFERENCES `admin_tipo_situacion_exclusion` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `sitsalud_padecencia`
--
ALTER TABLE `sitsalud_padecencia`
  ADD CONSTRAINT `FK_227FB6B619D257E1` FOREIGN KEY (`sitSalud_id`) REFERENCES `situacion_salud` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_227FB6B6F700F065` FOREIGN KEY (`padecencia_id`) REFERENCES `admin_tipo_padecencia` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `sitserv_mecinf`
--
ALTER TABLE `sitserv_mecinf`
  ADD CONSTRAINT `FK_B2359330386CC376` FOREIGN KEY (`sitServ_id`) REFERENCES `situacion_servicios` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_B2359330E068AC8F` FOREIGN KEY (`mecInf_id`) REFERENCES `admin_mecanismo_informacion` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `sitserv_servcom`
--
ALTER TABLE `sitserv_servcom`
  ADD CONSTRAINT `FK_E41428FB386CC376` FOREIGN KEY (`sitServ_id`) REFERENCES `situacion_servicios` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_E41428FB4B2F4A58` FOREIGN KEY (`servCom_id`) REFERENCES `admin_servicios_comunales` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `sitserv_telefonia`
--
ALTER TABLE `sitserv_telefonia`
  ADD CONSTRAINT `FK_D00B0305386CC376` FOREIGN KEY (`sitServ_id`) REFERENCES `situacion_servicios` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_D00B0305770904E9` FOREIGN KEY (`telefonia_id`) REFERENCES `admin_tipo_telefonia` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `sitserv_tiptrans`
--
ALTER TABLE `sitserv_tiptrans`
  ADD CONSTRAINT `FK_630DAFB8386CC376` FOREIGN KEY (`sitServ_id`) REFERENCES `situacion_servicios` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_630DAFB85796464F` FOREIGN KEY (`tipTrans_id`) REFERENCES `admin_tipo_transporte` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `situacion_economica`
--
ALTER TABLE `situacion_economica`
  ADD CONSTRAINT `FK_D862A9E174D2FD67` FOREIGN KEY (`ubcTrab`) REFERENCES `admin_ubicacion_trabajo` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_D862A9E1B0A667C3` FOREIGN KEY (`ingFam_id`) REFERENCES `admin_tipo_ingresos` (`id`) ON DELETE SET NULL;

--
-- Filtros para la tabla `situacion_servicios`
--
ALTER TABLE `situacion_servicios`
  ADD CONSTRAINT `FK_18C85AB216180132` FOREIGN KEY (`medidor`) REFERENCES `admin_resp_cerrada` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_18C85AB27337ED7` FOREIGN KEY (`gas`) REFERENCES `admin_tipo_gas` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_18C85AB276E021E6` FOREIGN KEY (`aguasServidas`) REFERENCES `admin_aguas_servidas` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_18C85AB28A9E46C7` FOREIGN KEY (`sistemaElectrico`) REFERENCES `admin_sistema_electrico` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_18C85AB2AC677493` FOREIGN KEY (`recoleccionBasura`) REFERENCES `admin_recoleccion_basura` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_18C85AB2B21E496` FOREIGN KEY (`empresaGas`) REFERENCES `admin_empresa_gas` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_18C85AB2C7398EE5` FOREIGN KEY (`bombillosAhorradores`) REFERENCES `admin_resp_cerrada` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_18C85AB2D5E61B0D` FOREIGN KEY (`capacidadBombona`) REFERENCES `admin_capacidad_bombona` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_18C85AB2E418525E` FOREIGN KEY (`aguasBlancas`) REFERENCES `admin_aguas_blancas` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_18C85AB2F6CAB85B` FOREIGN KEY (`medidorElectrico`) REFERENCES `admin_resp_cerrada` (`id`) ON DELETE SET NULL;

--
-- Filtros para la tabla `situacion_vivienda`
--
ALTER TABLE `situacion_vivienda`
  ADD CONSTRAINT `FK_960EEC761114BB9D` FOREIGN KEY (`ovc`) REFERENCES `admin_resp_cerrada` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_960EEC762993AB` FOREIGN KEY (`tipoParedes`) REFERENCES `admin_tipo_paredes` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_960EEC766004226D` FOREIGN KEY (`leypoliticahabitacional`) REFERENCES `admin_resp_cerrada` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_960EEC766AFBD666` FOREIGN KEY (`tipoTecho`) REFERENCES `admin_tipo_techo` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_960EEC76751FB05E` FOREIGN KEY (`salubridad`) REFERENCES `admin_salubridad_vivienda` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_960EEC7676BF63B4` FOREIGN KEY (`tipoTenencia`) REFERENCES `admin_tipo_tenencia` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_960EEC769954F8ED` FOREIGN KEY (`sivih`) REFERENCES `admin_resp_cerrada` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_960EEC76B3380955` FOREIGN KEY (`tipoVivienda`) REFERENCES `admin_tipo_vivienda` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_960EEC76B738CA13` FOREIGN KEY (`condicionesTerreno`) REFERENCES `admin_tipo_condicion_terreno` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_960EEC76EE4B270B` FOREIGN KEY (`terrenoPropio`) REFERENCES `admin_resp_cerrada` (`id`) ON DELETE SET NULL;

--
-- Filtros para la tabla `situcom_pregsitucomunidad`
--
ALTER TABLE `situcom_pregsitucomunidad`
  ADD CONSTRAINT `FK_FD42D1715A9CAA56` FOREIGN KEY (`situCom_id`) REFERENCES `situacion_comunidad` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_FD42D171C62EE28F` FOREIGN KEY (`pregSituComunidad_id`) REFERENCES `admin_preguntas_situacion_comunidad` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `sitvivi_enseres`
--
ALTER TABLE `sitvivi_enseres`
  ADD CONSTRAINT `FK_3873324E2963AADE` FOREIGN KEY (`sitViv`) REFERENCES `situacion_vivienda` (`id`),
  ADD CONSTRAINT `FK_3873324E4C064FE2` FOREIGN KEY (`enseres_id`) REFERENCES `admin_tipo_enseres` (`id`);

--
-- Filtros para la tabla `sitvivi_mascota`
--
ALTER TABLE `sitvivi_mascota`
  ADD CONSTRAINT `FK_6B3FF35B2963AADE` FOREIGN KEY (`sitViv`) REFERENCES `situacion_vivienda` (`id`),
  ADD CONSTRAINT `FK_6B3FF35BAA6CA4D7` FOREIGN KEY (`masco_id`) REFERENCES `admin_tipo_mascotas` (`id`);

--
-- Filtros para la tabla `sitvivi_plaga`
--
ALTER TABLE `sitvivi_plaga`
  ADD CONSTRAINT `FK_EF776E1E2963AADE` FOREIGN KEY (`sitViv`) REFERENCES `situacion_vivienda` (`id`),
  ADD CONSTRAINT `FK_EF776E1E7744938E` FOREIGN KEY (`plaga_id`) REFERENCES `admin_tipo_plagas` (`id`);

--
-- Filtros para la tabla `sitvivi_thv`
--
ALTER TABLE `sitvivi_thv`
  ADD CONSTRAINT `FK_32FADE5E2963AADE` FOREIGN KEY (`sitViv`) REFERENCES `situacion_vivienda` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_32FADE5EE0AB0CD6` FOREIGN KEY (`tHabViv_id`) REFERENCES `admin_tipo_habitaciones_vivienda` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `usuario_telefonos`
--
ALTER TABLE `usuario_telefonos`
  ADD CONSTRAINT `FK_524EAEBEDB38439E` FOREIGN KEY (`usuario_id`) REFERENCES `usuario` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_524EAEBEFD6D75CD` FOREIGN KEY (`telefono_id`) REFERENCES `telefono` (`id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
