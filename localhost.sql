-- phpMyAdmin SQL Dump
-- version 4.7.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: 27-Out-2022 às 18:26
-- Versão do servidor: 5.6.34
-- PHP Version: 5.6.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pagina_azul`
--
DROP DATABASE IF EXISTS `pagina_azul`;
CREATE DATABASE IF NOT EXISTS `pagina_azul` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `pagina_azul`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `administradores`
--

DROP TABLE IF EXISTS `administradores`;
CREATE TABLE `administradores` (
  `idAdmin` int(11) NOT NULL,
  `nome` varchar(30) NOT NULL,
  `senha` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `administradores`
--

INSERT INTO `administradores` (`idAdmin`, `nome`, `senha`) VALUES
(1, 'guilherme', '$2y$10$bdXjw14Xjx/rJiFhsHd06uwRU3wM0hW5oKWrYsvm22an0UrpoQqIe'),
(2, 'thiago', '$2y$10$bdXjw14Xjx/rJiFhsHd06uwRU3wM0hW5oKWrYsvm22an0UrpoQqIe'),
(3, 'matheus', '$2y$10$bdXjw14Xjx/rJiFhsHd06uwRU3wM0hW5oKWrYsvm22a...\r\n');

-- --------------------------------------------------------

--
-- Estrutura da tabela `anunciante`
--

DROP TABLE IF EXISTS `anunciante`;
CREATE TABLE `anunciante` (
  `idAnunciante` int(11) NOT NULL,
  `nome` varchar(30) NOT NULL,
  `CNPJ` char(18) DEFAULT NULL,
  `email` varchar(30) NOT NULL,
  `website` varchar(1000) DEFAULT NULL,
  `descricao` varchar(1000) DEFAULT NULL,
  `idPlano` int(11) NOT NULL,
  `idCategoria` int(11) NOT NULL,
  `facebook` varchar(60) DEFAULT NULL,
  `instagram` varchar(60) DEFAULT NULL,
  `telefone` varchar(15) DEFAULT NULL,
  `celular` varchar(15) DEFAULT NULL,
  `whatsapp` varchar(15) DEFAULT NULL,
  `idCidade` int(11) DEFAULT NULL,
  `CEP` char(9) DEFAULT NULL,
  `bairro` varchar(20) DEFAULT NULL,
  `rua` varchar(30) DEFAULT NULL,
  `numero` varchar(3) DEFAULT NULL,
  `imgAnuncioP` varchar(50) NOT NULL,
  `imgAnuncioG` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `anunciante`
--

INSERT INTO `anunciante` (`idAnunciante`, `nome`, `CNPJ`, `email`, `website`, `descricao`, `idPlano`, `idCategoria`, `facebook`, `instagram`, `telefone`, `celular`, `whatsapp`, `idCidade`, `CEP`, `bairro`, `rua`, `numero`, `imgAnuncioP`, `imgAnuncioG`) VALUES
(1, 'DJ BOOMKITTY', '01.778.130/1000-48', 'djboomkitty@gmail.com', NULL, 'DJ BOOMKITTY, o maior e melhor DJ da região. Agendamos festas e eventos. Com mais de 15 anos de trabalho, somos especializados em som e iluminação. Contate-nos para um momento inesquecível. § festa dj música evento ', 3, 1, 'facebook.com/DJBOOMKITTY', 'instagram.com/DJBOOMKITTY', '92298435', '19992298435', '19992298435', 1, '6789-635', 'Descanso', 'Rua Nicolau Paione', '403', 'djboomkittyP.png', 'djboomkitty.png'),
(2, 'Fire Design', '02.778.130/2000-48', 'firedesign@contato.com', NULL, 'Lorem ipsum dolor sit amet consectetur adipisicing elit.', 1, 1, 'facebook.com/firedesign', 'instagram.com/firedesign', '92298435', '19992298435', '19992298435', 2, '6789-635', 'Descanso', 'Rua Nicolau Paione', '403', 'firedesignP.png', 'firedesign.png'),
(3, 'Ghost Dash', '03.778.130/3000-48', 'ghostdash@gmail.com', NULL, 'Lorem ipsum dolor sit amet consectetur adipisicing elit.', 2, 1, 'facebook.com/ghostdash', 'instagram.com/ghostdash', '92298435', '19992298435', '19992298435', 3, '6789-635', 'Descanso', 'Rua Nicolau Paione', '403', 'ghostdashP.png', 'ghostdash.png'),
(4, 'Hill Top Co-op', '04.778.130/0001-48', 'hilltopcoop@contato.com', NULL, 'Lorem ipsum dolor sit amet consectetur adipisicing elit.', 2, 1, 'facebook.com/hilltopcoop', 'instagram.com/hilltopcoop', '92298435', '19992298435', '19992298435', 1, '6789-635', 'Descanso', 'Rua Nicolau Paione', '403', 'hilltopcoopP.png', 'hilltopcoop.png'),
(5, 'Museum', '05.778.130/0001-48', 'museum@outlook.com', NULL, 'Lorem ipsum dolor sit amet consectetur adipisicing elit.', 1, 2, 'facebook.com/museum', 'instagram.com/museum', '92298435', '19992298435', '19992298435', 1, '6789-635', 'Descanso', 'Rua Nicolau Paione', '403', 'museumP.png', 'museum.png'),
(6, 'Orland Groves', '06.778.130/0001-48', 'orlandgroves@gmail.com', NULL, 'Lorem ipsum dolor sit amet consectetur adipisicing elit.', 2, 2, 'facebook.com/orlandgroves', 'instagram.com/orlandgroves', '92298435', '19992298435', '19992298435', 1, '6789-635', 'Descanso', 'Rua Nicolau Paione', '403', 'orlandgrovesP.png', 'orlandgroves.png'),
(7, 'Ryan Keller Pharmacy', '07.778.130/0001-48', 'ryankellerpharmacy@sac.com', NULL, 'Lorem ipsum dolor sit amet consectetur adipisicing elit.', 2, 3, 'facebook.com/ryankellerpharmacy', 'instagram.com/ryankellerpharmacy', '92298435', '19992298435', '19992298435', 1, '6789-635', 'Descanso', 'Rua Nicolau Paione', '403', 'ryankellerpharmacyP.png', 'ryankellerpharmacy.png'),
(8, 'The Atomic Club', '08.778.130/0001-48', 'atomicclub@hotmail.com', NULL, 'Lorem ipsum dolor sit amet consectetur adipisicing elit.', 2, 5, 'facebook.com/theatomicclub', 'instagram.com/theatomicclub', '92298435', '19992298435', '19992298435', 1, '6789-635', 'Descanso', 'Rua Nicolau Paione', '403', 'theatomicclubP.png', 'theatomicclub.png'),
(9, 'Uncle Louies Pizzeria', '09.778.130/0001-48', 'unclelouiespizza@gmail.com', NULL, 'Nós da Pizzaria Uncle Louies fazemos as melhores pizzas de Mococa e região. As pizzas são feitas a mão pelos nosso melhores chefes e assadas no forno a lenha. Está com fome? Então venha nos conhecer. § pizza pizzaria restaurante comida alimentação alimento ', 3, 1, 'facebook.com/unclelouiespizzeria', 'instagram.com/unclelouiespizzeria', '92298435', '19992298435', '19992298435', 1, '6789-635', 'Descanso', 'Rua Nicolau Paione', '403', 'unclelouiespizzeriaP.png', 'unclelouiespizzeria.png'),
(10, 'Yurt', '10.778.130/0001-48', 'sac@yurt.com', NULL, 'Lorem ipsum dolor sit amet consectetur adipisicing elit.', 3, 1, 'facebook.com/yurt', 'instagram.com/yurt', '92298435', '19992298435', '19992298435', 1, '6789-635', 'Descanso', 'Rua Nicolau Paione', '403', 'yurtP.png', 'yurt.png'),
(11, 'Ponto Barato', NULL, 'arthurrafaeltcc00@gmail.com', 'http://rafael.projetosfreelancer.com.br', 'O Ponto Barato é um E-Commerce com os preços mais acessíveis possíveis do mercado. Fazemos isso Trabalhando Com Fornecedores Nacionais de Extrema Confiança que trabalham com os melhores materiais usados hoje em dia em Peças de Vestuário, Venha Conhecer nosso Catálogo no Botão abaixo. § moda calçado camisetas camisas ténis jaqueta roupa estilo look ', 3, 7, NULL, NULL, NULL, '35997733094', '35997733094', NULL, NULL, NULL, NULL, NULL, 'pontobaratoP.png', 'pontobarato.png'),
(12, 'Amigos Caridosos', NULL, 'amigoscaridososs@gmail.com', 'http://amigoscaridosos.projetosetim.com.br', 'A Amigos Caridosos é uma plataforma de doações online, cujo proposito é ajudar pessoas carentes e que necessitam de ajuda por meio de parcerias com instituições filantrópicas, arrecadando recursos para doar de forma prática e eficiente. § ONG caridade doação doar org instituição doações instituições', 3, 13, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'amigoscaridososP.png', 'amigoscaridosos.png'),
(13, 'Medic On', NULL, 'a@a', NULL, ' § medicina medico saúde terapia ', 3, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'mediconP.png', 'medicon.png'),
(15, 'Rota 66', NULL, 'a@a', 'http://rota66.projetosetim.com.br', ' § roupa moda camiseta calça loja manto esportiva acessórios bermudas shorts futebol ', 3, 7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'rota66P.png', 'rota66.png'),
(17, 'Vetclin PetShop', NULL, 'etecgrupo9tcc@gmail.com', NULL, ' § pet veterinário animal ração cachorro gato petshop pet shop', 3, 8, NULL, NULL, NULL, '19981335387', '19981335387', NULL, NULL, NULL, NULL, NULL, 'vetclinP.png', 'vetclin.png');

-- --------------------------------------------------------

--
-- Estrutura da tabela `categorias`
--

DROP TABLE IF EXISTS `categorias`;
CREATE TABLE `categorias` (
  `idCategoria` int(11) NOT NULL,
  `nome` varchar(30) NOT NULL,
  `icone` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `categorias`
--

INSERT INTO `categorias` (`idCategoria`, `nome`, `icone`) VALUES
(1, 'Alimentação', 'alimentacao.svg'),
(2, 'Educação', 'educacao.svg'),
(3, 'Saúde', 'saude.svg'),
(4, 'Construção', 'construcao.svg'),
(5, 'Imobiliária', 'imobiliaria.svg'),
(6, 'Automotivo', 'automotivo.svg'),
(7, 'Moda', 'moda.svg'),
(8, 'Pet', 'pet.svg'),
(9, 'Turismo', 'turismo.svg'),
(10, 'Perfumaria', 'perfumaria.svg'),
(11, 'Esportes', 'esporte.svg'),
(12, 'Floricultura', 'floricultura.svg'),
(13, 'ONG', 'ong.svg');

-- --------------------------------------------------------

--
-- Estrutura da tabela `cidades`
--

DROP TABLE IF EXISTS `cidades`;
CREATE TABLE `cidades` (
  `idCidade` int(11) NOT NULL,
  `nome` varchar(60) NOT NULL,
  `estado` char(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `cidades`
--

INSERT INTO `cidades` (`idCidade`, `nome`, `estado`) VALUES
(1, 'Mococa', 'SP'),
(2, 'Tapiratiba', 'SP'),
(3, 'Arceburgo', 'MG');

-- --------------------------------------------------------

--
-- Estrutura da tabela `planos`
--

DROP TABLE IF EXISTS `planos`;
CREATE TABLE `planos` (
  `idPlano` int(11) NOT NULL,
  `nome` varchar(15) NOT NULL,
  `descricao` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `planos`
--

INSERT INTO `planos` (`idPlano`, `nome`, `descricao`) VALUES
(1, 'Gratuito', 'Plano padrão'),
(2, 'Médio', 'Pago que da acesso ás imagens'),
(3, 'Destaque', 'Pago que da acesso ás imagens');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `administradores`
--
ALTER TABLE `administradores`
  ADD PRIMARY KEY (`idAdmin`);

--
-- Indexes for table `anunciante`
--
ALTER TABLE `anunciante`
  ADD PRIMARY KEY (`idAnunciante`),
  ADD UNIQUE KEY `nome` (`nome`),
  ADD KEY `idPlano` (`idPlano`),
  ADD KEY `idCategoria` (`idCategoria`),
  ADD KEY `idCidade` (`idCidade`);

--
-- Indexes for table `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`idCategoria`),
  ADD UNIQUE KEY `nome` (`nome`);

--
-- Indexes for table `cidades`
--
ALTER TABLE `cidades`
  ADD PRIMARY KEY (`idCidade`);

--
-- Indexes for table `planos`
--
ALTER TABLE `planos`
  ADD PRIMARY KEY (`idPlano`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `administradores`
--
ALTER TABLE `administradores`
  MODIFY `idAdmin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `anunciante`
--
ALTER TABLE `anunciante`
  MODIFY `idAnunciante` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `categorias`
--
ALTER TABLE `categorias`
  MODIFY `idCategoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `cidades`
--
ALTER TABLE `cidades`
  MODIFY `idCidade` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `planos`
--
ALTER TABLE `planos`
  MODIFY `idPlano` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `anunciante`
--
ALTER TABLE `anunciante`
  ADD CONSTRAINT `idCategoria` FOREIGN KEY (`idCategoria`) REFERENCES `categorias` (`idCategoria`),
  ADD CONSTRAINT `idCidade` FOREIGN KEY (`idCidade`) REFERENCES `cidades` (`idCidade`),
  ADD CONSTRAINT `idPlano` FOREIGN KEY (`idPlano`) REFERENCES `planos` (`idPlano`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
