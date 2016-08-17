-- phpMyAdmin SQL Dump
-- version 4.4.14
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 15-08-2016 a las 00:07:15
-- Versión del servidor: 5.6.26
-- Versión de PHP: 5.6.12

SET FOREIGN_KEY_CHECKS=0;
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
-- RELACIONES PARA LA TABLA `admin_aguas_blancas`:
--

--
-- Volcado de datos para la tabla `admin_aguas_blancas`
--

INSERT IGNORE INTO `admin_aguas_blancas` (`id`, `nombre`) VALUES
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
-- RELACIONES PARA LA TABLA `admin_aguas_servidas`:
--

--
-- Volcado de datos para la tabla `admin_aguas_servidas`
--

INSERT IGNORE INTO `admin_aguas_servidas` (`id`, `nombre`) VALUES
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
-- RELACIONES PARA LA TABLA `admin_area_trabajo_c_c`:
--

--
-- Volcado de datos para la tabla `admin_area_trabajo_c_c`
--

INSERT IGNORE INTO `admin_area_trabajo_c_c` (`id`, `nombre`) VALUES
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
-- RELACIONES PARA LA TABLA `admin_capacidad_bombona`:
--

--
-- Volcado de datos para la tabla `admin_capacidad_bombona`
--

INSERT IGNORE INTO `admin_capacidad_bombona` (`id`, `nombre`) VALUES
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
-- RELACIONES PARA LA TABLA `admin_clas_ingreso_familiar`:
--

--
-- Volcado de datos para la tabla `admin_clas_ingreso_familiar`
--

INSERT IGNORE INTO `admin_clas_ingreso_familiar` (`id`, `nombre`) VALUES
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- RELACIONES PARA LA TABLA `admin_empresa_gas`:
--

--
-- Volcado de datos para la tabla `admin_empresa_gas`
--

INSERT IGNORE INTO `admin_empresa_gas` (`id`, `nombre`) VALUES
(1, 'PDVSA Gas'),
(2, 'Gas Comunal');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `admin_estado_civil`
--

CREATE TABLE IF NOT EXISTS `admin_estado_civil` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- RELACIONES PARA LA TABLA `admin_estado_civil`:
--

--
-- Volcado de datos para la tabla `admin_estado_civil`
--

INSERT IGNORE INTO `admin_estado_civil` (`id`, `nombre`) VALUES
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- RELACIONES PARA LA TABLA `admin_incapacidades`:
--

--
-- Volcado de datos para la tabla `admin_incapacidades`
--

INSERT IGNORE INTO `admin_incapacidades` (`id`, `incapacidad`) VALUES
(2, 'Disfunción Auditiva'),
(3, 'Disfunción Verbal'),
(1, 'Disfunción Visual'),
(4, 'Protan Color Deficency');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `admin_mecanismo_informacion`
--

CREATE TABLE IF NOT EXISTS `admin_mecanismo_informacion` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- RELACIONES PARA LA TABLA `admin_mecanismo_informacion`:
--

--
-- Volcado de datos para la tabla `admin_mecanismo_informacion`
--

INSERT IGNORE INTO `admin_mecanismo_informacion` (`id`, `nombre`) VALUES
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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- RELACIONES PARA LA TABLA `admin_misiones_comunidad`:
--

--
-- Volcado de datos para la tabla `admin_misiones_comunidad`
--

INSERT IGNORE INTO `admin_misiones_comunidad` (`id`, `nombre`) VALUES
(6, 'Barrio Adentro'),
(7, 'Ezequiel Zamora'),
(5, 'Identidad'),
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
-- RELACIONES PARA LA TABLA `admin_nacionalidad`:
--

--
-- Volcado de datos para la tabla `admin_nacionalidad`
--

INSERT IGNORE INTO `admin_nacionalidad` (`id`, `nacionalidad`) VALUES
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
-- RELACIONES PARA LA TABLA `admin_nivel_instruccion`:
--

--
-- Volcado de datos para la tabla `admin_nivel_instruccion`
--

INSERT IGNORE INTO `admin_nivel_instruccion` (`id`, `nombre`) VALUES
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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- RELACIONES PARA LA TABLA `admin_org_comunitaria`:
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `admin_pensionado_institucion`
--

CREATE TABLE IF NOT EXISTS `admin_pensionado_institucion` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- RELACIONES PARA LA TABLA `admin_pensionado_institucion`:
--

--
-- Volcado de datos para la tabla `admin_pensionado_institucion`
--

INSERT IGNORE INTO `admin_pensionado_institucion` (`id`, `nombre`) VALUES
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
-- RELACIONES PARA LA TABLA `admin_preguntas`:
--

--
-- Volcado de datos para la tabla `admin_preguntas`
--

INSERT IGNORE INTO `admin_preguntas` (`id`, `pregunta`) VALUES
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- RELACIONES PARA LA TABLA `admin_preguntas_participacion_comunitaria`:
--   `respuesta`
--       `admin_resp_cerrada` -> `id`
--   `interrogante`
--       `admin_preguntas` -> `id`
--

--
-- Volcado de datos para la tabla `admin_preguntas_participacion_comunitaria`
--

