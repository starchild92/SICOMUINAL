-- phpMyAdmin SQL Dump
-- version 4.4.14
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 10-08-2016 a las 12:41:34
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

--
-- Truncar tablas antes de insertar `admin_aguas_blancas`
--

TRUNCATE TABLE `admin_aguas_blancas`;
--
-- Volcado de datos para la tabla `admin_aguas_blancas`
--

INSERT IGNORE INTO `admin_aguas_blancas` (`id`, `nombre`) VALUES
(1, 'Acuaeducto'),
(2, 'Camión'),
(4, 'Del Río'),
(3, 'Pila Pública');

--
-- Truncar tablas antes de insertar `admin_aguas_servidas`
--

TRUNCATE TABLE `admin_aguas_servidas`;
--
-- Volcado de datos para la tabla `admin_aguas_servidas`
--

INSERT IGNORE INTO `admin_aguas_servidas` (`id`, `nombre`) VALUES
(2, 'Cloaca'),
(1, 'Pozos sépticos');

--
-- Truncar tablas antes de insertar `admin_area_trabajo_c_c`
--

TRUNCATE TABLE `admin_area_trabajo_c_c`;
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

--
-- Truncar tablas antes de insertar `admin_capacidad_bombona`
--

TRUNCATE TABLE `admin_capacidad_bombona`;
--
-- Volcado de datos para la tabla `admin_capacidad_bombona`
--

INSERT IGNORE INTO `admin_capacidad_bombona` (`id`, `nombre`) VALUES
(1, '10Kg'),
(2, '18Kg'),
(3, '43Kg');

--
-- Truncar tablas antes de insertar `admin_clas_ingreso_familiar`
--

TRUNCATE TABLE `admin_clas_ingreso_familiar`;
--
-- Volcado de datos para la tabla `admin_clas_ingreso_familiar`
--

INSERT IGNORE INTO `admin_clas_ingreso_familiar` (`id`, `nombre`) VALUES
(2, 'Diario'),
(1, 'Mensual'),
(6, 'Por trabajo realizado'),
(5, 'Quincenal'),
(3, 'Semanal');

--
-- Truncar tablas antes de insertar `admin_empresa_gas`
--

TRUNCATE TABLE `admin_empresa_gas`;
--
-- Volcado de datos para la tabla `admin_empresa_gas`
--

INSERT IGNORE INTO `admin_empresa_gas` (`id`, `nombre`) VALUES
(1, 'PDVSA Gas'),
(2, 'Gas Comunal');

--
-- Truncar tablas antes de insertar `admin_estado_civil`
--

TRUNCATE TABLE `admin_estado_civil`;
--
-- Volcado de datos para la tabla `admin_estado_civil`
--

INSERT IGNORE INTO `admin_estado_civil` (`id`, `nombre`) VALUES
(2, 'Casado(a)'),
(4, 'Concubino(a)'),
(3, 'Divorciado(a)'),
(1, 'Soltero(a)'),
(5, 'Viudo(a)');

--
-- Truncar tablas antes de insertar `admin_incapacidades`
--

TRUNCATE TABLE `admin_incapacidades`;
--
-- Volcado de datos para la tabla `admin_incapacidades`
--

INSERT IGNORE INTO `admin_incapacidades` (`id`, `incapacidad`) VALUES
(2, 'Disfunción Auditiva'),
(3, 'Disfunción Verbal'),
(1, 'Disfunción Visual'),
(4, 'Protan Color Deficency');

--
-- Truncar tablas antes de insertar `admin_mecanismo_informacion`
--

TRUNCATE TABLE `admin_mecanismo_informacion`;
--
-- Volcado de datos para la tabla `admin_mecanismo_informacion`
--

INSERT IGNORE INTO `admin_mecanismo_informacion` (`id`, `nombre`) VALUES
(4, 'Internet'),
(5, 'Medios Alternativos Comunitarios'),
(3, 'Prensa'),
(2, 'Radio'),
(1, 'Televisión');

--
-- Truncar tablas antes de insertar `admin_misiones_comunidad`
--

TRUNCATE TABLE `admin_misiones_comunidad`;
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

--
-- Truncar tablas antes de insertar `admin_nacionalidad`
--

TRUNCATE TABLE `admin_nacionalidad`;
--
-- Volcado de datos para la tabla `admin_nacionalidad`
--

INSERT IGNORE INTO `admin_nacionalidad` (`id`, `nacionalidad`) VALUES
(4, 'E'),
(3, 'N'),
(1, 'V');

--
-- Truncar tablas antes de insertar `admin_nivel_instruccion`
--

TRUNCATE TABLE `admin_nivel_instruccion`;
--
-- Volcado de datos para la tabla `admin_nivel_instruccion`
--

INSERT IGNORE INTO `admin_nivel_instruccion` (`id`, `nombre`) VALUES
(3, 'Bachiller'),
(2, 'Básica'),
(7, 'Post Grado'),
(1, 'Sin Instrucción'),
(4, 'Técnico Medio'),
(5, 'Técnico Superior'),
(6, 'Universitario');

--
-- Truncar tablas antes de insertar `admin_org_comunitaria`
--

TRUNCATE TABLE `admin_org_comunitaria`;
--
-- Volcado de datos para la tabla `admin_org_comunitaria`
--

INSERT IGNORE INTO `admin_org_comunitaria` (`id`, `nombre`) VALUES
(7, 'Organización 1'),
(6, 'Organización 2'),
(4, 'PeTAs');

--
-- Truncar tablas antes de insertar `admin_pensionado_institucion`
--

TRUNCATE TABLE `admin_pensionado_institucion`;
--
-- Volcado de datos para la tabla `admin_pensionado_institucion`
--

INSERT IGNORE INTO `admin_pensionado_institucion` (`id`, `nombre`) VALUES
(3, 'Empresa Privada'),
(4, 'Ente del Estado'),
(1, 'IVICC'),
(2, 'IVSS');

--
-- Truncar tablas antes de insertar `admin_preguntas`
--

TRUNCATE TABLE `admin_preguntas`;
--
-- Volcado de datos para la tabla `admin_preguntas`
--

INSERT IGNORE INTO `admin_preguntas` (`id`, `pregunta`) VALUES
(1, 'Participa Ud. o asiste a las asambleas de ciudadanos(as).'),
(2, 'En orden de importancia. ¿Cuales creed Ud. que son los principales problemas y debilidades que tiene su comunidad?');

--
-- Truncar tablas antes de insertar `admin_preguntas_participacion_comunitaria`
--

TRUNCATE TABLE `admin_preguntas_participacion_comunitaria`;
--
-- Volcado de datos para la tabla `admin_preguntas_participacion_comunitaria`
--

INSERT IGNORE INTO `admin_preguntas_participacion_comunitaria` (`id`, `respuesta`, `interrogante`) VALUES
(2, 2, NULL),
(3, 2, NULL),
(4, 2, 1),
(5, 1, 1),
(6, 2, 2),
(7, 1, 2),
(8, 1, 1);

--
-- Truncar tablas antes de insertar `admin_preguntas_situacion_comunidad`
--

TRUNCATE TABLE `admin_preguntas_situacion_comunidad`;
--
-- Volcado de datos para la tabla `admin_preguntas_situacion_comunidad`
--

INSERT IGNORE INTO `admin_preguntas_situacion_comunidad` (`id`, `pregunta`, `pregunta_sit_com`) VALUES
(2, 'Michael Jackson', 1),
(5, 'Fuck you Jesus', 2),
(6, 'Holis', 1),
(7, 'So many', 2),
(8, 'Agua, Inseguridad, Alumbrado Público, Mercados Vecinales', 2);

--
-- Truncar tablas antes de insertar `admin_preguntas_sit_com`
--

TRUNCATE TABLE `admin_preguntas_sit_com`;
--
-- Volcado de datos para la tabla `admin_preguntas_sit_com`
--

INSERT IGNORE INTO `admin_preguntas_sit_com` (`id`, `pregunta`) VALUES
(1, 'En orden de importancia. ¿Cuáles cree Ud que son las principales potencialidades y aspectos ventajosos que tiene su comunidad?'),
(2, 'En orden de importancia. ¿Cuáles creed Ud que son los principales problemas y debilidades de su comunidad?');

--
-- Truncar tablas antes de insertar `admin_profesion`
--

TRUNCATE TABLE `admin_profesion`;
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
(6, 'Entrenador Pokemón'),
(5, 'Escritor'),
(12, 'Estudiante'),
(7, 'Ingenieria Civil'),
(9, 'Modelo'),
(3, 'Ninguna'),
(14, 'Técnico de Acensor'),
(4, 'Vedel'),
(13, 'Vendedora');

--
-- Truncar tablas antes de insertar `admin_recoleccion_basura`
--

TRUNCATE TABLE `admin_recoleccion_basura`;
--
-- Volcado de datos para la tabla `admin_recoleccion_basura`
--

INSERT IGNORE INTO `admin_recoleccion_basura` (`id`, `nombre`) VALUES
(7, 'Aaron Samuels'),
(5, 'Al Aire Libre'),
(1, 'Aseo Urbano'),
(3, 'Bajante'),
(4, 'Camión'),
(2, 'Container'),
(6, 'Quemada'),
(8, 'Run Lola Run');

--
-- Truncar tablas antes de insertar `admin_resp_cerrada`
--

TRUNCATE TABLE `admin_resp_cerrada`;
--
-- Volcado de datos para la tabla `admin_resp_cerrada`
--

INSERT IGNORE INTO `admin_resp_cerrada` (`id`, `respuesta`) VALUES
(2, 'No'),
(1, 'Si');

--
-- Truncar tablas antes de insertar `admin_salubridad_vivienda`
--

TRUNCATE TABLE `admin_salubridad_vivienda`;
--
-- Volcado de datos para la tabla `admin_salubridad_vivienda`
--

INSERT IGNORE INTO `admin_salubridad_vivienda` (`id`, `nombre`) VALUES
(1, 'Limpia'),
(3, 'Medio Limpia'),
(2, 'Sucia');

--
-- Truncar tablas antes de insertar `admin_servicios_comunales`
--

TRUNCATE TABLE `admin_servicios_comunales`;
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

--
-- Truncar tablas antes de insertar `admin_sistema_electrico`
--

TRUNCATE TABLE `admin_sistema_electrico`;
--
-- Volcado de datos para la tabla `admin_sistema_electrico`
--

INSERT IGNORE INTO `admin_sistema_electrico` (`id`, `nombre`) VALUES
(1, 'Electrificado Público'),
(3, 'No tiene'),
(2, 'Planta Eléctrica Propia');

--
-- Truncar tablas antes de insertar `admin_tipo_ayuda_especial`
--

TRUNCATE TABLE `admin_tipo_ayuda_especial`;
--
-- Volcado de datos para la tabla `admin_tipo_ayuda_especial`
--

INSERT IGNORE INTO `admin_tipo_ayuda_especial` (`id`, `nombre`) VALUES
(12, 'Silla de Ruedas'),
(13, 'Medicinas'),
(14, 'Marcapasos'),
(15, 'Glaucoma');

--
-- Truncar tablas antes de insertar `admin_tipo_enseres`
--

TRUNCATE TABLE `admin_tipo_enseres`;
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
(11, 'PlayStation 4'),
(10, 'TV'),
(9, 'Utensilios de Cocina'),
(5, 'Ventilador');

