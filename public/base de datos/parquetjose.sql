-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 07-04-2017 a las 23:29:07
-- Versión del servidor: 10.1.21-MariaDB
-- Versión de PHP: 7.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `parquetjose`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bancos`
--

CREATE TABLE `bancos` (
  `IdBancos` int(10) UNSIGNED NOT NULL,
  `Nombre` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `Estado` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carver_catalogo`
--

CREATE TABLE `carver_catalogo` (
  `IdCarver_Catalogo` int(10) UNSIGNED NOT NULL,
  `IdCarver_Catalogo_Modulos` int(10) UNSIGNED NOT NULL,
  `Descripcion_Modulo` text COLLATE utf8_unicode_ci NOT NULL,
  `Categoria` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `Producto` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `Descripcion_Producto` text COLLATE utf8_unicode_ci NOT NULL,
  `Imagen` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `Pie_Imagen` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `Estado` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carver_catalogo_modulos`
--

CREATE TABLE `carver_catalogo_modulos` (
  `IdCarver_Catalogo_Modulos` int(10) UNSIGNED NOT NULL,
  `Nombre_Modulo` varchar(300) COLLATE utf8_unicode_ci NOT NULL,
  `Descripcion_Modulo` text COLLATE utf8_unicode_ci NOT NULL,
  `Categoria` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `Estado` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `carver_catalogo_modulos`
--

INSERT INTO `carver_catalogo_modulos` (`IdCarver_Catalogo_Modulos`, `Nombre_Modulo`, `Descripcion_Modulo`, `Categoria`, `Estado`) VALUES
(1, 'Preparación antes de pegar', 'Antes de proceder a la colocación de un suelo de madera es necesario verificar la calidad y condiciones de la base que lo va a recibir, prestando\r\nespecial atención a los problemas de humedad. A menudo resulta indispensable el uso de consolidantes y aislantes sobre superficies\r\nespecialmente lisas y compactas, como mármol y baldosas, o de algún producto que favorezca la adhesión.', 'Aislantes y Consolidantes', 'Activo'),
(2, 'Colas', 'Nuestras colas están muy reconocidas y permiten resolver cualquier problema de encolado, si fuera preciso en combinación con nuestros aprestos para los subpavimentos.', 'Colas bicomponentes', 'Activo'),
(3, 'Colas', 'Nuestras colas están muy reconocidas y permiten resolver cualquier problema de encolado, si fuera preciso en combinación con nuestros aprestos para los subpavimentos.', 'Colas monocomponentes', 'Activo'),
(4, 'Colas', 'Nuestras colas están muy reconocidas y permiten resolver cualquier problema de encolado, si fuera preciso en combinación con nuestros aprestos para los subpavimentos.', 'Colas especiales', 'Activo'),
(5, 'Productos para el barnizado al disolvente', 'Los ciclos de barnizado CARVER al disolvente ofrecen: un elevado rendimiento, una perfecta adherencia a cualquier tipo de madera, una excepcional dureza junto con la necesaria elasticidad, una óptima resistencia a la abrasión y al pisoteo.', 'Estuco', 'Activo'),
(6, 'Productos para el barnizado al disolvente', 'Los ciclos de barnizado CARVER al disolvente ofrecen: un elevado rendimiento, una perfecta adherencia a cualquier tipo de madera, una excepcional dureza junto con la necesaria elasticidad, una óptima resistencia a la abrasión y al pisoteo.', 'Fondos', 'Activo'),
(7, 'Productos para el barnizado al disolvente', 'Los ciclos de barnizado CARVER al disolvente ofrecen: un elevado rendimiento, una perfecta adherencia a cualquier tipo de madera, una excepcional dureza junto con la necesaria elasticidad, una óptima resistencia a la abrasión y al pisoteo.', 'Barnices bicomponentes', 'Activo'),
(8, 'Productos para el barnizado al agua', 'Concebidos para reducir la emisión de disolventes en el ambiente, los productos de base acuosa se han desarrollado notablemente en el curso de los años. La línea desarrollada por CARVER a partir del 1978 comprende, además de diferentes tipos de barniz, también aglutinantes para estuco, fondos y colorantes. Los barnices, mono y bicomponentes, se prestan a una multiplicidad de empleos y se distinguen por la facilidad de aplicación y la buena resistencia químico-física. Particularmente apreciables los resultados estéticos logrados en el acabado satinado, mate y supermate. Para maderas contenientes tanino (roble, castaño) es aconsejado efectuar pruebas preliminares. Todos nuestros barnices se basan en resinas poliuretánicas al agua, por lo que la película no se tiñe de amarillo por efecto de la luz. Todos nuestros productos al agua son NMP-free y NEP-free.', 'Estuco', 'Activo'),
(9, 'Productos para el barnizado al agua', 'Concebidos para reducir la emisión de disolventes en el ambiente, los productos de base acuosa se han desarrollado notablemente en el curso de los años. La línea desarrollada por CARVER a partir del 1978 comprende, además de diferentes tipos de barniz, también aglutinantes para estuco, fondos y colorantes. Los barnices, mono y bicomponentes, se prestan a una multiplicidad de empleos y se distinguen por la facilidad de aplicación y la buena resistencia químico-física. Particularmente apreciables los resultados estéticos logrados en el acabado satinado, mate y supermate. Para maderas contenientes tanino (roble, castaño) es aconsejado efectuar pruebas preliminares. Todos nuestros barnices se basan en resinas poliuretánicas al agua, por lo que la película no se tiñe de amarillo por efecto de la luz. Todos nuestros productos al agua son NMP-free y NEP-free.', 'Fondos', 'Activo'),
(10, 'Productos para el barnizado al agua', 'Concebidos para reducir la emisión de disolventes en el ambiente, los productos de base acuosa se han desarrollado notablemente en el curso de los años. La línea desarrollada por CARVER a partir del 1978 comprende, además de diferentes tipos de barniz, también aglutinantes para estuco, fondos y colorantes. Los barnices, mono y bicomponentes, se prestan a una multiplicidad de empleos y se distinguen por la facilidad de aplicación y la buena resistencia químico-física. Particularmente apreciables los resultados estéticos logrados en el acabado satinado, mate y supermate. Para maderas contenientes tanino (roble, castaño) es aconsejado efectuar pruebas preliminares. Todos nuestros barnices se basan en resinas poliuretánicas al agua, por lo que la película no se tiñe de amarillo por efecto de la luz. Todos nuestros productos al agua son NMP-free y NEP-free.', 'Barnices bicomponentes', 'Activo'),
(11, 'Productos para el barnizado al agua', 'Concebidos para reducir la emisión de disolventes en el ambiente, los productos de base acuosa se han desarrollado notablemente en el curso de los años. La línea desarrollada por CARVER a partir del 1978 comprende, además de diferentes tipos de barniz, también aglutinantes para estuco, fondos y colorantes. Los barnices, mono y bicomponentes, se prestan a una multiplicidad de empleos y se distinguen por la facilidad de aplicación y la buena resistencia químico-física. Particularmente apreciables los resultados estéticos logrados en el acabado satinado, mate y supermate. Para maderas contenientes tanino (roble, castaño) es aconsejado efectuar pruebas preliminares. Todos nuestros barnices se basan en resinas poliuretánicas al agua, por lo que la película no se tiñe de amarillo por efecto de la luz. Todos nuestros productos al agua son NMP-free y NEP-free.', 'Barnices monocomponentes', 'Activo'),
(12, 'Productos para el barnizado al agua', 'Concebidos para reducir la emisión de disolventes en el ambiente, los productos de base acuosa se han desarrollado notablemente en el curso de los años. La línea desarrollada por CARVER a partir del 1978 comprende, además de diferentes tipos de barniz, también aglutinantes para estuco, fondos y colorantes. Los barnices, mono y bicomponentes, se prestan a una multiplicidad de empleos y se distinguen por la facilidad de aplicación y la buena resistencia químico-física. Particularmente apreciables los resultados estéticos logrados en el acabado satinado, mate y supermate. Para maderas contenientes tanino (roble, castaño) es aconsejado efectuar pruebas preliminares. Todos nuestros barnices se basan en resinas poliuretánicas al agua, por lo que la película no se tiñe de amarillo por efecto de la luz. Todos nuestros productos al agua son NMP-free y NEP-free.', 'Disolventes', 'Activo'),
(13, 'Manutención del parquet barnizado', 'Los parquets barnizados, para mantener sus características estéticas y funcionales, necesitan ser cuidados.', '-', 'Activo'),
(14, 'Aceites', 'Nuestros aceites exaltan el aspecto cálido de la madera al estado natural, haciendo los ambientes más acogedores. Estos productos poseen una elevada velocidad de secado y un buen poder anti-blocking, características que los hacen idóneos bien para la aplicación artesanal como para la aplicación en una linea industrial.', 'Aceite en fase acuosa', 'Activo'),
(15, 'Aceites', 'Nuestros aceites exaltan el aspecto cálido de la madera al estado natural, haciendo los ambientes más acogedores. Estos productos poseen una elevada velocidad de secado y un buen poder anti-blocking, características que los hacen idóneos bien para la aplicación artesanal como para la aplicación en una linea industrial.', 'Aceite tradicional', 'Activo'),
(16, 'Manutención del parquet tratado con aceite', 'Para mantener las características estéticas y funcionales de los pisos de madera aceitados.', '-', 'Activo'),
(17, 'Tintas', 'Las tintas permiten de cambiar el color del piso, dejando visible la veta de la madera. Hay varias soluciones para la coloración de los suelos de madera, cada una con diferentes ventajas y aspectos. Las tintas se pueden mezclar entre ellas y ofrecen una gama infinita de tintas modernas y muy decorativas.', 'Colorantes para interior y exterior', 'Activo'),
(18, 'Tintas', 'Las tintas permiten de cambiar el color del piso, dejando visible la veta de la madera. Hay varias soluciones para la coloración de los suelos de madera, cada una con diferentes ventajas y aspectos. Las tintas se pueden mezclar entre ellas y ofrecen una gama infinita de tintas modernas y muy decorativas.', 'Pastas coloreadas', 'Activo'),
(19, 'Tintas', 'Las tintas permiten de cambiar el color del piso, dejando visible la veta de la madera. Hay varias soluciones para la coloración de los suelos de madera, cada una con diferentes ventajas y aspectos. Las tintas se pueden mezclar entre ellas y ofrecen una gama infinita de tintas modernas y muy decorativas.', 'Colorantes para interior', 'Activo'),
(20, 'Tintas', 'Las tintas permiten de cambiar el color del piso, dejando visible la veta de la madera. Hay varias soluciones para la coloración de los suelos de madera, cada una con diferentes ventajas y aspectos. Las tintas se pueden mezclar entre ellas y ofrecen una gama infinita de tintas modernas y muy decorativas.', 'Colorantes para interior', 'Activo'),
(21, 'Tintas', 'Las tintas permiten de cambiar el color del piso, dejando visible la veta de la madera. Hay varias soluciones para la coloración de los suelos de madera, cada una con diferentes ventajas y aspectos. Las tintas se pueden mezclar entre ellas y ofrecen una gama infinita de tintas modernas y muy decorativas.', 'Envejecedor', 'Activo'),
(22, 'Productos para terrazas de madera', 'Una gama completa de productos en fase acuosa o al aceite, para la impregnación, la coloración, el acabado y la protección de la madera de exteriores que satisface las más altas exigencias en materia de estética, eficacia y duración de los tratamientos.', 'Productos de fase acuosa / Superficies verticales', 'Activo'),
(23, 'Productos para terrazas de madera', 'Una gama completa de productos en fase acuosa o al aceite, para la impregnación, la coloración, el acabado y la protección de la madera de exteriores que satisface las más altas exigencias en materia de estética, eficacia y duración de los tratamientos.', 'Productos de fase acuosa / Superficies horizontales', 'Activo'),
(24, 'Productos para terrazas de madera', 'Una gama completa de productos en fase acuosa o al aceite, para la impregnación, la coloración, el acabado y la protección de la madera de exteriores que satisface las más altas exigencias en materia de estética, eficacia y duración de los tratamientos.', 'Productos de fase acuosa / Superficies horizontales', 'Activo'),
(25, 'Productos para terrazas de madera', 'Una gama completa de productos en fase acuosa o al aceite, para la impregnación, la coloración, el acabado y la protección de la madera de exteriores que satisface las más altas exigencias en materia de estética, eficacia y duración de los tratamientos.', 'Productos de fase acuosa / Superficies horizontales', 'Activo'),
(26, 'Productos para terrazas de madera', 'Una gama completa de productos en fase acuosa o al aceite, para la impregnación, la coloración, el acabado y la protección de la madera de exteriores que satisface las más altas exigencias en materia de estética, eficacia y duración de los tratamientos.', 'Productos a base de aceites / Superficies verticales y horizontales', 'Activo'),
(27, 'Productos para terrazas de madera', 'Una gama completa de productos en fase acuosa o al aceite, para la impregnación, la coloración, el acabado y la protección de la madera de exteriores que satisface las más altas exigencias en materia de estética, eficacia y duración de los tratamientos.', 'Productos de restauración', 'Activo'),
(28, 'Producto a reticulación UV', 'CARVER ha puesto a punto un propio sistema de barnizado al agua a reticulación UV que gracias a la combinación del barniz AQUAFAST-UV y del uso del CARRELLO UV-300 permite aplicar en obra tres manos de barniz en solo 6 horas y terminar el trabajo en un solo dia.\r\nIdeal para locales privados, oficinas, tiendas, restaurantes y locales públicos en general, el sistema AQUAFAST confiere a la superficie tratada una excelente resistencia.\r\nPara mayores detalles ver el depliant en cuestión.', '-', 'Activo'),
(29, 'Producto per applicazione industriale', 'Para la producción del parquet preacabado barnizado: un ciclo a base de resinas fotopolimerizables para producir un parqué con efecto aceite;\r\nEn nuestros laboratorios especialmente equipados los ciclos aplicativos pueden ser rápidamente adaptados a las exigencias de cada cliente según las características de su propia instalación.\r\nEl servicio de asistencia técnica que nuestra Sociedad está en condición de facilitar a su clientela se rifiere bien a los productos como a las instalaciones. Expertos calificados de ambos sectores están a vuestra disposición para proporcionar consejos sobre la elección y el uso de los productos así como de la maquinaria.', '-', 'Activo'),
(30, 'Accesorios', '--------', 'Medición de la humedad', 'Activo'),
(31, 'Accesorios', '----------', 'Colocación del parquet', 'Activo'),
(32, 'Accesorios', '------', 'Acabado del parquet', 'Activo'),
(33, 'Accesorios', '-------', 'Limpieza y manutención', 'Activo'),
(34, 'Accesorios', '------------', 'Varias', 'Activo'),
(35, 'Abrasivos', '-------------', 'Cinturones abrasivos', 'Activo'),
(36, 'Abrasivos', '-----------------', 'Discos abrasivos', 'Activo'),
(37, 'Abrasivos', '--------------', 'Rollos abrasivos', 'Activo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carver_clientes`
--

CREATE TABLE `carver_clientes` (
  `IdCarver_Clientes` int(10) UNSIGNED NOT NULL,
  `Num_Cliente` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Nombre` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `DNI` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Empresa` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `NIF` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CIF` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Direccion_Fiscal` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `Poblacion_Fiscal` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `Codigo_Postal_Fiscal` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Direccion_Comercial_Envio` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Poblacion_Comercial_Envio` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Codigo_Postal_Comercial_Envio` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Telefono` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Movil` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Fax` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Forma_Pago` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Estado` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `carver_clientes`
--

INSERT INTO `carver_clientes` (`IdCarver_Clientes`, `Num_Cliente`, `Nombre`, `DNI`, `Empresa`, `NIF`, `CIF`, `Direccion_Fiscal`, `Poblacion_Fiscal`, `Codigo_Postal_Fiscal`, `Direccion_Comercial_Envio`, `Poblacion_Comercial_Envio`, `Codigo_Postal_Comercial_Envio`, `Telefono`, `Movil`, `Fax`, `Email`, `Forma_Pago`, `Estado`) VALUES
(1, '01', 'Fernando López', '616271-R', 'El Corte Ingles', 'B-71727712', 'B-71727714', 'Calle Toledo, 2', 'Valencia', '61626', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carver_detalle_ventas`
--

CREATE TABLE `carver_detalle_ventas` (
  `IdCarver_Ventas` int(10) UNSIGNED NOT NULL,
  `IdCarver_Productos` int(10) UNSIGNED NOT NULL,
  `Numero_Cajas` int(10) NOT NULL,
  `Concepto` text COLLATE utf8_unicode_ci NOT NULL,
  `Cantidad` decimal(10,2) NOT NULL,
  `Descuento` decimal(10,2) NOT NULL,
  `Precio` decimal(10,2) NOT NULL,
  `Subtotal` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carver_facturas_salida`
--

CREATE TABLE `carver_facturas_salida` (
  `IdCarver_Facturas_Salida` int(10) UNSIGNED NOT NULL,
  `IdCarver_Ventas` int(10) UNSIGNED NOT NULL,
  `Numero_Documento` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `Fecha` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `NIF` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Nombre_Cliente` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Base_Imponible` decimal(10,2) NOT NULL,
  `IVA` decimal(10,2) NOT NULL,
  `Cuota` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Total` decimal(10,2) NOT NULL,
  `Estado` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carver_productos`
--

CREATE TABLE `carver_productos` (
  `IdCarver_Productos` int(10) UNSIGNED NOT NULL,
  `IdCarver_Catalogo_Modulos` int(10) UNSIGNED NOT NULL,
  `Codigo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Categoria` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `Nombre` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `Prop_Mezcla` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Embalaje_Estandar` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Producto_Peligroso_Transporte` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Palet` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Precio_Litro_Kg_Euro` decimal(10,2) NOT NULL,
  `Stock` int(11) NOT NULL,
  `PVP` decimal(10,2) NOT NULL,
  `Estado` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `carver_productos`
--

INSERT INTO `carver_productos` (`IdCarver_Productos`, `IdCarver_Catalogo_Modulos`, `Codigo`, `Categoria`, `Nombre`, `Prop_Mezcla`, `Embalaje_Estandar`, `Producto_Peligroso_Transporte`, `Palet`, `Precio_Litro_Kg_Euro`, `Stock`, `PVP`, `Estado`) VALUES
(3, 1, 'SO7580', 'Aislantes y Consolidantes', 'BZA: apresto monocomponente poliuretánico al disolvente', '-', '5 lt.', 'Si', '600 lt.', '18.24', 100, '20.10', 'Activo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carver_vencimientos_ventas`
--

CREATE TABLE `carver_vencimientos_ventas` (
  `IdCarver_Ventas` int(10) UNSIGNED NOT NULL,
  `Vencimiento` date NOT NULL,
  `Importes` decimal(10,2) NOT NULL,
  `Estado` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carver_ventas`
--

CREATE TABLE `carver_ventas` (
  `IdCarver_Ventas` int(10) UNSIGNED NOT NULL,
  `IdCarver_Clientes` int(10) UNSIGNED NOT NULL,
  `IdBancos` int(10) UNSIGNED NOT NULL,
  `Tipo_Documento` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `Numero_Documento` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Fecha` date NOT NULL,
  `Nombre` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `Direccion` text COLLATE utf8_unicode_ci NOT NULL,
  `CP` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Poblacion` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `NIF` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Base_Imponible` decimal(10,2) NOT NULL,
  `Tipo_IVA` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `IVA` decimal(10,2) NOT NULL,
  `Total` decimal(10,2) NOT NULL,
  `Plazos_Pago` varchar(5) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `Observaciones` text COLLATE utf8_unicode_ci,
  `Forma_Pago` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Total_Vencimiento` decimal(10,2) NOT NULL,
  `Banco` varchar(300) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Numero_Cuenta_Bancaria` varchar(400) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Estado` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2017_04_04_095126_initalization', 1),
(4, '2017_04_07_181524_laratrust_setup_tables', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permission_user`
--

CREATE TABLE `permission_user` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `user_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `role_user`
--

CREATE TABLE `role_user` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `user_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Parquet Jose', 'parquetjosesl@hotmail.com', '$2y$10$OtWhyS1NvnimDlK1mI3WluXVBm5D7bTZweU3g9TX4Tb/2IkcnGTmS', 'Y8NLE3YWAiqelB0S6b9gxrHkpVB4qOsP6jr2THmpe7IRnTdfI8WADFsZ6nHc', '2017-04-07 09:35:36', '2017-04-07 12:26:28');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `bancos`
--
ALTER TABLE `bancos`
  ADD PRIMARY KEY (`IdBancos`);

--
-- Indices de la tabla `carver_catalogo`
--
ALTER TABLE `carver_catalogo`
  ADD PRIMARY KEY (`IdCarver_Catalogo`),
  ADD KEY `carver_catalogo_idcarver_catalogo_modulos_foreign` (`IdCarver_Catalogo_Modulos`);

--
-- Indices de la tabla `carver_catalogo_modulos`
--
ALTER TABLE `carver_catalogo_modulos`
  ADD PRIMARY KEY (`IdCarver_Catalogo_Modulos`);

--
-- Indices de la tabla `carver_clientes`
--
ALTER TABLE `carver_clientes`
  ADD PRIMARY KEY (`IdCarver_Clientes`),
  ADD UNIQUE KEY `carver_clientes_num_cliente_unique` (`Num_Cliente`);

--
-- Indices de la tabla `carver_detalle_ventas`
--
ALTER TABLE `carver_detalle_ventas`
  ADD KEY `carver_detalle_ventas_idcarver_ventas_foreign` (`IdCarver_Ventas`),
  ADD KEY `carver_detalle_ventas_idcarver_productos_foreign` (`IdCarver_Productos`);

--
-- Indices de la tabla `carver_facturas_salida`
--
ALTER TABLE `carver_facturas_salida`
  ADD PRIMARY KEY (`IdCarver_Facturas_Salida`),
  ADD UNIQUE KEY `carver_facturas_salida_numero_documento_unique` (`Numero_Documento`),
  ADD KEY `carver_facturas_salida_idcarver_ventas_foreign` (`IdCarver_Ventas`);

--
-- Indices de la tabla `carver_productos`
--
ALTER TABLE `carver_productos`
  ADD PRIMARY KEY (`IdCarver_Productos`),
  ADD UNIQUE KEY `carver_productos_codigo_unique` (`Codigo`),
  ADD KEY `carver_productos_idcarver_catalogo_modulos_foreign` (`IdCarver_Catalogo_Modulos`),
  ADD KEY `Codigo` (`Codigo`);

--
-- Indices de la tabla `carver_vencimientos_ventas`
--
ALTER TABLE `carver_vencimientos_ventas`
  ADD KEY `carver_vencimientos_ventas_idcarver_ventas_foreign` (`IdCarver_Ventas`);

--
-- Indices de la tabla `carver_ventas`
--
ALTER TABLE `carver_ventas`
  ADD PRIMARY KEY (`IdCarver_Ventas`),
  ADD UNIQUE KEY `carver_ventas_tipo_documento_unique` (`Tipo_Documento`),
  ADD UNIQUE KEY `carver_ventas_numero_documento_unique` (`Numero_Documento`),
  ADD KEY `carver_ventas_idcarver_clientes_foreign` (`IdCarver_Clientes`),
  ADD KEY `carver_ventas_idbancos_foreign` (`IdBancos`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indices de la tabla `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_unique` (`name`);

--
-- Indices de la tabla `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_role_id_foreign` (`role_id`);

--
-- Indices de la tabla `permission_user`
--
ALTER TABLE `permission_user`
  ADD PRIMARY KEY (`permission_id`,`user_id`,`user_type`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indices de la tabla `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`user_id`,`role_id`,`user_type`),
  ADD KEY `role_user_role_id_foreign` (`role_id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `bancos`
--
ALTER TABLE `bancos`
  MODIFY `IdBancos` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `carver_catalogo`
--
ALTER TABLE `carver_catalogo`
  MODIFY `IdCarver_Catalogo` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `carver_catalogo_modulos`
--
ALTER TABLE `carver_catalogo_modulos`
  MODIFY `IdCarver_Catalogo_Modulos` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;
--
-- AUTO_INCREMENT de la tabla `carver_clientes`
--
ALTER TABLE `carver_clientes`
  MODIFY `IdCarver_Clientes` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `carver_facturas_salida`
--
ALTER TABLE `carver_facturas_salida`
  MODIFY `IdCarver_Facturas_Salida` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `carver_productos`
--
ALTER TABLE `carver_productos`
  MODIFY `IdCarver_Productos` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `carver_ventas`
--
ALTER TABLE `carver_ventas`
  MODIFY `IdCarver_Ventas` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `carver_catalogo`
--
ALTER TABLE `carver_catalogo`
  ADD CONSTRAINT `carver_catalogo_idcarver_catalogo_modulos_foreign` FOREIGN KEY (`IdCarver_Catalogo_Modulos`) REFERENCES `carver_catalogo_modulos` (`IdCarver_Catalogo_Modulos`);

--
-- Filtros para la tabla `carver_detalle_ventas`
--
ALTER TABLE `carver_detalle_ventas`
  ADD CONSTRAINT `carver_detalle_ventas_idcarver_productos_foreign` FOREIGN KEY (`IdCarver_Productos`) REFERENCES `carver_productos` (`IdCarver_Productos`),
  ADD CONSTRAINT `carver_detalle_ventas_idcarver_ventas_foreign` FOREIGN KEY (`IdCarver_Ventas`) REFERENCES `carver_ventas` (`IdCarver_Ventas`);

--
-- Filtros para la tabla `carver_facturas_salida`
--
ALTER TABLE `carver_facturas_salida`
  ADD CONSTRAINT `carver_facturas_salida_idcarver_ventas_foreign` FOREIGN KEY (`IdCarver_Ventas`) REFERENCES `carver_ventas` (`IdCarver_Ventas`);

--
-- Filtros para la tabla `carver_productos`
--
ALTER TABLE `carver_productos`
  ADD CONSTRAINT `carver_productos_idcarver_catalogo_modulos_foreign` FOREIGN KEY (`IdCarver_Catalogo_Modulos`) REFERENCES `carver_catalogo_modulos` (`IdCarver_Catalogo_Modulos`);

--
-- Filtros para la tabla `carver_vencimientos_ventas`
--
ALTER TABLE `carver_vencimientos_ventas`
  ADD CONSTRAINT `carver_vencimientos_ventas_idcarver_ventas_foreign` FOREIGN KEY (`IdCarver_Ventas`) REFERENCES `carver_ventas` (`IdCarver_Ventas`);

--
-- Filtros para la tabla `carver_ventas`
--
ALTER TABLE `carver_ventas`
  ADD CONSTRAINT `carver_ventas_idbancos_foreign` FOREIGN KEY (`IdBancos`) REFERENCES `bancos` (`IdBancos`),
  ADD CONSTRAINT `carver_ventas_idcarver_clientes_foreign` FOREIGN KEY (`IdCarver_Clientes`) REFERENCES `carver_clientes` (`IdCarver_Clientes`);

--
-- Filtros para la tabla `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `permission_user`
--
ALTER TABLE `permission_user`
  ADD CONSTRAINT `permission_user_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
