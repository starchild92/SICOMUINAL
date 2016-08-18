-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 06-07-2016 a las 15:22:20
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

UPDATE `admin_aguas_blancas` SET `id` = 1,`nombre` = 'Acuaeducto' WHERE `admin_aguas_blancas`.`id` = 1;
UPDATE `admin_aguas_blancas` SET `id` = 2,`nombre` = 'Camión' WHERE `admin_aguas_blancas`.`id` = 2;
UPDATE `admin_aguas_blancas` SET `id` = 4,`nombre` = 'Del Río' WHERE `admin_aguas_blancas`.`id` = 4;
UPDATE `admin_aguas_blancas` SET `id` = 3,`nombre` = 'Pila Pública' WHERE `admin_aguas_blancas`.`id` = 3;

--
-- Volcado de datos para la tabla `admin_aguas_servidas`
--

UPDATE `admin_aguas_servidas` SET `id` = 2,`nombre` = 'Cloaca' WHERE `admin_aguas_servidas`.`id` = 2;
UPDATE `admin_aguas_servidas` SET `id` = 1,`nombre` = 'Pozo séptico' WHERE `admin_aguas_servidas`.`id` = 1;

--
-- Volcado de datos para la tabla `admin_area_trabajo_c_c`
--

UPDATE `admin_area_trabajo_c_c` SET `id` = 1,`nombre` = 'Contraloría y Seguimiento' WHERE `admin_area_trabajo_c_c`.`id` = 1;
UPDATE `admin_area_trabajo_c_c` SET `id` = 2,`nombre` = 'Relaciones Públicas y Medios' WHERE `admin_area_trabajo_c_c`.`id` = 2;
UPDATE `admin_area_trabajo_c_c` SET `id` = 3,`nombre` = 'Seguridad Ciudadana' WHERE `admin_area_trabajo_c_c`.`id` = 3;

--
-- Volcado de datos para la tabla `admin_clas_ingreso_familiar`
--

UPDATE `admin_clas_ingreso_familiar` SET `id` = 2,`nombre` = 'Diario' WHERE `admin_clas_ingreso_familiar`.`id` = 2;
UPDATE `admin_clas_ingreso_familiar` SET `id` = 1,`nombre` = 'Mensual' WHERE `admin_clas_ingreso_familiar`.`id` = 1;
UPDATE `admin_clas_ingreso_familiar` SET `id` = 6,`nombre` = 'Por trabajo realizado' WHERE `admin_clas_ingreso_familiar`.`id` = 6;
UPDATE `admin_clas_ingreso_familiar` SET `id` = 5,`nombre` = 'Quincenal' WHERE `admin_clas_ingreso_familiar`.`id` = 5;
UPDATE `admin_clas_ingreso_familiar` SET `id` = 3,`nombre` = 'Semanal' WHERE `admin_clas_ingreso_familiar`.`id` = 3;

--
-- Volcado de datos para la tabla `admin_estado_civil`
--

UPDATE `admin_estado_civil` SET `id` = 2,`nombre` = 'Casado(a)' WHERE `admin_estado_civil`.`id` = 2;
UPDATE `admin_estado_civil` SET `id` = 4,`nombre` = 'Concubino(a)' WHERE `admin_estado_civil`.`id` = 4;
UPDATE `admin_estado_civil` SET `id` = 3,`nombre` = 'Divorciado(a)' WHERE `admin_estado_civil`.`id` = 3;
UPDATE `admin_estado_civil` SET `id` = 1,`nombre` = 'Soltero(a)' WHERE `admin_estado_civil`.`id` = 1;
UPDATE `admin_estado_civil` SET `id` = 5,`nombre` = 'Viudo(a)' WHERE `admin_estado_civil`.`id` = 5;

--
-- Volcado de datos para la tabla `admin_incapacidades`
--

