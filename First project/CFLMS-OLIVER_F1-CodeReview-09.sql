-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2020. Júl 11. 16:38
-- Kiszolgáló verziója: 10.4.13-MariaDB
-- PHP verzió: 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `delivery_service`
--
CREATE DATABASE IF NOT EXISTS `delivery_service` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `delivery_service`;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `address`
--

CREATE TABLE `address` (
  `ADDRESS_ID` int(11) NOT NULL,
  `STATE` char(30) DEFAULT NULL,
  `CITY` char(30) DEFAULT NULL,
  `ADDRESS` char(30) DEFAULT NULL,
  `ADDRESS_NUM` int(11) DEFAULT NULL,
  `POST_CODE` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- A tábla adatainak kiíratása `address`
--

INSERT INTO `address` (`ADDRESS_ID`, `STATE`, `CITY`, `ADDRESS`, `ADDRESS_NUM`, `POST_CODE`) VALUES
(311, 'U.S.A', 'MICHIGEN', 'BULVAR EVN.', 32, 36451),
(312, 'FRANCH', 'PARIS', 'LA MONE ST.', 10, 54616),
(313, 'GERMANY', 'BERLIN', 'NEURING ST.', 272, 15566),
(314, 'BELGIEN', 'BRÜSSEL', 'GROOVE ST.', 20, 15544),
(315, 'GERMANY', 'MÜNCHEN', 'GROSSE ST.', 32, 32541),
(316, 'FRANCH', 'PARIS', 'ELISEE ST.', 22, 45558),
(317, 'ITALY', 'GENOVA', 'MILANEESE ST.', 30, 74415),
(318, 'GERMANY', 'HAMBURG', 'GÜRTEL', 24, 45542),
(319, 'SPAIN', 'BARCELONA', 'NACHOS ST.', 78, 15455),
(320, 'UKRAIN', 'KYEV', 'MOSKOW ST.', 45, 32454),
(321, 'HUNGARY', 'SOPRON', 'NAGYKÖRÖSI UT.', 45, 36646),
(322, 'HOLLAND', 'AMSTERDAM', 'DANKEWELL ST.', 18, 65654),
(323, 'PORTUGAL', 'MADEIRA', 'HUAREZ ST.', 45, 32545),
(324, 'GERMANY', 'KÖLN', 'KÖLNER ST.', 24, 65455),
(325, 'SWEDEN', 'STOCKHOLM', 'SOCKHOLMER ST.', 45, 87845),
(326, 'DANMARKT', 'KOPPENHAGA', 'NEMTZ ST.', 74, 54665),
(327, 'SLOWAKAI', 'BTAISLAVA', 'KOKOTZKI ST.', 45, 54875),
(328, 'IALY', 'ROMA', 'ALORA ST.', 78, 65545),
(329, 'FRANCH', 'LYON', 'MERCI ST.', 15, 65458),
(330, 'GERMANY', 'FRANKFURT', 'SCHÖNE ST.', 45, 78455),
(331, 'SLOWAKAI', 'PARKANY', 'CHOKSES ST.', 74, 65564),
(332, 'BELGIEN', 'GENF', 'DUIDUI ST.', 21, 48455),
(333, 'CROATIA', 'ZADAR', 'DUBROVNIK ST.', 45, 84545),
(334, 'ITALY', 'FLORENZE', 'BRAVISSIMO ST.', 65, 54121);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `conection`
--

CREATE TABLE `conection` (
  `CONTACT_ID` int(11) NOT NULL,
  `PHONE_NUMBER` int(11) DEFAULT NULL,
  `E-MAIL` char(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- A tábla adatainak kiíratása `conection`
--

INSERT INTO `conection` (`CONTACT_ID`, `PHONE_NUMBER`, `E-MAIL`) VALUES
(800, 648454888, 'goran18@gmail.com'),
(801, 668454215, 'mikel12@hotmail.com'),
(802, 678454545, 'elison08@gmail.com'),
(803, 687050555, 'fernando07@hotmail.com'),
(804, 678715414, 'leonardo47@gmail.com'),
(805, 645451288, 'samanta12@gmail.com'),
(806, 687545555, 'hoze@hotmail.com'),
(807, 645455444, 'taylor41@hotmail.com'),
(808, 645455555, 'nikolas@gmail.com'),
(809, 648484544, 'evelin@hotmail.com'),
(810, 678744555, 'franklin41@hotmail.com'),
(811, 648454545, 'lorenze11@gmail.com'),
(812, 680445555, 'micheal23@gmail.com'),
(813, 679454521, 'fiona007@hotmail.com'),
(814, 680545555, 'bean14@hotmail.com'),
(815, 648755566, 'nikol41@hotmail.com'),
(816, 645512121, 'benjamin@gmail.com'),
(817, 654515512, 'nora@gmail.com'),
(818, 645451288, 'edgar@hotmail.com');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `customer_details`
--

CREATE TABLE `customer_details` (
  `CUSTOMER_DETAILS_ID` int(11) NOT NULL,
  `SEX` char(1) DEFAULT NULL,
  `AGE` int(11) DEFAULT NULL,
  `BIRTHDAY` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- A tábla adatainak kiíratása `customer_details`
--

INSERT INTO `customer_details` (`CUSTOMER_DETAILS_ID`, `SEX`, `AGE`, `BIRTHDAY`) VALUES
(201, 'M', 27, '1992-02-26'),
(202, 'F', 35, '1986-05-05'),
(203, 'M', 20, '2000-01-27'),
(204, 'M', 22, '1998-03-22'),
(205, 'M', 24, '2004-02-04'),
(206, 'F', 32, '1987-03-14'),
(207, 'M', 18, '2002-05-24'),
(208, 'M', 48, '1972-06-01'),
(209, 'M', 25, '1995-07-12'),
(210, 'M', 41, '1979-01-05');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `deliverer`
--

CREATE TABLE `deliverer` (
  `DELIVERER_ID` int(11) NOT NULL,
  `FK_WORKER_DETAIL_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- A tábla adatainak kiíratása `deliverer`
--

INSERT INTO `deliverer` (`DELIVERER_ID`, `FK_WORKER_DETAIL_ID`) VALUES
(613, 621),
(611, 622),
(612, 623);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `delivery_collector`
--

CREATE TABLE `delivery_collector` (
  `COLLECTOR_ID` int(11) NOT NULL,
  `FK_WORKER_DETAIL_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- A tábla adatainak kiíratása `delivery_collector`
--

INSERT INTO `delivery_collector` (`COLLECTOR_ID`, `FK_WORKER_DETAIL_ID`) VALUES
(502, 624),
(503, 625),
(501, 626);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `drop_and_pickup`
--

CREATE TABLE `drop_and_pickup` (
  `STORE_ID` int(11) NOT NULL,
  `FK_ADDRESS_ID` int(11) DEFAULT NULL,
  `FK_COLLECTOR_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- A tábla adatainak kiíratása `drop_and_pickup`
--

INSERT INTO `drop_and_pickup` (`STORE_ID`, `FK_ADDRESS_ID`, `FK_COLLECTOR_ID`) VALUES
(401, 326, 502),
(402, 327, 501),
(403, 327, 503),
(404, 328, 502);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `package`
--

CREATE TABLE `package` (
  `PACKAGE_ID` int(11) NOT NULL,
  `FK_STORE_ID` int(11) DEFAULT NULL,
  `FK_SENDER_ID` int(11) DEFAULT NULL,
  `FK_RECIEVER_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- A tábla adatainak kiíratása `package`
--

INSERT INTO `package` (`PACKAGE_ID`, `FK_STORE_ID`, `FK_SENDER_ID`, `FK_RECIEVER_ID`) VALUES
(511, 401, 413, 101),
(512, 403, 411, 102),
(513, 402, 412, 103),
(514, 404, 415, 104),
(515, 402, 414, 105);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `package_details`
--

CREATE TABLE `package_details` (
  `DETAIL_ID` int(11) NOT NULL,
  `DEPOSITED` date DEFAULT NULL,
  `RECIEVED` date DEFAULT NULL,
  `WEIGHT` char(10) DEFAULT NULL,
  `STATUS` enum('YES','NO') DEFAULT NULL,
  `FK_PACKAGE_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- A tábla adatainak kiíratása `package_details`
--

INSERT INTO `package_details` (`DETAIL_ID`, `DEPOSITED`, `RECIEVED`, `WEIGHT`, `STATUS`, `FK_PACKAGE_ID`) VALUES
(711, '2000-08-16', '2000-09-20', '0-5 KG', 'YES', 512),
(712, '2012-05-15', '2012-05-17', '0-5 KG', 'YES', 513),
(713, '2013-06-07', '2013-06-09', '5-10 KG', 'YES', 511),
(714, '2013-07-05', '2013-08-26', '0-5 KG', 'YES', 514);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `process_location`
--

CREATE TABLE `process_location` (
  `DELIVERY_LOC_ID` int(11) NOT NULL,
  `FK_ADDRESS_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- A tábla adatainak kiíratása `process_location`
--

INSERT INTO `process_location` (`DELIVERY_LOC_ID`, `FK_ADDRESS_ID`) VALUES
(433, 318),
(432, 319),
(431, 320);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `reciever`
--

CREATE TABLE `reciever` (
  `RECIEVER_ID` int(11) NOT NULL,
  `FIRST_NAME` char(30) DEFAULT NULL,
  `LAST_NAME` char(30) DEFAULT NULL,
  `FK_CUSTOMER_DETAILS_ID` int(11) DEFAULT NULL,
  `FK_CONTACT_ID` int(11) DEFAULT NULL,
  `FK_ADDRESS_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- A tábla adatainak kiíratása `reciever`
--

INSERT INTO `reciever` (`RECIEVER_ID`, `FIRST_NAME`, `LAST_NAME`, `FK_CUSTOMER_DETAILS_ID`, `FK_CONTACT_ID`, `FK_ADDRESS_ID`) VALUES
(101, 'NICOLAS', 'ENDERSON', 205, 808, 329),
(102, 'EVELIN', 'STON', 206, 809, 325),
(103, 'FRANKLIN', 'BIG', 207, 810, 315),
(104, 'LORENZE', 'GOMEZ', 208, 811, 324),
(105, 'EDGAR', 'NICEGUY', 210, 818, 334);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `sender`
--

CREATE TABLE `sender` (
  `SENDER_ID` int(11) NOT NULL,
  `FIRST_NAME` char(30) DEFAULT NULL,
  `LAST_NAME` char(30) DEFAULT NULL,
  `FK_CUSTOMER_DETAILS_ID` int(11) DEFAULT NULL,
  `FK_CONTACT_ID` int(11) DEFAULT NULL,
  `FK_ADDRESS_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- A tábla adatainak kiíratása `sender`
--

INSERT INTO `sender` (`SENDER_ID`, `FIRST_NAME`, `LAST_NAME`, `FK_CUSTOMER_DETAILS_ID`, `FK_CONTACT_ID`, `FK_ADDRESS_ID`) VALUES
(411, 'MIKEL', 'DUGLES', 201, 801, 311),
(412, 'ELISON', 'JORDEN', 202, 802, 312),
(413, 'FERNANDO', 'JUNIOR', 203, 803, 313),
(414, 'LEONARDO', 'MENDEZ', 204, 804, 314),
(415, 'GORAN', 'JURAK', 209, 800, 333);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `storage_worker`
--

CREATE TABLE `storage_worker` (
  `WORKER_ID` int(11) NOT NULL,
  `FK_WORKER_DETAIL_ID` int(11) DEFAULT NULL,
  `FK_DELIVERY_LOC_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- A tábla adatainak kiíratása `storage_worker`
--

INSERT INTO `storage_worker` (`WORKER_ID`, `FK_WORKER_DETAIL_ID`, `FK_DELIVERY_LOC_ID`) VALUES
(631, 627, 432),
(632, 628, 431),
(633, 629, 432);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `worker_detail`
--

CREATE TABLE `worker_detail` (
  `WORKER_DETAIL_ID` int(11) NOT NULL,
  `FIRST_NAME` char(30) DEFAULT NULL,
  `LAST_NAME` char(30) DEFAULT NULL,
  `SEX` char(1) DEFAULT NULL,
  `SELLARY_IN_YEAR` int(11) DEFAULT NULL,
  `HIRED` date DEFAULT NULL,
  `FK_ADDRESS_ID` int(11) DEFAULT NULL,
  `FK_CONTACT_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- A tábla adatainak kiíratása `worker_detail`
--

INSERT INTO `worker_detail` (`WORKER_DETAIL_ID`, `FIRST_NAME`, `LAST_NAME`, `SEX`, `SELLARY_IN_YEAR`, `HIRED`, `FK_ADDRESS_ID`, `FK_CONTACT_ID`) VALUES
(621, 'MICHAEL', 'GRÜNBERGER', 'M', 20000, '1989-03-04', 323, 812),
(622, 'FIONA', 'CARY', 'F', 18000, '1981-03-24', 321, 813),
(623, 'BEAN', 'SMALL', 'M', 22000, '1978-06-04', 322, 814),
(624, 'HOSE', 'ARMANDO', 'M', 25000, '1978-09-17', 316, 806),
(625, 'SAMANTA', 'KINDLY', 'F', 24000, '1977-07-06', 318, 805),
(626, 'TAYLOR', 'FRANDLY', 'M', 23000, '1966-08-21', 317, 807),
(627, 'BENJAMIN', 'SMART', 'M', 24000, '1988-03-04', 331, 816),
(628, 'NORA', 'GOODLIFE', 'F', 28000, '1989-04-08', 332, 817),
(629, 'NIKOL', 'SMALL', 'F', 32000, '1980-04-08', 330, 815);

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `address`
--
ALTER TABLE `address`
  ADD PRIMARY KEY (`ADDRESS_ID`);

--
-- A tábla indexei `conection`
--
ALTER TABLE `conection`
  ADD PRIMARY KEY (`CONTACT_ID`);

--
-- A tábla indexei `customer_details`
--
ALTER TABLE `customer_details`
  ADD PRIMARY KEY (`CUSTOMER_DETAILS_ID`);

--
-- A tábla indexei `deliverer`
--
ALTER TABLE `deliverer`
  ADD PRIMARY KEY (`DELIVERER_ID`),
  ADD KEY `FK_WORKER_DETAIL_ID` (`FK_WORKER_DETAIL_ID`);

--
-- A tábla indexei `delivery_collector`
--
ALTER TABLE `delivery_collector`
  ADD PRIMARY KEY (`COLLECTOR_ID`),
  ADD KEY `FK_WORKER_DETAIL_ID` (`FK_WORKER_DETAIL_ID`);

--
-- A tábla indexei `drop_and_pickup`
--
ALTER TABLE `drop_and_pickup`
  ADD PRIMARY KEY (`STORE_ID`),
  ADD KEY `FK_ADDRESS_ID` (`FK_ADDRESS_ID`),
  ADD KEY `FK_COLLECTOR_ID` (`FK_COLLECTOR_ID`);

--
-- A tábla indexei `package`
--
ALTER TABLE `package`
  ADD PRIMARY KEY (`PACKAGE_ID`),
  ADD KEY `FK_STORE_ID` (`FK_STORE_ID`),
  ADD KEY `FK_SENDER_ID` (`FK_SENDER_ID`),
  ADD KEY `FK_RECIEVER_ID` (`FK_RECIEVER_ID`);

--
-- A tábla indexei `package_details`
--
ALTER TABLE `package_details`
  ADD PRIMARY KEY (`DETAIL_ID`),
  ADD KEY `FK_PACKAGE_ID` (`FK_PACKAGE_ID`);

--
-- A tábla indexei `process_location`
--
ALTER TABLE `process_location`
  ADD PRIMARY KEY (`DELIVERY_LOC_ID`),
  ADD KEY `FK_ADDRESS_ID` (`FK_ADDRESS_ID`);

--
-- A tábla indexei `reciever`
--
ALTER TABLE `reciever`
  ADD PRIMARY KEY (`RECIEVER_ID`),
  ADD KEY `FK_CUSTOMER_DETAILS_ID` (`FK_CUSTOMER_DETAILS_ID`),
  ADD KEY `FK_CONTACT_ID` (`FK_CONTACT_ID`),
  ADD KEY `FK_ADDRESS_ID` (`FK_ADDRESS_ID`);

--
-- A tábla indexei `sender`
--
ALTER TABLE `sender`
  ADD PRIMARY KEY (`SENDER_ID`),
  ADD KEY `FK_CUSTOMER_DETAILS_ID` (`FK_CUSTOMER_DETAILS_ID`),
  ADD KEY `FK_CONTACT_ID` (`FK_CONTACT_ID`),
  ADD KEY `FK_ADDRESS_ID` (`FK_ADDRESS_ID`);

--
-- A tábla indexei `storage_worker`
--
ALTER TABLE `storage_worker`
  ADD PRIMARY KEY (`WORKER_ID`),
  ADD KEY `FK_WORKER_DETAIL_ID` (`FK_WORKER_DETAIL_ID`),
  ADD KEY `FK_DELIVERY_LOC_ID` (`FK_DELIVERY_LOC_ID`);

--
-- A tábla indexei `worker_detail`
--
ALTER TABLE `worker_detail`
  ADD PRIMARY KEY (`WORKER_DETAIL_ID`),
  ADD KEY `FK_ADDRESS_ID` (`FK_ADDRESS_ID`),
  ADD KEY `FK_CONTACT_ID` (`FK_CONTACT_ID`);

--
-- Megkötések a kiírt táblákhoz
--

--
-- Megkötések a táblához `deliverer`
--
ALTER TABLE `deliverer`
  ADD CONSTRAINT `deliverer_ibfk_1` FOREIGN KEY (`FK_WORKER_DETAIL_ID`) REFERENCES `worker_detail` (`WORKER_DETAIL_ID`);

--
-- Megkötések a táblához `delivery_collector`
--
ALTER TABLE `delivery_collector`
  ADD CONSTRAINT `delivery_collector_ibfk_1` FOREIGN KEY (`FK_WORKER_DETAIL_ID`) REFERENCES `worker_detail` (`WORKER_DETAIL_ID`);

--
-- Megkötések a táblához `drop_and_pickup`
--
ALTER TABLE `drop_and_pickup`
  ADD CONSTRAINT `drop_and_pickup_ibfk_1` FOREIGN KEY (`FK_ADDRESS_ID`) REFERENCES `address` (`ADDRESS_ID`),
  ADD CONSTRAINT `drop_and_pickup_ibfk_2` FOREIGN KEY (`FK_COLLECTOR_ID`) REFERENCES `delivery_collector` (`COLLECTOR_ID`);

--
-- Megkötések a táblához `package`
--
ALTER TABLE `package`
  ADD CONSTRAINT `package_ibfk_1` FOREIGN KEY (`FK_STORE_ID`) REFERENCES `drop_and_pickup` (`STORE_ID`),
  ADD CONSTRAINT `package_ibfk_2` FOREIGN KEY (`FK_SENDER_ID`) REFERENCES `sender` (`SENDER_ID`),
  ADD CONSTRAINT `package_ibfk_3` FOREIGN KEY (`FK_RECIEVER_ID`) REFERENCES `reciever` (`RECIEVER_ID`);

--
-- Megkötések a táblához `package_details`
--
ALTER TABLE `package_details`
  ADD CONSTRAINT `package_details_ibfk_1` FOREIGN KEY (`FK_PACKAGE_ID`) REFERENCES `package` (`PACKAGE_ID`);

--
-- Megkötések a táblához `process_location`
--
ALTER TABLE `process_location`
  ADD CONSTRAINT `process_location_ibfk_1` FOREIGN KEY (`FK_ADDRESS_ID`) REFERENCES `address` (`ADDRESS_ID`);

--
-- Megkötések a táblához `reciever`
--
ALTER TABLE `reciever`
  ADD CONSTRAINT `reciever_ibfk_1` FOREIGN KEY (`FK_CUSTOMER_DETAILS_ID`) REFERENCES `customer_details` (`CUSTOMER_DETAILS_ID`),
  ADD CONSTRAINT `reciever_ibfk_2` FOREIGN KEY (`FK_CONTACT_ID`) REFERENCES `conection` (`CONTACT_ID`),
  ADD CONSTRAINT `reciever_ibfk_3` FOREIGN KEY (`FK_ADDRESS_ID`) REFERENCES `address` (`ADDRESS_ID`);

--
-- Megkötések a táblához `sender`
--
ALTER TABLE `sender`
  ADD CONSTRAINT `sender_ibfk_1` FOREIGN KEY (`FK_CUSTOMER_DETAILS_ID`) REFERENCES `customer_details` (`CUSTOMER_DETAILS_ID`),
  ADD CONSTRAINT `sender_ibfk_2` FOREIGN KEY (`FK_CONTACT_ID`) REFERENCES `conection` (`CONTACT_ID`),
  ADD CONSTRAINT `sender_ibfk_3` FOREIGN KEY (`FK_ADDRESS_ID`) REFERENCES `address` (`ADDRESS_ID`);

--
-- Megkötések a táblához `storage_worker`
--
ALTER TABLE `storage_worker`
  ADD CONSTRAINT `storage_worker_ibfk_1` FOREIGN KEY (`FK_WORKER_DETAIL_ID`) REFERENCES `worker_detail` (`WORKER_DETAIL_ID`),
  ADD CONSTRAINT `storage_worker_ibfk_2` FOREIGN KEY (`FK_DELIVERY_LOC_ID`) REFERENCES `process_location` (`DELIVERY_LOC_ID`);

--
-- Megkötések a táblához `worker_detail`
--
ALTER TABLE `worker_detail`
  ADD CONSTRAINT `worker_detail_ibfk_1` FOREIGN KEY (`FK_ADDRESS_ID`) REFERENCES `address` (`ADDRESS_ID`),
  ADD CONSTRAINT `worker_detail_ibfk_2` FOREIGN KEY (`FK_CONTACT_ID`) REFERENCES `conection` (`CONTACT_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
