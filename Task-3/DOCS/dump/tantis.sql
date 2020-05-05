-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 05, 2020 at 05:03 AM
-- Server version: 5.7.25-0ubuntu0.18.04.2
-- PHP Version: 7.3.17-1+ubuntu18.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tantis`
--

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE `book` (
  `id` int(11) NOT NULL,
  `title` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author` varchar(90) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` decimal(10,2) NOT NULL,
  `code` varchar(13) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`id`, `title`, `author`, `description`, `price`, `code`) VALUES
(1, 'Namibia', 'Okey', '803 Mattie Extensions Apt. 345\nLake Laney, SC 40157', '74.00', '26646'),
(2, 'Saint Helena', 'Zack', '32446 Terry Fork Apt. 532\nBlancafurt, HI 50881-6870', '43.00', '91899'),
(3, 'Luxembourg', 'Billie', '10304 Birdie Springs\nEbertstad, IA 23276', '92.00', '9899'),
(4, 'Pakistan', 'Rebeca', '363 Roberts Stravenue Suite 520\nNorth Brendanfort, UT 57443', '60.00', '92896'),
(5, 'San Marino', 'Deangelo', '54552 Cristal Port\nEast Ryleighfort, CO 38000-9581', '53.00', '20837'),
(6, 'Denmark', 'Haylie', '42725 Bruen Village\nEast Dave, WA 72003', '36.00', '39974'),
(7, 'Kyrgyz Republic', 'Mikayla', '130 Margarette Prairie Apt. 398\nEast Laverna, NV 23543-1310', '98.00', '78820'),
(8, 'Papua New Guinea', 'Chadrick', '534 Janae Pines\nKrajcikmouth, DC 65633-5058', '30.00', '70232'),
(9, 'Saudi Arabia', 'Leda', '2003 Abbott Wells Apt. 586\nDietrichmouth, FL 61000', '46.00', '12473'),
(10, 'Brunei Darussalam', 'Davion', '304 Ward Manors Suite 800\nNorth Lyric, SC 47843-8912', '16.00', '40265'),
(11, 'Georgia', 'Mary', '499 Morissette Track Suite 478\nMonteport, SD 68384', '96.00', '26059'),
(12, 'Japan', 'Kareem', '243 Terrance Village Apt. 072\nSouth Emoryport, CA 90428-1648', '46.00', '72489'),
(13, 'United States Minor Outlying Islands', 'Eloise', '5472 Nader Cliffs\nCarmellachester, WA 42301-8876', '45.00', '9845'),
(14, 'Brunei Darussalam', 'Joe', '34861 Mathilde Cape\nSmithbury, WI 51677', '0.00', '79057'),
(15, 'Luxembourg', 'Lacy', '878 Rolfson Village\nGoyetteshire, OH 22261', '95.00', '23510'),
(16, 'Dominican Republic', 'Ewell', '64001 Larkin Lane Suite 406\nCummingsbury, NM 42644-7653', '94.00', '83440'),
(17, 'Latvia', 'Rosamond', '4928 Mohr Corners\nEast Shaina, CO 57604-8041', '69.00', '19571'),
(18, 'Paraguay', 'Krystina', '48481 Daphney Row\nKhalidville, NH 96869-6760', '53.00', '57926'),
(19, 'Luxembourg', 'Scarlett', '728 Parker Plaza Apt. 646\nPort Letabury, MD 55027-1834', '44.00', '17901'),
(20, 'Libyan Arab Jamahiriya', 'Keon', '3325 Karina Shoals Apt. 388\nConnellyhaven, NM 15264', '67.00', '69582'),
(21, 'Ecuador', 'Enid', '294 Rosenbaum Pine Apt. 936\nOrnbury, GA 15809-2569', '69.00', '89495'),
(22, 'Norfolk Island', 'George', '201 Kuvalis Rest\nNorth Marlee, IN 32727', '58.00', '23889'),
(23, 'Mauritius', 'Bertha', '8876 Cornelius Coves Suite 882\nAltenwerthstad, ND 24992-0081', '28.00', '88855'),
(24, 'Mozambique', 'Napoleon', '92044 Fahey Wall Suite 775\nNorth Sventon, VT 50294', '83.00', '5943'),
(25, 'Benin', 'Enos', '40607 Stark Pines Suite 859\nPort Ubaldo, AR 33009', '66.00', '55903'),
(26, 'South Africa', 'Ryleigh', '12324 Rodriguez Village\nWillchester, MD 52446-8012', '3.00', '38177'),
(27, 'Saint Lucia', 'Thea', '250 Connelly Branch Suite 155\nPort Willymouth, LA 97686', '84.00', '88831'),
(28, 'Vanuatu', 'Marlene', '9306 Casandra Ports Apt. 706\nAnnabellefurt, ND 99845', '19.00', '70478'),
(31, 'Panama', 'Patience', '606 Cory Springs\nNew Geraldport, NV 91601-0686', '83.00', '4128'),
(32, 'Faroe Islands', 'Jody', '733 Eva Overpass Apt. 788\nLeifshire, UT 07280-2801', '57.00', '84115'),
(33, 'United Kingdom', 'Aaron', '3531 Ortiz Prairie\nRooseveltshire, MI 13696', '76.00', '92817'),
(34, 'Guatemala', 'Oma', '65646 Nolan Gardens Apt. 753\nEast Pietro, NH 17282', '0.00', '47963'),
(35, 'Saint Vincent and the Grenadines', 'Maurine', '231 Kuhlman Walk\nRichardtown, MS 60994-3680', '94.00', '55254'),
(36, 'Romania', 'Orlo', '270 Bauch Neck\nLake Penelope, DC 73511', '35.00', '53351'),
(37, 'Haiti', 'Quinten', '337 Juvenal Ville\nEast Loischester, WV 78786-7505', '90.00', '98881'),
(38, 'Armenia', 'Everardo', '23831 O\'Conner Dam\nEast Durward, ID 75104', '43.00', '26994'),
(39, 'Saudi Arabia', 'Katrina', '3694 Cassie Plain\nIbrahimhaven, VT 60222', '2.00', '90967'),
(40, 'Korea', 'Celia', '4348 Payton Roads Suite 064\nNew Vitabury, MD 41376', '43.00', '29743'),
(41, 'Botswana', 'Ryley', '986 Felicia Crossroad Apt. 857\nKubbury, UT 24222', '10.00', '28997'),
(42, 'Gibraltar', 'Samara', '220 Marisol Isle\nShanaburgh, AR 49599-9249', '28.00', '45439'),
(43, 'Equatorial Guinea', 'Holly', '9840 Rau Center Apt. 177\nWarrenmouth, MO 33224-8690', '34.00', '53709'),
(44, 'Sierra Leone', 'Birdie', '5231 Cormier Street Suite 084\nNew Gianni, CT 63906', '43.00', '36387'),
(45, 'India', 'Dallin', '1171 Harrison Parkway Apt. 398\nRitchieburgh, CA 34409', '2.00', '61892'),
(46, 'Saint Pierre and Miquelon', 'Kathlyn', '7990 Dooley Course Suite 885\nPort Kiarramouth, VT 42074-7144', '3.00', '51144'),
(47, 'Gibraltar', 'Iliana', '2239 Tremblay Valley Suite 652\nRunolfssonport, DE 00228', '52.00', '68984'),
(48, 'Jordan', 'Rosella', '161 Tillman Valleys Apt. 516\nNorth Cindy, IA 52480-5017', '22.00', '32516'),
(49, 'Romania', 'Frederick', '6406 Cordelia Lake\nEast Chelsea, TN 18026', '68.00', '44501'),
(50, 'Monaco', 'Hazel', '27498 Marquardt Field\nMonahanbury, MI 17201', '27.00', '73260'),
(51, 'Test Book', 'Autor Testowy', 'Lorem ipsum lorem ipsum', '60.00', 'FCKGWRHQQ2'),
(52, 'ASDasd', 'asdasd', 'asdasd', '123.00', 'sdfsdf'),
(53, 'asdasd', '123', 'asdads', '123.00', 'dff'),
(54, '13123123', '123123', 'asds', '12332.00', '14124'),
(55, 'Tytuł testowy', 'Autor', 'Opis książki', '123.00', 'afdsfsfd'),
(56, 'Asd', 'Adam', 'Asd', '15.00', '1easfsfd'),
(57, 'Tytuł książki', 'Autor Ksiązki', 'Przykładowy opis książki', '99.00', '3576543254545');

-- --------------------------------------------------------

--
-- Table structure for table `migration_versions`
--

CREATE TABLE `migration_versions` (
  `version` varchar(14) COLLATE utf8mb4_unicode_ci NOT NULL,
  `executed_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migration_versions`
--

INSERT INTO `migration_versions` (`version`, `executed_at`) VALUES
('20200504114210', '2020-05-04 11:46:24');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migration_versions`
--
ALTER TABLE `migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `book`
--
ALTER TABLE `book`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