UPDATE `admin_incapacidades` SET `id` = 2,`incapacidad` = 'Disfunción Auditiva' WHERE `admin_incapacidades`.`id` = 2;
UPDATE `admin_incapacidades` SET `id` = 3,`incapacidad` = 'Disfunción Verbal' WHERE `admin_incapacidades`.`id` = 3;
UPDATE `admin_incapacidades` SET `id` = 1,`incapacidad` = 'Disfunción Visual' WHERE `admin_incapacidades`.`id` = 1;

--
-- Volcado de datos para la tabla `admin_mecanismo_informacion`
--

UPDATE `admin_mecanismo_informacion` SET `id` = 4,`nombre` = 'Internet' WHERE `admin_mecanismo_informacion`.`id` = 4;
UPDATE `admin_mecanismo_informacion` SET `id` = 5,`nombre` = 'Medios Alternativos Comunitarios' WHERE `admin_mecanismo_informacion`.`id` = 5;
UPDATE `admin_mecanismo_informacion` SET `id` = 3,`nombre` = 'Prensa' WHERE `admin_mecanismo_informacion`.`id` = 3;
UPDATE `admin_mecanismo_informacion` SET `id` = 2,`nombre` = 'Radio' WHERE `admin_mecanismo_informacion`.`id` = 2;
UPDATE `admin_mecanismo_informacion` SET `id` = 1,`nombre` = 'Televisión' WHERE `admin_mecanismo_informacion`.`id` = 1;

--
-- Volcado de datos para la tabla `admin_misiones_comunidad`
--

UPDATE `admin_misiones_comunidad` SET `id` = 6,`nombre` = 'Barrio Adentro' WHERE `admin_misiones_comunidad`.`id` = 6;
UPDATE `admin_misiones_comunidad` SET `id` = 7,`nombre` = 'Ezequiel Zamora' WHERE `admin_misiones_comunidad`.`id` = 7;
UPDATE `admin_misiones_comunidad` SET `id` = 5,`nombre` = 'Identidad' WHERE `admin_misiones_comunidad`.`id` = 5;
UPDATE `admin_misiones_comunidad` SET `id` = 8,`nombre` = 'Luis Pérez' WHERE `admin_misiones_comunidad`.`id` = 8;
UPDATE `admin_misiones_comunidad` SET `id` = 1,`nombre` = 'Ribas' WHERE `admin_misiones_comunidad`.`id` = 1;
UPDATE `admin_misiones_comunidad` SET `id` = 2,`nombre` = 'Sucre' WHERE `admin_misiones_comunidad`.`id` = 2;
UPDATE `admin_misiones_comunidad` SET `id` = 3,`nombre` = 'Vuelvan Caras' WHERE `admin_misiones_comunidad`.`id` = 3;

--
-- Volcado de datos para la tabla `admin_nacionalidad`
--

UPDATE `admin_nacionalidad` SET `id` = 4,`nacionalidad` = 'Extragero/a' WHERE `admin_nacionalidad`.`id` = 4;
UPDATE `admin_nacionalidad` SET `id` = 3,`nacionalidad` = 'Naturalizado' WHERE `admin_nacionalidad`.`id` = 3;
UPDATE `admin_nacionalidad` SET `id` = 1,`nacionalidad` = 'Venezolano/a' WHERE `admin_nacionalidad`.`id` = 1;

--
-- Volcado de datos para la tabla `admin_nivel_instruccion`
--

UPDATE `admin_nivel_instruccion` SET `id` = 3,`nombre` = 'Bachiller' WHERE `admin_nivel_instruccion`.`id` = 3;
UPDATE `admin_nivel_instruccion` SET `id` = 2,`nombre` = 'Básica' WHERE `admin_nivel_instruccion`.`id` = 2;
UPDATE `admin_nivel_instruccion` SET `id` = 7,`nombre` = 'Postgrado' WHERE `admin_nivel_instruccion`.`id` = 7;
UPDATE `admin_nivel_instruccion` SET `id` = 1,`nombre` = 'Sin Instrucción' WHERE `admin_nivel_instruccion`.`id` = 1;
UPDATE `admin_nivel_instruccion` SET `id` = 4,`nombre` = 'Técnico Medio' WHERE `admin_nivel_instruccion`.`id` = 4;
UPDATE `admin_nivel_instruccion` SET `id` = 5,`nombre` = 'Técnico Superior' WHERE `admin_nivel_instruccion`.`id` = 5;
UPDATE `admin_nivel_instruccion` SET `id` = 6,`nombre` = 'Universitario' WHERE `admin_nivel_instruccion`.`id` = 6;

