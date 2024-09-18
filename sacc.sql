-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 17-Out-2023 às 12:03
-- Versão do servidor: 10.4.28-MariaDB
-- versão do PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `sacc`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `marca`
--

CREATE TABLE `marca` (
  `id` int(11) NOT NULL,
  `marca` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `marca`
--

INSERT INTO `marca` (`id`, `marca`) VALUES
(1, 'AMD'),
(2, 'Intel'),
(3, 'Nvidia'),
(4, 'Kingston'),
(5, 'XPG'),
(6, 'Geil'),
(7, 'G.Skill'),
(8, 'Hikvision'),
(9, 'Adata Legend'),
(10, 'WD Red'),
(11, 'WD Blue'),
(12, 'Cooler Master'),
(13, 'RiseMode'),
(14, 'DeepCool'),
(15, 'C3TECH'),
(16, 'Seagate'),
(17, 'WD'),
(18, 'Montech'),
(19, 'Gamdias'),
(20, 'Thermaltake'),
(21, 'MSI'),
(22, 'Corsair'),
(23, 'Gigabyte');

-- --------------------------------------------------------

--
-- Estrutura da tabela `peca`
--

CREATE TABLE `peca` (
  `id` int(11) NOT NULL,
  `modelo` varchar(255) NOT NULL,
  `tipodepeca_id` int(11) DEFAULT NULL,
  `marca_id` int(11) DEFAULT NULL,
  `fabricante` varchar(255) NOT NULL,
  `imagem` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `peca`
--

INSERT INTO `peca` (`id`, `modelo`, `tipodepeca_id`, `marca_id`, `fabricante`, `imagem`) VALUES
(1, 'Processador AMD Ryzen 5 4600G', 1, 1, 'AMD', 'Processador.png'),
(2, 'Processador AMD Ryzen 3 4100', 1, 1, 'AMD', 'Processador.png'),
(3, 'Processador AMD Ryzen 7 5700G', 1, 1, 'AMD', 'Processador.png'),
(4, 'Processador AMD Ryzen 9 5900X', 1, 1, 'AMD', 'Processador.png'),
(5, 'Processador Intel Core i3-10100F', 1, 2, 'Intel', 'Processador.png'),
(6, 'Processador Intel Core i5-12400', 1, 2, 'Intel', 'Processador.png'),
(7, 'Processador Intel Core I7-10700F', 1, 2, 'Intel', 'Processador.png'),
(8, 'Processador Intel Core i9-10900K', 1, 2, 'Intel', 'Processador.png'),
(9, 'Placa de video AMD GPU HD 6570', 2, 3, 'PCYES', 'Placa de video.png'),
(10, 'Placa De Vídeo PowerColor AMD Radeon RX 6400 ITX', 2, 3, 'PowerColor', 'Placa de video.png'),
(11, 'Placa De Vídeo Asus AMD Radeon RX 7600 OC Edition, 8GB, GDDR6, FSR, Ray Tracing, 90YV0IH1-', 2, 3, 'Asus', 'Placa de video.png'),
(12, 'Placa De Vídeo ASRock AMD Radeon RX 6650 XT Steel Legend OC, 8GB, GDDR6, FSR, Ray Tracing,', 2, 3, 'ASRock', 'Placa de video.png'),
(13, 'Placa De Vídeo PNY NVIDIA GeForce RTX 4060 VERTO Dual Fan', 2, 4, 'PNY', 'Placa de video.png'),
(14, 'Placa De Vídeo Galax NVIDIA GeForce RTX 3050 EX (1-Click OC)', 2, 5, 'Galax', 'Placa de video.png'),
(15, 'Placa De Vídeo MSI NVIDIA GeForce RTX 3060 VENTUS 2X OC', 2, 6, 'MSI', 'Placa de video.png'),
(16, 'Placa De Vídeo Palit NVIDIA GeForce RTX 3060 Dual', 2, 7, 'Palit', 'Placa de video.png'),
(17, 'Memória Ram DDR4 Kingston Fury SuperFrame, 8GB, 3200Mhz', 3, 8, 'Kingston', 'Memoria Ram.png'),
(18, 'Memória DDR4 XPG GAMMIX D35, 16GB, 3200Mhz', 3, 9, 'XPG', 'Memoria Ram.png'),
(19, 'Memória DDR4 Geil Orion, 8GB, 3200MHz, Gray, GAOG48GB3200C22SC', 3, 10, 'Geil', 'Memoria Ram.png'),
(20, 'Memória DDR4 Kingston Fury Beast, 8GB, 3200Mhz, Black', 3, 8, 'Kingston', 'Memoria Ram.png'),
(21, 'Memória DDR5 G.Skill Ripjaws S5, 32GB (2x16GB), 5200MHz, White, F5-5200J3636C16GX2-RS5W', 3, 11, 'G.Skill', 'Memoria Ram.png'),
(22, 'Memória DDR5 Kingston Fury Beast, RGB, 32GB, 5600Mhz, White', 3, 8, 'Kingston', 'Memoria Ram.png'),
(23, 'Memória DDR5 Geil Polaris RGB, 32GB (2x16GB), 5200MHz, White', 3, 10, 'Geil', 'Memoria Ram.png'),
(24, 'Memória DDR5 Geil Polaris, 32GB (2x16GB), 4800MHz, Red', 3, 10, 'Geil', 'Memoria Ram.png'),
(25, 'Memória DDR5 Kingston FURY Beast, 8GB, 4800MHz, Black', 3, 8, 'Kingston', 'Memoria Ram.png'),
(26, 'SSD Kingston NV2, 1TB, M.2 NVMe, 2280', 4, 8, 'Kingston', 'Disco Sólido.png'),
(27, 'SSD Hikvision C100, 120GB, Sata III', 4, 12, 'Hikivisoin', 'Disco Sólido.png'),
(28, 'SSD Adata Legend 800, 500GB, M.2 2280 NVMe', 4, 13, 'Adata Legend', 'Disco Sólido.png'),
(29, 'SSD WD_Red SA500, 4TB, Sata III', 4, 14, 'WD Red', 'Disco Sólido.png'),
(30, 'SSD WD Blue, 2TB, M.2 2280, Sata', 4, 15, 'WD Blue', 'Disco Sólido.png'),
(31, 'SSD Kingston A400, 120GB, Sata III', 4, 8, 'Kingston', 'Disco Sólido.png'),
(32, 'Placa Mãe Asus TUF Gaming Z690-Plus D4, Chipset Z690, Intel LGA 1700, ATX, DDR4', 5, 2, 'Asus', 'Placa Mãe.png'),
(33, 'Placa Mãe Biostar H610MX-E, Chipset H610, Intel LGA 1700, MATX, DDR4', 5, 3, 'Biostar', 'Placa Mãe.png'),
(34, 'Placa Mãe MSI B760 Gaming Plus Wi-Fi, Chipset B760, Intel LGA 1700, ATX', 5, 6, 'MSI', 'Placa Mãe.png'),
(35, 'Placa Mãe ASRock H610M-HVS, Chipset H610, Intel LGA 1700, MATX, DDR4', 5, 7, 'ASRock', 'Placa Mãe.png'),
(36, 'Placa Mãe Asus TUF Gaming B650M-PLUS, Chipset B650, AMD AM5, MATX, DDR5', 5, 2, 'Asus', 'Placa Mãe.png'),
(37, 'Placa Mãe Asus Prime A620M-A, Chipset A620, AMD AM5, MATX, DDR5', 5, 2, 'Asus', 'Placa Mãe.png'),
(38, 'Placa Mãe ASRock B650M PG Riptide, Chipset B650, MATX, AMD AM5, DDR5', 5, 7, 'ASRock', 'Placa Mãe.png'),
(39, 'Placa Mãe Gigabyte B650 Gaming X, Chipset B650, AMD AM5, ATX, DDR5', 5, 23, 'Gigabyte', 'Placa Mãe.png'),
(40, 'Placa Mãe ASUS Prime B550M-K, Chipset B550, AMD AM4, MATX, DDR4', 5, 2, 'Asus', 'Placa Mãe.png'),
(41, 'Placa Mãe Biostar B450MHP, Chipset B450, AMD AM4, MATX, DDR4', 5, 3, 'Biostar', 'Placa Mãe.png'),
(42, 'Placa Mãe MSI B560M PRO-E, Chipset B560, Intel LGA 1200, M-ATX, DDR4', 5, 6, 'MSI', 'Placa Mãe.png'),
(43, 'Placa Mãe Biostar H510MH 2.0, Chipset H510, Intel LGA 1200, MATX, DDR4', 5, 3, 'Biostar', 'Placa Mãe.png'),
(44, 'Cooler Gamer para Processador Rise Mode Z3, AMD/Intel', 6, 16, 'RiseMode', 'Cooler.png'),
(45, 'Cooler para Processador DeepCool Gammaxx 400 V2 Blue ｜ DP-MCH4-GMX400V2-BL', 6, 17, 'DeepCool', 'Cooler.png'),
(46, 'Cooler para Processador Cooler Master Hyper H412R ｜ RR-H412-20PK-R2', 6, 18, 'Cooler Master', 'Cooler.png'),
(47, 'Air Cooler Rise Mode Gamer G800, 180mm, RGB', 6, 16, 'RiseMode', 'Cooler.png'),
(48, 'Cooler Fan C3Tech F7', 6, 19, 'C3TECH', 'Cooler.png'),
(49, 'Cooler para Processador Gamer Rise Mode Z5, LED Rainbow, Intel e AMD, 90mm', 6, 16, 'RiseMode', 'Cooler.png'),
(50, 'Air Cooler Rise Mode Gamer G200, 120mm, RGB', 6, 16, 'RiseMode', 'Cooler.png'),
(51, 'Cooler para Processador Gamer Rise Mode X5, LED Rainbow, Intel e AMD', 6, 16, 'RiseMode', 'Cooler.png'),
(52, 'Cooler para Processador Gamer Rise Mode X1, Intel, 90mm', 6, 16, 'RiseMode', 'Cooler.png'),
(53, 'Cooler para Processador Gamer Rise Mode X5, Intel e AMD, 120mm, Preto e Branco', 6, 16, 'RiseMode', 'Cooler.png'),
(54, 'Cooler para Processador Gamer Rise Mode X5, LED Azul, Intel e AMD, 120mm', 6, 16, 'RiseMode', 'Cooler.png'),
(55, 'Water Cooler Gamer Rise Mode Aura Ice, ARGB, 120mm, Intel e AMD, Branco', 6, 16, 'RiseMode', 'Cooler.png'),
(56, 'Cooler Para Processador Rise Mode, ARGB, Dual FAN 120mm', 6, 16, 'RiseMode', 'Cooler.png'),
(57, 'Cooler Fan Gaming F7-L120M', 6, 20, 'C3TECH', 'Cooler.png'),
(58, 'Air Cooler Rise Mode Gamer Z4, 120mm, Branco', 6, 16, 'RiseMode', 'Cooler.png'),
(59, 'Air Cooler Master Hyper 212 RGB Black Edition', 6, 21, 'Master', 'Cooler.png'),
(60, 'Cooler para Processador Rise Mode Z2, AMD/Intel, Preto', 6, 16, 'RiseMode', 'Cooler.png'),
(61, 'Fan para Gabinete Cooler Master MF120L', 6, 22, 'cooler master', 'Cooler.png'),
(62, 'HD Externo Seagate Expansion, 4TB, USB', 8, 23, 'Seagate', 'Gabinete.png'),
(63, 'FAN Cooler ARGB Rise Mode Coo', 6, 16, 'Rise Mode', 'Cooler.png'),
(64, 'Cooler Fan C3Tech F7L130RD Storm', 6, 19, 'C3TECH', 'Cooler.png'),
(65, 'HD Externo Seagate Expansion, 4TB, USB, Preto', 8, 23, 'Seagate', 'Gabinete.png'),
(66, 'HD WD Red Plus, 4TB, 5400 RPM, 3.5\', SATA', 8, 14, 'WD Red', 'Gabinete.png'),
(67, 'HD Seagate IronWolf 4TB NAS, 3.5\", SATA', 8, 23, 'Seagate', 'Gabinete.png'),
(68, 'HD WD Red 4TB NAS, 3.5\', SATA, NAS/RAID - WD40EFAX', 8, 14, 'WD Red', 'Gabinete.png'),
(69, 'Gabinete Gamer SuperFrame Storm, Mid Tower, RGB, Vidro Temperado, ATX, Sem Fonte, Com 3 Fans', 9, 24, 'SuperFrame', 'Fonte.png'),
(70, 'Gabinete Gamer Montech x3 Glass, Mid Tower, White, ATX, 6 Fans, Vidro Temperado', 9, 25, 'Montech', 'Fonte.png'),
(71, 'Gabinete Gamer Gamdias Argus E4 Elite, RGB, Mid Tower, Vidro Temperado, Black, Sem fonte, Sem Fan', 9, 26, 'Gamdias', 'Fonte.png'),
(72, 'Gabinete Gamer Thermaltake Core P6 TG, Snow, Mid Tower, Vidro Temperado, ATX, Sem Fonte, Sem Fan, CA-1V2-00M6WN-00', 9, 27, 'Thermaltake', 'Fonte.png'),
(73, 'Fonte MSI MAG A650BN, ATX, 650W, 80 PLUS Bronze, PFC Ativo, Entrada Bivolt, Preto - 306-7ZP2B22-CE0', 10, 28, 'MSI', NULL),
(74, 'Fonte MSI MAG A550BN, ATX, 550W, 80 PLUS Bronze, PFC Ativo, Entrada Bivolt, Preto - 306-7ZP2A22-CE0', 10, 28, 'MSI', NULL),
(75, 'Fonte Corsair CV550, 550W, 80 Plus Bronze - CP-9020210-BR', 10, 29, 'Corsair', NULL),
(76, 'Fonte Gigabyte 650W, 80 Plus Bronze - GP-P650B/BR', 10, 30, 'Gigabyte', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `peca_tipodeuso`
--

CREATE TABLE `peca_tipodeuso` (
  `peca_id` int(11) NOT NULL,
  `tipodeuso_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `peca_tipodeuso`
--

INSERT INTO `peca_tipodeuso` (`peca_id`, `tipodeuso_id`) VALUES
(1, 2),
(2, 1),
(5, 3),
(6, 2),
(9, 4),
(10, 5),
(15, 6),
(16, 1),
(20, 7),
(21, 8),
(25, 2),
(26, 3),
(31, 4),
(32, 5),
(37, 6),
(38, 1),
(43, 2),
(44, 3),
(49, 4),
(50, 5),
(55, 6);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tipodeuso`
--

CREATE TABLE `tipodeuso` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `tipodeuso`
--

INSERT INTO `tipodeuso` (`id`, `nome`) VALUES
(1, 'jogar'),
(2, 'editar vídeo'),
(3, 'trabalho de escritório'),
(4, 'navegação na web'),
(5, 'assistir filmes'),
(6, 'edição de fotos'),
(7, 'programação'),
(8, 'Uso Geral'),
(9, 'Gaming'),
(10, 'Design Gráfico'),
(11, 'Edição de Vídeo'),
(12, 'Desenvolvimento de Software'),
(13, 'Mineração de Criptomoedas'),
(14, 'Uso Doméstico'),
(15, 'Escritório'),
(16, 'Uso Geral'),
(17, 'Gaming'),
(18, 'Design Gráfico'),
(19, 'Edição de Vídeo'),
(20, 'Desenvolvimento de Software'),
(21, 'Mineração de Criptomoedas'),
(22, 'Uso Doméstico'),
(23, 'Escritório');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tipo_de_peca`
--

CREATE TABLE `tipo_de_peca` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `tipo_de_peca`
--

INSERT INTO `tipo_de_peca` (`id`, `nome`) VALUES
(1, 'Processador'),
(2, 'Placa de video'),
(3, 'Memoria Ram'),
(4, 'Disco Sólido'),
(5, 'Placa Mãe'),
(6, 'Cooler'),
(7, 'Disco Rígido'),
(8, 'Gabinete'),
(9, 'Fonte');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `marca`
--
ALTER TABLE `marca`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `peca`
--
ALTER TABLE `peca`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tipodepeca_id` (`tipodepeca_id`),
  ADD KEY `marca_id` (`marca_id`);

--
-- Índices para tabela `peca_tipodeuso`
--
ALTER TABLE `peca_tipodeuso`
  ADD PRIMARY KEY (`peca_id`,`tipodeuso_id`),
  ADD KEY `tipodeuso_id` (`tipodeuso_id`);

--
-- Índices para tabela `tipodeuso`
--
ALTER TABLE `tipodeuso`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `tipo_de_peca`
--
ALTER TABLE `tipo_de_peca`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `marca`
--
ALTER TABLE `marca`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT de tabela `peca`
--
ALTER TABLE `peca`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT de tabela `tipodeuso`
--
ALTER TABLE `tipodeuso`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT de tabela `tipo_de_peca`
--
ALTER TABLE `tipo_de_peca`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `peca`
--
ALTER TABLE `peca`
  ADD CONSTRAINT `peca_ibfk_1` FOREIGN KEY (`tipodepeca_id`) REFERENCES `tipo_de_peca` (`id`),
  ADD CONSTRAINT `peca_ibfk_2` FOREIGN KEY (`marca_id`) REFERENCES `marca` (`id`);

--
-- Limitadores para a tabela `peca_tipodeuso`
--
ALTER TABLE `peca_tipodeuso`
  ADD CONSTRAINT `peca_tipodeuso_ibfk_1` FOREIGN KEY (`peca_id`) REFERENCES `peca` (`id`),
  ADD CONSTRAINT `peca_tipodeuso_ibfk_2` FOREIGN KEY (`tipodeuso_id`) REFERENCES `tipodeuso` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