--
-- Truncar tablas antes de insertar `admin_tipo_gas`
--

TRUNCATE TABLE `admin_tipo_gas`;
--
-- Volcado de datos para la tabla `admin_tipo_gas`
--

INSERT IGNORE INTO `admin_tipo_gas` (`id`, `nombre`) VALUES
(1, 'Bombonas'),
(3, 'No posee'),
(2, 'Tubería');

--
-- Truncar tablas antes de insertar `admin_tipo_habitaciones_vivienda`
--

TRUNCATE TABLE `admin_tipo_habitaciones_vivienda`;
--
-- Volcado de datos para la tabla `admin_tipo_habitaciones_vivienda`
--

INSERT IGNORE INTO `admin_tipo_habitaciones_vivienda` (`id`, `nombre`) VALUES
(4, 'Baño'),
(3, 'Cocina'),
(2, 'Comedor'),
(6, 'Jacuzzi'),
(7, 'Jardin'),
(1, 'Sala'),
(8, 'sla'),
(5, 'Terraza');

--
-- Truncar tablas antes de insertar `admin_tipo_ingresos`
--

TRUNCATE TABLE `admin_tipo_ingresos`;
--
-- Volcado de datos para la tabla `admin_tipo_ingresos`
--

INSERT IGNORE INTO `admin_tipo_ingresos` (`id`, `nombre`) VALUES
(3, '201 a 600'),
(4, '601 a 2000'),
(5, 'Menos de 1 Salario Minímo'),
(2, 'Menos de 200.000'),
(1, 'Ninguno');

--
-- Truncar tablas antes de insertar `admin_tipo_mascotas`
--

TRUNCATE TABLE `admin_tipo_mascotas`;
--
-- Volcado de datos para la tabla `admin_tipo_mascotas`
--

INSERT IGNORE INTO `admin_tipo_mascotas` (`id`, `nombre`) VALUES
(7, 'Cabras'),
(6, 'Cochinos'),
(4, 'Gallinas'),
(2, 'Gato'),
(3, 'Pajáros'),
(5, 'Patos'),
(1, 'Perro');

--
-- Truncar tablas antes de insertar `admin_tipo_padecencia`
--

TRUNCATE TABLE `admin_tipo_padecencia`;
--
-- Volcado de datos para la tabla `admin_tipo_padecencia`
--

INSERT IGNORE INTO `admin_tipo_padecencia` (`id`, `nombre`) VALUES
(3, 'Daltonismo'),
(2, 'Diabetes'),
(5, 'Hipertensión'),
(1, 'SIDA');

--
-- Truncar tablas antes de insertar `admin_tipo_paredes`
--

TRUNCATE TABLE `admin_tipo_paredes`;
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

--
-- Truncar tablas antes de insertar `admin_tipo_plagas`
--

TRUNCATE TABLE `admin_tipo_plagas`;
--
-- Volcado de datos para la tabla `admin_tipo_plagas`
--

INSERT IGNORE INTO `admin_tipo_plagas` (`id`, `nombre`) VALUES
(5, 'Ciempies'),
(4, 'Cucarachas'),
(3, 'Hormigas'),
(1, 'Moscas'),
(2, 'Ratones'),
(6, 'Suegras');

--
-- Truncar tablas antes de insertar `admin_tipo_situacion_exclusion`
--

TRUNCATE TABLE `admin_tipo_situacion_exclusion`;
--
-- Volcado de datos para la tabla `admin_tipo_situacion_exclusion`
--

INSERT IGNORE INTO `admin_tipo_situacion_exclusion` (`id`, `situacion`, `cantidad`) VALUES
(15, 'Pobreza extrema', 1),
(16, 'Niños en la calle', 1),
(17, 'Niños en la calle', 2);

--
-- Truncar tablas antes de insertar `admin_tipo_techo`
--

TRUNCATE TABLE `admin_tipo_techo`;
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

--
-- Truncar tablas antes de insertar `admin_tipo_telefonia`
--

TRUNCATE TABLE `admin_tipo_telefonia`;
--
-- Volcado de datos para la tabla `admin_tipo_telefonia`
--

INSERT IGNORE INTO `admin_tipo_telefonia` (`id`, `nombre`) VALUES
(1, 'Celular'),
(2, 'Domiciliaría');

--
-- Truncar tablas antes de insertar `admin_tipo_tenencia`
--

TRUNCATE TABLE `admin_tipo_tenencia`;
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

--
-- Truncar tablas antes de insertar `admin_tipo_transporte`
--

TRUNCATE TABLE `admin_tipo_transporte`;
--
-- Volcado de datos para la tabla `admin_tipo_transporte`
--

INSERT IGNORE INTO `admin_tipo_transporte` (`id`, `nombre`) VALUES
(3, 'Bestias'),
(5, 'Hannukka'),
(4, 'Privado (Taxi)'),
(1, 'Propio'),
(2, 'Público');

--
-- Truncar tablas antes de insertar `admin_tipo_vivienda`
--

TRUNCATE TABLE `admin_tipo_vivienda`;
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

--
-- Truncar tablas antes de insertar `admin_ubicacion_trabajo`
--

TRUNCATE TABLE `admin_ubicacion_trabajo`;
--
-- Volcado de datos para la tabla `admin_ubicacion_trabajo`
--

INSERT IGNORE INTO `admin_ubicacion_trabajo` (`id`, `nombre`) VALUES
(5, 'Buhonería'),
(3, 'Comercial'),
(1, 'Institución Pública'),
(4, 'Por cuenta propia'),
(2, 'Privada');

--
-- Truncar tablas antes de insertar `admin_venta_vivienda`
--

TRUNCATE TABLE `admin_venta_vivienda`;
--
-- Volcado de datos para la tabla `admin_venta_vivienda`
--

INSERT IGNORE INTO `admin_venta_vivienda` (`id`, `nombre`) VALUES
(8, 'Bambinos'),
(28, 'CD Quemaditos'),
(5, 'Cervezas'),
(1, 'Dulces'),
(3, 'Empanadas'),
(7, 'Hielo'),
(6, 'Maltas'),
(4, 'Refrescos'),
(26, 'Shake It Out');

--
-- Truncar tablas antes de insertar `bitacora`
--

TRUNCATE TABLE `bitacora`;
--
-- Volcado de datos para la tabla `bitacora`
--