--
-- Volcado de datos para la tabla `admin_org_comunitaria`
--

UPDATE `admin_org_comunitaria` SET `id` = 1,`nombre` = 'Organización 1' WHERE `admin_org_comunitaria`.`id` = 1;
UPDATE `admin_org_comunitaria` SET `id` = 2,`nombre` = 'Organización 2' WHERE `admin_org_comunitaria`.`id` = 2;
UPDATE `admin_org_comunitaria` SET `id` = 3,`nombre` = 'Organización 3' WHERE `admin_org_comunitaria`.`id` = 3;
UPDATE `admin_org_comunitaria` SET `id` = 4,`nombre` = 'PeTA' WHERE `admin_org_comunitaria`.`id` = 4;

--
-- Volcado de datos para la tabla `admin_pensionado_institucion`
--

UPDATE `admin_pensionado_institucion` SET `id` = 1,`nombre` = 'IVICC' WHERE `admin_pensionado_institucion`.`id` = 1;
UPDATE `admin_pensionado_institucion` SET `id` = 2,`nombre` = 'IVSS' WHERE `admin_pensionado_institucion`.`id` = 2;

--
-- Volcado de datos para la tabla `admin_preguntas`
--

UPDATE `admin_preguntas` SET `id` = 1,`pregunta` = '¿Cree usted que en la actualidad el pueblo está interviniendo en las deciciones sobre como deben gastarse los recursos de su comunidad?' WHERE `admin_preguntas`.`id` = 1;
UPDATE `admin_preguntas` SET `id` = 2,`pregunta` = '¿Cree usted que Glee es la mejor serie del mundo?' WHERE `admin_preguntas`.`id` = 2;

--
-- Volcado de datos para la tabla `admin_preguntas_participacion_comunitaria`
--

UPDATE `admin_preguntas_participacion_comunitaria` SET `id` = 4,`respCerrada` = 2,`pregunta` = 1 WHERE `admin_preguntas_participacion_comunitaria`.`id` = 4;

--
-- Volcado de datos para la tabla `admin_profesion`
--

UPDATE `admin_profesion` SET `id` = 2,`nombre` = 'Albañil' WHERE `admin_profesion`.`id` = 2;
UPDATE `admin_profesion` SET `id` = 1,`nombre` = 'Analista Programador en Sistemas' WHERE `admin_profesion`.`id` = 1;

--
-- Volcado de datos para la tabla `admin_recoleccion_basura`
--

UPDATE `admin_recoleccion_basura` SET `id` = 5,`nombre` = 'Al Aire Libre' WHERE `admin_recoleccion_basura`.`id` = 5;
UPDATE `admin_recoleccion_basura` SET `id` = 1,`nombre` = 'Aseo Urbano' WHERE `admin_recoleccion_basura`.`id` = 1;
UPDATE `admin_recoleccion_basura` SET `id` = 3,`nombre` = 'Bajante' WHERE `admin_recoleccion_basura`.`id` = 3;
UPDATE `admin_recoleccion_basura` SET `id` = 4,`nombre` = 'Camión' WHERE `admin_recoleccion_basura`.`id` = 4;
UPDATE `admin_recoleccion_basura` SET `id` = 2,`nombre` = 'Container' WHERE `admin_recoleccion_basura`.`id` = 2;
UPDATE `admin_recoleccion_basura` SET `id` = 6,`nombre` = 'Quemada' WHERE `admin_recoleccion_basura`.`id` = 6;

--
-- Volcado de datos para la tabla `admin_resp_cerrada`
--

UPDATE `admin_resp_cerrada` SET `id` = 2,`respuesta` = 'No' WHERE `admin_resp_cerrada`.`id` = 2;
UPDATE `admin_resp_cerrada` SET `id` = 1,`respuesta` = 'Si' WHERE `admin_resp_cerrada`.`id` = 1;

