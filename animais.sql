-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 30-Nov-2022 às 23:54
-- Versão do servidor: 10.4.24-MariaDB
-- versão do PHP: 8.1.6

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
  `nome` varchar(100) NOT NULL,
  `caracteristicas` varchar(100) NOT NULL,
  `imagem` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `cachorros`
--

INSERT INTO `cachorros` (`ID`, `nome`, `caracteristicas`, `imagem`) VALUES
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

-- --------------------------------------------------------

--
-- Estrutura da tabela `gatos`
--

CREATE TABLE `gatos` (
  `ID` int(11) NOT NULL,
  `nome` varchar(50) COLLATE utf8_bin NOT NULL,
  `caracteristicas` varchar(50) COLLATE utf8_bin NOT NULL,
  `imagem` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Extraindo dados da tabela `gatos`
--

INSERT INTO `gatos` (`ID`, `nome`, `caracteristicas`, `imagem`) VALUES
(1, 'Seilao', 'Ativo agil brincalhao', 'https://qcanimais.com.br/wp-content/uploads/2018/08/ceylon1.jpg'),
(2, 'Highland', 'Cativante doce afetuoso', 'https://meusanimais.com.br/wp-content/uploads/2021/08/gato-highland-fold-amarelo-768x576.jpg'),
(3, 'Minskin', 'Alegres carinhosos brincalhoes', 'https://t2.ea.ltmcdn.com/pt/razas/5/2/8/gato-minskin_825_0_600.jpg'),
(4, 'Ural rex', 'Carinhoso social inteligente', 'https://thumbs.dreamstime.com/b/o-gato-encaracolado-ador%C3%A1vel-ural-rex-est%C3%A1-e-olha-para-frente-com-olhos-verdes-propriet%C3%A1rio-145231664.jpg'),
(5, 'Colopoint', 'Inteligente ativo afetuoso', 'http://amigopet.org/wp-content/uploads/2021/03/Gato-Colorpoint01.jpg'),
(6, 'Neva masquerade', 'Grande carinhoso ativo', 'https://www.zooplus.pt/magazine/wp-content/uploads/2018/06/neva-masquerade-768x621.jpg'),
(7, 'Chantilly-tiffany', 'Adoravel simpatico fofo', 'https://i0.statig.com.br/bancodeimagens/f2/mq/98/f2mq98dyiiz2k3f9p8b507fs5.jpg'),
(8, 'Kurilian bobtail', 'Simpatico ativo inteligente', 'https://i0.statig.com.br/bancodeimagens/5n/ks/u9/5nksu9fw08mkmiahadbx9zyh7.jpg'),
(9, 'Rex alemao', 'Carinhosos sociaveis doceis', 'https://www.enciclopet.com.br/wp-content/uploads/2016/09/german-rex.jpg'),
(10, 'Sphynx', 'Carinhoso amigavel inteligente', 'https://www.petlove.com.br/images/breeds/192403/profile/original/sphynx-p.jpg?1532626992'),
(11, 'Levkoy', 'Alegre sociavel afetuoso', 'https://t1.ea.ltmcdn.com/pt/razas/9/8/7/gato-levkoy-ucraniano_789_0_600.jpg'),
(12, 'Elfo', 'Simpatico ativo inteligente', 'https://meusanimais.com.br/wp-content/uploads/2018/04/gato-elfo-origem.jpg'),
(13, 'Bambino', 'Afetuoso ativo brincalhao', 'https://t2.ea.ltmcdn.com/pt/razas/4/8/7/gato-bambino_784_0_600.jpg'),
(14, 'Lykoi', 'Doces amistosos brincalhoes', 'https://s2.glbimg.com/HtygRNJSOz0wh9pSjFYslRMNZT8=/0x0:596x558/984x0/smart/filters:strip_icc()/i.s3.glbimg.com/v1/AUTH_fb623579cd474803aedbbbbae014af68/internal_photos/bs/2022/o/J/bsXOYRRJmXrP3jpbH4XQ/2022-07-26-1-ja-ouviu-falar-em-gato-lobisomem-conheca-o-lykoi-felino-domestico-que-lembra-o-ser-lendario.jpeg'),
(15, 'Ragamuffin', 'Afetuoso sociavel docil', 'https://t2.ea.ltmcdn.com/pt/razas/7/4/7/gato-ragamuffin_747_0_600.jpg'),
(16, 'British longhair', 'Independente afetuoso brincalhao', 'https://t2.ea.ltmcdn.com/pt/razas/3/4/7/gato-british-longhair_743_0_600.jpg'),
(17, 'Caracat', 'Inquietos energicos brincalhoes', 'https://t1.ea.ltmcdn.com/pt/razas/9/2/7/gato-caracat_729_0_orig.jpg'),
(18, 'Maine coon', ' gande docil gentil', 'https://static1.patasdacasa.com.br/articles/5/26/35/@/11233-os-gatos-da-raca-maine-coon-podem-parece-articles_media_mobile-1.jpg'),
(19, 'Khao manee', 'Afetuoso ativo inquieto', 'https://static1.patasdacasa.com.br/articles/5/17/65/@/8431-khao-manee-voce-ja-ouviu-falar-nessa-ra-articles_media_mobile-2.jpg'),
(20, 'Bobtail americano', 'Energico brincalhao carinhoso', 'https://t1.ea.ltmcdn.com/pt/razas/6/1/7/gato-bobtail-americano_716_0_orig.jpg'),
(21, 'Singapura', 'Tranquilo inteligente', 'https://www.petlove.com.br/images/breeds/226682/profile/original/singapura-petlove-perfil.jpg?1596652984'),
(22, 'Cymric', 'Carinhoso simpatico sociavel', 'https://www.purina.pt/sites/default/files/styles/ttt_image_510/public/2021-02/CAT%20BREED%20Hero%20Mobile_0031_Cymrics.jpg?itok=LQSdU3tH'),
(23, 'Skookum', 'Afetuoso leal sociavel', 'https://t1.ea.ltmcdn.com/pt/razas/4/1/7/gato-skookum_714_0_600.jpg'),
(24, 'Bobtail japones', 'Alegre ativo brincalhao', 'https://t2.ea.ltmcdn.com/pt/razas/1/1/7/gato-bobtail-japones_711_0_orig.jpg'),
(25, 'Toyger', 'Brincalhao carinhoso curioso', 'https://t1.ea.ltmcdn.com/pt/razas/8/9/6/gato-toyger_698_0_600.jpg'),
(26, 'America wirehair', 'Adoravel lindo leal', 'https://t2.ea.ltmcdn.com/pt/razas/5/6/6/gato-american-wirehair_665_0_orig.jpg'),
(27, 'Burmilla', 'Atento afetuoso apegado', 'https://static1.patasdacasa.com.br/articles/6/28/26/@/11835-gato-burmilla-conheca-mais-sobre-essa-r-opengraph_1200-3.jpg'),
(28, 'Pixie-bob', 'Amigavel amoroso paciente', 'https://www.petlove.com.br/images/breeds/226284/profile/original/pixie-bob-perfil-petlove.jpg?1596149122'),
(29, 'American curl', 'Afetuoso socuavel amavel', 'https://www.petlove.com.br/images/breeds/199525/profile/original/american-curl-perfil-petlove.jpg?1613743699'),
(30, 'Laperm', 'Docil afetuoso', 'https://t2.ea.ltmcdn.com/pt/razas/5/5/6/gato-laperm_655_0_orig.jpg'),
(31, 'Tonquines', 'Doce carinhoso inquieto', 'https://www.racoesreis.com.br/wordpress/wp-content/uploads/imagem_do_post-52.jpg'),
(32, 'Javanes', 'Carinhosos comunicativos cativantes', 'https://t1.ea.ltmcdn.com/pt/razas/3/2/6/gato-javanes_623_0_orig.jpg'),
(33, 'Somali', 'Inteligente impotente elegante', 'https://www.petlove.com.br/images/breeds/226885/mobile_header/original/somali-perfil.jpg?1596822504'),
(34, 'Chausie', 'Inteligente teimoso fiel', 'https://t2.ea.ltmcdn.com/pt/razas/0/2/6/gato-chausie_620_0_orig.jpg'),
(35, 'Birmanes', 'Brincalhao curioso comunicativo', 'https://static1.patasdacasa.com.br/articles/9/28/59/@/11940-o-gato-birmanes-fara-voce-se-apaixonar-c-articles_media_mobile-1.jpg'),
(36, 'Sagrado da birmania', 'Docil tranquilo', 'https://www.petlove.com.br/images/breeds/193051/profile/original/sagrado_da_birmania-p.jpg?1532626931'),
(37, 'Sosoke', 'Amigavel peculiar energico', 'https://t1.ea.ltmcdn.com/pt/razas/7/1/6/gato-sokoke_617_0_orig.jpg'),
(38, 'Davon rex', 'Carinhoso companheiro brincalhao', 'https://t2.ea.ltmcdn.com/pt/razas/9/0/6/gato-devon-rex_609_0_600.jpg'),
(39, 'Turkish van', 'Sociavel cativante lindo', 'https://static1.patasdacasa.com.br/articles/1/16/91/@/8076-turkish-van-ou-van-turco-conheca-mais-s-opengraph_1200-2.jpg'),
(40, 'Korat', 'Companheiro carinhoso tranquilo', 'https://royalpets.vteximg.com.br/arquivos/ids/177834/korat-500-500-1.jpg?v=637534859391200000'),
(41, 'Savannah', 'Ativo social carinhoso', 'https://static.wixstatic.com/media/545b39_25e720cd008d4be4bba2be90d8299dc1.jpg/v1/fill/w_600,h_450,al_c,lg_1,q_80,enc_auto/545b39_25e720cd008d4be4bba2be90d8299dc1.jpg'),
(42, 'Oriental shorthair', 'Extrovertido afetuoso', 'https://www.petlove.com.br/images/breeds/226251/profile/original/oriental-perfil-petlove.jpg?1596138291'),
(43, 'Chartreux', 'Adoravel docil carinhoso', 'https://guiaanimal.net/uploads/article/image/221/AdobeStock_398113113.jpeg'),
(44, 'Selkirk rex', 'Tranquilo paciente', 'https://t2.ea.ltmcdn.com/pt/razas/6/1/6/gato-selkirk-rex_616_0_orig.jpg'),
(45, 'Nebelung', 'Alegre lindo afavel', 'https://static1.patasdacasa.com.br/articles/3/27/33/@/11596-o-gato-nebelung-e-um-companheiro-leal-e-articles_media_mobile-2.jpg'),
(46, 'Cornish', 'Docil carinhoso amavel', 'https://static1.patasdacasa.com.br/articles/5/27/55/@/11648-a-raca-de-gato-cornish-rex-e-uma-das-pou-articles_media_mobile-2.jpg'),
(47, 'Ocicat', 'Carinhoso afetuoso', 'https://image.cachorrogato.com.br/thumb/500/500/1/imagens/racas/imagem323.jpg'),
(48, 'Peterbald', 'Carinhoso calmo', 'https://image.cachorrogato.com.br/thumb/500/500/1/imagens/racas/imagem329.jpg'),
(49, 'Selvagem', 'Solitario tranquilo territorial', 'https://upload.wikimedia.org/wikipedia/commons/thumb/0/0e/Felis_silvestris_silvestris.jpg/280px-Felis_silvestris_silvestris.jpg'),
(50, 'Exotico de pelo curto', 'Familiares carinhosos', 'https://t2.ea.ltmcdn.com/pt/razas/7/0/6/gato-exotico-de-pelo-curto_607_0_orig.jpg'),
(51, 'Azul russo', 'Tranquilos carinhosos', 'https://www.petlove.com.br/images/breeds/193039/profile/original/azul_russo-p.jpg?1532625892'),
(52, 'Scottish fold', 'Tranquilo sociavel amoroso', 'https://i0.wp.com/www.portaldodog.com.br/cachorros/wp-content/uploads/2022/01/CATSTREET9.jpg?resize=1080%2C1080&ssl=1'),
(53, 'Snowshoe', 'Tranquilo pacifico', 'https://www.petlove.com.br/images/breeds/228275/profile/original/GettyImages-506509770.jpg?1598892401'),
(54, 'Manx', 'Equilibrado carinhoso', 'https://image.cachorrogato.com.br/thumb/800/600/1/imagens/racas/imagem314.jpg'),
(55, 'Angora turco', 'Esbelto elegante', 'https://www.petlove.com.br/images/breeds/193065/profile/original/angora-p.jpg?1532625875'),
(56, 'Bombaim', 'Sociavel carinhoso', 'https://www.petlove.com.br/images/breeds/225620/profile/original/bombay-gato-petlove.jpg?1595269194'),
(57, 'Noruegues da floresta', 'Belo pelagem longa', 'https://static1.patasdacasa.com.br/articles/1/33/31/@/16430-o-noruegues-da-floresta-e-um-gato-grande-opengraph_1200-2.jpg'),
(58, 'Siberiano', 'Carinhoso robusto', 'https://royalpets.vteximg.com.br/arquivos/ids/177819/gato-siberiano-320x250.jpg?v=637534817463970000'),
(59, 'Bengal', 'Carinhoso hiperativo', 'https://static1.patasdacasa.com.br/articles/6/80/6/@/16646-o-gato-bengal-e-uma-raca-que-parece-um-l-opengraph_1200-2.jpg'),
(60, 'Siames', 'Leais expressivos lindos', 'https://www.petlove.com.br/images/breeds/192825/profile/original/siames-p.jpg?1532626975'),
(61, 'Ashera', 'Calmo silencioso', 'https://guiaanimal.net/uploads/content/image/54425/Design_sem_nome__32_.png'),
(62, 'Munchkin', 'Amavel docil inteligente', 'https://static1.patasdacasa.com.br/articles/3/16/33/@/16431-o-munchkin-e-inconfundivel-as-patinhas-articles_media_mobile-2.jpg'),
(63, 'Sphynx', 'Doce pacifico', 'https://www.petlove.com.br/images/breeds/192403/profile/original/sphynx-p.jpg?1532626992'),
(64, 'Mau egipcio', 'Elegante possessivo', 'https://www.petlove.com.br/images/breeds/226085/profile/original/mau-egipcio-banner.jpg?1595974266'),
(65, 'Himalaio', 'Elegante inteligente simpatico', 'https://www.petlove.com.br/images/breeds/223870/profile/original/perfil-himalaio.jpg?1595617107'),
(66, 'Havana', 'Ativo carinhoso', 'https://www.petlove.com.br/images/breeds/225906/mobile_header/original/GettyImages-1255873048.jpg?1595521839'),
(67, 'Europeu', 'Inteligente independente', 'https://petfriendsworld.pt/wp-content/uploads/2020/04/gato-europeu-comum1.jpg'),
(68, 'Balines', 'Bonito suave', 'https://www.zooplus.pt/magazine/wp-content/uploads/2020/03/gato-balines-768x512.jpeg'),
(69, 'Mist australiano', 'Brincalhao amavel simpatico', 'https://image.cachorrogato.com.br/thumb/800/600/1/imagens/racas/imagem268.jpg');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `cachorros`
--
ALTER TABLE `cachorros`
  ADD PRIMARY KEY (`ID`);

--
-- Índices para tabela `gatos`
--
ALTER TABLE `gatos`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `cachorros`
--
ALTER TABLE `cachorros`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT de tabela `gatos`
--
ALTER TABLE `gatos`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
