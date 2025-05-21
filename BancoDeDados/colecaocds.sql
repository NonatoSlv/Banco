-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 21/05/2025 às 22:09
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `colecaocds`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `cds`
--

CREATE TABLE `cds` (
  `Codigo` int(11) NOT NULL,
  `Nome_cd` varchar(100) NOT NULL,
  `DataCompra` date DEFAULT NULL,
  `ValorPago` decimal(10,2) DEFAULT NULL,
  `LocalCompra` varchar(100) DEFAULT NULL,
  `Album` enum('Sim','Não') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `cds`
--

INSERT INTO `cds` (`Codigo`, `Nome_cd`, `DataCompra`, `ValorPago`, `LocalCompra`, `Album`) VALUES
(1, 'Rock Clássico', '2025-05-10', 50.00, 'Submarino', 'Sim'),
(2, 'Jazz Essentials', '2025-05-11', 45.00, 'Amazon', 'Sim'),
(3, 'Pop Hits', '2025-05-12', 60.00, 'Submarino', 'Não'),
(4, 'Sertanejo Raiz', '2025-05-13', 40.00, 'Americanas', 'Sim'),
(5, 'Indie Vibes', '2025-05-14', 55.00, 'Mercado Livre', 'Não');

-- --------------------------------------------------------

--
-- Estrutura para tabela `musicas`
--

CREATE TABLE `musicas` (
  `CodigoCD` int(11) NOT NULL,
  `Numero_musica` int(11) NOT NULL,
  `Nome_musica` varchar(100) NOT NULL,
  `Artista` varchar(100) DEFAULT NULL,
  `Tempo` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `musicas`
--

INSERT INTO `musicas` (`CodigoCD`, `Numero_musica`, `Nome_musica`, `Artista`, `Tempo`) VALUES
(1, 1, 'Bohemian Rhapsody', 'Queen', '00:05:55'),
(1, 2, 'Stairway to Heaven', 'Led Zeppelin', '00:08:02'),
(1, 3, 'Smoke on the Water', 'Deep Purple', '00:05:40'),
(2, 1, 'Take Five', 'Dave Brubeck', '00:05:24'),
(2, 2, 'So What', 'Miles Davis', '00:09:04'),
(2, 3, 'My Favorite Things', 'John Coltrane', '00:13:41'),
(3, 1, 'Blinding Lights', 'The Weeknd', '00:03:20'),
(3, 2, 'Levitating', 'Dua Lipa', '00:03:23'),
(3, 3, 'As It Was', 'Harry Styles', '00:02:47'),
(4, 1, 'Evidências', 'Chitãozinho & Xororó', '00:04:50'),
(4, 2, 'Telefone Mudo', 'Trio Parada Dura', '00:03:30'),
(4, 3, 'Fio de Cabelo', 'Chitãozinho & Xororó', '00:03:45'),
(5, 1, 'Sweater Weather', 'The Neighbourhood', '00:04:00'),
(5, 2, 'Electric Feel', 'MGMT', '00:03:50'),
(5, 3, 'Do I Wanna Know?', 'Arctic Monkeys', '00:04:32');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `cds`
--
ALTER TABLE `cds`
  ADD PRIMARY KEY (`Codigo`);

--
-- Índices de tabela `musicas`
--
ALTER TABLE `musicas`
  ADD PRIMARY KEY (`CodigoCD`,`Numero_musica`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `cds`
--
ALTER TABLE `cds`
  MODIFY `Codigo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `musicas`
--
ALTER TABLE `musicas`
  ADD CONSTRAINT `musicas_ibfk_1` FOREIGN KEY (`CodigoCD`) REFERENCES `cds` (`Codigo`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
