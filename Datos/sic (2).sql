-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 06-07-2016 a las 15:22:25
-- Versión del servidor: 5.5.49-0ubuntu0.14.04.1
-- Versión de PHP: 5.5.9-1ubuntu4.17

SET FOREIGN_KEY_CHECKS=0;
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `sic`
--

--
-- Volcado de datos para la tabla `admin_aguas_blancas`
--

INSERT INTO `admin_aguas_blancas` (`id`, `nombre`) VALUES
(1, 'Acuaeducto'),
(2, 'Camión'),
(4, 'Del Río'),
(3, 'Pila Pública');

--
-- Volcado de datos para la tabla `admin_aguas_servidas`
--

INSERT INTO `admin_aguas_servidas` (`id`, `nombre`) VALUES
(2, 'Cloaca'),
(1, 'Pozo séptico');

--
-- Volcado de datos para la tabla `admin_area_trabajo_c_c`
--

INSERT INTO `admin_area_trabajo_c_c` (`id`, `nombre`) VALUES
(1, 'Contraloría y Seguimiento'),
(2, 'Relaciones Públicas y Medios'),
(3, 'Seguridad Ciudadana');

--
-- Volcado de datos para la tabla `admin_clas_ingreso_familiar`
--

INSERT INTO `admin_clas_ingreso_familiar` (`id`, `nombre`) VALUES
(2, 'Diario'),
(1, 'Mensual'),
(6, 'Por trabajo realizado'),
(5, 'Quincenal'),
(3, 'Semanal');

--
-- Volcado de datos para la tabla `admin_estado_civil`
--

INSERT INTO `admin_estado_civil` (`id`, `nombre`) VALUES
(2, 'Casado(a)'),
(4, 'Concubino(a)'),
(3, 'Divorciado(a)'),
(1, 'Soltero(a)'),
(5, 'Viudo(a)');

--
-- Volcado de datos para la tabla `admin_incapacidades`
--

INSERT INTO `admin_incapacidades` (`id`, `incapacidad`) VALUES
(2, 'Disfunción Auditiva'),
(3, 'Disfunción Verbal'),
(1, 'Disfunción Visual');

--
-- Volcado de datos para la tabla `admin_mecanismo_informacion`
--

INSERT INTO `admin_mecanismo_informacion` (`id`, `nombre`) VALUES
(4, 'Internet'),
(5, 'Medios Alternativos Comunitarios'),
(3, 'Prensa'),
(2, 'Radio'),
(1, 'Televisión');

--
-- Volcado de datos para la tabla `admin_misiones_comunidad`
--

INSERT INTO `admin_misiones_comunidad` (`id`, `nombre`) VALUES
(6, 'Barrio Adentro'),
(7, 'Ezequiel Zamora'),
(5, 'Identidad'),
(8, 'Luis Pérez'),
(1, 'Ribas'),
(2, 'Sucre'),
(3, 'Vuelvan Caras');

--
-- Volcado de datos para la tabla `admin_nacionalidad`
--

INSERT INTO `admin_nacionalidad` (`id`, `nacionalidad`) VALUES
(4, 'Extragero/a'),
(3, 'Naturalizado'),
(1, 'Venezolano/a');

--
-- Volcado de datos para la tabla `admin_nivel_instruccion`
--

INSERT INTO `admin_nivel_instruccion` (`id`, `nombre`) VALUES
(3, 'Bachiller'),
(2, 'Básica'),
(7, 'Postgrado'),
(1, 'Sin Instrucción'),
(4, 'Técnico Medio'),
(5, 'Técnico Superior'),
(6, 'Universitario');

--
-- Volcado de datos para la tabla `admin_org_comunitaria`
--

INSERT INTO `admin_org_comunitaria` (`id`, `nombre`) VALUES
(1, 'Organización 1'),
(2, 'Organización 2'),
(3, 'Organización 3'),
(4, 'PeTA');

--
-- Volcado de datos para la tabla `admin_pensionado_institucion`
--

INSERT INTO `admin_pensionado_institucion` (`id`, `nombre`) VALUES
(1, 'IVICC'),
(2, 'IVSS');

--
-- Volcado de datos para la tabla `admin_preguntas`
--

INSERT INTO `admin_preguntas` (`id`, `pregunta`) VALUES
(1, '¿Cree usted que en la actualidad el pueblo está interviniendo en las deciciones sobre como deben gastarse los recursos de su comunidad?'),
(2, '¿Cree usted que Glee es la mejor serie del mundo?');

