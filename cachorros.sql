-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 24-Nov-2022 às 16:13
-- Versão do servidor: 10.4.17-MariaDB
-- versão do PHP: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `animais`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `cachorros`
--

CREATE TABLE `cachorros` (
  `ID` int(11) NOT NULL,
  `Nome` varchar(100) NOT NULL,
  `Caracteristicas` varchar(100) NOT NULL,
  `Imagem` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `cachorros`
--

INSERT INTO `cachorros` (`ID`, `Nome`, `Caracteristicas`, `Imagem`) VALUES
(1, 'Akita', 'Leal, amigo e brincalhao', 'https://static1.patasdacasa.com.br/articles/4/33/4/@/1000-conheca-tudo-sobre-o-cachorro-akita-inu-articles_media_mobile-2.jpg'),
(2, 'Basset hound', 'Paciente, teimoso e charmoso', 'https://diariodonordeste.verdesmares.com.br/image/contentid/policy:1.3268532:1660848472/Basset-Hound.jpg?f=16x9&h=720&q=0.8&w=1280&$p$f$h$q$w=5386dc1'),
(3, 'Beagle', 'Alegre, companheiro e aventureiro', 'https://upload.wikimedia.org/wikipedia/commons/thumb/b/b7/Beagle_Faraon.JPG/1200px-Beagle_Faraon.JPG'),
(4, 'Bichon frisé', 'Brincalhao, curioso e afetivo', 'https://upload.wikimedia.org/wikipedia/commons/thumb/9/93/Bichon_Fris%C3%A9_-_studdogbichon.jpg/640px-Bichon_Fris%C3%A9_-_studdogbichon.jpg'),
(5, 'Boiadeiro australiano', 'Alerta, curioso e leal', 'https://s2.glbimg.com/aV3fr5e5w5TV4D-OheSHFqMZaEY=/e.glbimg.com/og/ed/f/original/2019/02/04/c__ChmU4Kb.jpg'),
(6, 'Border collie', 'Inteligente, leal e cheio de energia', 'https://www.infoescola.com/wp-content/uploads/2010/08/border-collie_593634296.jpg'),
(7, 'Boston terrier', 'Amigável, inteligente e vivaz', 'https://upload.wikimedia.org/wikipedia/commons/thumb/f/fe/BOSTON_TERRIER%2C_Ving%C3%A5rdens_Essi_von_Richards_%2823995273800%29.2.jpg/800px-BOSTON_TERRIER%2C_Ving%C3%A5rdens_Essi_von_Richards_%2823995273800%29.2.jpg'),
(8, 'Boxer', 'Leal, afetuoso e brincalhão', 'https://upload.wikimedia.org/wikipedia/commons/thumb/8/8d/1._Brindle_boxer_dog%2C_female.jpg/1200px-1._Brindle_boxer_dog%2C_female.jpg'),
(9, 'Buldogue francês', 'Carinhoso, leal e brincalhão', 'https://upload.wikimedia.org/wikipedia/commons/thumb/e/e4/A_French_Bulldog.jpg/1200px-A_French_Bulldog.jpg'),
(10, 'Buldogue inglês', 'Calmo, divertido e dócil', 'https://upload.wikimedia.org/wikipedia/commons/thumb/e/e9/CH_Buck_and_Sons_Evita_Peron.jpg/640px-CH_Buck_and_Sons_Evita_Peron.jpg'),
(11, 'Bull terrier', 'Travesso, brincalhão e leal', 'https://www.equilibriototalalimentos.com.br/imagens/info3/587.jpg'),
(12, 'Cane corso', 'Protetor, leal e inteligente', 'https://www.petlove.com.br/images/breeds/197825/profile/original/cane-corso-p.jpg?1532539702'),
(13, 'Cavalier king charles spaniel', 'Companheiro, alegre e afetuoso', 'https://upload.wikimedia.org/wikipedia/commons/5/5f/CarterBIS.Tiki.13.6.09.jpg'),
(14, 'Chihuahua', 'Charmoso, animado e atrevido', 'https://www.petlove.com.br/images/breeds/197823/profile/original/chihuahua_p.jpg?1539807811'),
(15, 'Chow chow', 'Calmo, leal e orgulhoso', 'https://www.petlove.com.br/images/breeds/193530/profile/original/chow_chow-p.jpg?1532538839'),
(16, 'Cocker spaniel inglês', 'Alegre, carinhoso e cheio de vida', 'https://www.petlove.com.br/images/breeds/193533/profile/original/cocker_ingles-p.jpg?1532538860'),
(17, 'Dachshund', 'Corajoso, animado e inteligente', 'https://upload.wikimedia.org/wikipedia/commons/thumb/b/be/%EB%8B%A5%EC%8A%A4%ED%9B%88%ED%8A%B8%28%EB%8B%A8%EB%AA%A8%EC%A2%85%29_%28Dachshund_%28Short%29%29.jpg/800px-%EB%8B%A5%EC%8A%A4%ED%9B%88%ED%8A%B8%28%EB%8B%A8%EB%AA%A8%EC%A2%85%29_%28Dachshund_%28Short%29%29.jpg'),
(18, 'Dálmata', 'Atlético, protetor e amável', 'https://www.petlove.com.br/images/breeds/193070/profile/original/dalmata-p.jpg?1532538995'),
(19, 'Doberman', 'Inteligente, leal e protetor', 'https://www.petlove.com.br/images/breeds/197821/profile/original/doberman-p.jpg?1532539745'),
(20, 'Dogo argentino', 'Leal, confiável e corajoso', 'https://diariodonordeste.verdesmares.com.br/image/contentid/policy:7.4577286:1637263713/Dogo%205.jpg?f=16x9&$p$f=f7206d7'),
(21, 'Dogue alemão', 'Amigável, paciente e dócil', 'https://fofuxo.com.br/_upload/galleries/2013/03/29/dogue-alemao-5155af4ae0cfc.jpg'),
(22, 'Fila brasileiro', 'Companheiro, corajoso e amoroso', 'https://omelhoramigodohomem.com.br/wp-content/uploads/2020/02/Fila-Brasileiro-810x539.jpg'),
(23, 'Golden retriever', 'Inteligente, brincalhão e leal', 'https://www.petlove.com.br/images/breeds/193223/profile/original/golden_retriever-p.jpg?1532539102'),
(24, 'Husky siberiano', 'Amigável, trabalhador e extrovertido', 'https://www.petlove.com.br/images/breeds/193082/profile/original/husky_siberian-p.jpg?1532539123'),
(25, 'Jack russell terrier', 'Amigável, atlético e alerta', 'https://www.petlove.com.br/images/breeds/193525/profile/original/jack_russel_terrier-p.jpg?1532539153'),
(26, 'Labrador retriever', 'Inteligente, carinhoso e brincalhão', 'https://bmvet.com.br/wp-content/uploads/2020/08/golden-retriever.jpg'),
(27, 'Lhasa apso', 'Esperto, confiante e independente', 'https://www.petlove.com.br/images/breeds/192810/profile/original/lhasa-apso-p.jpg?1532539223'),
(28, 'Lulu da pomerânia', 'Animado, inteligente e cheio de personalidade', 'https://flordelotus.vet.br/wp-content/uploads/2013/10/rac%CC%A7a-Lulu-da-Pomera%CC%82nia.jpg'),
(29, 'Maltês', 'Gentil, brincalhão e afetuoso', 'https://www.azpetshop.com.br/blog/wp-content/uploads/2020/08/Emily_Maltese-805x452.jpg'),
(30, 'Mastiff inglês', 'Calmo, amável e leal', 'https://love.doghero.com.br/wp-content/uploads/2018/03/mastiff4.webp'),
(31, 'Mastim tibetano', 'Independente, reservado e inteligente', 'https://i0.statig.com.br/bancodeimagens/imgalta/8j/iw/4d/8jiw4dbdxrpelyz2ylz87b241.jpg'),
(32, 'Pastor alemão', 'Confiante, corajoso e inteligente', 'https://royalpets.vteximg.com.br/arquivos/ids/177643/pastor-alemao-320x250.jpg?v=637526379643600000'),
(33, 'Pastor australiano', 'Esperto, trabalhador e exuberante', 'https://upload.wikimedia.org/wikipedia/commons/c/c2/Australianshepherd01.jpg'),
(34, 'Pastor de Shetland', 'Brincalhão, energético e esperto', 'https://static.wixstatic.com/media/db516d_57486ac2eb0c4f08ba558a5d361eeaa7~mv2.jpg/v1/fill/w_640,h_428,al_c,q_80,usm_1.20_1.00_0.01,enc_auto/db516d_57486ac2eb0c4f08ba558a5d361eeaa7~mv2.jpg'),
(35, 'Pequinês', 'Afetuoso, leal e elegante', 'https://www.petlove.com.br/images/breeds/193539/profile/original/pequines-p.jpg?1532539322'),
(36, 'Pinscher', 'Brincalhão, carinhoso e protetor', 'https://thumbs.dreamstime.com/b/pincher-masculino-toy-dog-35778827.jpg'),
(37, 'Pit bull', 'Inteligente, forte e leal', 'https://webcachorros.com.br/wp-content/uploads/2021/03/happy-brown-pitbull-dog-with-white-background_297978-1.jpg'),
(38, 'Poodle', 'Orgulhoso, ativo e inteligente', 'https://guiaanimal.net/uploads/content/image/42744/AdobeStock_279794635.jpeg'),
(39, 'Pug', 'Amoroso, temperamental e companheiro', 'https://www.cnnbrasil.com.br/wp-content/uploads/sites/12/2021/06/3831_DB45214686FC9B68.jpg?w=1200&h=1200&crop=1'),
(40, 'Rottweiler', 'Protetor, leal e inteligente', 'https://www.petlove.com.br/images/breeds/193099/profile/original/rottweiler-p.jpg?1532539428'),
(41, 'Schnauzer', 'Dócil, leal e companheiro', 'https://www.petlove.com.br/images/breeds/193545/profile/original/schnauzer-p.jpg?1532539485'),
(42, 'Shar-pei', 'Amoroso, companheiro e brincalhão', 'https://i0.wp.com/www.portaldodog.com.br/cachorros/wp-content/uploads/2022/08/cachorro-shar-pei-2.jpg?resize=758%2C715&ssl=1'),
(43, 'Shiba', 'Independente, leal e alerta', 'https://upload.wikimedia.org/wikipedia/commons/thumb/6/6b/Taka_Shiba.jpg/1200px-Taka_Shiba.jpg'),
(44, 'Shih tzu', 'Carinhoso, brincalhão e encantador', 'https://www.petlove.com.br/images/breeds/192371/profile/original/shih_tzu-p.jpg?1532539537'),
(45, 'Staffordshire bull terrier', 'Inteligente, corajoso e determinado', 'https://www.petlove.com.br/images/breeds/193430/profile/original/american_sttafordshire-p.jpg?1532538144'),
(46, 'Weimaraner', 'Amigável, corajoso e independente', 'https://www.petlove.com.br/images/breeds/198001/profile/original/weimaraner_p.jpg?1532540091'),
(47, 'Yorkshire', 'Destemido, carinhoso e cheio de energia', 'https://www.petlove.com.br/images/breeds/192471/profile/original/yorkshire-p.jpg?1532539683');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `cachorros`
--
ALTER TABLE `cachorros`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `cachorros`
--
ALTER TABLE `cachorros`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
