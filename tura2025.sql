-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2025. Már 31. 20:55
-- Kiszolgáló verziója: 10.4.28-MariaDB
-- PHP verzió: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `tura2025`
--
CREATE DATABASE IF NOT EXISTS `tura2025` DEFAULT CHARACTER SET utf8 COLLATE utf8_hungarian_ci;
USE `tura2025`;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `jelentkezes`
--

CREATE TABLE `jelentkezes` (
  `id` int(11) NOT NULL,
  `név` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `telefon` varchar(255) NOT NULL,
  `eletkor` int(11) NOT NULL,
  `ut_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `jelentkezes`
--

INSERT INTO `jelentkezes` (`id`, `név`, `email`, `telefon`, `eletkor`, `ut_id`) VALUES
(1, 'Nagy János', 'nagyj@gmail.com', '06-20-123-34-34', 22, 1),
(2, 'Kiss Péter', 'kissp@gmail.com', '06-20-555-74-88', 23, 3);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `ut`
--

CREATE TABLE `ut` (
  `id` int(11) NOT NULL,
  `nev` varchar(65) DEFAULT NULL,
  `hossz` varchar(4) DEFAULT NULL,
  `allomas` int(2) DEFAULT NULL,
  `ido` varchar(4) DEFAULT NULL,
  `vezetes` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- A tábla adatainak kiíratása `ut`
--

INSERT INTO `ut` (`id`, `nev`, `hossz`, `allomas`, `ido`, `vezetes`) VALUES
(1, 'Anna-ligeti tanösvény ', '2', 8, '1,5', -1),
(2, 'Apródok útja tanösvény ', '7,2', 8, '3', -1),
(3, 'Aqua Colun tanösvény ', '3,5', 5, '2', -1),
(4, 'Árpád fejedelem tanösvény ', '3', 11, '2', -1),
(5, 'Ártéri tanösvény ', '0,5', 4, '0,5', -1),
(6, 'Babócsai Basa-kert tanösvény ', '1', 2, '1', -1),
(7, 'Baradla tanösvény ', '7.7', 18, '3', -1),
(8, 'Bárányfoki tanösvény ', '2,1', 6, '1', -1),
(9, 'Báránypirosító tanösvény ', '1,6', 5, '1,6', -1),
(10, 'Barát-réti tanösvény ', '6,5', 4, '3', -1),
(11, 'Barcsi Borókás tanösvény ', '2', 4, '1', -1),
(12, 'Bazaltorgonák tanösvény ', '4', 7, '2', -1),
(13, 'Bél-kői tanösvény ', '5', 7, '2,5', -1),
(14, 'Bihari-sík tanösvény ', '7,2', 20, '5,2', -1),
(15, 'Bodrogzugi vízitúra tanösvény ', '5.5', 3, '2', 0),
(16, 'Bódva-völgyi tanösvény ', '2.2', 7, '1', 0),
(17, 'Boróka tanösvény ', '2,9', 5, '1,5', -1),
(18, 'Boros-Dráva tanösvény ', '1', 2, '0,5', -1),
(19, 'Boroszlán tanösvény ', '7', 8, '3', -1),
(20, 'Boszorkány-kő geológiai tanösvény ', '0,4', 13, '0,5', -1),
(21, 'Bőköz tanösvény ', '4', 6, '1,5', -1),
(22, 'Bölömbika tanösvény ', '3', 6, '1,5', -1),
(23, 'Búbos vöcsök tanösvény ', '1,5', 13, '1,5', 0),
(24, 'Buda-hegyi tanösvény', '2', 8, '3', -1),
(25, 'Cankó tanösvény ', '1', 9, '1,5', -1),
(26, 'Cégénydányádi Kastélypark tanösvény ', '1,5', 19, '1', 0),
(27, 'Chernel-kerti tanösvény ', '0,5', 0, '0,5', 0),
(28, 'Cserépfalui Ördögtorony tanösvény ', '10', 20, '4,5', -1),
(29, 'Csipak tanösvény ', '3', 9, '1,5', -1),
(30, 'Csodarét tanösvény ', '4', 10, '2', -1),
(31, 'Csomoros-sziget tanösvény ', '0,7', 10, '1', -1),
(32, 'Csörgőalma tanösvény ', '0', 1, '0,5', -1),
(33, 'Denevér tanösvény ', '5', 13, '3', -1),
(34, 'Erdei tanösvény ', '2,7', 6, '2', -1),
(35, 'Eresztvényi kőbányák ', '2,5', 6, '1', -1),
(36, 'Erzsébet-sziget tanösvény ', '3', 2, '1,5', -1),
(37, 'Fekete harkály tanösvény ', '5', 13, '3', -1),
(38, 'Felsőszeri tanösvény ', '1,7', 6, '1', -1),
(39, 'Fóti-Somlyó tanösvény ', '3,5', 11, '3', -1),
(40, 'Földtani tanösvény ', '2', 13, '1,5', -1),
(41, 'Fürge cselle tanösvény ', '3,2', 8, '1,5', -1),
(42, 'Fürkész ösvény ', '2.2', 12, '1,5', -1),
(43, 'Górési tanösvény ', '11', 5, '3', -1),
(44, 'Halásztelki tanösvény ', '3', 10, '1,5', -1),
(45, 'Hankovszky-liget tanösvény ', '0,35', 8, '0,5', -1),
(46, 'Hany Istók tanösvény ', '5', 7, '2', 0),
(47, 'Haraszt-hegyi tanösvény ', '3,5', 7, '3', -1),
(48, 'Holt-Rába tanösvény ', '6', 5, '2', 0),
(49, 'Ilona-völgyi geológiai tanösvény ', '6,5', 9, '2,5', -1),
(50, 'Ipolytarnóc - Biológiai tanösvény ', '6', 13, '1,25', -1),
(51, 'Ipolytarnóc - Borókás-árok geológiai tanösvény ', '0,8', 7, '1', -1),
(52, 'Ipolytarnóc - Kőszikla tanösvény ', '0,9', 20, '1,5', -1),
(53, 'Ipolytarnóc - Kőzetpark ', '0,7', 20, '0,5', -1),
(54, 'Jági tanösvény ', '3,5', 6, '2', -1),
(55, 'Jakab-hegyi tanösvény ', '8', 10, '2', -1),
(56, 'Jávorkúti tanösvény ', '3', 4, '1', -1),
(57, 'Jónásrészi tanösvény ', '5', 11, '3', -1),
(58, 'Káli-medence túrahálózat ', '25', 79, '8', -1),
(59, 'Kamon-kő tanösvény ', '6', 9, '3', -1),
(60, 'Kékbegy tanösvény ', '0,21', 3, '0,5', -1),
(61, 'Kékmoszat tanösvény ', '2,4', 12, '2', -1),
(62, 'Kesznyéteni TK agrár-környezetgazdálkodási tanösvény ', '4,8', 6, '3,5', -1),
(63, 'Kígyósi tanösvény ', '5', 4, '2', 0),
(64, 'Kismély-völgyi tanösvény ', '1', 5, '1', -1),
(65, 'Kisvátyoni tanösvény ', '8', 6, '3', 0),
(66, 'Kitaibel tanösvény ', '3', 9, '2', -1),
(67, 'Kontyvirág tanösvény ', '2,4', 6, '1,5', -1),
(68, 'Kormorános-erdő tanösvény ', '2', 6, '0,5', -1),
(69, 'Kosbor tanösvény ', '1,7', 5, '1,5', -1),
(70, 'Kő-közi tanösvény ', '0,8', 5, '1', -1),
(71, 'Kőpark tanösvény ', '0,2', 0, '0,5', -1),
(72, 'Körtike tanösvény ', '6,2', 11, '2,5', -1),
(73, 'Kövi benge tanösvény ', '0,3', 20, '1', 0),
(74, 'Lóczy gejzír-sétaút ', '18', 15, '6', -1),
(75, 'Madarak és fák útja ', '1', 5, '1', -1),
(76, 'Madárvédelmi tanösvény ', '0,3', 8, '0,5', -1),
(77, 'Mágor-pusztai tanösvény ', '0,5', 5, '1,5', 0),
(78, 'Magyar-bányai kőpark ', '0,15', 13, '0,5', -1),
(79, 'Mérus-erdő tanösvény ', '1', 1, '0,5', -1),
(80, 'Millenniumi természetismereti és erdészeti bemutató sétaút ', '2,5', 20, '1', -1),
(81, 'Nagymező - Kis-kőháti-zsomboly tanösvény ', '3', 3, '1', -1),
(82, 'Nagypartosi tanösvény ', '2,5', 6, '1', -1),
(83, 'Nagy-Szénás tanösvény ', '2,1', 7, '1,5', -1),
(84, 'Nyéki-Holt-Duna tanösvény ', '2,2', 6, '1', -1),
(85, 'Óbányai Pro Silva tanösvény ', '2', 5, '0,5', -1),
(86, 'Olasz-kapui tanösvény ', '7,2', 6, '3', -1),
(87, 'Orfűi Vízfő tanösvény ', '1', 4, '0,5', -1),
(88, 'Öregtavi tanösvény ', '25', 18, '6', -1),
(89, 'Őrtilosi Dráva-ártér tanösvény ', '2', 0, '0,75', -1),
(90, 'Paksi Ürge-mező tanösvény ', '4', 11, '1', -1),
(91, 'Pálfája tanösvény ', '1,8', 10, '1,5', -1),
(92, 'Páskom legelő tanösvény ', '3', 6, '2', -1),
(93, 'Pele apó ösvénye ', '8,5', 38, '5', -1),
(94, 'Pele körút ', '0,8', 10, '1', -1),
(95, 'Pimpó tanösvény ', '5,8', 6, '4', -1),
(96, 'Poszáta tanösvény ', '2', 8, '1,5', -1),
(97, 'Ravazd-Sokorópátkai tanösvény ', '15', 3, '3', 0),
(98, 'Réce tanösvény ', '1', 5, '0,5', -1),
(99, 'Réhelyi tanösvény ', '1,5', 8, '1', -1),
(100, 'Rejtek - Répáshuta tanösvény ', '9', 12, '4,5', -1),
(101, 'Rekettye tanösvény ', '2,3', 6, '2', -1),
(102, 'Rezgőnyár tanösvény ', '0,3', 7, '0,5', -1),
(103, 'Ság-hegy élővilága ', '0,2', 13, '0,2', -1),
(104, 'Ság-hegyi geológiai tanösvény ', '1', 18, '0,5', -1),
(105, 'Salgó - Somoskő vára tanösvény ', '3,5', 6, '1', -1),
(106, 'Sárgaliliom tanösvény ', '6,2', 11, '2,5', -1),
(107, 'Sár-hegyi természetismereti tanösvény ', '7', 12, '3', -1),
(108, 'Sas-hegy tanösvény ', '0,85', 7, '1', -1),
(109, 'Sáskajárás sétaút ', '0,8', 8, '1', -1),
(110, 'Selyem-réti tanösvény ', '1,5', 6, '2', -1),
(111, 'Sirály tanösvény ', '2', 5, '1,5', -1),
(112, 'Sóvirág tanösvény ', '0,5', 0, '1', -1),
(113, 'Sötét-völgyi tanösvény ', '4,3', 9, '2', -1),
(114, 'Strázsa-hegyi tanösvény ', '1,2', 7, '1,5', -1),
(115, 'Szádvár tanösvény ', '4.4', 12, '3', -1),
(116, 'Szalajka-völgyi természetvédelmi bemutatóösvény ', '4,2', 10, '2,5', -1),
(117, 'Szala menti tanösvény ', '3,8', 9, '1,5', -1),
(118, 'Szálkahalmi tanösvény ', '1,1', 5, '1', -1),
(119, 'Szarvaskői geológiai tanösvény ', '8,8', 11, '3,5', -1),
(120, 'Szeremlei-Holt-Duna tanösvény ', '2,4', 6, '1', -1),
(121, 'Szigetközi Ökoturisztikai Bemutató Útvonal ', '18', 12, '2', 0),
(122, 'Sziki őszirózsa tanösvény ', '4', 10, '2', 0),
(123, 'Szilvás-kői geológiai tanösvény ', '3,5', 12, '1,5', -1),
(124, 'Szinva tanösvény ', '4', 6, '3', -1),
(125, 'Szomoróczi tanösvény ', '3', 6, '1', -1),
(126, 'Tanösvény a Turjánban ', '1,2', 9, '1', -1),
(127, 'Tarpai Szőlő-hegy tanösvény ', '3', 6, '2', 0),
(128, 'Templom-hegyi tanösvény ', '2', 6, '1', -1),
(129, 'Pannonhalmi arborétum', '1,5', 3, '0,3', 0),
(130, 'Tisza-tavi vízi sétány és tanösvény ', '1,5', 4, '2', -1),
(131, 'Tohonya-Kuriszlán tanösvény II. útvonal ', '9.9', 25, '6', -1),
(132, 'Tohonya-Kuriszlán tanösvény I. útvonal ', '4.4', 12, '2,5', -1),
(133, 'Tőzike tanösvény ', '3', 5, '1', -1),
(134, 'Tüskés-réti tanösvény ', '1', 4, '1', -1),
(135, 'Újmohácsi tanösvény ', '3,1', 7, '1', -1),
(136, 'Üde rétek tanösvény ', '3', 5, '2', -1),
(137, 'Várdomb tanösvény ', '0,3', 6, '0,5', 0),
(138, 'Vár-hegyi tanösvény ', '10', 6, '4,5', -1),
(139, 'Vártúra ösvény ', '1,2', 0, '1', -1),
(140, 'Vár-völgyi földtani tanösvény ', '3', 10, '1', -1),
(141, 'Vasút-oldali túraútvonal ', '10', 1, '2,5', -1),
(142, 'Vizi Rence Túraútvonal ', '6', 0, '3', -1),
(143, 'Vöcsök tanösvény ', '3,2', 7, '2,5', -1),
(144, 'Vörös-mocsár tanösvény ', '2,5', 2, '2', -1),
(145, 'asd', '1.1', 5, '1,7', -1),
(146, 'asd', '1', 2, '3', -1),
(147, 'asd', '1', 2, '3', -1),
(148, 'név', '2', 5, '7', 0);

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `jelentkezes`
--
ALTER TABLE `jelentkezes`
  ADD PRIMARY KEY (`id`);

--
-- A tábla indexei `ut`
--
ALTER TABLE `ut`
  ADD PRIMARY KEY (`id`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `jelentkezes`
--
ALTER TABLE `jelentkezes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT a táblához `ut`
--
ALTER TABLE `ut`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=149;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
