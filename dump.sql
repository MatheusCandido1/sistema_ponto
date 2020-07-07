-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 07-Jul-2020 às 21:43
-- Versão do servidor: 10.4.11-MariaDB
-- versão do PHP: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `sistema_ponto_development`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `ar_internal_metadata`
--

CREATE TABLE `ar_internal_metadata` (
  `key` varchar(255) CHARACTER SET utf8 NOT NULL,
  `value` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `ar_internal_metadata`
--

INSERT INTO `ar_internal_metadata` (`key`, `value`, `created_at`, `updated_at`) VALUES
('environment', 'development', '2020-07-07 19:22:40', '2020-07-07 19:22:40');

-- --------------------------------------------------------

-- --------------------------------------------------------

--
-- Estrutura da tabela `users`
--

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `email` varchar(255) NOT NULL DEFAULT '',
  `encrypted_password` varchar(255) NOT NULL DEFAULT '',
  `reset_password_token` varchar(255) DEFAULT NULL,
  `reset_password_sent_at` datetime DEFAULT NULL,
  `remember_created_at` datetime DEFAULT NULL,
  `cpf` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `birth_date` date DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `role` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `users`
--

INSERT INTO `users` (`id`, `name`, `created_at`, `updated_at`, `email`, `encrypted_password`, `reset_password_token`, `reset_password_sent_at`, `remember_created_at`, `cpf`, `phone`, `birth_date`, `address`, `role`, `status`) VALUES
(1, 'Admin', '2020-07-07 19:24:35', '2020-07-07 19:24:35', 'admin@admin.com', '$2a$12$WHxpNu/5Auy40vsHMPygGOh5z01tgo1X8wgD7IpQALhRoFt7jWr2G', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1),
(2, 'Carlos Souza', '2020-07-07 19:26:17', '2020-07-07 19:26:17', 'carlos@email.com', '$2a$12$R74FSzduHtU7HTqjRsYInO8CGebtod0PLgJOpq0hPa1sXrJHDzXdC', NULL, NULL, NULL, '193.546.232-45', '(31) 98888-8888', '2000-01-01', 'Rua Y', 0, 1),
(3, 'Natalia Silva', '2020-07-07 19:36:50', '2020-07-07 19:36:50', 'natalia@email.com', '$2a$12$oVJ2HY4XBaJy9d7iBuNDj.Y4JMZ7DD97qCYEqap85tr4VHiUGV/RK', NULL, NULL, NULL, '353.453.222-03', '(31) 93245-2134', '1999-01-01', 'Rua W, 4933', 0, 1);


--
-- Estrutura da tabela `journeys`
--

CREATE TABLE `journeys` (
  `id` bigint(20) NOT NULL,
  `start_journey` datetime DEFAULT NULL,
  `end_journey` datetime DEFAULT NULL,
  `worked_hours` time DEFAULT NULL,
  `lunch_start` time DEFAULT NULL,
  `lunch_end` time DEFAULT NULL,
  `lunch_time` time DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `journeys`
--

INSERT INTO `journeys` (`id`, `start_journey`, `end_journey`, `worked_hours`, `lunch_start`, `lunch_end`, `lunch_time`, `user_id`, `created_at`, `updated_at`, `status`) VALUES
(1, '2020-06-29 08:30:00', '2020-06-29 20:35:00', '12:05:00', '11:40:00', '13:52:00', '02:12:00', 2, '2020-07-07 19:30:38', '2020-07-07 19:31:39', 1),
(2, '2020-06-30 09:31:00', '2020-06-30 21:32:00', '12:01:00', '13:20:00', '14:01:00', '00:41:00', 2, '2020-07-07 19:31:59', '2020-07-07 19:32:33', 1),
(3, '2020-07-01 07:32:00', '2020-07-01 21:33:00', '14:01:00', '12:32:00', '14:00:00', '01:28:00', 2, '2020-07-07 19:32:55', '2020-07-07 19:33:35', 1),
(4, '2020-07-02 07:39:00', '2020-07-02 20:31:00', '12:52:00', '11:49:00', '14:34:00', '02:45:00', 2, '2020-07-07 19:33:54', '2020-07-07 19:34:48', 1),
(5, '2020-07-03 07:41:00', '2020-07-03 16:35:00', '08:54:00', '12:20:00', '15:35:00', '03:15:00', 2, '2020-07-07 19:35:11', '2020-07-07 19:35:46', 1),
(6, '2020-07-06 08:00:00', '2020-07-06 19:30:00', '11:30:00', '12:00:00', '14:00:00', '02:00:00', 3, '2020-07-07 19:37:38', '2020-07-07 19:38:21', 1),
(7, '2020-07-07 08:11:00', '2020-07-07 18:39:00', '10:28:00', '11:57:00', '14:00:00', '02:03:00', 3, '2020-07-07 19:38:41', '2020-07-07 19:39:20', 1),
(8, '2020-07-08 08:45:00', '2020-07-08 17:40:00', '08:55:00', '11:40:00', '13:40:00', '02:00:00', 3, '2020-07-07 19:40:02', '2020-07-07 19:40:29', 1),
(9, '2020-07-09 09:10:00', '2020-07-08 19:41:00', '13:29:00', '12:46:00', '14:43:00', '01:57:00', 3, '2020-07-07 19:40:43', '2020-07-07 19:41:14', 1),
(10, '2020-07-10 07:41:00', '2020-07-10 16:41:00', '09:00:00', '11:41:00', '13:25:00', '01:44:00', 3, '2020-07-07 19:41:36', '2020-07-07 19:42:06', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `schema_migrations`
--

CREATE TABLE `schema_migrations` (
  `version` varchar(255) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `schema_migrations`
--

INSERT INTO `schema_migrations` (`version`) VALUES
('20200706183028'),
('20200706190207'),
('20200706190946'),
('20200706223636'),
('20200707162458');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `ar_internal_metadata`
--
ALTER TABLE `ar_internal_metadata`
  ADD PRIMARY KEY (`key`);

--
-- Índices para tabela `journeys`
--
ALTER TABLE `journeys`
  ADD PRIMARY KEY (`id`),
  ADD KEY `index_journeys_on_user_id` (`user_id`);

--
-- Índices para tabela `schema_migrations`
--
ALTER TABLE `schema_migrations`
  ADD PRIMARY KEY (`version`);

--
-- Índices para tabela `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `index_users_on_email` (`email`),
  ADD UNIQUE KEY `index_users_on_reset_password_token` (`reset_password_token`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `journeys`
--
ALTER TABLE `journeys`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `journeys`
--
ALTER TABLE `journeys`
  ADD CONSTRAINT `fk_rails_25c20fde60` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
