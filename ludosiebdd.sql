-- phpMyAdmin SQL Dump
-- version OVH
-- https://www.phpmyadmin.net/
--
-- Hôte : ludosiebdd.mysql.db
-- Généré le : ven. 12 mai 2023 à 10:49
-- Version du serveur : 5.7.42-log
-- Version de PHP : 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `ludosiebdd`
--
CREATE DATABASE IF NOT EXISTS `ludosiebdd` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `ludosiebdd`;

-- --------------------------------------------------------

--
-- Structure de la table `compte`
--

DROP TABLE IF EXISTS `compte`;
CREATE TABLE `compte` (
  `id` int(11) NOT NULL,
  `pseudo` varchar(255) NOT NULL,
  `mail` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `mdp` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `compte`
--

INSERT INTO `compte` (`id`, `pseudo`, `mail`, `date`, `mdp`) VALUES
(1, 'Zebrane', 'zebrane.safari@gmail.com', '2002-05-12', 'laVmVzySnjyl2'),
(2, 'Romain', 'romain.gerard35@outlook.com', '2001-08-15', 'laVvftUMbaH16'),
(3, 'Roucky', 'roucky.fileminion@gmail.com', '2006-10-19', 'laWBuamrquK3Q'),
(4, 'Satsujin', 'kgirard077@gmail.com', '2002-06-12', 'laNTdgQw5B7.A'),
(6, 'Daguouz', 'wow.nono@hotmail.fr', '1998-09-11', 'la6.bhqDYOSzs'),
(7, 'OhLaMerde', 'OhLaMerde@gmail.com', '2023-02-14', 'labG37pkSj.3M');

-- --------------------------------------------------------

--
-- Structure de la table `nummorum`
--

DROP TABLE IF EXISTS `nummorum`;
CREATE TABLE `nummorum` (
  `id` int(11) NOT NULL,
  `numQuestion` int(11) NOT NULL,
  `question` varchar(255) NOT NULL,
  `a` varchar(255) NOT NULL,
  `b` varchar(255) NOT NULL,
  `c` varchar(255) NOT NULL,
  `d` varchar(255) NOT NULL,
  `reponse` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `nummorum`
--

INSERT INTO `nummorum` (`id`, `numQuestion`, `question`, `a`, `b`, `c`, `d`, `reponse`) VALUES
(1, 1, 'Quel pays a une feuille d\'érable sur son drapeau national ?', 'États-Unis', 'Canada', 'Royaume-Uni', 'Afrique Du Sud', 'b'),
(2, 2, 'Quel animal est un descendant du loup ?', 'Poule', 'Lapin', 'Chien', 'Vache', 'c'),
(3, 7, 'Quel président des États-Unis était acteur ?', 'Jimmy Carter', 'Ronald Reagan', 'Bill Clinton', 'Lyndon B. Johnson', 'b'),
(4, 2, 'Qui a été président des États-Unis ?', 'Mickey Trump', 'Dingo Trump', 'Pat Trump', 'Donald Trump', 'd'),
(5, 3, 'Qu\'est-ce qui gravite autour de la Terre ?', 'Une étoile', 'Une planète', 'Un astéroïde', 'Un satellite', 'd'),
(6, 4, 'Quel est le plus grand État des États-Unis ?', 'Alaska', 'Californie', 'Texas', 'Nouveau Mexique', 'a'),
(7, 5, 'L\'Île de Pâques appartient à quel pays ?', 'Royaume-Uni', 'Chili', 'Argentine', 'Espagne', 'b'),
(8, 6, 'Selon le titre d\'une série, combien valait l\'homme ?', '1 Milliard', '2 Milliards', '3 Milliards', '4 Milliards', 'c'),
(9, 8, 'Lequel de ces aliments pousse sur un arbre ?', 'L\'ananas', 'L\'avocat', 'Le melon', 'La banane', 'b'),
(10, 9, 'En quelle année Vladimir Poutine est-il élu pour la prmière fois ?', '1998', '1999', '2000', '2001', 'c'),
(11, 10, 'En 2022, combien de pays issus de l\'Union Européenne possède du rouge sur son drapeau ?', '19', '20', '21', '22', 'b'),
(12, 11, 'De quoi a peur un pentheraphobe ?', 'Les figures à cinq côtés', 'Les belles-mères', 'Les panthères', 'Les pharmacies', 'b'),
(13, 12, 'Quelle île s\'appelait la Nouvelle-Cythère ?', 'Tahiti', 'Hawaï', 'Les Marquises', 'Bora-Bora', 'a'),
(14, 1, 'Lequel d\'entre eux n\'a jamais vécu au Moyen-Âge ?', 'Charles VII', 'Aliénor d\'Aquitaine', 'Guillaume le Conquérant', 'Michel Drucker', 'd'),
(15, 7, 'Dans la série \"Charmed\", quel personnage est la demi-sœur des Halliwell ?', 'Prue', 'Piper', 'Phoebe', 'Paige', 'd'),
(16, 8, 'Quel pays possède le plus de couleurs sur son drapeau ?', 'Belize', 'Seychelles', 'Afrique Du Sud', 'Dominique', 'a'),
(17, 5, 'Compléter le titre de la chanson de Michel Berger : \"La Groupie du...', 'Pianiste', 'Guitariste', 'Bassiste', 'Violoniste', 'a'),
(18, 6, 'En 2022, Elvis Presley nous a quitté il y a...', '35 ans', '40 ans', '45 ans', '50 ans', 'c'),
(19, 11, 'Selon le dessin animé du même nom, en quelle matière sont faites les oeufs des Shadoks ?', 'Mousse', 'Verre', 'Fer', 'Bois', 'c'),
(20, 12, 'Quelle orthographe est correcte ?', 'Ostralopithèque', 'Ostralopythèque', 'Australopithèque', 'Australopytèque', 'c'),
(21, 11, 'Quelle ville n\'est pas situé aux États-Unis ?', 'Havre', 'Versailles', 'Albertville', 'Marseille', 'd'),
(22, 10, 'Dans l\'État du Vermon aux États-Unis, vous pouvez visiter la ville de...', 'Montpellier', 'Montpelier', 'Monpellier', 'Monpelier', 'b'),
(23, 6, 'Au restaurant, vous pouvez commander deux...', 'Croques-monsieurs', 'Croque-monsieurs', 'Croques-monsieur', 'Croque-monsieur', 'd'),
(24, 1, 'Sur un ordinateur, sur quoi peut-on cliquer ?', 'Un mulot', 'Un rat', 'Une souris', 'Une musaraigne', 'c'),
(25, 2, 'Qui a écrit \"Le Seigneur des anneaux\" ?', 'J. R. R. Tolkien', 'Amélie Nothomb', 'Marc Lévy', 'Frédéric Beigbeder', 'a'),
(26, 3, 'Dans la bande dessinée \"Tintin\", comme s\'appelle le professeur ?', 'Tulipe', 'Jonquille', 'Colza', 'Tournesol', 'd'),
(27, 10, 'Lequel des ces peuples n\'a jamais dominé la Corse ?', 'Les Phocéens', 'Les Gênois', 'Les Vandales', 'Les Perses', 'd'),
(28, 5, 'Quelle nation a remporté 5 fois la Coupe du Monde de Football ?', 'Allemagne', 'Brésil', 'Argentine', 'Pays-Bas', 'b'),
(29, 3, 'Qui a écrit \"Les Misérables\" ?', 'Guy de Maupassant', 'Émile Zola', 'Victor Hugo', 'Honoré de Balzac', 'c'),
(30, 6, 'Quel pays ne fait pas partie de la Scandinavie ?', 'La Finlande', 'La Norvège', 'Le Danemark', 'La Suède', 'a'),
(31, 5, 'Comment appelle-t-on l\'entité composé de la Belgique, des Pays-Bas et du Luxembourg ?', 'Nebelux', 'Benelux', 'Lubenet', 'Lunebel', 'b'),
(32, 4, 'Lequel de ces pays n\'a pas de drapeau tricolore ?', 'Irlande', 'Estonie', 'Autriche', 'Islande', 'c'),
(33, 8, 'De quelle couleur était composée le drapeau de la Libye ?', 'Rouge', 'Noir', 'Blanc', 'Vert', 'd'),
(34, 7, 'Quelle est le volume d\'une bordelaise ?', '50 cL', '75 cL', '1 L', '1.5 L', 'b'),
(35, 6, 'Lequel de ces artistes ne fait pas partie du club des 27 ?', 'Jimi Hendrix', 'Amy Winehouse', 'Mike Brant', 'Kurt Cobain', 'c'),
(36, 10, 'Qui est le premier roi des Français ?', 'Louis XVI', 'Charles IX', 'Louis XVIII', 'Louis-Philippe Ier', 'a'),
(37, 9, 'En quelle année a été diffusé le premier épisode de \"Doctor Who\" au Royaume-Uni ?', '1960', '1963', '1966', '1969', 'b'),
(38, 5, 'Dans quel dessin animé peut-on voir les aventures d\'Ulysse ?', 'Ulysse 21', 'Ulysse 31', 'Ulysse 41', 'Ulysse 51', 'b'),
(39, 4, 'Sur quelle chaîne TV pouvait-on voir pour la première fois l\'animateur Jean-Luc Reichmann ?', 'TF1', 'France 2', 'Canal +', 'M6', 'b'),
(40, 9, 'Quand la France a-t-elle gagné la Coupe du Monde ?', '10 juillet 1998', '11 juillet 1998', '12 juillet 1998', '13 juillet 1998', 'c'),
(41, 8, 'Quelle lettre est rentrée dans l\'alphabet français en dernier ?', 'W', 'X', 'Y', 'Z', 'a'),
(42, 2, 'Où faut-il faire apposer un visa pour voyager dans certains pays ?', 'Un passeport', 'Une valise', 'Un billet d\'avion', 'Une voiture', 'a'),
(43, 4, 'Que verse-t-on à un auteur de chanson ?', 'Des royalties', 'Des commissions', 'Des gages', 'Des stock-options', 'a'),
(44, 7, 'Quelle ville est surnommée la \"Venise du Nord\" ?', 'Londres', 'Oslo', 'Bruges', 'Hambourg', 'c'),
(45, 6, 'Au judo, quel est l\'équivalent d\'un K.O. ?', 'Waza-Ari', 'Ippon', 'Yuko', 'Koka', 'b'),
(46, 10, 'Combien de pays ont pour devise \"L\'union fait la force\" ?', '3', '5', '7', '9', 'c'),
(47, 12, 'Lequel des ces pays a pour devise \"L\'union fait la force\" ?', 'La Suisse', 'Le Royaume-Uni', 'La Belgique', 'La Russie', 'c'),
(48, 6, 'Quelle lettre correspond au nombre 50 en chiffres romains ?', 'C', 'D', 'L', 'X', 'c'),
(49, 6, 'Quel nombre correspond au chiffre romain \"MDCLXVI\" ?', '1666', '1466', '1446', '1444', 'a'),
(50, 1, 'Quelle organisation lutte contre l\'espionnage en France ?', 'La CGT', 'La TNT', 'La DST', 'Le DVD', 'c'),
(51, 4, 'Quelle planète n\'est pas tellurique ?', 'Mercure', 'Mars', 'Saturne', 'Vénus', 'c'),
(52, 5, 'Dans \"La Famille Addams\", comment s\'appelle la fille de Morticia et de Gomez ? ', 'Lundi', 'Mardi', 'Mercredi', 'Jeudi', 'c'),
(53, 6, 'Quel proposition n\'est pas un prénom ?', 'Kléber', 'Artémidore', 'Montarville', 'Eldor', 'd'),
(54, 5, 'Quel peuple a donné son nom aux chiffres actuels ?', 'Les Arabes', 'Les Indiens', 'Les Chinois', 'Les Perses', 'b'),
(55, 5, 'Dans le calendrier républicain, quelle saison sommes-nous pendant le mois de Vendémiaire ?', 'Hiver', 'Printemps', 'Été', 'Automne', 'd'),
(56, 9, 'Où se trouvait la Calédonie ?', 'Au Royaume-Uni', 'En France', 'En Allemagne', 'En Espagne', 'a'),
(57, 10, 'Où se trouve la Zélande ?', 'En Allemagne', 'Au Danemark', 'En Belgique', 'Aux Pays-Bas', 'd'),
(58, 3, 'Selon une chanson de France Gall, qui a inventé l\'école ?', 'Dagobert', 'Charlemagne', 'Philippe', 'Childéric', 'b'),
(59, 8, 'Arrondi au centième près, combien vaut 1€ en franc français en 2002 ?', '6,54 FF', '6,55 FF ', '6,56 FF ', '6,57 FF ', 'c'),
(60, 9, 'Quelle monnaie n\'a jamais existé ?', 'Franc Pacifique', 'Franc Congolais', 'Franc Albanais', 'Franc Walon', 'd'),
(61, 3, 'Dans \"Star Wars\", de quelle couleur est le sabre de Dark Vador ?', 'Vert', 'Mauve', 'Jaune', 'Rouge', 'd'),
(62, 11, 'Quelle est la capitale de l\'Islande ?', 'Reykyavik', 'Reykjavik', 'Rejkiavyk', 'Reykjavyk', 'b'),
(63, 1, 'Comment les acolytes de Gru s\'appellent-ils dans \"Moi, moche et méchant\" ?', 'Les Doux', 'Les Adorables', 'Les Minions', 'Les Chouchous', 'c'),
(64, 2, 'Quelle ville se situe dans les Alpes-Martimes ?', 'Nez', 'Bouche', 'Oreille', 'Menton', 'd'),
(65, 11, 'Qui est le premier président français à être logé dans le palais de l\'Élysée ?', 'Louis-Napoléon Bonaparte', 'Adolphe Thiers', 'Jean Casimir-Perier', 'Vincent Auriol', 'a'),
(66, 12, 'Combien y a-t-il eu de présidents français sous la IIIe République ?', '10', '12', '14', '16', 'c'),
(67, 10, 'Selon Forrest Gump, il aurait couru pendant...', '1078 jours', '1120 jours', '1169 jours', '1218 jours', 'c'),
(68, 1, 'Comment appelle-t-on la tâche de café au fond de la tasse ?', 'Le marc', 'Le paul', 'Le jean', 'Le pascal', 'a'),
(69, 1, 'Comment appelle-t-on le résultat d\'une addition ?', 'L\'aisne', 'L\'eure', 'La somme', 'Les yvelines', 'c'),
(70, 1, 'Au Moyen-Âge, il n\'y a jamais eu...', 'Le Sacre de Charlemagne', 'Le Reigne de Louis IX', 'La Chute du mur de Berlin', 'La Guerre de Cent Ans', 'c'),
(71, 1, 'Les baleines appartiennent à la famille des...', 'Sassufis', 'Jenaimares', 'Cétacés', 'Saménerves', 'c'),
(72, 1, 'Quelle est la capitale de la France ?', 'Bordeaux', 'Paris', 'Rouen', 'Lille', 'b'),
(73, 2, 'L\'Antarctique est recouvert de...', 'Fer', 'Glace', 'Plastique', 'Carton', 'b'),
(74, 2, 'Quel proposition n\'est pas un fleuve français ?', 'Garonne', 'Rhône', 'Loire', 'Scène', 'd'),
(75, 2, 'Qui a présenté \"Le Juste Prix\" ?', 'Vincent Lagaf\'', 'Vincent Lablag\'', 'Vincent Laboulet\'', 'Vincent Labétiz\'', 'a'),
(76, 3, 'Dans \"Le Dîner de cons\", Pierre Brochant doit appeler son ami...', 'Honnête Leblanc', 'Juste Leblanc', 'Légitime Leblanc', 'Exact Leblanc', 'b'),
(77, 2, 'Que veut dire le \"T\" de \"TF1\" ?', 'Tour', 'Télévision', 'Tricycle', 'Tails', 'b'),
(78, 2, 'À la marelle, on part de la terre pour arriver...', 'Dans la mer', 'Au ciel', 'Dans la forêt', 'Au désert', 'b'),
(79, 4, 'L\'Assemblée Nationale compte...', '544 députés', '566 députés', '555 députés', '577 députés', 'd'),
(80, 3, 'Que porte les Minions ?', 'Une salopette bleue', 'Une robe rose', 'Un costume noir', 'Un manteau jaune', 'a'),
(81, 8, 'Dans le jeu \"Pokémon\", quel starter appartient à la région d\'Unys ?', 'Ouisticram', 'Moustillon', 'Marisson', 'Brindibou', 'b'),
(82, 7, 'Une fédération de catch ne s\'est jamais appelée...', 'ROH', 'WCW', 'WWF', 'RAW', 'd'),
(83, 3, 'Quelle émission TV n\'existe pas ?', 'Le Grand Concours', 'Le Grand Pâtissier', 'Le Grand Bluff', 'Le Grand Slam', 'b'),
(84, 4, 'Quel est le titre du dessin animé des studios Disney, sorti en 2004 ?', 'Frère des Ours', 'Frère des Aigles', 'Frère des Rennes', 'Frère des Cygnes', 'a'),
(85, 11, 'Qu\'est-ce qui n\'est pas représenté sur les billets de 10 € ?', 'Les Îles Canaries', 'L\'île de la Réunion', 'L\'archipel des Açores', 'L\'île de Malte', 'd'),
(86, 6, 'Quelle émission a été diffusée avant 2000 ?', 'Qui veut gagner des millions ?', 'Game Zone', 'Vivement Dimanche', 'La Méthode Cauet ', 'c'),
(87, 10, 'Quel jeu TV est apparu en premier ?', 'Mission : 1 million', 'Qui veut gagner des millions ?', 'Le Maillon Faible', 'Attention à La Marche', 'b'),
(88, 12, 'Quel célèbre chanteur est diplômé de l\'école nationale des ponts et chaussées ?', 'Gilbert Becaud', 'Serge Reggiani', 'Marcel Amont', 'Guy Beart', 'd'),
(89, 12, 'Quelle compétition artistique n\'a jamais existé aux Jeux Olympiques ?', 'Architecture', 'Théâtre', 'Littérature', 'Musique', 'b'),
(90, 9, 'Quelle est la dernière ville française à avoir accueilli les Jeux Olympiques ?', 'Paris', 'Grenoble', 'Albertville', 'Chamonix', 'c'),
(91, 5, 'Quelle ville des États-Unis est le nom du \"dernier dinosaure\" ?', 'Dallas', 'Houston', 'Denver', 'Austin', 'c'),
(92, 9, 'La 2e Guerre Mondiale a duré...', '6 ans', '6 ans et 1 jour', '6 ans et 2 jours', '6 ans et 3 jours', 'b'),
(93, 7, 'En France, si un lycéen est en terminale alors en Suisse il est en...', '11e', '12e', '13e', '14e', 'd'),
(94, 8, 'En quelle année la Tour Eiffel a-t-elle été inaugurée ?', '1889', '1893', '1897', '1900', 'a'),
(95, 3, 'Dans la saga \"Retour vers le futur\", quelle année Marty McFly n\'est jamais allé ?', '1935', '1955', '1985', '2015', 'a'),
(96, 11, 'L\'Exposition Universelle n\'a jamais eu lieu à...', 'Paris', 'Lyon', 'Lille', 'Marseille', 'd'),
(97, 9, 'En 800, Charlemagne était sacré empereur...', 'Des Francs', 'De France', 'Des Germains', 'D\'Occident', 'd'),
(98, 12, 'Quel empire a la plus grande superficie totale ?', 'Empire espagnol', 'Empire russe', 'Empire mongol', 'Empire britannique', 'd'),
(99, 10, 'En quelle année la première Exposition Universelle a-t-elle eu lieu ?', '1845', '1851', '1855', '1862', 'b'),
(100, 9, 'En France, nous ne pouvons pas visiter la ville...', 'De Vert', 'd\'Orange', 'De Violet', 'De Maron', 'c'),
(101, 6, 'Quelle ville est le chef-lieu du Finistère ?', 'Brest', 'Concarneau', 'Quimper', 'Landernau', 'c'),
(102, 9, 'En 1984, quel chancelier allemand François Mitterrand tenait-il sa main ?', 'Willy Brant', 'Helmut Schmidt', 'Gerhard Schröder', 'Helmut Kohl', 'd'),
(103, 8, 'Quelle célébrité est née sous la IVe République ?', 'Yannick Noah', 'Christophe Dechavanne', 'Pascal Bataille', 'Maurane', 'b'),
(104, 5, 'Comment s\'appelle le maître de midi qui n\'a jamais perdu dans \"Les 12 Coups de Midi\" ?', 'Bruno', 'Alexandre', 'Éric', 'Xavier', 'd'),
(105, 6, 'En Europe, quelle console de jeux-vidéos est sorti en 2005 ?', 'Nintendo DS', 'Nintendo Wii', 'PlayStation Portable', 'Playstation 2', 'a'),
(106, 11, 'Quelle ville se situe au Groenland ?', 'Ittoqqortoormiit', 'Ittoqqortorrmiit', 'Itooqqortoormiit', 'Ittoqqortoormitt', 'a'),
(107, 4, 'D\'après la chanson de Christophe, de quelle couleur sont les mots ?', 'Rouges', 'Verts', 'Blancs', 'Bleus', 'd'),
(108, 3, 'En 1981, Disney sort le dessin animé...', 'Rox et Rouky', 'Rox et Roucky', 'Rox et Rouki', 'Rox et Roucki', 'a'),
(109, 3, 'Le 18 juin 1940, qui lançait son appel aux Français depuis Londres ?', 'Charles de Gaulle', 'Philippe Pétain', 'Philippe Leclerc de Hauteclocque', 'Maurice Gamelin', 'a'),
(110, 7, 'Où Usain Bolt a-t-il établi un nouveau record des 100 m ?', 'Jeux Olympiques d\'Athènes', 'Championnats du monde d\'Helsinki', 'Championnats du monde d\'Osaka', 'Jeux Olympiques de Pékin', 'd'),
(111, 7, 'Dans l\'émission \"Top 50\", quel surnom Marc Toesca donnait-il aux téléspectateurs ?', 'Les p\'tits loups', 'Les p\'tits clous', 'Les p\'tits choux', 'Les p\'tits minous', 'b'),
(112, 9, 'En France, vous pouvez visiter la ville de...', 'Venus', 'Mars', 'Neptune', 'Pluton', 'b'),
(113, 10, 'Combien d\'hommes ont marché sur la Lune ?', '8', '10', '12', '14', 'c'),
(114, 11, 'Qui est Le premier Européen à avoir découvert l\'Amérique ?', 'Thorvald Ásvaldsson', 'Eirikr Thorvaldson', 'Thorvald Eriksson', 'Leif Eriksson', 'd'),
(115, 11, 'Où se trouve la célèbre cicatrice d\'Ulysse ?', 'Sur son visage', 'Sur sa jambe', 'Sur son bras', 'Sur son abdomen', 'b'),
(116, 8, 'Quel pays s\'appelait \"Ceylan\" ?', 'Thaïlande', 'Sri Lanka', 'Philippines', 'Indonésie', 'b'),
(117, 8, 'Quel peuple a contruit le mur d\'Hadrien ?', 'Les Grecs', 'Les Arabes', 'Les Romains', 'Les Celtes', 'c'),
(118, 12, 'Aucun territoire ne s\'est appelé...', 'Nouvelle-Espagne', 'Nouvelle-Danemark', 'Nouvelle-Néerlande', 'Nouvelle-Suède', 'b'),
(119, 12, 'François Mitterrand est le président français ayant gouverné la France le plus longtemps avec une durée de... ', '5109 jours', '5110 jours', '5111 jours', '5112 jours', 'a'),
(120, 12, 'Lequel de ces pays a changé son drapeau en dernier ?', 'Le Malawi', 'La Libye', 'Le Paraguay', 'La Géorgie', 'c'),
(121, 4, 'Quel est le symbole chimique de l\'or ?', 'O', 'Or', 'Au', 'Ao', 'c'),
(122, 7, 'Quel chanteur est mis en avant dans le film \"Walk the line\" ?', 'Elvis Presley', 'Johnny Cash', 'Jerry Lee Lewis', 'Waylon Jennings', 'b'),
(123, 5, 'Qui a présenté l\'émission \"What The Cut !?\" ?', 'Frédéric Molas', 'Mathieu Sommet', 'Antoine Daniel', 'Alexis Breut', 'c'),
(124, 11, 'Quel était le premier nom de New-York ?', 'Nouvelle-Angoulême', 'Nouvelle-Niort', 'Nouvelle-Tulle', 'Nouvelle-Bayonne', 'a'),
(125, 5, 'Dans quel sport l\'équipe de France est surnommée \"Les Experts\" ?', 'Football', 'Basket-ball', 'Handball', 'Volley-ball', 'c'),
(126, 5, 'Qui incarne le chef Chaudard dans la trilogie \"La 7e Compagnie\" ?', 'Aldo Maccione', 'Jean Lefebvre', 'Henri Guybet', 'Pierre Mondy', 'd'),
(127, 8, 'La chanson \"Rock around the clock\" était le thème principal de quelle série ?', 'Sauvés par le gong', 'Cosby Show', 'Happy Days', 'Sacré Famille', 'c'),
(128, 4, 'Sylvester Stallone a interprété au cinéma le personnage de...', 'John Rambo', 'Franck Rambo', 'Peter Rambo', 'Jack Rambo', 'a'),
(129, 7, 'Selon une chanson de Dorothée, à quoi fait-elle appel pour retrouver son cœur ?', 'Un ventilateur', 'Un ordinateur', 'Un transcodeur', 'Un porte-bonheur', 'b'),
(130, 8, 'Quelle était la capitale de la Gaule romaine ?', 'Lutèce', 'Lugdunum', 'Rotomagus', 'Burdigala', 'b'),
(131, 5, 'Combien dure le mandat d\'un maire ?', '5 ans', '6 ans', '7 ans', '8 ans', 'b'),
(132, 7, 'Sur une plaque d\'immatriculation, quel proposition symbolise la Lettonie ?', 'LV', 'LET', 'LT', 'LTV', 'a'),
(133, 5, 'Quel pays européen possède une plaque  d\'immatriculation rouge sur fond blanc ?', 'Luxembourg', 'Belgique', 'Pays-Bas', 'Suisse', 'b'),
(134, 9, 'Quel peuple Astérix a-t-il rencontré en premier ?', 'Les Bretons', 'Les Normands', 'Les Goths', 'Les Ibères', 'c'),
(135, 10, 'Lequel de ces pays possède un territoire sur les 6 continents ?', 'La France', 'Le Royaume-Uni', 'L\'Espagne', 'Le Portugal', 'a'),
(136, 4, 'Quel est le modèle du Terminator dans le film du même nom ?', 'T-200', 'T-400', 'T-600', 'T-800', 'd'),
(137, 5, 'Complétez cette phrase : \"Je veux goûter les pommes qu\'on...', 'A récolté', 'A récoltée', 'A récoltés', 'A récoltées', 'd'),
(138, 5, 'Quel est l\'unité de la tension ?', 'L\'ampère', 'L\'ohm', 'Le watt', 'Le volt', 'd'),
(139, 6, 'Quel est le plus petit État du monde ?', 'Le Luxembourg', 'Le Liechtenstein', 'Le Vatican', 'Monaco', 'c'),
(140, 10, 'Lequel de ces animaux n\'existe pas ?', 'Un narluga', 'Un zébrâne', 'Un dzo', 'Un camal', 'd'),
(141, 7, 'Quelle grande ville marocaine est située à l\'entrée du détroit de Gibraltar ?', 'Rabat', 'Agadir', 'Tanger', 'Casablanca', 'c'),
(142, 9, 'Gibraltar est un territoire...', 'Britannique', 'Espagnol', 'Marocain', 'Portugais', 'a'),
(143, 11, 'Le Baron Haussmann est connu pour avoir planifié quelle ville ?', 'Berlin', 'Bruxelles', 'Paris', 'Vienne', 'c'),
(144, 7, 'Dans quelle mer peut-on se baigner si nous sommes en Roumanie ?', 'Mer Rouge', 'Mer Morte', 'Mer Noire', 'Mer Méditerranée', 'c'),
(145, 7, 'Les Français habitant dans le Golfe du Lion peuvent nager dans la mer...', 'Méditerranée', 'Méditerrannée', 'Méditterranée', 'Méditerrané', 'a'),
(146, 6, 'Dans \"Star Wars\", quel ordre est donné par Dark Sidious pour éradiquer les Jedi ?', 'Ordre 64', 'Ordre 65', 'Ordre 66', 'Ordre 67', 'c'),
(147, 8, 'Dans le 400 m haies, combien de haies un coureur doit-il sauter par-dessus ?', '8', '10', '12', '14', 'b'),
(148, 8, 'Quelle lettre ne symbolise aucun atome ?', 'I', 'P', 'Y', 'L', 'd'),
(149, 3, 'Quelle proposition ne désigne pas un atome ?', 'Francium', 'Polonium', 'Belgium', 'Americium', 'c'),
(150, 5, 'Quel super-héros est considéré comme étant le premier Avenger ?', 'Iron Man', 'Captain America', 'Thor', 'Spider-Man', 'b'),
(151, 2, 'Dans le Nord, une wassingue sert à nettoyer...', 'Le dos', 'La raie', 'La mie', 'Le sol', 'd'),
(152, 5, 'Mario n\'a jamais sauvé...', 'Peach', 'Pauline', 'Daisy', 'Harmonie', 'd'),
(153, 5, 'Quel personnage n\'est jamais apparu dans un jeu Mario Kart ?', 'Donkey Kong', 'Diddy Kong', 'Funky Kong', 'Cranky Kong', 'd'),
(154, 7, 'Dans quel film peut-on entendre la réplique : \"S\'il saigne, on peut le tuer\" ?', 'Alien', 'Predator', 'Les dents de la mer', 'Rocky IV', 'b'),
(155, 9, 'Quel personnage n\'est pas un Skylander ?', 'Spyro', 'Bowser', 'Dr Neo Cortex', 'Rayman', 'd'),
(156, 6, 'Quel objet de transformation n\'existe pas dans le jeu \"New Super Mario Bros.\" ?', 'Une fleur', 'Une carapace', 'Un champignon', 'Un masque', 'd'),
(157, 9, 'La Russie est plus grande que...', 'Mercure', 'Vénus', 'Mars', 'Pluton', 'd'),
(158, 7, 'Quel mot signifie, en breton, \"petite mer\" ?', 'Mor-bihan', 'Armor', 'Mor-bras', 'Mor du', 'a'),
(159, 1, 'Dans quel lieu vit le président des États-Unis ?', 'La Maison Blanche', 'Le Château Vert', 'Le Manoir Orange', 'L\'Appartement Rouge', 'a'),
(160, 7, 'Quelle actrice prononce la phrase \"Est-ce que j\'ai une gueule d\'atmosphère ?\" dans le film \"Hôtel du Nord\" ?', 'Arletty', 'Anabella', 'Jane Marken', 'Paulette Dubost', 'a'),
(161, 9, 'Aucun reportage de la série des films \"Portaits\" d\'Alain Cavalier ne présente...', 'Une romancière', 'Une fleuriste', 'Une opticienne', 'Une boulangère', 'd'),
(162, 9, 'Au total, Alain Cavalier a réalisé...', '21 portraits', '22 portraits', '23 portraits', '24 portraits', 'd'),
(163, 6, 'Sur quel quai Harry Potter doit-il se rendre pour prendre le Poudlard Express ?', '6 ¾', '7 ¾', '8 ¾', '9 ¾', 'd'),
(164, 9, 'Depuis janvier 2021, aux États-Uns, Joe Biden est le...', '44e Président', '45e Président', '46e Président', '47e Président', 'c'),
(165, 8, 'Lequel de ces présidents n\'apparait pas dans le mont Rushmore ?', 'Thomas Jefferson', 'Abraham Lincoln', 'George Washington', 'Franklin Roosevelt', 'd'),
(166, 11, 'Sur le Mont Rushmore, on peut retrouver Georges Washington, Thomas Jefferson, Abraham Lincoln et...', 'Le 24e Président', 'Le 26e Président', 'Le 28e Président', 'Le 30e Président', 'b'),
(167, 9, 'À la radio, on ne pouvait pas entendre...', 'Les Chaussettes Noires', 'Les Flamants Roses', 'Les Chats Sauvages', 'Les Chemises Blanches', 'd'),
(168, 9, 'Quel titre du roman d\'Émile Zola est aussi le nom d\'un groupe de rock français ?', 'Au Bonheur des dames', 'Germinal', 'L\'Assomoir', 'Nana', 'a'),
(169, 12, 'Quel écrivain est représenté sur le tableau \"L\'Atelier de Bazille\" de Frédéric Bazille ?', 'Victor Hugo', 'Honoré de Balzac', 'Émile Zola', 'Gustave Flaubert', 'c'),
(170, 11, 'Le Mot \"kerjean\" signifie \"travail\" en...', 'Malais', 'Créole', 'Thaï', 'Vietnamien', 'a'),
(171, 10, 'Les Philippines sont une ancienne colonie...', 'Britannique', 'Américaine', 'Australienne', 'Sud-Africaine', 'b'),
(172, 11, 'Dans quelle ville Rouget de Lisle a-t-il écrit \"La Marseillaise\" ?', 'Paris', 'Strasbourg', 'Lille', 'Lyon', 'b'),
(173, 4, 'En couture, on utilise parfois un tissu appelé \"crêpe...', 'De Chine', 'De France', 'D\'Espagne', 'D\'Inde', 'a'),
(174, 8, 'En Corse, le maki est...', 'Un aliment', 'Un paysage', 'Une danse', 'Une langue locale', 'b'),
(175, 3, 'Quel personnage des \"Simpson\" a les cheveux bleus ?', 'Marge', 'Homer', 'Lisa', 'Bart', 'a'),
(176, 5, 'La chanson \"Waka Waka\" fut l\'hymne de la Coupe du Monde...', '2002', '2006', '2010', '2014', 'c'),
(177, 8, 'Sur le tableau de Delacroix, à la gauche de la Liberté guidant le peuple se dresse un enfant...', 'Blessé à la poitrine', 'Agrippant un soldat', 'Tenant 2 pistolets', 'La main sur le cœur', 'c'),
(178, 11, 'Dans le tableau \"La Liberté guidant le peuple\", Eugène Delacroix fait référence à quelle révolution ?', 'La Révolution Française', 'Les Trois Glorieuses', 'La Révolution de Février', 'La Révolte des Canuts', 'b'),
(179, 11, 'La fête nationale française célèbre quelle date ?', 'Le 14 Juillet 1789', 'Le 14 Juillet 1790', 'Le 14 Juillet 1791', 'Le 14 Juillet 1792', 'b'),
(180, 12, 'Quel roi a reigné sur la France pendant 20 minutes ?', 'Charles XI', 'Henri V', 'François III', 'Louis XIX', 'd'),
(181, 12, 'De quelle couleur fut la première cocarde lors de la Révolution Française ?', 'Bleu', 'Rouge', 'Verte', 'Jaune', 'c'),
(182, 7, 'Qui a été le premier empereur romain ?', 'Jules César', 'Auguste', 'Claude', 'Tibère', 'b'),
(183, 5, 'Qui interprète la chanson \"Le Jerk\" ?', 'Thierry Hazard', 'Thierry Aléa', 'Thierry Chansse', 'Thierry Risk', 'a'),
(184, 9, 'Quelle chanson ne fait pas partie du répertoire de Rammstein ?', 'Rein Raus', 'Dicke Titten', 'Du Hast', 'Kleiner Schwanz', 'd'),
(185, 7, 'En 1988, quel pays Céline Dion représente-elle à l\'Eurovision ?', 'Le Luxembourg', 'La Suisse', 'La Belgique', 'La France', 'b'),
(186, 12, 'Laquelle de ces personnalités Marilyn Monroe n\'a pas pu rencontrer au cours de sa vie ?', 'Sigmund Freud', 'Gustave Eiffel', 'Marie Curie', 'Henri Matisse', 'b'),
(187, 10, 'En 1923, quel sport a été diffusé pour la première fois sur une radio française ?', 'Le football', 'La boxe', 'Le rugby', 'Le cyclisme', 'b'),
(188, 5, 'Quel jour noir a vu le krach boursier de 1929 ?', 'Lundi', 'Mardi', 'Jeudi', 'Vendredi', 'c'),
(189, 6, 'Quelle proposition désigne le titre d\'une chanson de Jesse Garon ?', 'C\'est lundi', 'C\'est mardi', 'C\'est jeudi', 'C\'est samedi', 'a'),
(190, 5, 'Aucun des vampires de la chanson \"Rap Tout\" des Inconnus ne s\'est appelé... ', 'Cancras', 'Urssaf', 'Carbalas', 'Cavamac', 'd'),
(191, 6, 'Comment s\'appelle la sœur de Fatal Bazooka ?', 'Christelle', 'Rachel', 'Annabelle', 'Gabrielle', 'a'),
(192, 8, 'Un musée campanaire est un musée...', 'De drapeaux', 'De cloches', 'D\'outils agricoles', 'De fleurs séchées', 'b'),
(193, 12, 'Au XVe siècle, quelle favorite royale fut surnommée la \"Dame de Beauté\" ?', 'Agnès Sorel', 'La Pompadour', 'Lucrèce Borgia', 'Anne Boleyn', 'a'),
(194, 12, 'Quelle femme est née sous le nom de \"Jeanne-Antoinette Poisson\" ?', 'Madame de Pompadour', 'Madame d\'Heudicourt', 'Madame de Montespan', 'Madame d\'Urfé', 'a'),
(195, 10, 'De quel pays Riga est-elle la capitale ?', 'La Moldavie', 'L\'Albanie', 'La Lettonie', 'L\'Estonie', 'c'),
(196, 11, 'Quelle est la capitale du Dakota-du-Sud ?', 'Pierre', 'Paul', 'Jean', 'Jacques', 'a'),
(197, 12, 'Quelle ville attribue-t-on la devise \"Qui s\'y frotte, s\'y pique\" ?', 'Marseille', 'Quimper', 'Nancy', 'Lyon', 'c'),
(198, 11, 'En 2022, lequel de ces pays n\'a pas le franc comme unité monétaire ?', 'Comores', 'Liechtenstein', 'Niger', 'Vanuatu', 'd'),
(199, 11, 'Quel pays avait adopté le franc comme unité monétaire ?', 'Cambodge', 'Viêt Nam', 'Laos', 'Thaïlande', 'a'),
(200, 5, 'En 1970, qui chante \"L\'Amérique\" ?', 'Joe Dassin', 'Johnny Hallyday', 'Eddy Mitchell', 'Claude Nougaro', 'a'),
(201, 6, 'Qui interprète la chanson \"Allumer le feu\" ?', 'Johnny Halliday', 'Johnny Hallyday', 'Johnny Halyday', 'Johnny Haliday', 'b'),
(202, 1, 'Quel est la capitale de la Polynésie française ?', 'Papisse', 'Parote', 'Papeete', 'Pacrotte', 'c'),
(203, 2, 'L\'ensemble des techniques permettant la création et l\'exploitation rationnelle des forêts s\'appelle la...', 'Jeanniculture', 'Lauriculture', 'Mariculture', 'Sylviculture', 'd'),
(204, 5, 'Comment Marty McFly se fait-il appeler dans \"Retour vers le futur\" ?', 'Yves Saint-Laurent', 'Pierre Cardin', 'Chritian Dior', 'Hubert de Givenchy', 'b'),
(205, 8, 'Quel est le synonyme d\'un épaulard ?', 'Un orc', 'Une orc', 'Un orque', 'Une orque', 'd'),
(206, 2, 'Qui interprète la chanson \"Ça plane pour moi\" ?', 'Plastic Bertrand', 'Carton Gérard', 'Élastic Thierry', 'Papier Michel', 'a'),
(207, 6, 'Combien y a-t-il de départements en France ?', '97', '99', '101', '103', 'c'),
(208, 11, 'Au XIIe siècle, quel roi a-t-il définitivement adopté la fleur de lys comme symbole du royaume de France ?', 'Louis VI', 'Louis VII', 'Philippe II', 'Philippe Ier', 'b'),
(209, 10, 'Quel roi a reigné sur 3 royaumes britanniques ?', 'Jacques II d\'Angleterre', 'Jacques IV de Galles', 'Jacques VI d\'Écosse', 'Jacques VIII d\'Irlande', 'c'),
(210, 9, 'Dans quelle ville indienne se trouve le Taj Mahal ?', 'Jaipur', 'Delhi', 'Agra', 'Vadodara', 'c'),
(211, 6, 'Quelle est la capitale du Canada ?', 'Vancouver', 'Toronto', 'Calgary', 'Ottawa', 'd'),
(212, 11, 'Quelle personnalité n\'est jamais présentée sur un billet de 500 Francs français ?', 'Molière', 'Blaise Pascal', 'Marie Curie', 'Jean de la Fontaine', 'd'),
(213, 1, 'Comment appelle-t-on une femme à Tahiti ?', 'Une vahiné', 'Une chocolatine', 'Une orangine', 'Une pêchée', 'a'),
(214, 5, 'Quel mot ne possède pas deux pluriels ?', 'Ciel', 'Œil', 'Ail', 'Glaïeul', 'd'),
(215, 10, 'Quel animal de la famille des suinés est aussi le nom d\'un poisson ?', 'Cochon', 'Sanglier', 'Phacochère', 'Babiroussa', 'b'),
(216, 6, 'Qui était le premier invité de l\'émission \"Touche Pas à Mon Poste\" ?', 'Denis Brogniart', 'Gad Elmaleh', 'Jean-Pierre Foucault', 'Dany Boon', 'a'),
(217, 6, 'En 1986, quel footballeur a marqué un but avec la \"main de Dieu\" ?', 'Diego Maradona', 'Harald Schumacher', 'Jean-Pierre Papin', 'Zico', 'a'),
(218, 1, 'Au restaurant, on paye généralement...', 'L\'addition', 'La soustraction', 'La multiplication', 'La division', 'a'),
(219, 6, 'Quelle proposition ne désigne pas une chanson exact d\'Eddy Mitchell ?', 'Eddy ne fait pas le boogie woogie', 'Eddy ne rentre pas ce soir', 'Eddy a vu la dernière séance', 'Eddy roule sur la route de Memphis', 'b'),
(220, 4, 'Quel animal est le surnom du bar en Méditerranée ?', 'Le loup', 'Le renard', 'L\'ours', 'Le cochon', 'a'),
(221, 2, 'Quand la mer est calme, on dit que c\'est une mer...', 'D\'eau', 'D\'huile', 'De vinaigre', 'De vin', 'b'),
(222, 4, 'Pour jouer au Pouilleux, on doit enlever du tas de carte le...', 'Valet de cœur', 'Valet de trèfle', 'Valet de carreau', 'Valet de pique', 'b'),
(223, 10, 'Au Scrabble anglais, combien de points vaut la lettre W ?', '2 pts', '4 pts', '6 pts', '8 pts', 'b'),
(224, 6, 'Lequel de ces mots vaut le plus de points au Scrabble ?', 'Kiwi', 'Zoo', 'Wagon', 'Tank', 'a'),
(225, 10, 'Quelle est la longueur du canal de Panama ?', '59 km', '65 km', '77 km', '84 km', 'c'),
(226, 7, 'Quel pays a remporté la première Coupe du Monde ?', 'Uruguay', 'Brésil', 'Allemagne', 'Italie', 'a'),
(227, 7, 'Laquelle de ces chaînes YouTube est la plus ancienne ?', 'Joueur Du Grenier', 'Wankil Studio', 'Cyprien', 'Natoo', 'd'),
(228, 1, 'Quel est le titre d\'un célèbre film d\'Alfred Hitchcock ?', 'À bas les stylos', 'Ouste, les cartables', 'Jetons les cahiers', 'La Mort aux trousses', 'd'),
(229, 3, 'Lequel de ces super-héros n\'a pas de masque sur le visage ?', 'Zorro', 'Spider-Man', 'Superman', 'Batman', 'c'),
(230, 6, 'Le tamouré est une danse traditionnelle de...', 'La Réunion', 'La Guyane', 'La Martinique', 'Tahiti', 'd'),
(231, 6, 'De 1949 à 1990, quelle était la capitale de la RFA, République Fédérale d\'Allemagne ?', 'Berlin', 'Bonn', 'Munich', 'Stuttgart', 'b'),
(232, 8, 'Lorsqu\'on est atteint d\'alopécie, on perd...', 'Ses dents', 'Ses cheveux', 'Du poids', 'La tête', 'b'),
(233, 1, 'Quel petit animal émet de la lumière dans l\'obscurité ?', 'Le ver luisant', 'Le ver amusant', 'Le ver cuisant', 'Le ver autobronzant', 'a'),
(234, 2, 'Quelle ville de Belgique est l\'un des plus importants ports européens ?', 'Androit', 'Recto', 'Verso', 'Anvers', 'd'),
(235, 4, 'Quel héros de dessins animés dit souvent d\'un ton déprimé \"I am happy\" ?', 'Bugs Bunny', 'Droopy', 'Porky Pig', 'Daffy Duck', 'b'),
(236, 3, 'Quel dessin peut-on voir sur le pull bleu du capitaine Haddock ?', 'Une bouteille', 'Une ancre', 'Un drapeau', 'Une tête de mort', 'b'),
(237, 5, 'Il n\'est pas tout à fait exact de dire que la Terre...', 'Tourne sur elle-même', 'Est ronde', 'A une atmosphère', 'Est une planète', 'b'),
(238, 8, 'Qu\'est-ce qui donne sa couleur rouge la planète Mars ?', 'De l\'oxyde de fer', 'Du néon', 'De l\'oxyde de carbone', 'Du cuivre', 'a'),
(239, 12, 'En 1979 au cinéma, quel acteur français prête sa voix à Superman ?', 'Richard Berry', 'Bernard Giraudeau', 'Pierre Arditi', 'Gérard Lanvin', 'c'),
(240, 3, 'Lequel de ces groupes est uniquement composé de filles ?', 'U2', 'L5', '2B3', 'UB40', 'b'),
(241, 6, 'Comment nomme-t-on la femelle de l\'aigle ?', 'L\'aiglette', 'L\'aigline', 'L\'aigle', 'L\'aiglesse', 'c'),
(242, 8, 'Par quels mots Émile Zola achève-t-il son célèbre article \"J\'accuse... !\" ?', 'J\'attends', 'J\'espère', 'Je crois', 'Je l\'exige', 'a'),
(243, 7, 'En géométrie, combien un dodécagone a-t-il de côtés ?', '10', '12', '14', '16', 'b'),
(244, 11, 'Le prochain passage de la comète de Halley est prévu pour...', '2045', '2054', '2061', '2072', 'c'),
(245, 12, 'Que collectionne un \"molubdotémophile\" ?', 'Les canettes de soda', 'Les sifflets', 'Les plaques de rue', 'Les taille-crayons', 'd'),
(246, 11, 'En 1887 et 1888, de quelle couleur était initialement la Tour Eiffel ?', 'Bleu', 'Jaune', 'Rouge', 'Marron', 'c'),
(247, 6, 'De quelle région provient le vin de Chablis ?', 'Alsace', 'Bourgogne', 'Aquitaine', 'Languedoc-Roussillon', 'b'),
(248, 8, 'Qui n\'a pas été un modèle officel pour représenter Marianne ?', 'Laeticia Casta', 'Catherine Deneuve', 'Mireille Mathieu', 'Carla Bruni', 'd'),
(249, 1, 'Quelle phrase célèbre attribue-t-on à Louis XIV ?', 'Dans quelle étagère ?', 'Tes états d\'âmes Éric', 'État sœur ?', 'L\'État, c\'est moi', 'd'),
(250, 3, 'Quelle proposition désigne un sous-officier de l\'armée française ?', 'Triangle-major', 'Saxophone-major', 'Tambour-major', 'Tam-tam-major', 'c'),
(251, 6, 'Qui se cache derrière Maria Kalogeropoulos ?', 'Maria Casares', 'Maria Callas', 'Maria Pacôme', 'Mariah Carey', 'b'),
(252, 4, 'À quel point cardinal fait-on référence quand on parle du couchant ?', 'Le nord', 'L\'est', 'Le sud', 'L\'ouest', 'd'),
(253, 7, 'Né en 1901, Jean Dubuffet était un célèbre...', 'Peintre', 'Musicien', 'Ébéniste', 'Sportif', 'a'),
(254, 4, 'Quel défenseur désigne aussi un insecte ?', 'Le policier', 'Le gendarme', 'Le soldat', 'Le militaire', 'b'),
(255, 12, 'Comment appelle-t-on l\'alliage naturel d\'or et d\'argent ?', 'Le platine', 'L\'airain', 'Le vermeil', 'L\'électrum', 'd'),
(256, 3, 'Dans le film de Disney \"Les 101 Dalmatiens\", combien y a-t-il de chiots dalmatiens ?', '101', '100', '99', '98', 'c'),
(257, 10, 'Quel était le premier prénom de Mickey ?', 'Sullivan', 'Casper', 'Mortimer', 'Willie', 'c'),
(258, 12, 'Saint Bénezet, qui aurait construit le célèbre pont d\'Avignon, était un...', 'Pêcheur', 'Berger', 'Charpentier', 'Musicien', 'b'),
(259, 4, 'Selon une chanson de Jacques Dutronc, à quelle heure Paris s\'éveille ?', '5 heures', '6 heures', '7 heures', '8 heures', 'a'),
(260, 2, 'Comment s\'appelle le Centre National d\'Information routière ?', 'Vache maline', 'Taureau finaud', 'Yack rusé', 'Bison futé', 'd'),
(261, 3, 'Pour détacher du linge, il faut parfois...', 'Bouillir', 'Rissoler', 'Frire', 'Flamber', 'a'),
(262, 6, 'Dans le plat auvergnat appelé \"truffade\", on trouve du fromage et des...', 'Truffes', 'Pommes de terre', 'Carottes', 'Navets', 'b'),
(263, 8, 'Quel titre le directeur général de la Banque de France porte-t-il ?', 'Consul', 'Gouverneur', 'Régent', 'Conservateur', 'b'),
(264, 8, 'Ouagadougou est la capitale... ', 'Du Niger', 'De l\'Angola', 'De la Namibie', 'Du Burkina Faso', 'd'),
(265, 10, 'Quel engin un wattman conduit-il ?', 'Un dragster', 'Un char d\'assaut', 'Un tramway', 'Un overcraft', 'c'),
(266, 12, 'Connu pour avoir popularisé la pomme de terre, Parmentier était...', 'Pharmacien', 'Cuisinier', 'Navigateur', 'Géographe', 'a'),
(267, 2, 'Si l\'on a mal au dos, c\'est peut-être qu\'on s\'est fait un tour de...', 'Reins', 'Taille', 'Poitrine', 'Sternum', 'a'),
(268, 4, 'Quel personne public un bourgmestre belge est-il l\'équivalent en France ?', 'Le Premier Ministre', 'Le préfet', 'Le maire', 'L\'évêque', 'c'),
(269, 11, 'Que tenait la main sur l\'ancien drapeau du Zaïre ?', 'Un livre', 'Un sceptre', 'Une épée', 'Une torche', 'd'),
(270, 9, 'Qui a remporté la première édition de l\'Euro féminin de football ?', 'Italie', 'Suède', 'Allemagne', 'Norvège', 'b'),
(271, 11, 'En France, la Constitution de la Ve République a été révisée pour la dernière fois...', 'En 2002', 'En 2004', 'En 2006', 'En 2008', 'd'),
(272, 6, 'Dans quel département se situe la ville de Maroilles ?', 'Nord', 'Somme', 'Pas-de-Calais', 'Oise', 'a'),
(273, 4, 'Quel pays ne fait pas partie de la région du Maghreb ?', 'Maroc', 'Senégal', 'Libye', 'Mauritanie', 'b'),
(274, 10, 'Quel pays a pour fête nationale le jour de l\'an ?', 'Cuba', 'Jamaïque', 'Haïti', 'Les Bahamas', 'c'),
(275, 4, 'Quel dieu correspond à la mythologie nordique ?', 'Baldr', 'Râ', 'Dionysos', 'Minerve', 'a'),
(276, 5, 'Quel chef d\'État n\'est pas roi ou reine en 2022 ?', 'Philippe de Belgique', 'Felipe VI d\'Espagne', 'Margrethe II de Danemark', 'Albert II de Monaco', 'd'),
(277, 10, 'Léopoldville, l\'ancienne capitale du Congo-Kinshasa, fut appelé ainsi en l\'honneur de...', 'Léopold Ier de Belgique', 'Léopold II de Belgique', 'Léopold III de Belgique', 'Léopold IV des Flandres', 'b'),
(278, 7, 'Quelle proposition n\'est pas citée dans la chanson \"Le Téléfon\" de Nino Ferrer ?', 'Bernadette est très chouette', 'Anatole est frivole', 'Édouard fume le cigare', 'Léonie est très jolie', 'd'),
(279, 9, 'On fait de la fièvre à partir d\'environ...', '100°F', '102°F', '104°F', '106°F', 'a'),
(280, 6, 'Quelle est la fonction du chef de l\'État du Luxembourg ?', 'Grand princier', 'Grand duché', 'Grand comté', 'Grand marquisat', 'b'),
(281, 4, 'Comment s\'appelaient les créatures violettes de l\'émission \"Attention à la marche\" ?', 'Les Amis', 'Les Copains', 'Les Frères', 'Les Potes', 'd'),
(282, 10, 'Dans le film \"Le bon, la brute et le truand\", quelle somme le truand et la brute essayent de récupérer dans le cimetière ?', '$100,000', '$200,000', '$400,000', '$800,000', 'b'),
(283, 1, 'Le célèbre acteur ayant tourné dans de nombreux westerns s\'appelle...', 'Clint Northwood', 'Clint Eastwood', 'Clint Southwood', 'Clint Westwood', 'b'),
(284, 1, 'Qui est l\'ami de Patrick l\'étoile de mer et le voisin de Carlo le calamar ?', 'Bob le Poisson', 'Bob l\'Éponge', 'Bob le Corail', 'Bob le Crabe', 'b'),
(285, 6, 'Quel pays a la plus grande frontière terrestre avec la France ?', 'Brésil', 'Belgique', 'Suriname', 'Espagne', 'a'),
(286, 10, 'Combien de pays européens ont possédé des colonies ?', '5', '7', '9', '11', 'b'),
(287, 5, 'Combien de langues officielles la Suisse possèdent-elle ?', '2', '3', '4', '5', 'c'),
(288, 11, 'Quel était le métier de Lewis Caroll au moment d\'écrire le roman \"Alice aux pays des merveilles\" ?', 'Poète', 'Photographe', 'Mathématicien', 'Essayiste', 'c'),
(289, 1, 'Quand on reste sur une idée, alors on reste...', 'Pékinner', 'Shangaïer', 'Cantonner', 'Shenzhener', 'c'),
(290, 2, 'Quel professionnel peut être payé pour draguer ?', 'Le facteur', 'Le marin pêcheur', 'Le charcutier', 'L\'huissier', 'b'),
(291, 9, 'En 1976, aux Jeux Olympiques de Montréal, après la performance de la roumaine Nadia Comaneci, le panneau a affiché la note de...', '10.0', '100', '0.10', '1.00', 'd'),
(292, 9, 'Le nom d\'Altaïr est généralement associé à...', 'Un palais', 'Un désert', 'Une étoile', 'Un fleuve', 'c'),
(293, 10, 'Pour quel ministère travaille une personne employée au \"Quai d\'Orsay\" ?', 'Justice', 'Défense', 'Environnement', 'Affaires étrangères', 'd'),
(294, 12, 'Quel célèbre chanteuse a joué dans la série télévisée \"Fame\" ?', 'Neneth Cherry', 'Carmen Electra', 'Madonna', 'Janet Jackson', 'd'),
(295, 2, 'Qui devient roi de France en 1285 ?', 'Philippe le Bachelor', 'Philippe le Play-Boy', 'Philippe le Bel', 'Philippe le Top', 'c'),
(296, 5, 'Le jean est un vêtement qui doit son nom à...', 'L\'île de Jersey', 'La ville de Gênes', 'La presqu\'île de Giens', 'La ville de Genève', 'b'),
(297, 8, 'Dans \"Le Petit Prince\", Antoine de Saint-Exupéry a deßiné un boa digérant...', 'Un renard', 'Un dromadaire', 'Un éléphant', 'Un rhinocéros', 'c'),
(298, 1, 'Selon la tradition, on mange la galette des rois le jour de...', 'L\'Epilucie', 'L\'Episophie', 'L\'Epijulie', 'L\'Epiphanie', 'd'),
(299, 5, 'Comment s\'appelle la chronique presentée par David Castello-Lopes ?', 'France?', 'Québec?', 'Suisse?', 'Belgique?', 'c'),
(300, 5, 'Quelle est la langue officielle du Luxembourg ?', 'Luxembourgeois', 'Français', 'Allemand', 'Néerlandais', 'a'),
(301, 4, 'Au bowling, je fais un strike au 1er tour puis je renverse 6 quilles au 2e tour. Combien de points ai-je au 1er tour ?', '10 pts', '16 pts', '20 pts', '26 pts', 'b'),
(302, 7, 'Comment s\'appelle la bombe larguée sur Hiroshima le 6 août 1945 ?', 'Little Boy', 'Little Man', 'Fat Boy', 'Fat Man', 'a'),
(303, 4, 'Quel fruit symbolise la chaîne Wankil Studio ?', 'La banane', 'La pomme', 'La poire', 'Le raisin', 'a'),
(304, 3, 'Comment appelle-t-on l\'écran de présentation d\'un site Internet ?', 'Billet d\'entrée', 'Page d\'accueil', 'Case départ', 'Ligne d\'arrivée', 'b'),
(305, 4, 'Quel note de musique est aussi appelée \"ut\" ?', 'Le do', 'Le fa', 'Le sol', 'Le la', 'a'),
(306, 3, 'Dans les années 60, de nombreux révolutionnaires ont pu lire le \"Petit Livre rouge\" de...', 'Napoléon', 'Mao Zédong', 'Karl Marx', 'Lénine', 'b'),
(307, 4, 'En 1800, quel objet indispensable Alessandro Volta inventa-t-il ?', 'Le microscope', 'Le boussole', 'La pile électrique', 'Le téléphone', 'c'),
(308, 5, 'Les meubles servant à présenter la marchandise dans un magasin sont appelés...', 'Barques', 'Gondoles', 'Pirogues', 'Radeaux', 'b'),
(309, 8, 'Avec la même carte d\'électeur, un électeur français peut voter au maximum...', '8 fois', '10 fois', '12 fois', '14 fois', 'c'),
(310, 10, 'Qu\'appelle-t-on parfois \"pistache de terre\" ?', 'La cacahouète', 'L\'oignon', 'La noix de pécan', 'La truffe', 'a'),
(311, 11, 'Dans le code Morse, que signifient cinq traits successifs ?', 'S.O.S.', 'Nord', 'Zéro', 'R.A.S.', 'c'),
(312, 3, 'Quel princesse de dessin animé le groupe Téléphone a-t-il chanté ?', 'Aurore', 'Blanche-Neige', 'Cendrillon', 'Ariel', 'c'),
(313, 4, 'Lequel de ces animaux est végétarien ?', 'Le puceron', 'La salamandre', 'La guêpe', 'La coccinelle', 'a'),
(314, 3, 'Lequel de ces acronymes désigne le code permettant de bloquer le téléphone en cas de vol ?', 'DAB', 'IMEI', 'SIM', 'RIB', 'b'),
(315, 6, 'Dans le Monopoly classique, quelle est la couleur des 3 rues qui suivent la case \"Parc Gratuit\" ?', 'Vert', 'Rouge', 'Jaune', 'Orange', 'b'),
(316, 3, 'Dans l\'Histoire de l\'évolution de l\'Homme, quel stade est la plus ancienne ?', 'Homo Habilis', 'Homo Erectus', 'Homme de Néandertale', 'Homme de Cro-Magnon', 'a'),
(317, 7, 'Laquelle de ces unités de longueur correspond a la plus grande distance ?', 'Un mile anglo-saxon', 'Un mille marin', 'Une toise', 'Un kilomètre', 'b'),
(318, 5, 'Sur le fronton de quel monument parisien peut-on lire : \"aux grands hommes de la patrie reconnaissante\" ?', 'L\'Hôtel de ville', 'Le Sénat', 'La Comédie Française', 'Le Panthéon', 'd'),
(319, 3, 'Dans la comptine \"Il était un petit homme, pirouette\", qui s\'est cassé le bout du nez ?\"', 'Le facteur', 'Le policier', 'Le curé', 'Le boulanger', 'a'),
(320, 2, 'En 1973, qui interprète la chanson \"Je suis malade\" ?', 'Serge Vergogne', 'Serge Lama', 'Serge Guanaco', 'Serge Apalga', 'b'),
(321, 4, 'Pour dire \"bonjour\" en langue des signes française, on commence par porter sa main à...', 'Sa bouche', 'Sa tempe', 'Son épaule', 'Son oreille', 'a'),
(322, 8, 'Quel nom porte le pavillon noir des pirates anglo-saxons ?', 'Union Jack', 'Black Jack', 'Jolly Roger', 'Black Roger', 'c'),
(323, 10, 'Lequel de ces mots a été inventé au XXe siècle ?', 'Mail', 'Téléphone', 'Vitamine', 'Furet', 'c'),
(324, 6, 'Quelle proposition ne correspond pas sur une plaque d\'immatriculation ?', 'UA /  Ukraine', 'HR / Croatie', 'M / Malte', 'S / Suisse', 'd'),
(325, 4, 'Quelle chaîne TV est remplacée par la chaîne \"Culturebox\" de18h à 6h ?', 'France 2', 'France 3', 'France 4', 'France 5', 'c'),
(326, 8, 'Quel sbire de Bowser, l\'ennemi juré de Mario, le vidéaste Savun redouble-t-il avec les phrases de Morsay ?', 'Koopa', 'Goomba', 'Maskass', 'Boo', 'c'),
(327, 5, 'Comement s\'appelle le temple romain dédié à l\'empereur Auguste situé à Nîmes ?', 'La Maison Carrée', 'La Maison Losange', 'La Maison Rectangulaire', 'La Maison Trapèze', 'a'),
(328, 7, 'Si on chausse les bottes de 7 lieues, en un pas, on pourra parcourir...', '29,6 km', '31,7 km', '33,8 km', '35,9 km', 'c'),
(329, 9, 'Quel grade est le plus haut dans l\'ordre national de la Légion d\'honneur ?', 'Chevalier', 'Grand-Officier', 'Commandeur', 'Grand-Croix', 'd'),
(330, 6, 'En 1515, la bataille de Marignan faisait rage en...', 'France', 'Allemagne', 'Suisse', 'Italie', 'd'),
(331, 7, 'Comment s\'appelle la cérémonie satirique de la télévision ?', 'Les Thierry', 'Les Gérard', 'Les Michel', 'Les Bernard', 'b'),
(332, 5, 'Lequel de ces nombres n\'est pas celui d\'un département français ?', '960', '20', '01', '90', 'b'),
(333, 4, 'Quelle capitale européenne se situe le plus à l\'est ?', 'Amsterdam', 'Berlin', 'Londres', 'Rome', 'b'),
(334, 4, 'Quel mont, considéré comme la résidence des dieux, est le point le plus élevé de Grèce ?', 'Mont Parnasse', 'Mont Athos', 'Mont Olympe', 'Mont Martre', 'c'),
(335, 1, 'Qui a composé le Boléro de Ravel ?', 'Hector Berlioz', 'Wolfgang Amadeus Mozart', 'Erik Satie', 'Maurice Ravel', 'd'),
(336, 6, 'Sur quoi le \"Penseur\" de Rodin appuie-t-il avec sa main ?', 'Son menton', 'Sont front', 'Sa joue', 'Son oreille', 'a'),
(337, 7, 'De quel courant pictural Salvador Dali est-il l\'un des grands représentants ?', 'Le surréalisme', 'Le cubisme', 'L\'expressionnisme', 'Le réalisme', 'a'),
(338, 5, 'À combien estime-t-on le pourcentage d\'eau douce sur Terre ?', '2,5%', '5%', '20%', '35%', 'a'),
(339, 7, 'En 2022, combien de pays sont membres de l\'Union Européenne ?', '26', '27', '28', '29', 'b'),
(340, 3, 'Qui a présenté l\'émission \"La météo de Gulli\" ?', 'Toozé le chimpanzé', 'Tooti le ouistiti', 'Toobo le bonobo', 'Toocin le capucin', 'c'),
(341, 6, 'Quel est le vrai nom de Coco Chanel ?', 'Gabrielle', 'Colette', 'Arlette', 'Simone', 'a'),
(342, 9, 'Le 15 octobre 1953, Winston Churchill obtient le prix Nobel de...', 'La paix', 'Littérature', 'Physiologie', 'Physique', 'b'),
(343, 4, 'Sous quel nom connaît-on le sandwich jambon-beurre ?', 'Le lyonnais', 'Le parisien', 'Le marseillais', 'Le strasbourgeois', 'b'),
(344, 6, 'En 1986, France Gall interprète la célèbre chanson...', 'Ella, Ella', 'Ella, elle l\'a', 'Elle l\'a, Ella', 'Elle l\'a, elle l\'a', 'b'),
(345, 3, 'Quel animal coasse ?', 'La grenouille', 'Le gorille', 'L\'hirondelle', 'Le corbeau', 'a'),
(346, 10, 'Qui est le premier roi de France ?', 'Clovis Ier', 'Henri Ier', 'Philippe II', 'Louis VIII', 'c'),
(347, 10, 'En France, il y a eu...', '1 roi des Français', '2 rois des Français', '3 rois des Français', '4 rois des Français', 'b'),
(348, 2, 'Quel type de chien est Clifford ?', 'Un gros chien rouge', 'Un petit chien bleu', 'Un grand chien vert', 'Un long chien violet', 'a'),
(349, 3, 'En quelle unité la précipitation de la pluie est-elle mesurée ?', 'Décimètre', 'Centimètre', 'Millimètre', 'Micromètre', 'c'),
(350, 6, 'Quelle région française compte le plus de département ?', 'Auvergne-Rhône-Alpes', 'Occitanie', 'Grand Est', 'Nouvelle-Aquitaine', 'b'),
(351, 3, 'Laquelle de ces propositions ne désigne pas un pays ?', 'Corée du Nord', 'Corée du Sud', 'Afrique du Nord', 'Afrique du Sud', 'c'),
(352, 7, 'L\'Union Jack dessiné sur le drapeau australien est situé en...', 'Région', 'Canton', 'Comté', 'District', 'b'),
(353, 6, 'L\'échelle de Beaufort mesure...', 'La température', 'Les séismes', 'La force du vent', 'La radioactivité', 'c'),
(354, 3, 'Quel pays est représenté par un drapeau à disque rouge sur fond blanc ?', 'La Mongolie', 'La Chine', 'Le Viêtnam', 'Le Japon', 'd'),
(355, 8, 'Quel symbole peut-on voir sur le drapeau de l\'Inde ?', 'Une roue', 'Une étoile', 'Un cercle', 'Une vache', 'a'),
(356, 7, 'Le comédien français André Raimbourg est plus connu sous le nom de...', 'Bourvil', 'Fernandel', 'André Dussolier', 'Michel Simon', 'a'),
(357, 9, 'De quel roi Catherine de Médicis n\'est-elle pas la mère ?', 'François II', 'Charles IX', 'Henri III', 'Louis XII', 'd'),
(358, 2, 'Dans l\'enseignement, le D.U.T. était un diplôme universitaire de...', 'Technologie', 'Terminologie', 'Traumatologie', 'Toxicologie', 'a'),
(359, 3, 'Quelle grosse bouteille contient l\'équivalent de deux bouteilles ordinaires ?', 'Le magnum', 'La dame-jeanne', 'Le nabuchodonosor', 'Le jéroboam', 'a'),
(360, 7, 'Comment s\'appelle l\'émission diffusée sur YouTube et présentée par Davy Mourier ?', 'GOODNEWS', 'BADNEWS', 'ANGRYNEWS', 'FLOPNEWS', 'b'),
(361, 9, 'Comment s\'appelle l\'enfant de la fontaine \"Manneken Pis\" ?', 'Georges', 'Léopold', 'Benjamin', 'Julien', 'd'),
(362, 11, 'Quel présentateur a été sacré 3 fois champion de France de hockey sur gazon ?', 'Denis Brogniart', 'Olivier Minne', 'Jean-Pierre Pernaut', 'Laurent Delahousse', 'c'),
(363, 1, 'Laquelle de ces propositions désigne un département situé en Auvergne-Rhône-Alpes ?', 'Ain', 'Deu', 'Troa', 'Catre', 'a'),
(364, 1, 'Le Japon est souvent surnommé le \"Pays du Soleil...\"\"', 'Rouge', 'D\'or', 'Levant', 'Couchant', 'c'),
(365, 1, 'D\'après le célèbre jeu des cours de récréation, on dit : \"1, 2, 3...\"', 'Lune', 'Soleil', 'Étoile', 'Comète', 'b'),
(366, 2, 'L\'autre nom du walkman est le...', 'Marcheur', 'Baladeur', 'Promeneur', 'Coureur', 'b'),
(367, 1, 'La marionnette Guignol se bat souvent avec...', 'L\'épicier', 'Le boulanger', 'Sa femme', 'Le gendarme', 'd'),
(368, 1, 'Les cartes munies d\'un microprocesseur sont des cartes à...', 'Puce', 'Puceron', 'Pou', 'Punaise', 'a'),
(369, 1, 'En 1945, Édith Piaf interprète \"la Vie en...\"', 'Jaune', 'Bleue', 'Mauve', 'Rose', 'd'),
(370, 1, 'Quelle célèbre souris de dessin animé est la plus rapide du Mexique ?', 'Mickey', 'Minnie', 'Bianca', 'Speedy Gonzales', 'd'),
(371, 11, 'Quel département se situe à l\'ouest de Paris ?', 'Le 54', 'Le 25', 'Le 63', 'Le 19', 'd'),
(372, 1, 'En 1964, Serge Gainsbourg interprète la célèbre chanson \"Couleur...\"', 'Orange', 'Menthe', 'Terre', 'Café', 'd'),
(373, 2, 'En 1984, la chanson \"Femme libérée\" est interprétée par...', 'Clafoutis Dingler', 'Cookie Dingler', 'Crumble Dingler', 'Crêpe Dingler', 'b'),
(374, 10, 'Dans les années 80, Desireless a intégré le groupe...', 'Flamme', 'Terre', 'Air', 'Eau', 'c'),
(375, 5, 'Quel État des États-Unis est bordé par l\'océan Pacifique ?', 'New Hampshire', 'Washington', 'Nevada', 'Montana', 'b'),
(376, 2, 'Qui étaient les adversaires du personnage Rayman ?', 'Les Lapins Crétins', 'Les Chiens Idiots', 'Les Lièvres Stupides', 'Les Chats Absurdes', 'a'),
(377, 7, 'Laquelle de ces villes n\'est pas située sur le littoral ?', 'Lisbonne', 'Rio de Janeiro', 'Johannesburg', 'Reykjavik', 'c'),
(378, 12, 'En 1908, aux Jeux Olympiques, le marathon se dispute pour la première fois sur 42,195 km entre...', 'Le Pirée et Athènes', 'Versailles et Paris', 'Windsor et Londres', 'Pise et Rome', 'c'),
(379, 7, 'Dans la mythologie grecque, lequel de ces dieux était le frère de Poséidon ?', 'Apollo', 'Arès', 'Hermès', 'Zeus', 'd');
INSERT INTO `nummorum` (`id`, `numQuestion`, `question`, `a`, `b`, `c`, `d`, `reponse`) VALUES
(380, 4, 'Laquelle de ces chansons n\'est pas interprétée par Madonna ?', 'Vogue', 'True Blue', 'Holiday', 'Purple Rain', 'd'),
(381, 9, 'Le 24 décembre 1974, qui le président Valéry Giscard d\'Estaing invite-t-il au petit-déjeuner ?', 'Des facteurs', 'Des éboueurs', 'Des jardiniers', 'Des plombiers', 'b'),
(382, 8, 'Qu\'est-ce qui est brodé sur l\'habit des membres de l\'Académie française ?', 'Une feuille de chêne', 'Une fleur d\'oranger', 'Une branche d\'olivier', 'Une tige de fougère', 'c'),
(383, 9, 'Lequel de ces animaux faut-il le châtrer avant de le cuire ?', 'Le calamar', 'L\'huître', 'L\'écrevisse', 'La truite', 'c'),
(384, 10, 'Quel pays a pour capitale Taipei ?', 'Myanmar', 'Macao', 'Taïwan', 'Laos', 'c'),
(385, 11, 'Dans \"l\'Odyssée\", pour échapper au Cyclope, Ulysse de cache sous le ventre d\'un...', 'Cheval', 'Éléphant', 'Bélier', 'Taureau', 'c'),
(386, 8, 'Au début du film \"Le gendarme de Saint-Tropez\", dans quel département le gendarme Cruchot exerce-t-il ?', 'Les Hautes-Alpes', 'Le Rhône', 'La Savoie', 'La Haute-Savoie', 'a'),
(387, 6, 'Quel est le dernier grade de sous-officier de la gendarmerie nationale française ?', 'Sergent', 'Major', 'Lieutenant', 'Adjudant', 'b'),
(388, 9, 'Le premier jeu diffusé à la télévision française s\'appelle...', 'L\'Homme du XXe siècle', 'Le Schmilblick', 'La Tête et les Jambes', 'Télé-Match', 'd'),
(389, 2, 'Laquelle de ces propositions désigne un personnage de B.D. créé par Uderzo et Goscinny ?', 'Astérix le Gaulois', 'Astérix le Romain', 'Astérix le Breton', 'Astérix le Perse', 'a'),
(390, 2, '97,5 % d\'eau présente sur Terre est de l\'eau...', 'Poivrée', 'Salée', 'Pimentée', 'Acidulée', 'b'),
(391, 2, 'À l\'état naturel, les éléphants vivent en Afrique et en...', 'Europe', 'Asie', 'Australie', 'Amazonie', 'b'),
(392, 2, 'Quelle proposition désigne un département du centre de la France ?', 'Le Chèvre', 'Le Brie', 'Le Cantal', 'Le Camembert', 'c'),
(393, 2, 'Se contenter de peu, c\'est \"vivre d\'amour et d\'eau...\"', 'De boudin', 'Claire', 'De Javel', 'Fraîche', 'd'),
(394, 7, 'Depuis 1962, où le secrétariat français du père Noël se trouve-t-il ?', 'Amiens', 'Nevers', 'Libourne', 'Albertville', 'c'),
(395, 9, 'Au Japon, l\'héritier de la famille impériale mont sur le \"trône...', 'Du Chrysanthème', 'Du Camélia', 'Du Bégonia', 'Du Coquelicot', 'a'),
(396, 11, 'Dans quelle partie du corps trouve-t-on le muscle couturier ?', 'Le bras', 'L\'abdomen', 'La cuisse', 'La fesse', 'c'),
(397, 12, 'Quel nom donne-t-on à la valise d\'échantillons d\'un voyageur de commerce ?', 'La marmotte', 'Le kangourou', 'La vachette', 'Le bouquetin', 'a'),
(398, 8, 'En droit, le verbe \"débouter\" signifie...', 'Rejeter', 'Condamner', 'Encourager', 'Déclamer', 'a'),
(399, 9, 'En quelle année, le nouveau franc est-il entré en vigueur en France ?', '1945', '1958', '1960', '1968', 'c'),
(400, 10, 'Quel mot ne figure pas dans \"La Marseillaise\", composé par Rouget de Lisle ?', 'Liberté', 'République', 'Dieu', 'Esclave', 'b'),
(401, 3, 'De quelle forme est la cicatrice d\'Harry Potter ?', 'Un carré', 'Une étoile', 'Un éclair', 'Une fleur', 'c'),
(402, 4, 'En 2000, quel pays rejoint le Tournoi des Six Nations ?', 'L\'Espagne', 'L\'Italie', 'L\'Allemagne', 'La Belgique', 'b'),
(403, 6, 'Lequel de ces épreuves combinées n\'existent pas en athlétisme ?', 'Triathlon', 'Pentathlon', 'Heptathlon', 'Décathlon', 'a'),
(404, 8, 'Quel est le code postal de la ville de Monaco ? ', '96000', '97000', '98000', '99000', 'c'),
(405, 7, 'En Islande, qu\'est que l\'Eyjafjallajökull ?', 'Une montagne', 'Un volcan', 'Un glacier', 'Une colline', 'c'),
(406, 8, 'Ancienne région du monde occidental antique, dans quel pays se trouve la Lydie ? ', 'Grèce', 'Tunisie', 'Turquie', 'Israël', 'c'),
(407, 9, 'Le mandrill est un singe d\'Afrique dont le museau est...', 'Blanc et rouge', 'Rouge et bleu', 'Vert et rouge', 'Rouge et jaune', 'b'),
(408, 6, 'La culture de quel légume Charlemagne a-t-il développé ?', 'Le concombre', 'Le potiron', 'La citrouille', 'La courgette', 'a'),
(409, 7, 'Dans la chanson \"le Jerk\", Roger sort du bureau et prend le bus de...', '17h17', '17h18', '18h17', '18h18', 'c'),
(410, 6, 'Le Tunnel sous la Manche possède en réalité...', '3 tunnels', '4 tunnels', '5 tunnels', '6 tunnels', 'a'),
(411, 6, 'Un élève ayant des difficultés peut présenter une...', 'Dislexie', 'Dyslexy', 'Dislexy', 'Dyslexie', 'd'),
(412, 7, 'Lequel de ces humoristes n\'a pas animé un jeu TV ?', 'Arnaud Tsamère', 'Jarry', 'Roland Magdane', 'Gad Elmaleh', 'd'),
(413, 8, 'Dans l\'univers de \"Star Wars\", quelle figure de style Yoda utilise-t-il lorsqu\'il parle ?', 'Une litote', 'Une anastrophe', 'Une anaphore', 'Un chiasme', 'b'),
(414, 5, 'Dans la série des Monopoly, le personnage \"Mr Monopoly\" ne possède pas...', 'De haut-de-forme', 'De monocle', 'De canne', 'De moustache', 'b'),
(415, 1, 'Dans le monde de l\'industriel, on peut rencontrer un...', 'Fraiseur', 'Pommeur', 'Pêcheur', 'Orangeur', 'a'),
(416, 3, 'De quel jeu de cartes le \"Uno\" s\'est-il inspiré ?', 'Le deux français', 'La quatre espagnol', 'Le six australien', 'Le huit américain', 'd'),
(417, 11, 'En haut du logo de la Nasa, quelle constellation peut-on remarquer ?', 'La constellation d\'Orion', 'La constellation du Cygne', 'La constellation de Pégase', 'La constellation du Loup', 'a'),
(418, 8, 'Quel jeu Joueur Du Grenier a-t-il testé en premier ?', 'Tintin au Tibet', 'Astérix and the Great Rescue', 'Les Chevaliers du Zodiaque', 'Powers Rangers', 'c'),
(419, 9, 'En France, au basket, un tir vaut trois points s\'il est effectué au-delà des...', '3,25 m', '4,25 m', '5,25 m', '6,25 m', 'd'),
(420, 11, 'Un navigateur qui évalue sa position en tenant compte de la dérive, \"navigue...\"', 'À la traîne', 'À l\'envi', 'À l\'estime', 'À l\'approche', 'c'),
(421, 3, 'Dans la série \"Dallas\", quel personnage est le méchant ?', 'Ivan', 'Laurel', 'J.R.', 'Simon', 'c'),
(422, 6, 'Au moment précis où le soleil disparaît derrière l\'horizon, on peut voir...', 'Le trou noir', 'L\'étoile d\'argent', 'Le rayon vert', 'La lune d\'or', 'c'),
(423, 12, 'Sur le circuit du Grand Prix de Monaco, les pilotes de formule 1 passent le virage...', 'De Sainte-Foy', 'De Sainte-Dévote', 'De Sainte-Prudence', 'De Sainte-Clémence', 'b'),
(424, 8, 'Laquelle de ces inventions n\'a pas été primée par le concours Lépine ?', 'Le couteau suisse', 'La tondeuse à gazon', 'Le jeu du 1000 bornes', 'Le stylo à bille', 'a'),
(425, 12, 'En bengali, quel chiffre correspond au mot \"shat\" ?', '6', '7', '8', '9', 'b'),
(427, 10, 'La gendarmerie nationale est la force armée française chargée de missions de police qui existe depuis...', 'La Guerre de Cent Ans', 'L\'assassinat d\'Henri IV', 'La Révolution Française', 'Le Second Empire', 'c'),
(428, 10, 'Quel était le nom du premier TGV inauguré en 1981 ?', 'Patrick', 'Pierre', 'Patrice', 'Paul', 'a'),
(429, 7, 'Le cloporte est un...', 'Insecte', 'Crustacé', 'Arachnide', 'Myriapode', 'b'),
(430, 4, 'Comment s\'appelle la marionnette de Jeff Panacloc ?', 'Jean-Marc', 'Jean-Pierre', 'Jean-Baptiste', 'Jean-Louis', 'a'),
(431, 8, 'Sur le drapeau de Saint-Pierre-Et-Miquelon, ne sont pas représenté(e)s...', 'Des hermines', 'Les couleurs basques', 'Des lépoards', 'Des fleurs de lys', 'd');

-- --------------------------------------------------------

--
-- Structure de la table `nummorum_classement`
--

DROP TABLE IF EXISTS `nummorum_classement`;
CREATE TABLE `nummorum_classement` (
  `id` int(11) NOT NULL,
  `pseudo` varchar(255) NOT NULL,
  `devise` varchar(255) NOT NULL,
  `points` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `nummorum_classement`
--

INSERT INTO `nummorum_classement` (`id`, `pseudo`, `devise`, `points`) VALUES
(1, 'Zebrane', '€', 45415),
(2, 'Zebrane', '$', 7464),
(3, 'Zebrane', 'F', 205925),
(4, 'Zebrane', '£', 0),
(8, 'Romain', '€', 2235),
(9, 'Satsujin', '€', 46371),
(11, 'Satsujin', '$', 15602),
(12, 'Satsujin', 'F', 4312),
(14, 'Daguouz', '€', 0),
(15, '', '€', 0),
(16, '', '$', 2415),
(17, '', 'F', 4534);

-- --------------------------------------------------------

--
-- Structure de la table `vexilium`
--

DROP TABLE IF EXISTS `vexilium`;
CREATE TABLE `vexilium` (
  `id` int(11) NOT NULL,
  `pseudo` varchar(255) NOT NULL,
  `devise` varchar(255) NOT NULL,
  `money` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `vexilium`
--

INSERT INTO `vexilium` (`id`, `pseudo`, `devise`, `money`) VALUES
(1, 'Zebrane', 'F', 6920000),
(2, 'Zebrane', '€', 1050000),
(3, 'Zebrane', '£', 835000),
(4, 'Zebrane', '$', 547965),
(5, 'Romain', '€', 1065000),
(6, 'Romain', 'F', 7060000),
(7, 'Roucky', '€', 503100),
(8, 'Romain', '£', 892500),
(9, 'Romain', '$', 1174800),
(10, 'OhLaMerde', '€', -3327000);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `compte`
--
ALTER TABLE `compte`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `nummorum`
--
ALTER TABLE `nummorum`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `nummorum_classement`
--
ALTER TABLE `nummorum_classement`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `vexilium`
--
ALTER TABLE `vexilium`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `compte`
--
ALTER TABLE `compte`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `nummorum`
--
ALTER TABLE `nummorum`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=432;

--
-- AUTO_INCREMENT pour la table `nummorum_classement`
--
ALTER TABLE `nummorum_classement`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT pour la table `vexilium`
--
ALTER TABLE `vexilium`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