--
-- Volcado de datos para la tabla `admin_salubridad_vivienda`
--

UPDATE `admin_salubridad_vivienda` SET `id` = 1,`nombre` = 'Limpia' WHERE `admin_salubridad_vivienda`.`id` = 1;

--
-- Volcado de datos para la tabla `admin_servicios_comunales`
--

UPDATE `admin_servicios_comunales` SET `id` = 2,`nombre` = 'Abastos' WHERE `admin_servicios_comunales`.`id` = 2;
UPDATE `admin_servicios_comunales` SET `id` = 3,`nombre` = 'Bodega' WHERE `admin_servicios_comunales`.`id` = 3;
UPDATE `admin_servicios_comunales` SET `id` = 10,`nombre` = 'Cancha' WHERE `admin_servicios_comunales`.`id` = 10;
UPDATE `admin_servicios_comunales` SET `id` = 11,`nombre` = 'Casa Comunal' WHERE `admin_servicios_comunales`.`id` = 11;
UPDATE `admin_servicios_comunales` SET `id` = 9,`nombre` = 'Centro de Salud' WHERE `admin_servicios_comunales`.`id` = 9;
UPDATE `admin_servicios_comunales` SET `id` = 7,`nombre` = 'Escuelas' WHERE `admin_servicios_comunales`.`id` = 7;
UPDATE `admin_servicios_comunales` SET `id` = 4,`nombre` = 'Farmacias' WHERE `admin_servicios_comunales`.`id` = 4;
UPDATE `admin_servicios_comunales` SET `id` = 12,`nombre` = 'Iglesia' WHERE `admin_servicios_comunales`.`id` = 12;
UPDATE `admin_servicios_comunales` SET `id` = 8,`nombre` = 'Liceos' WHERE `admin_servicios_comunales`.`id` = 8;
UPDATE `admin_servicios_comunales` SET `id` = 1,`nombre` = 'Mercado' WHERE `admin_servicios_comunales`.`id` = 1;
UPDATE `admin_servicios_comunales` SET `id` = 5,`nombre` = 'Plazas y Parques' WHERE `admin_servicios_comunales`.`id` = 5;
UPDATE `admin_servicios_comunales` SET `id` = 6,`nombre` = 'Preescolar' WHERE `admin_servicios_comunales`.`id` = 6;

--
-- Volcado de datos para la tabla `admin_sistema_electrico`
--

UPDATE `admin_sistema_electrico` SET `id` = 1,`nombre` = 'Electrificado Público' WHERE `admin_sistema_electrico`.`id` = 1;
UPDATE `admin_sistema_electrico` SET `id` = 3,`nombre` = 'No tiene' WHERE `admin_sistema_electrico`.`id` = 3;
UPDATE `admin_sistema_electrico` SET `id` = 2,`nombre` = 'Planta Eléctrica Propia' WHERE `admin_sistema_electrico`.`id` = 2;

--
-- Volcado de datos para la tabla `admin_tipo_ayuda_especial`
--

UPDATE `admin_tipo_ayuda_especial` SET `id` = 1,`nombre` = 'Si, Recibe ayuda Especial' WHERE `admin_tipo_ayuda_especial`.`id` = 1;
UPDATE `admin_tipo_ayuda_especial` SET `id` = 2,`nombre` = 'Silla de Ruedas' WHERE `admin_tipo_ayuda_especial`.`id` = 2;
UPDATE `admin_tipo_ayuda_especial` SET `id` = 6,`nombre` = 'Shake it out' WHERE `admin_tipo_ayuda_especial`.`id` = 6;
UPDATE `admin_tipo_ayuda_especial` SET `id` = 10,`nombre` = 'Shake it out' WHERE `admin_tipo_ayuda_especial`.`id` = 10;
UPDATE `admin_tipo_ayuda_especial` SET `id` = 11,`nombre` = 'Silla de Ruedas' WHERE `admin_tipo_ayuda_especial`.`id` = 11;
UPDATE `admin_tipo_ayuda_especial` SET `id` = 12,`nombre` = 'Silla de Ruedas' WHERE `admin_tipo_ayuda_especial`.`id` = 12;