INSERT IGNORE INTO `bitacora` (`id`, `usuario`, `accion`, `detalles`, `fecha`) VALUES
(1, 1, 'eliminó', 'la Noticia', '2016-07-15 11:31:32'),
(2, 1, 'modificó', 'una Noticia', '2016-07-15 11:05:34'),
(3, 1, 'agregó', 'una Noticia nueva.', '2016-07-15 11:06:28'),
(4, 1, 'modificó', 'una Noticia', '2016-07-15 22:55:33'),
(5, 1, 'modificó', 'una Noticia', '2016-07-16 00:32:27'),
(6, 1, 'agregó', 'la información de la comunidad.', '2016-07-20 12:35:19'),
(7, 1, 'modificó', 'la información del Consejo Comunal.', '2016-07-20 12:38:27'),
(8, 1, 'modificó', 'la visibilidad de Jornada de Vacunación de niños haciendola visible', '2016-07-20 13:41:47'),
(9, 1, 'modificó', 'la visibilidad de Noticia Invisible haciendola invisible', '2016-07-20 13:43:34'),
(10, 1, 'modificó', 'la visibilidad de Noticia Invisible haciendola visible', '2016-07-20 13:46:59'),
(11, 1, 'modificó', 'la visibilidad de Noticia Invisible haciendola invisible', '2016-07-20 13:47:13'),
(12, 1, 'modificó', 'la visibilidad de Kylie Minogue haciendola visible', '2016-07-20 13:47:30'),
(13, 1, 'modificó', 'la visibilidad de Esto es Otra Noticia Super Importante del Consejo Comunal haciendola visible', '2016-07-20 13:48:28'),
(14, 1, 'agregó', 'una Noticia nueva, titulada: The Last Five Years.', '2016-07-20 13:51:27'),
(15, 1, 'modificó', 'una Noticia', '2016-07-20 13:53:09'),
(16, 1, 'modificó', 'una la noticia The Last Five Years.', '2016-07-20 13:54:29'),
(17, 1, 'envió', 'un comunicado másivo a0 personas.', '2016-07-20 15:53:54'),
(18, 1, 'envió', 'un comunicado másivo a0 personas.', '2016-07-20 15:57:10'),
(19, 1, 'envió', 'un comunicado másivo a5 personas.', '2016-07-20 16:03:06'),
(20, 1, 'modificó', 'la visibilidad de Jornada de Vacunación de niños haciendola invisible', '2016-07-21 10:26:59'),
(21, 1, 'modificó', 'la visibilidad de The Last Five Years haciendola invisible', '2016-07-21 10:27:08'),
(22, 1, 'modificó', 'La Situación de Comunidad de la planilla 2', '2016-07-21 13:54:09'),
(23, 1, 'modificó', 'La Situación de Comunidad de la planilla 1', '2016-07-30 09:26:19'),
(24, 1, 'modificó', 'La Situación de Comunidad de la planilla 1', '2016-07-30 09:26:36'),
(25, 1, 'modificó', 'La Situación de Comunidad de la planilla 2', '2016-07-30 09:31:14'),
(26, 1, 'modificó', 'La Situación de Comunidad de la planilla 2', '2016-07-30 11:10:59'),
(27, 1, 'modificó', 'La Situación de Comunidad de la planilla 2', '2016-07-30 11:11:46'),
(28, 1, 'modificó', 'La Situación de Comunidad de la planilla 1', '2016-07-30 11:32:25'),
(29, 1, 'modificó', 'La Situación de Comunidad de la planilla 1', '2016-07-30 11:36:10'),
(30, 1, 'modificó', 'La Situación de Comunidad de la planilla 1', '2016-07-30 11:40:19'),
(31, 1, 'modificó', 'La Situación de Comunidad de la planilla 1', '2016-07-30 11:47:31'),
(32, 1, 'modificó', 'cambio el estatus para que melmelnewromantics@taylorarmy.usa no reciba los correos del sistema.', '2016-07-30 12:02:45'),
(33, 1, 'modificó', 'cambio el estatus para que melmelnewromantics@taylorarmy.usa reciba los correos del sistema.', '2016-07-30 12:03:29'),
(34, 1, 'modificó', 'La Participación Comunitaria de la planilla 1', '2016-07-30 12:12:41'),
(35, 1, 'modificó', 'Las observaciones de la planilla 1', '2016-07-30 12:13:40'),
(36, 1, 'modificó', 'La Participación Comunitaria de la planilla 2', '2016-07-30 12:15:26'),
(37, 1, 'modificó', 'Las observaciones de la planilla 2', '2016-07-31 08:51:18'),
(38, 1, 'modificó', 'Las observaciones de la planilla 2', '2016-07-31 08:51:33'),
(39, 1, 'modificó', 'Las observaciones de la planilla 2', '2016-07-31 08:54:09'),
(40, 1, 'modificó', 'Las observaciones de la planilla 2', '2016-07-31 08:56:19'),
(41, 1, 'modificó', 'Las observaciones de la planilla 2', '2016-07-31 08:56:32'),
(42, 1, 'modificó', 'Las observaciones de la planilla 2', '2016-07-31 08:58:40'),
(43, 1, 'modificó', 'Las observaciones de la planilla 2', '2016-07-31 09:03:58'),
(44, 1, 'modificó', 'Las observaciones de la planilla 2', '2016-07-31 09:12:37'),
(45, 1, 'modificó', 'Las observaciones de la planilla 2', '2016-07-31 09:13:49'),
(46, 1, 'modificó', 'Las observaciones de la planilla 3', '2016-07-31 09:41:20'),
(47, 1, 'continuó', 'con el llenado de la encuesta 3', '2016-07-31 09:41:54'),
(48, 1, 'continuó', 'con el llenado de la encuesta 3', '2016-07-31 10:24:09'),
(49, 1, 'continuó', 'con el llenado de la encuesta 3', '2016-07-31 11:21:12'),
(50, 1, 'agregó', 'La Situación de Comunidad a la planilla 3', '2016-07-31 20:35:49'),
(51, 1, 'modificó', 'La Situación de Comunidad de la planilla 2', '2016-07-31 20:43:36'),
(52, 1, 'modificó', 'La Situación de Comunidad de la planilla 2', '2016-07-31 20:46:24'),
(53, 1, 'modificó', 'Las observaciones de la planilla 2', '2016-08-01 21:42:53'),
(54, 1, 'generó', 'un Cuaderno de Votación', '2016-08-03 18:00:54'),
(55, 1, 'generó', 'un Resumen del Censo Demográfico', '2016-08-04 09:37:00'),
(56, 1, 'generó', 'un Resumen del Censo Demográfico', '2016-08-04 09:38:51'),
(57, 1, 'generó', 'un Resumen del Censo Demográfico', '2016-08-04 09:40:09'),
(58, 1, 'generó', 'un Resumen del Censo Demográfico', '2016-08-04 09:40:32'),
(59, 1, 'generó', 'un Resumen del Censo Demográfico', '2016-08-04 09:41:05'),
(60, 1, 'generó', 'un Resumen del Censo Demográfico', '2016-08-04 09:41:09'),
(61, 1, 'generó', 'un Resumen del Censo Demográfico', '2016-08-04 09:41:30'),
(62, 1, 'generó', 'un Resumen del Censo Demográfico', '2016-08-04 09:41:32'),
(63, 1, 'generó', 'un Resumen del Censo Demográfico', '2016-08-04 09:41:44'),
(64, 1, 'generó', 'un Resumen del Censo Demográfico', '2016-08-04 09:42:02'),
(65, 1, 'generó', 'un Resumen del Censo Demográfico', '2016-08-04 09:42:42'),
(66, 1, 'generó', 'un Resumen del Censo Demográfico', '2016-08-04 09:43:02'),
(67, 1, 'generó', 'un Resumen del Censo Demográfico', '2016-08-04 09:50:24'),
(68, 1, 'generó', 'un Resumen del Censo Demográfico', '2016-08-04 09:50:27'),
(69, 1, 'generó', 'un Resumen del Censo Demográfico', '2016-08-04 09:51:01'),
(70, 1, 'generó', 'un Resumen del Censo Demográfico', '2016-08-04 09:51:28'),
(71, 1, 'generó', 'un Resumen del Censo Demográfico', '2016-08-04 09:51:46'),
(72, 1, 'generó', 'un Resumen del Censo Demográfico', '2016-08-04 09:51:49'),
(73, 1, 'generó', 'un Resumen del Censo Demográfico', '2016-08-04 09:52:03'),
(74, 1, 'generó', 'un Resumen del Censo Demográfico', '2016-08-04 09:53:27'),
(75, 1, 'generó', 'un Resumen del Censo Demográfico', '2016-08-04 09:53:54'),
(76, 1, 'generó', 'un Resumen del Censo Demográfico', '2016-08-04 09:54:17'),
(77, 1, 'generó', 'un Resumen del Censo Demográfico', '2016-08-04 09:54:37'),
(78, 1, 'generó', 'un Resumen del Censo Demográfico', '2016-08-04 09:57:46'),
(79, 1, 'generó', 'un Resumen del Censo Demográfico', '2016-08-04 09:59:23'),
(80, 1, 'generó', 'un Cuaderno de Votación', '2016-08-04 10:00:50'),
(81, 1, 'generó', 'un Cuaderno de Votación', '2016-08-04 10:06:06'),
(82, 1, 'generó', 'un Cuaderno de Votación', '2016-08-04 10:07:09'),
(83, 1, 'generó', 'un Resumen del Censo Demográfico', '2016-08-04 10:07:29'),
(84, 1, 'generó', 'un Resumen del Censo Demográfico', '2016-08-04 10:08:27'),
(85, 1, 'generó', 'un Resumen del Censo Demográfico', '2016-08-04 10:11:11'),
(86, 1, 'generó', 'un Resumen del Censo Demográfico', '2016-08-04 10:11:34'),
(87, 1, 'generó', 'un Resumen del Censo Demográfico', '2016-08-04 10:12:06'),
(88, 1, 'generó', 'un Resumen del Censo Demográfico', '2016-08-04 10:13:33'),
(89, 1, 'generó', 'un Resumen del Censo Demográfico', '2016-08-04 10:14:12'),
(90, 1, 'generó', 'un Resumen del Censo Demográfico', '2016-08-04 10:19:12'),
(91, 1, 'generó', 'un Resumen del Censo Demográfico', '2016-08-04 10:47:38'),
(92, 1, 'generó', 'un Resumen del Censo Demográfico', '2016-08-04 10:53:38'),
(93, 1, 'generó', 'un Resumen del Censo Demográfico', '2016-08-04 11:05:33'),
(94, 1, 'generó', 'un Resumen del Censo Demográfico', '2016-08-04 11:16:49'),
(95, 1, 'generó', 'un Resumen del Censo Demográfico', '2016-08-04 11:29:10'),
(96, 1, 'generó', 'un Resumen del Censo Demográfico', '2016-08-04 11:29:40'),
(97, 1, 'generó', 'un Resumen del Censo Demográfico', '2016-08-04 11:29:43'),
(98, 1, 'generó', 'un Resumen del Censo Demográfico', '2016-08-04 11:30:03'),
(99, 1, 'generó', 'un Resumen del Censo Demográfico', '2016-08-04 11:30:30'),
(100, 1, 'generó', 'un Resumen del Censo Demográfico', '2016-08-04 11:32:13'),
(101, 1, 'generó', 'un Resumen del Censo Demográfico', '2016-08-04 11:33:31'),
(102, 1, 'generó', 'un Resumen del Censo Demográfico', '2016-08-04 11:33:34'),
(103, 1, 'generó', 'un Resumen del Censo Demográfico', '2016-08-04 11:34:00'),
(104, 1, 'generó', 'un Resumen del Censo Demográfico', '2016-08-04 11:34:34'),
(105, 1, 'generó', 'un Resumen del Censo Demográfico', '2016-08-04 11:35:01'),
(106, 1, 'generó', 'un Resumen del Censo Demográfico', '2016-08-04 11:35:17'),
(107, 1, 'generó', 'un Resumen del Censo Demográfico', '2016-08-04 11:35:31'),
(108, 1, 'generó', 'un Resumen del Censo Demográfico', '2016-08-04 11:35:44'),
(109, 1, 'generó', 'un Resumen del Censo Demográfico', '2016-08-04 11:35:54'),
(110, 1, 'generó', 'un Resumen del Censo Demográfico', '2016-08-04 11:36:04'),
(111, 1, 'generó', 'un Resumen del Censo Demográfico', '2016-08-04 11:36:19'),
(112, 1, 'generó', 'un Resumen del Censo Demográfico', '2016-08-04 11:36:34'),
(113, 1, 'generó', 'un Resumen del Censo Demográfico', '2016-08-04 11:36:44'),
(114, 1, 'generó', 'un Resumen del Censo Demográfico', '2016-08-04 11:37:01'),
(115, 1, 'generó', 'un Resumen del Censo Demográfico', '2016-08-04 11:37:15'),
(116, 1, 'generó', 'un Resumen del Censo Demográfico', '2016-08-04 11:38:03'),
(117, 1, 'generó', 'un Cuaderno de Votación', '2016-08-04 11:38:29'),
(118, 1, 'generó', 'un Resumen del Censo Demográfico', '2016-08-04 11:39:41'),
(119, 1, 'generó', 'un Resumen del Censo Demográfico', '2016-08-04 11:41:04'),
(120, 1, 'generó', 'un Resumen del Censo Demográfico', '2016-08-04 11:41:35'),
(121, 1, 'generó', 'un Resumen del Censo Demográfico', '2016-08-04 11:41:45'),
(122, 1, 'generó', 'un Resumen del Censo Demográfico', '2016-08-04 11:41:58'),
(123, 1, 'generó', 'un Resumen del Censo Demográfico', '2016-08-04 11:42:12'),
(124, 1, 'generó', 'un Resumen del Censo Demográfico', '2016-08-04 11:42:56'),
(125, 1, 'generó', 'un Resumen del Censo Demográfico', '2016-08-04 11:42:59'),
(126, 1, 'generó', 'un Resumen del Censo Demográfico', '2016-08-04 11:43:23'),
(127, 1, 'generó', 'un Resumen del Censo Demográfico', '2016-08-04 11:43:26'),
(128, 1, 'generó', 'un Cuaderno de Votación', '2016-08-04 16:20:08'),
(129, 1, 'generó', 'un Resumen del Censo Demográfico', '2016-08-04 16:23:07'),
(130, 1, 'generó', 'un Resumen del Censo Demográfico', '2016-08-04 16:23:42'),
(131, 1, 'generó', 'un Resumen del Censo Demográfico', '2016-08-04 16:23:54'),
(132, 1, 'generó', 'un Resumen del Censo Demográfico', '2016-08-04 16:24:31'),
(133, 1, 'generó', 'un Resumen del Censo Demográfico', '2016-08-04 16:26:47'),
(134, 1, 'generó', 'un Resumen del Censo Demográfico', '2016-08-04 16:27:24'),
(135, 1, 'generó', 'un Resumen del Censo Demográfico', '2016-08-04 16:28:53'),
(136, 1, 'generó', 'un Resumen del Censo Demográfico', '2016-08-04 16:29:30'),
(137, 1, 'generó', 'un Resumen del Censo Demográfico', '2016-08-04 16:29:44'),
(138, 1, 'generó', 'un Resumen del Censo Demográfico', '2016-08-04 16:29:56'),
(139, 1, 'generó', 'un Resumen del Censo Demográfico', '2016-08-04 16:30:35'),
(140, 1, 'generó', 'un Resumen del Censo Demográfico', '2016-08-04 16:30:59'),
(141, 1, 'generó', 'un Resumen del Censo Demográfico', '2016-08-04 17:06:41'),
(142, 1, 'generó', 'un Resumen del Censo Demográfico', '2016-08-04 17:06:45'),
(143, 1, 'generó', 'un Resumen del Censo Demográfico', '2016-08-04 17:07:16'),
(144, 1, 'generó', 'un Resumen del Censo Demográfico', '2016-08-04 17:07:35'),
(145, 1, 'generó', 'un Resumen del Censo Demográfico', '2016-08-04 17:08:40'),
(146, 1, 'generó', 'un Resumen del Censo Demográfico', '2016-08-04 17:15:11'),
(147, 1, 'generó', 'un Resumen del Censo Demográfico', '2016-08-04 17:15:41'),
(148, 1, 'generó', 'un Resumen del Censo Demográfico', '2016-08-04 17:16:20'),
(149, 1, 'generó', 'un Resumen del Censo Demográfico', '2016-08-04 17:17:35'),
(150, 1, 'generó', 'un Resumen del Censo Demográfico', '2016-08-04 17:18:49'),
(151, 1, 'generó', 'un Resumen del Censo Demográfico', '2016-08-04 17:19:44'),
(152, 1, 'generó', 'un Resumen del Censo Demográfico', '2016-08-04 17:19:54'),
(153, 1, 'generó', 'un Resumen del Censo Demográfico', '2016-08-04 17:20:04'),
(154, 1, 'generó', 'un Resumen del Censo Demográfico', '2016-08-04 17:20:15'),
(155, 1, 'generó', 'un Resumen del Censo Demográfico', '2016-08-04 17:21:40'),
(156, 1, 'generó', 'un Resumen del Censo Demográfico', '2016-08-04 17:22:33'),
(157, 1, 'generó', 'un Resumen del Censo Demográfico', '2016-08-04 17:22:55'),
(158, 1, 'generó', 'un Resumen del Censo Demográfico', '2016-08-04 17:22:58'),
(159, 1, 'generó', 'un Resumen del Censo Demográfico', '2016-08-04 17:23:18'),
(160, 1, 'generó', 'un Resumen del Censo Demográfico', '2016-08-04 17:24:13'),
(161, 1, 'generó', 'un Resumen del Censo Demográfico', '2016-08-04 17:24:30'),
(162, 1, 'generó', 'un Resumen del Censo Demográfico', '2016-08-04 17:24:57'),
(163, 1, 'generó', 'un Resumen del Censo Demográfico', '2016-08-04 17:25:08'),
(164, 1, 'generó', 'un Resumen del Censo Demográfico', '2016-08-04 17:25:37'),
(165, 1, 'generó', 'un Resumen del Censo Demográfico', '2016-08-04 17:26:09'),
(166, 1, 'generó', 'un Resumen del Censo Demográfico', '2016-08-04 17:26:31'),
(167, 1, 'generó', 'un Resumen del Censo Demográfico', '2016-08-04 17:29:12'),
(168, 1, 'generó', 'un Resumen del Censo Demográfico', '2016-08-04 17:29:15'),
(169, 1, 'generó', 'un Resumen del Censo Demográfico', '2016-08-04 17:29:31'),
(170, 1, 'generó', 'un Resumen del Censo Demográfico', '2016-08-04 17:29:55'),
(171, 1, 'generó', 'un Resumen del Censo Demográfico', '2016-08-04 17:30:15'),
(172, 1, 'generó', 'un Resumen del Censo Demográfico', '2016-08-04 17:30:45'),
(173, 1, 'generó', 'un Resumen del Censo Demográfico', '2016-08-04 17:31:23'),
(174, 1, 'generó', 'un Resumen del Censo Demográfico', '2016-08-04 20:51:14'),
(175, 1, 'generó', 'un Resumen del Censo Demográfico', '2016-08-04 20:54:39'),
(176, 1, 'generó', 'un Resumen del Censo Demográfico', '2016-08-04 20:55:01'),
(177, 1, 'generó', 'un Resumen del Censo Demográfico', '2016-08-04 20:58:23'),
(178, 1, 'generó', 'un Resumen del Censo Demográfico', '2016-08-04 21:01:58'),
(179, 1, 'generó', 'un Resumen del Censo Demográfico', '2016-08-04 21:15:09'),
(180, 1, 'generó', 'un Resumen del Censo Demográfico', '2016-08-04 21:21:51'),
(181, 1, 'generó', 'un Resumen del Censo Demográfico', '2016-08-04 21:21:56'),
(182, 1, 'generó', 'un Resumen del Censo Demográfico', '2016-08-04 21:22:51'),
(183, 1, 'generó', 'un Resumen del Censo Demográfico', '2016-08-04 21:22:55'),
(184, 1, 'generó', 'un Resumen del Censo Demográfico', '2016-08-04 21:24:28'),
(185, 1, 'generó', 'un Resumen del Censo Demográfico', '2016-08-04 21:26:56'),
(186, 1, 'generó', 'un Resumen del Censo Demográfico', '2016-08-04 21:27:28'),
(187, 1, 'generó', 'un Resumen del Censo Demográfico', '2016-08-04 21:27:55'),
(188, 1, 'generó', 'un Resumen del Censo Demográfico', '2016-08-04 21:28:43'),
(189, 1, 'generó', 'un Resumen del Censo Demográfico', '2016-08-04 21:29:48'),
(190, 1, 'generó', 'un Resumen del Censo Demográfico', '2016-08-04 21:30:45'),
(191, 1, 'generó', 'un Resumen del Censo Demográfico', '2016-08-04 21:31:16'),
(192, 1, 'generó', 'un Resumen del Censo Demográfico', '2016-08-04 21:31:30'),
(193, 1, 'generó', 'un Resumen del Censo Demográfico', '2016-08-04 21:31:48'),
(194, 1, 'generó', 'un Resumen del Censo Demográfico', '2016-08-04 21:32:20'),
(195, 1, 'generó', 'un Resumen del Censo Demográfico', '2016-08-04 21:32:45'),
(196, 1, 'generó', 'un Resumen del Censo Demográfico', '2016-08-04 21:32:48'),
(197, 1, 'generó', 'un Resumen del Censo Demográfico', '2016-08-04 21:32:57'),
(198, 1, 'generó', 'un Resumen del Censo Demográfico', '2016-08-04 21:33:28'),
(199, 1, 'generó', 'un Resumen del Censo Demográfico', '2016-08-04 21:33:51'),
(200, 1, 'generó', 'un Resumen del Censo Demográfico', '2016-08-04 21:34:06'),
(201, 1, 'generó', 'un Resumen del Censo Demográfico', '2016-08-04 21:35:06'),
(202, 1, 'generó', 'un Resumen del Censo Demográfico', '2016-08-04 21:35:53'),
(203, 1, 'generó', 'un Resumen del Censo Demográfico', '2016-08-04 21:40:19'),
(204, 1, 'generó', 'un Resumen del Censo Demográfico', '2016-08-04 21:41:22'),
(205, 1, 'generó', 'un Resumen del Censo Demográfico', '2016-08-04 21:48:10'),
(206, 1, 'generó', 'un Resumen del Censo Demográfico', '2016-08-04 21:58:36'),
(207, 1, 'generó', 'un Resumen del Censo Demográfico', '2016-08-04 21:59:18'),
(208, 1, 'generó', 'un Resumen del Censo Demográfico', '2016-08-04 22:00:13'),
(209, 1, 'generó', 'un Resumen del Censo Demográfico', '2016-08-04 22:00:16'),
(210, 1, 'generó', 'un Resumen del Censo Demográfico', '2016-08-04 22:07:14'),
(211, 1, 'generó', 'un Resumen del Censo Demográfico', '2016-08-04 22:07:41'),
(212, 1, 'generó', 'un Resumen del Censo Demográfico', '2016-08-04 22:11:24'),
(213, 1, 'generó', 'un Resumen del Censo Demográfico', '2016-08-04 22:12:06'),
(214, 1, 'generó', 'un Resumen del Censo Demográfico', '2016-08-04 22:15:03'),
(215, 1, 'generó', 'un Resumen del Censo Demográfico', '2016-08-04 22:15:41'),
(216, 1, 'generó', 'un Resumen del Censo Demográfico', '2016-08-04 22:16:41'),
(217, 1, 'generó', 'un Resumen del Censo Demográfico', '2016-08-04 22:17:04'),
(218, 1, 'generó', 'un Resumen del Censo Demográfico', '2016-08-04 22:17:26'),
(219, 1, 'generó', 'un Resumen del Censo Demográfico', '2016-08-04 22:17:44'),
(220, 1, 'generó', 'un Resumen del Censo Demográfico', '2016-08-04 22:17:49'),
(221, 1, 'generó', 'un Resumen del Censo Demográfico', '2016-08-04 22:18:05'),
(222, 1, 'generó', 'un Resumen del Censo Demográfico', '2016-08-04 22:18:55'),
(223, 1, 'generó', 'un Resumen del Censo Demográfico', '2016-08-04 22:19:40'),
(224, 1, 'generó', 'un Resumen del Censo Demográfico', '2016-08-04 22:20:47'),
(225, 1, 'generó', 'un Resumen del Censo Demográfico', '2016-08-04 22:22:57'),
(226, 1, 'generó', 'un Registro Electoral Preliminar', '2016-08-05 10:18:10'),
(227, 1, 'generó', 'un Registro Electoral Preliminar', '2016-08-05 10:18:17'),
(228, 1, 'generó', 'un Registro Electoral Preliminar', '2016-08-05 10:18:20'),
(229, 1, 'generó', 'un Registro Electoral Preliminar', '2016-08-05 10:19:30'),
(230, 1, 'generó', 'un Registro Electoral Preliminar', '2016-08-05 10:20:17'),
(231, 1, 'generó', 'un Registro Electoral Preliminar', '2016-08-05 10:21:57'),
(232, 1, 'generó', 'un Registro Electoral Preliminar', '2016-08-05 10:23:36'),
(233, 1, 'generó', 'un Registro Electoral Preliminar', '2016-08-05 10:26:07'),
(234, 1, 'generó', 'un Registro Electoral Preliminar', '2016-08-05 10:27:31'),
(235, 1, 'generó', 'un Registro Electoral Preliminar', '2016-08-05 10:27:53'),
(236, 1, 'generó', 'un Registro Electoral Preliminar', '2016-08-05 10:30:08'),
(237, 1, 'generó', 'un Registro Electoral Preliminar', '2016-08-05 10:31:24'),
(238, 1, 'generó', 'un Registro Electoral Preliminar', '2016-08-05 10:55:05'),
(239, 1, 'generó', 'un Registro Electoral Preliminar', '2016-08-05 11:26:25'),
(240, 1, 'generó', 'un Registro Electoral Preliminar', '2016-08-05 11:26:52'),
(241, 1, 'generó', 'un Registro Electoral Preliminar', '2016-08-05 11:28:14'),
(242, 1, 'generó', 'un Registro Electoral Preliminar', '2016-08-05 11:29:10'),
(243, 1, 'generó', 'un Registro Electoral Preliminar', '2016-08-05 11:29:36'),
(244, 1, 'generó', 'un Registro Electoral Preliminar', '2016-08-05 11:29:54'),
(245, 1, 'generó', 'un Registro Electoral Preliminar', '2016-08-05 11:31:05'),
(246, 1, 'generó', 'un Registro Electoral Preliminar', '2016-08-05 11:32:32'),
(247, 1, 'generó', 'un Registro Electoral Preliminar', '2016-08-05 11:33:03'),
(248, 1, 'generó', 'un Registro Electoral Preliminar', '2016-08-05 11:33:39'),
(249, 1, 'generó', 'un Registro Electoral Preliminar', '2016-08-05 11:34:38'),
(250, 1, 'generó', 'un Registro Electoral Preliminar', '2016-08-05 11:36:07'),
(251, 1, 'generó', 'un Registro Electoral Preliminar', '2016-08-05 11:36:11'),
(252, 1, 'generó', 'un Registro Electoral Preliminar', '2016-08-05 11:37:13'),
(253, 1, 'generó', 'un Registro Electoral Preliminar', '2016-08-05 11:37:38'),
(254, 1, 'generó', 'un Registro Electoral Preliminar', '2016-08-05 11:37:55'),
(255, 1, 'generó', 'un Registro Electoral Preliminar', '2016-08-05 11:38:20'),
(256, 1, 'generó', 'un Registro Electoral Preliminar', '2016-08-05 11:38:33'),
(257, 1, 'generó', 'un Registro Electoral Preliminar', '2016-08-05 11:38:55'),
(258, 1, 'generó', 'un Registro Electoral Preliminar', '2016-08-05 11:39:27'),
(259, 1, 'generó', 'un Registro Electoral Preliminar', '2016-08-05 11:42:46'),
(260, 1, 'generó', 'un Registro Electoral Preliminar', '2016-08-05 11:45:04'),
(261, 1, 'generó', 'un Registro Electoral Preliminar', '2016-08-05 11:47:03'),
(262, 1, 'generó', 'un Registro Electoral Preliminar', '2016-08-05 11:47:20'),
(263, 1, 'generó', 'un Registro Electoral Preliminar', '2016-08-05 11:47:29'),
(264, 1, 'generó', 'un Registro Electoral Preliminar', '2016-08-05 11:49:01'),
(265, 1, 'generó', 'un Registro Electoral Preliminar', '2016-08-05 11:49:27'),
(266, 1, 'generó', 'un Registro Electoral Preliminar', '2016-08-05 11:50:12'),
(267, 1, 'modificó', 'Unidad Ejecutiva', '2016-08-05 12:23:47'),
(269, 1, 'modificó', 'Unidad Ejecutiva', '2016-08-05 12:25:56'),
(270, 1, 'modificó', 'Unidad Ejecutiva', '2016-08-05 12:32:04'),
(271, 1, 'modificó', 'Unidad Ejecutiva', '2016-08-05 13:03:02'),
(272, 1, 'generó', 'un Cuaderno de Votación', '2016-08-05 14:14:27'),
(273, 1, 'generó', 'un Resumen del Censo Demográfico', '2016-08-05 14:17:29'),
(274, 1, 'generó', 'un Registro Electoral Preliminar', '2016-08-05 14:17:43'),
(275, 1, 'generó', 'un Registro Electoral Preliminar', '2016-08-05 14:18:11'),
(276, 1, 'generó', 'un Registro Electoral Preliminar', '2016-08-05 14:19:44'),
(277, 1, 'modificó', 'la información del Consejo Comunal.', '2016-08-08 09:10:00'),
(278, 1, 'modificó', 'la información de la comunidad.', '2016-08-08 09:11:46'),
(279, 1, 'modificó', 'Unidad de Contraloría Social', '2016-08-08 09:24:04'),
(280, 1, 'modificó', 'Unidad Administrativa y Financiera Comunitaria', '2016-08-08 09:49:05'),
(281, 1, 'agregó', 'un nuevo tipo de Agua Blanca a los parámetros dels sistema', '2016-08-08 10:52:14'),
(282, 1, 'modificó', 'un parámetro de Aguas Blancas.', '2016-08-08 10:54:05'),
(283, 1, 'eliminó', 'Sara Larssons de los parámetros de Aguas Blancas del sistema', '2016-08-08 10:54:17'),
(284, 1, 'agregó', 'un nuevo tipo de Agua Blanca a los parámetros del sistema', '2016-08-08 10:58:15'),
(285, 1, 'eliminó', 'Take me to Church de los parámetros de Aguas Blancas del sistema', '2016-08-08 10:59:43'),
(286, 1, 'modificó', 'un parámetro de Aguas Servida', '2016-08-08 11:05:54'),
(287, 1, 'agregó', 'un nuevo tipo de Agua Servida a los parámetros del sistema', '2016-08-08 11:07:44'),
(288, 1, 'eliminó', 'Since You Been Gone de los parámetros de Aguas Servidas del sistema', '2016-08-08 11:08:07'),
(289, 1, 'eliminó', 'Seguridad Ciudadana de los parámetros de Area de Trabajo del sistema', '2016-08-08 11:33:44'),
(290, 1, 'agregó', 'un nueva Area de Trabajo del Consejo Comunal a los parámetros del sistema', '2016-08-08 11:34:02'),
(291, 1, 'modificó', 'un parámetro de Area de Trabajo del Consejo Comunal', '2016-08-08 11:35:15'),
(292, 1, 'modificó', 'un parámetro de la Clasificación del Ingreso Familiar', '2016-08-08 11:44:26'),
(293, 1, 'modificó', 'un parámetro de Estado Civil', '2016-08-08 11:44:43'),
(294, 1, 'agregó', 'un nuevo tipo de Discapacidad a los parámetros del sistema', '2016-08-08 11:50:51'),
(295, 1, 'eliminó', 'Amar de los parámetros de Discapacidades del sistema', '2016-08-08 11:53:11'),
(296, 1, 'modificó', 'un parámetro de Mecanismo de Información', '2016-08-08 11:58:19'),
(297, 1, 'modificó', 'la visibilidad de Kylie Minogue haciendola invisible', '2016-08-08 15:53:01'),
(298, 1, 'modificó', 'la visibilidad de Noticia Invisible haciendola visible', '2016-08-08 15:53:23'),
(299, 1, 'modificó', 'la visibilidad de Esto es Otra Noticia Super Importante del Consejo Comunal haciendola invisible', '2016-08-08 15:53:36'),
(300, 1, 'modificó', 'la visibilidad de Jornada de Vacunación de niños haciendola visible', '2016-08-08 15:54:44'),
(301, 1, 'modificó', 'la visibilidad de Esto es Otra Noticia Super Importante del Consejo Comunal haciendola visible', '2016-08-08 15:55:13'),
(302, 1, 'modificó', 'la visibilidad de Noticia Invisible haciendola invisible', '2016-08-08 15:55:28'),
(303, 1, 'agregó', 'una Noticia nueva, titulada: Holy Shti.', '2016-08-08 15:57:16'),
(304, 1, 'eliminó', 'una Noticia Holy Shti', '2016-08-08 15:57:51'),
(305, 1, 'modificó', 'cambio el estatus para que jfrancisco@gmail.com no reciba los correos del sistema.', '2016-08-08 15:59:53'),
(306, 1, 'modificó', 'cambio el estatus para que jfrancisco@gmail.com reciba los correos del sistema.', '2016-08-08 16:00:11'),
(307, 1, 'envió', 'un comunicado másivo a 10 personas.', '2016-08-08 16:02:10'),
(308, 1, 'agregó', 'un Jefe de Grupo Familiar', '2016-08-08 17:43:01'),
(309, 1, 'agregó', 'un Grupo Familiar', '2016-08-08 17:45:24'),
(310, 1, 'modificó', 'un Grupo Familiar', '2016-08-08 18:00:12'),
(311, 1, 'agregó', 'información de Participación Comunitaria', '2016-08-08 18:44:25'),
(312, 1, 'agregó', 'La Situación de Comunidad a la planilla 4', '2016-08-08 18:45:04'),
(313, 1, 'modificó', 'un parámetro de Tipo de Ingreso', '2016-08-09 12:09:17'),
(314, 1, 'generó', 'un Cuaderno de Votación', '2016-08-09 15:09:32'),
(315, 1, 'generó', 'un Resumen del Censo Demográfico', '2016-08-09 15:13:32'),
(316, 1, 'generó', 'un Registro Electoral Preliminar', '2016-08-09 15:15:18'),
(317, 1, 'modificó', 'un Grupo Familiar', '2016-08-09 15:16:28'),
(318, 1, 'modificó', 'un Grupo Familiar', '2016-08-09 15:18:38'),
(319, 1, 'generó', 'un Registro Electoral Preliminar', '2016-08-09 15:22:22'),
(320, 1, 'generó', 'un Registro Electoral Preliminar', '2016-08-09 15:23:22'),
(321, 1, 'modificó', 'la información de la Comunidad.', '2016-08-09 15:43:09'),
(322, 1, 'generó', 'un Cuaderno de Votación', '2016-08-09 15:59:54'),
(323, 1, 'generó', 'un Registro Electoral Preliminar', '2016-08-09 16:02:23'),
(324, 1, 'generó', 'un Registro Electoral Preliminar', '2016-08-09 16:02:56'),
(325, 1, 'generó', 'un Resumen del Censo Demográfico', '2016-08-09 16:03:50'),
(326, 1, 'modificó', 'un parámetro de Proveedor de Gas', '2016-08-09 16:28:17'),
(327, 1, 'modificó', 'un parámetro de Proveedor de Gas', '2016-08-09 16:28:38'),
(328, 1, 'agregó', 'un nuevo tipo de Proveedor de Gas a los parámetros del sistema', '2016-08-09 16:41:44'),
(329, 1, 'agregó', 'un nueva Capacidad de Bombona a los parámetros del sistema', '2016-08-09 18:41:35'),
(330, 1, 'agregó', 'un nueva Capacidad de Bombona a los parámetros del sistema', '2016-08-09 18:41:59'),
(331, 1, 'agregó', 'un nueva Capacidad de Bombona a los parámetros del sistema', '2016-08-09 18:42:17'),
(332, 1, 'agregó', 'un Jefe de Grupo Familiar', '2016-08-09 18:57:18'),
(333, 1, 'agregó', 'un Grupo Familiar', '2016-08-09 18:59:05'),
(334, 1, 'agregó', 'información de Participación Comunitaria', '2016-08-09 19:19:47'),
(335, 1, 'agregó', 'La Situación de Comunidad a la planilla 5', '2016-08-09 19:20:20'),
(336, 1, 'agregó', 'un Jefe de Grupo Familiar', '2016-08-10 11:04:25'),
(337, 1, 'agregó', 'un Grupo Familiar', '2016-08-10 11:06:24'),
(338, 1, 'modificó', 'Las observaciones de la planilla 6', '2016-08-10 11:25:32'),
(340, 1, 'continuó', 'con el llenado de la encuesta 6', '2016-08-10 11:30:16'),
(341, 1, 'agregó', 'información de Participación Comunitaria', '2016-08-10 11:45:08'),
(342, 1, 'agregó', 'La Situación de Comunidad a la planilla 6', '2016-08-10 11:46:15'),
(343, 1, 'eliminó', 'Pobreza extrema de los parámetros de Tipo de Situación Exclusión del sistema', '2016-08-10 11:56:57'),
(344, 1, 'eliminó', 'Silla de Ruedas de los parámetros de Tipo de Ayuda Especial del sistema', '2016-08-10 11:59:11'),
(345, 1, 'eliminó', 'Silla de Ruedas de los parámetros de Tipo de Ayuda Especial del sistema', '2016-08-10 12:00:16'),
(346, 1, 'eliminó', 'Shake it out de los parámetros de Tipo de Ayuda Especial del sistema', '2016-08-10 12:01:07'),
(347, 1, 'eliminó', 'Si, Recibe ayuda Especial de los parámetros de Tipo de Ayuda Especial del sistema', '2016-08-10 12:02:29'),
(348, 1, 'eliminó', 'Shake it out de los parámetros de Tipo de Ayuda Especial del sistema', '2016-08-10 12:02:45'),
(349, 1, 'eliminó', 'Mean Girls Hysterical Fan de los parámetros de Tipo de Padecencia del sistema', '2016-08-10 12:19:47');

