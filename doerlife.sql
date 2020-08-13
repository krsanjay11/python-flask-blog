-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 13, 2020 at 09:38 AM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.3.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `doerlife`
--

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `sno` int(50) NOT NULL,
  `name` text NOT NULL,
  `phone_num` int(50) NOT NULL,
  `msg` text NOT NULL,
  `date` datetime DEFAULT current_timestamp(),
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`sno`, `name`, `phone_num`, `msg`, `date`, `email`) VALUES
(1, 'first post', 123456789, 'first msg', '2020-08-04 01:15:22', 'firstpostemail.com'),
(8, 'sanjay kumar', 2147483647, 'hllo to me', '2020-08-04 22:18:33', 'kumarsanjay77888@gmail.com'),
(9, 'sahil', 2147483647, 'sanjay is here', '2020-08-04 22:20:38', 'Thedoerlife@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `sno` int(11) NOT NULL,
  `title` text NOT NULL,
  `tagline` text NOT NULL,
  `slug` varchar(25) NOT NULL,
  `content` text NOT NULL,
  `img_file` varchar(12) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`sno`, `title`, `tagline`, `slug`, `content`, `img_file`, `date`) VALUES
(1, 'let\'s know about stocks ', 'tagline for 1st post ', 'first-post', 'A (censex) stock market, equity market or share market is the aggregation of buyers and sellers of stocks (also called shares), which represent ownership claims on businesses; these may include securities listed on a public stock exchange, as well as stock that is only traded privately, such as shares of private companies which are sold to investors through equity crowdfunding platforms. Investment in the stock market is most often done via stockbrokerages and electronic trading platforms. Investment is usually made with an investment strategy in mind.\r\n\r\nStocks can be categorized by the country where the company is domiciled. For example, Nestlé and Novartis are domiciled in Switzerland and traded on the SIX Swiss Exchange, so they may be considered as part of the Swiss stock market, although the stocks may also be traded on exchanges in other countries, for example, as American depositary receipts (ADRs) on U.S. stock markets.', 'post-bg.jpg', '2020-08-12 15:30:34'),
(2, 'this is second post ', 'tagline for 2nd post', 'second-post', '5G is the Fifth Generation technology. It has many advanced features potential enough to solve many of the problems of our mundane life. It is beneficial for the government, as it can make the governance easier; for the students, as it can make available the advanced courses, classes, and materials online; it is easier for the common people as well, as it can facilitate them the internet everywhere. So, this tutorial is divided into various chapters and describes the 5G technology, its applications, challenges, etc., in detail.', 'about-bg.jpg', '2020-08-07 02:42:39'),
(3, 'Synopsis', 'third-post', 'third-post', 'A Jinja template is simply a text file. Jinja can generate any text-based format (HTML, XML, CSV, LaTeX, etc.). A Jinja template doesn’t need to have a specific extension: .html, .xml, or any other extension is just fine.\r\n\r\nA template contains variables and/or expressions, which get replaced with values when a template is rendered; and tags, which control the logic of the template. The template syntax is heavily inspired by Django and Python.\r\n\r\nBelow is a minimal template that illustrates a few basics using the default Jinja configuration. We will cover the details later in this document:', 'about-bg.jpg', '2020-08-07 02:53:35'),
(4, 'variable', 'forth-post', 'forth-post', 'A Jinja template is simply a text file. Jinja can generate any text-based format (HTML, XML, CSV, LaTeX, etc.). A Jinja template doesn’t need to have a specific extension: .html, .xml, or any other extension is just fine.\r\n\r\nA template contains variables and/or expressions, which get replaced with values when a template is rendered; and tags, which control the logic of the template. The template syntax is heavily inspired by Django and Python.\r\n\r\nBelow is a minimal template that illustrates a few basics using the default Jinja configuration. We will cover the details later in this document:', 'about-bg.jpg', '2020-08-07 02:53:35'),
(5, '5g new', 'about 5g', 'fifth-post', 'Advanced Features\r\nIn comparison to previous radio technologies, 5G has following advancement −\r\n\r\nPractically possible to avail the super speed i.e. 1 to 10 Gbps.\r\nLatency will be 1 millisecond (end-to-end round trip).\r\n1,000x bandwidth per unit area.\r\nFeasibility to connect 10 to 100 number of devices.\r\nWorldwide coverage.\r\nAbout 90% reduction in network energy usage.\r\nBattery life will be much longer.\r\nWhole world will be in wi fi zone.', 'post-bg.jpg', '2020-08-07 02:56:57'),
(6, 'c++', 'cpp function', 'sixth-post', 'The copy constructor is a constructor which creates an object by initializing it with an object of the same class, which has been created previously. The copy constructor is used to −\r\n\r\nInitialize one object from another of the same type.\r\nCopy an object to pass it as an argument to a function.\r\nCopy an object to return it from a function.\r\nIf a copy constructor is not defined in a class, the compiler itself defines one.If the class has pointer variables and has some dynamic memory allocations, then it is a must to have a copy constructor. The most common form of copy constructor is shown here −', 'post-bg.jpg', '2020-08-07 02:56:57');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`sno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `sno` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
