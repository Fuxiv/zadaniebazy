-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 10, 2023 at 11:33 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `zadanie`
--

-- --------------------------------------------------------

--
-- Table structure for table `hurtownie`
--

CREATE TABLE `hurtownie` (
  `hurtownia_id` int(11) NOT NULL,
  `nazwa_hurtownii` text COLLATE utf8_bin NOT NULL,
  `kategoria_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `hurtownie`
--

INSERT INTO `hurtownie` (`hurtownia_id`, `nazwa_hurtownii`, `kategoria_id`) VALUES
(1, 'Kwiaty Polskie', 4),
(2, 'Kwiaty Świata', 4),
(3, 'Agrosimex', 3),
(4, 'Tuchmet', 5),
(5, 'Sklep Świat Kwiatów', 2);

-- --------------------------------------------------------

--
-- Table structure for table `kategorie`
--

CREATE TABLE `kategorie` (
  `kategoria_id` int(11) NOT NULL,
  `kategoria` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `kategorie`
--

INSERT INTO `kategorie` (`kategoria_id`, `kategoria`) VALUES
(1, 'nasiona'),
(2, 'cebulki i sadzonki'),
(3, 'nawozy'),
(4, 'kwiaty'),
(5, 'akcesoria i narzedzia');

-- --------------------------------------------------------

--
-- Table structure for table `kurierzy`
--

CREATE TABLE `kurierzy` (
  `kurier_id` int(11) NOT NULL,
  `nazwa_kuriera` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `kurierzy`
--

INSERT INTO `kurierzy` (`kurier_id`, `nazwa_kuriera`) VALUES
(1, 'DHL'),
(2, 'DPD'),
(3, 'Fedex'),
(4, 'UPS'),
(5, 'Poczta Kurier 48');

-- --------------------------------------------------------

--
-- Table structure for table `pracownicy`
--

CREATE TABLE `pracownicy` (
  `pracownik_id` int(11) NOT NULL,
  `imie` text COLLATE utf8_bin NOT NULL,
  `nazwisko` text COLLATE utf8_bin NOT NULL,
  `data_urodzenia` date NOT NULL,
  `stanowisko_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `pracownicy`
--

INSERT INTO `pracownicy` (`pracownik_id`, `imie`, `nazwisko`, `data_urodzenia`, `stanowisko_id`) VALUES
(1, 'Katarzyna', 'Nowak', '1985-05-12', 2),
(2, 'Bartosz', 'Kowalski', '1973-06-23', 1),
(3, 'Magdalena', 'Wojcik', '1990-09-01', 5),
(4, 'Piotr', 'Kaczmarek', '1982-11-15', 4),
(5, 'Anna', 'Wisniewska', '1975-04-30', 3);

-- --------------------------------------------------------

--
-- Table structure for table `produkty`
--

CREATE TABLE `produkty` (
  `produkt_id` int(11) NOT NULL,
  `nazwa_produktu` text COLLATE utf8_bin NOT NULL,
  `kategoria_id` int(11) NOT NULL,
  `cena_produktu` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `stanowiska`
--

CREATE TABLE `stanowiska` (
  `stanowisko_id` int(11) NOT NULL,
  `nazwa_stanowiska` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `stanowiska`
--

INSERT INTO `stanowiska` (`stanowisko_id`, `nazwa_stanowiska`) VALUES
(1, 'Magazynier'),
(2, 'Ksiegowy'),
(3, 'Analityk'),
(4, 'Informatyk'),
(5, 'Obsluga klienta');

-- --------------------------------------------------------

--
-- Table structure for table `typy_kont`
--

CREATE TABLE `typy_kont` (
  `typ_konta_id` int(11) NOT NULL,
  `typ_konta` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `typy_kont`
--

INSERT INTO `typy_kont` (`typ_konta_id`, `typ_konta`) VALUES
(1, 'uzytkownik'),
(2, 'administrator');

-- --------------------------------------------------------

--
-- Table structure for table `uzytkownicy`
--

CREATE TABLE `uzytkownicy` (
  `uzytkownik_id` int(11) NOT NULL,
  `nazwa_uzytkownika` text COLLATE utf8_bin NOT NULL,
  `data_urodzenia` date NOT NULL,
  `adres_uzytkownika` text COLLATE utf8_bin DEFAULT NULL,
  `telefon_uzytkownika` int(11) DEFAULT NULL,
  `typ_konta_id` int(11) DEFAULT NULL,
  `haslo` text COLLATE utf8_bin NOT NULL,
  `imie` text COLLATE utf8_bin NOT NULL,
  `nazwisko` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `zamowienia_przychodzace`
--

CREATE TABLE `zamowienia_przychodzace` (
  `zamowienie_id` int(11) NOT NULL,
  `kurier_id` int(11) NOT NULL,
  `produkt_id` int(11) NOT NULL,
  `ilosc_produktu` int(11) NOT NULL,
  `hurtownia_id` int(11) NOT NULL,
  `cena` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `zamowienia_wychodzace`
--

CREATE TABLE `zamowienia_wychodzace` (
  `zamowienie_id` int(11) NOT NULL,
  `kurier_id` int(11) NOT NULL,
  `produkt_id` int(11) NOT NULL,
  `ilosc_produktu` int(11) NOT NULL,
  `uzytkownik_id` int(11) NOT NULL,
  `cena` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `hurtownie`
--
ALTER TABLE `hurtownie`
  ADD PRIMARY KEY (`hurtownia_id`),
  ADD KEY `kategoria_id` (`kategoria_id`);

--
-- Indexes for table `kategorie`
--
ALTER TABLE `kategorie`
  ADD PRIMARY KEY (`kategoria_id`);

--
-- Indexes for table `kurierzy`
--
ALTER TABLE `kurierzy`
  ADD PRIMARY KEY (`kurier_id`);

--
-- Indexes for table `pracownicy`
--
ALTER TABLE `pracownicy`
  ADD PRIMARY KEY (`pracownik_id`),
  ADD KEY `stanowisko_id` (`stanowisko_id`);

--
-- Indexes for table `produkty`
--
ALTER TABLE `produkty`
  ADD PRIMARY KEY (`produkt_id`),
  ADD KEY `kategoria_id` (`kategoria_id`);

--
-- Indexes for table `stanowiska`
--
ALTER TABLE `stanowiska`
  ADD PRIMARY KEY (`stanowisko_id`);

--
-- Indexes for table `typy_kont`
--
ALTER TABLE `typy_kont`
  ADD PRIMARY KEY (`typ_konta_id`);

--
-- Indexes for table `uzytkownicy`
--
ALTER TABLE `uzytkownicy`
  ADD PRIMARY KEY (`uzytkownik_id`),
  ADD KEY `typ_konta_id` (`typ_konta_id`);

--
-- Indexes for table `zamowienia_przychodzace`
--
ALTER TABLE `zamowienia_przychodzace`
  ADD PRIMARY KEY (`zamowienie_id`),
  ADD KEY `hurtownia_id` (`hurtownia_id`),
  ADD KEY `kurier_id` (`kurier_id`),
  ADD KEY `produkt_id` (`produkt_id`);

--
-- Indexes for table `zamowienia_wychodzace`
--
ALTER TABLE `zamowienia_wychodzace`
  ADD PRIMARY KEY (`zamowienie_id`),
  ADD KEY `kurier_id` (`kurier_id`),
  ADD KEY `produkt_id` (`produkt_id`),
  ADD KEY `uzytkownik_id` (`uzytkownik_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `hurtownie`
--
ALTER TABLE `hurtownie`
  MODIFY `hurtownia_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `kategorie`
--
ALTER TABLE `kategorie`
  MODIFY `kategoria_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `kurierzy`
--
ALTER TABLE `kurierzy`
  MODIFY `kurier_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `pracownicy`
--
ALTER TABLE `pracownicy`
  MODIFY `pracownik_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `produkty`
--
ALTER TABLE `produkty`
  MODIFY `produkt_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `stanowiska`
--
ALTER TABLE `stanowiska`
  MODIFY `stanowisko_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `typy_kont`
--
ALTER TABLE `typy_kont`
  MODIFY `typ_konta_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `uzytkownicy`
--
ALTER TABLE `uzytkownicy`
  MODIFY `uzytkownik_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `zamowienia_przychodzace`
--
ALTER TABLE `zamowienia_przychodzace`
  MODIFY `zamowienie_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `zamowienia_wychodzace`
--
ALTER TABLE `zamowienia_wychodzace`
  MODIFY `zamowienie_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `hurtownie`
--
ALTER TABLE `hurtownie`
  ADD CONSTRAINT `hurtownie_ibfk_1` FOREIGN KEY (`kategoria_id`) REFERENCES `kategorie` (`kategoria_id`);

--
-- Constraints for table `pracownicy`
--
ALTER TABLE `pracownicy`
  ADD CONSTRAINT `pracownicy_ibfk_1` FOREIGN KEY (`stanowisko_id`) REFERENCES `stanowiska` (`stanowisko_id`);

--
-- Constraints for table `produkty`
--
ALTER TABLE `produkty`
  ADD CONSTRAINT `produkty_ibfk_1` FOREIGN KEY (`kategoria_id`) REFERENCES `kategorie` (`kategoria_id`);

--
-- Constraints for table `uzytkownicy`
--
ALTER TABLE `uzytkownicy`
  ADD CONSTRAINT `uzytkownicy_ibfk_1` FOREIGN KEY (`typ_konta_id`) REFERENCES `typy_kont` (`typ_konta_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