--
-- Truncar tablas antes de insertar `comite`
--

TRUNCATE TABLE `comite`;
--
-- Volcado de datos para la tabla `comite`
--

INSERT IGNORE INTO `comite` (`id`, `nombre`, `cant_voceros`, `tipo_unidad`) VALUES
(3, NULL, 1, 'Unidad Administrativa y Financiera Comunitaria'),
(5, NULL, 1, 'Unidad de Contraloría Social'),
(6, NULL, 1, 'Comisión Electoral Permanente'),
(7, 'Comité de Salud', 2, 'Unidad Ejecutiva'),
(9, 'Comité de seguridad', 0, 'Unidad Ejecutiva'),
(10, 'Comité de servicios públicos', 0, 'Unidad Ejecutiva'),
(11, 'Comité de infraestructura', 0, 'Unidad Ejecutiva'),
(12, 'Comité de tierra urbana', 0, 'Unidad Ejecutiva'),
(13, 'Comité de vivienda y hábitat', 1, 'Unidad Ejecutiva'),
(14, 'Comité de economía comunal', 0, 'Unidad Ejecutiva'),
(15, 'Comité de recreación y deportes', 0, 'Unidad Ejecutiva'),
(16, 'Comité de alimentación y defensa del consumidor', 0, 'Unidad Ejecutiva'),
(17, 'Comité de mesa técnica de agua', 0, 'Unidad Ejecutiva'),
(18, 'Comité de mesa técnica de energía y gas', 0, 'Unidad Ejecutiva'),
(19, 'Comité de protección social de niños, niñas y adolescentes', 0, 'Unidad Ejecutiva'),
(20, 'Comité comunitario de personas con discapacidad', 0, 'Unidad Ejecutiva'),
(21, 'Comité de educación, cultura y formación ciudadana', 0, 'Unidad Ejecutiva'),
(22, 'Comité de familia e igualdad de género', 0, 'Unidad Ejecutiva');

