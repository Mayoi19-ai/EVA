-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         10.4.14-MariaDB - mariadb.org binary distribution
-- SO del servidor:              Win64
-- HeidiSQL Versión:             11.1.0.6116
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Volcando estructura de base de datos para proyecto
CREATE DATABASE IF NOT EXISTS `proyecto` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci */;
USE `proyecto`;

-- Volcando estructura para tabla proyecto.alumno
CREATE TABLE IF NOT EXISTS `alumno` (
  `control` char(8) COLLATE utf8mb4_spanish_ci NOT NULL,
  `contrasenia` char(20) COLLATE utf8mb4_spanish_ci NOT NULL,
  PRIMARY KEY (`control`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

-- Volcando datos para la tabla proyecto.alumno: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `alumno` DISABLE KEYS */;
/*!40000 ALTER TABLE `alumno` ENABLE KEYS */;

-- Volcando estructura para tabla proyecto.asignatura
CREATE TABLE IF NOT EXISTS `asignatura` (
  `clave` char(8) COLLATE utf8mb4_spanish_ci NOT NULL,
  `nombre` varchar(250) COLLATE utf8mb4_spanish_ci NOT NULL,
  PRIMARY KEY (`clave`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

-- Volcando datos para la tabla proyecto.asignatura: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `asignatura` DISABLE KEYS */;
/*!40000 ALTER TABLE `asignatura` ENABLE KEYS */;

-- Volcando estructura para tabla proyecto.bitacora
CREATE TABLE IF NOT EXISTS `bitacora` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fecha` date NOT NULL,
  `usuario` varchar(250) COLLATE utf8mb4_spanish_ci NOT NULL,
  `actividad` varchar(250) COLLATE utf8mb4_spanish_ci NOT NULL,
  `tabla_afectada` varchar(250) COLLATE utf8mb4_spanish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

-- Volcando datos para la tabla proyecto.bitacora: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `bitacora` DISABLE KEYS */;
/*!40000 ALTER TABLE `bitacora` ENABLE KEYS */;

-- Volcando estructura para tabla proyecto.campus
CREATE TABLE IF NOT EXISTS `campus` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(250) COLLATE utf8mb4_spanish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

-- Volcando datos para la tabla proyecto.campus: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `campus` DISABLE KEYS */;
INSERT INTO `campus` (`id`, `nombre`) VALUES
	(1, 'HUATUSCO');
/*!40000 ALTER TABLE `campus` ENABLE KEYS */;

-- Volcando estructura para tabla proyecto.carrera
CREATE TABLE IF NOT EXISTS `carrera` (
  `id` int(10) unsigned NOT NULL,
  `clave` char(13) COLLATE utf8mb4_spanish_ci NOT NULL,
  `nombre` varchar(250) COLLATE utf8mb4_spanish_ci NOT NULL,
  `nombre_corto` char(5) COLLATE utf8mb4_spanish_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `clave_UNIQUE` (`clave`),
  UNIQUE KEY `nombre_corto_UNIQUE` (`nombre_corto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

-- Volcando datos para la tabla proyecto.carrera: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `carrera` DISABLE KEYS */;
/*!40000 ALTER TABLE `carrera` ENABLE KEYS */;

-- Volcando estructura para tabla proyecto.cuestionario
CREATE TABLE IF NOT EXISTS `cuestionario` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pregunta` tinytext COLLATE utf8mb4_spanish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

-- Volcando datos para la tabla proyecto.cuestionario: ~48 rows (aproximadamente)
/*!40000 ALTER TABLE `cuestionario` DISABLE KEYS */;
INSERT INTO `cuestionario` (`id`, `pregunta`) VALUES
	(1, 'Explica de manera clara los contenidos de la asignatura.'),
	(2, 'Relaciona los contenidos de la asignatura con los contenidos de otras.'),
	(3, 'Resuelve las dudas relacionadas con los contenidos de la asignatura.'),
	(4, 'Propone ejemplos o ejercicios que vinculan la asignatura con la práctica profesional.'),
	(5, 'Explica la utilidad de los contenidos teóricos y prácticos para la actividad profesional.'),
	(6, 'Cumple con los acuerdos establecidos al inicio de la asignatura.'),
	(7, 'Durante el curso establece las estrategias adecuadas necesarias para lograr el aprendizaje deseado.'),
	(8, 'El programa presentado al principio de la asignatura se cubre totalmente.'),
	(9, 'Incluye experiencias de aprendizaje en lugares diferentes al aula (talleres, laboratorios, empresas, comunidad, etc.).'),
	(10, 'Utiliza para el aprendizaje las herramientas de interacción de las tecnologías actuales de la información (correo electrónico, chats, plataformas, etc.).'),
	(11, 'Organiza actividades que me permiten ejercitar mi expresión oral y escrita.'),
	(12, 'Relaciona los contenidos de la asignatura con la industria y la sociedad a nivel local, regional, nacional e internacional.'),
	(13, 'Usa ejemplos y casos relacionados con la vida real.'),
	(14, 'Adapta las actividades para atender los diferentes estilos de aprendizaje de los estudiantes.'),
	(15, 'Promueve el autodidactismo y la investigación.'),
	(16, 'Promueve actividades participativas que me permiten colaborar con mis compañeros con una actividad positiva.'),
	(17, 'Estimula la reflexión sobre la manera en que aprendes.'),
	(18, 'Se involucra en las actividades propuestas al grupo.'),
	(19, 'Presenta y expone las clases de manera organizada y estructurada.'),
	(20, 'Utiliza diversas estrategias, métodos, medios y materiales.'),
	(21, 'Muestra compromiso y entusiasmo en sus actividades docentes.'),
	(22, 'Toma en cuenta las necesidades, intereses y expectativas del grupo.'),
	(23, 'Propicia el desarrollo de un ambiente de respeto y confianza.'),
	(24, 'Propicia la curiosidad y el deseo de aprender.'),
	(25, 'Reconoce los éxitos y logros en las actividades de aprendizaje.'),
	(26, 'Existe la impresión de que se toman represalias con algunos estudiantes.'),
	(27, 'Hace interesante la asignatura.'),
	(28, 'Identifica los conocimientos y habilidades de los estudiantes al inicio de la asignatura o de cada unidad.'),
	(29, 'Proporciona información para realizar adecuadamente las actividades de evaluación.'),
	(30, 'Toma en cuenta las actividades realizadas y los productos como evidencias para la calificación y acreditación de la asignatura.'),
	(31, 'Considera los resultados de la evaluación (asesorías, trabajos complementarios, búsqueda de información, etc.) para realizar mejoras en el aprendizaje.'),
	(32, 'Da a conocer las calificaciones en el plazo establecido.'),
	(33, 'Da oportunidad de mejorar los resultados de la evaluación del aprendizaje.'),
	(34, 'Muestra apertura para la corrección de errores de apreciación y evaluación.'),
	(35, 'Otorga calificaciones imparciales.'),
	(36, 'Desarrolla la clase en un clima de apertura y entendimiento.'),
	(37, 'Escucha y toma en cuenta las opiniones de los estudiantes.'),
	(38, 'Muestra congruencia entre lo que dice y lo que hace.'),
	(39, 'Asiste a clases regular y puntualmente.'),
	(40, 'Fomenta la importancia de contribuir a la conservación del medio ambiente.'),
	(41, 'Promueve mantener limpias y ordenadas las instalaciones.'),
	(42, 'Es accesible y está dispuesto a brindarte ayuda académica.'),
	(43, 'Emplea las tecnologías de la información y de la comunicación como un medio que facilite el aprendizaje de los estudiantes.'),
	(44, 'Promueve el uso de diversas herramientas, particularmente las digitales, para gestionar (recabar, procesar, evaluar y usar) información.'),
	(45, 'Promueve el uso seguro, legal y ético de la información digital.'),
	(46, 'En general, pienso que es un buen docente.'),
	(47, 'Estoy satisfecha o satisfecho por mi nivel de desempeño y aprendizaje logrado gracias a la labor del docente.'),
	(48, 'Yo recomendaría a este docente a otros compañeros.');
/*!40000 ALTER TABLE `cuestionario` ENABLE KEYS */;

-- Volcando estructura para tabla proyecto.curso
CREATE TABLE IF NOT EXISTS `curso` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nombre_grupo` char(4) COLLATE utf8mb4_spanish_ci NOT NULL,
  `id_periodo` int(10) unsigned NOT NULL,
  `id_carrera` int(10) unsigned NOT NULL,
  `clave_asignatura` char(8) COLLATE utf8mb4_spanish_ci NOT NULL,
  `folio_docente` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `nombre_grupo_UNIQUE` (`nombre_grupo`),
  UNIQUE KEY `id_periodo_UNIQUE` (`id_periodo`),
  UNIQUE KEY `id_carrera_UNIQUE` (`id_carrera`),
  UNIQUE KEY `clave_asignatura_UNIQUE` (`clave_asignatura`),
  UNIQUE KEY `folio_docente_UNIQUE` (`folio_docente`),
  KEY `folio_docente` (`folio_docente`) USING BTREE,
  KEY `fk_curso_materia1_idx` (`id_carrera`,`clave_asignatura`),
  KEY `fk_curso_grupo1_idx` (`nombre_grupo`,`id_periodo`,`id_carrera`),
  CONSTRAINT `FK_curso_docente` FOREIGN KEY (`folio_docente`) REFERENCES `docente` (`folio`),
  CONSTRAINT `fk_curso_grupo1` FOREIGN KEY (`nombre_grupo`, `id_periodo`, `id_carrera`) REFERENCES `grupo` (`nombre`, `id_periodo`, `id_carrera`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_curso_materia1` FOREIGN KEY (`id_carrera`, `clave_asignatura`) REFERENCES `materia` (`id_carrera`, `clave_asignatura`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

-- Volcando datos para la tabla proyecto.curso: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `curso` DISABLE KEYS */;
/*!40000 ALTER TABLE `curso` ENABLE KEYS */;

-- Volcando estructura para tabla proyecto.departamento
CREATE TABLE IF NOT EXISTS `departamento` (
  `clave` int(3) unsigned NOT NULL,
  `nombre` varchar(250) COLLATE utf8mb4_spanish_ci NOT NULL,
  PRIMARY KEY (`clave`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

-- Volcando datos para la tabla proyecto.departamento: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `departamento` DISABLE KEYS */;
/*!40000 ALTER TABLE `departamento` ENABLE KEYS */;

-- Volcando estructura para tabla proyecto.docente
CREATE TABLE IF NOT EXISTS `docente` (
  `folio` int(10) unsigned NOT NULL,
  `nombre` varchar(250) COLLATE utf8mb4_spanish_ci NOT NULL DEFAULT '',
  `clave_departamento` int(3) unsigned NOT NULL,
  PRIMARY KEY (`folio`) USING BTREE,
  KEY `FK_docente_departamento` (`clave_departamento`),
  CONSTRAINT `FK_docente_departamento` FOREIGN KEY (`clave_departamento`) REFERENCES `departamento` (`clave`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

-- Volcando datos para la tabla proyecto.docente: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `docente` DISABLE KEYS */;
/*!40000 ALTER TABLE `docente` ENABLE KEYS */;

-- Volcando estructura para tabla proyecto.evaluo
CREATE TABLE IF NOT EXISTS `evaluo` (
  `id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `fk_id_inscripcion` FOREIGN KEY (`id`) REFERENCES `inscripcion` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

-- Volcando datos para la tabla proyecto.evaluo: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `evaluo` DISABLE KEYS */;
/*!40000 ALTER TABLE `evaluo` ENABLE KEYS */;

-- Volcando estructura para tabla proyecto.grupo
CREATE TABLE IF NOT EXISTS `grupo` (
  `nombre` char(4) COLLATE utf8mb4_spanish_ci NOT NULL,
  `id_periodo` int(10) unsigned NOT NULL,
  `id_carrera` int(10) unsigned NOT NULL,
  `id_modalidad` int(10) unsigned NOT NULL,
  `id_campus` int(10) unsigned NOT NULL,
  PRIMARY KEY (`nombre`,`id_periodo`,`id_carrera`) USING BTREE,
  KEY `FK_grupo_periodo` (`id_periodo`),
  KEY `fk_grupo_carrera1_idx` (`id_carrera`),
  KEY `fk_grupo_modalidad_idx` (`id_modalidad`),
  KEY `fk_grupo_campus_idx` (`id_campus`),
  CONSTRAINT `FK_grupo_periodo` FOREIGN KEY (`id_periodo`) REFERENCES `periodo` (`id`),
  CONSTRAINT `fk_grupo_campus` FOREIGN KEY (`id_campus`) REFERENCES `campus` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_grupo_carrera1` FOREIGN KEY (`id_carrera`) REFERENCES `carrera` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_grupo_modalidad` FOREIGN KEY (`id_modalidad`) REFERENCES `modalidad` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

-- Volcando datos para la tabla proyecto.grupo: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `grupo` DISABLE KEYS */;
/*!40000 ALTER TABLE `grupo` ENABLE KEYS */;

-- Volcando estructura para tabla proyecto.inscripcion
CREATE TABLE IF NOT EXISTS `inscripcion` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_curso` int(10) unsigned NOT NULL,
  `alumno_control` char(8) COLLATE utf8mb4_spanish_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `grupo_curso_alumno_periodo` (`id_curso`,`alumno_control`),
  KEY `FK_inscripcion_curso` (`id_curso`),
  KEY `FK_inscripcion_alumno` (`alumno_control`),
  CONSTRAINT `FK_inscripcion_alumno` FOREIGN KEY (`alumno_control`) REFERENCES `alumno` (`control`),
  CONSTRAINT `FK_inscripcion_curso` FOREIGN KEY (`id_curso`) REFERENCES `curso` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

-- Volcando datos para la tabla proyecto.inscripcion: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `inscripcion` DISABLE KEYS */;
/*!40000 ALTER TABLE `inscripcion` ENABLE KEYS */;

-- Volcando estructura para tabla proyecto.materia
CREATE TABLE IF NOT EXISTS `materia` (
  `id_carrera` int(10) unsigned NOT NULL,
  `clave_asignatura` char(8) COLLATE utf8mb4_spanish_ci NOT NULL,
  PRIMARY KEY (`id_carrera`,`clave_asignatura`),
  KEY `fk_materia_carrera1_idx` (`id_carrera`),
  KEY `FK_carga_asignatura_idx` (`clave_asignatura`),
  CONSTRAINT `FK_carga_asignatura` FOREIGN KEY (`clave_asignatura`) REFERENCES `asignatura` (`clave`),
  CONSTRAINT `fk_materia_carrera1` FOREIGN KEY (`id_carrera`) REFERENCES `carrera` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

-- Volcando datos para la tabla proyecto.materia: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `materia` DISABLE KEYS */;
/*!40000 ALTER TABLE `materia` ENABLE KEYS */;

-- Volcando estructura para tabla proyecto.modalidad
CREATE TABLE IF NOT EXISTS `modalidad` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(250) COLLATE utf8mb4_spanish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

-- Volcando datos para la tabla proyecto.modalidad: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `modalidad` DISABLE KEYS */;
/*!40000 ALTER TABLE `modalidad` ENABLE KEYS */;

-- Volcando estructura para tabla proyecto.periodo
CREATE TABLE IF NOT EXISTS `periodo` (
  `id` int(10) unsigned NOT NULL,
  `nombre` varchar(250) COLLATE utf8mb4_spanish_ci NOT NULL,
  `inicia` date NOT NULL,
  `termina` date DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

-- Volcando datos para la tabla proyecto.periodo: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `periodo` DISABLE KEYS */;
/*!40000 ALTER TABLE `periodo` ENABLE KEYS */;

-- Volcando estructura para tabla proyecto.permisos
CREATE TABLE IF NOT EXISTS `permisos` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `categoria` varchar(250) COLLATE utf8mb4_spanish_ci NOT NULL,
  `nombre` varchar(250) COLLATE utf8mb4_spanish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

-- Volcando datos para la tabla proyecto.permisos: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `permisos` DISABLE KEYS */;
/*!40000 ALTER TABLE `permisos` ENABLE KEYS */;

-- Volcando estructura para tabla proyecto.respuestas_evaluacion
CREATE TABLE IF NOT EXISTS `respuestas_evaluacion` (
  `id_curso` int(10) unsigned NOT NULL,
  `respuestas` char(48) COLLATE utf8mb4_spanish_ci NOT NULL,
  KEY `FK_evalum_curso` (`id_curso`),
  CONSTRAINT `FK_evalum_curso` FOREIGN KEY (`id_curso`) REFERENCES `curso` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

-- Volcando datos para la tabla proyecto.respuestas_evaluacion: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `respuestas_evaluacion` DISABLE KEYS */;
/*!40000 ALTER TABLE `respuestas_evaluacion` ENABLE KEYS */;

-- Volcando estructura para tabla proyecto.roles
CREATE TABLE IF NOT EXISTS `roles` (
  `id` int(10) unsigned NOT NULL,
  `nombre` varchar(250) COLLATE utf8mb4_spanish_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `nombre_UNIQUE` (`nombre`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

-- Volcando datos para la tabla proyecto.roles: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;

-- Volcando estructura para tabla proyecto.roles_permisos
CREATE TABLE IF NOT EXISTS `roles_permisos` (
  `roles_id` int(10) unsigned NOT NULL,
  `permisos_id` int(10) unsigned NOT NULL,
  `activar` tinyint(3) unsigned NOT NULL,
  PRIMARY KEY (`roles_id`,`permisos_id`),
  KEY `fk_roles_permisos_permisos1_idx` (`permisos_id`),
  CONSTRAINT `fk_roles_permisos_permisos1` FOREIGN KEY (`permisos_id`) REFERENCES `permisos` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_roles_permisos_roles1` FOREIGN KEY (`roles_id`) REFERENCES `roles` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

-- Volcando datos para la tabla proyecto.roles_permisos: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `roles_permisos` DISABLE KEYS */;
/*!40000 ALTER TABLE `roles_permisos` ENABLE KEYS */;

-- Volcando estructura para tabla proyecto.roles_usuario
CREATE TABLE IF NOT EXISTS `roles_usuario` (
  `usuario_id` int(10) unsigned NOT NULL,
  `roles_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`usuario_id`,`roles_id`),
  KEY `fk_roles_usuario_roles1_idx` (`roles_id`),
  CONSTRAINT `fk_roles_usuario_roles1` FOREIGN KEY (`roles_id`) REFERENCES `roles` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_roles_usuario_usuario1` FOREIGN KEY (`usuario_id`) REFERENCES `usuario` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

-- Volcando datos para la tabla proyecto.roles_usuario: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `roles_usuario` DISABLE KEYS */;
/*!40000 ALTER TABLE `roles_usuario` ENABLE KEYS */;

-- Volcando estructura para tabla proyecto.usuario
CREATE TABLE IF NOT EXISTS `usuario` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(250) COLLATE utf8mb4_spanish_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  UNIQUE KEY `nombre_UNIQUE` (`nombre`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

-- Volcando datos para la tabla proyecto.usuario: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
