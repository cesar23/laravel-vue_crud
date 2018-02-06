-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 06-02-2018 a las 01:58:22
-- Versión del servidor: 10.1.30-MariaDB
-- Versión de PHP: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `laravel_vue_crud`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(4, '2018_02_05_223657_create_tasks_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tasks`
--

CREATE TABLE `tasks` (
  `id` int(10) UNSIGNED NOT NULL,
  `keep` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `tasks`
--

INSERT INTO `tasks` (`id`, `keep`, `created_at`, `updated_at`) VALUES
(25, 'Eligendi numquam amet et.', '2018-02-06 04:35:01', '2018-02-06 04:35:01'),
(27, 'Eligendi quos rerum quo dolore voluptatem numquam debitis.', '2018-02-06 04:35:01', '2018-02-06 04:35:01'),
(28, 'Labore suscipit ut vitae numquam totam vitae saepe.', '2018-02-06 04:35:02', '2018-02-06 04:35:02'),
(29, 'Eum aut doloribus dignissimos.', '2018-02-06 04:35:02', '2018-02-06 04:35:02'),
(30, 'Itaque est id earum et eum hic voluptatem.', '2018-02-06 04:35:02', '2018-02-06 04:35:02'),
(31, 'Fugit similique consequatur nulla et.', '2018-02-06 04:35:02', '2018-02-06 04:35:02'),
(32, 'Consequatur autem et dolores ad.', '2018-02-06 04:35:02', '2018-02-06 04:35:02'),
(33, 'Consequatur architecto tempora aut error.', '2018-02-06 04:35:02', '2018-02-06 04:35:02'),
(34, 'Eveniet aut qui iusto culpa eius excepturi.', '2018-02-06 04:35:02', '2018-02-06 04:35:02'),
(35, 'Qui iusto consequatur autem qui.', '2018-02-06 04:35:02', '2018-02-06 04:35:02'),
(36, 'Ipsum rerum omnis praesentium consequuntur saepe laboriosam.', '2018-02-06 04:35:02', '2018-02-06 04:35:02'),
(37, 'Ipsam est dolorem corrupti odit dolor.', '2018-02-06 04:35:02', '2018-02-06 04:35:02'),
(38, 'Officiis provident dolores ex incidunt.', '2018-02-06 04:35:02', '2018-02-06 04:35:02'),
(39, 'Voluptatem vel optio rerum porro provident id.', '2018-02-06 04:35:02', '2018-02-06 04:35:02'),
(40, 'Et nemo velit nihil itaque laboriosam.', '2018-02-06 04:35:02', '2018-02-06 04:35:02'),
(41, 'Aliquam quia fuga corrupti praesentium eum.', '2018-02-06 04:35:02', '2018-02-06 04:35:02'),
(42, 'Sapiente officiis quaerat minus minima nobis molestiae.', '2018-02-06 04:35:02', '2018-02-06 04:35:02'),
(43, 'Qui quaerat sint quae atque.', '2018-02-06 04:35:02', '2018-02-06 04:35:02'),
(44, 'Et dolor qui voluptatibus debitis dolor sit provident.', '2018-02-06 04:35:02', '2018-02-06 04:35:02'),
(45, 'Consequuntur voluptatem aspernatur sint.', '2018-02-06 04:35:02', '2018-02-06 04:35:02'),
(46, '8 ggg', '2018-02-06 05:43:09', '2018-02-06 05:43:09'),
(47, '99 hgffgh', '2018-02-06 05:44:22', '2018-02-06 05:44:22');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `tasks`
--
ALTER TABLE `tasks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