--
-- Truncar tablas antes de insertar `comite_voceros`
--

TRUNCATE TABLE `comite_voceros`;
--
-- Volcado de datos para la tabla `comite_voceros`
--

INSERT IGNORE INTO `comite_voceros` (`comite_id`, `vocero_id`) VALUES
(3, 1),
(5, 10),
(6, 6),
(7, 4),
(7, 5),
(13, 8);

--
-- Truncar tablas antes de insertar `comunicado`
--

TRUNCATE TABLE `comunicado`;
--
-- Volcado de datos para la tabla `comunicado`
--

INSERT IGNORE INTO `comunicado` (`id`, `usuario_id`, `titulo`, `cuerpo`, `fecha`, `numDestinatarios`) VALUES
(7, 1, 'Sugar de Robin Shultz', 'ft Francesco Yates', '2016-07-15 20:58:29', 2),
(10, 1, 'Get Low', 'DJ Snake ft. Dillon Francis', '2016-07-15 22:17:45', 2),
(11, 1, 'Yoü & ï', 'Galantis', '2016-07-15 22:20:21', 2),
(12, 1, 'My Love', 'Sia, del Soundtrack de Twilight', '2016-07-19 11:02:26', 0),
(13, 1, 'Keep Your Head Up', 'Birdy', '2016-07-20 15:53:54', 0),
(14, 1, 'Birdy', 'Skinny Love de Bon Iver', '2016-07-20 15:57:10', 0),
(15, 1, 'aaa', 'aaaa', '2016-07-20 16:03:02', 5),
(16, 1, 'Strangerness & Charm', 'Es un tema compuesto por Florence + the Machine', '2016-08-08 16:02:07', 10);