--
-- Volcado de datos para la tabla `admin_tipo_enseres`
--

UPDATE `admin_tipo_enseres` SET `id` = 1,`nombre` = 'Nevera' WHERE `admin_tipo_enseres`.`id` = 1;

--
-- Volcado de datos para la tabla `admin_tipo_gas`
--

UPDATE `admin_tipo_gas` SET `id` = 1,`nombre` = 'Bombonas' WHERE `admin_tipo_gas`.`id` = 1;
UPDATE `admin_tipo_gas` SET `id` = 3,`nombre` = 'No posee' WHERE `admin_tipo_gas`.`id` = 3;
UPDATE `admin_tipo_gas` SET `id` = 2,`nombre` = 'Tubería' WHERE `admin_tipo_gas`.`id` = 2;

--
-- Volcado de datos para la tabla `admin_tipo_habitaciones_vivienda`
--

UPDATE `admin_tipo_habitaciones_vivienda` SET `id` = 1,`nombre` = 'Sala' WHERE `admin_tipo_habitaciones_vivienda`.`id` = 1;

--
-- Volcado de datos para la tabla `admin_tipo_ingresos`
--

UPDATE `admin_tipo_ingresos` SET `id` = 5,`nombre` = '2001 o más' WHERE `admin_tipo_ingresos`.`id` = 5;
UPDATE `admin_tipo_ingresos` SET `id` = 3,`nombre` = '201 a 600' WHERE `admin_tipo_ingresos`.`id` = 3;
UPDATE `admin_tipo_ingresos` SET `id` = 4,`nombre` = '601 a 2000' WHERE `admin_tipo_ingresos`.`id` = 4;
UPDATE `admin_tipo_ingresos` SET `id` = 2,`nombre` = 'Menos de 200' WHERE `admin_tipo_ingresos`.`id` = 2;
UPDATE `admin_tipo_ingresos` SET `id` = 1,`nombre` = 'Ninguno' WHERE `admin_tipo_ingresos`.`id` = 1;

--
-- Volcado de datos para la tabla `admin_tipo_mascotas`
--

UPDATE `admin_tipo_mascotas` SET `id` = 2,`nombre` = 'Gato' WHERE `admin_tipo_mascotas`.`id` = 2;
UPDATE `admin_tipo_mascotas` SET `id` = 1,`nombre` = 'Perro' WHERE `admin_tipo_mascotas`.`id` = 1;

--
-- Volcado de datos para la tabla `admin_tipo_padecencia`
--

UPDATE `admin_tipo_padecencia` SET `id` = 2,`nombre` = 'Diabetes' WHERE `admin_tipo_padecencia`.`id` = 2;
UPDATE `admin_tipo_padecencia` SET `id` = 1,`nombre` = 'SIDA' WHERE `admin_tipo_padecencia`.`id` = 1;

--
-- Volcado de datos para la tabla `admin_tipo_paredes`
--

UPDATE `admin_tipo_paredes` SET `id` = 1,`nombre` = 'Frisadas' WHERE `admin_tipo_paredes`.`id` = 1;
UPDATE `admin_tipo_paredes` SET `id` = 2,`nombre` = 'Sin Frizar' WHERE `admin_tipo_paredes`.`id` = 2;
UPDATE `admin_tipo_paredes` SET `id` = 3,`nombre` = 'Tablas' WHERE `admin_tipo_paredes`.`id` = 3;

--
-- Volcado de datos para la tabla `admin_tipo_plagas`
--

UPDATE `admin_tipo_plagas` SET `id` = 1,`nombre` = 'Moscas' WHERE `admin_tipo_plagas`.`id` = 1;
UPDATE `admin_tipo_plagas` SET `id` = 2,`nombre` = 'Ratones' WHERE `admin_tipo_plagas`.`id` = 2;

--
-- Volcado de datos para la tabla `admin_tipo_situacion_exclusion`
--

