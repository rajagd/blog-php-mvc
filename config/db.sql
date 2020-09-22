-- phpMyAdmin SQL Dump
-- version 4.9.3
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:8889
-- Généré le :  mar. 22 sep. 2020 à 22:45
-- Version du serveur :  5.7.26
-- Version de PHP :  7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Base de données :  `jeansblog`
--

-- --------------------------------------------------------

--
-- Structure de la table `comments`
--

CREATE TABLE `comments` (
  `id` int(10) NOT NULL,
  `id_billet` int(10) NOT NULL,
  `id_user` int(10) NOT NULL,
  `comment` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `signalement` tinyint(1) NOT NULL DEFAULT '0',
  `comment_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `comments`
--

INSERT INTO `comments` (`id`, `id_billet`, `id_user`, `comment`, `signalement`, `comment_date`) VALUES
(1, 2, 3, 'très bien', 1, '2020-09-20 22:16:59'),
(2, 2, 3, 'salut', 0, '2020-09-21 18:45:08');

-- --------------------------------------------------------

--
-- Structure de la table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `title` varchar(75) NOT NULL,
  `content` text NOT NULL,
  `creation_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `posts`
--

INSERT INTO `posts` (`id`, `title`, `content`, `creation_date`) VALUES
(1, 'Chapitre 1', 'Duis euismod porta est, ac semper odio varius dignissim. Duis cursus aliquam purus, id bibendum velit vulputate sit amet. Duis luctus scelerisque arcu, maximus viverra risus eleifend sit amet. Donec id dui egestas, auctor sem at, mollis purus. In purus purus, euismod sit amet velit vitae, euismod dapibus nisi. Morbi mollis molestie eros. Vivamus a odio nulla. Praesent turpis nisi, gravida eget neque cursus, sagittis molestie ligula. Integer ac rutrum ipsum, ac cursus augue. Donec ut sollicitudin nisl, et finibus est. Cras sodales dui diam, eu tincidunt dolor posuere non.\r\n\r\nDuis at convallis lorem, in accumsan est. Aenean dapibus hendrerit mi. Nunc et dolor tortor. Maecenas quis ipsum vel dui bibendum volutpat. Nulla molestie tellus tellus, sit amet vestibulum tortor venenatis vel. Integer massa diam, vestibulum ac congue sed, hendrerit et ex. Vestibulum quis risus tortor. Vestibulum laoreet, ex sit amet lacinia porta, velit lacus ornare nisi, eget pretium purus quam eu arcu. Nulla eu mollis felis.', '2020-09-06 00:00:00'),
(2, 'Chapitre 2', 'In hac habitasse platea dictumst. Morbi lobortis tellus eu interdum laoreet. In sollicitudin tellus magna, at fermentum nisi rhoncus ut. Suspendisse ut pulvinar urna. Curabitur sed feugiat tortor. Aenean facilisis leo vitae nisl iaculis semper. Morbi sagittis velit sed felis auctor, sit amet consectetur nulla malesuada. Sed orci dui, vehicula ac orci at, maximus gravida lectus. Aenean scelerisque, ipsum ac dictum molestie, lectus quam ullamcorper est, quis imperdiet lacus urna at purus. Morbi sem massa, vulputate non justo semper, lobortis ullamcorper purus. Vivamus ornare, elit ac blandit tempor, leo odio luctus ipsum, id facilisis mauris nisl a odio. Morbi a ullamcorper sem.\r\n\r\nInterdum et malesuada fames ac ante ipsum primis in faucibus. Aenean consectetur eros eget dui commodo, nec interdum massa faucibus. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Nunc a risus arcu. Phasellus tincidunt, lorem nec consectetur faucibus, nibh nunc lobortis nisi, non semper nisi tortor ut est. In id efficitur sapien. Phasellus aliquam tellus quis lorem maximus, a pellentesque diam aliquam. In mauris ligula, molestie suscipit lacus et, tristique sodales augue. Morbi in rutrum libero. Aliquam sit amet dolor vel sapien blandit eleifend. Mauris vitae lobortis orci, nec euismod libero. Curabitur ut metus non lorem laoreet aliquam congue vitae metus. Donec feugiat mi libero, ut ultrices justo porta eu. Vivamus at arcu eget lorem scelerisque ultrices.', '2020-09-07 15:45:00'),
(3, 'Chapitre 3', 'Interdum et malesuada fames ac ante ipsum primis in faucibus. Aenean consectetur eros eget dui commodo, nec interdum massa faucibus. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Nunc a risus arcu. Phasellus tincidunt, lorem nec consectetur faucibus, nibh nunc lobortis nisi, non semper nisi tortor ut est. In id efficitur sapien. Phasellus aliquam tellus quis lorem maximus, a pellentesque diam aliquam. In mauris ligula, molestie suscipit lacus et, tristique sodales augue. Morbi in rutrum libero. Aliquam sit amet dolor vel sapien blandit eleifend. Mauris vitae lobortis orci, nec euismod libero. Curabitur ut metus non lorem laoreet aliquam congue vitae metus. Donec feugiat mi libero, ut ultrices justo porta eu. Vivamus at arcu eget lorem scelerisque ultrices.\r\n\r\nNullam eu justo elit. Praesent risus odio, maximus eu congue ac, gravida elementum tortor. Ut finibus odio eu erat posuere faucibus. Aliquam fringilla, risus ut iaculis efficitur, elit velit tempor quam, sit amet pharetra ligula urna sit amet nibh. Nulla vulputate tortor at libero auctor sollicitudin. Morbi ultricies maximus augue in volutpat. Nunc lobortis luctus tellus ut pulvinar. Quisque orci nibh, scelerisque a egestas a, consectetur in nibh. Nunc non blandit sem. Aliquam malesuada egestas quam et tempus. Sed tempus neque eu nibh consequat ultrices. Etiam malesuada odio posuere erat egestas tempor. Suspendisse ultrices porta arcu sed commodo. Etiam varius elit nec velit scelerisque, sit amet vulputate tellus gravida.', '2020-09-08 14:00:00'),
(4, 'Chapitre 4', '<p style=\"margin: 0px 0px 15px; padding: 0px; text-align: justify; font-family: \'Open Sans\', Arial, sans-serif; font-size: 14px;\">Maecenas dapibus orci turpis, eu iaculis lectus sagittis vel. Aliquam tempus nibh eget fringilla porta. Nullam hendrerit, quam vel feugiat finibus, dolor mauris maximus ex, ut fringilla est enim porta ante. Morbi non cursus risus. Aliquam ut augue sit amet arcu sollicitudin tristique. Nunc aliquet ante non nisi interdum, quis maximus velit luctus. Sed massa orci, mattis ac consequat id, suscipit a justo. Aliquam semper tortor felis, id ultricies nulla posuere a. Integer libero neque, pulvinar in pharetra egestas, blandit in sem. Donec non odio tortor. Nunc molestie metus consectetur finibus euismod. Nam condimentum ac lorem a sodales. Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>\r\n<p>&nbsp;</p>', '2020-09-20 23:07:59'),
(5, 'Chapitre 5', '<p style=\"margin: 0px 0px 15px; padding: 0px; text-align: justify; font-family: \'Open Sans\', Arial, sans-serif; font-size: 14px;\">Aliquam erat volutpat. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum placerat justo at rhoncus tincidunt. Maecenas sed urna a magna tempor sagittis. Praesent volutpat aliquam malesuada. Integer quam metus, dignissim id nibh ac, cursus faucibus augue. Vestibulum non sem in felis fringilla semper id et velit. Morbi iaculis tortor elit, quis tempor neque bibendum viverra. Aliquam erat volutpat. Mauris eget velit commodo, consectetur sapien quis, ullamcorper felis. Sed tristique, nulla a ultricies facilisis, eros lectus convallis nibh, quis varius turpis nibh vel orci. Ut lobortis, sapien in dignissim elementum, erat elit volutpat sapien, nec sollicitudin purus arcu auctor velit. Aenean egestas dui a tristique dapibus. Vestibulum posuere, odio quis pulvinar luctus, tellus enim faucibus est, quis tristique odio magna vitae lectus. Nulla rutrum sapien a ligula suscipit eleifend. Aenean pellentesque sodales lorem eget ornare.</p>\r\n<p style=\"margin: 0px 0px 15px; padding: 0px; text-align: justify; font-family: \'Open Sans\', Arial, sans-serif; font-size: 14px;\">Maecenas vitae nibh est. Nullam feugiat maximus commodo. Fusce accumsan odio mauris, eu mattis felis pharetra at. Curabitur vitae quam gravida, mollis orci vel, bibendum tellus. Vivamus non pellentesque purus. Morbi elementum purus et faucibus fermentum. Quisque nulla nibh, accumsan non condimentum eget, tempus et nisl. In viverra elementum consequat.</p>', '2020-09-21 18:36:18'),
(6, 'Chapitre 6', '<p style=\"margin: 0px 0px 15px; padding: 0px; text-align: justify; font-family: \'Open Sans\', Arial, sans-serif; font-size: 14px;\">Suspendisse leo odio, scelerisque quis elit ultricies, accumsan rhoncus erat. Etiam dui ipsum, accumsan ac ante quis, convallis porta turpis. Donec dui massa, sodales non turpis non, viverra pulvinar enim. Nulla at felis semper, tincidunt enim et, pharetra libero. Integer fermentum nunc elit, tristique ultrices nunc tincidunt vitae. Nulla laoreet ligula quis erat vehicula placerat. Mauris laoreet, mi ac condimentum fermentum, quam felis porta mauris, a venenatis turpis tellus sed purus. Sed massa nisl, molestie sed elit vitae, rhoncus mollis sem. Pellentesque dui mauris, aliquam sed sem sed, porttitor suscipit tortor. Sed dictum dui vitae mauris malesuada lobortis. Suspendisse tempor est a est eleifend viverra. Proin sollicitudin ipsum vitae finibus pulvinar. Mauris est enim, vulputate sit amet est at, scelerisque molestie mi. Mauris malesuada gravida urna, vitae suscipit enim. Donec sed efficitur velit, et posuere nunc.</p>\r\n<p style=\"margin: 0px 0px 15px; padding: 0px; text-align: justify; font-family: \'Open Sans\', Arial, sans-serif; font-size: 14px;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed porta, tellus vitae cursus rutrum, eros augue congue tellus, eget ultricies ante justo et tellus. Praesent in elementum mauris, quis fringilla quam. Sed viverra urna in orci vehicula, quis convallis mauris blandit. Duis pellentesque dolor sit amet neque aliquam, ac luctus ex vestibulum. Integer vitae diam dapibus, pellentesque ipsum at, tempor turpis. Phasellus non cursus turpis. Duis eu gravida lorem, luctus suscipit augue.</p>\r\n<p style=\"margin: 0px 0px 15px; padding: 0px; text-align: justify; font-family: \'Open Sans\', Arial, sans-serif; font-size: 14px;\">Integer vitae luctus odio. Donec vulputate at eros vitae semper. Mauris at convallis ligula. Curabitur suscipit, leo ut dignissim egestas, nunc metus consectetur velit, eu luctus magna risus a mauris. Suspendisse et mauris interdum, tempus nisi nec, finibus velit. Duis lacinia convallis nisl ut pulvinar. Vestibulum blandit porttitor lectus, sit amet vehicula neque congue sed. Phasellus a massa lacinia nisl ultrices posuere lacinia at ipsum. Donec venenatis urna a diam viverra fermentum. Quisque ac quam sit amet lectus rutrum cursus id a nulla. Vestibulum et ultricies purus. Donec dignissim sem est, quis porta massa aliquet at.</p>', '2020-09-21 23:26:13'),
(7, 'Chapitre 7', '<p style=\"margin: 0px 0px 15px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; font-family: \'Open Sans\', Arial, sans-serif; font-size: 14px; font-variant-ligatures: normal; orphans: 2; widows: 2; text-align: justify;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis bibendum ipsum venenatis lobortis facilisis. Vivamus in finibus neque. Suspendisse potenti. Cras sit amet bibendum velit. Curabitur sed dui aliquet, auctor sapien a, scelerisque orci. Aliquam lobortis mauris sapien, at molestie ligula tempor in. Suspendisse in neque sit amet mauris laoreet ullamcorper. Vestibulum iaculis, orci vitae vehicula dignissim, dolor turpis consequat lorem, ut pretium magna urna ornare nisi. Praesent sollicitudin quis ipsum a sodales. Suspendisse dapibus turpis mauris, non porta sem efficitur sit amet. Morbi in euismod neque. In at lorem accumsan, egestas velit in, lobortis dui. Pellentesque et arcu quam. In nec pellentesque ipsum. Sed mollis diam eget nisi imperdiet dictum.</p>\r\n<p style=\"margin: 0px 0px 15px; padding: 0px; text-align: justify; font-family: \'Open Sans\', Arial, sans-serif; font-size: 14px; font-variant-ligatures: normal; orphans: 2; widows: 2;\">Sed congue faucibus diam, et malesuada sapien bibendum at. Suspendisse est tortor, venenatis vel nisl id, rutrum imperdiet ligula. Fusce faucibus eu ante ac semper. Mauris quis condimentum quam. In vehicula arcu ornare neque porttitor tristique ac id quam. Nam molestie metus massa, nec bibendum eros finibus nec. Integer non maximus justo.</p>\r\n<p style=\"margin: 0px 0px 15px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; text-align: justify; font-family: \'Open Sans\', Arial, sans-serif; font-size: 14px; font-variant-ligatures: normal; orphans: 2; widows: 2;\">Suspendisse leo odio, scelerisque quis elit ultricies, accumsan rhoncus erat. Etiam dui ipsum, accumsan ac ante quis, convallis porta turpis. Donec dui massa, sodales non turpis non, viverra pulvinar enim. Nulla at felis semper, tincidunt enim et, pharetra libero. Integer fermentum nunc elit, tristique ultrices nunc tincidunt vitae. Nulla laoreet ligula quis erat vehicula placerat. Mauris laoreet, mi ac condimentum fermentum, quam felis porta mauris, a venenatis turpis tellus sed purus. Sed massa nisl, molestie sed elit vitae, rhoncus mollis sem. Pellentesque dui mauris, aliquam sed sem sed, porttitor suscipit tortor. Sed dictum dui vitae mauris malesuada lobortis. Suspendisse tempor est a est eleifend viverra. Proin sollicitudin ipsum vitae finibus pulvinar. Mauris est enim, vulputate sit amet est at, scelerisque molestie mi. Mauris malesuada gravida urna, vitae suscipit enim. Donec sed efficitur velit, et posuere nunc.</p>', '2020-09-21 23:34:28');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `pseudo` varchar(35) NOT NULL,
  `mail` text NOT NULL,
  `motdepasse` varchar(100) NOT NULL,
  `droits` tinyint(4) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `pseudo`, `mail`, `motdepasse`, `droits`) VALUES
(1, 'jeans', 'jeans@mail.fr', '*AFF1139A7684B1B4EACB289D', 1),
(3, 'Julie', 'julie@test.fr', '$2y$10$P.QJjk5/fOnOuAsG3FrDb.bodRoCIzUxcpvb6HMoVYbK4uwDtT72O', 1);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_billet` (`id_billet`),
  ADD KEY `id_user` (`id_user`);

--
-- Index pour la table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`id_billet`) REFERENCES `posts` (`id`),
  ADD CONSTRAINT `comments_ibfk_2` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`);