--
-- Truncar tablas antes de insertar `comunidad`
--

TRUNCATE TABLE `comunidad`;
--
-- Volcado de datos para la tabla `comunidad`
--

INSERT IGNORE INTO `comunidad` (`id`, `estado`, `municipio`, `parroquia`, `sector`, `comunidad`, `direccion`) VALUES
(1, 'Carabobo', 'Valencia', 'Candelaria', 'II', 'Los Guayos', 'Los Guayos');

--
-- Truncar tablas antes de insertar `consejo_comunal`
--

TRUNCATE TABLE `consejo_comunal`;
--
-- Volcado de datos para la tabla `consejo_comunal`
--

INSERT IGNORE INTO `consejo_comunal` (`id`, `nombre`, `codigo`, `rif`, `numeroCuenta`) VALUES
(1, 'Consejo Comunal de Los Guayos', '15425896587', '199194680', '97987546613132564987');

--
-- Truncar tablas antes de insertar `grupo_familiar`
--

TRUNCATE TABLE `grupo_familiar`;
--
-- Volcado de datos para la tabla `grupo_familiar`
--

INSERT IGNORE INTO `grupo_familiar` (`id`, `apellidos`, `direccion`, `cantidadMiembros`, `numeroCasa`, `sector`, `tiempoResidencia`) VALUES
(1, 'Pérez Vera', 'Santa Lucia', 5, '257', 'Alexander Burgos', 20),
(2, 'Salas Vera', 'Santa Lucia', 2, '257', 'Alexander Burgos', 20),
(3, 'Díaz Moreno', 'Santa Lucia', 4, '257', 'Las Acacias', 20),
(4, 'Salcedo Moreno', 'Lopez', 4, '110-137', 'II Eutimio Rivas', 58),
(5, 'García de Salacedo', 'Av. 111-B C/ Lopez', 1, '110-B7', 'Eutimio Rivas', 79),
(6, 'Mendoza', 'Plaza', 1, '110-86', 'II Eutimio Rivas', 5);

--
-- Truncar tablas antes de insertar `jefe_grupo_familiar`
--

TRUNCATE TABLE `jefe_grupo_familiar`;
--
-- Volcado de datos para la tabla `jefe_grupo_familiar`
--

INSERT IGNORE INTO `jefe_grupo_familiar` (`id`, `nac_id`, `incap_id`, `profesion_id`, `nombres`, `apellidos`, `cedula`, `fechaNacimiento`, `edad`, `tiempoEnComunidad`, `sexo`, `incapacitado`, `pensionado`, `email`, `ingresoMensual`, `cne`, `pensIns_id`, `edoCivil_id`, `nivelIns_id`, `respC_id_3`, `ingFam_id`, `recibir_correo`) VALUES
(1, 1, 4, 2, 'Jairo Francisco', 'Pérez Machado', '24246455', '1956-01-10', 60, '20', 'Masculino', 'si', 'si', 'jfrancisco@gmail.com', 4000, 1, 1, 1, 2, 1, 6, 0),
(2, 1, NULL, 2, 'Juan', 'De la Cruz Salas', '11111111', '1950-07-01', 66, '20', 'Masculino', 'no', 'si', NULL, 15000, 1, 4, 2, 2, 1, 3, 0),
(3, 1, NULL, 5, 'Alexander', 'Díaz', '19919469', '1992-03-21', 24, '20', 'Masculino', 'no', 'no', 'alexander.diaz@gmail.com', 15000, 2, NULL, 2, 1, 2, 6, 0),
(4, 1, NULL, 10, 'Gisela Josefina', 'Salcedo García', '4874221', '1957-04-18', 59, '59', 'Femenino', 'no', 'si', NULL, 15051, 1, 2, 1, 3, 2, 1, 1),
(5, 1, NULL, 10, 'Carmen Teresa', 'Garcia Salcedo', '13784447', '1937-02-03', 79, '79', 'Femenino', 'no', 'si', NULL, 15051, 1, 2, 5, 1, 2, 1, 1),
(6, 1, NULL, 15, 'Douglas', 'Mendoza', '13900356', '1978-11-08', 37, '5', 'Masculino', 'no', 'no', NULL, 0, 1, NULL, 2, 5, 1, 5, 1);

--
-- Truncar tablas antes de insertar `jgf_telefonos`
--

TRUNCATE TABLE `jgf_telefonos`;
--
-- Volcado de datos para la tabla `jgf_telefonos`
--

INSERT IGNORE INTO `jgf_telefonos` (`telefono_id`, `jefeGF_id`) VALUES
(2, 1),
(4, 2),
(6, 4),
(7, 4),
(8, 5),
(9, 6),
(10, 6);

--
-- Truncar tablas antes de insertar `miembros_grupo`
--

TRUNCATE TABLE `miembros_grupo`;
--
-- Volcado de datos para la tabla `miembros_grupo`
--

INSERT IGNORE INTO `miembros_grupo` (`persona_id`, `miembro_id`) VALUES
(2, 3),
(2, 4),
(2, 5);

--
-- Truncar tablas antes de insertar `noticia`
--

TRUNCATE TABLE `noticia`;
--
-- Volcado de datos para la tabla `noticia`
--

INSERT IGNORE INTO `noticia` (`id`, `titulo`, `cuerpo`, `fecha`, `fechaPub`, `visibilidad`, `usuario_id`) VALUES
(1, 'Jornada de Vacunación de niños', '<p style="text-align: right;">Este s&aacute;bado habr&aacute; jornada de vacunaci&oacute;n en la calle los Andes, para ni&ntilde;os desde 8 a 12 a&ntilde;os.</p>', '2016-08-08 15:54:45', '2016-07-14 17:55:59', 1, 1),
(2, 'Esto es Otra Noticia Super Importante del Consejo Comunal', '<h2 style="text-align: left;">Primer Apartado</h2>\r\n<p style="text-align: justify;">lleg&oacute; la harina paz al hyperlider de San Diego One of the most common and challenging tasks for any application involves persisting and reading information to and from a database. Although the Symfony full-stack Framework doesn''t integrate any ORM by default, the <strong><em>Symfony Standard Edition</em></strong>, which is the most widely used distribution, comes integrated with Doctrine, a library whose sole goal is to give you powerful tools to make this easy. In this chapter, you''ll learn the basic philosophy behind Doctrine and see how easy working with a database can be.</p>\r\n<h2 style="text-align: justify;">Segundo Apartado</h2>\r\n<p>Esto es lo mejor que le pudo haber pasado a la facultad desde la inveci&oacute;n de la computadora personal.</p>\r\n<ol>\r\n<li>a</li>\r\n<li>b</li>\r\n<li>c</li>\r\n<li>d</li>\r\n<li>f</li>\r\n</ol>\r\n<blockquote>\r\n<p>Esto es algo diferente. pero sirve.</p>\r\n</blockquote>', '2016-08-08 15:55:13', '2016-07-15 00:08:43', 1, 1),
(3, 'Noticia Invisible', '<p>Hay una invasi&oacute;n de ellas. y crealo o no es muy malo</p>', '2016-08-08 15:55:28', '2016-07-15 11:01:46', 0, 1),
(5, 'Kylie Minogue', '<p>La cantante australiana visitar&aacute; alexander burgos la semana que viene.</p>', '2016-08-08 15:53:02', '2016-07-15 11:06:28', 0, 1),
(6, 'The Last Five Years', '<p style="text-align: center;">Es un musical por Jason Robert Brown, basa es las experiencias propias de sus antiguos noviazgos, matrimonio y posterior ruptura.</p>', '2016-07-21 10:27:08', '2016-07-20 13:51:27', 0, 1);

