-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : lun. 23 mai 2022 à 08:03
-- Version du serveur : 5.7.36
-- Version de PHP : 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `afterwork-laurine`
--

-- --------------------------------------------------------

--
-- Structure de la table `article`
--

DROP TABLE IF EXISTS `article`;
CREATE TABLE IF NOT EXISTS `article` (
  `id_article` int(11) NOT NULL AUTO_INCREMENT,
  `titre` text NOT NULL,
  `id_employe` int(11) DEFAULT NULL,
  `contenu` text NOT NULL,
  `date_création_article` date NOT NULL,
  `id_rubrique` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_article`),
  KEY `fkIdx_136` (`id_employe`),
  KEY `fkIdx_139` (`id_rubrique`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `article`
--

INSERT INTO `article` (`id_article`, `titre`, `id_employe`, `contenu`, `date_création_article`, `id_rubrique`) VALUES
(3, 'Les différents types de cafés', 1, 'Expresso, café au lait, cappuccino… Découvrez les différents types de café\nAvant de s’intéresser aux différents cafés, il faut d’abord choisir la variété de café. Il existe deux variétés principales pour le café. L’arabica et le robusta. Si les grains arabica sont les plus vendus dans le monde, les grains robusta sont plus corsés et ont un gout beaucoup plus amer que les arabica. Ils sont privilégiés pour la préparation de l’espresso et du ristretto.\n\nespressoLe café noir (espresso ou expresso, à la française)\nD’abord inventé par les anglais, avant d’être perfectionnée par les italiens au XXe siècle, l’espresso est un café moulu finement et infusé avec de l’eau à une pression de 9 bars. Le temps d’extraction de l’expresso doit se situer entre 20 et 25 secondes. Cela permet d’offrir un café plus aromatique que les autres variétés.\n\nL’espresso, par son gout corsé, est la boisson qui sert de base à tout autre type de café. Il peut également être simple ou double. Bien sûr, il s’agit du café de qualité de base servi par toutes les machines à grain moulu.\n\nLe café noisette\nTrès simple et tout aussi populaire, le café noisette est un expresso dans lequel on ajoute une goutte  de lait, prenant alors une couleur noisette.\n\nLe ristretto\nLe ristretto n’est autre qu’une version plus corsée de l’espresso. La préparation est similaire, si ce n’est que le ristretto est pressé plus fort et a donc besoin de beaucoup moins d’eau.\n\nLe café crème\nIl s’agit d’un espresso dans lequel on rajoute un nuage de crème ou de lait. Cette boisson est préférée par ceux trouvant un gout trop fort à l’expresso classique.\n\nLe café latte\nLe latte (ou « lait », en français) est le café lacté le plus populaire au monde. Celui-ci est composé d’un espresso, mais aussi majoritairement de lait chauffé à la vapeur. Le latte est parfait pour les amateurs de café moins amers. Cerise sur le gateau, on peut y apposer une légère crème de lait au sommet de la boisson.\n\nmacchiatoLe macchiato\nEn plus de la base classique, on rajoute une légère couche de mousse de lait chaud supplémentaire pour réaliser un macchiato. Cette fine mousse est faite à partir du lait moussé par la buse à vapeur de la machine.\n\nPour préparer un macchiato, versez 2/3 de lait chaud et 1/3 de mousse de lait avant de rajouter l’expresso en dernier. Vous pourrez observer les belles couches ainsi créées.\n\nLe café au lait\nEncore plus simple que le latte, le café au lait est simplement rallongé avec un peu de lait chaud. Apparu en 1685 en France, le lait a été ajouté afin de limiter le gout amer du café, sans pour autant devoir ajouter du sucre ou du miel.\n\nLe cortado\nTrès populaire en Espagne, au Portugal et en Amérique Latine où il est consommé l’après-midi, le cortado (qui signifie « coupé » en espagnol) implique de limiter l’acidité de l’expresso tout en le rendant légèrement plus sucré. Il est donc composé d’une double dose d’espresso avant d’être allongé avec 2/3 de mousse de lait.\n\nLe Flat White\nTrès populaire en Australie et Nouvelle-Zélande, le Flat White ressemble beaucoup au cortado au latte. La différence se trouve dans la façon de verser le lait dans la tasse.\n\ncappuccinoLe cappuccino\nImpossible d’ignorer le cappuccino, véritable dieu des cafés composés. Cette boisson italienne est servi dans une grande tasse et se réalise avec 1/3 de lait chaud avant de rajouter 2/3 de mousse de lait. Il peut être agrémenter d’un peu de cacao en poudre par-dessus.\n\nEn Italie, le cappuccino est surtout bu en matinée.\n\nLe café allongé\nCafé long, Caffè lungo en Italie ou Americano aux Etats-Unis, ce café est seulement allongé en versant un espresso simple ou double dans un verre d’eau chaude.\n\nContrairement à ce que l’on pourrait penser, plus un café est allongé, et plus il est amer et caféiné. Pourquoi ? Parce qu’il y a plus d’eau qui traverse le marc dans la machine et donc, le temps de contact entre le café et l’eau est ainsi bien plus important, ce qui accroit considérablement le taux de caféine.\n\nLe Moka\nIl s’agit ni plus ni moins d’un cappuccino dans lequel on ajoute un peu de crème et de chocolat, et une pincée de cacao en poudre par-dessus. Il est donc très peu cafféiné et est plutôt considéré comme une boisson gourmande.\n\nPlusieurs gouts, plusieurs cafés\nVoilà, voici les sortes de cafés les plus répandus et les plus populaires de par le monde. S’il en existe bien d’autres, les variétés exposées ici sont celles qui influencent les potentiels autres genres existants. Vous l’aurez compris, faire du café, ce n’est pas sorcier !\n', '2022-01-05', 2),
(10, 'Découvrez la Brûlerie Comtoise', 3, 'Ouverte depuis décembre 2019, la brûlerie comtoise est une boutique de torréfaction artisanale. Spécialisée dans les cafés de spécialité, cafés sans défaut primaire. On y trouve une large gamme de cafés, torréfiés intégralement à Dole, de grandes origines et de blend. Yoann Bride, torréfacteur, à l’origine de la Brûlerie Comtoise veille à ce que les producteurs vivent de leurs plantations. \r\n\r\nUn univers thés et infusions complète la gamme de la Brûlerie Comtoise. Leur sélection se fait avec la même rigueur que pour le café, en recherchant des recette de qualité, premium, à prix raisonnable. \r\n\r\nUne partie épicerie fine accompagne ces deux univers, mettant en avant des producteurs locaux si possible, mais français pour l’ensemble. \r\n\r\nLa manufacture désormais à part de la boutique, vous accueille volontiers lors des séances de torréfaction de Yoann. Dès que la situation sanitaire le permettra vous pourrez également assister à des formations café et/ou thé et des cours de torréfaction. \r\n\r\nDans le cadre d\'un partenariat pour la valorisation du travail des jeunes en situation de handicap, nous collaborons avec l\'IME de Dole pour le conditionnement de nos produits \r\n\r\nLa Brûlerie Comtoise est également disponible chez de nombreux revendeurs à travers la France. Ils sont également accompagnés avec des formations pour pouvoir vous conseiller et vous servir du mieux possible. \r\n\r\nEn espérant pouvoir vous rencontrer lors de votre prochaine visite à la Brûlerie Comtoise...\r\n\r\nNous sommes honorés de vous informer que nos produits et notre entreprise ont reçu deux labels en cette année 2021. La labélisation BIO pour nos cafés, thés et infusions et le label Initiative remarquable qui récompense notre engagement entrepreneurial et inclusif.  \r\n', '2022-05-08', 5);

-- --------------------------------------------------------

--
-- Structure de la table `categorie`
--

DROP TABLE IF EXISTS `categorie`;
CREATE TABLE IF NOT EXISTS `categorie` (
  `id_categorie` int(11) NOT NULL AUTO_INCREMENT,
  `libelle_categorie` varchar(45) NOT NULL,
  `description_categorie` text,
  `activation` tinyint(4) DEFAULT '1',
  `import` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id_categorie`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `categorie`
--

INSERT INTO `categorie` (`id_categorie`, `libelle_categorie`, `description_categorie`, `activation`, `import`) VALUES
(1, 'Racine', 'La Brûlerie Comtoise vous propose toute une gamme de racine de thé.', 0, 1),
(2, 'Boutique', 'Découvrez tous les produits de notre boutique.', 1, 1),
(3, 'Infusion', 'La Brûlerie Comtoise vous propose une sélection d\'infusions...Classiques, fruitées, épicées il y en a pour tous les goûts... A consommer aussi bien chaudes que glacées elles sauront vous accompagner toute au long de la journée et au fil des saisons... ', 1, 1),
(4, 'Infusettes', 'La Brûlerie Comtoise vous fait découvrir sa large de gamme d\"infusions en sachet individuel. Au bureau comme à la maison, plus pratique et plus rapide, faites vous plaisir avec ces infusettes Made in France.', 1, 1),
(5, 'Infusion vrac', 'La Brûlerie Comtoise vous propose une sélection d\"infusions.Classiques, fruitées, épicées il y en a pour tous les goûts... A consommer aussi bien chaudes que glacées elles sauront vous accompagner tout au long de la journée et au fil des saisons...', 1, 1),
(6, 'Thé', 'Découvrez toute une gamme de thé.', 1, 1),
(7, 'Café', 'Découvrez nos cafés les plus gourmands.', 1, 1),
(8, 'Thé vrac', 'Découvrez la sélection de thés vrac de la Brûlerie Comtoise. Amateurs de grandes origines, de mélanges aromatisés, fruités ou épicés... Sur une base de thé blanc, de thé vert ou de thé noir... il y a de quoi ravir tous les palais...', 1, 1),
(9, 'Café capsule', '\n\nLa Brûlerie Comtoise a développé sa sélection de capsules compatibles Nespresso®. Après avoir été torréfié le café est transformé et mis en capsule dans notre manufacture de la Grande rue de Dole. Étant basée sur la même gamme que notre sélection de café en grain, les capsules bénéficient des mêmes labels : Rainforest, issu de l\"agriculture biologique. De plus, elles sont labellisées « Made in Jura », label qui valorise la production artisanale et locale. \n\n\nLa production se veut intégralement Made in France. La machine qui permet de concevoir les capsules, ainsi que les capsules elles-mêmes sont fabriquées en France. Élaborées dans des matières biodégradables, la dosette est en amidon de maïs et l\"opercule en canne à sucre. Elles illustrent pleinement la volonté de l\"entreprise de préserver l\"environnement et de limiter la production de déchets. \n\n', 1, 1),
(10, 'Café grain', 'Découvrez toutes les différentes saveurs de café en grain.', 1, 1),
(11, 'Café grain & moulu', 'Le cœur du métier de la Brûlerie Comtoise est sa torréfaction 100% doloise. Du sourcing, à la réception des échantillons, aux séances de tasting et pour finir à la transformation du grain vert... tout se passe entre les quatre mûrs de la manufacture de la Grande rue de Dole. \nAttirés par les effluves du café grillé, les passants du centre ville peuvent assister aux séances de torréfaction et écouter les histoires et les conseils de Yoann sur le café. \nTorréfacteur et diplômé du Q Arabica Grader, Yoann Bride gère la sélection et la production du café de la Brûlerie Comtoise. Il choisit lui-même les producteurs avec lesquels il veut collaborer afin de veiller que leurs plantations leur assurent une rémunération correcte. Dans un souci de qualité, de préservation de l\"environnement le choix des grains se porte sur des origines labellisées. Issue de l\"agriculture biologique, labellisée Rainforest (préservation de la forêt) la gamme proposée se veut au plus près de la nature. \nLa sélection de Yoann, sera un voyage à chaque tasse. Destination l\"Afrique avec un café d\"Éthiopie ou du Burundi. L\"Amérique du Sud avec le café aux notes chocolatées du Pérou ou de Colombie, suaves du Honduras, des notes de fruits rouges dans le Brésil ou le déca du Mexique. \nLe traditionnel Mélange Italien avec son assemblage d\"arabica et de robusta et le Blend de la Brûlerie entièrement élaboré par Yoann complètent la gamme. Vous y trouverez des cafés intenses, corsés, fruités, acidulés, gourmands, doux et fleuris. Palais de grand amateur, de débutant ou d\"épicurien qui aime les bonnes choses il y aura forcément un café pour vous. \nNous vous proposons également un café expérimental, unique au monde, vieilli en fût de Sauternes 1er grand cru classé. Ce café issu du travail de 3 amis, Simon Verger, MOF Maître d\"hôtel et directeur du Skiff club, 2 étoilés Michelin, de Jean Compeyrot du Château Sigalas Rabaud, 1er grand cru classé et de notre torréfacteur Yoann.', 1, 1),
(12, 'Rooibos', 'La Brûlerie Comtoise propose une gamme de rooibos parfumés. Issu d\"Afrique du Sud, faible en tanin, sans théine et aux vertus antioxydantes, le rooibos accompagnera volontiers toutes vos soirées. ', 1, 1),
(13, 'Accompagnements', 'Pour un moment de plaisir, pour accompagner votre café ou votre thé, la Brûlerie Comtoise a sélectionné pour vous une gamme de confiseries... à grignoter, à tartiner ou à déguster... ', 1, 1),
(14, 'Machine & Accessoire', 'Pour servir vos meilleurs cafés, découvrez toute une gamme de machine et d\'accessoire.', 1, 1),
(15, 'Les Chocolats de Damien Benetot', 'Les Chocolats de Damien Benetot\nPâtisserie Damien BENETOT\nhttp://www.benetot.fr/\n26 rue de Besançon\n39100 Dole', 1, 1),
(16, 'Coffret', 'Offrez les plus beaux coffrets cadeaux à vos proches.', 1, 1),
(17, 'Pâques - Moulage', 'Les Chocolats de Damien Benetot\nPâtisserie Damien BENETOT\nhttp://www.benetot.fr/\n26 rue de Besançon\n39100 Dole', 1, 1),
(18, 'Chocolats, macarons et divers', 'Les Chocolats de Damien Benetot\nPâtisserie Damien BENETOT\nhttp://www.benetot.fr/\n26 rue de Besançon\n39100 Dole', 1, 1),
(19, 'Epicerie', 'Pour un moment de plaisir, pour accompagner votre café ou votre thé, la Brûlerie Comtoise a sélectionné pour vous une gamme Épicerie fine... à grignoter, à tartiner ou à déguster... \nPour vous satisfaire du mieux possible nous avons élaboré une gamme de produits artisanaux, locaux si possible mais surtout MADE IN FRANCE. Nous avons à cœur de proposer des produits de qualité qui sauront accompagner vos instants de dégustation.', 1, 1),
(20, 'Confiseries', 'Pour un moment de plaisir, pour accompagner votre café ou votre thé, la Brûlerie Comtoise a sélectionné pour vous une gamme de confiseries... à grignoter, à tartiner ou à déguster... ', 1, 1),
(21, 'Thé & Infusion', 'Découvrez toute une gamme de thé et infusion de la Brûlerie Comtoise', 1, 1),
(22, 'Vrac', 'Découvrez la sélection de thés et infusions vrac de la Brûlerie Comtoise. \nAmateurs de grandes origines, de mélanges aromatisés, fruités ou épicés... Sur une base de thé blanc, vert ou noir, de fruits ou de plantes ... Il y a de quoi ravir tous les palais ...  ', 1, 1),
(23, 'Sachet', 'La Brûlerie Comtoise vous fait découvrir sa large gamme de thés et infusions en sachets individuels. Au bureau comme à la maison, plus pratique et plus rapide, faites vous plaisir avec ces infusettes Made in France.', 1, 1);

-- --------------------------------------------------------

--
-- Structure de la table `client`
--

DROP TABLE IF EXISTS `client`;
CREATE TABLE IF NOT EXISTS `client` (
  `id_client` int(11) NOT NULL AUTO_INCREMENT,
  `nom_client` varchar(45) NOT NULL,
  `prenom_client` varchar(45) NOT NULL,
  `mot_de_passe` text NOT NULL,
  `mail_client` varchar(52) NOT NULL,
  `lib_rue_client` varchar(45) NOT NULL,
  `CP_client` varchar(45) NOT NULL,
  `ville_client` varchar(45) NOT NULL,
  `tel_client` varchar(45) NOT NULL,
  `abonnement_newsletter` tinyint(1) NOT NULL,
  `id_role` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_client`),
  KEY `id_role` (`id_role`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `client`
--

INSERT INTO `client` (`id_client`, `nom_client`, `prenom_client`, `mot_de_passe`, `mail_client`, `lib_rue_client`, `CP_client`, `ville_client`, `tel_client`, `abonnement_newsletter`, `id_role`) VALUES
(2, 'Martin', 'Bernard', '$argon2i$v=19$m=16,t=2,p=1$d3pFUVliV1hZdHZmeTZjNnRCR3pLU1ZQWG9KRjBhSUk$reYlkBDkMwd0aCZ9nqRKdQ', 'martin@gmail.com', 'vallée', '39210', 'NEVY', '3849503249', 0, 3),
(3, 'Thomas', 'Emma', '$argon2i$v=19$m=16,t=2,p=1$d3pFUVliV1hZdHZmeTZjNnRCR3pLU1ZQWG9KRjBhSUk$reYlkBDkMwd0aCZ9nqRKdQ', 'emma@gmail.com', 'dzdz', 'FEEFDQ', 'ZQDQZD', 'DQDZZED', 1, 3);

-- --------------------------------------------------------

--
-- Structure de la table `commande`
--

DROP TABLE IF EXISTS `commande`;
CREATE TABLE IF NOT EXISTS `commande` (
  `id_commande` int(11) NOT NULL AUTO_INCREMENT,
  `id_statut` int(11) NOT NULL,
  `id_employe` int(11) NOT NULL,
  `date_commande` datetime NOT NULL,
  `no_table` int(11) NOT NULL,
  PRIMARY KEY (`id_commande`),
  KEY `fkIdx_110` (`id_employe`),
  KEY `fkIdx_53` (`id_statut`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `commande`
--

INSERT INTO `commande` (`id_commande`, `id_statut`, `id_employe`, `date_commande`, `no_table`) VALUES
(1, 2, 1, '2022-05-11 13:09:37', 5),
(2, 8, 1, '2022-05-09 10:48:21', 4),
(4, 1, 2, '2022-05-11 16:51:41', 2);

-- --------------------------------------------------------

--
-- Structure de la table `commentaire`
--

DROP TABLE IF EXISTS `commentaire`;
CREATE TABLE IF NOT EXISTS `commentaire` (
  `id_commentaire` int(11) NOT NULL AUTO_INCREMENT,
  `id_client` int(11) NOT NULL,
  `id_produit` int(11) NOT NULL,
  `titre` text NOT NULL,
  `description` text NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`id_commentaire`),
  KEY `fkIdx_22` (`id_client`),
  KEY `fkIdx_25` (`id_produit`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `commentaire`
--

INSERT INTO `commentaire` (`id_commentaire`, `id_client`, `id_produit`, `titre`, `description`, `date`) VALUES
(7, 2, 1, 'Bonjour', 'test', '2022-01-12 18:56:57'),
(8, 2, 1, 'Super', 'Venez vite !', '2022-01-14 18:54:04'),
(9, 3, 2, 'Génial', 'délicieux', '2022-01-16 11:14:33'),
(10, 3, 2, 'Je recommande', 'Très bon', '2022-01-16 12:25:17');

-- --------------------------------------------------------

--
-- Structure de la table `declinaison`
--

DROP TABLE IF EXISTS `declinaison`;
CREATE TABLE IF NOT EXISTS `declinaison` (
  `id_declinaison` int(11) NOT NULL AUTO_INCREMENT,
  `libelle_declinaison` text NOT NULL,
  `description_declinaison` text,
  PRIMARY KEY (`id_declinaison`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `declinaison`
--

INSERT INTO `declinaison` (`id_declinaison`, `libelle_declinaison`, `description_declinaison`) VALUES
(1, '250 g', NULL),
(2, 'Filtre', NULL),
(3, 'Piston', NULL),
(4, 'Italienne', NULL),
(5, 'Espresso', NULL),
(6, '500 g', NULL),
(7, '1 kg', NULL),
(8, '15', NULL),
(9, 'Chocolat noir', NULL),
(10, 'Chocolat lait', NULL),
(11, '12', NULL),
(12, '20', NULL),
(13, '30', NULL),
(14, '16', NULL),
(15, '25', NULL),
(16, '40 g', NULL),
(17, '125 g', NULL),
(18, '650 g', NULL),
(19, 'sachet 100 g', NULL),
(20, 'boîte 100 g ', NULL),
(21, '50', NULL),
(22, 'Grain', NULL),
(23, 'Sachet 100g', NULL),
(24, 'Boîte 50g', NULL),
(25, 'Sachet 50g', NULL),
(26, '100', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `declinaison_produit`
--

DROP TABLE IF EXISTS `declinaison_produit`;
CREATE TABLE IF NOT EXISTS `declinaison_produit` (
  `id_declinaison_produit` int(11) NOT NULL AUTO_INCREMENT,
  `id_declinaison` int(11) NOT NULL,
  `id_produit` int(11) NOT NULL,
  PRIMARY KEY (`id_declinaison_produit`,`id_declinaison`,`id_produit`),
  KEY `fkIdx_156` (`id_declinaison`),
  KEY `fkIdx_159` (`id_produit`)
) ENGINE=InnoDB AUTO_INCREMENT=182 DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `declinaison_produit`
--

INSERT INTO `declinaison_produit` (`id_declinaison_produit`, `id_declinaison`, `id_produit`) VALUES
(1, 2, 18),
(8, 2, 26),
(31, 2, 47),
(68, 2, 74),
(73, 2, 75),
(2, 3, 18),
(9, 3, 26),
(32, 3, 47),
(69, 3, 74),
(74, 3, 75),
(3, 4, 18),
(10, 4, 26),
(33, 4, 47),
(70, 4, 74),
(75, 4, 75),
(4, 5, 18),
(11, 5, 26),
(34, 5, 47),
(71, 5, 74),
(76, 5, 75),
(44, 8, 64),
(47, 8, 65),
(50, 8, 66),
(53, 8, 67),
(56, 8, 68),
(59, 8, 69),
(62, 8, 70),
(65, 8, 71),
(13, 19, 35),
(15, 19, 39),
(17, 19, 40),
(19, 19, 41),
(21, 19, 42),
(23, 19, 43),
(25, 19, 44),
(27, 19, 45),
(36, 19, 48),
(38, 19, 53),
(40, 19, 54),
(42, 19, 55),
(78, 19, 85),
(104, 19, 98),
(156, 19, 124),
(158, 19, 125),
(160, 19, 126),
(162, 19, 127),
(164, 19, 128),
(166, 19, 129),
(168, 19, 130),
(170, 19, 131),
(172, 19, 132),
(174, 19, 133),
(176, 19, 134),
(178, 19, 135),
(180, 19, 136),
(6, 20, 24),
(14, 20, 35),
(16, 20, 39),
(18, 20, 40),
(20, 20, 41),
(22, 20, 42),
(24, 20, 43),
(26, 20, 44),
(28, 20, 45),
(37, 20, 48),
(39, 20, 53),
(41, 20, 54),
(43, 20, 55),
(79, 20, 85),
(82, 20, 87),
(84, 20, 88),
(88, 20, 90),
(90, 20, 91),
(92, 20, 92),
(94, 20, 93),
(96, 20, 94),
(98, 20, 95),
(100, 20, 96),
(105, 20, 98),
(106, 20, 99),
(108, 20, 100),
(110, 20, 101),
(112, 20, 102),
(114, 20, 103),
(116, 20, 104),
(118, 20, 105),
(120, 20, 106),
(122, 20, 107),
(124, 20, 108),
(126, 20, 109),
(128, 20, 110),
(130, 20, 111),
(132, 20, 112),
(134, 20, 113),
(136, 20, 114),
(138, 20, 115),
(140, 20, 116),
(144, 20, 118),
(146, 20, 119),
(148, 20, 120),
(150, 20, 121),
(152, 20, 122),
(154, 20, 123),
(157, 20, 124),
(159, 20, 125),
(161, 20, 126),
(163, 20, 127),
(165, 20, 128),
(167, 20, 129),
(169, 20, 130),
(171, 20, 131),
(173, 20, 132),
(175, 20, 133),
(177, 20, 134),
(179, 20, 135),
(181, 20, 136),
(45, 21, 64),
(48, 21, 65),
(51, 21, 66),
(54, 21, 67),
(57, 21, 68),
(60, 21, 69),
(63, 21, 70),
(66, 21, 71),
(5, 22, 18),
(12, 22, 26),
(35, 22, 47),
(72, 22, 74),
(77, 22, 75),
(7, 23, 24),
(83, 23, 87),
(85, 23, 88),
(89, 23, 90),
(91, 23, 91),
(93, 23, 92),
(95, 23, 93),
(97, 23, 94),
(99, 23, 95),
(101, 23, 96),
(107, 23, 99),
(109, 23, 100),
(111, 23, 101),
(113, 23, 102),
(115, 23, 103),
(117, 23, 104),
(119, 23, 105),
(121, 23, 106),
(123, 23, 107),
(125, 23, 108),
(127, 23, 109),
(129, 23, 110),
(131, 23, 111),
(133, 23, 112),
(135, 23, 113),
(137, 23, 114),
(139, 23, 115),
(141, 23, 116),
(145, 23, 118),
(147, 23, 119),
(149, 23, 120),
(151, 23, 121),
(153, 23, 122),
(155, 23, 123),
(29, 24, 46),
(80, 24, 86),
(86, 24, 89),
(102, 24, 97),
(142, 24, 117),
(30, 25, 46),
(81, 25, 86),
(87, 25, 89),
(103, 25, 97),
(143, 25, 117),
(46, 26, 64),
(49, 26, 65),
(52, 26, 66),
(55, 26, 67),
(58, 26, 68),
(61, 26, 69),
(64, 26, 70),
(67, 26, 71);

-- --------------------------------------------------------

--
-- Structure de la table `doctrine_migration_versions`
--

DROP TABLE IF EXISTS `doctrine_migration_versions`;
CREATE TABLE IF NOT EXISTS `doctrine_migration_versions` (
  `version` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `employe`
--

DROP TABLE IF EXISTS `employe`;
CREATE TABLE IF NOT EXISTS `employe` (
  `id_employe` int(11) NOT NULL AUTO_INCREMENT,
  `id_role` int(11) NOT NULL,
  `nom` varchar(45) NOT NULL,
  `prenom` varchar(45) NOT NULL,
  `mot_de_passe` text NOT NULL,
  `mail` varchar(52) NOT NULL,
  `lib_rue` text NOT NULL,
  `CP_ville` varchar(45) NOT NULL,
  `ville` varchar(45) NOT NULL,
  `tel` varchar(45) NOT NULL,
  `date_embauche` date NOT NULL,
  PRIMARY KEY (`id_employe`),
  KEY `fkIdx_45` (`id_role`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `employe`
--

INSERT INTO `employe` (`id_employe`, `id_role`, `nom`, `prenom`, `mot_de_passe`, `mail`, `lib_rue`, `CP_ville`, `ville`, `tel`, `date_embauche`) VALUES
(1, 1, 'Admin', 'Laurine', '$argon2i$v=19$m=16,t=2,p=1$d3pFUVliV1hZdHZmeTZjNnRCR3pLU1ZQWG9KRjBhSUk$reYlkBDkMwd0aCZ9nqRKdQ', 'laurine@gmail.com', 'de la vallée', '39210', 'NEVY SUR SEILLE', '0689435465', '2022-01-12'),
(2, 2, 'Dubois', 'Jean', '$argon2i$v=19$m=16,t=2,p=1$d3pFUVliV1hZdHZmeTZjNnRCR3pLU1ZQWG9KRjBhSUk$reYlkBDkMwd0aCZ9nqRKdQ', 'jean@gmail.com', 'la fontaine', '1664', 'kronenville', '1234567890', '2022-01-14'),
(3, 3, 'Thomas', 'Léa', '$argon2i$v=19$m=16,t=2,p=1$d3pFUVliV1hZdHZmeTZjNnRCR3pLU1ZQWG9KRjBhSUk$reYlkBDkMwd0aCZ9nqRKdQ', 'lea@gmail.com', 'papillon', '25000', 'BESANCON', '1234567890', '2022-01-15'),
(9, 4, 'Durand', 'Hugo', '$argon2i$v=19$m=16,t=2,p=1$d3pFUVliV1hZdHZmeTZjNnRCR3pLU1ZQWG9KRjBhSUk$reYlkBDkMwd0aCZ9nqRKdQ', 'hugo@gmail.com', 'Rue du poisson', '25000', 'marseille', '3334443434', '2022-01-14');

-- --------------------------------------------------------

--
-- Structure de la table `produit`
--

DROP TABLE IF EXISTS `produit`;
CREATE TABLE IF NOT EXISTS `produit` (
  `id_produit` int(11) NOT NULL AUTO_INCREMENT,
  `libelle_produit` varchar(45) NOT NULL,
  `id_tva` int(11) NOT NULL,
  `id_categorie` int(11) NOT NULL,
  `description_produit` text,
  `prix_unitaire_HT` float NOT NULL,
  `image` text,
  `activation` tinyint(4) DEFAULT '1',
  `import` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`id_produit`),
  KEY `fkIdx_13` (`id_categorie`),
  KEY `fkIdx_95` (`id_tva`)
) ENGINE=InnoDB AUTO_INCREMENT=149 DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `produit`
--

INSERT INTO `produit` (`id_produit`, `libelle_produit`, `id_tva`, `id_categorie`, `description_produit`, `prix_unitaire_HT`, `image`, `activation`, `import`) VALUES
(1, 'Nougatine noisettes - 150g', 3, 2, 'Fabrication artisanale par la Confiserie \"La Sucrerie\" - 39600 Arbois, JURA\nIngrédients : glucose, sucre, noisettes, beurre', 12, NULL, 0, 1),
(2, 'Miel acacia - 250g', 3, 2, 'Miel du JURA - 39190 Val-Sonnette', 12, NULL, 1, 1),
(3, 'Eau tonique nature', 3, 2, 'EAU TONIQUE NATURE HYSOPE :\nFruit de l\"artisanat français sur l\"intégralité de sa chaîne de production, l\"eau tonique HYSOPE est élaborée à partir d\"ingrédients d\"origine biologique, dont l\"ensemble des recettes est certifiée ECOCERT. Tous les arômes sont sélectionnés à Grasse, capitale du parfum.\n\nPour twister vos cocktails, sublimer vos spiritueux ou simplement se déguster bien fraîche l\"eau tonique HYSOPE saura vous accompagner lors de vos apéritifs. ', 12, NULL, 1, 1),
(4, 'Eau tonique concombre', 3, 2, 'EAU TONIQUE CONCOMBRE HYSOPE :\nFruit de l\"artisanat français sur l\"intégralité de sa chaîne de production, l\"eau tonique HYSOPE est élaborée à partir d\"ingrédients d\"origine biologique, dont l\"ensemble des recettes est certifiée ECOCERT. Tous les arômes sont sélectionnés à Grasse, capitale du parfum.\n\nPour twister vos cocktails, sublimer vos spiritueux ou simplement se déguster bien fraîche l\"eau tonique HYSOPE saura vous accompagner lors de vos apéritifs.', 32, NULL, 1, 1),
(5, 'Eau tonique gingembre', 3, 2, 'EAU TONIQUE GINGEMBRE HYSOPE :\nFruit de l\"artisanat français sur l\"intégralité de sa chaîne de production, l\"eau tonique HYSOPE est élaborée à partir d\"ingrédients d\"origine biologique, dont l\"ensemble des recettes est certifiée ECOCERT. Tous les arômes sont sélectionnés à Grasse, capitale du parfum.\n\nPour twister vos cocktails, sublimer vos spiritueux ou simplement se déguster bien fraîche l\"eau tonique HYSOPE saura vous accompagner lors de vos apéritifs.', 23, NULL, 1, 1),
(6, 'Eau tonique citron', 3, 2, 'EAU TONIQUE CITRON HYSOPE :\nFruit de l\"artisanat français sur l\"intégralité de sa chaîne de production, l\"eau tonique HYSOPE est élaborée à partir d\"ingrédients d\"origine biologique, dont l\"ensemble des recettes est certifiée ECOCERT. Tous les arômes sont sélectionnés à Grasse, capitale du parfum.\n\nPour twister vos cocktails, sublimer vos spiritueux ou simplement se déguster bien fraîche l\"eau tonique HYSOPE saura vous accompagner lors de vos apéritifs.', 124, NULL, 1, 1),
(7, 'Eau tonique fleur de sureau', 3, 2, 'EAU TONIQUE FLEUR DE SUREAU HYSOPE :\nFruit de l\"artisanat français sur l\"intégralité de sa chaîne de production, l\"eau tonique HYSOPE est élaborée à partir d\"ingrédients d\"origine biologique, dont l\"ensemble des recettes est certifiée ECOCERT. Tous les arômes sont sélectionnés à Grasse, capitale du parfum.\n\nPour twister vos cocktails, sublimer vos spiritueux ou simplement se déguster bien fraîche l\"eau tonique HYSOPE saura vous accompagner lors de vos apéritifs.', 13, NULL, 1, 1),
(8, 'Miel sapin - 250g', 3, 2, 'Miel du JURA - 39190 Val-Sonnette', 13, NULL, 1, 1),
(9, 'Miel fleurs sauvages - 250g', 3, 2, 'Miel du JURA - 39190 Val-Sonnette', 11, NULL, 1, 1),
(10, 'Cranberry enrobée - 120g', 3, 2, 'Dragée Reynaud, confiseur de la région de Marseille, détourne la dragée traditionnelle avec des recettes des plus gourmandes. \n', 41, NULL, 1, 1),
(11, 'Guimauve vanille', 3, 2, '', 32, NULL, 1, 1),
(12, 'Dragée fruitée - abricot 150g', 3, 2, '\nDragée Reynaud, confiseur de la région de Marseille, détourne la dragée traditionnelle avec des recettes des plus gourmandes. ', 12, NULL, 1, 1),
(13, 'Dragée fruitée - framboise 150g', 3, 2, 'Dragée Reynaud, confiseur de la région de Marseille, détourne la dragée traditionnelle avec des recettes des plus gourmandes. \n', 2, NULL, 1, 1),
(14, 'Dragée fruitée - poire 150g', 3, 2, 'Dragée Reynaud, confiseur de la région de Marseille, détourne la dragée traditionnelle avec des recettes des plus gourmandes. \n', 3, NULL, 1, 1),
(15, 'Dragée fruitée - assortiment 150g', 3, 2, 'Dragée Reynaud, confiseur de la région de Marseille, détourne la dragée traditionnelle avec des recettes des plus gourmandes. \n', 5, NULL, 1, 1),
(16, 'Amande chocolat noir - 100g', 3, 2, '', 6, NULL, 1, 1),
(17, 'Bille croustillante chocolat lait - 100g', 3, 2, '', 7, NULL, 1, 1),
(18, 'Le Café Sigalas - 150g', 3, 2, '', 2, NULL, 1, 1),
(19, 'Filtre x100', 3, 2, '', 21, NULL, 1, 1),
(20, 'Valrhona - Jivara 40%', 3, 2, 'Jivara, par sa douceur cacaotée et maltée, est un chocolat chaleureux comme les rayons dorés du soleil à l\"aube d\"un matin d\"été.\n\nDéveloppé en 1995, Valrhona fait évoluer les codes du chocolat au lait avec Jivara, premier chocolat au lait à proposer une telle force gustative, avec un véritable goût de cacao. Pour atteindre ce goût singulier, Jivara est issu d\"un assemblage complexe de profils aromatiques de cacaos typiques d\"Equateur et du Ghana. ', 3, NULL, 1, 1),
(21, 'Valrhona - Dulcey 35%', 3, 2, 'Dulcey, par sa douceur biscuitée très légèrement salée et son goût de lait caramélisé, à ce don de nus renvoyer en enfance, de nousf aire voyager dans un tourbillon de souvenirs délicieux propres à chacun.\nEn 2012, Valrhona invente la quatrième couleur de chocolat : le blond. Laissant du chocolat blanc au bain-marie trop longtemps, Frédéric Bau découvre un surprenant résultat, le chocolat est devenu blond et laisse échapper une douce odeur. Dulcey est une ode à la créativité et à l\"audace qui révolutionne le monde de la pâtisserie pour offrir de nouvelles émotions grâce à a couleur son goût et sa texture. ', 4, NULL, 1, 1),
(22, 'Valrhona - Ivoire 35%', 3, 2, 'Les notes réconfortantes de lait cuit de chocolat blanc Ivoire font écho aux éclats de rire d\"enfants qui partagent ensemble leurs plus grands moments de bonheur. \nAvec Ivoire, Valrhona se démarque de l\"univers traditionnel des chocolats blancs, grâce à sa note sucrée tout en légèreté et sa couleur subtilement nacrée. \nRéférence iconique, Ivoire est devenu le mot générique parmi les professionnels de la gastronomie pour désigner le chocolat blanc.', 2, NULL, 1, 1),
(23, 'Valrhona - Caraïbe 66%', 3, 2, 'Caraïbe, avec ses notes amères intenses et ses accents boisés et de fruits secs grillés, fait rêver à une danse envoûtante à l\"ombre des cacaoyers. \nRéférent des chocolats équilibrés depuis 1988, Caraïbe est issu d\"un assemblage complexe de profils aromatiques de cacaos typiques de République Dominicaine, Equateur, Jamaïque et Togo pour atteindre ce goût singulier. Caraïbe est ainsi nommé car il rend hommage à la diversité des îles Caraïbes, dont les fèves ont inspiré sa création. ', 3, NULL, 1, 1),
(24, 'Thé noir Par Amour - 100g', 3, 2, 'Un thé noir aux saveurs de cerise parsemé de pétales de rose et de cœur en sucre. \nUne façon gourmande et délicate de dire JE T\"AIME à ceux qui sont chers à notre cœur... \nA la fois fruité, parfumé et sucré ce thé saura mettre vos pailles en extase. Les pétales de rose qu\"il contient remplaceront volontiers le traditionnel bouquet de fleurs de la Saint Valentin... ', 4, NULL, 1, 1),
(25, 'Valrhona - Oriado 60% 1kg', 3, 2, 'La douceur onctueuse et vanillée d\"Oriado invite à une sieste sur le sable chaud, avec la caresse enveloppante du soleil sur la peau. \nCréé en 2015, Oriado se distingue à la dégustation par sa légèreté et son équilibre. Issu de la gamme certifée, Oriado est l\"expression visible de l\"engagement de Valrhona, pour sa qualité et la traçabilité de la filière cacao. \nOriado est réalisé exclusivement à partir des meilleures matières premières biologiques, issues du commerce équitable (certifié Fairtrade/ Max Havelaar et issu de l\"Agriculture Biologique)', 3, NULL, 1, 1),
(26, 'GEISHA DU PANAMA - 150g', 3, 2, '', 2, NULL, 1, 1),
(27, 'Thé vert citron - 15 infusettes', 3, 2, '', 3, NULL, 1, 1),
(28, 'Delonghi Dinamica 3515B', 3, 2, 'Système Boissons lactées : Buse vapeur simple\nBoissons réalisable : Expresso, Café Long (Lungo), Café, Café Filtre (basse pression), Mousse de lait manuel, Eau chaude\nTrappe à moulu : Oui\nNombre de réglages du Broyeur : 13 positions\nRéglage intensité café : 5\nTempérature de percolation programmable : 3 niveaux\nInterface : Touches tactiles\nType d\"écran : Écran à texte LCD\nType de Broyeur Acier\n2 cafés simultanés : Oui\nRinçage des buses : Automatique\nEntretien du Groupe Café Manuel : groupe café extractible\nPression de la pompe : 15 Bars\nGarantie : 3 ans\nColoris : Noir\nMatériau(x) : ABS Mat\nVolume du réservoir à eau : 1.8 l\nVolume du bac à grain : 300 g\nNombre de bac à grains  : 1 bac\nVolume du bac à marcs : 14 galettes\nDimensions (LxPxH) : 236 x 429 x 348 mm\nPoids  : 9.5 Kg\nPuissance (en Watts) : 1450 W\nCapacité journalière : jusqu\"à 30 cafés/jour', 4, NULL, 1, 1),
(29, 'Infuseur Gladys', 3, 2, '', 0, NULL, 1, 1),
(30, 'Infuseur hippopotame', 3, 2, '', 12, NULL, 1, 1),
(31, 'Dragée Reyanud - Mûre 150g', 3, 2, '', 2, NULL, 1, 1),
(32, 'Amande crème de nougat - 140g', 3, 2, '', 5, NULL, 1, 1),
(33, 'Détartrant Delonghi', 3, 2, '', 8, NULL, 1, 1),
(34, 'Cartouche filtrante Delonghi', 3, 2, '', 9, NULL, 1, 1),
(35, 'Rooibos caramel - 100g', 3, 2, '', 9, NULL, 1, 1),
(36, 'Earl Grey - 15 infusettes', 3, 2, '', 8, NULL, 1, 1),
(37, 'Secret d\'Antan - 15 infusettes', 3, 2, '', 7, NULL, 1, 1),
(38, 'Peps - 15 infusettes', 3, 2, '', 8, NULL, 1, 1),
(39, 'Gyokuro - 100g', 3, 2, '', 9, NULL, 1, 1),
(40, 'Honeybush chocolat - 100g', 3, 2, '', 8, NULL, 1, 1),
(41, 'Maté latino - 100g', 3, 2, '', 9, NULL, 1, 1),
(42, 'Infusion Yetchuno - 100g', 3, 2, '', 8, NULL, 1, 1),
(43, 'Namas\'thé 100g', 3, 2, '', 9, NULL, 1, 1),
(44, 'Infusion d\'antan - 100g', 3, 2, '', 8, NULL, 1, 1),
(45, 'Thé blanc grenade cassis aloe 100g', 3, 2, '', 9, NULL, 1, 1),
(46, 'Thé blanc framboise tonka 50g', 3, 2, '', 8, NULL, 1, 1),
(47, 'Papouasie Nouvelle Guinée', 3, 2, '', 9, NULL, 1, 1),
(48, 'Bonbon d\'anis 100g', 3, 2, '', 8, NULL, 1, 1),
(49, 'Thé vert menthe - 15 infusettes', 3, 2, '', 9, NULL, 1, 1),
(50, 'Zen - 15 infusettes', 3, 2, '', 8, NULL, 1, 1),
(51, 'La délicieuse - 15 infusettes', 3, 2, '', 7, NULL, 1, 1),
(52, 'Croisière sur le Nil - 15 infusettes', 3, 2, '', 7, NULL, 1, 1),
(53, 'Thé vert menthe - 100g', 3, 2, '', 8, NULL, 1, 1),
(54, 'Infusion verveine - 50g', 3, 2, '', 6, NULL, 1, 1),
(55, 'Pu Erh - 100g', 3, 2, '', 5, NULL, 1, 1),
(56, 'Cerise sauvage - 15 infusettes', 3, 4, 'Pomme, Cynorrhodon, Hibiscus, Cerise sauvage (3%), arômes', 12, NULL, 1, 1),
(57, 'Zen', 3, 4, 'Oranger Doux pétale, Passiflore des Indes, Camomille Matricaire, Mélisse, Coquelicot', 3, NULL, 1, 1),
(58, 'Thé blanc Bai Mu Dan - 15 infusettes', 3, 4, 'Thé blanc de Chine', 21, NULL, 1, 1),
(59, 'Lendemain de fête - 15 infusettes', 3, 4, 'Thé Noir, Badiane, Tilleul Aubier, Gingembre, Réglisse', 2, NULL, 1, 1),
(60, 'English Breakfast - 15 infusettes', 3, 4, 'Thé noir', 3, NULL, 1, 1),
(61, 'Sencha douce saveur - 15 infusettes', 3, 4, 'Thé vert Sencha (70%), Raisin de Corinthe, Pétale de rose, arômes,  Ananas, Papaye, Fraise, Framboise', 5, NULL, 1, 1),
(62, 'Thé vert bio - 15 infusettes', 3, 4, 'Thé vert Bio', 7, NULL, 1, 1),
(63, 'Detox Automne hiver - 15 infusettes', 3, 4, 'Thé vert feuille, Chicorée feuille, Citron écorce, Chiendent Officinal racine', 8, NULL, 1, 1),
(64, 'Brésil', 3, 9, 'Premier pays producteur de café, ce cru du Brésil de chez Daterra vous surprendra par ses notes sucrées et fruitées.', 76, NULL, 1, 1),
(65, 'Ethiopie Yrgacheffe', 3, 9, 'Issu de la célèbre région d\"Ethiopie Yrgacheffe, ce café est récolté à pleine maturité, puis laissé fermenter sous eau de 24 à 36 heures afin de développer ses arômes d\"une rare délicatesse', 5, NULL, 1, 1),
(66, 'Mexique Décaféiné', 3, 9, 'Un décaféiné mexicain issu d\"un process naturel à l\"eau et crédité du label biologiqueLabel : Bio', 8, NULL, 1, 1),
(67, 'Pérou El Palto', 3, 9, 'L\"association JUMARP qui gère cette coopérative a pour objectifs d\"aider fiancièrement les producteurs et d\"améliorer leurs conditions de travail mais aussi en finançant la construction d\"école Label : Bio', 9, NULL, 1, 1),
(68, 'Blend de la Brûlerie', 3, 9, 'Un café rond et subtil 100% arabica avec ses notes de chocolat et de fruits secs', 6, NULL, 1, 1),
(69, 'Mélange italien', 3, 9, 'Un café corsé comme dans la tradition italienne avec ses notes de cacao et animal', 10, NULL, 1, 1),
(70, 'Honduras', 3, 9, 'Ce Cru du Honduras vous fera voyager dans ce pays emblématique de la production de café', 11, NULL, 1, 1),
(71, 'Indonésie', 3, 9, '', 21, NULL, 1, 1),
(72, 'Le Café Sigalas - 10 capsules', 3, 9, '', 21, NULL, 1, 1),
(73, 'Colombie', 3, 10, 'Issu d\"un microlot de Colombie, ce café vous ravira par ses notes subtiles et suaves', 11, NULL, 1, 1),
(74, 'Ethiopie Guji', 3, 11, 'Berceau du café, ce cru produit dans la région de Guji est séché naturellement au soleil pour transférer les sucres présent dans la chair du fruit au grain de café', 11, NULL, 1, 1),
(75, 'Guji Ethiopie naturel', 3, 11, 'Berceau du café, ce cru produit dans la région de Guji est séché naturellement au soleil pour transférer les sucres présent dans la chair du fruit au grain de café', 11, NULL, 1, 1),
(76, 'Machine Automatique Mélitta Solo Noir', 3, 14, 'Machine automatique avec moulin intégré, réservoir d\"eau + 1kg de café offert Pérou Bio Commerce équitable', 11, NULL, 1, 1),
(77, 'cafetière', 3, 14, 'Machine à café vendue avec 3 adaptateurs : Café moulu, Capsules Nespresso et Capsules Dolce Gusto. Une machine compact et facile d\"utilisation. Fournit avec un tampeur et une cuillère doseuse.', 21, NULL, 1, 1),
(78, 'Tea maker 0.5l', 3, 14, '', 23, NULL, 1, 1),
(79, 'Orangette chocolat noir  - 100g', 3, 19, '', 22, NULL, 1, 1),
(80, 'Caramel à l\'O - 230g', 3, 19, 'Elaboré par la Confiserie Lou Sucrèu St Haon-le-Châtel avec l\"eau Thermale de Salins les Bains, Jura\nIngrédients : crème, sucre, glucose, beurre, sel 1,2%.\nSans huile de palme', 13, NULL, 1, 1),
(81, 'Nougatine amandes - 150g', 3, 19, 'Fabrication artisanale par la Confiserie \"La Sucrerie\" - 39600 Arbois, JURA\nIngrédients : glucose, sucre, amandes, beurre', 14, NULL, 1, 1),
(82, 'Miel forêt - 250g', 3, 19, 'Miel du JURA - 39190 Val-Sonnette', 14, NULL, 1, 1),
(83, 'Nougatine sésame - 150g', 3, 19, 'Fabrication artisanale par la Confiserie \"La Sucrerie\" - 39600 Arbois, JURA\nIngrédients : glucose, sucre, lin,  sésame, beurre\nTraces possibles de fruits à coque', 21, NULL, 1, 1),
(84, 'Miel Tilleul - 250g', 3, 20, 'Miel du JURA - 39190 Val-Sonnette', 22, NULL, 1, 1),
(85, 'Infusion Tout en douceur - 50g', 3, 21, '', 21, NULL, 1, 1),
(86, 'Infusion Camomille - 50g', 3, 22, '', 11, NULL, 1, 1),
(87, 'Infusion Fruits rouges - 100g', 3, 22, '', 23, NULL, 1, 1),
(88, 'Infusion Mangue - 100g', 3, 22, '', 32, NULL, 1, 1),
(89, 'Infusion Menthe - 50g', 3, 22, '', 33, NULL, 1, 1),
(90, 'Thé noir caramel beurre salé - 100g', 3, 22, 'Du caramel fondant et doux accompagné d\"un soupçon de sel de perles africaines ajoutés aux morceaux de crème et d\"amandes... Il n\"en fallait pas plus pour inventer cette noble création gourmande.', 22, NULL, 1, 1),
(91, 'Darjeeling First Flush - 100g', 3, 22, 'Signifiant \"pays des orages\" en langue tibétaine. Plantation de thé noir issue de la région d\"Inde portant le même nom, elle est la seule à bénéficier d\"une Indication Géographique Protégée (IGP) pour lutter contre les nombreuses contrefaçons existantes.\nLe thé peut être récolté jusqu\"à 4 fois par an, celle du printemps, la première récolte, ou \"First Flush\" est très attendue des amateurs qui la qualifient de \"Champagne du thé\".\nElle offre un thé léger et délicat aux notes fraîches et intenses, merveilleusement élaboré et présentant un caractère frais, légèrement épicé. ', 33, NULL, 1, 1),
(92, 'English Breakfast - 100g', 3, 22, 'Ce mélange So British de culture biologique contrôlée est composé essentiellement de thés Assam. D\"abord réservée à l\"élite anglaise, la consommation du \"five o\"clock tea\" se démocratise au XIXe siècle. Depuis l\"époque coloniale, les Britanniques ont pour habitude de consommer des thés noirs plus corsés le matin comme ce ENGLISH BREAKFAST. Ce thé, à la fois puissant et aromatique, révèle une tasse foncée d\"un brun cuivré et un bouquet plein et épicé. ', 12, NULL, 1, 1),
(93, 'Roiboos bergamote - 100g', 3, 22, '', 43, NULL, 1, 1),
(94, 'Rooibos aloe vera melon', 3, 22, '', 6, NULL, 1, 1),
(95, 'Rooibos Cranberry vanille - 100g', 3, 22, '', 56, NULL, 1, 1),
(96, 'Rooibos Rhubarbe framboise - 100g', 3, 22, '', 87, NULL, 1, 1),
(97, 'Thé blanc Chine - 50g', 3, 22, 'Ce thé du Yunnan est cultivé à une altitude comprise entre 1300 et 2000m d\"altitude et à des températures allant de 12 à 23°C. Ses grandes feuilles ouvertes vert clair et la large proportion de pointes argentées laissent un bouquet doux et fleuri en bouche. La liqueur a un parfum fleuri dont la couleur rappelle le lever du soleil.Le THE BLANC est celui qui nécessite le temps d\"infusion le moins long, l\"eau la moins chaude et est celui qui subit le moins de transformation.', 9, NULL, 1, 1),
(98, 'Thé noir Ceylan - 100g', 3, 22, 'Jusqu’au milieu du XIXème siècle, on consommait à Ceylan exclusivement du café. Cependant, dans les années 1850, un parasite ravagea les plantations de café de l’île, ce qui obligea les cultivateurs anglais à recourir à une autre plante : les théiers. C’est ainsi que le thé fit son apparition au Sri Lanka.\nCe Ceylan organique provient de la vallée de Bogawantalwa dans l\"ouest du Sri Lanka. Les feuilles courtes et foncées d\"un brun rouillé développent une tasse brillante de couleur cuivrée et une infusion rouge vif. Le bouquet vous impressionnera par son goût plein et un arôme doux et épicé, qui laisse un arrière-goût très riche.  ', 19, NULL, 1, 1),
(99, 'Thé noir Chine - 100g', 3, 22, 'La qualité supérieure de ce thé noir du Yunnan se présente magnifiquement avec beaucoup de grandes pointes de feuilles brun doré et une infusion brun cuivré foncé avec un goût bien équilibré et des notes légèrement douces et épicées. Elle vous laissera avec une touche finale douce et légèrement fumée. ', 17, NULL, 1, 1),
(100, 'Thé noir fruits rouges - 100g', 3, 22, 'L’ardeur du printemps se transforme en amour estival. Les fleurs de pavot, le souci et la rose sont les annonciateurs de l’été. Le bonheur peut durer un moment de plus sur cette prairie fruitée et douce de fleurs. \n\n\n', 7, NULL, 1, 1),
(101, 'Thé noir Inde - 100g', 3, 22, 'Ce thé noir du Sud de l\"Inde du jardin Thiashola a une saveur fraîche et légèrement tranchante avec un certain corps. Une feuille multicolore et inégale avec des tâches vertes. La couleur de coupe d\"un rouge cuivre offre un parfum de fleurs fraîches. ', 12, NULL, 1, 1),
(102, 'Thé noir mangue - 100g', 3, 22, '', 1, NULL, 1, 1),
(103, 'Thé noir orange - 100g', 3, 22, 'Aussi rafraîchissant et vitaminé qu\"un jus d\"orange pressé, ce thé noir, frais et vif, sera votre allié pour démarrer votre journée du bon pied ! ', 21, NULL, 1, 1),
(104, 'Thé noir pêche - 100g', 3, 22, 'Ce thé de Ceylan doux décoré avec les couleurs de différentes fleurs et le bleu profond et scintillant de fleurs de bleuet est une promesse de détente complète. Cet arôme est composé des fruits les plus exotiques au monde et d\"un soupçon de crème douce qui fait errer vos pensées, vous permettant de profiter d’un moment de relaxation parfait et de recueillir de nouvelles forces. ', 1, NULL, 1, 1),
(105, 'Thé vert citron jasmin - 100g', 3, 22, '', 3, NULL, 1, 1),
(106, 'Thé vert fraise litchi - 100g', 3, 22, '', 4, NULL, 1, 1),
(107, 'Thé vert Inde - 100g', 3, 22, 'Au cours des dernières années, la plantation Nagri Farm, qui se trouve dans la vallée de Rongbong, a acquis une réputation exceptionnelle pour la production de thé vert. La plantation est répartie sur une superficie de 571 hectares à des altitudes allant jusqu’à 1400 m et a une production annuelle d’environ 190000 kg de thé. Les buissons poussent lentement dans l’air frais de la montagne et l’arôme et les feuilles peuvent se développer parfaitement dans ces conditions idéales. La feuille verte régulière a quelques pointes argentées et présente son caractère classique, rond et doux dans une tasse jaune citron. ', 5, NULL, 1, 1),
(108, 'Thé vert Japon - 50g', 3, 22, '', 6, NULL, 1, 1),
(109, 'Thé vert jasmin - 100g', 3, 22, 'Avec une tasse légèrement jaune et le parfum expressif et typique de jasmin ainsi qu\"une légère note fruitée-acidulée, ce thé au jasmin est un compagnon idéal pour chaque repas et un vrai désaltérant. Selon la qualité de l’eau, le thé peut être infusé plus d’une fois', 7, NULL, 1, 1),
(110, 'Thé vert mangue ananas - 100g', 3, 22, '', 8, NULL, 1, 1),
(111, 'Thé vert poire - 100g', 3, 22, '', 9, NULL, 1, 1),
(112, 'Thé vert Vanille jasmin - 100g', 3, 22, '', 1, NULL, 1, 1),
(113, 'Thé vert Vietnam - 100g', 3, 22, '', 2, NULL, 1, 1),
(114, 'Infusion Noix de coco aloé vera - 100g', 3, 22, '', 43, NULL, 1, 1),
(115, 'Infusion Pina Colada -100g', 3, 22, '', 54, NULL, 1, 1),
(116, 'Infusion Poire cannelle - 100g', 3, 22, '', 66, NULL, 1, 1),
(117, 'Infusion Tilleul - 50g', 3, 22, '', 77, NULL, 1, 1),
(118, 'Thé vert pêche - 100g', 3, 22, '', 2, NULL, 1, 1),
(119, 'Thé vert mirabelle - 100g', 3, 22, '', 12, NULL, 1, 1),
(120, 'Thé vert figue baies rouges - 100g', 3, 22, '', 34, NULL, 1, 1),
(121, 'Thé vert pomme gingembre - 100g', 3, 22, '', 0, NULL, 1, 1),
(122, 'Thé vert cerise - 100g', 3, 22, 'Ce thé vert est une invitation au voyage... L\"excellente base abondamment décorée de pétales de rose, et son parfum fruité de cerise n\"est pas sans rappeler les magnifiques jardins japonais durant la saison de floraison des cerisiers... ', 65, NULL, 1, 1),
(123, 'Oolong Vietnam - 100g', 3, 22, 'Thé désigné sous le nom de « bleu vert » à mi chemin entre le thé vert non oxydé et le thé noir complétement oxydé. Qualifié de thé semi-oxydé, faible en théine il sera à déguster tout au long de la journée. Issu de la ville de Bao Loc, où sont produits des Oolong en utilisant les méthodes taïwanaises anciennes. Les feuilles de thé fraîchement cueillies sont séchées puis écrasées pour commencer la fermentation. Après avoir atteint le niveau de fermentation souhaité, le thé est séché à basse température. La tasse verte rayonnante caresse les papilles de chacun avec sa saveur fleurie et sucrée. ', 76, NULL, 1, 1),
(124, 'Croisière sur le Nil - 100g', 3, 22, '', 56, NULL, 1, 1),
(125, 'L\'ambroisie du dragon 100g', 3, 22, '', 875, NULL, 1, 1),
(126, 'Maté della Melagrana - 100g', 3, 22, '', 654, NULL, 1, 1),
(127, 'Bâton de réglisse 100g', 3, 22, '', 4, NULL, 1, 1),
(128, 'Thé vert citron - 100g', 3, 22, '', 3, NULL, 1, 1),
(129, 'Thé vert coco ananas - 100g', 3, 22, '', 2, NULL, 1, 1),
(130, 'Thé vert ananas fraise - 100g', 3, 22, '', 3, NULL, 1, 1),
(131, 'Earl Grey - 100g', 3, 22, '', 4, NULL, 1, 1),
(132, 'Infusion Chaï - 100g', 3, 22, '', 5, NULL, 1, 1),
(133, 'Maté - 100g', 3, 22, '', 6, NULL, 1, 1),
(134, 'Lapsang Souchong - 100g', 3, 22, '', 7, NULL, 1, 1),
(135, 'Doux nectar - 100g', 3, 22, '', 3, NULL, 1, 1),
(136, 'Thé vert cactus ananas - 100g', 3, 22, '', 5, NULL, 1, 1),
(137, 'Symphonie - 15 infusettes', 3, 23, 'Raisin de Corynthe, Cynorrhodon, Hibiscus, Orange, Ananas, Papaye, arômes', 7, NULL, 1, 1),
(138, 'Digestive - 15 infusettes', 3, 23, 'Menthe Poivrée BIO plante, Mélisse BIO plante, Angélique BIO fruit, Anis Vert BIO fruit, Fenouil BIO fruit', 6, NULL, 1, 1),
(139, 'Au clair de la Lune - 15 infusettes', 3, 23, 'Oranger Doux feuille, Passiflore des Indes, Mélisse, Verveine Odorante, Aspérule Odorante', 9, NULL, 1, 1),
(140, 'Camomille - 15 infusettes', 3, 23, 'Camomille Bio', 6, NULL, 1, 1),
(141, 'Infusion Tilleul - 15 infusettes', 3, 23, 'Tilleul', 9, NULL, 1, 1),
(142, 'Infusion Verveine - 15 infusettes', 3, 23, 'Verveine Bio', 4, NULL, 1, 1),
(143, 'Tisane de Noël - 15 infusettes', 3, 23, 'Cannelle, Orange Douce, Badiane, Hibiscus, Orange Amère, Cardamome', 2, NULL, 1, 1),
(144, 'Transit - 15 infusettes', 3, 23, 'Anis Vert, Menthe Douce, Citronnelle', 4, NULL, 1, 1),
(145, 'bonjour je test', 3, 1, 'bjr', 21, '', 0, 1),
(146, 'bonjour je test', 3, 1, 'bjr', 21, '', 0, 1),
(147, 'bonjour je test', 3, 1, 'bjr', 21, '', 0, 1),
(148, 'Maurice Lefanier', 3, 1, 'test', -2, '', 1, 0);

-- --------------------------------------------------------

--
-- Structure de la table `produit_commande`
--

DROP TABLE IF EXISTS `produit_commande`;
CREATE TABLE IF NOT EXISTS `produit_commande` (
  `id_commande` int(11) NOT NULL,
  `id_produit` int(11) NOT NULL,
  `id_declinaison_produit` int(11) DEFAULT NULL,
  `quantité_produit` int(11) NOT NULL,
  `prix_HT` float NOT NULL,
  `montant_TVA` float NOT NULL,
  PRIMARY KEY (`id_commande`,`id_produit`),
  KEY `fkIdx_32` (`id_commande`),
  KEY `fkIdx_182` (`id_declinaison_produit`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `produit_commande`
--

INSERT INTO `produit_commande` (`id_commande`, `id_produit`, `id_declinaison_produit`, `quantité_produit`, `prix_HT`, `montant_TVA`) VALUES
(1, 13, NULL, 2, 2, 0.1),
(2, 5, NULL, 4, 23, 0.1),
(4, 15, NULL, 2, 10, 0.1);

-- --------------------------------------------------------

--
-- Structure de la table `role`
--

DROP TABLE IF EXISTS `role`;
CREATE TABLE IF NOT EXISTS `role` (
  `id_role` int(11) NOT NULL AUTO_INCREMENT,
  `libelle_role` varchar(45) NOT NULL,
  PRIMARY KEY (`id_role`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `role`
--

INSERT INTO `role` (`id_role`, `libelle_role`) VALUES
(1, 'Administrateur'),
(2, 'Employé'),
(3, 'Client'),
(4, 'Rédacteur');

-- --------------------------------------------------------

--
-- Structure de la table `rubrique`
--

DROP TABLE IF EXISTS `rubrique`;
CREATE TABLE IF NOT EXISTS `rubrique` (
  `id_rubrique` int(11) NOT NULL AUTO_INCREMENT,
  `titre` text NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`id_rubrique`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `rubrique`
--

INSERT INTO `rubrique` (`id_rubrique`, `titre`, `description`) VALUES
(2, 'Culture du café', 'Retrouvez tous les articles de blog sur la culture du café.'),
(5, 'Nos cafés', 'Retrouvez nos derniers produits.');

-- --------------------------------------------------------

--
-- Structure de la table `statut_commande`
--

DROP TABLE IF EXISTS `statut_commande`;
CREATE TABLE IF NOT EXISTS `statut_commande` (
  `id_statut` int(11) NOT NULL AUTO_INCREMENT,
  `libelle_statut` varchar(45) NOT NULL,
  `description_statut` text NOT NULL,
  PRIMARY KEY (`id_statut`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `statut_commande`
--

INSERT INTO `statut_commande` (`id_statut`, `libelle_statut`, `description_statut`) VALUES
(1, 'En attente de confirmation de la commande', ''),
(2, 'Acceptée', 'Commande acceptée.'),
(3, 'En préparation', 'La commande est en cours de préparation.'),
(4, 'En attente de livraison en salle.', 'La commande est prête et va bientôt être livrée.'),
(5, 'Livrée et attente de paiement', 'La commande a été livrée, en attente du paiement du client.'),
(6, 'Terminer', 'La commande est terminée.'),
(7, 'Refusée', 'Commande refusée.'),
(8, 'Le client est parti.', 'Le client est parti sans payer et sans avoir été livré.'),
(9, 'Le client est parti sans payer.', 'Le client a bien été livré, mais il est parti sans payer.'),
(10, 'Réclamation du client', 'Le client n\'est pas satisfait.');

-- --------------------------------------------------------

--
-- Structure de la table `tva`
--

DROP TABLE IF EXISTS `tva`;
CREATE TABLE IF NOT EXISTS `tva` (
  `id_tva` int(11) NOT NULL AUTO_INCREMENT,
  `pourcentageTVA` decimal(10,1) NOT NULL,
  PRIMARY KEY (`id_tva`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `tva`
--

INSERT INTO `tva` (`id_tva`, `pourcentageTVA`) VALUES
(1, '2.1'),
(2, '5.5'),
(3, '10.0'),
(4, '20.0');

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `article`
--
ALTER TABLE `article`
  ADD CONSTRAINT `FK_134` FOREIGN KEY (`id_employe`) REFERENCES `employe` (`id_employe`),
  ADD CONSTRAINT `FK_137` FOREIGN KEY (`id_rubrique`) REFERENCES `rubrique` (`id_rubrique`);

--
-- Contraintes pour la table `client`
--
ALTER TABLE `client`
  ADD CONSTRAINT `FK_C7440455DC499668` FOREIGN KEY (`id_role`) REFERENCES `role` (`id_role`);

--
-- Contraintes pour la table `commande`
--
ALTER TABLE `commande`
  ADD CONSTRAINT `FK_108` FOREIGN KEY (`id_employe`) REFERENCES `employe` (`id_employe`),
  ADD CONSTRAINT `FK_51` FOREIGN KEY (`id_statut`) REFERENCES `statut_commande` (`id_statut`);

--
-- Contraintes pour la table `commentaire`
--
ALTER TABLE `commentaire`
  ADD CONSTRAINT `FK_20` FOREIGN KEY (`id_client`) REFERENCES `client` (`id_client`),
  ADD CONSTRAINT `FK_23` FOREIGN KEY (`id_produit`) REFERENCES `produit` (`id_produit`);

--
-- Contraintes pour la table `declinaison_produit`
--
ALTER TABLE `declinaison_produit`
  ADD CONSTRAINT `FK_154` FOREIGN KEY (`id_declinaison`) REFERENCES `declinaison` (`id_declinaison`),
  ADD CONSTRAINT `FK_157` FOREIGN KEY (`id_produit`) REFERENCES `produit` (`id_produit`);

--
-- Contraintes pour la table `employe`
--
ALTER TABLE `employe`
  ADD CONSTRAINT `FK_43` FOREIGN KEY (`id_role`) REFERENCES `role` (`id_role`);

--
-- Contraintes pour la table `produit`
--
ALTER TABLE `produit`
  ADD CONSTRAINT `FK_11` FOREIGN KEY (`id_categorie`) REFERENCES `categorie` (`id_categorie`),
  ADD CONSTRAINT `FK_93` FOREIGN KEY (`id_tva`) REFERENCES `tva` (`id_tva`);

--
-- Contraintes pour la table `produit_commande`
--
ALTER TABLE `produit_commande`
  ADD CONSTRAINT `FK_178` FOREIGN KEY (`id_declinaison_produit`) REFERENCES `declinaison_produit` (`id_declinaison_produit`),
  ADD CONSTRAINT `FK_30` FOREIGN KEY (`id_commande`) REFERENCES `commande` (`id_commande`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