UPDATE `admin_tipo_situacion_exclusion` SET `id` = 1,`situacion` = 'Niños en la calle',`cantidad` = 5 WHERE `admin_tipo_situacion_exclusion`.`id` = 1;
UPDATE `admin_tipo_situacion_exclusion` SET `id` = 8,`situacion` = 'Pobreza extrema',`cantidad` = 2 WHERE `admin_tipo_situacion_exclusion`.`id` = 8;
UPDATE `admin_tipo_situacion_exclusion` SET `id` = 13,`situacion` = 'Pobreza extrema',`cantidad` = 2 WHERE `admin_tipo_situacion_exclusion`.`id` = 13;
UPDATE `admin_tipo_situacion_exclusion` SET `id` = 14,`situacion` = 'Niños en la calle',`cantidad` = 250 WHERE `admin_tipo_situacion_exclusion`.`id` = 14;
UPDATE `admin_tipo_situacion_exclusion` SET `id` = 15,`situacion` = 'Niños en la calle',`cantidad` = 0 WHERE `admin_tipo_situacion_exclusion`.`id` = 15;

--
-- Volcado de datos para la tabla `admin_tipo_techo`
--

UPDATE `admin_tipo_techo` SET `id` = 1,`nombre` = 'Platabanda' WHERE `admin_tipo_techo`.`id` = 1;

--
-- Volcado de datos para la tabla `admin_tipo_telefonia`
--

UPDATE `admin_tipo_telefonia` SET `id` = 1,`nombre` = 'Celular' WHERE `admin_tipo_telefonia`.`id` = 1;
UPDATE `admin_tipo_telefonia` SET `id` = 2,`nombre` = 'Domiciliaría' WHERE `admin_tipo_telefonia`.`id` = 2;

--
-- Volcado de datos para la tabla `admin_tipo_tenencia`
--

UPDATE `admin_tipo_tenencia` SET `id` = 1,`forma` = 'Propia' WHERE `admin_tipo_tenencia`.`id` = 1;

--
-- Volcado de datos para la tabla `admin_tipo_transporte`
--

UPDATE `admin_tipo_transporte` SET `id` = 3,`nombre` = 'Bestias' WHERE `admin_tipo_transporte`.`id` = 3;
UPDATE `admin_tipo_transporte` SET `id` = 4,`nombre` = 'Privado (Taxi)' WHERE `admin_tipo_transporte`.`id` = 4;
UPDATE `admin_tipo_transporte` SET `id` = 1,`nombre` = 'Propio' WHERE `admin_tipo_transporte`.`id` = 1;
UPDATE `admin_tipo_transporte` SET `id` = 2,`nombre` = 'Público' WHERE `admin_tipo_transporte`.`id` = 2;

--
-- Volcado de datos para la tabla `admin_tipo_vivienda`
--

UPDATE `admin_tipo_vivienda` SET `id` = 1,`nombre` = 'Quinta' WHERE `admin_tipo_vivienda`.`id` = 1;

--
-- Volcado de datos para la tabla `admin_ubicacion_trabajo`
--

UPDATE `admin_ubicacion_trabajo` SET `id` = 1,`nombre` = 'Institución Pública' WHERE `admin_ubicacion_trabajo`.`id` = 1;

--
-- Volcado de datos para la tabla `admin_venta_vivienda`
--

UPDATE `admin_venta_vivienda` SET `id` = 1,`nombre` = 'Dulces' WHERE `admin_venta_vivienda`.`id` = 1;
UPDATE `admin_venta_vivienda` SET `id` = 2,`nombre` = 'Helados' WHERE `admin_venta_vivienda`.`id` = 2;

--
-- Volcado de datos para la tabla `comunidad`
--

UPDATE `comunidad` SET `id` = 2,`estado` = 'Carabobo',`municipio` = 'Valencia',`parroquia` = 'Miguel Peña',`sector` = 'Los Guayos',`comunidad` = 'Los Guayos',`direccion` = 'Los Guayos' WHERE `comunidad`.`id` = 2;