--
-- Truncar tablas antes de insertar `partcom_areatrabajo`
--

TRUNCATE TABLE `partcom_areatrabajo`;
--
-- Volcado de datos para la tabla `partcom_areatrabajo`
--

INSERT IGNORE INTO `partcom_areatrabajo` (`areacc_id`, `partCom_id`) VALUES
(1, 1),
(2, 1),
(1, 2),
(2, 2),
(8, 3);

--
-- Truncar tablas antes de insertar `partcom_misiones`
--

TRUNCATE TABLE `partcom_misiones`;
--
-- Volcado de datos para la tabla `partcom_misiones`
--

INSERT IGNORE INTO `partcom_misiones` (`mision_id`, `partCom_id`) VALUES
(1, 1),
(2, 1),
(5, 1),
(6, 1),
(7, 1),
(1, 2),
(2, 2),
(3, 2),
(5, 2),
(6, 2),
(6, 3);

--
-- Truncar tablas antes de insertar `partcom_orgs`
--

TRUNCATE TABLE `partcom_orgs`;
--
-- Volcado de datos para la tabla `partcom_orgs`
--

INSERT IGNORE INTO `partcom_orgs` (`orgs_id`, `partCom_id`) VALUES
(6, 1),
(4, 2),
(4, 3);

--
-- Truncar tablas antes de insertar `partcom_pregpart`
--

TRUNCATE TABLE `partcom_pregpart`;
--
-- Volcado de datos para la tabla `partcom_pregpart`
--

INSERT IGNORE INTO `partcom_pregpart` (`partCom_id`, `pregPart_id`) VALUES
(1, 4),
(2, 5),
(3, 6),
(4, 7),
(5, 8);

--
-- Truncar tablas antes de insertar `participacion_comunitaria`
--

TRUNCATE TABLE `participacion_comunitaria`;
--
-- Volcado de datos para la tabla `participacion_comunitaria`
--

INSERT IGNORE INTO `participacion_comunitaria` (`id`, `participaOrganizacion`, `participaMiembroOrganizacion`) VALUES
(1, 1, 2),
(2, 2, 2),
(3, 2, 2),
(4, 2, 2),
(5, 2, 2),
(6, 2, 2);

--
-- Truncar tablas antes de insertar `persona`
--

TRUNCATE TABLE `persona`;
--
-- Volcado de datos para la tabla `persona`
--

INSERT IGNORE INTO `persona` (`id`, `profesion_id`, `incap_id`, `nombre`, `apellido`, `sexo`, `cedula`, `fechaNacimiento`, `edad`, `parentesco`, `incapacitado`, `pensionado`, `nivelInstr_id`, `pensIns_id`, `recibir_correo`, `email`, `cne`, `embrarazoTemp`, `grupo_fam_id`, `nac_id`, `ingresoMensual`) VALUES
(2, 1, NULL, 'Anny Yordana', 'Pérez Vera', 'Femenino', '245265821', '1989-01-14', 27, 'Hija', 'no', 'no', 3, NULL, 1, 'ajpv16@gmail.com', 1, 2, 1, 4, 0),
(4, 1, NULL, 'María de Jesus', 'Vera de Salas', 'Femenino', '222222222', '1956-03-18', 60, 'Esposa', 'no', 'no', 2, NULL, 1, 'mveradesalas@gmail.com', 1, 2, 2, 4, 0),
(6, 3, NULL, 'Tobias', 'Pérez', 'Femenino', '', '2014-11-01', 1, 'Mascota', 'no', 'no', 1, NULL, 1, 'tobistobis@gmail.com', 2, 1, 1, 4, 0),
(7, 7, NULL, 'Jesús Gilberto', 'Pérez Vasquez', 'Masculino', '19919470', '1995-01-01', 21, 'Hijo', 'no', 'no', 3, NULL, 1, 'jesus_perez09@gmail.com', 2, NULL, 3, 1, 0),
(8, 6, 2, 'Andreina', 'Quintero', 'Femenino', '15263154', '1999-04-01', 17, 'Hija', 'si', 'no', 3, NULL, 1, 'andre.quintero@gmail.com', 1, 2, 3, 4, 0),
(9, 3, NULL, 'Mel', 'Pérez', 'Femenino', '', '2015-03-18', 1, 'Mascota', 'no', 'no', 1, NULL, 1, 'melmelnewromantics@taylorarmy.usa', 2, 2, 1, 3, 0),
(13, 1, NULL, 'Luis Alberto', 'Pérez Vera', 'Masculino', '19919468', '1992-03-20', 24, 'Hijo', 'no', 'no', 6, NULL, 1, 'lapv1992@gmail.com', 2, NULL, 1, 1, 0),
(14, 9, NULL, 'Valeria Alexandra', 'Colina Vasquez', 'Femenino', '15623847', '1996-09-18', 19, 'Sobrina', 'no', 'no', 3, NULL, 1, 'alexandrav@icloud.com', 2, 2, 3, 1, 0),
(15, 11, NULL, 'Gilbert Jesus', 'Moreno', 'Masculino', '17681816', '1985-06-04', 31, 'Hijo', 'no', 'si', 3, 2, 0, NULL, 1, NULL, 4, 1, 0),
(16, 12, NULL, 'Grisell Andrea', 'Salcedo', 'Femenino', '18239494', '1988-12-05', 27, 'Hija', 'no', 'no', 3, NULL, 0, NULL, 1, 2, 4, 1, 0),
(17, 3, NULL, 'Gissel Cristine', 'Salcedo', 'Femenino', NULL, '2015-03-15', 1, 'Nieta', 'no', 'no', 1, NULL, 0, NULL, 2, 2, 4, 1, 0),
(18, 10, NULL, 'Carmen Luisa', 'Salcedo', 'Femenino', '4876106', '1958-03-31', 58, 'Hija', 'no', 'no', 2, NULL, 0, NULL, 1, 2, 5, 1, 0),
(19, 13, NULL, 'María Eugenia', 'Salcedo', 'Femenino', '21240595', '1991-04-21', 25, 'Nieta', 'no', 'no', 3, NULL, 0, NULL, 2, 2, 5, 1, 0),
(20, 14, NULL, 'Cesar Alonzo', 'Salcedo', 'Masculino', '19990220', '1989-02-22', 27, 'Nieto', 'no', 'no', 3, NULL, 0, NULL, 2, NULL, 5, 1, 0),
(21, 3, NULL, 'Santiago Josein', 'Rios Salcedo', 'Masculino', NULL, '2010-10-05', 5, 'Bisnieto', 'no', 'no', 2, NULL, 0, NULL, 2, NULL, 5, 1, 0),
(22, 3, NULL, 'Michel Stefany', 'Salcedo', 'Femenino', NULL, '2011-03-15', 5, 'Bisnieta', 'no', 'no', 1, NULL, 0, NULL, 2, 2, 5, 1, 0),
(23, 3, NULL, 'Ashley Valeria', 'Salcedo', 'Femenino', NULL, '2012-10-24', 3, 'Bisnieta', 'no', 'no', 1, NULL, 0, NULL, 2, 2, 5, 1, 0),
(24, 16, NULL, 'Noris', 'Mendoza', 'Femenino', '14714069', '1978-11-28', 37, 'Esposa', 'no', 'no', 3, NULL, 0, NULL, 1, 2, 6, 1, 10000),
(25, 3, NULL, 'Sebastian', 'Mendoza', 'Masculino', NULL, '2008-10-10', 7, 'Hijo', 'no', 'no', 2, NULL, 0, NULL, 2, NULL, 6, 1, 0);

--
-- Truncar tablas antes de insertar `persona_telefonos`
--

TRUNCATE TABLE `persona_telefonos`;
--
-- Truncar tablas antes de insertar `planillas`
--

TRUNCATE TABLE `planillas`;
--
-- Volcado de datos para la tabla `planillas`
--

INSERT IGNORE INTO `planillas` (`id`, `usuario_id`, `observaciones`, `jefegFam`, `grupoFam`, `sitEco`, `sitViv`, `sitSal`, `sitServ`, `partCom`, `sitCom`, `terminada`, `fecha`) VALUES
(1, 1, 'A Rush of Blood to the Head.', 1, 1, 1, 1, 1, 1, 1, 2, 100, '2016-07-30 12:13:40'),
(2, 1, 'Jam for the Ladies, Moby.', 2, 2, 2, 2, 2, 2, 2, 3, 100, '2016-08-01 21:42:53'),
(3, 1, 'Esta encuesta no se pudo terminar en su momento.', 3, 3, 3, 3, 3, 3, 3, 4, 100, '2016-07-31 20:35:49'),
(4, 1, NULL, 4, 4, 4, 4, 4, 4, 4, 5, 100, '2016-08-08 18:45:04'),
(5, 1, NULL, 5, 5, 5, 5, 5, 5, 5, 6, 100, '2016-08-09 19:20:20'),
(6, 1, 'En su momento no se pudo terminar por problemas eléctricos.', 6, 6, 6, 6, 6, 6, 6, 7, 100, '2016-08-10 11:46:15');

--
-- Truncar tablas antes de insertar `planilla_grupofamiliar`
--

TRUNCATE TABLE `planilla_grupofamiliar`;
--
-- Truncar tablas antes de insertar `sitsalud_ayu`
--

TRUNCATE TABLE `sitsalud_ayu`;
--
-- Volcado de datos para la tabla `sitsalud_ayu`
--

INSERT IGNORE INTO `sitsalud_ayu` (`ayuda_id`, `sitSalud_id`) VALUES
(12, 1),
(13, 6),
(14, 6),
(15, 6);

--
-- Truncar tablas antes de insertar `sitsalud_exc`
--

TRUNCATE TABLE `sitsalud_exc`;
--
-- Volcado de datos para la tabla `sitsalud_exc`
--

INSERT IGNORE INTO `sitsalud_exc` (`exclusion_id`, `sitSalud_id`) VALUES
(15, 1),
(17, 2),
(16, 6);

--
-- Truncar tablas antes de insertar `sitsalud_padecencia`
--

TRUNCATE TABLE `sitsalud_padecencia`;
--
-- Volcado de datos para la tabla `sitsalud_padecencia`
--

INSERT IGNORE INTO `sitsalud_padecencia` (`padecencia_id`, `sitSalud_id`) VALUES
(1, 1),
(2, 1),
(2, 2),
(3, 2),
(3, 3),
(5, 4),
(2, 5),
(5, 6);

--
-- Truncar tablas antes de insertar `sitserv_mecinf`
--

TRUNCATE TABLE `sitserv_mecinf`;
--
-- Volcado de datos para la tabla `sitserv_mecinf`
--

