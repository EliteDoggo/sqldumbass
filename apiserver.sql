-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Дек 24 2019 г., 11:02
-- Версия сервера: 5.7.20
-- Версия PHP: 7.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `apiserver`
--

-- --------------------------------------------------------

--
-- Структура таблицы `allowed_photos`
--

CREATE TABLE `allowed_photos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `photo_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `allowed_photos`
--

INSERT INTO `allowed_photos` (`id`, `user_id`, `photo_id`) VALUES
(1, 3, 5),
(2, 3, 6),
(3, 1, 7),
(4, 1, 8),
(5, 1, 9),
(6, 1, 10);

-- --------------------------------------------------------

--
-- Структура таблицы `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(5, '2019_12_17_075801_allowed_users', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `photos`
--

CREATE TABLE `photos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `photos`
--

INSERT INTO `photos` (`id`, `name`, `url`, `owner_id`) VALUES
(5, 'Untitled', 'http://api/images/1577082573.jpeg', 3),
(6, 'Untitled', 'http://api/images/1577082582.jpeg', 3),
(7, 'Untitled', 'http://api/images/1577082605.jpeg', 1),
(8, 'Untitled', 'http://api/images/1577082608.jpeg', 1),
(9, 'Untitled', 'http://api/images/1577082609.jpeg', 1),
(10, 'Untitled', 'http://api/images/1577082610.jpeg', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `surname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `api_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `first_name`, `surname`, `phone`, `password`, `api_token`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Антонина', 'magconagan', '89998234222226', '$2y$10$ehWjb48z5lwEpPMeydcn9Oc8IxlOL2kQyT.W5RVP/iICOcInlj8ci', 'vSn9dxJMcLfzG4fXDf01PaGH3lwzM2RuvqBsyZnBqz5VXCXOGvUIzUHrpuPs7FRVzP7kh8T0sbiQUmWl', 'wJCUzySaiwARPvTEL8VelAFeCw7gS5ZzWFfZVWx7Zn2naQTSyoroHEv5HLGDe3E1WMbsLCkQTczYNEt4', '2019-12-17 05:23:50', '2019-12-17 05:40:18'),
(2, 'Антонина', 'magconagan', '6666666666666', '$2y$10$L9jjaVpUxRHOLIDEs1UMluWHafGDzeqScSWpBo6LLu7FKyfSIfXS.', NULL, 'pvTkWDoYrtxnquMN8rv67ZluhxGnmP8To4SNeYZFdEE91Pig8ZXIYr2CtAB0sOPB33dS9XyFEPlycIsP', '2019-12-17 05:24:02', '2019-12-17 05:24:02'),
(3, 'Антонина', 'magconagan', '1231232131', '$2y$10$u6oPZLgg8VoQnukoPfVWnu0u9SU669.Q6KhCaQ/l3Fz/N85607V8C', '6YW6Q1IbRW5Jspt1WUVrGfJmQJC06NwEcLLmFML1fmBRnAoCg1Awtc28vMqGDWJ7PxKlrnxPGr84qddb', 'jacZJqE233xOXVRinySaRwLo2CfFdZSBTNftvh7Em1epu8tYmwZJVzXa6ktOCp4zntkJ1XvGsc0g7eMP', '2019-12-17 05:24:09', '2019-12-17 05:24:25');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `allowed_photos`
--
ALTER TABLE `allowed_photos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `photo_id` (`photo_id`);

--
-- Индексы таблицы `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `photos`
--
ALTER TABLE `photos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `photo_owner_id_index` (`owner_id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_api_token_unique` (`api_token`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `allowed_photos`
--
ALTER TABLE `allowed_photos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `photos`
--
ALTER TABLE `photos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `allowed_photos`
--
ALTER TABLE `allowed_photos`
  ADD CONSTRAINT `allowed_photos_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `allowed_photos_ibfk_2` FOREIGN KEY (`photo_id`) REFERENCES `photos` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `photos`
--
ALTER TABLE `photos`
  ADD CONSTRAINT `photo_owner_id_foreign` FOREIGN KEY (`owner_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
