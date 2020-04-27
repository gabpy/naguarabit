-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Apr 11, 2020 at 01:28 AM
-- Server version: 5.7.26
-- PHP Version: 7.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `venebit`
--

DELIMITER $$
--
-- Procedures
--
DROP PROCEDURE IF EXISTS `repetir_usuarios2`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `repetir_usuarios2` ()  NO SQL
INSERT INTO `users` (`id`, `es_admin`, `login`, `nombre`, `email`, `telefono`, `password`, `cod_pais`, `cod_ciudad`, `url_foto`, `date_primeratransaccion`, `date_created`, `date_updated`) VALUES (NULL, '0', 'gperez2', 'GABRIEL PEREZ', '2gperez@gmail.com', '+595992860184', '0', 'VEN', 'SF', '', NULL, '2019-07-12 14:28:10', '0')$$

DROP PROCEDURE IF EXISTS `repetir_usuarios3`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `repetir_usuarios3` ()  NO SQL
INSERT INTO `users` (`id`, `es_admin`, `login`, `nombre`, `email`, `telefono`, `password`, `cod_pais`, `cod_ciudad`, `url_foto`, `date_primeratransaccion`, `date_created`, `date_updated`) VALUES (NULL, '0', 'gperez3','GABRIEL PEREZ', '3gperez@gmail.com', '+595992860184', '0', 'VEN', 'SF', '', NULL, '2019-07-12 14:28:10', '0')$$

DROP PROCEDURE IF EXISTS `repetir_usuarios4`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `repetir_usuarios4` ()  NO SQL
INSERT INTO `users` (`id`, `es_admin`, `login`, `nombre`, `email`, `telefono`, `password`, `cod_pais`, `cod_ciudad`, `url_foto`, `date_primeratransaccion`, `date_created`, `date_updated`) VALUES (NULL, '0', 'gperez4','GABRIEL PEREZ', '4gperez@gmail.com', '+595992860184', '0', 'VEN', 'SF', '', NULL, '2019-07-12 14:28:10', '0')$$

DROP PROCEDURE IF EXISTS `repetir_usuarios5`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `repetir_usuarios5` ()  NO SQL
INSERT INTO `users` (`id`, `es_admin`, `login`, `nombre`, `email`, `telefono`, `password`, `cod_pais`, `cod_ciudad`, `url_foto`, `date_primeratransaccion`, `date_created`, `date_updated`) VALUES (NULL, '0', 'gperez5', 'GABRIEL PEREZ', '5gperez@gmail.com', '+595992860184', '0', 'VEN', 'SF', '', NULL, '2019-07-12 14:28:10', '0')$$

DROP PROCEDURE IF EXISTS `repetir_usuarios6`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `repetir_usuarios6` ()  NO SQL
INSERT INTO `users` (`id`, `es_admin`, `login`, `nombre`, `email`, `telefono`, `password`, `cod_pais`, `cod_ciudad`, `url_foto`, `date_primeratransaccion`, `date_created`, `date_updated`) VALUES (NULL, '0', 'gperez6', 'GABRIEL PEREZ', '6gperez@gmail.com', '+595992860184', '0', 'VEN', 'SF', '', NULL, '2019-07-12 14:28:10', '0')$$

DROP PROCEDURE IF EXISTS `repetir_usuarios7`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `repetir_usuarios7` ()  NO SQL
INSERT INTO `users` (`id`, `es_admin`, `login`, `nombre`, `email`, `telefono`, `password`, `cod_pais`, `cod_ciudad`, `url_foto`, `date_primeratransaccion`, `date_created`, `date_updated`) VALUES (NULL, '0', 'gperez7', 'GABRIEL PEREZ', '7gperez@gmail.com', '+595992860184', '0', 'VEN', 'SF', '', NULL, '2019-07-12 14:28:10', '0')$$

DROP PROCEDURE IF EXISTS `repetir_usuarios8`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `repetir_usuarios8` ()  NO SQL
INSERT INTO `users` (`id`, `es_admin`, `login`, `nombre`, `email`, `telefono`, `password`, `cod_pais`, `cod_ciudad`, `url_foto`, `date_primeratransaccion`, `date_created`, `date_updated`) VALUES (NULL, '0', 'gperez8', 'GABRIEL PEREZ', '8gperez@gmail.com', '+595992860184', '0', 'VEN', 'SF', '', NULL, '2019-07-12 14:28:10', '0')$$

DROP PROCEDURE IF EXISTS `repetir_usuarios9`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `repetir_usuarios9` ()  NO SQL
INSERT INTO `users` (`id`, `es_admin`, `login`, `nombre`, `email`, `telefono`, `password`, `cod_pais`, `cod_ciudad`, `url_foto`, `date_primeratransaccion`, `date_created`, `date_updated`) VALUES (NULL, '0', 'gperez9', 'GABRIEL PEREZ', '9gperez@gmail.com', '+595992860184', '0', 'VEN', 'SF', '', NULL, '2019-07-12 14:28:10', '0')$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `banks_vzla`
--

DROP TABLE IF EXISTS `banks_vzla`;
CREATE TABLE IF NOT EXISTS `banks_vzla` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `codigo` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `nombre` text COLLATE utf8_unicode_ci NOT NULL,
  `nombre_largo` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `banks_vzla`
--