INSERT IGNORE INTO `sitserv_mecinf` (`sitServ_id`, `mecInf_id`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(2, 2),
(2, 3),
(2, 4),
(3, 1),
(3, 3),
(3, 4),
(4, 1),
(4, 2),
(4, 3),
(4, 4),
(6, 1),
(6, 2),
(6, 3),
(6, 4);

--
-- Truncar tablas antes de insertar `sitserv_servcom`
--

TRUNCATE TABLE `sitserv_servcom`;
--
-- Volcado de datos para la tabla `sitserv_servcom`
--

INSERT IGNORE INTO `sitserv_servcom` (`sitServ_id`, `servCom_id`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(1, 6),
(1, 7),
(1, 8),
(1, 9),
(1, 10),
(1, 11),
(1, 12),
(1, 13),
(2, 7),
(2, 11),
(2, 14),
(3, 2),
(3, 5),
(3, 7),
(3, 8),
(3, 9),
(3, 12),
(4, 3),
(4, 4),
(4, 6),
(4, 7),
(6, 6),
(6, 7);

--
-- Truncar tablas antes de insertar `sitserv_tiptrans`
--

TRUNCATE TABLE `sitserv_tiptrans`;
--
-- Volcado de datos para la tabla `sitserv_tiptrans`
--

INSERT IGNORE INTO `sitserv_tiptrans` (`sitServ_id`, `tipTrans_id`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(2, 1),
(2, 2),
(2, 5),
(3, 1),
(3, 2),
(3, 5),
(4, 2),
(6, 2);

--
-- Truncar tablas antes de insertar `situacion_comunidad`
--

TRUNCATE TABLE `situacion_comunidad`;
--
-- Volcado de datos para la tabla `situacion_comunidad`
--

INSERT IGNORE INTO `situacion_comunidad` (`id`) VALUES
(2),
(3),
(4),
(5),
(6),
(7);

--
-- Truncar tablas antes de insertar `situacion_economica`
--

TRUNCATE TABLE `situacion_economica`;
--
-- Volcado de datos para la tabla `situacion_economica`
--

INSERT IGNORE INTO `situacion_economica` (`id`, `ingresoFamiliar`, `placa`, `ubcTrab`, `ingFam_id`) VALUES
(1, '2002', '', 4, 5),
(2, '15000', '452HJGH', 3, 3),
(3, '25000', '2564152, 458745211, dflkj545, dfdgf, 5445', 3, 5),
(4, '0', NULL, NULL, 2),
(5, '0', NULL, NULL, 2),
(6, '0', NULL, 2, 5);

--
-- Truncar tablas antes de insertar `situacion_salud`
--

TRUNCATE TABLE `situacion_salud`;
--
-- Volcado de datos para la tabla `situacion_salud`
--

INSERT IGNORE INTO `situacion_salud` (`id`) VALUES
(1),
(2),
(3),
(4),
(5),
(6);

--
-- Truncar tablas antes de insertar `situacion_servicios`
--

TRUNCATE TABLE `situacion_servicios`;
--
-- Volcado de datos para la tabla `situacion_servicios`
--

INSERT IGNORE INTO `situacion_servicios` (`id`, `gas`, `telefonia`, `aguasBlancas`, `aguasServidas`, `sistemaElectrico`, `recoleccionBasura`, `lts_tanque`, `medidor`, `cant_pipotes`, `cantBombonas`, `empresaGas`, `capacidadBombona`) VALUES
(1, 1, 2, 4, 1, 3, 6, 0, 2, 0, 0, NULL, NULL),
(2, 1, 2, 2, 1, 1, 4, 0, 1, 0, 0, NULL, NULL),
(3, 1, 1, 3, 2, 1, 8, 0, 1, 0, 0, NULL, NULL),
(4, 1, 2, 4, 2, 1, 1, 0, 1, 0, 0, NULL, NULL),
(5, 1, 1, 1, 2, 1, 1, 0, 1, 0, 0, 1, 3),
(6, 1, 2, 1, 2, 1, NULL, 0, 1, 3, 1, 1, 3);

--
-- Truncar tablas antes de insertar `situacion_vivienda`
--

TRUNCATE TABLE `situacion_vivienda`;
--
-- Volcado de datos para la tabla `situacion_vivienda`
--

INSERT IGNORE INTO `situacion_vivienda` (`id`, `salubridad`, `terrenoPropio`, `ovc`, `cantidadHabitaciones`, `tipoVivienda`, `tipoTenencia`, `tipoParedes`, `tipoTecho`) VALUES
(1, 1, 2, 2, 6, 5, 1, 6, 4),
(2, 3, 1, 2, 4, 2, 2, 1, 1),
(3, 3, 1, 1, 6, 6, 4, 1, 1),
(4, 1, 2, 2, 2, 2, 3, 1, 5),
(5, 1, 1, 2, 4, 3, 1, 1, 1),
(6, 1, 2, 2, 4, 6, 3, 1, 2);

--
-- Truncar tablas antes de insertar `situcom_pregsitucomunidad`
--

TRUNCATE TABLE `situcom_pregsitucomunidad`;
--
-- Volcado de datos para la tabla `situcom_pregsitucomunidad`
--

INSERT IGNORE INTO `situcom_pregsitucomunidad` (`situCom_id`, `pregSituComunidad_id`) VALUES
(2, 5),
(2, 6),
(3, 2),
(3, 7),
(7, 8);

--
-- Truncar tablas antes de insertar `sitvivi_actcomercial`
--

TRUNCATE TABLE `sitvivi_actcomercial`;
--
-- Volcado de datos para la tabla `sitvivi_actcomercial`
--

INSERT IGNORE INTO `sitvivi_actcomercial` (`sitViv`, `ActComercial`) VALUES
(1, 1),
(1, 3),
(1, 4),
(1, 5),
(1, 6),
(1, 7),
(2, 1),
(2, 4),
(2, 5),
(2, 8),
(3, 28),
(4, 7);

--
-- Truncar tablas antes de insertar `sitvivi_enseres`
--

TRUNCATE TABLE `sitvivi_enseres`;
--
-- Volcado de datos para la tabla `sitvivi_enseres`
--

INSERT IGNORE INTO `sitvivi_enseres` (`enseres_id`, `sitViv`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(9, 1),
(10, 1),
(1, 2),
(2, 2),
(3, 2),
(4, 2),
(6, 2),
(7, 2),
(9, 2),
(10, 2),
(11, 3),
(1, 4),
(2, 4),
(4, 4),
(5, 4),
(7, 4),
(9, 4),
(10, 4),
(13, 4),
(1, 5),
(2, 5),
(3, 5),
(4, 5),
(5, 5),
(6, 5),
(7, 5),
(1, 6),
(2, 6),
(3, 6),
(4, 6),
(5, 6),
(7, 6),
(10, 6),
(13, 6);

--
-- Truncar tablas antes de insertar `sitvivi_mascota`
--

TRUNCATE TABLE `sitvivi_mascota`;
--
-- Volcado de datos para la tabla `sitvivi_mascota`
--

INSERT IGNORE INTO `sitvivi_mascota` (`masco_id`, `sitViv`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(3, 2),
(4, 2),
(5, 2),
(4, 3),
(7, 3),
(2, 4);

--
-- Truncar tablas antes de insertar `sitvivi_plaga`
--

TRUNCATE TABLE `sitvivi_plaga`;
--
-- Volcado de datos para la tabla `sitvivi_plaga`
--

INSERT IGNORE INTO `sitvivi_plaga` (`plaga_id`, `sitViv`) VALUES
(2, 1),
(4, 1),
(5, 1),
(1, 2),
(2, 2),
(3, 2),
(3, 3),
(4, 3),
(1, 4),
(3, 4),
(4, 4),
(1, 5),
(2, 5),
(3, 5),
(4, 5),
(1, 6),
(2, 6),
(3, 6),
(4, 6),
(5, 6);

--
-- Truncar tablas antes de insertar `sitvivi_thv`
--

TRUNCATE TABLE `sitvivi_thv`;
--
-- Volcado de datos para la tabla `sitvivi_thv`
--

INSERT IGNORE INTO `sitvivi_thv` (`sitViv`, `tHabViv_id`) VALUES
(1, 1),
(2, 1),
(2, 2),
(2, 3),
(2, 4),
(2, 6),
(2, 7),
(3, 1),
(3, 2),
(3, 3),
(3, 4),
(3, 6),
(4, 1),
(4, 2),
(4, 3),
(4, 4),
(5, 1),
(5, 2),
(5, 3),
(5, 4),
(6, 1),
(6, 2),
(6, 3),
(6, 4);

--
-- Truncar tablas antes de insertar `telefono`
--

TRUNCATE TABLE `telefono`;
--
-- Volcado de datos para la tabla `telefono`
--

INSERT IGNORE INTO `telefono` (`id`, `codigo`, `numero`) VALUES
(1, '0241', '8479997'),
(2, '0241', '8479997'),
(4, '0241', '8486460'),
(5, '0414', '4415939'),
(6, '0412', '4146157'),
(7, '0241', '8530840'),
(8, '0412', '1794408'),
(9, '0241', '8977955'),
(10, '0424', '4337744');

--
-- Truncar tablas antes de insertar `usuario`
--

TRUNCATE TABLE `usuario`;
--
-- Volcado de datos para la tabla `usuario`
--

INSERT IGNORE INTO `usuario` (`id`, `username`, `username_canonical`, `email`, `email_canonical`, `enabled`, `salt`, `password`, `last_login`, `locked`, `expired`, `expires_at`, `confirmation_token`, `password_requested_at`, `roles`, `credentials_expired`, `credentials_expire_at`, `primerNombre`, `segundoNombre`, `primerApellido`, `segundoApellido`, `cedula`, `fechaNacimiento`) VALUES
(1, 'lapv1992', 'lapv1992', 'lapv1992@gmail.com', 'lapv1992@gmail.com', 1, 'qafdg29ko7404sss44gwwgsooowsgw8', '$2y$13$qafdg29ko7404sss44gwwe62QxJarXxGwxOWv9a5MfX56934B7yXi', '2016-08-06 08:21:32', 0, 0, NULL, '7vLAhTM1SgtNRBRoB1di68SMsqVYZfwTCHS0fpmzP-o', '2016-07-21 11:21:32', 'a:1:{i:0;s:10:"ROLE_ADMIN";}', 0, NULL, 'Luis', 'Alberto', 'Pérez', 'Vera', '19919468', '1992-03-20'),
(2, 'ajpv16', 'ajpv16', 'ajpv16@gmail.com', 'ajpv16@gmail.com', 0, 'esmm1xv957kg4csg8c0ggw8088ss4kc', '$2y$13$esmm1xv957kg4csg8c0ggu4zLP/SFxYcWvcJCw990EBR8o/fznzKa', '2016-07-10 18:35:48', 0, 0, NULL, NULL, NULL, 'a:0:{}', 0, NULL, 'Anny', 'Yordana', 'Pérez', 'Vera', '24244451', '1989-01-14');

--
-- Truncar tablas antes de insertar `usuario_telefonos`
--

TRUNCATE TABLE `usuario_telefonos`;
--
-- Volcado de datos para la tabla `usuario_telefonos`
--

INSERT IGNORE INTO `usuario_telefonos` (`usuario_id`, `telefono_id`) VALUES
(2, 1),
(1, 5);

--
-- Truncar tablas antes de insertar `vocero`
--

TRUNCATE TABLE `vocero`;
--
-- Volcado de datos para la tabla `vocero`
--

INSERT IGNORE INTO `vocero` (`id`, `tipo`, `votos_electo`, `persona`) VALUES
(1, 'Suplente', NULL, '19919468'),
(4, 'Principal', NULL, '222222222'),
(5, 'Suplente', NULL, '19919470'),
(6, 'Principal', 500, '11111111'),
(8, 'Principal', NULL, '24246455'),
(10, 'Principal', NULL, '15623847');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
