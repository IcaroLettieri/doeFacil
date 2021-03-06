-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 21-Jun-2019 às 19:38
-- Versão do servidor: 10.1.39-MariaDB
-- versão do PHP: 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pi2019`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `instituicao`
--

CREATE TABLE `instituicao` (
  `id_inst` int(10) UNSIGNED NOT NULL,
  `nome_inst` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `nome_respons` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `rua` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `numero` int(11) NOT NULL,
  `bairro` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `cidade` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `estado` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `telefone` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `celular` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `descricao` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `horario_abertura` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `horario_fechamento` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `cep` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `vistoria` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `instituicao`
--

INSERT INTO `instituicao` (`id_inst`, `nome_inst`, `nome_respons`, `rua`, `numero`, `bairro`, `cidade`, `estado`, `email`, `telefone`, `celular`, `descricao`, `horario_abertura`, `horario_fechamento`, `cep`, `vistoria`) VALUES
(15, 'Igreja Matriz de SÃ£o GonÃ§alo', 'Ãcaro Lettieri EmÃ­dio Pereira', 'PraÃ§a Silviano BrandÃ£o', 40, 'Centro', 'Contagem', 'MG', 'igreja.sao.goncalo@gmail.com', '(31) 3398-1504', '', 'Esta instituiÃ§Ã£o foi feita para agregar valor pa', '08:00', '17:00', '32017680', 1),
(16, 'ParÃ³quia Santa Cruz', 'LuÃ­s Otavio', 'PraÃ§a Pedro Lessa', 22, 'Vera Cruz', 'Belo Horizonte', 'MG', 'paroquia.santa.cruz@gmail.com', '(31) 3483-1133', '', 'Esta instituiÃ§Ã£o foi feita para agregar valor pa', '10:00', '19:00', '30285330', 1),
(17, 'CongregaÃ§Ã£o CristÃ£ no Brasil', 'Diego da Silva', 'Rua Padre JosÃ© Maria de Man', 1572, 'Monte Castelo', 'Contagem', 'MG', 'congregacao.cb@gmail.com', '(31)3301-2089', '(31)98805-3387', 'Esta igreja Ã© para realizar doaÃ§Ãµes para pessoa', '10:00', '17:00', '32285180', 1),
(18, 'E. E. Helena Guerra', 'Silas GonÃ§alves', 'Rua Madre Margherita Fontanarosa', 271, 'Eldorado', 'Contagem', 'MG', 'escola.8753@educacao.mg.gov.br', '(31) 3391-5620', '(31) 99876-5620', 'Essa escola esta unida na aÃ§Ã£o para fazer um bem', '07:00', '19:00', '32315180', 1),
(19, 'E. M. Ãpio Cardoso', 'Dener Ramos', 'Rua VL - 30', 30, 'Nova Contagem', 'Contagem', 'MG', 'apiocardoso@gmail.com', '(31) 3352-5773', '', '', '07:00', '19:00', '32050090', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(10) UNSIGNED NOT NULL,
  `nome` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `senha` varchar(32) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `usuarios`
--

INSERT INTO `usuarios` (`id`, `nome`, `email`, `senha`) VALUES
(1, 'teste', 'teste@teste.com', 'senha');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `instituicao`
--
ALTER TABLE `instituicao`
  ADD PRIMARY KEY (`id_inst`);

--
-- Indexes for table `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `instituicao`
--
ALTER TABLE `instituicao`
  MODIFY `id_inst` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
