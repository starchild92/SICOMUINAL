-- phpMyAdmin SQL Dump
-- version 4.4.14
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 08-10-2016 a las 14:57:50
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `admin_empresa_gas`
--

INSERT INTO `admin_empresa_gas` (`id`, `nombre`) VALUES
(1, 'PDVSA Gas'),
(2, 'Gas Comunal'),
(3, 'PETROVAL'),
(4, 'Bodegas');

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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `admin_nivel_instruccion`
--

INSERT INTO `admin_nivel_instruccion` (`id`, `nombre`) VALUES
(8, '4to Grado'),
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
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
(25, 3, 1),
(26, 2, 1),
(27, 3, 1);

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
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
(29, 'Reposterra'),
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
-- Volcado de datos para la tabla `admin_recoleccion_basura`
--

INSERT INTO `admin_recoleccion_basura` (`id`, `nombre`) VALUES
(7, 'A la Calle'),
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `admin_tipo_situacion_exclusion`
--

INSERT INTO `admin_tipo_situacion_exclusion` (`id`, `cantidad`, `situacion_id`) VALUES
(1, 1, 5),
(2, 1, 3),
(3, 2, 5);

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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `admin_tipo_tenencia`
--

INSERT INTO `admin_tipo_tenencia` (`id`, `forma`) VALUES
(2, 'Alquilada'),
(7, 'Arrimada'),
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=28;
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=30;
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
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

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