--
-- Volcado de datos para la tabla `admin_preguntas_participacion_comunitaria`
--

INSERT INTO `admin_preguntas_participacion_comunitaria` (`id`, `respCerrada`, `pregunta`) VALUES
(4, 2, 1);

--
-- Volcado de datos para la tabla `admin_profesion`
--

INSERT INTO `admin_profesion` (`id`, `nombre`) VALUES
(2, 'Albañil'),
(1, 'Analista Programador en Sistemas');

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

--
-- Volcado de datos para la tabla `admin_resp_cerrada`
--

INSERT INTO `admin_resp_cerrada` (`id`, `respuesta`) VALUES
(2, 'No'),
(1, 'Si');

--
-- Volcado de datos para la tabla `admin_salubridad_vivienda`
--

INSERT INTO `admin_salubridad_vivienda` (`id`, `nombre`) VALUES
(1, 'Limpia');

--
-- Volcado de datos para la tabla `admin_servicios_comunales`
--

INSERT INTO `admin_servicios_comunales` (`id`, `nombre`) VALUES
(2, 'Abastos'),
(3, 'Bodega'),
(10, 'Cancha'),
(11, 'Casa Comunal'),
(9, 'Centro de Salud'),
(7, 'Escuelas'),
(4, 'Farmacias'),
(12, 'Iglesia'),
(8, 'Liceos'),
(1, 'Mercado'),
(5, 'Plazas y Parques'),
(6, 'Preescolar');

--
-- Volcado de datos para la tabla `admin_sistema_electrico`
--

INSERT INTO `admin_sistema_electrico` (`id`, `nombre`) VALUES
(1, 'Electrificado Público'),
(3, 'No tiene'),
(2, 'Planta Eléctrica Propia');

--
-- Volcado de datos para la tabla `admin_tipo_ayuda_especial`
--

INSERT INTO `admin_tipo_ayuda_especial` (`id`, `nombre`) VALUES
(1, 'Si, Recibe ayuda Especial'),
(2, 'Silla de Ruedas'),
(6, 'Shake it out'),
(10, 'Shake it out'),
(11, 'Silla de Ruedas'),
(12, 'Silla de Ruedas');

--
-- Volcado de datos para la tabla `admin_tipo_enseres`
--

INSERT INTO `admin_tipo_enseres` (`id`, `nombre`) VALUES
(1, 'Nevera');

--
-- Volcado de datos para la tabla `admin_tipo_gas`
--

INSERT INTO `admin_tipo_gas` (`id`, `nombre`) VALUES
(1, 'Bombonas'),
(3, 'No posee'),
(2, 'Tubería');

--
-- Volcado de datos para la tabla `admin_tipo_habitaciones_vivienda`
--

INSERT INTO `admin_tipo_habitaciones_vivienda` (`id`, `nombre`) VALUES
(1, 'Sala');

--
-- Volcado de datos para la tabla `admin_tipo_ingresos`
--

INSERT INTO `admin_tipo_ingresos` (`id`, `nombre`) VALUES
(5, '2001 o más'),
(3, '201 a 600'),
(4, '601 a 2000'),
(2, 'Menos de 200'),
(1, 'Ninguno');

--
-- Volcado de datos para la tabla `admin_tipo_mascotas`
--

INSERT INTO `admin_tipo_mascotas` (`id`, `nombre`) VALUES
(2, 'Gato'),
(1, 'Perro');

--
-- Volcado de datos para la tabla `admin_tipo_padecencia`
--

INSERT INTO `admin_tipo_padecencia` (`id`, `nombre`) VALUES
(2, 'Diabetes'),
(1, 'SIDA');

--
-- Volcado de datos para la tabla `admin_tipo_paredes`
--

INSERT INTO `admin_tipo_paredes` (`id`, `nombre`) VALUES
(1, 'Frisadas'),
(2, 'Sin Frizar'),
(3, 'Tablas');

--
-- Volcado de datos para la tabla `admin_tipo_plagas`
--

INSERT INTO `admin_tipo_plagas` (`id`, `nombre`) VALUES
(1, 'Moscas'),
(2, 'Ratones');

--
-- Volcado de datos para la tabla `admin_tipo_situacion_exclusion`
--

INSERT INTO `admin_tipo_situacion_exclusion` (`id`, `situacion`, `cantidad`) VALUES
(1, 'Niños en la calle', 5),
(8, 'Pobreza extrema', 2),
(13, 'Pobreza extrema', 2),
(14, 'Niños en la calle', 250),
(15, 'Niños en la calle', 0);