INSERT IGNORE INTO `admin_preguntas_participacion_comunitaria` (`id`, `interrogante`, `respuesta`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 3, 1),
(4, 4, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `admin_preguntas_situacion_comunidad`
--

CREATE TABLE IF NOT EXISTS `admin_preguntas_situacion_comunidad` (
  `id` int(11) NOT NULL,
  `pregunta_sit_com` int(11) DEFAULT NULL,
  `pregunta` longtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- RELACIONES PARA LA TABLA `admin_preguntas_situacion_comunidad`:
--   `pregunta_sit_com`
--       `admin_preguntas_sit_com` -> `id`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `admin_preguntas_sit_com`
--

CREATE TABLE IF NOT EXISTS `admin_preguntas_sit_com` (
  `id` int(11) NOT NULL,
  `pregunta` longtext COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- RELACIONES PARA LA TABLA `admin_preguntas_sit_com`:
--

--
-- Volcado de datos para la tabla `admin_preguntas_sit_com`
--

INSERT IGNORE INTO `admin_preguntas_sit_com` (`id`, `pregunta`) VALUES
(1, 'En orden de importancia. ¿Cuáles cree Ud que son las principales potencialidades y aspectos ventajosos que tiene su comunidad?'),
(2, 'En orden de importancia. ¿Cuáles creed Ud que son los principales problemas y debilidades de su comunidad?');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `admin_profesion`
--

CREATE TABLE IF NOT EXISTS `admin_profesion` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- RELACIONES PARA LA TABLA `admin_profesion`:
--

--
-- Volcado de datos para la tabla `admin_profesion`
--

INSERT IGNORE INTO `admin_profesion` (`id`, `nombre`) VALUES
(11, 'Acesor de Ventas'),
(2, 'Albañil'),
(1, 'Analista Programador en Sistemas'),
(8, 'Beisbolista Profesional'),
(16, 'Costurera'),
(10, 'del Hogar'),
(15, 'Diseñador Gráfico'),
(12, 'Estudiante'),
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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- RELACIONES PARA LA TABLA `admin_recoleccion_basura`:
--

--
-- Volcado de datos para la tabla `admin_recoleccion_basura`
--

INSERT IGNORE INTO `admin_recoleccion_basura` (`id`, `nombre`) VALUES
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
-- RELACIONES PARA LA TABLA `admin_resp_cerrada`:
--

--
-- Volcado de datos para la tabla `admin_resp_cerrada`
--

INSERT IGNORE INTO `admin_resp_cerrada` (`id`, `respuesta`) VALUES
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
-- RELACIONES PARA LA TABLA `admin_salubridad_vivienda`:
--

--
-- Volcado de datos para la tabla `admin_salubridad_vivienda`
--

INSERT IGNORE INTO `admin_salubridad_vivienda` (`id`, `nombre`) VALUES
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
-- RELACIONES PARA LA TABLA `admin_servicios_comunales`:
--

--
-- Volcado de datos para la tabla `admin_servicios_comunales`
--

INSERT IGNORE INTO `admin_servicios_comunales` (`id`, `nombre`) VALUES
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
-- RELACIONES PARA LA TABLA `admin_sistema_electrico`:
--

--
-- Volcado de datos para la tabla `admin_sistema_electrico`
--

INSERT IGNORE INTO `admin_sistema_electrico` (`id`, `nombre`) VALUES
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
-- RELACIONES PARA LA TABLA `admin_tipo_ayuda_especial`:
--

--
-- Volcado de datos para la tabla `admin_tipo_ayuda_especial`
--

INSERT IGNORE INTO `admin_tipo_ayuda_especial` (`id`, `nombre`) VALUES
(12, 'Silla de Ruedas'),
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
-- RELACIONES PARA LA TABLA `admin_tipo_condicion_terreno`:
--

--
-- Volcado de datos para la tabla `admin_tipo_condicion_terreno`
--

INSERT IGNORE INTO `admin_tipo_condicion_terreno` (`id`, `nombre`) VALUES
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
-- RELACIONES PARA LA TABLA `admin_tipo_enseres`:
--

--
-- Volcado de datos para la tabla `admin_tipo_enseres`
--

INSERT IGNORE INTO `admin_tipo_enseres` (`id`, `nombre`) VALUES
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
-- RELACIONES PARA LA TABLA `admin_tipo_gas`:
--

--
-- Volcado de datos para la tabla `admin_tipo_gas`
--

INSERT IGNORE INTO `admin_tipo_gas` (`id`, `nombre`) VALUES
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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- RELACIONES PARA LA TABLA `admin_tipo_habitaciones_vivienda`:
--

--
-- Volcado de datos para la tabla `admin_tipo_habitaciones_vivienda`
--

INSERT IGNORE INTO `admin_tipo_habitaciones_vivienda` (`id`, `nombre`) VALUES
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
-- RELACIONES PARA LA TABLA `admin_tipo_ingresos`:
--

--
-- Volcado de datos para la tabla `admin_tipo_ingresos`
--

INSERT IGNORE INTO `admin_tipo_ingresos` (`id`, `nombre`) VALUES
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
-- RELACIONES PARA LA TABLA `admin_tipo_mascotas`:
--

--
-- Volcado de datos para la tabla `admin_tipo_mascotas`
--

INSERT IGNORE INTO `admin_tipo_mascotas` (`id`, `nombre`) VALUES
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- RELACIONES PARA LA TABLA `admin_tipo_padecencia`:
--

--
-- Volcado de datos para la tabla `admin_tipo_padecencia`
--

INSERT IGNORE INTO `admin_tipo_padecencia` (`id`, `nombre`) VALUES
(3, 'Daltonismo'),
(2, 'Diabetes'),
(6, 'Hipersensibilidad al Aire'),
(5, 'Hipertensión');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `admin_tipo_paredes`
--

CREATE TABLE IF NOT EXISTS `admin_tipo_paredes` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- RELACIONES PARA LA TABLA `admin_tipo_paredes`:
--

--
-- Volcado de datos para la tabla `admin_tipo_paredes`
--

INSERT IGNORE INTO `admin_tipo_paredes` (`id`, `nombre`) VALUES
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- RELACIONES PARA LA TABLA `admin_tipo_plagas`:
--

--
-- Volcado de datos para la tabla `admin_tipo_plagas`
--

INSERT IGNORE INTO `admin_tipo_plagas` (`id`, `nombre`) VALUES
(5, 'Ciempies'),
(4, 'Cucarachas'),
(3, 'Hormigas'),
(1, 'Moscas'),
(2, 'Ratones');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `admin_tipo_situacion_exclusion`
--

CREATE TABLE IF NOT EXISTS `admin_tipo_situacion_exclusion` (
  `id` int(11) NOT NULL,
  `situacion` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cantidad` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- RELACIONES PARA LA TABLA `admin_tipo_situacion_exclusion`:
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `admin_tipo_techo`
--

CREATE TABLE IF NOT EXISTS `admin_tipo_techo` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- RELACIONES PARA LA TABLA `admin_tipo_techo`:
--

--
-- Volcado de datos para la tabla `admin_tipo_techo`
--

INSERT IGNORE INTO `admin_tipo_techo` (`id`, `nombre`) VALUES
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- RELACIONES PARA LA TABLA `admin_tipo_telefonia`:
--

--
-- Volcado de datos para la tabla `admin_tipo_telefonia`
--

INSERT IGNORE INTO `admin_tipo_telefonia` (`id`, `nombre`) VALUES
(1, 'Celular'),
(3, 'Centro de Conexión'),
(2, 'Domiciliaría');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `admin_tipo_tenencia`
--

CREATE TABLE IF NOT EXISTS `admin_tipo_tenencia` (
  `id` int(11) NOT NULL,
  `forma` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- RELACIONES PARA LA TABLA `admin_tipo_tenencia`:
--

--
-- Volcado de datos para la tabla `admin_tipo_tenencia`
--

INSERT IGNORE INTO `admin_tipo_tenencia` (`id`, `forma`) VALUES
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- RELACIONES PARA LA TABLA `admin_tipo_transporte`:
--

--
-- Volcado de datos para la tabla `admin_tipo_transporte`
--

INSERT IGNORE INTO `admin_tipo_transporte` (`id`, `nombre`) VALUES
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
-- RELACIONES PARA LA TABLA `admin_tipo_vivienda`:
--

--
-- Volcado de datos para la tabla `admin_tipo_vivienda`
--

INSERT IGNORE INTO `admin_tipo_vivienda` (`id`, `nombre`) VALUES
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
-- RELACIONES PARA LA TABLA `admin_ubicacion_trabajo`:
--

--
-- Volcado de datos para la tabla `admin_ubicacion_trabajo`
--

INSERT IGNORE INTO `admin_ubicacion_trabajo` (`id`, `nombre`) VALUES
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
-- RELACIONES PARA LA TABLA `admin_venta_vivienda`:
--

--
-- Volcado de datos para la tabla `admin_venta_vivienda`
--

INSERT IGNORE INTO `admin_venta_vivienda` (`id`, `nombre`) VALUES
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
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- RELACIONES PARA LA TABLA `bitacora`:
--   `usuario`
--       `usuario` -> `id`
--

--
-- Volcado de datos para la tabla `bitacora`
--

INSERT IGNORE INTO `bitacora` (`id`, `usuario`, `accion`, `detalles`, `fecha`) VALUES
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
(67, 1, 'modificó', 'un Grupo Familiar', '2016-08-15 00:04:34');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comite`
--

CREATE TABLE IF NOT EXISTS `comite` (
  `id` int(11) NOT NULL,
  `nombre` varchar(225) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cant_voceros` int(11) DEFAULT NULL,
  `tipo_unidad` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- RELACIONES PARA LA TABLA `comite`:
--

--
-- Volcado de datos para la tabla `comite`
--

INSERT IGNORE INTO `comite` (`id`, `nombre`, `cant_voceros`, `tipo_unidad`) VALUES
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

--
-- RELACIONES PARA LA TABLA `comite_voceros`:
--   `comite_id`
--       `comite` -> `id`
--   `vocero_id`
--       `vocero` -> `id`
--

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

--
-- RELACIONES PARA LA TABLA `comunicado`:
--   `usuario_id`
--       `usuario` -> `id`
--

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
-- RELACIONES PARA LA TABLA `comunidad`:
--

--
-- Volcado de datos para la tabla `comunidad`
--

INSERT IGNORE INTO `comunidad` (`id`, `estado`, `municipio`, `parroquia`, `sector`, `comunidad`, `direccion`) VALUES
(1, 'Carabobo', 'Valencia', 'Candelaria', 'II', 'Los Guayos', 'Los Guayos');

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
-- RELACIONES PARA LA TABLA `consejo_comunal`:
--

--
-- Volcado de datos para la tabla `consejo_comunal`
--

INSERT IGNORE INTO `consejo_comunal` (`id`, `nombre`, `codigo`, `rif`, `numeroCuenta`) VALUES
(1, 'Consejo Comunal de Los Guayos', '15425896587', '199194680', '97987546613132564987');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `grupo_familiar`
--

CREATE TABLE IF NOT EXISTS `grupo_familiar` (
  `id` int(11) NOT NULL,
  `apellidos` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `direccion` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cantidadMiembros` int(11) NOT NULL,
  `numeroCasa` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sector` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- RELACIONES PARA LA TABLA `grupo_familiar`:
--

--
-- Volcado de datos para la tabla `grupo_familiar`
--

INSERT IGNORE INTO `grupo_familiar` (`id`, `apellidos`, `direccion`, `cantidadMiembros`, `numeroCasa`, `sector`) VALUES
(1, 'Brito Leal', 'Av. 111-B', 2, '88-120', 'Eutimio Rivas');

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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- RELACIONES PARA LA TABLA `jefe_grupo_familiar`:
--   `respC_id_3`
--       `admin_resp_cerrada` -> `id`
--   `cne`
--       `admin_resp_cerrada` -> `id`
--   `edoCivil_id`
--       `admin_estado_civil` -> `id`
--   `nac_id`
--       `admin_nacionalidad` -> `id`
--   `incap_id`
--       `admin_incapacidades` -> `id`
--   `ingFam_id`
--       `admin_clas_ingreso_familiar` -> `id`
--   `profesion_id`
--       `admin_profesion` -> `id`
--   `pensIns_id`
--       `admin_pensionado_institucion` -> `id`
--   `nivelIns_id`
--       `admin_nivel_instruccion` -> `id`
--

--
-- Volcado de datos para la tabla `jefe_grupo_familiar`
--

INSERT IGNORE INTO `jefe_grupo_familiar` (`id`, `nac_id`, `cne`, `incap_id`, `profesion_id`, `nombres`, `apellidos`, `cedula`, `fechaNacimiento`, `edad`, `tiempoEnComunidad`, `sexo`, `incapacitado`, `pensionado`, `email`, `ingresoMensual`, `recibir_correo`, `pensIns_id`, `edoCivil_id`, `nivelIns_id`, `respC_id_3`, `ingFam_id`) VALUES
(3, 1, 1, NULL, 17, 'José Brigido', 'Brito Leal', '14161843', '1976-09-24', 39, '28', 'Masculino', 'no', 'no', NULL, 33000, 0, NULL, 2, 5, 1, 9);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jgf_telefonos`
--

CREATE TABLE IF NOT EXISTS `jgf_telefonos` (
  `telefono_id` int(11) NOT NULL,
  `jefeGF_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- RELACIONES PARA LA TABLA `jgf_telefonos`:
--   `jefeGF_id`
--       `jefe_grupo_familiar` -> `id`
--   `telefono_id`
--       `telefono` -> `id`
--

--
-- Volcado de datos para la tabla `jgf_telefonos`
--

INSERT IGNORE INTO `jgf_telefonos` (`telefono_id`, `jefeGF_id`) VALUES
(8, 3),
(9, 3);

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
-- RELACIONES PARA LA TABLA `noticia`:
--   `usuario_id`
--       `usuario` -> `id`
--

--
-- Volcado de datos para la tabla `noticia`
--

INSERT IGNORE INTO `noticia` (`id`, `usuario_id`, `titulo`, `cuerpo`, `fecha`, `fechaPub`, `visibilidad`) VALUES
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
-- RELACIONES PARA LA TABLA `partcom_areatrabajo`:
--   `areacc_id`
--       `admin_area_trabajo_c_c` -> `id`
--   `partCom_id`
--       `participacion_comunitaria` -> `id`
--

--
-- Volcado de datos para la tabla `partcom_areatrabajo`
--

INSERT IGNORE INTO `partcom_areatrabajo` (`areacc_id`, `partCom_id`) VALUES
(1, 1),
(9, 1),
(10, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `partcom_misiones`
--

CREATE TABLE IF NOT EXISTS `partcom_misiones` (
  `mision_id` int(11) NOT NULL,
  `partCom_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- RELACIONES PARA LA TABLA `partcom_misiones`:
--   `mision_id`
--       `admin_misiones_comunidad` -> `id`
--   `partCom_id`
--       `participacion_comunitaria` -> `id`
--

--
-- Volcado de datos para la tabla `partcom_misiones`
--

INSERT IGNORE INTO `partcom_misiones` (`mision_id`, `partCom_id`) VALUES
(1, 1),
(2, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `partcom_orgs`
--

CREATE TABLE IF NOT EXISTS `partcom_orgs` (
  `orgs_id` int(11) NOT NULL,
  `partCom_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- RELACIONES PARA LA TABLA `partcom_orgs`:
--   `partCom_id`
--       `participacion_comunitaria` -> `id`
--   `orgs_id`
--       `admin_org_comunitaria` -> `id`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `partcom_pregpart`
--

CREATE TABLE IF NOT EXISTS `partcom_pregpart` (
  `partCom_id` int(11) NOT NULL,
  `pregPart_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- RELACIONES PARA LA TABLA `partcom_pregpart`:
--   `partCom_id`
--       `participacion_comunitaria` -> `id`
--   `pregPart_id`
--       `admin_preguntas_participacion_comunitaria` -> `id`
--

--
-- Volcado de datos para la tabla `partcom_pregpart`
--

INSERT IGNORE INTO `partcom_pregpart` (`partCom_id`, `pregPart_id`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `participacion_comunitaria`
--

CREATE TABLE IF NOT EXISTS `participacion_comunitaria` (
  `id` int(11) NOT NULL,
  `participaOrganizacion` int(11) DEFAULT NULL,
  `participaMiembroOrganizacion` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- RELACIONES PARA LA TABLA `participacion_comunitaria`:
--   `participaOrganizacion`
--       `admin_resp_cerrada` -> `id`
--   `participaMiembroOrganizacion`
--       `admin_resp_cerrada` -> `id`
--

--
-- Volcado de datos para la tabla `participacion_comunitaria`
--

INSERT IGNORE INTO `participacion_comunitaria` (`id`, `participaOrganizacion`, `participaMiembroOrganizacion`) VALUES
(1, 2, 2);

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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- RELACIONES PARA LA TABLA `persona`:
--   `cne`
--       `admin_resp_cerrada` -> `id`
--   `grupo_fam_id`
--       `grupo_familiar` -> `id`
--   `nac_id`
--       `admin_nacionalidad` -> `id`
--   `incap_id`
--       `admin_incapacidades` -> `id`
--   `profesion_id`
--       `admin_profesion` -> `id`
--   `nivelInstr_id`
--       `admin_nivel_instruccion` -> `id`
--   `embrarazoTemp`
--       `admin_resp_cerrada` -> `id`
--   `pensIns_id`
--       `admin_pensionado_institucion` -> `id`
--

--
-- Volcado de datos para la tabla `persona`
--

INSERT IGNORE INTO `persona` (`id`, `nac_id`, `profesion_id`, `cne`, `incap_id`, `grupo_fam_id`, `nombre`, `apellido`, `sexo`, `cedula`, `fechaNacimiento`, `edad`, `parentesco`, `incapacitado`, `pensionado`, `ingresoMensual`, `email`, `recibir_correo`, `nivelInstr_id`, `embrarazoTemp`, `pensIns_id`) VALUES
(1, 1, 18, 1, NULL, 1, 'Erika del M', 'Villegas Machado', 'Femenino', '19861500', '1989-04-12', 27, 'Esposa', 'no', 'no', 33000, NULL, 0, 6, 2, NULL);

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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- RELACIONES PARA LA TABLA `planillas`:
--   `sitSal`
--       `situacion_salud` -> `id`
--   `sitViv`
--       `situacion_vivienda` -> `id`
--   `grupoFam`
--       `grupo_familiar` -> `id`
--   `sitServ`
--       `situacion_servicios` -> `id`
--   `partCom`
--       `participacion_comunitaria` -> `id`
--   `sitEco`
--       `situacion_economica` -> `id`
--   `usuario_id`
--       `usuario` -> `id`
--   `sitCom`
--       `situacion_comunidad` -> `id`
--   `jefegFam`
--       `jefe_grupo_familiar` -> `id`
--

--
-- Volcado de datos para la tabla `planillas`
--

INSERT IGNORE INTO `planillas` (`id`, `usuario_id`, `observaciones`, `terminada`, `fecha`, `jefegFam`, `grupoFam`, `sitEco`, `sitViv`, `sitSal`, `sitServ`, `partCom`, `sitCom`) VALUES
(3, 1, NULL, 100, '2016-08-14 23:16:44', 3, 1, 1, 1, 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `siteco_actcomercial`
--

CREATE TABLE IF NOT EXISTS `siteco_actcomercial` (
  `sitEco` int(11) NOT NULL,
  `ActComercial` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- RELACIONES PARA LA TABLA `siteco_actcomercial`:
--   `ActComercial`
--       `admin_venta_vivienda` -> `id`
--   `sitEco`
--       `situacion_economica` -> `id`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sitsalud_ayu`
--

CREATE TABLE IF NOT EXISTS `sitsalud_ayu` (
  `ayuda_id` int(11) NOT NULL,
  `sitSalud_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- RELACIONES PARA LA TABLA `sitsalud_ayu`:
--   `sitSalud_id`
--       `situacion_salud` -> `id`
--   `ayuda_id`
--       `admin_tipo_ayuda_especial` -> `id`
--

--
-- Volcado de datos para la tabla `sitsalud_ayu`
--

INSERT IGNORE INTO `sitsalud_ayu` (`ayuda_id`, `sitSalud_id`) VALUES
(13, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sitsalud_exc`
--

CREATE TABLE IF NOT EXISTS `sitsalud_exc` (
  `exclusion_id` int(11) NOT NULL,
  `sitSalud_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- RELACIONES PARA LA TABLA `sitsalud_exc`:
--   `sitSalud_id`
--       `situacion_salud` -> `id`
--   `exclusion_id`
--       `admin_tipo_situacion_exclusion` -> `id`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sitsalud_padecencia`
--

CREATE TABLE IF NOT EXISTS `sitsalud_padecencia` (
  `padecencia_id` int(11) NOT NULL,
  `sitSalud_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- RELACIONES PARA LA TABLA `sitsalud_padecencia`:
--   `sitSalud_id`
--       `situacion_salud` -> `id`
--   `padecencia_id`
--       `admin_tipo_padecencia` -> `id`
--

--
-- Volcado de datos para la tabla `sitsalud_padecencia`
--

INSERT IGNORE INTO `sitsalud_padecencia` (`padecencia_id`, `sitSalud_id`) VALUES
(5, 1),
(6, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sitserv_mecinf`
--

CREATE TABLE IF NOT EXISTS `sitserv_mecinf` (
  `sitServ_id` int(11) NOT NULL,
  `mecInf_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- RELACIONES PARA LA TABLA `sitserv_mecinf`:
--   `sitServ_id`
--       `situacion_servicios` -> `id`
--   `mecInf_id`
--       `admin_mecanismo_informacion` -> `id`
--

--
-- Volcado de datos para la tabla `sitserv_mecinf`
--

INSERT IGNORE INTO `sitserv_mecinf` (`sitServ_id`, `mecInf_id`) VALUES
(1, 1),
(1, 2),
(1, 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sitserv_servcom`
--

CREATE TABLE IF NOT EXISTS `sitserv_servcom` (
  `sitServ_id` int(11) NOT NULL,
  `servCom_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- RELACIONES PARA LA TABLA `sitserv_servcom`:
--   `sitServ_id`
--       `situacion_servicios` -> `id`
--   `servCom_id`
--       `admin_servicios_comunales` -> `id`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sitserv_telefonia`
--

CREATE TABLE IF NOT EXISTS `sitserv_telefonia` (
  `telefonia_id` int(11) NOT NULL,
  `sitServ_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- RELACIONES PARA LA TABLA `sitserv_telefonia`:
--   `sitServ_id`
--       `situacion_servicios` -> `id`
--   `telefonia_id`
--       `admin_tipo_telefonia` -> `id`
--

--
-- Volcado de datos para la tabla `sitserv_telefonia`
--

INSERT IGNORE INTO `sitserv_telefonia` (`telefonia_id`, `sitServ_id`) VALUES
(1, 1),
(2, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sitserv_tiptrans`
--

CREATE TABLE IF NOT EXISTS `sitserv_tiptrans` (
  `sitServ_id` int(11) NOT NULL,
  `tipTrans_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- RELACIONES PARA LA TABLA `sitserv_tiptrans`:
--   `sitServ_id`
--       `situacion_servicios` -> `id`
--   `tipTrans_id`
--       `admin_tipo_transporte` -> `id`
--

--
-- Volcado de datos para la tabla `sitserv_tiptrans`
--

INSERT IGNORE INTO `sitserv_tiptrans` (`sitServ_id`, `tipTrans_id`) VALUES
(1, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `situacion_comunidad`
--

CREATE TABLE IF NOT EXISTS `situacion_comunidad` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- RELACIONES PARA LA TABLA `situacion_comunidad`:
--

--
-- Volcado de datos para la tabla `situacion_comunidad`
--

INSERT IGNORE INTO `situacion_comunidad` (`id`) VALUES
(1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `situacion_economica`
--

CREATE TABLE IF NOT EXISTS `situacion_economica` (
  `id` int(11) NOT NULL,
  `ingresoFamiliar` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `placa` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ubcTrab` int(11) DEFAULT NULL,
  `ingFam_id` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- RELACIONES PARA LA TABLA `situacion_economica`:
--   `ubcTrab`
--       `admin_ubicacion_trabajo` -> `id`
--   `ingFam_id`
--       `admin_tipo_ingresos` -> `id`
--

--
-- Volcado de datos para la tabla `situacion_economica`
--

INSERT IGNORE INTO `situacion_economica` (`id`, `ingresoFamiliar`, `placa`, `ubcTrab`, `ingFam_id`) VALUES
(1, '33000', NULL, 1, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `situacion_salud`
--

CREATE TABLE IF NOT EXISTS `situacion_salud` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- RELACIONES PARA LA TABLA `situacion_salud`:
--

--
-- Volcado de datos para la tabla `situacion_salud`
--

INSERT IGNORE INTO `situacion_salud` (`id`) VALUES
(1);

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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- RELACIONES PARA LA TABLA `situacion_servicios`:
--   `medidor`
--       `admin_resp_cerrada` -> `id`
--   `gas`
--       `admin_tipo_gas` -> `id`
--   `aguasServidas`
--       `admin_aguas_servidas` -> `id`
--   `sistemaElectrico`
--       `admin_sistema_electrico` -> `id`
--   `recoleccionBasura`
--       `admin_recoleccion_basura` -> `id`
--   `empresaGas`
--       `admin_empresa_gas` -> `id`
--   `bombillosAhorradores`
--       `admin_resp_cerrada` -> `id`
--   `capacidadBombona`
--       `admin_capacidad_bombona` -> `id`
--   `aguasBlancas`
--       `admin_aguas_blancas` -> `id`
--   `medidorElectrico`
--       `admin_resp_cerrada` -> `id`
--

--
-- Volcado de datos para la tabla `situacion_servicios`
--

INSERT IGNORE INTO `situacion_servicios` (`id`, `gas`, `medidor`, `lts_tanque`, `cant_pipotes`, `cantBombonas`, `precioBombona`, `duracionBombona`, `aguasBlancas`, `aguasServidas`, `sistemaElectrico`, `recoleccionBasura`, `empresaGas`, `capacidadBombona`, `medidorElectrico`, `bombillosAhorradores`) VALUES
(1, 1, 1, 0, 1, 1, 0, '1 mes', 2, 2, 1, 1, 1, 1, 1, 2);

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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- RELACIONES PARA LA TABLA `situacion_vivienda`:
--   `ovc`
--       `admin_resp_cerrada` -> `id`
--   `tipoParedes`
--       `admin_tipo_paredes` -> `id`
--   `leypoliticahabitacional`
--       `admin_resp_cerrada` -> `id`
--   `tipoTecho`
--       `admin_tipo_techo` -> `id`
--   `salubridad`
--       `admin_salubridad_vivienda` -> `id`
--   `tipoTenencia`
--       `admin_tipo_tenencia` -> `id`
--   `sivih`
--       `admin_resp_cerrada` -> `id`
--   `tipoVivienda`
--       `admin_tipo_vivienda` -> `id`
--   `condicionesTerreno`
--       `admin_tipo_condicion_terreno` -> `id`
--   `terrenoPropio`
--       `admin_resp_cerrada` -> `id`
--

--
-- Volcado de datos para la tabla `situacion_vivienda`
--

INSERT IGNORE INTO `situacion_vivienda` (`id`, `ovc`, `salubridad`, `leypoliticahabitacional`, `sivih`, `cantidadHabitaciones`, `tipoVivienda`, `tipoTenencia`, `terrenoPropio`, `tipoParedes`, `tipoTecho`, `condicionesTerreno`) VALUES
(1, 2, 1, 1, 2, 2, 2, 1, 1, 1, 2, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `situcom_pregsitucomunidad`
--

CREATE TABLE IF NOT EXISTS `situcom_pregsitucomunidad` (
  `situCom_id` int(11) NOT NULL,
  `pregSituComunidad_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- RELACIONES PARA LA TABLA `situcom_pregsitucomunidad`:
--   `situCom_id`
--       `situacion_comunidad` -> `id`
--   `pregSituComunidad_id`
--       `admin_preguntas_situacion_comunidad` -> `id`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sitvivi_enseres`
--

CREATE TABLE IF NOT EXISTS `sitvivi_enseres` (
  `enseres_id` int(11) NOT NULL,
  `sitViv` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- RELACIONES PARA LA TABLA `sitvivi_enseres`:
--   `sitViv`
--       `situacion_vivienda` -> `id`
--   `enseres_id`
--       `admin_tipo_enseres` -> `id`
--

--
-- Volcado de datos para la tabla `sitvivi_enseres`
--

INSERT IGNORE INTO `sitvivi_enseres` (`enseres_id`, `sitViv`) VALUES
(1, 1),
(2, 1),
(4, 1),
(5, 1),
(7, 1),
(9, 1),
(13, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sitvivi_mascota`
--

CREATE TABLE IF NOT EXISTS `sitvivi_mascota` (
  `masco_id` int(11) NOT NULL,
  `sitViv` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- RELACIONES PARA LA TABLA `sitvivi_mascota`:
--   `sitViv`
--       `situacion_vivienda` -> `id`
--   `masco_id`
--       `admin_tipo_mascotas` -> `id`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sitvivi_plaga`
--

CREATE TABLE IF NOT EXISTS `sitvivi_plaga` (
  `plaga_id` int(11) NOT NULL,
  `sitViv` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- RELACIONES PARA LA TABLA `sitvivi_plaga`:
--   `sitViv`
--       `situacion_vivienda` -> `id`
--   `plaga_id`
--       `admin_tipo_plagas` -> `id`
--

--
-- Volcado de datos para la tabla `sitvivi_plaga`
--

INSERT IGNORE INTO `sitvivi_plaga` (`plaga_id`, `sitViv`) VALUES
(4, 1),
(5, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sitvivi_thv`
--

CREATE TABLE IF NOT EXISTS `sitvivi_thv` (
  `sitViv` int(11) NOT NULL,
  `tHabViv_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- RELACIONES PARA LA TABLA `sitvivi_thv`:
--   `sitViv`
--       `situacion_vivienda` -> `id`
--   `tHabViv_id`
--       `admin_tipo_habitaciones_vivienda` -> `id`
--

--
-- Volcado de datos para la tabla `sitvivi_thv`
--

INSERT IGNORE INTO `sitvivi_thv` (`sitViv`, `tHabViv_id`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `telefono`
--

CREATE TABLE IF NOT EXISTS `telefono` (
  `id` int(11) NOT NULL,
  `codigo` varchar(225) COLLATE utf8_unicode_ci NOT NULL,
  `numero` varchar(225) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- RELACIONES PARA LA TABLA `telefono`:
--

--
-- Volcado de datos para la tabla `telefono`
--

INSERT IGNORE INTO `telefono` (`id`, `codigo`, `numero`) VALUES
(8, '0414', '4801367'),
(9, '0241', '8357853');

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
-- RELACIONES PARA LA TABLA `usuario`:
--

--
-- Volcado de datos para la tabla `usuario`
--

INSERT IGNORE INTO `usuario` (`id`, `username`, `username_canonical`, `email`, `email_canonical`, `enabled`, `salt`, `password`, `last_login`, `locked`, `expired`, `expires_at`, `confirmation_token`, `password_requested_at`, `roles`, `credentials_expired`, `credentials_expire_at`, `primerNombre`, `segundoNombre`, `primerApellido`, `segundoApellido`, `cedula`, `fechaNacimiento`) VALUES
(1, 'lapv1992', 'lapv1992', 'lapv1992@gmail.com', 'lapv1992@gmail.com', 1, 'qafdg29ko7404sss44gwwgsooowsgw8', '$2y$13$qafdg29ko7404sss44gwwe62QxJarXxGwxOWv9a5MfX56934B7yXi', '2016-08-14 21:47:49', 0, 0, NULL, '7vLAhTM1SgtNRBRoB1di68SMsqVYZfwTCHS0fpmzP-o', '2016-07-21 11:21:32', 'a:1:{i:0;s:10:"ROLE_ADMIN";}', 0, NULL, 'Luis', 'Alberto', 'Pérez', 'Vera', '19919468', '1992-03-20'),
(2, 'ajpv16', 'ajpv16', 'ajpv16@gmail.com', 'ajpv16@gmail.com', 0, 'esmm1xv957kg4csg8c0ggw8088ss4kc', '$2y$13$esmm1xv957kg4csg8c0ggu4zLP/SFxYcWvcJCw990EBR8o/fznzKa', '2016-07-10 18:35:48', 0, 0, NULL, NULL, NULL, 'a:0:{}', 0, NULL, 'Anny', 'Yordana', 'Pérez', 'Vera', '24244451', '1989-01-14');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario_telefonos`
--

CREATE TABLE IF NOT EXISTS `usuario_telefonos` (
  `usuario_id` int(11) NOT NULL,
  `telefono_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- RELACIONES PARA LA TABLA `usuario_telefonos`:
--   `usuario_id`
--       `usuario` -> `id`
--   `telefono_id`
--       `telefono` -> `id`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vocero`
--

CREATE TABLE IF NOT EXISTS `vocero` (
  `id` int(11) NOT NULL,
  `tipo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `votos_electo` int(11) DEFAULT NULL,
  `persona` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- RELACIONES PARA LA TABLA `vocero`:
--

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
-- Indices de la tabla `admin_tipo_situacion_exclusion`
--
ALTER TABLE `admin_tipo_situacion_exclusion`
  ADD PRIMARY KEY (`id`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `admin_estado_civil`
--
ALTER TABLE `admin_estado_civil`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de la tabla `admin_incapacidades`
--
ALTER TABLE `admin_incapacidades`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `admin_mecanismo_informacion`
--
ALTER TABLE `admin_mecanismo_informacion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de la tabla `admin_misiones_comunidad`
--
ALTER TABLE `admin_misiones_comunidad`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `admin_preguntas_situacion_comunidad`
--
ALTER TABLE `admin_preguntas_situacion_comunidad`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `admin_preguntas_sit_com`
--
ALTER TABLE `admin_preguntas_sit_com`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `admin_profesion`
--
ALTER TABLE `admin_profesion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT de la tabla `admin_recoleccion_basura`
--
ALTER TABLE `admin_recoleccion_basura`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT de la tabla `admin_tipo_paredes`
--
ALTER TABLE `admin_tipo_paredes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT de la tabla `admin_tipo_plagas`
--
ALTER TABLE `admin_tipo_plagas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT de la tabla `admin_tipo_situacion_exclusion`
--
ALTER TABLE `admin_tipo_situacion_exclusion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT de la tabla `admin_tipo_techo`
--
ALTER TABLE `admin_tipo_techo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT de la tabla `admin_tipo_telefonia`
--
ALTER TABLE `admin_tipo_telefonia`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `admin_tipo_tenencia`
--
ALTER TABLE `admin_tipo_tenencia`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT de la tabla `admin_tipo_transporte`
--
ALTER TABLE `admin_tipo_transporte`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=68;
--
-- AUTO_INCREMENT de la tabla `comite`
--
ALTER TABLE `comite`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=23;
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `jefe_grupo_familiar`
--
ALTER TABLE `jefe_grupo_familiar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `noticia`
--
ALTER TABLE `noticia`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT de la tabla `participacion_comunitaria`
--
ALTER TABLE `participacion_comunitaria`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `persona`
--
ALTER TABLE `persona`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `planillas`
--
ALTER TABLE `planillas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `situacion_comunidad`
--
ALTER TABLE `situacion_comunidad`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `situacion_economica`
--
ALTER TABLE `situacion_economica`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `situacion_salud`
--
ALTER TABLE `situacion_salud`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `situacion_servicios`
--
ALTER TABLE `situacion_servicios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `situacion_vivienda`
--
ALTER TABLE `situacion_vivienda`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `telefono`
--
ALTER TABLE `telefono`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `vocero`
--
ALTER TABLE `vocero`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
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
SET FOREIGN_KEY_CHECKS=1;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