--
-- Volcado de datos para la tabla `consejo_comunal`
--

UPDATE `consejo_comunal` SET `id` = 2,`nombre` = 'Consejo Comunal de Los Guayos',`codigo` = '15926345',`rif` = '154235212',`numeroCuenta` = '12542389798797974654' WHERE `consejo_comunal`.`id` = 2;

--
-- Volcado de datos para la tabla `telefono`
--

UPDATE `telefono` SET `id` = 1,`codigo` = '0241',`numero` = '8479997' WHERE `telefono`.`id` = 1;
UPDATE `telefono` SET `id` = 2,`codigo` = '0414',`numero` = '8479997' WHERE `telefono`.`id` = 2;
UPDATE `telefono` SET `id` = 3,`codigo` = '0414',`numero` = '4415939' WHERE `telefono`.`id` = 3;
UPDATE `telefono` SET `id` = 4,`codigo` = '0414',`numero` = '8479997' WHERE `telefono`.`id` = 4;

--
-- Volcado de datos para la tabla `usuario`
--

UPDATE `usuario` SET `id` = 1,`username` = 'lapv1992',`username_canonical` = 'lapv1992',`email` = 'lapv1992@gmail.com',`email_canonical` = 'lapv1992@gmail.com',`enabled` = 1,`salt` = 'qafdg29ko7404sss44gwwgsooowsgw8',`password` = '$2y$13$qafdg29ko7404sss44gwwe62QxJarXxGwxOWv9a5MfX56934B7yXi',`last_login` = '2016-07-06 13:38:42',`locked` = 0,`expired` = 0,`expires_at` = NULL,`confirmation_token` = '7vLAhTM1SgtNRBRoB1di68SMsqVYZfwTCHS0fpmzP-o',`password_requested_at` = '2016-02-09 13:31:57',`roles` = 'a:1:{i:0;s:10:"ROLE_ADMIN";}',`credentials_expired` = 0,`credentials_expire_at` = NULL,`primerNombre` = 'Luis',`segundoNombre` = 'Alberto',`primerApellido` = 'Pérez',`segundoApellido` = 'Vera',`cedula` = '19919468',`fechaNacimiento` = '1992-03-20' WHERE `usuario`.`id` = 1;
UPDATE `usuario` SET `id` = 2,`username` = 'ajpv16',`username_canonical` = 'ajpv16',`email` = 'ajpv16@gmail.com',`email_canonical` = 'ajpv16@gmail.com',`enabled` = 0,`salt` = 'esmm1xv957kg4csg8c0ggw8088ss4kc',`password` = '$2y$13$esmm1xv957kg4csg8c0ggu4zLP/SFxYcWvcJCw990EBR8o/fznzKa',`last_login` = NULL,`locked` = 0,`expired` = 0,`expires_at` = NULL,`confirmation_token` = NULL,`password_requested_at` = NULL,`roles` = 'a:0:{}',`credentials_expired` = 0,`credentials_expire_at` = NULL,`primerNombre` = 'Anny',`segundoNombre` = 'Yordana',`primerApellido` = 'Pérez',`segundoApellido` = 'Vera',`cedula` = '24246455',`fechaNacimiento` = '1989-01-14' WHERE `usuario`.`id` = 2;

--
-- Volcado de datos para la tabla `usuario_telefonos`
--

UPDATE `usuario_telefonos` SET `usuario_id` = 1,`telefono_id` = 1 WHERE `usuario_telefonos`.`usuario_id` = 1 AND `usuario_telefonos`.`telefono_id` = 1;
UPDATE `usuario_telefonos` SET `usuario_id` = 2,`telefono_id` = 2 WHERE `usuario_telefonos`.`usuario_id` = 2 AND `usuario_telefonos`.`telefono_id` = 2;
UPDATE `usuario_telefonos` SET `usuario_id` = 1,`telefono_id` = 3 WHERE `usuario_telefonos`.`usuario_id` = 1 AND `usuario_telefonos`.`telefono_id` = 3;
SET FOREIGN_KEY_CHECKS=1;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