--
-- Volcado de datos para la tabla `admin_tipo_techo`
--

INSERT INTO `admin_tipo_techo` (`id`, `nombre`) VALUES
(1, 'Platabanda');

--
-- Volcado de datos para la tabla `admin_tipo_telefonia`
--

INSERT INTO `admin_tipo_telefonia` (`id`, `nombre`) VALUES
(1, 'Celular'),
(2, 'Domiciliaría');

--
-- Volcado de datos para la tabla `admin_tipo_tenencia`
--

INSERT INTO `admin_tipo_tenencia` (`id`, `forma`) VALUES
(1, 'Propia');

--
-- Volcado de datos para la tabla `admin_tipo_transporte`
--

INSERT INTO `admin_tipo_transporte` (`id`, `nombre`) VALUES
(3, 'Bestias'),
(4, 'Privado (Taxi)'),
(1, 'Propio'),
(2, 'Público');

--
-- Volcado de datos para la tabla `admin_tipo_vivienda`
--

INSERT INTO `admin_tipo_vivienda` (`id`, `nombre`) VALUES
(1, 'Quinta');

--
-- Volcado de datos para la tabla `admin_ubicacion_trabajo`
--

INSERT INTO `admin_ubicacion_trabajo` (`id`, `nombre`) VALUES
(1, 'Institución Pública');

--
-- Volcado de datos para la tabla `admin_venta_vivienda`
--

INSERT INTO `admin_venta_vivienda` (`id`, `nombre`) VALUES
(1, 'Dulces'),
(2, 'Helados');

--
-- Volcado de datos para la tabla `comunidad`
--

INSERT INTO `comunidad` (`id`, `estado`, `municipio`, `parroquia`, `sector`, `comunidad`, `direccion`) VALUES
(2, 'Carabobo', 'Valencia', 'Miguel Peña', 'Los Guayos', 'Los Guayos', 'Los Guayos');

--
-- Volcado de datos para la tabla `consejo_comunal`
--

INSERT INTO `consejo_comunal` (`id`, `nombre`, `codigo`, `rif`, `numeroCuenta`) VALUES
(2, 'Consejo Comunal de Los Guayos', '15926345', '154235212', '12542389798797974654');

--
-- Volcado de datos para la tabla `telefono`
--

INSERT INTO `telefono` (`id`, `codigo`, `numero`) VALUES
(1, '0241', '8479997'),
(2, '0414', '8479997'),
(3, '0414', '4415939'),
(4, '0414', '8479997');

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id`, `username`, `username_canonical`, `email`, `email_canonical`, `enabled`, `salt`, `password`, `last_login`, `locked`, `expired`, `expires_at`, `confirmation_token`, `password_requested_at`, `roles`, `credentials_expired`, `credentials_expire_at`, `primerNombre`, `segundoNombre`, `primerApellido`, `segundoApellido`, `cedula`, `fechaNacimiento`) VALUES
(1, 'lapv1992', 'lapv1992', 'lapv1992@gmail.com', 'lapv1992@gmail.com', 1, 'qafdg29ko7404sss44gwwgsooowsgw8', '$2y$13$qafdg29ko7404sss44gwwe62QxJarXxGwxOWv9a5MfX56934B7yXi', '2016-07-06 13:38:42', 0, 0, NULL, '7vLAhTM1SgtNRBRoB1di68SMsqVYZfwTCHS0fpmzP-o', '2016-02-09 13:31:57', 'a:1:{i:0;s:10:"ROLE_ADMIN";}', 0, NULL, 'Luis', 'Alberto', 'Pérez', 'Vera', '19919468', '1992-03-20'),
(2, 'ajpv16', 'ajpv16', 'ajpv16@gmail.com', 'ajpv16@gmail.com', 0, 'esmm1xv957kg4csg8c0ggw8088ss4kc', '$2y$13$esmm1xv957kg4csg8c0ggu4zLP/SFxYcWvcJCw990EBR8o/fznzKa', NULL, 0, 0, NULL, NULL, NULL, 'a:0:{}', 0, NULL, 'Anny', 'Yordana', 'Pérez', 'Vera', '24246455', '1989-01-14');

--
-- Volcado de datos para la tabla `usuario_telefonos`
--

INSERT INTO `usuario_telefonos` (`usuario_id`, `telefono_id`) VALUES
(1, 1),
(2, 2),
(1, 3);
SET FOREIGN_KEY_CHECKS=1;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
