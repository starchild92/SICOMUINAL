-- phpMyAdmin SQL Dump
-- version 4.4.14
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 10-08-2016 a las 12:43:16
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

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