INSERT INTO `banks_vzla` (`id`, `codigo`, `nombre`, `nombre_largo`) VALUES
(1, 'BDV', 'Banco de Venezuela', NULL),
(2, 'PROV', 'Banco Provincial', NULL),
(3, 'BANSC', 'Banesco', NULL),
(4, 'MERC', 'Banco Mercantil', NULL),
(5, 'CARIB', 'Bancaribe', NULL),
(6, 'TES', 'Banco del Tesoro', NULL),
(7, 'BICNT', 'Banco Bicentenario', NULL),
(8, 'CAR', 'Banco Caroní', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `bitacora_login`
--

DROP TABLE IF EXISTS `bitacora_login`;
CREATE TABLE IF NOT EXISTS `bitacora_login` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_user` int(11) NOT NULL,
  `login` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `fechahora` timestamp NOT NULL,
  `ip` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `cliente_software` text COLLATE utf8_unicode_ci NOT NULL COMMENT 'descripcion de cliente software usado, sistema operativo, navegador, etc.',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bitacora_tablas`
--

DROP TABLE IF EXISTS `bitacora_tablas`;
CREATE TABLE IF NOT EXISTS `bitacora_tablas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_tabla` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `id_ref` int(11) NOT NULL,
  `tipo_mov` char(1) COLLATE utf8_unicode_ci NOT NULL COMMENT 'A:actualizar, I:insertar, E:eliminar',
  `fechahora` timestamp NOT NULL,
  `descripcion` text COLLATE utf8_unicode_ci NOT NULL,
  `valor_actual` int(11) NOT NULL COMMENT 'valores actuales del registro, aplica para Actualizacion y Eliminacion',
  `valor_nuevo` int(11) NOT NULL COMMENT 'valores nuevo del registro, aplica para Insercion y Actualizacion',
  `id_user` int(11) NOT NULL,
  `login` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='campos para rastrear movimiento CRUD de todas las tablas';

-- --------------------------------------------------------

--
-- Table structure for table `btc_paridad`
--

DROP TABLE IF EXISTS `btc_paridad`;
CREATE TABLE IF NOT EXISTS `btc_paridad` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cod_moneda` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'codigo de moneda',
  `nombre_par` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'descripcion de moneda',
  `valor_paridad` double DEFAULT NULL COMMENT 'valor del BTC contra la moneda',
  `valor_compra` double DEFAULT '0' COMMENT 'Valor del BTC frente a la moneda, para comprar',
  `valor_venta` double DEFAULT NULL COMMENT 'valor para cambiar btc a esta moneda',
  `fecha` date DEFAULT NULL,
  `fechahora` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'este campo se actualiza cuando se inserta o actualiza',
  `date_updated` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'fecha ultima actualizacion',
  PRIMARY KEY (`id`),
  UNIQUE KEY `cod` (`cod_moneda`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Valores del BTC contra cada moneda';

--
-- Dumping data for table `btc_paridad`
--

INSERT INTO `btc_paridad` (`id`, `cod_moneda`, `nombre_par`, `valor_paridad`, `valor_compra`, `valor_venta`, `fecha`, `fechahora`, `date_updated`) VALUES
(1, 'VES', 'BTC/VES', 155863448, 0, NULL, NULL, '2019-07-22 20:49:48', '2019-08-12 17:55:11'),
(2, 'USD', 'BTC/USD', 11419, 0, NULL, NULL, '2019-07-22 20:49:48', '2019-08-12 17:56:15'),
(3, 'USD-VES', 'USD/VES', 13622, 0, NULL, NULL, '2019-07-22 20:49:48', '2019-08-12 17:56:56'),
(6, 'GS', 'Guaraní', NULL, 0, NULL, NULL, '2019-07-22 20:49:48', '2019-08-12 17:55:11'),
(5, 'PCHI', 'PESO CHILENO', NULL, 0, NULL, NULL, '2019-07-22 20:49:48', '2019-08-12 17:55:11'),
(7, 'SOL', 'SOL PERUANO', NULL, 0, NULL, NULL, '2019-07-22 20:49:48', '2019-08-12 17:55:11'),
(8, 'ARS', 'PESO ARGENTINO', NULL, 0, NULL, NULL, '2019-07-22 20:49:48', '2019-08-12 17:55:11');

-- --------------------------------------------------------

--
-- Table structure for table `casos_atenciones`
--

DROP TABLE IF EXISTS `casos_atenciones`;
CREATE TABLE IF NOT EXISTS `casos_atenciones` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_reclamo` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `login` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `fecha` timestamp NOT NULL,
  `respuesta` text COLLATE utf8_unicode_ci NOT NULL,
  `id_user_admin` int(11) NOT NULL,
  `nombre_user_admin` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'nombre del usuario admin que realizó esta atención',
  `id_transaccion` int(11) DEFAULT NULL COMMENT 'relacion con tabla transaccion, en caso que aplique',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='atencion a los reclamos de usuarios';

-- --------------------------------------------------------

--
-- Table structure for table `casos_reclamos`
--

DROP TABLE IF EXISTS `casos_reclamos`;
CREATE TABLE IF NOT EXISTS `casos_reclamos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_user` int(11) NOT NULL,
  `login` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `fecha` date NOT NULL,
  `descripcion` text COLLATE utf8_unicode_ci NOT NULL,
  `check_respondido` tinyint(1) DEFAULT NULL,
  `check_resuelto` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='reclamos de usuarios';

-- --------------------------------------------------------

--
-- Table structure for table `ciudad`
--

DROP TABLE IF EXISTS `ciudad`;
CREATE TABLE IF NOT EXISTS `ciudad` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `codigo` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `nombre` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `cod_pais` varchar(5) COLLATE utf8_unicode_ci NOT NULL COMMENT 'codigo del pais al que pertenece la ciudad',
  `observ` text COLLATE utf8_unicode_ci NOT NULL COMMENT 'Observaciones, notas',
  `activo` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1:activo, 0:inactivo',
  PRIMARY KEY (`id`),
  UNIQUE KEY `codigo` (`codigo`),
  UNIQUE KEY `unicopar_ciudad_y_pais` (`nombre`,`cod_pais`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `ciudad`
--

INSERT INTO `ciudad` (`id`, `codigo`, `nombre`, `cod_pais`, `observ`, `activo`) VALUES
(1, 'CUC', 'Cúcuta', 'COL', '', 1),
(2, 'CCS', 'Caracas', 'VEN', '', 1),
(3, 'BQTO', 'Barquisimeto', 'VEN', 'Larenses', 1),
(4, 'SF', 'San Felipe', 'VEN', '', 1),
(5, 'LMB', 'Lambaré', 'PAR', '', 1),
(6, 'SLRNZ', 'San Lorenzo', 'PAR', '', 1),
(7, 'SANT', 'Santiago', 'CHI', '', 1),
(8, 'VAL', 'Valencia', 'VEN', '', 1),
(9, 'BOG', 'Bogotá', 'COL', '', 1),
(10, 'CAL', 'Cali', 'COL', '', 1),
(11, 'LIM', 'Lima', 'PER', '', 1),
(12, 'BA', 'Buenos Aires', 'ARG', '', 1),
(13, 'FM', 'Fernando de la Mora', 'PAR', '', 1),
(16, 'MARCB', 'Maracaibo', 'VEN', '', 1),
(17, 'CAB', 'Cabudare', 'VEN', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `huso_horario`
--

DROP TABLE IF EXISTS `huso_horario`;
CREATE TABLE IF NOT EXISTS `huso_horario` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cod_pais` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `huso_horario` int(11) NOT NULL COMMENT 'nro que indica el huso horario. ej: PAR: +3, VEN: +3',
  `fecha_actual` date DEFAULT NULL,
  `hora_actual` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cod_ciudad` varchar(5) COLLATE utf8_unicode_ci NOT NULL COMMENT 'cod de ciudad, para paises con varios husos horarios. ej: brazil',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='almacena datos de husos horario actual de cada pais';

--
-- Dumping data for table `huso_horario`
--

INSERT INTO `huso_horario` (`id`, `cod_pais`, `huso_horario`, `fecha_actual`, `hora_actual`, `cod_ciudad`) VALUES
(1, 'VEN', -4, NULL, NULL, ''),
(2, 'PAR', -4, NULL, NULL, ''),
(3, 'COL', -5, NULL, NULL, ''),
(4, 'ARG', -3, NULL, NULL, ''),
(5, 'BOL', -4, NULL, NULL, ''),
(6, 'CHI', -4, NULL, NULL, ''),
(7, 'ECU', -5, NULL, NULL, ''),
(8, 'PER', -5, NULL, NULL, ''),
(9, 'URU', -3, NULL, NULL, '');

-- --------------------------------------------------------

--
-- Table structure for table `moneda`
--

DROP TABLE IF EXISTS `moneda`;
CREATE TABLE IF NOT EXISTS `moneda` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `codigo` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'codigo de moneda',
  `nombre` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'descripcion de moneda',
  `nombre_plural` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `simbolo` varchar(5) COLLATE utf8_unicode_ci NOT NULL COMMENT 'simbolo internacional usado',
  `activo` int(11) NOT NULL DEFAULT '1' COMMENT ' 0 es desactivado. 1 es activado ',
  PRIMARY KEY (`id`),
  UNIQUE KEY `cod` (`codigo`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `moneda`
--

INSERT INTO `moneda` (`id`, `codigo`, `nombre`, `nombre_plural`, `simbolo`, `activo`) VALUES
(1, 'BS', 'Bolívar', 'Bolívares', 'VES', 1),
(2, 'USD', 'Dólar EEUU', 'Dólares', '$USD', 1),
(3, '$COL', 'Peso colombiano', 'Pesos colombianos', '$', 1),
(6, 'GS', 'Guaraní', 'Guaraníes', '₲', 1),
(5, '$CHI', 'Peso Chileno', 'Pesos Chilenos', '$', 1),
(7, 'SOL', 'Sol', 'Soles', 'S/', 1),
(8, '$ARS', 'Peso Argentino', 'Pesos Argentinos', '$', 1),
(9, '$BOL', 'Peso Boliviano', 'Pesos Bolivianos', 'b$.', 1),
(10, 'BAL', 'Balboa', 'Balboas', 'BAL', 0);

-- --------------------------------------------------------

--
-- Table structure for table `monedas_pares`
--

DROP TABLE IF EXISTS `monedas_pares`;
CREATE TABLE IF NOT EXISTS `monedas_pares` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cod_moneda` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'codigo de moneda',
  `cod_moneda_contra` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `nombre_par` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'descripcion de moneda',
  `valor_par` double DEFAULT '0' COMMENT 'Valor de una moneda respecto a otra. Cuantas unidades se necesitan de una cantidad para comprar 1 unidad de la otra',
  PRIMARY KEY (`id`),
  UNIQUE KEY `cod` (`cod_moneda`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `monedas_pares`
--

INSERT INTO `monedas_pares` (`id`, `cod_moneda`, `cod_moneda_contra`, `nombre_par`, `valor_par`) VALUES
(1, 'BS', '', 'Bolívar', 0),
(2, 'USD', '', 'Dolar Americano', 0),
(3, 'PCOL', '', 'Peso colombiano', 0),
(6, 'GS', '', 'Guaraní', 0),
(5, 'PCHI', '', 'PESO CHILENO', 0),
(7, 'SOL', '', 'SOL PERUANO', 0),
(8, 'ARS', '', 'PESO ARGENTINO', 0),
(9, 'VES', 'USD', 'Bolivar contra dolar', 11000);

-- --------------------------------------------------------

--
-- Table structure for table `monedas_paridad_tentativo`
--

DROP TABLE IF EXISTS `monedas_paridad_tentativo`;
CREATE TABLE IF NOT EXISTS `monedas_paridad_tentativo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cod_moneda` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT 'codigo de moneda',
  `cod_moneda_contra` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `nombre_par` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'descripcion de moneda',
  `valor_compra` double DEFAULT '0' COMMENT 'Valor del BTC frente a la moneda, para comprar',
  `valor_venta` double DEFAULT NULL COMMENT 'valor para cambiar btc a esta moneda',
  `fecha` date DEFAULT NULL,
  `fechahora` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'este campo se actualiza cuando se inserta o actualiza',
  `valor_paridad` double DEFAULT NULL COMMENT 'valor parida de una moneda contra, sin importar si es compra o venta',
  PRIMARY KEY (`id`),
  UNIQUE KEY `cod` (`cod_moneda`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Valores del BTC contra cada moneda';

--
-- Dumping data for table `monedas_paridad_tentativo`
--

INSERT INTO `monedas_paridad_tentativo` (`id`, `cod_moneda`, `cod_moneda_contra`, `nombre_par`, `valor_compra`, `valor_venta`, `fecha`, `fechahora`, `valor_paridad`) VALUES
(1, 'BS', '', 'Bolívar', 0, NULL, NULL, '2019-07-22 20:49:48', NULL),
(2, 'USD', '', 'Dolar Americano', 0, NULL, NULL, '2019-07-22 20:49:48', NULL),
(3, 'PCOL', '', 'Peso colombiano', 0, NULL, NULL, '2019-07-22 20:49:48', NULL),
(6, 'GS', '', 'Guaraní', 0, NULL, NULL, '2019-07-22 20:49:48', NULL),
(5, 'PCHI', '', 'PESO CHILENO', 0, NULL, NULL, '2019-07-22 20:49:48', NULL),
(7, 'SOL', '', 'SOL PERUANO', 0, NULL, NULL, '2019-07-22 20:49:48', NULL),
(8, 'ARS', '', 'PESO ARGENTINO', 0, NULL, NULL, '2019-07-22 20:49:48', NULL),
(9, 'VES', 'USD', 'Bolivar contra dolar', 11000, NULL, NULL, '2019-07-22 20:49:48', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `notificacion`
--

DROP TABLE IF EXISTS `notificacion`;
CREATE TABLE IF NOT EXISTS `notificacion` (
  `id` int(11) NOT NULL COMMENT 'id de la notificacion',
  `cod_tipo` varchar(5) COLLATE utf8_unicode_ci NOT NULL COMMENT 'definir cuando se programen las notificaciones',
  `fechahora` timestamp NOT NULL,
  `login_user` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT 'login de usuario que recibe la notificacion',
  `descripcion` text COLLATE utf8_unicode_ci NOT NULL COMMENT 'texto de la notificacion',
  `user_checked` tinyint(1) DEFAULT NULL COMMENT 'indica que el usuario ya vio la notificacion'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='notificaciones del sistema a usuarios';

-- --------------------------------------------------------

--
-- Table structure for table `notificacion_respuesta`
--

DROP TABLE IF EXISTS `notificacion_respuesta`;
CREATE TABLE IF NOT EXISTS `notificacion_respuesta` (
  `id` int(11) NOT NULL,
  `id_notificacion` int(11) NOT NULL,
  `respuesta_user` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='respuesta de usuarios a notificaciones';

-- --------------------------------------------------------

--
-- Table structure for table `notificacion_tipo`
--

DROP TABLE IF EXISTS `notificacion_tipo`;
CREATE TABLE IF NOT EXISTS `notificacion_tipo` (
  `id` int(11) NOT NULL,
  `codigo` int(11) NOT NULL COMMENT 'codigo de tipo',
  `descripcion` int(11) NOT NULL COMMENT 'descripcion tipo de notificacion',
  `observaciones` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='tipos de notificaciones a usuarios';

-- --------------------------------------------------------

--
-- Table structure for table `pago_destino`
--

DROP TABLE IF EXISTS `pago_destino`;
CREATE TABLE IF NOT EXISTS `pago_destino` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_transaccion` int(11) NOT NULL COMMENT 'relacion con tabla transaccion',
  `login_user` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cod_pais` varchar(5) COLLATE utf8_unicode_ci NOT NULL COMMENT 'cod pais destino',
  `monto` double NOT NULL COMMENT 'monto total que se debe pagar en el destino',
  `cod_banco` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `nroctabank` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'nro de cuenta bancaria',
  `check_realizado` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'indica si el pago/transferencia ya fue realizado',
  `login_user_pagador` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'login de user que hizo la transferencia',
  `img_comprob` int(11) DEFAULT NULL COMMENT 'url de imagen que comprueba la transaccion, bien sea foto o imagen escaneada',
  `fechahora_comprobante` timestamp NULL DEFAULT NULL COMMENT 'fecha/hora de comprobante de pag',
  `fecha_oper` date DEFAULT NULL,
  `hora_oper` time DEFAULT NULL,
  `observ` text COLLATE utf8_unicode_ci COMMENT 'observaciones registrador por usuario que hace la transferencia',
  `date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'fecha y hora de registro, segun hora del servidor',
  `check_admin` int(11) DEFAULT NULL COMMENT 'verificacion por parte de un usuario admin',
  `login_user_admin` int(11) DEFAULT NULL COMMENT 'login del usuario admin que hizo la verificacion',
  `fechahora_check` timestamp NULL DEFAULT NULL COMMENT 'fecha y hora de verificacion por parte de un user admin',
  `observ_user_check` text COLLATE utf8_unicode_ci COMMENT 'observaciones registrador por usuario que hace el chequeo de la transferencia',
  `check_user_cliente` tinyint(1) DEFAULT NULL COMMENT 'check por parte del cliente que el pago llego al destino especificado',
  UNIQUE KEY `id` (`id`),
  KEY `id_transaccion` (`id_transaccion`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='pagos realizados a cuenta de usuarios';

--
-- Dumping data for table `pago_destino`
--

INSERT INTO `pago_destino` (`id`, `id_transaccion`, `login_user`, `cod_pais`, `monto`, `cod_banco`, `nroctabank`, `check_realizado`, `login_user_pagador`, `img_comprob`, `fechahora_comprobante`, `fecha_oper`, `hora_oper`, `observ`, `date_created`, `check_admin`, `login_user_admin`, `fechahora_check`, `observ_user_check`, `check_user_cliente`) VALUES
(1, 3, 'ja.aguilar', 'VEN', 26000, 'PROV', '01081212112121212120', 0, '', NULL, NULL, NULL, NULL, NULL, '2019-09-01 15:46:09', NULL, NULL, NULL, NULL, NULL),
(2, 3, 'ja.aguilar', 'VEN', 16000, 'MERC', '01050000000000000000', 1, 'ccolmenarez', NULL, NULL, NULL, NULL, NULL, '2019-09-01 15:46:09', NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `pago_origen`
--

DROP TABLE IF EXISTS `pago_origen`;
CREATE TABLE IF NOT EXISTS `pago_origen` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_transaccion` int(11) NOT NULL COMMENT 'relacion: id de tabla transaccion',
  `nro_ref_transferencia` int(11) NOT NULL COMMENT 'nro referencia de transferencia',
  `login_user` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cod_pais` varchar(5) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'PAR' COMMENT 'codigo pais origen',
  `monto` double NOT NULL COMMENT 'monto del pago',
  `formapago` varchar(5) COLLATE utf8_unicode_ci NOT NULL COMMENT 'forma de pago en origen. DEP: deposito bancario. GIRO: giro de alguna billetera )tigo, personal, claro, westerm)	',
  `img_comprob` int(11) NOT NULL COMMENT 'url de imagen que comprueba la transaccion, bien sea foto o imagen escaneada',
  `fecha_oper` date DEFAULT NULL COMMENT 'fecha operacion indicada por el usuario',
  `hora_oper` time DEFAULT NULL COMMENT 'hota operacion registrada por usuario',
  `observ` text COLLATE utf8_unicode_ci,
  `detalles` text COLLATE utf8_unicode_ci NOT NULL,
  `check_admin` tinyint(1) DEFAULT NULL COMMENT 'verificacion por parte de un usuario admin',
  `user_admin` int(11) DEFAULT NULL COMMENT 'login del usuario admin que hizo la verificacion',
  `fechahora_check` timestamp NOT NULL COMMENT 'fecha y hora de verificacion por parte de un user admin',
  `date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'fechay hora de registro/actualizacion',
  `check_realizado` tinyint(1) DEFAULT NULL COMMENT 'indica si el pago/transferencia ya fue realizao, es marcado por un user admin',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='pagos en moneda local, realizados por usuarios a cuentas del sitio';

-- --------------------------------------------------------

--
-- Table structure for table `pais`
--

DROP TABLE IF EXISTS `pais`;
CREATE TABLE IF NOT EXISTS `pais` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `codigo` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `nombre` varchar(20) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `cod_moneda` varchar(6) COLLATE utf8_unicode_ci NOT NULL COMMENT 'moneda oficial del pais',
  `observ` text COLLATE utf8_unicode_ci COMMENT 'Observaciones',
  `activo` tinyint(1) DEFAULT '1' COMMENT '0 es desactivado. 1 es activado',
  `url_img_bandera` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `codigo` (`codigo`),
  UNIQUE KEY `nombre` (`nombre`)
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `pais`
--

INSERT INTO `pais` (`id`, `codigo`, `nombre`, `cod_moneda`, `observ`, `activo`, `url_img_bandera`) VALUES
(27, 'VEN', 'Venezuela', 'BS', '', 1, NULL),
(2, 'PAR', 'Paraguay', 'GS', '', 1, NULL),
(3, 'COL', 'Colombia', '$COL', NULL, 1, NULL),
(4, 'PER', 'Peru', 'SOL', '', 1, NULL),
(5, 'CHI', 'Chile', 'SOL', '', 1, NULL),
(6, 'ECU', 'Ecuador', '$ARS', '', 1, NULL),
(13, 'BOL', 'Bolivia', '$BOL', '', 1, NULL),
(12, 'ARG', 'Argentina', '$ARS', 'Son boludos', 1, NULL),
(25, 'PR', 'Puerto Rico', '', 'Agregar moneda', 0, NULL),
(15, 'URU', 'Uruguay', '', '', 1, NULL),
(18, 'BRA', 'Brasil', '', '', 1, NULL),
(19, 'PAN', 'Panama', 'BAL', 'Agregar moneda', 0, NULL),
(23, 'CR', 'Costa Rica', '', 'Agregar moneda.\r\nCentroAmerica', 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `transacciones`
--

DROP TABLE IF EXISTS `transacciones`;
CREATE TABLE IF NOT EXISTS `transacciones` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status` varchar(5) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'New' COMMENT 'indica en que fase esta la transaccion. NEW:nueva, PO:pago origen, PD:pago en destino, CANC:cancelada por cliente. CANC_OPER:abortada por operador, CANC_ADMIN: abortada por administrador, FIN: completada',
  `status_PO` varchar(5) COLLATE utf8_unicode_ci NOT NULL COMMENT 'status de pago en origen. A:agregado por cliente. OK: verificado por operador',
  `status_PD` varchar(5) COLLATE utf8_unicode_ci NOT NULL COMMENT 'status de pago en destino: A: por cliente. OK: verificado por operador',
  `login` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `user_observ` text COLLATE utf8_unicode_ci,
  `origen_codpais` varchar(5) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'PAR' COMMENT 'codigo pais origen',
  `destino_codpais` varchar(5) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'VEN' COMMENT 'codigo pais destino',
  `origen_monto` double NOT NULL,
  `destino_monto` double NOT NULL,
  `monto_dolares` double DEFAULT NULL COMMENT 'monto origen en dolares, segun calculadora',
  `tasa_dolar_origen` double NOT NULL COMMENT 'tasa dolar respecto a moneda origen, al momento de realizar el calculo',
  `tasa_dolar_destino` double DEFAULT NULL COMMENT 'tasa dolar respecto a moneda destino, , al momento de realizar el calculo',
  `destino_observ` tinytext COLLATE utf8_unicode_ci COMMENT 'observaciones sobre el pago destino, escrito por el usuario',
  `observ_admin` text COLLATE utf8_unicode_ci COMMENT 'observaciones escritas por un usuario administrador',
  `fechahora_origen` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'fecha y hora en que se hizo el registro en el sistema, segun huso horario de pais origen',
  `fechahora_destino` timestamp NULL DEFAULT NULL COMMENT 'fecha/hora de registro, segun huso horario de pais destino',
  `check_admin` int(11) DEFAULT NULL COMMENT 'verificacion por parte de un usuario admin. verifica que los datos, montos, tasas, etc, registrados son correctos. Y que se puede proceder a realizar la operacion',
  `user_admin` int(20) DEFAULT NULL COMMENT 'login del usuario admin que hizo la verificacion',
  `fechahora_check` timestamp NULL DEFAULT NULL COMMENT 'fecha y hora de verificacion por parte de un user admin segun el servidor',
  `date_created` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'fecha y hora en que se hizo el registro en el sistema, segun hora del servidor',
  `date_updated` timestamp NULL DEFAULT NULL COMMENT 'ultima fecha en que se actualizo el registro',
  `activo` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1: activo, 0: inactiva. indica si la transaccion esta activa o no',
  `tasa` int(11) NOT NULL,
  `tas` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='transacciones, implica calculo de pago en origen. pago en destino. comisiones';

--
-- Dumping data for table `transacciones`
--

INSERT INTO `transacciones` (`id`, `status`, `status_PO`, `status_PD`, `login`, `user_observ`, `origen_codpais`, `destino_codpais`, `origen_monto`, `destino_monto`, `monto_dolares`, `tasa_dolar_origen`, `tasa_dolar_destino`, `destino_observ`, `observ_admin`, `fechahora_origen`, `fechahora_destino`, `check_admin`, `user_admin`, `fechahora_check`, `date_created`, `date_updated`, `activo`, `tasa`, `tas`) VALUES
(1, 'New', '', '', 'jmercado', 'Prueba insert', 'PAR', 'VEN', 6000, 13000, 1, 0, 13000, NULL, NULL, '2019-08-05 21:04:40', NULL, NULL, NULL, NULL, '2019-08-05 12:04:40', NULL, 1, 0, 0),
(2, 'PO', 'A', '', 'gperez', 'Prueba insert', 'PAR', 'COL', 12000, 26000, 2, 0, 13000, NULL, '', '2019-08-05 19:57:40', NULL, NULL, NULL, NULL, '2019-08-05 20:31:29', '2019-09-04 04:00:00', 1, 0, 0),
(3, 'PO', 'OK', '', 'ja.aguilar', 'Prueba insert', 'PAR', 'PER', 12000, 26000, 2, 0, 13000, NULL, NULL, '2019-08-05 21:04:06', NULL, NULL, NULL, NULL, '2019-08-05 21:04:06', NULL, 1, 0, 0),
(4, 'PD', 'OK', 'A', 'ccolmenarez', 'Prueba insert', 'PAR', 'CHI', 6000, 13000, 1, 0, 13000, NULL, NULL, '2019-08-05 21:50:42', NULL, NULL, NULL, NULL, '2019-08-05 21:50:42', NULL, 1, 0, 0),
(5, 'PD', 'OK', 'A', 'alvaleromendoza', 'Prueba insert', 'PAR', 'ARG', 6000, 13000, 1, 0, 13000, NULL, NULL, '2019-08-05 21:52:21', NULL, NULL, NULL, NULL, '2019-08-05 21:52:21', NULL, 1, 0, 0),
(6, 'FIN', 'OK', 'OK', 'dosma', NULL, 'PAR', 'VEN', 18000, 38983.17, 3, 0, 13009.55, NULL, NULL, '2019-08-12 14:17:08', '2019-08-12 14:17:08', NULL, NULL, NULL, '2019-08-06 14:17:08', NULL, 1, 0, 0),
(13, 'CC', 'A', '', 'jdanielperez', NULL, 'PAR', 'VEN', 18000, 38983.17, 3, 0, 13009.55, NULL, NULL, '2019-08-06 15:07:37', '2019-08-06 15:07:37', NULL, NULL, NULL, '2019-08-07 15:07:37', NULL, 1, 0, 0),
(15, 'CO', 'OK', '', 'romand', NULL, 'PAR', 'VEN', 18150, 39308.03, 3, 0, 13009.55, NULL, NULL, '2019-08-14 16:57:28', '2019-08-14 16:57:28', NULL, NULL, NULL, '2019-08-14 16:57:28', NULL, 1, 0, 0),
(16, 'PO', 'A', '', 'jdanielperez', NULL, 'PAR', 'VEN', 18150, 39308.03, 3, 0, 13009.55, NULL, NULL, '2019-08-14 16:57:28', '2019-08-14 16:57:28', NULL, NULL, NULL, '2019-08-14 16:57:28', NULL, 1, 0, 0),
(17, 'PD', 'OK', '', 'dosma', NULL, 'PAR', 'VEN', 18150, 39308.03, 3, 0, 13009.55, NULL, NULL, '2019-08-14 16:57:28', '2019-08-14 16:57:28', NULL, NULL, NULL, '2019-08-14 16:57:28', NULL, 1, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `transacciones_btc`
--

DROP TABLE IF EXISTS `transacciones_btc`;
CREATE TABLE IF NOT EXISTS `transacciones_btc` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_transaccion` int(11) NOT NULL COMMENT 'relacion: id de tabla transaccion',
  `tasa_btc_origen` double NOT NULL COMMENT 'tasa del btc respecto a moneda origen, usada realmente para comprar',
  `tasa_btc_destino` double NOT NULL COMMENT 'tasa del btc respecto a moneda destino, usada realmente para vender',
  `origen_codpais` varchar(5) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'PAR' COMMENT 'codigo pais origen',
  `destino_codpais` varchar(5) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'VEN' COMMENT 'codigo pais destino',
  `origen_monto` double NOT NULL COMMENT 'monto en moneda origen',
  `destino_monto` double NOT NULL COMMENT 'monto en moneda destino',
  `btc_monto_buy` double DEFAULT '0' COMMENT 'monto de btc comprado, equivalente al monto en moneda origen',
  `btc_monto_sell` double DEFAULT '0' COMMENT 'monto de btc vendido, equivalente al monto en moneda destino',
  `btc_dif` double DEFAULT '0' COMMENT 'diferencia entre btc compra y venta.si es positivo fue ganancia, si es negativo seria perdida',
  `monto_destino_dolares` double DEFAULT NULL COMMENT 'monto destino en dolares',
  `monto_origen_dolares` double DEFAULT NULL COMMENT 'monto origen en dolares',
  `dif_dolar` double DEFAULT NULL COMMENT 'monto diferencia en dolares. indica la ganancia por compra/venta',
  `fechahora_buy` timestamp NULL DEFAULT NULL COMMENT 'fecha y hora de compra de btc, segun servidor',
  `fechahora_sell` double DEFAULT NULL COMMENT 'fecha y hora de venta de btc, segun servidor',
  `tasa_dolar_origen` double DEFAULT NULL COMMENT 'tasa dolar respecto a moneda origen, usando el btc, al momento de la compra de btc',
  `tasa_dolar_destino` double DEFAULT NULL COMMENT 'tasa dolar respecto a moneda destino, , al momento de realizar la venta de btc',
  `observ_buy` tinytext COLLATE utf8_unicode_ci COMMENT 'observaciones sobre compra de btc',
  `observ_venta` tinytext COLLATE utf8_unicode_ci COMMENT 'observaciones sobre venta de btc',
  `check_admin` int(11) DEFAULT NULL COMMENT 'verificacion por parte de un usuario admin. verifica que los datos, montos, tasas, etc, registrados son correctos. Y que se puede proceder a realizar la operacion',
  `user_admin` int(20) DEFAULT NULL COMMENT 'login del usuario admin que hizo la verificacion',
  `date_created` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'fecha y hora en que se hizo el registro en el sistema, segun hora del servidor',
  `date_updated` timestamp NULL DEFAULT NULL COMMENT 'ultima fecha en que se actualizo el registro',
  `activo` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1: activo, 0: inactiva. indica si la transaccion esta activa o no',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='transacciones, en terminos de btc. compras y ventas. data recopilada por trabajo de operadores';

--
-- Dumping data for table `transacciones_btc`
--

INSERT INTO `transacciones_btc` (`id`, `id_transaccion`, `tasa_btc_origen`, `tasa_btc_destino`, `origen_codpais`, `destino_codpais`, `origen_monto`, `destino_monto`, `btc_monto_buy`, `btc_monto_sell`, `btc_dif`, `monto_destino_dolares`, `monto_origen_dolares`, `dif_dolar`, `fechahora_buy`, `fechahora_sell`, `tasa_dolar_origen`, `tasa_dolar_destino`, `observ_buy`, `observ_venta`, `check_admin`, `user_admin`, `date_created`, `date_updated`, `activo`) VALUES
(4, 0, 0, 0, 'PAR', 'VEN', 6000, 13000, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 6000, 13000, NULL, NULL, NULL, NULL, '2019-08-05 21:04:40', NULL, 1),
(2, 0, 0, 0, 'PAR', 'VEN', 12000, 26000, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 6000, 13000, '', NULL, NULL, NULL, '2019-08-05 20:31:29', NULL, 1),
(3, 0, 0, 0, 'PAR', 'VEN', 12000, 26000, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 6000, 13000, NULL, NULL, NULL, NULL, '2019-08-05 21:04:06', NULL, 1),
(5, 0, 0, 0, 'PAR', 'VEN', 6000, 13000, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 6000, 13000, NULL, NULL, NULL, NULL, '2019-08-05 21:50:42', NULL, 1),
(6, 0, 0, 0, 'PAR', 'VEN', 6000, 13000, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 6000, 13000, NULL, NULL, NULL, NULL, '2019-08-05 21:52:21', NULL, 1),
(14, 0, 0, 0, 'PAR', 'VEN', 18000, 38983.17, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 6007, 13009.55, NULL, NULL, NULL, NULL, '2019-08-12 14:17:08', NULL, 1),
(13, 0, 0, 0, 'PAR', 'VEN', 18000, 38983.17, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 6007, 13009.55, NULL, NULL, NULL, NULL, '2019-08-06 15:07:37', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `es_admin` tinyint(1) DEFAULT '0' COMMENT 'indica que el usuario es administrador',
  `login` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'nombre de usuario, por defecto sera igual al email. o un codigo de usuario cualquiera. puede formarse con sus datos',
  `nombre` varchar(75) COLLATE utf8_unicode_ci NOT NULL,
  `nro_documento` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'doc identidad',
  `email` varchar(50) COLLATE utf8_unicode_ci DEFAULT '',
  `telefono` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'telefono de usuario',
  `password` text COLLATE utf8_unicode_ci COMMENT 'password codificado con MD5 o algun otro metodo',
  `cod_pais` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cod_ciudad` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'codigo de ciudad, localidad, provincia del usuario',
  `url_foto` text COLLATE utf8_unicode_ci COMMENT 'URL que indica archivo de foto o avatar',
  `date_primeratransaccion` date DEFAULT NULL COMMENT 'fecha de primera transaccion',
  `date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'fecha registro de cuenta',
  `date_updated` int(11) DEFAULT NULL COMMENT 'fecha ultima actualizacion de datos',
  `observ` text COLLATE utf8_unicode_ci COMMENT 'notas, comentarios, ingresados por el admin ...',
  `activo` tinyint(1) DEFAULT '1' COMMENT '1:activo, 0:inactivo',
  `url_img_documento` text COLLATE utf8_unicode_ci COMMENT 'url de imagen que comprueba la documento, bien sea foto o imagen escaneada',
  PRIMARY KEY (`id`),
  UNIQUE KEY `login` (`login`),
  UNIQUE KEY `email` (`email`),
  KEY `cod_ciudad` (`cod_ciudad`),
  KEY `cod_pais` (`cod_pais`),
  KEY `telefono` (`telefono`),
  KEY `cod_pais_2` (`cod_pais`),
  KEY `cod_ciudad_2` (`cod_ciudad`)
) ENGINE=MyISAM AUTO_INCREMENT=105 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='registro de usuarios de aplicacion';

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `es_admin`, `login`, `nombre`, `nro_documento`, `email`, `telefono`, `password`, `cod_pais`, `cod_ciudad`, `url_foto`, `date_primeratransaccion`, `date_created`, `date_updated`, `observ`, `activo`, `url_img_documento`) VALUES
(3, 0, 'dosma', 'Dina Osma', '', 'dosma@gmail.com', '+595992123456', '0', 'PAR', 'ASUNC', '', NULL, '2019-07-12 18:28:10', 0, 'ssss', 1, ''),
(4, 0, 'romand', 'Denis Roman', '', 'romand@gmail.com', '+595981654321', '0', 'PAR', 'ASUNC', '', NULL, '2019-07-12 18:28:10', 0, '', 1, ''),
(46, 0, 'gperez', 'Gabriel Pérez', '', 'gperez@gmail.com', '+595992860184', '0', 'VEN', 'SF', '', NULL, '2019-07-12 18:28:10', 0, 'Linea 1. Linea 2. Linea 3\nacenos\náéíóú', 1, ''),
(85, 0, 'germontilla', 'Gerardo Montilla', '', 'user@mail.com', '+5689898989', NULL, 'CHI', 'SANT', NULL, NULL, '2019-07-19 18:19:23', NULL, NULL, 1, ''),
(86, 0, 'cguti', 'Carlos Gutierrez', '', 'user7@mail.com', '+595992123456', NULL, 'PAR', 'SLRNZ', NULL, NULL, '2019-07-22 17:29:27', NULL, NULL, 1, ''),
(74, 0, 'jdanielperez', 'Jose Daniel Perez', '', 'jdanielperez77@gmail.com', '+584164542962', NULL, 'VEN', 'VAL', NULL, NULL, '2019-07-19 15:35:55', NULL, NULL, 1, ''),
(87, 0, 'verom', 'Veronica Marcone', '', 'user777@mail.com', '+555656656', NULL, 'COL', 'SLRNZ', NULL, NULL, '2019-07-22 17:30:12', NULL, NULL, 1, ''),
(88, 0, 'moraimafonseca', 'Moraima Fonseca', '', 'moraimafonseca10@gmail.com', '+584264391368', NULL, 'VEN', 'SF', NULL, NULL, '2019-07-22 17:31:43', NULL, NULL, 1, ''),
(89, 0, 'alvaleromendoza', 'Alvaro Valero', '', 'alvaleromendoza@mail.com', '+58426123456', NULL, 'VEN', 'BQTO', NULL, NULL, '2019-07-22 18:30:31', NULL, 'probÃ© acentos. que rollo con los acentos!!!', 1, ''),
(90, 0, 'ja.aguilar', 'Joseidy Aguilar', '', 'user878787@mail.com', '+', NULL, 'VEN', 'BQTO', NULL, NULL, '2019-07-22 18:49:38', NULL, '', 1, ''),
(91, 0, 'gladimaradjunta', 'Gladimar Adjunta', '', 'use123@mail.com', '+57898989898', NULL, 'COL', 'BOG', NULL, NULL, '2019-07-22 18:50:00', NULL, NULL, 1, ''),
(93, 0, 'msuarez', 'Mariangel Suarez', '', 'msuarez@mail.com', '+518989898', NULL, 'PER', 'LIM', NULL, NULL, '2019-07-24 13:25:35', NULL, NULL, 1, ''),
(94, 0, 'zescalona', 'Zenaida Escalona', '', 'zescalona@gmail.com', '+', NULL, 'VEN', 'BQTO', NULL, NULL, '2019-07-24 13:30:37', NULL, '', 1, ''),
(99, 0, 'frodriguez', 'Francisco Rodriguez', '', 'abcuser@mail.com', '+', NULL, 'COL', 'SANT', NULL, NULL, '2019-07-24 17:08:19', NULL, '', 1, ''),
(98, 0, 'jrivera', 'Jairo Rivera', '', 'jrivera@gmail.com', '+57', NULL, 'COL', 'CAL', NULL, NULL, '2019-07-24 15:03:41', NULL, NULL, 1, ''),
(101, 0, 'jmercado', 'Juan Mercado', '', 'jmercado@mail.com', '+595111222333', NULL, 'PAR', '', NULL, NULL, '2019-07-30 19:59:35', NULL, '', 1, ''),
(102, 0, 'venebit', 'Nombres y Apellidos', NULL, 'gab.perez@mail.com', '+', NULL, 'VEN', 'SF', NULL, NULL, '2019-08-14 13:04:01', NULL, NULL, 1, NULL),
(103, 0, 'ccolmenarez', 'Carlos Colmenarez', NULL, 'ccolmanarez@gmail.com', '+', NULL, 'VEN', 'CAB', NULL, NULL, '2019-09-01 20:55:00', NULL, '', 1, NULL),
(104, 0, 'usuarioX1', 'Terminator', NULL, 'userx1@mail.com', '+5954129998877', NULL, 'PAR', 'LMB', NULL, NULL, '2020-04-10 02:39:46', NULL, '', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_avatar`
--

DROP TABLE IF EXISTS `user_avatar`;
CREATE TABLE IF NOT EXISTS `user_avatar` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `login` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `url_image` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='avatar de usuarios, o fotos de perfil';

-- --------------------------------------------------------

--
-- Table structure for table `user_bank`
--

DROP TABLE IF EXISTS `user_bank`;
CREATE TABLE IF NOT EXISTS `user_bank` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_user` int(11) NOT NULL,
  `codbank` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `nombank` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `nro_cuenta` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `nombretitular` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `doctitular` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Cuentas bancarias destino de usuarios';

--
-- Dumping data for table `user_bank`
--

INSERT INTO `user_bank` (`id`, `id_user`, `codbank`, `nombank`, `nro_cuenta`, `nombretitular`, `doctitular`) VALUES
(1, 0, 'PROV', 'BANCO PROVINCIAL', '0108241200000000001', 'GABRIEL PEREZ', '16594651');

-- --------------------------------------------------------

--
-- Table structure for table `user_bloqueados`
--

DROP TABLE IF EXISTS `user_bloqueados`;
CREATE TABLE IF NOT EXISTS `user_bloqueados` (
  `id` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `login` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `motivo_bloqueo` text COLLATE utf8_unicode_ci NOT NULL,
  `fechahora` timestamp NOT NULL,
  `user_admin` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT 'login de usuario admin que bloqueo al usario cliente',
  `activo` tinyint(1) NOT NULL DEFAULT '1' COMMENT 'indica si el bloqueo sigue activo, o ya el usuario esta desbloqueado'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='lista de usuarios bloqueados';

-- --------------------------------------------------------

--
-- Table structure for table `user_comentarios`
--

DROP TABLE IF EXISTS `user_comentarios`;
CREATE TABLE IF NOT EXISTS `user_comentarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_usuario` int(11) NOT NULL,
  `login` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `fechahora` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'fecha y hora del comentario',
  `tipo` int(11) NOT NULL COMMENT '1:positivo, 2:negativo, 3:neutral',
  `comentario` text COLLATE utf8_unicode_ci NOT NULL,
  `observaciones` int(11) NOT NULL COMMENT 'observaciones de la app, escritos por algun administrador',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='comentarios de los usuarios, dados por operadores y usuarios admin';

-- --------------------------------------------------------

--
-- Table structure for table `user_reputacion`
--

DROP TABLE IF EXISTS `user_reputacion`;
CREATE TABLE IF NOT EXISTS `user_reputacion` (
  `id` int(11) NOT NULL,
  `id_user` int(30) NOT NULL,
  `coment_posit` int(11) DEFAULT NULL,
  `coment_neg` int(11) DEFAULT NULL,
  `veces_bloqueado` int(11) DEFAULT NULL,
  `comentarios_neutrales` int(11) DEFAULT NULL,
  `reputacion_total` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_seguridad`
--

DROP TABLE IF EXISTS `user_seguridad`;
CREATE TABLE IF NOT EXISTS `user_seguridad` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `nro_documento` text COLLATE utf8_unicode_ci NOT NULL,
  `doc_verificado` tinyint(1) NOT NULL,
  `login_user_admin` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `fechahora_check` int(11) NOT NULL,
  `url_img_documento` text COLLATE utf8_unicode_ci COMMENT 'url de imagen que comprueba la documento, bien sea foto o imagen escaneada	'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='datos de seguridad de usuarios';

-- --------------------------------------------------------

--
-- Table structure for table `x.tareas de tablas`
--

DROP TABLE IF EXISTS `x.tareas de tablas`;
CREATE TABLE IF NOT EXISTS `x.tareas de tablas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` text COLLATE utf8_unicode_ci NOT NULL,
  `detalles` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `x.tareas de tablas`
--

INSERT INTO `x.tareas de tablas` (`id`, `descripcion`, `detalles`) VALUES
(1, 'tabla: users.\r\ncampo: email\r\ndebe ser unico', ''),
(2, 'paridad de monedas.\r\ntabla: monedas_pares', 'hay que gestionar el hecho de que una paridad de monedas puede cambiar mientras un usuario realiza una operacion.\r\nCuando el usuario inicia la transaccion, esta se realiza con la paridad del momento.\r\nAun si esta cambia en el proceso?\r\nDebe haber un timeout bajo de la app, digamos de 10 minutos.'),
(3, 'table: user\r\ncampos posibles de user', 'campos posibles de user.\r\nfecha nac\r\nprofesion/ocupacion\r\nidioma preferido\r\nuso horario preferido');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
