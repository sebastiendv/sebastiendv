-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 16, 2022 at 08:40 AM
-- Server version: 5.7.33
-- PHP Version: 7.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `greengarden33`
--

-- --------------------------------------------------------

--
-- Table structure for table `asso_1`
--

CREATE TABLE `asso_1` (
  `Id_PRODUITS` int(11) NOT NULL,
  `Id_SOUS_CATEGORIE` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `asso_2`
--

CREATE TABLE `asso_2` (
  `Id_FOURNISSEUR` int(11) NOT NULL,
  `Id_PRODUITS` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `asso_3`
--

CREATE TABLE `asso_3` (
  `Id_BON_DE_LIVRAISON` int(11) NOT NULL,
  `Id_FACTURATION` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `asso_4`
--

CREATE TABLE `asso_4` (
  `Id_BON_DE_COMMANDE` int(11) NOT NULL,
  `Id_BON_DE_LIVRAISON` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `asso_5`
--

CREATE TABLE `asso_5` (
  `Id_CLIENT` int(11) NOT NULL,
  `Id_BON_DE_COMMANDE` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `asso_6`
--

CREATE TABLE `asso_6` (
  `Id_COMMERCIAL` int(11) NOT NULL,
  `Id_CLIENT` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `asso_7`
--

CREATE TABLE `asso_7` (
  `Id_COMMERCIAL` int(11) NOT NULL,
  `Id_PRODUITS` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `bon_de_commande`
--

CREATE TABLE `bon_de_commande` (
  `Id_BON_DE_COMMANDE` int(11) NOT NULL,
  `N_COMMANDE` int(11) DEFAULT NULL,
  `DATE_BON_COMMANDE` date DEFAULT NULL,
  `CLIENT` varchar(50) DEFAULT NULL,
  `REF_PRODUIT` varchar(50) DEFAULT NULL,
  `QUANTITE_PRODUIT` varchar(50) DEFAULT NULL,
  `ADRESSE_LIVRAISON` varchar(50) DEFAULT NULL,
  `ADRESSE_FACTURATION` varchar(50) DEFAULT NULL,
  `N_CLIENT` int(50) DEFAULT NULL,
  `MONTANT_HT` int(50) DEFAULT NULL,
  `MONTANT_TTC` int(50) DEFAULT NULL,
  `MONTANT_TVA` int(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bon_de_commande`
--

INSERT INTO `bon_de_commande` (`Id_BON_DE_COMMANDE`, `N_COMMANDE`, `DATE_BON_COMMANDE`, `CLIENT`, `REF_PRODUIT`, `QUANTITE_PRODUIT`, `ADRESSE_LIVRAISON`, `ADRESSE_FACTURATION`, `N_CLIENT`, `MONTANT_HT`, `MONTANT_TTC`, `MONTANT_TVA`) VALUES
(1, 7, '2021-06-22', 'Michell Juszczak', '1', '7', '53300 Westridge Place', '038 Namekagon Alley', 3, 8, 6, 6),
(2, 7, '2021-09-27', 'Holden Boerder', '6', '4', '77591 Bayside Trail', '49 Miller Lane', 3, 5, 1, 4),
(3, 8, '2022-02-28', 'Ethelbert Faherty', '7', '2', '47270 Russell Parkway', '4 Morningstar Junction', 5, 7, 2, 1),
(4, 4, '2022-01-30', 'Jedd Dockrill', '3', '7', '87502 Dorton Avenue', '37 Sheridan Drive', 8, 1, 5, 1),
(5, 6, '2022-02-07', 'Milly Triswell', '3', '4', '7 Merrick Street', '39248 Bobwhite Road', 4, 4, 3, 10),
(6, 9, '2021-04-02', 'Charmian Keenlyside', '10', '4', '4 Bay Lane', '4 Grover Avenue', 7, 3, 9, 5),
(7, 1, '2021-06-18', 'Phil Hazeldene', '4', '9', '83319 Stoughton Park', '282 Goodland Terrace', 6, 9, 5, 4),
(8, 5, '2021-10-18', 'Godfree Sporton', '6', '6', '675 Shasta Avenue', '5 Briar Crest Parkway', 4, 2, 5, 3),
(9, 2, '2021-11-28', 'Katti Kingsly', '3', '1', '88 Eagan Hill', '70 Green Crossing', 6, 8, 10, 2),
(10, 3, '2021-07-06', 'Claudell Paolone', '2', '5', '06 Badeau Alley', '5704 Sachtjen Pass', 5, 1, 3, 6),
(11, 2, '2021-12-20', 'Sheelagh Matasov', '10', '6', '17779 3rd Parkway', '0719 Ramsey Hill', 1, 10, 7, 1),
(12, 8, '2021-12-29', 'Brook Laidlow', '6', '7', '068 Mcguire Court', '91805 Fisk Way', 2, 9, 6, 9),
(13, 8, '2022-03-03', 'Kasper Henriet', '9', '7', '97984 Green Ridge Alley', '04 Fisk Park', 10, 8, 10, 3),
(14, 7, '2021-11-25', 'Augusta Dmitrievski', '6', '10', '6 Straubel Alley', '13063 Bluestem Parkway', 10, 7, 10, 10),
(15, 5, '2021-10-31', 'Sybil Bricksey', '7', '1', '99382 Briar Crest Street', '66165 Westerfield Drive', 4, 6, 10, 4),
(16, 3, '2021-10-13', 'Nellie Backshall', '1', '5', '474 Pine View Trail', '613 Ruskin Crossing', 8, 5, 4, 3),
(17, 4, '2021-06-05', 'Casey Rollinshaw', '5', '7', '683 Bunting Lane', '999 Myrtle Trail', 9, 6, 1, 7),
(18, 8, '2021-08-20', 'Bryce Mandrake', '8', '2', '4949 Granby Parkway', '9 Sutherland Lane', 10, 7, 7, 6),
(19, 8, '2021-07-31', 'Nerita Defty', '6', '4', '18 Rieder Trail', '6927 Erie Place', 10, 2, 9, 1),
(20, 7, '2022-02-15', 'Corette Busfield', '3', '3', '7252 La Follette Park', '25650 Algoma Parkway', 2, 1, 6, 7),
(21, 9, '2021-07-13', 'Ursa Oattes', '8', '9', '017 Arapahoe Street', '4802 2nd Way', 2, 8, 7, 10),
(22, 10, '2021-11-16', 'Ker Hogben', '2', '9', '22911 Gateway Trail', '4 Maywood Drive', 7, 10, 10, 6),
(23, 10, '2021-12-12', 'Allina Stephens', '9', '3', '8008 Havey Place', '779 Merchant Parkway', 5, 10, 3, 2),
(24, 3, '2022-01-29', 'Neville Keith', '8', '7', '9307 Mallory Circle', '9759 Sage Plaza', 1, 6, 10, 3),
(25, 4, '2021-07-31', 'Lindsey Clemonts', '9', '1', '38226 Thompson Alley', '0 Kingsford Avenue', 1, 6, 9, 5),
(26, 5, '2021-12-31', 'Sherwood Ghiraldi', '4', '5', '61038 Fulton Parkway', '8 Fair Oaks Park', 4, 6, 3, 4),
(27, 7, '2022-01-10', 'Farica Asbrey', '2', '8', '6 Iowa Point', '32 Logan Junction', 3, 6, 4, 7),
(28, 7, '2021-06-23', 'Callean Beagin', '1', '9', '132 Tennessee Lane', '8 Harbort Court', 5, 1, 1, 1),
(29, 1, '2021-04-30', 'Ailee McEvay', '9', '10', '6012 Aberg Terrace', '96 Maple Wood Lane', 9, 8, 4, 4),
(30, 8, '2021-05-03', 'Sherman Vicary', '2', '9', '33233 Ruskin Plaza', '94 Eastlawn Avenue', 2, 4, 7, 4),
(31, 4, '2021-08-10', 'Leta Maffey', '6', '1', '68 Mccormick Center', '16 Ridge Oak Place', 2, 3, 2, 7),
(32, 9, '2021-06-02', 'Cymbre Dorkins', '4', '3', '4501 Linden Place', '92616 Fieldstone Hill', 2, 9, 2, 8),
(33, 10, '2022-01-16', 'Demetris Earland', '1', '4', '57 Lighthouse Bay Crossing', '121 Kings Pass', 8, 9, 7, 5),
(34, 8, '2022-02-21', 'Blinnie McDonagh', '9', '2', '6 Old Gate Junction', '994 Beilfuss Center', 3, 3, 5, 5),
(35, 3, '2021-10-02', 'Lianna Dumbrill', '3', '6', '0171 Dapin Park', '4 Pepper Wood Alley', 1, 10, 6, 2),
(36, 5, '2021-07-03', 'Laureen Natwick', '8', '5', '5691 Shopko Circle', '41 Emmet Park', 6, 6, 9, 2),
(37, 5, '2021-05-28', 'Inglis Nunnery', '4', '5', '3644 Buena Vista Point', '39 Bunting Alley', 4, 5, 10, 9),
(38, 4, '2021-11-02', 'Betti Braim', '2', '4', '22332 Declaration Place', '898 Sutteridge Plaza', 7, 6, 3, 8),
(39, 2, '2021-04-14', 'Bert Blackhall', '7', '6', '21 Sachs Park', '751 Village Trail', 3, 5, 7, 3),
(40, 8, '2022-03-11', 'Wallis Storry', '9', '4', '4498 Hagan Junction', '556 Meadow Valley Alley', 9, 2, 6, 1),
(41, 6, '2022-01-18', 'Carl Monkeman', '6', '1', '71443 Pine View Place', '102 Village Green Trail', 9, 6, 5, 8),
(42, 9, '2021-11-24', 'Ailina Rummins', '2', '5', '11 Goodland Road', '597 Kim Center', 8, 3, 3, 8),
(43, 2, '2021-07-14', 'Kitty de Nore', '8', '1', '8020 Magdeline Junction', '40 Dixon Center', 10, 10, 10, 1),
(44, 2, '2021-04-09', 'Rachelle Sothern', '9', '9', '8 Bay Junction', '69929 Duke Center', 5, 6, 7, 6),
(45, 1, '2021-11-07', 'Ulric Kahn', '9', '9', '982 Londonderry Pass', '1 Sloan Circle', 7, 5, 6, 3),
(46, 7, '2021-09-21', 'Jolie Brian', '9', '9', '6883 3rd Street', '7453 Quincy Lane', 4, 6, 5, 7),
(47, 4, '2021-03-31', 'Dom Matzl', '9', '2', '0533 Village Lane', '40294 Anniversary Center', 9, 6, 3, 9),
(48, 4, '2021-11-06', 'Gilbert Riggey', '9', '10', '14419 Sachs Terrace', '78 Di Loreto Road', 8, 1, 8, 5),
(49, 10, '2021-05-02', 'Brew Eggleton', '1', '9', '63 Golf Street', '78 Lakewood Circle', 3, 6, 5, 7),
(50, 5, '2021-08-04', 'Viki Thulborn', '7', '1', '55476 Green Circle', '7825 Meadow Valley Place', 5, 2, 4, 6),
(51, 4, '2021-03-30', 'Mahmoud Darling', '2', '3', '9073 Fallview Plaza', '25 Cottonwood Hill', 9, 6, 9, 6),
(52, 4, '2021-06-10', 'Tabby Haslum', '2', '3', '136 Veith Place', '01994 Ridgeview Crossing', 9, 5, 7, 3),
(53, 8, '2021-04-28', 'Aldous Shatford', '4', '3', '164 Mayfield Hill', '29 Manitowish Road', 10, 4, 7, 5),
(54, 1, '2021-11-18', 'Baudoin Pargiter', '9', '1', '960 Hoepker Trail', '42 Meadow Valley Place', 6, 8, 3, 8),
(55, 9, '2021-11-19', 'Eric Neward', '5', '10', '99931 Superior Street', '192 Bluestem Junction', 6, 7, 7, 7),
(56, 8, '2021-11-29', 'Aliza Attree', '10', '6', '6 Weeping Birch Plaza', '01 Riverside Road', 1, 10, 2, 2),
(57, 8, '2021-09-26', 'Colas Sarton', '4', '8', '4 2nd Hill', '226 Pine View Plaza', 8, 9, 7, 7),
(58, 5, '2021-09-21', 'Brook Faull', '4', '9', '4045 Schmedeman Plaza', '67319 Union Park', 6, 7, 4, 10),
(59, 7, '2021-06-26', 'Morley Cahani', '10', '4', '9192 Oak Valley Street', '3 Melody Park', 4, 6, 5, 4),
(60, 8, '2021-10-01', 'Traver Batchelder', '2', '5', '3 Erie Drive', '63252 Westerfield Point', 2, 6, 10, 10),
(61, 4, '2021-07-22', 'Ddene McGunley', '8', '7', '1903 Manufacturers Place', '20678 Jenifer Parkway', 3, 7, 4, 7),
(62, 7, '2021-06-19', 'Hill Sorrill', '6', '2', '5296 Delaware Terrace', '67 Superior Trail', 1, 8, 8, 7),
(63, 2, '2022-01-05', 'Karleen Sulter', '3', '3', '24210 Rockefeller Crossing', '9 Swallow Place', 6, 5, 10, 1),
(64, 8, '2022-02-25', 'Wake Glen', '2', '4', '992 Judy Crossing', '3390 Hintze Point', 2, 2, 8, 3),
(65, 10, '2022-01-03', 'Gabriellia Burker', '3', '4', '43 Welch Place', '3 Dexter Parkway', 10, 1, 5, 8),
(66, 1, '2021-05-24', 'Oralla Keaveny', '9', '3', '61 Kipling Place', '681 Green Ridge Pass', 5, 10, 7, 5),
(67, 1, '2022-03-03', 'Culley Speight', '7', '6', '4886 Luster Trail', '4 Rowland Avenue', 9, 1, 2, 6),
(68, 3, '2021-06-20', 'Edouard Mathiassen', '2', '7', '9 Rieder Junction', '6 Superior Court', 8, 5, 8, 2),
(69, 1, '2021-04-14', 'Camile Garnham', '7', '6', '0505 Lawn Avenue', '9885 Monica Lane', 2, 5, 6, 10),
(70, 7, '2022-01-25', 'Christophe Poundesford', '2', '2', '8379 Bobwhite Street', '32 Bartillon Plaza', 1, 1, 8, 8),
(71, 5, '2021-11-01', 'Dianemarie Yegorev', '6', '8', '37065 Golf View Place', '10 Moulton Court', 4, 6, 5, 2),
(72, 1, '2021-08-15', 'Peggy Bank', '3', '5', '375 Cherokee Place', '56474 Prairie Rose Point', 1, 5, 2, 8),
(73, 7, '2022-02-14', 'Ned Nockalls', '9', '2', '480 Hanover Plaza', '26 Oak Valley Way', 6, 2, 5, 9),
(74, 6, '2021-07-17', 'Humfrey O\'Lagene', '10', '9', '9070 Blackbird Terrace', '079 Pleasure Avenue', 8, 1, 5, 9),
(75, 6, '2022-03-08', 'Sanderson Sumshon', '3', '3', '5 Hooker Terrace', '8 Melody Hill', 3, 8, 8, 1),
(76, 5, '2021-07-16', 'Morgana Darcey', '1', '5', '7887 Forest Dale Plaza', '0 Valley Edge Park', 7, 6, 7, 4),
(77, 7, '2021-12-24', 'Lamond Foxcroft', '2', '9', '02661 Starling Road', '4 Vernon Alley', 3, 4, 2, 7),
(78, 6, '2021-05-05', 'Clemmy Suche', '1', '5', '34 Merchant Parkway', '07 Brown Terrace', 7, 3, 5, 3),
(79, 10, '2021-09-24', 'Nadiya Edgcumbe', '9', '10', '3 Myrtle Junction', '0 Hoard Point', 7, 6, 1, 10),
(80, 10, '2021-07-21', 'Piggy Simenot', '9', '6', '4 Utah Place', '50784 Havey Plaza', 6, 7, 4, 4),
(81, 6, '2021-10-16', 'Tyrus Klaffs', '4', '1', '79 Lawn Crossing', '1583 Maryland Park', 2, 2, 4, 2),
(82, 3, '2021-03-14', 'Rafaelia Huett', '7', '8', '903 Eastlawn Court', '92 Helena Circle', 5, 2, 2, 8),
(83, 7, '2021-04-04', 'Angel Spiers', '5', '2', '0 Spaight Crossing', '98 Scott Alley', 6, 7, 7, 2),
(84, 10, '2022-03-09', 'Enrichetta Denty', '7', '6', '1 Arkansas Crossing', '5 Commercial Avenue', 9, 8, 9, 1),
(85, 8, '2021-07-04', 'Teddie L\'argent', '10', '7', '8 Thierer Road', '73 Pepper Wood Trail', 9, 9, 3, 7),
(86, 1, '2021-09-25', 'Lonny Wigfield', '1', '7', '3 Independence Junction', '3 Orin Alley', 10, 5, 1, 6),
(87, 7, '2021-12-20', 'Richart Blackly', '10', '4', '16 Menomonie Street', '436 Vahlen Road', 4, 2, 9, 7),
(88, 2, '2021-05-13', 'Alayne Rex', '2', '8', '5 Sunbrook Road', '87696 Mosinee Center', 9, 6, 5, 6),
(89, 3, '2022-01-29', 'Roger McKeag', '4', '10', '7 Butternut Parkway', '03820 Miller Pass', 6, 8, 5, 5),
(90, 1, '2021-06-01', 'Saleem Vango', '1', '6', '3593 Rockefeller Lane', '803 Corscot Lane', 5, 5, 5, 1),
(91, 1, '2021-09-23', 'Allie Goldthorpe', '1', '3', '06 Hallows Hill', '2293 7th Junction', 5, 1, 7, 4),
(92, 3, '2021-09-20', 'Cassandry Dufore', '8', '5', '8 Doe Crossing Park', '13 Di Loreto Crossing', 4, 1, 5, 2),
(93, 6, '2021-04-14', 'Romy Waistell', '3', '5', '690 Talisman Way', '4005 Anniversary Plaza', 3, 3, 10, 10),
(94, 10, '2022-01-27', 'Sharlene Bortoloni', '1', '10', '710 Merchant Hill', '52645 Dixon Junction', 3, 10, 3, 8),
(95, 6, '2021-08-14', 'Micky Dhillon', '7', '4', '2 Sundown Pass', '30029 Eastlawn Way', 7, 5, 4, 3),
(96, 10, '2021-07-12', 'Adolphus Haley', '7', '10', '4488 Lindbergh Circle', '14110 Eastwood Alley', 10, 5, 3, 6),
(97, 8, '2022-02-09', 'Ophelia Ottewill', '10', '2', '63528 Redwing Park', '0723 Scott Court', 3, 9, 2, 1),
(98, 2, '2021-10-05', 'Ronna Bonde', '3', '9', '44042 Main Park', '77426 Hayes Street', 5, 2, 10, 2),
(99, 5, '2022-02-25', 'Blaine Stoffels', '1', '6', '7187 Havey Road', '3 Westport Road', 4, 5, 7, 2),
(100, 1, '2021-05-22', 'Hilary Hanne', '1', '9', '6576 Armistice Court', '8 Holy Cross Way', 5, 3, 4, 7);

-- --------------------------------------------------------

--
-- Table structure for table `bon_de_livraison`
--

CREATE TABLE `bon_de_livraison` (
  `Id_BON_DE_LIVRAISON` int(11) NOT NULL,
  `N_COMMANDE` int(11) DEFAULT NULL,
  `CONTACTS_CLIENTS` varchar(50) DEFAULT NULL,
  `REFERENCE_PRODUITS` varchar(50) DEFAULT NULL,
  `QUANTITE_PRODUITS` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bon_de_livraison`
--

INSERT INTO `bon_de_livraison` (`Id_BON_DE_LIVRAISON`, `N_COMMANDE`, `CONTACTS_CLIENTS`, `REFERENCE_PRODUITS`, `QUANTITE_PRODUITS`) VALUES
(1, 7, 'Giulietta Rustedge', '7', '7'),
(2, 4, 'Drake Verna', '10', '7'),
(3, 9, 'Warden Benoy', '3', '6'),
(4, 5, 'Emmy Tichelaar', '8', '6'),
(5, 3, 'Tedra Mabbett', '9', '9'),
(6, 3, 'Killy Iapico', '6', '7'),
(7, 10, 'Tiertza Baskerfield', '4', '7'),
(8, 3, 'Moss Hinchshaw', '9', '7'),
(9, 10, 'Leland Preto', '8', '8'),
(10, 7, 'Cathrin Gounel', '8', '8'),
(11, 6, 'Bobby Wildish', '1', '8'),
(12, 9, 'Elsinore Scutchin', '5', '2'),
(13, 3, 'Eddy d\' Eye', '10', '2'),
(14, 2, 'Bealle Waine', '10', '9'),
(15, 5, 'Andie Griffiths', '4', '9'),
(16, 3, 'Tito Edkins', '1', '2'),
(17, 6, 'Dawna Dorie', '9', '9'),
(18, 2, 'Tracie Cubbon', '5', '9'),
(19, 7, 'Ancell Lurcock', '4', '3'),
(20, 9, 'Claudine Reddick', '7', '5'),
(21, 10, 'Glenda Reicherz', '4', '2'),
(22, 6, 'Ber Dell Casa', '4', '5'),
(23, 10, 'Diannne Sammon', '1', '6'),
(24, 3, 'Manuel Reichartz', '8', '10'),
(25, 8, 'Jerrylee Silversmidt', '8', '3'),
(26, 5, 'Blair Perkis', '3', '4'),
(27, 7, 'Alexine Sherrin', '8', '7'),
(28, 8, 'Ephraim Brydie', '9', '7'),
(29, 2, 'Marchelle Ledson', '6', '4'),
(30, 7, 'Case Cameron', '1', '8'),
(31, 10, 'Somerset Sikora', '3', '8'),
(32, 4, 'Randie Shorey', '9', '10'),
(33, 8, 'Mikol Gofton', '7', '1'),
(34, 10, 'Gardie Bingall', '5', '5'),
(35, 2, 'Cirilo Mowson', '9', '9'),
(36, 8, 'Frans Wivell', '4', '8'),
(37, 6, 'Neala Baguley', '10', '2'),
(38, 2, 'Doll Greschik', '10', '1'),
(39, 6, 'Franchot Olivas', '7', '2'),
(40, 6, 'Cecilia Giamitti', '2', '2'),
(41, 4, 'Stephanie Strut', '8', '10'),
(42, 3, 'Agnesse Whimpenny', '2', '3'),
(43, 7, 'Julius Domel', '2', '8'),
(44, 6, 'Sharlene Sapp', '5', '5'),
(45, 10, 'Didi Drinkel', '3', '8'),
(46, 10, 'Prudence Plumbley', '8', '4'),
(47, 9, 'Ced Rains', '2', '8'),
(48, 2, 'Natal Trelease', '5', '2'),
(49, 7, 'Galen Clymer', '6', '6'),
(50, 5, 'Mickey Cline', '9', '1'),
(51, 10, 'Paulie Fosh', '3', '10'),
(52, 1, 'Otha Sidebotton', '3', '6'),
(53, 5, 'Hermine Fenney', '1', '4'),
(54, 2, 'Gaye Necrews', '6', '2'),
(55, 5, 'Kizzie Limpenny', '4', '3'),
(56, 1, 'Hedwiga Perry', '1', '3'),
(57, 1, 'Sandra Tregear', '1', '4'),
(58, 4, 'Ward McCulloch', '8', '9'),
(59, 2, 'Timoteo Newton', '4', '2'),
(60, 5, 'Randall Bondley', '3', '5'),
(61, 4, 'Nicky Battaille', '10', '7'),
(62, 6, 'Izzy Feechum', '10', '10'),
(63, 2, 'Cherlyn Sprionghall', '9', '7'),
(64, 7, 'Wynne Braund', '1', '5'),
(65, 4, 'Willamina Bortolozzi', '7', '7'),
(66, 2, 'Ermengarde Haistwell', '9', '1'),
(67, 6, 'Clint Siggs', '7', '1'),
(68, 7, 'Carmelita Cawthorne', '8', '10'),
(69, 9, 'Paulina Dabnor', '3', '10'),
(70, 6, 'Buffy McCerery', '3', '8'),
(71, 3, 'Mortie Laherty', '9', '7'),
(72, 1, 'Fergus Matic', '9', '2'),
(73, 6, 'Darla Glaister', '9', '10'),
(74, 3, 'Sayre Akett', '9', '4'),
(75, 4, 'Vinny Davydenko', '2', '7'),
(76, 9, 'Lancelot Silverlock', '7', '10'),
(77, 2, 'Rica Celand', '10', '1'),
(78, 10, 'Sascha Eick', '4', '7'),
(79, 3, 'Tadd Bimson', '4', '10'),
(80, 3, 'Dante Maffin', '3', '1'),
(81, 2, 'Kailey Fundell', '9', '4'),
(82, 5, 'Hoyt Abbott', '6', '1'),
(83, 5, 'Vitoria Mongin', '8', '9'),
(84, 9, 'Gallagher Rubinovitsch', '10', '9'),
(85, 2, 'Olly Desquesnes', '6', '7'),
(86, 7, 'Ulrick Gores', '1', '6'),
(87, 9, 'Pandora Catcherside', '1', '7'),
(88, 5, 'Rolando Empson', '9', '5'),
(89, 7, 'Lynnet Kosel', '5', '10'),
(90, 7, 'Jonis Brotherhead', '4', '6'),
(91, 5, 'Di Stilgoe', '4', '4'),
(92, 10, 'Zacherie Tuther', '6', '8'),
(93, 5, 'Garald Harrap', '10', '4'),
(94, 10, 'Raine Peverell', '1', '1'),
(95, 9, 'Sebastien Lewisham', '9', '2'),
(96, 7, 'Celina Dehn', '6', '1'),
(97, 9, 'Fonsie Thalmann', '10', '10'),
(98, 8, 'Brande Viney', '8', '5'),
(99, 9, 'Margarete Birchett', '1', '7'),
(100, 7, 'Samara Edginton', '4', '3');

-- --------------------------------------------------------

--
-- Table structure for table `client`
--

CREATE TABLE `client` (
  `Id_CLIENT` int(11) NOT NULL,
  `NOM_COMMERCIAL` varchar(50) DEFAULT NULL,
  `PRENOM` varchar(50) DEFAULT NULL,
  `ADRESSE` varchar(50) DEFAULT NULL,
  `MAIL` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `client`
--

INSERT INTO `client` (`Id_CLIENT`, `NOM_COMMERCIAL`, `PRENOM`, `ADRESSE`, `MAIL`) VALUES
(1, 'Willy', 'Harlick', '7019 Carioca Crossing', 'wharlick0@webmd.com'),
(2, 'Devland', 'Houdhury', '8132 Dapin Center', 'dhoudhury1@aol.com'),
(3, 'Chickie', 'O\'Cahey', '76659 La Follette Hill', 'cocahey2@bluehost.com'),
(4, 'Ruthy', 'Ferenc', '53 Hoepker Trail', 'rferenc3@intel.com'),
(5, 'Vassili', 'Poizer', '9 Harbort Way', 'vpoizer4@facebook.com'),
(6, 'Nydia', 'Pearmine', '5 Bluestem Road', 'npearmine5@desdev.cn'),
(7, 'Cinnamon', 'Golling', '2 Texas Lane', 'cgolling6@vkontakte.ru'),
(8, 'Angel', 'Cardenoza', '7511 Mandrake Crossing', 'acardenoza7@slashdot.org'),
(9, 'Kip', 'Budding', '00 Esker Pass', 'kbudding8@goo.ne.jp'),
(10, 'Heath', 'Leagas', '74905 Schlimgen Pass', 'hleagas9@springer.com'),
(11, 'Rodina', 'Sommerville', '4362 Vermont Drive', 'rsommervillea@ucsd.edu'),
(12, 'Elly', 'Khomich', '1 Thackeray Avenue', 'ekhomichb@who.int'),
(13, 'Katusha', 'Bellenie', '1 Aberg Alley', 'kbelleniec@ca.gov'),
(14, 'Ashla', 'Maneylaws', '77929 Schurz Junction', 'amaneylawsd@ibm.com'),
(15, 'Hersch', 'Haggerstone', '64232 Buell Place', 'hhaggerstonee@ask.com'),
(16, 'Karoly', 'Scotti', '5128 Almo Plaza', 'kscottif@wiley.com'),
(17, 'Lena', 'Sadd', '559 Sunbrook Junction', 'lsaddg@merriam-webster.com'),
(18, 'Bordy', 'Brothwell', '8267 Bluestem Circle', 'bbrothwellh@cyberchimps.com'),
(19, 'Dall', 'Preene', '9798 Hayes Alley', 'dpreenei@fastcompany.com'),
(20, 'Trefor', 'Street', '42379 Clarendon Road', 'tstreetj@flavors.me'),
(21, 'Damien', 'Harlett', '1 Crescent Oaks Court', 'dharlettk@harvard.edu'),
(22, 'Rolando', 'Whitmarsh', '035 Scoville Street', 'rwhitmarshl@hugedomains.com'),
(23, 'Hurley', 'Salery', '0 Mcbride Way', 'hsalerym@devhub.com'),
(24, 'Sutherlan', 'Fold', '8 Lighthouse Bay Road', 'sfoldn@japanpost.jp'),
(25, 'Sharia', 'Varrow', '02 Sycamore Junction', 'svarrowo@virginia.edu'),
(26, 'Corina', 'Feore', '177 Melby Street', 'cfeorep@wufoo.com'),
(27, 'Wilhelm', 'Bramham', '3 Glendale Avenue', 'wbramhamq@gravatar.com'),
(28, 'Norry', 'Pomfrey', '3 Memorial Lane', 'npomfreyr@networksolutions.com'),
(29, 'Rudyard', 'Harrill', '8 Ridge Oak Court', 'rharrills@google.co.jp'),
(30, 'Myrwyn', 'Sparway', '102 Westend Trail', 'msparwayt@smugmug.com'),
(31, 'Laurianne', 'Fifield', '24676 Schlimgen Road', 'lfifieldu@youtube.com'),
(32, 'Eustacia', 'Nary', '43626 Forest Pass', 'enaryv@latimes.com'),
(33, 'Charmian', 'Forgan', '1105 Autumn Leaf Plaza', 'cforganw@wix.com'),
(34, 'Malvin', 'Bergin', '0 Sherman Center', 'mberginx@meetup.com'),
(35, 'Shellie', 'Tilt', '435 Eagan Road', 'stilty@si.edu'),
(36, 'Renell', 'Bleier', '14925 Village Green Road', 'rbleierz@google.co.jp'),
(37, 'Niven', 'Manby', '721 Melrose Point', 'nmanby10@ustream.tv'),
(38, 'Lidia', 'Mattiato', '3655 Brown Alley', 'lmattiato11@nih.gov'),
(39, 'Quentin', 'Clist', '2895 Johnson Point', 'qclist12@sciencedaily.com'),
(40, 'Irina', 'O\'Keenan', '058 Darwin Center', 'iokeenan13@alexa.com'),
(41, 'Brittaney', 'Kahane', '222 Esker Alley', 'bkahane14@harvard.edu'),
(42, 'Lilia', 'Cooley', '03 Texas Trail', 'lcooley15@163.com'),
(43, 'Mile', 'Avrahm', '4774 Miller Alley', 'mavrahm16@macromedia.com'),
(44, 'Tildie', 'de Amaya', '949 Warner Place', 'tdeamaya17@china.com.cn'),
(45, 'Shandee', 'Hannabuss', '7 Bluejay Place', 'shannabuss18@icio.us'),
(46, 'Titos', 'Garr', '585 Ridge Oak Way', 'tgarr19@flavors.me'),
(47, 'Kelsy', 'Linzee', '4 Graedel Alley', 'klinzee1a@sphinn.com'),
(48, 'Charlotta', 'Mayhew', '63 Parkside Center', 'cmayhew1b@guardian.co.uk'),
(49, 'Dillon', 'Hyndes', '020 Alpine Junction', 'dhyndes1c@virginia.edu'),
(50, 'Micheal', 'Danilevich', '22 Merrick Drive', 'mdanilevich1d@printfriendly.com'),
(51, 'Claire', 'Shrimpton', '729 Pennsylvania Trail', 'cshrimpton1e@mtv.com'),
(52, 'Beth', 'Parkey', '74197 Fremont Terrace', 'bparkey1f@yale.edu'),
(53, 'Eldredge', 'Chastelain', '0587 Porter Center', 'echastelain1g@webnode.com'),
(54, 'Wernher', 'Rathe', '3 Elmside Way', 'wrathe1h@ucsd.edu'),
(55, 'Karina', 'Gutierrez', '14996 Gateway Avenue', 'kgutierrez1i@a8.net'),
(56, 'Editha', 'Nortcliffe', '08 Lukken Pass', 'enortcliffe1j@hp.com'),
(57, 'Rhona', 'Roelofsen', '56676 Monterey Center', 'rroelofsen1k@ebay.com'),
(58, 'Lauree', 'Hearse', '0386 Tomscot Parkway', 'lhearse1l@addtoany.com'),
(59, 'Henrie', 'Nast', '1368 Huxley Junction', 'hnast1m@ebay.co.uk'),
(60, 'Chrotoem', 'O Sullivan', '11485 Tennyson Pass', 'cosullivan1n@si.edu'),
(61, 'Rayshell', 'Shelmerdine', '43 Dahle Center', 'rshelmerdine1o@eepurl.com'),
(62, 'Hurlee', 'Hazeltine', '610 Rockefeller Terrace', 'hhazeltine1p@instagram.com'),
(63, 'Amalita', 'Hacksby', '147 Monterey Plaza', 'ahacksby1q@technorati.com'),
(64, 'Arlinda', 'Blizard', '8 Farmco Place', 'ablizard1r@dot.gov'),
(65, 'Wolf', 'Ledingham', '0440 Graceland Junction', 'wledingham1s@qq.com'),
(66, 'Sianna', 'Guiver', '68175 Muir Point', 'sguiver1t@e-recht24.de'),
(67, 'Shannon', 'Crutchfield', '6 Crowley Lane', 'scrutchfield1u@meetup.com'),
(68, 'Forrester', 'Leathers', '1 Arizona Center', 'fleathers1v@csmonitor.com'),
(69, 'Britney', 'Bonny', '182 Elgar Avenue', 'bbonny1w@boston.com'),
(70, 'Honor', 'Aylmore', '5368 Hermina Road', 'haylmore1x@studiopress.com'),
(71, 'Agosto', 'Conville', '22 Haas Center', 'aconville1y@amazon.co.uk'),
(72, 'Dallon', 'Flinders', '875 Carioca Street', 'dflinders1z@sitemeter.com'),
(73, 'Clemens', 'Menichelli', '42 Redwing Plaza', 'cmenichelli20@nydailynews.com'),
(74, 'Reiko', 'Beesey', '2 Kennedy Alley', 'rbeesey21@delicious.com'),
(75, 'Milzie', 'Withinshaw', '704 Towne Pass', 'mwithinshaw22@eepurl.com'),
(76, 'Hyacinthe', 'Leftwich', '59 Moland Center', 'hleftwich23@de.vu'),
(77, 'Starr', 'Finden', '11228 Dapin Junction', 'sfinden24@usa.gov'),
(78, 'Lyman', 'Cuffley', '2044 Waxwing Way', 'lcuffley25@google.nl'),
(79, 'Scarface', 'Hilldrop', '2600 Sycamore Court', 'shilldrop26@meetup.com'),
(80, 'Nert', 'Ludwell', '843 Memorial Point', 'nludwell27@behance.net'),
(81, 'Leonelle', 'Barde', '0 Alpine Alley', 'lbarde28@sbwire.com'),
(82, 'Shelley', 'Tomley', '2027 Village Green Circle', 'stomley29@princeton.edu'),
(83, 'Millie', 'Sieb', '91 Buena Vista Crossing', 'msieb2a@mayoclinic.com'),
(84, 'Annaliese', 'Playfoot', '74 Dovetail Lane', 'aplayfoot2b@desdev.cn'),
(85, 'Myrtie', 'Bootland', '1529 Sundown Alley', 'mbootland2c@ucoz.ru'),
(86, 'Gwenni', 'Gossart', '049 Mifflin Hill', 'ggossart2d@gov.uk'),
(87, 'Osmond', 'Von Gladbach', '7 Coleman Trail', 'ovongladbach2e@mysql.com'),
(88, 'Christan', 'Kobiera', '0 Haas Drive', 'ckobiera2f@networksolutions.com'),
(89, 'Jolene', 'Treske', '60 Barby Park', 'jtreske2g@omniture.com'),
(90, 'Zenia', 'Lanchbury', '91189 Bunting Court', 'zlanchbury2h@state.tx.us'),
(91, 'Paulie', 'Clyma', '3964 Brickson Park Parkway', 'pclyma2i@trellian.com'),
(92, 'Foss', 'Aurelius', '6794 Village Street', 'faurelius2j@google.com'),
(93, 'Judye', 'Galland', '73923 Blackbird Terrace', 'jgalland2k@squidoo.com'),
(94, 'Larina', 'Melrose', '0874 Brentwood Center', 'lmelrose2l@slate.com'),
(95, 'Ailey', 'Fouracre', '3035 Old Gate Drive', 'afouracre2m@mozilla.com'),
(96, 'Wilone', 'Todman', '38 Portage Park', 'wtodman2n@tinyurl.com'),
(97, 'Dallas', 'Scambler', '19 Ridge Oak Place', 'dscambler2o@jiathis.com'),
(98, 'Agosto', 'Medling', '48460 Weeping Birch Road', 'amedling2p@home.pl'),
(99, 'Aaren', 'Sporton', '3079 Arizona Drive', 'asporton2q@booking.com'),
(100, 'Gallard', 'MacRinn', '82873 Mifflin Plaza', 'gmacrinn2r@imgur.com');

-- --------------------------------------------------------

--
-- Table structure for table `commercial`
--

CREATE TABLE `commercial` (
  `Id_COMMERCIAL` int(11) NOT NULL,
  `LISTE_CLIENTS` varchar(50) DEFAULT NULL,
  `COEFFICIENT` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `commercial`
--

INSERT INTO `commercial` (`Id_COMMERCIAL`, `LISTE_CLIENTS`, `COEFFICIENT`) VALUES
(1, 'Olland', '25'),
(2, 'Stubbe', '55'),
(3, 'McLaughlin', '60'),
(4, 'Reggler', '85'),
(5, 'Ishaki', '52'),
(6, 'holmes', '96'),
(7, 'Munson', '56'),
(8, 'Blackader', '45'),
(9, 'Clemmett', '96'),
(10, 'Filipson', '42'),
(11, 'Banner', '83'),
(12, 'Mattes', '15'),
(13, 'Haveline', '98'),
(14, 'Vail', '24'),
(15, 'Revill', '36'),
(16, 'Calender', '94'),
(17, 'Whittall', '50'),
(18, 'Rubke', '78'),
(19, 'Ream', '13'),
(20, 'Lebbon', '79'),
(21, 'Glascott', '86'),
(22, 'Vernall', '51'),
(23, 'Beekman', '44'),
(24, 'Imore', '81'),
(25, 'Duiguid', '56'),
(26, 'Johnikin', '98'),
(27, 'Kilius', '20'),
(28, 'Beesley', '72'),
(29, 'Pydcock', '39'),
(30, 'Elmore', '35'),
(31, 'Sollime', '52'),
(32, 'Bradnocke', '18'),
(33, 'Titford', '35'),
(34, 'Van Vuuren', '96'),
(35, 'Zanuciolii', '29'),
(36, 'Shipton', '78'),
(37, 'Lamdin', '44'),
(38, 'Brislen', '59'),
(39, 'Pamphilon', '82'),
(40, 'Tomaello', '80'),
(41, 'Pydcock', '70'),
(42, 'Leverett', '93'),
(43, 'Gloy', '8'),
(44, 'Danielsson', '48'),
(45, 'Rogerson', '82'),
(46, 'Digman', '76'),
(47, 'Braemer', '4'),
(48, 'Lummis', '78'),
(49, 'Camamile', '86'),
(50, 'Eliasson', '10'),
(51, 'Loggie', '68'),
(52, 'Jenicek', '97'),
(53, 'Antecki', '77'),
(54, 'Snoad', '30'),
(55, 'Yurocjhin', '60'),
(56, 'MacKeller', '38'),
(57, 'Munkton', '30'),
(58, 'Prendergrast', '25'),
(59, 'Maw', '75'),
(60, 'Longland', '28'),
(61, 'Rehm', '20'),
(62, 'Snodden', '47'),
(63, 'Sawdy', '25'),
(64, 'Bockmann', '79'),
(65, 'Cella', '26'),
(66, 'Chretien', '33'),
(67, 'Heynel', '68'),
(68, 'Richel', '41'),
(69, 'Everly', '73'),
(70, 'Forrington', '55'),
(71, 'Brydson', '75'),
(72, 'Ulyatt', '61'),
(73, 'Stubbington', '81'),
(74, 'Cacacie', '50'),
(75, 'Cowhig', '58'),
(76, 'Stockall', '29'),
(77, 'Fernehough', '16'),
(78, 'Bent', '31'),
(79, 'Hanscome', '47'),
(80, 'Shepherd', '71'),
(81, 'Jeckell', '87'),
(82, 'Raftery', '3'),
(83, 'Masson', '43'),
(84, 'Edmand', '7'),
(85, 'Schoolfield', '21'),
(86, 'Yeo', '3'),
(87, 'Padefield', '67'),
(88, 'Goodbarne', '32'),
(89, 'Hubbuck', '88'),
(90, 'Georgius', '82'),
(91, 'Fibben', '77'),
(92, 'Stabler', '88'),
(93, 'Goldhill', '90'),
(94, 'O\'Caherny', '38'),
(95, 'Pappin', '84'),
(96, 'Keys', '88'),
(97, 'Malcolm', '78'),
(98, 'Schwand', '29'),
(99, 'Glackin', '51'),
(100, 'McCullagh', '16');

-- --------------------------------------------------------

--
-- Table structure for table `facturation`
--

CREATE TABLE `facturation` (
  `Id_FACTURATION` int(11) NOT NULL,
  `DATE_FACT` datetime DEFAULT CURRENT_TIMESTAMP,
  `RETARD_DE_PAIEMENT` varchar(50) DEFAULT NULL,
  `MONTANT_HT` int(110) DEFAULT NULL,
  `MONTANT_TVA` int(110) DEFAULT NULL,
  `MONTANT_TTC` int(110) DEFAULT NULL,
  `ADRESSE_FACTURATION` varchar(50) DEFAULT NULL,
  `REFERENCE_PRODUITS` int(50) DEFAULT NULL,
  `QUANTITE_PRODUITS` int(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `facturation`
--

INSERT INTO `facturation` (`Id_FACTURATION`, `DATE_FACT`, `RETARD_DE_PAIEMENT`, `MONTANT_HT`, `MONTANT_TVA`, `MONTANT_TTC`, `ADRESSE_FACTURATION`, `REFERENCE_PRODUITS`, `QUANTITE_PRODUITS`) VALUES
(1, '2021-07-16 07:34:12', '2', 80, 89, 52, '2022-02-15 15:03:03', 9, 1),
(2, '2021-07-06 07:14:40', '31', 15, 2, 2, '2021-04-06 11:28:10', 5, 5),
(3, '2021-03-30 11:44:22', '45', 66, 15, 61, '2021-05-21 11:28:59', 6, 3),
(4, '2021-04-17 07:24:13', '93', 49, 89, 99, '2021-11-30 00:18:34', 9, 1),
(5, '2021-10-01 22:47:45', '32', 86, 50, 88, '2021-06-15 04:30:08', 2, 4),
(6, '2021-10-06 20:49:16', '77', 83, 8, 27, '2021-11-18 17:36:02', 9, 2),
(7, '2021-11-16 23:19:23', '53', 91, 39, 18, '2022-02-26 09:15:37', 10, 9),
(8, '2021-03-27 03:53:36', '57', 29, 26, 97, '2021-12-20 01:08:29', 9, 10),
(9, '2021-05-03 17:21:14', '84', 37, 68, 15, '2022-01-29 00:46:39', 4, 9),
(10, '2021-04-06 02:31:23', '55', 39, 99, 50, '2021-03-17 08:39:00', 2, 7),
(11, '2021-07-01 15:11:49', '3', 77, 18, 18, '2021-04-30 13:37:47', 1, 8),
(12, '2021-08-05 21:44:09', '31', 2, 16, 97, '2021-11-07 02:09:50', 3, 6),
(13, '2021-07-13 01:04:48', '51', 51, 22, 70, '2021-03-22 10:57:14', 7, 2),
(14, '2022-01-04 05:27:17', '30', 17, 72, 34, '2022-02-22 15:29:40', 7, 6),
(15, '2022-01-30 23:27:29', '42', 83, 20, 78, '2021-06-21 15:20:48', 8, 7),
(16, '2022-01-20 02:24:29', '17', 52, 80, 81, '2021-09-25 13:26:48', 2, 9),
(17, '2021-04-07 04:29:25', '42', 2, 62, 24, '2021-04-26 12:02:35', 9, 3),
(18, '2022-02-12 21:37:30', '80', 100, 81, 31, '2021-06-04 19:55:59', 7, 5),
(19, '2021-03-14 20:44:13', '41', 12, 57, 22, '2022-02-09 06:35:15', 10, 9),
(20, '2022-02-07 04:03:37', '98', 69, 28, 59, '2021-04-05 10:06:47', 6, 3),
(21, '2021-08-25 21:06:42', '43', 50, 9, 96, '2021-10-25 20:44:33', 7, 1),
(22, '2021-03-19 04:25:44', '71', 79, 11, 76, '2021-05-15 08:49:32', 4, 8),
(23, '2021-07-13 15:10:22', '16', 27, 87, 14, '2021-12-13 08:40:13', 1, 9),
(24, '2021-09-14 02:08:43', '20', 52, 31, 75, '2021-12-19 17:39:45', 4, 4),
(25, '2021-04-26 07:56:15', '31', 12, 23, 71, '2021-07-19 18:10:54', 2, 6),
(26, '2021-07-28 17:45:11', '54', 55, 56, 35, '2021-11-17 10:11:17', 10, 5),
(27, '2021-06-20 01:32:34', '40', 76, 91, 37, '2021-09-23 13:13:22', 3, 1),
(28, '2021-04-30 19:17:11', '85', 10, 100, 75, '2021-12-12 00:38:06', 4, 1),
(29, '2021-08-21 13:54:23', '58', 31, 14, 82, '2022-02-23 07:43:00', 3, 3),
(30, '2021-12-25 07:58:51', '9', 23, 36, 65, '2022-01-17 14:44:16', 7, 4),
(31, '2022-01-11 05:53:59', '11', 24, 81, 46, '2021-04-25 03:11:18', 10, 8),
(32, '2021-12-04 04:56:22', '26', 45, 10, 32, '2021-08-31 12:05:02', 6, 9),
(33, '2021-10-18 07:23:11', '24', 17, 18, 47, '2021-05-13 00:55:39', 7, 10),
(34, '2021-10-04 22:37:12', '38', 15, 63, 96, '2021-06-13 09:06:30', 6, 6),
(35, '2021-08-26 18:59:32', '25', 29, 68, 56, '2021-04-01 14:28:35', 1, 4),
(36, '2022-01-22 00:17:01', '12', 10, 29, 76, '2021-06-30 06:52:09', 9, 9),
(37, '2021-09-03 15:43:15', '84', 22, 46, 48, '2021-11-10 16:48:41', 2, 7),
(38, '2022-02-18 20:40:28', '93', 20, 40, 80, '2022-01-02 08:08:43', 5, 9),
(39, '2021-11-06 19:19:39', '65', 87, 7, 81, '2022-03-06 12:19:24', 7, 10),
(40, '2021-09-22 19:41:24', '100', 61, 45, 54, '2021-05-05 11:01:27', 1, 6),
(41, '2022-01-20 03:20:53', '48', 68, 88, 24, '2021-11-15 19:49:08', 8, 7),
(42, '2021-04-22 17:10:26', '25', 3, 51, 47, '2021-11-01 09:12:34', 2, 3),
(43, '2021-08-22 12:16:16', '99', 42, 20, 2, '2022-03-07 11:07:10', 1, 2),
(44, '2021-03-29 06:17:29', '22', 43, 52, 52, '2021-09-06 19:22:21', 10, 8),
(45, '2021-05-28 10:51:16', '9', 47, 37, 84, '2022-01-03 03:52:47', 9, 7),
(46, '2021-05-21 09:41:08', '25', 47, 83, 8, '2021-05-10 00:07:55', 9, 5),
(47, '2021-10-30 09:41:17', '69', 50, 25, 59, '2022-01-20 20:14:51', 10, 6),
(48, '2021-10-23 09:19:12', '59', 76, 37, 54, '2022-01-04 06:12:43', 4, 3),
(49, '2021-04-19 13:59:30', '39', 31, 60, 54, '2021-12-29 03:11:35', 2, 1),
(50, '2021-05-26 13:05:14', '8', 92, 68, 76, '2022-02-18 17:43:02', 10, 5),
(51, '2022-02-18 00:11:44', '83', 70, 60, 83, '2022-03-09 11:52:10', 9, 8),
(52, '2021-12-20 21:52:26', '76', 66, 13, 86, '2021-06-08 20:44:10', 7, 6),
(53, '2021-10-29 18:28:38', '53', 62, 26, 44, '2021-04-13 07:11:11', 10, 10),
(54, '2021-10-17 14:16:40', '73', 66, 96, 79, '2021-06-22 20:54:08', 10, 10),
(55, '2021-06-27 22:14:00', '3', 82, 99, 76, '2021-10-09 23:27:51', 4, 8),
(56, '2021-06-16 05:23:06', '39', 55, 24, 53, '2021-04-17 15:51:34', 2, 4),
(57, '2021-11-13 09:56:53', '34', 88, 96, 43, '2021-10-28 21:25:11', 3, 6),
(58, '2021-11-21 04:10:08', '5', 99, 9, 11, '2021-10-22 07:35:54', 3, 4),
(59, '2021-12-07 02:10:36', '34', 87, 14, 54, '2021-07-24 18:46:15', 5, 8),
(60, '2021-10-20 11:04:22', '15', 12, 30, 85, '2021-07-23 12:12:20', 2, 3),
(61, '2021-04-10 01:25:42', '78', 39, 97, 74, '2022-01-08 11:00:55', 2, 6),
(62, '2021-12-06 07:06:19', '94', 15, 28, 2, '2021-09-06 20:36:32', 5, 9),
(63, '2022-01-03 13:36:33', '83', 96, 23, 85, '2021-11-19 00:11:40', 7, 7),
(64, '2021-09-13 17:04:57', '63', 81, 5, 38, '2021-03-23 03:59:52', 3, 1),
(65, '2021-10-01 17:39:41', '76', 17, 11, 60, '2022-01-17 23:25:55', 4, 9),
(66, '2021-12-30 11:37:30', '89', 3, 37, 37, '2021-09-08 02:06:33', 7, 9),
(67, '2021-04-21 01:17:15', '90', 86, 8, 81, '2021-03-17 02:51:42', 4, 1),
(68, '2021-11-12 09:34:23', '66', 52, 72, 35, '2021-06-25 11:23:11', 8, 2),
(69, '2021-05-05 21:51:48', '31', 31, 72, 77, '2021-09-24 02:23:28', 5, 1),
(70, '2021-03-20 02:52:52', '8', 91, 45, 39, '2021-06-04 07:05:30', 10, 6),
(71, '2022-01-11 14:14:58', '35', 8, 7, 73, '2022-01-16 05:33:26', 1, 4),
(72, '2021-05-08 15:02:45', '85', 11, 31, 71, '2021-04-01 12:06:03', 9, 9),
(73, '2021-11-11 07:49:15', '49', 46, 5, 83, '2022-03-07 13:37:34', 7, 6),
(74, '2021-10-21 21:15:27', '49', 60, 13, 84, '2021-09-20 01:08:12', 1, 9),
(75, '2021-08-18 08:21:42', '82', 71, 70, 51, '2022-02-11 10:37:15', 10, 5),
(76, '2021-08-23 18:03:42', '57', 28, 32, 54, '2022-01-07 21:52:42', 6, 6),
(77, '2021-12-15 06:22:45', '72', 71, 44, 20, '2021-12-25 09:25:00', 7, 10),
(78, '2021-04-24 21:20:15', '45', 49, 23, 18, '2022-02-06 07:45:09', 6, 7),
(79, '2021-10-08 18:41:27', '10', 97, 67, 99, '2022-02-20 02:59:47', 7, 3),
(80, '2021-09-13 23:19:05', '79', 55, 89, 6, '2021-07-15 16:42:40', 1, 10),
(81, '2022-01-30 11:49:55', '1', 76, 81, 75, '2021-03-25 01:53:25', 5, 1),
(82, '2022-02-27 12:50:43', '92', 17, 31, 87, '2021-08-01 09:50:42', 7, 4),
(83, '2021-06-04 18:54:08', '70', 44, 8, 81, '2022-02-14 12:53:06', 10, 7),
(84, '2021-06-08 08:18:29', '37', 41, 94, 46, '2021-03-31 07:10:33', 6, 8),
(85, '2021-09-18 12:46:22', '36', 47, 89, 89, '2021-05-08 19:41:14', 5, 5),
(86, '2021-12-01 15:16:33', '9', 45, 35, 37, '2021-06-01 19:52:37', 2, 10),
(87, '2022-01-26 02:15:22', '21', 48, 22, 54, '2021-12-27 00:16:29', 5, 9),
(88, '2021-06-20 10:13:00', '91', 38, 24, 70, '2021-10-24 21:36:51', 6, 2),
(89, '2021-04-21 16:26:33', '56', 1, 95, 14, '2021-03-14 07:33:12', 9, 3),
(90, '2021-07-06 10:31:16', '49', 53, 27, 31, '2021-11-14 23:48:14', 8, 2),
(91, '2022-01-24 13:13:36', '68', 9, 6, 69, '2021-05-15 20:03:07', 6, 5),
(92, '2021-03-17 13:37:57', '60', 59, 10, 31, '2022-03-09 06:12:25', 8, 5),
(93, '2022-01-21 16:49:42', '70', 55, 52, 6, '2022-02-17 21:38:54', 2, 4),
(94, '2021-06-14 13:18:33', '36', 15, 66, 6, '2022-01-11 21:47:41', 5, 2),
(95, '2021-08-04 22:37:14', '66', 90, 72, 1, '2021-10-26 03:20:17', 8, 2),
(96, '2021-03-14 22:27:27', '100', 29, 35, 70, '2022-03-01 06:45:30', 1, 3),
(97, '2021-05-18 10:37:03', '64', 43, 35, 5, '2021-12-09 07:21:08', 10, 1),
(98, '2021-10-02 01:36:47', '68', 87, 30, 60, '2022-02-21 00:08:46', 5, 5),
(99, '2021-05-14 10:05:18', '68', 25, 10, 89, '2021-10-09 10:51:50', 9, 2),
(100, '2021-07-24 14:19:55', '45', 60, 41, 78, '2021-12-02 19:06:44', 7, 8);

-- --------------------------------------------------------

--
-- Table structure for table `fournisseur`
--

CREATE TABLE `fournisseur` (
  `Id_FOURNISSEUR` int(11) NOT NULL,
  `NOM` varchar(50) DEFAULT NULL,
  `ADRESSE` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fournisseur`
--

INSERT INTO `fournisseur` (`Id_FOURNISSEUR`, `NOM`, `ADRESSE`) VALUES
(1, 'Whysall', '637 Golden Leaf Parkway'),
(2, 'Bane', '169 Lukken Place'),
(3, 'Woodland', '00 Myrtle Alley'),
(4, 'Gellert', '90 Coleman Circle'),
(5, 'Hecks', '0 Shopko Plaza'),
(6, 'Oda', '323 Little Fleur Court'),
(7, 'Cordingly', '064 Namekagon Hill'),
(8, 'Galtone', '75763 Homewood Place'),
(9, 'Juares', '7928 Jay Road'),
(10, 'McGilvary', '41932 Stone Corner Avenue');

-- --------------------------------------------------------

--
-- Table structure for table `produits`
--

CREATE TABLE `produits` (
  `Id_PRODUITS` int(11) NOT NULL,
  `PRIX_HT` varchar(50) DEFAULT NULL,
  `STOCK` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `produits`
--

INSERT INTO `produits` (`Id_PRODUITS`, `PRIX_HT`, `STOCK`) VALUES
(1, '€1,68', '69'),
(2, '$5.00', '62'),
(3, '$9.50', '10'),
(4, '€1,03', '62'),
(5, '€1,23', '40'),
(6, '€2,01', '74'),
(7, '$6.67', '2'),
(8, '$1.75', '24'),
(9, '€1,74', '63'),
(10, '€1,78', '2'),
(11, '€2,53', '25'),
(12, '€2,58', '36'),
(13, '$7.66', '80'),
(14, '€2,00', '40'),
(15, '€1,00', '67'),
(16, '€2,92', '44'),
(17, '€2,67', '56'),
(18, '€1,78', '63'),
(19, '$7.39', '94'),
(20, '€1,07', '27'),
(21, '€1,29', '73'),
(22, '€1,11', '9'),
(23, '€1,47', '27'),
(24, '€2,20', '60'),
(25, '$1.86', '47'),
(26, '$9.77', '76'),
(27, '€2,79', '97'),
(28, '€2,23', '11'),
(29, '€2,79', '66'),
(30, '$9.40', '52'),
(31, '$4.07', '21'),
(32, '€2,16', '70'),
(33, '€1,67', '50'),
(34, '$4.59', '24'),
(35, '$5.67', '97'),
(36, '€2,53', '36'),
(37, '€2,45', '99'),
(38, '€1,15', '44'),
(39, '€2,40', '88'),
(40, '€2,05', '76'),
(41, '$7.47', '65'),
(42, '€1,93', '26'),
(43, '€2,67', '89'),
(44, '€2,05', '24'),
(45, '€1,63', '48'),
(46, '$5.70', '73'),
(47, '€2,75', '16'),
(48, '€1,59', '76'),
(49, '€1,86', '68'),
(50, '€2,52', '65'),
(51, '€1,45', '77');

-- --------------------------------------------------------

--
-- Table structure for table `sous_categorie`
--

CREATE TABLE `sous_categorie` (
  `Id_SOUS_CATEGORIE` int(11) NOT NULL,
  `NOM` varchar(50) DEFAULT NULL,
  `DESCRIPTION` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sous_categorie`
--

INSERT INTO `sous_categorie` (`Id_SOUS_CATEGORIE`, `NOM`, `DESCRIPTION`) VALUES
(1, 'Miko', 'justo aliquam quis turpis eget elit sodales scelerisque mauris sit amet eros suspendisse accumsan tortor'),
(2, 'Warrillow', 'lectus aliquam sit amet diam in magna bibendum imperdiet nullam orci pede venenatis non'),
(3, 'Mugg', 'est lacinia nisi venenatis tristique fusce congue diam id ornare imperdiet sapien urna pretium nisl ut volutpat sapien arcu sed'),
(4, 'Genny', 'erat id mauris vulputate elementum nullam varius nulla facilisi cras non velit nec nisi vulputate'),
(5, 'Trevarthen', 'eget rutrum at lorem integer tincidunt ante vel ipsum praesent blandit lacinia erat vestibulum sed magna'),
(6, 'Whitchurch', 'etiam faucibus cursus urna ut tellus nulla ut erat id mauris vulputate elementum nullam varius nulla'),
(7, 'Mecchi', 'vel accumsan tellus nisi eu orci mauris lacinia sapien quis libero nullam'),
(8, 'Claremont', 'metus sapien ut nunc vestibulum ante ipsum primis in faucibus orci luctus et'),
(9, 'Teaser', 'vestibulum sed magna at nunc commodo placerat praesent blandit nam nulla integer pede justo'),
(10, 'Killoran', 'mauris viverra diam vitae quam suspendisse potenti nullam porttitor lacus at turpis'),
(11, 'Gerran', 'ultrices aliquet maecenas leo odio condimentum id luctus nec molestie sed justo pellentesque viverra pede'),
(12, 'Beavan', 'ipsum ac tellus semper interdum mauris ullamcorper purus sit amet nulla quisque arcu'),
(13, 'Raoux', 'dictumst etiam faucibus cursus urna ut tellus nulla ut erat id'),
(14, 'Reisk', 'nibh in hac habitasse platea dictumst aliquam augue quam sollicitudin'),
(15, 'Beaven', 'nulla justo aliquam quis turpis eget elit sodales scelerisque mauris sit amet eros suspendisse'),
(16, 'Marshfield', 'magnis dis parturient montes nascetur ridiculus mus etiam vel augue vestibulum rutrum rutrum neque aenean auctor gravida sem praesent id'),
(17, 'Whitney', 'ornare consequat lectus in est risus auctor sed tristique in tempus sit amet sem fusce consequat nulla nisl nunc nisl'),
(18, 'Woolis', 'eget vulputate ut ultrices vel augue vestibulum ante ipsum primis in'),
(19, 'Biddlecombe', 'cras pellentesque volutpat dui maecenas tristique est et tempus semper est quam pharetra magna ac consequat metus sapien'),
(20, 'Farebrother', 'lorem id ligula suspendisse ornare consequat lectus in est risus auctor sed tristique in tempus sit amet sem'),
(21, 'Guiet', 'accumsan odio curabitur convallis duis consequat dui nec nisi volutpat eleifend donec'),
(22, 'Greenmon', 'cras mi pede malesuada in imperdiet et commodo vulputate justo in blandit ultrices enim lorem ipsum dolor sit amet consectetuer'),
(23, 'Bamblett', 'justo maecenas rhoncus aliquam lacus morbi quis tortor id nulla ultrices aliquet'),
(24, 'Baggot', 'tortor sollicitudin mi sit amet lobortis sapien sapien non mi integer ac neque duis bibendum morbi'),
(25, 'Orton', 'nulla mollis molestie lorem quisque ut erat curabitur gravida nisi at nibh in hac habitasse platea dictumst aliquam augue'),
(26, 'Greber', 'massa volutpat convallis morbi odio odio elementum eu interdum eu tincidunt in leo maecenas'),
(27, 'Hawlgarth', 'amet justo morbi ut odio cras mi pede malesuada in imperdiet et commodo vulputate justo in blandit ultrices enim'),
(28, 'Alelsandrowicz', 'parturient montes nascetur ridiculus mus etiam vel augue vestibulum rutrum'),
(29, 'Wildey', 'pharetra magna vestibulum aliquet ultrices erat tortor sollicitudin mi sit amet lobortis sapien sapien non mi integer ac neque'),
(30, 'Knutton', 'est donec odio justo sollicitudin ut suscipit a feugiat et eros vestibulum ac est lacinia nisi venenatis tristique'),
(31, 'Arend', 'justo morbi ut odio cras mi pede malesuada in imperdiet et commodo vulputate justo in blandit ultrices'),
(32, 'Pendrid', 'est donec odio justo sollicitudin ut suscipit a feugiat et eros vestibulum ac est lacinia'),
(33, 'Loughman', 'at feugiat non pretium quis lectus suspendisse potenti in eleifend quam a odio in hac habitasse platea dictumst maecenas ut'),
(34, 'Weymont', 'erat tortor sollicitudin mi sit amet lobortis sapien sapien non mi integer ac neque duis bibendum morbi non quam nec'),
(35, 'Dixsee', 'rutrum rutrum neque aenean auctor gravida sem praesent id massa id nisl venenatis lacinia'),
(36, 'MacKellar', 'tincidunt in leo maecenas pulvinar lobortis est phasellus sit amet erat nulla tempus vivamus in felis eu sapien cursus'),
(37, 'Sherel', 'nec condimentum neque sapien placerat ante nulla justo aliquam quis turpis eget elit sodales scelerisque mauris'),
(38, 'Ackred', 'pellentesque ultrices mattis odio donec vitae nisi nam ultrices libero non mattis pulvinar nulla'),
(39, 'Crommett', 'augue vel accumsan tellus nisi eu orci mauris lacinia sapien quis libero nullam sit amet turpis elementum ligula vehicula consequat'),
(40, 'Goldsworthy', 'maecenas pulvinar lobortis est phasellus sit amet erat nulla tempus vivamus in felis eu sapien cursus vestibulum'),
(41, 'Fiddian', 'a odio in hac habitasse platea dictumst maecenas ut massa quis'),
(42, 'Cotherill', 'dui maecenas tristique est et tempus semper est quam pharetra magna'),
(43, 'Fernanando', 'posuere cubilia curae nulla dapibus dolor vel est donec odio'),
(44, 'Brychan', 'libero quis orci nullam molestie nibh in lectus pellentesque at nulla suspendisse potenti'),
(45, 'Floyd', 'molestie nibh in lectus pellentesque at nulla suspendisse potenti cras in purus eu magna vulputate luctus'),
(46, 'Windrus', 'nullam varius nulla facilisi cras non velit nec nisi vulputate nonummy maecenas tincidunt lacus'),
(47, 'Paffitt', 'posuere nonummy integer non velit donec diam neque vestibulum eget vulputate ut ultrices vel augue vestibulum'),
(48, 'Munslow', 'dictumst etiam faucibus cursus urna ut tellus nulla ut erat id mauris vulputate elementum nullam'),
(49, 'Mallia', 'vel sem sed sagittis nam congue risus semper porta volutpat quam pede lobortis ligula sit amet'),
(50, 'Letson', 'erat curabitur gravida nisi at nibh in hac habitasse platea dictumst aliquam augue quam sollicitudin vitae consectetuer eget rutrum'),
(51, 'Syvret', 'ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae mauris viverra diam vitae quam suspendisse'),
(52, 'Gaywood', 'nisl ut volutpat sapien arcu sed augue aliquam erat volutpat in congue etiam justo etiam pretium iaculis justo'),
(53, 'Philippson', 'eu felis fusce posuere felis sed lacus morbi sem mauris laoreet ut rhoncus aliquet pulvinar sed nisl nunc rhoncus dui'),
(54, 'Nuzzti', 'tortor risus dapibus augue vel accumsan tellus nisi eu orci mauris lacinia sapien quis libero nullam sit'),
(55, 'Thicking', 'mus etiam vel augue vestibulum rutrum rutrum neque aenean auctor'),
(56, 'Botly', 'rhoncus sed vestibulum sit amet cursus id turpis integer aliquet massa id'),
(57, 'Harding', 'interdum venenatis turpis enim blandit mi in porttitor pede justo eu'),
(58, 'Durrand', 'iaculis justo in hac habitasse platea dictumst etiam faucibus cursus urna ut tellus nulla ut erat id mauris vulputate'),
(59, 'Hounsham', 'nunc proin at turpis a pede posuere nonummy integer non velit'),
(60, 'Eberst', 'primis in faucibus orci luctus et ultrices posuere cubilia curae donec pharetra magna vestibulum'),
(61, 'Lapslie', 'lorem id ligula suspendisse ornare consequat lectus in est risus auctor sed tristique in'),
(62, 'Whiteford', 'arcu adipiscing molestie hendrerit at vulputate vitae nisl aenean lectus pellentesque eget nunc donec quis orci'),
(63, 'Witty', 'egestas metus aenean fermentum donec ut mauris eget massa tempor convallis nulla'),
(64, 'Poyntz', 'ultrices aliquet maecenas leo odio condimentum id luctus nec molestie'),
(65, 'Hounsome', 'in felis eu sapien cursus vestibulum proin eu mi nulla ac enim in tempor'),
(66, 'Beche', 'in libero ut massa volutpat convallis morbi odio odio elementum eu interdum eu tincidunt in leo maecenas pulvinar'),
(67, 'Tappin', 'vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia'),
(68, 'Dohms', 'dapibus dolor vel est donec odio justo sollicitudin ut suscipit a feugiat et eros vestibulum ac est lacinia nisi venenatis'),
(69, 'Guillet', 'pulvinar sed nisl nunc rhoncus dui vel sem sed sagittis nam'),
(70, 'Pearton', 'lacus curabitur at ipsum ac tellus semper interdum mauris ullamcorper purus sit amet nulla quisque arcu libero rutrum ac'),
(71, 'Crowche', 'integer ac leo pellentesque ultrices mattis odio donec vitae nisi nam'),
(72, 'MacAdam', 'sollicitudin mi sit amet lobortis sapien sapien non mi integer ac neque duis bibendum morbi'),
(73, 'Colafate', 'platea dictumst maecenas ut massa quis augue luctus tincidunt nulla mollis molestie lorem quisque ut erat curabitur gravida'),
(74, 'Stockau', 'justo morbi ut odio cras mi pede malesuada in imperdiet et commodo vulputate justo in blandit ultrices enim'),
(75, 'Kleinberer', 'interdum eu tincidunt in leo maecenas pulvinar lobortis est phasellus sit amet erat nulla tempus vivamus'),
(76, 'Rendle', 'cras non velit nec nisi vulputate nonummy maecenas tincidunt lacus at velit'),
(77, 'Colerick', 'iaculis diam erat fermentum justo nec condimentum neque sapien placerat ante nulla justo'),
(78, 'Trees', 'orci luctus et ultrices posuere cubilia curae nulla dapibus dolor vel est donec'),
(79, 'Domb', 'faucibus cursus urna ut tellus nulla ut erat id mauris vulputate'),
(80, 'Schild', 'odio condimentum id luctus nec molestie sed justo pellentesque viverra pede'),
(81, 'Tubritt', 'pede ac diam cras pellentesque volutpat dui maecenas tristique est et tempus semper est quam pharetra'),
(82, 'Janes', 'cubilia curae donec pharetra magna vestibulum aliquet ultrices erat tortor sollicitudin'),
(83, 'Milnes', 'est risus auctor sed tristique in tempus sit amet sem fusce consequat'),
(84, 'Riply', 'risus dapibus augue vel accumsan tellus nisi eu orci mauris lacinia'),
(85, 'Perroni', 'pellentesque eget nunc donec quis orci eget orci vehicula condimentum curabitur in libero ut massa'),
(86, 'Shwalbe', 'sit amet lobortis sapien sapien non mi integer ac neque duis bibendum morbi non quam nec dui luctus rutrum nulla'),
(87, 'McGrann', 'hendrerit at vulputate vitae nisl aenean lectus pellentesque eget nunc donec quis orci eget orci vehicula'),
(88, 'Beeken', 'sed ante vivamus tortor duis mattis egestas metus aenean fermentum donec ut mauris eget massa tempor convallis'),
(89, 'Skippon', 'massa id nisl venenatis lacinia aenean sit amet justo morbi ut odio'),
(90, 'Bambra', 'mattis egestas metus aenean fermentum donec ut mauris eget massa tempor convallis nulla neque libero'),
(91, 'Upwood', 'pede justo lacinia eget tincidunt eget tempus vel pede morbi'),
(92, 'O\'Brian', 'blandit lacinia erat vestibulum sed magna at nunc commodo placerat praesent blandit nam nulla integer pede justo'),
(93, 'Garlic', 'ultricies eu nibh quisque id justo sit amet sapien dignissim vestibulum'),
(94, 'Eastment', 'morbi non quam nec dui luctus rutrum nulla tellus in sagittis dui vel nisl duis ac nibh'),
(95, 'Woollam', 'mattis egestas metus aenean fermentum donec ut mauris eget massa tempor'),
(96, 'Connar', 'volutpat dui maecenas tristique est et tempus semper est quam pharetra magna ac consequat metus sapien ut'),
(97, 'Wallbank', 'convallis eget eleifend luctus ultricies eu nibh quisque id justo sit amet sapien dignissim vestibulum vestibulum ante'),
(98, 'Mutch', 'non mauris morbi non lectus aliquam sit amet diam in magna bibendum imperdiet nullam orci pede venenatis'),
(99, 'Pallaske', 'id nulla ultrices aliquet maecenas leo odio condimentum id luctus nec molestie sed justo pellentesque viverra pede ac diam'),
(100, 'Wadesworth', 'placerat praesent blandit nam nulla integer pede justo lacinia eget tincidunt eget tempus vel pede morbi porttitor');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `asso_1`
--
ALTER TABLE `asso_1`
  ADD PRIMARY KEY (`Id_PRODUITS`,`Id_SOUS_CATEGORIE`),
  ADD KEY `Id_SOUS_CATEGORIE` (`Id_SOUS_CATEGORIE`);

--
-- Indexes for table `asso_2`
--
ALTER TABLE `asso_2`
  ADD PRIMARY KEY (`Id_FOURNISSEUR`,`Id_PRODUITS`),
  ADD KEY `Id_PRODUITS` (`Id_PRODUITS`);

--
-- Indexes for table `asso_3`
--
ALTER TABLE `asso_3`
  ADD PRIMARY KEY (`Id_BON_DE_LIVRAISON`,`Id_FACTURATION`),
  ADD KEY `Id_FACTURATION` (`Id_FACTURATION`);

--
-- Indexes for table `asso_4`
--
ALTER TABLE `asso_4`
  ADD PRIMARY KEY (`Id_BON_DE_COMMANDE`,`Id_BON_DE_LIVRAISON`),
  ADD KEY `Id_BON_DE_LIVRAISON` (`Id_BON_DE_LIVRAISON`);

--
-- Indexes for table `asso_5`
--
ALTER TABLE `asso_5`
  ADD PRIMARY KEY (`Id_CLIENT`,`Id_BON_DE_COMMANDE`),
  ADD KEY `Id_BON_DE_COMMANDE` (`Id_BON_DE_COMMANDE`);

--
-- Indexes for table `asso_6`
--
ALTER TABLE `asso_6`
  ADD PRIMARY KEY (`Id_COMMERCIAL`,`Id_CLIENT`),
  ADD KEY `Id_CLIENT` (`Id_CLIENT`);

--
-- Indexes for table `asso_7`
--
ALTER TABLE `asso_7`
  ADD PRIMARY KEY (`Id_COMMERCIAL`,`Id_PRODUITS`),
  ADD KEY `Id_PRODUITS` (`Id_PRODUITS`);

--
-- Indexes for table `bon_de_commande`
--
ALTER TABLE `bon_de_commande`
  ADD PRIMARY KEY (`Id_BON_DE_COMMANDE`);

--
-- Indexes for table `bon_de_livraison`
--
ALTER TABLE `bon_de_livraison`
  ADD PRIMARY KEY (`Id_BON_DE_LIVRAISON`);

--
-- Indexes for table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`Id_CLIENT`);

--
-- Indexes for table `commercial`
--
ALTER TABLE `commercial`
  ADD PRIMARY KEY (`Id_COMMERCIAL`);

--
-- Indexes for table `facturation`
--
ALTER TABLE `facturation`
  ADD PRIMARY KEY (`Id_FACTURATION`);

--
-- Indexes for table `fournisseur`
--
ALTER TABLE `fournisseur`
  ADD PRIMARY KEY (`Id_FOURNISSEUR`);

--
-- Indexes for table `produits`
--
ALTER TABLE `produits`
  ADD PRIMARY KEY (`Id_PRODUITS`);

--
-- Indexes for table `sous_categorie`
--
ALTER TABLE `sous_categorie`
  ADD PRIMARY KEY (`Id_SOUS_CATEGORIE`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `asso_1`
--
ALTER TABLE `asso_1`
  ADD CONSTRAINT `asso_1_ibfk_1` FOREIGN KEY (`Id_PRODUITS`) REFERENCES `produits` (`Id_PRODUITS`),
  ADD CONSTRAINT `asso_1_ibfk_2` FOREIGN KEY (`Id_SOUS_CATEGORIE`) REFERENCES `sous_categorie` (`Id_SOUS_CATEGORIE`);

--
-- Constraints for table `asso_2`
--
ALTER TABLE `asso_2`
  ADD CONSTRAINT `asso_2_ibfk_1` FOREIGN KEY (`Id_FOURNISSEUR`) REFERENCES `fournisseur` (`Id_FOURNISSEUR`),
  ADD CONSTRAINT `asso_2_ibfk_2` FOREIGN KEY (`Id_PRODUITS`) REFERENCES `produits` (`Id_PRODUITS`);

--
-- Constraints for table `asso_3`
--
ALTER TABLE `asso_3`
  ADD CONSTRAINT `asso_3_ibfk_1` FOREIGN KEY (`Id_BON_DE_LIVRAISON`) REFERENCES `bon_de_livraison` (`Id_BON_DE_LIVRAISON`),
  ADD CONSTRAINT `asso_3_ibfk_2` FOREIGN KEY (`Id_FACTURATION`) REFERENCES `facturation` (`Id_FACTURATION`);

--
-- Constraints for table `asso_4`
--
ALTER TABLE `asso_4`
  ADD CONSTRAINT `asso_4_ibfk_1` FOREIGN KEY (`Id_BON_DE_COMMANDE`) REFERENCES `bon_de_commande` (`Id_BON_DE_COMMANDE`),
  ADD CONSTRAINT `asso_4_ibfk_2` FOREIGN KEY (`Id_BON_DE_LIVRAISON`) REFERENCES `bon_de_livraison` (`Id_BON_DE_LIVRAISON`);

--
-- Constraints for table `asso_5`
--
ALTER TABLE `asso_5`
  ADD CONSTRAINT `asso_5_ibfk_1` FOREIGN KEY (`Id_CLIENT`) REFERENCES `client` (`Id_CLIENT`),
  ADD CONSTRAINT `asso_5_ibfk_2` FOREIGN KEY (`Id_BON_DE_COMMANDE`) REFERENCES `bon_de_commande` (`Id_BON_DE_COMMANDE`);

--
-- Constraints for table `asso_6`
--
ALTER TABLE `asso_6`
  ADD CONSTRAINT `asso_6_ibfk_1` FOREIGN KEY (`Id_COMMERCIAL`) REFERENCES `commercial` (`Id_COMMERCIAL`),
  ADD CONSTRAINT `asso_6_ibfk_2` FOREIGN KEY (`Id_CLIENT`) REFERENCES `client` (`Id_CLIENT`);

--
-- Constraints for table `asso_7`
--
ALTER TABLE `asso_7`
  ADD CONSTRAINT `asso_7_ibfk_1` FOREIGN KEY (`Id_COMMERCIAL`) REFERENCES `commercial` (`Id_COMMERCIAL`),
  ADD CONSTRAINT `asso_7_ibfk_2` FOREIGN KEY (`Id_PRODUITS`) REFERENCES `produits` (`Id_PRODUITS`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
