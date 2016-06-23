--
-- Truncar tablas antes de insertar `admin_clas_ingreso_familiar`
--
--
-- Volcado de datos para la tabla `admin_clas_ingreso_familiar`
--

INSERT INTO `admin_clas_ingreso_familiar` (`id`, `nombre`) VALUES
(1, 'Mensual');

--
-- Truncar tablas antes de insertar `admin_estado_civil`
--
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
-- Truncar tablas antes de insertar `admin_incapacidades`
--
--
-- Volcado de datos para la tabla `admin_incapacidades`
--

INSERT INTO `admin_incapacidades` (`id`, `incapacidad`) VALUES
(2, 'Disfunción Auditiva'),
(1, 'Disfunción Visual');

--
-- Truncar tablas antes de insertar `admin_nacionalidad`
--
--
-- Volcado de datos para la tabla `admin_nacionalidad`
--

INSERT INTO `admin_nacionalidad` (`id`, `nacionalidad`) VALUES
(2, 'Extrangero/a'),
(3, 'Naturalizado/a'),
(1, 'Venezolano/a');

--
-- Truncar tablas antes de insertar `admin_nivel_instruccion`
--
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
-- Truncar tablas antes de insertar `admin_pensionado_institucion`
--
--
-- Volcado de datos para la tabla `admin_pensionado_institucion`
--

INSERT INTO `admin_pensionado_institucion` (`id`, `nombre`) VALUES
(1, 'IVICC'),
(2, 'IVSS');

--
-- Truncar tablas antes de insertar `admin_profesion`
--
--
-- Volcado de datos para la tabla `admin_profesion`
--

INSERT INTO `admin_profesion` (`id`, `nombre`) VALUES
(1, 'Analista Programador en Sistemas');

--
-- Truncar tablas antes de insertar `admin_resp_cerrada`
--
--
-- Volcado de datos para la tabla `admin_resp_cerrada`
--

INSERT INTO `admin_resp_cerrada` (`id`, `respuesta`) VALUES
(2, 'No'),
(1, 'Si');

--
-- Truncar tablas antes de insertar `usuario`
--
--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id`, `username`, `username_canonical`, `email`, `email_canonical`, `enabled`, `salt`, `password`, `last_login`, `locked`, `expired`, `expires_at`, `confirmation_token`, `password_requested_at`, `roles`, `credentials_expired`, `credentials_expire_at`, `primerNombre`, `segundoNombre`, `primerApellido`, `segundoApellido`) VALUES
(1, 'lapv1992', 'lapv1992', 'lapv1992@gmail.com', 'lapv1992@gmail.com', 1, 'qafdg29ko7404sss44gwwgsooowsgw8', '$2y$13$qafdg29ko7404sss44gwwe62QxJarXxGwxOWv9a5MfX56934B7yXi', '2016-06-22 18:28:48', 0, 0, NULL, '7vLAhTM1SgtNRBRoB1di68SMsqVYZfwTCHS0fpmzP-o', '2016-02-09 13:31:57', 'a:1:{i:0;s:10:"ROLE_ADMIN";}', 0, NULL, 'Luis', 'Alberto', 'Pérez', 'Vera'),
(2, 'ajpv16', 'ajpv16', 'ajpv16@gmail.com', 'ajpv16@gmail.com', 0, 'esmm1xv957kg4csg8c0ggw8088ss4kc', '$2y$13$esmm1xv957kg4csg8c0ggu4zLP/SFxYcWvcJCw990EBR8o/fznzKa', NULL, 0, 0, NULL, NULL, NULL, 'a:0:{}', 0, NULL, 'Anny', 'Yordana', 'Pérez', 'Vera');