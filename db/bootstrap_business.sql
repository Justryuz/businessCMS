-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 13, 2016 at 12:01 PM
-- Server version: 5.5.53-MariaDB-1ubuntu0.14.04.1
-- PHP Version: 5.5.9-1ubuntu4.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `businessCMS`
--

-- --------------------------------------------------------

--
-- Table structure for table `aboutus`
--

CREATE TABLE `aboutus` (
  `id` int(11) NOT NULL,
  `heading` text NOT NULL,
  `content` text NOT NULL,
  `image` text NOT NULL,
  `image_align` text NOT NULL,
  `datetime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `loc_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `aboutus`
--

INSERT INTO `aboutus` (`id`, `heading`, `content`, `image`, `image_align`, `datetime`, `loc_id`) VALUES
(1, 'About Us', '<p>Lorem ipsum dolor sit amet, bonorum iracundia ex ius, sit modo quodsi cu, vitae omnesque no cum. In cotidieque adversarium vis, timeam sanctus alienum ad vim, nonumy vituperatoribus ei sea. No eam essent platonem, illud splendide an mel, ea mentitum officiis scripserit ius. Harum primis per in, duo cu ancillae disputationi, te pri causae tritani torquatos. Liber doming iracundia et his. An eros brute solet mei, abhorreant omittantur per te. Vim an labitur probatus, ea ius fugit omnesque aliquando.</p>\r\n<p>Inani singulis efficiantur ut mel, et regione repudiare ius. Et cibo commodo signiferumque cum. Tibique singulis nam id, aliquid mediocrem definitiones nam ne. Erant incorrupte eu nec, ex modus aperiri forensibus nam, eu ius bonorum adipisci theophrastus. Soleat animal liberavisse id eos, illum intellegam te est. Per velit ludus ne, diceret recusabo voluptaria usu et. Eu mea prodesset scriptorem.</p>', 'HSWorkingGroup.png', 'left', '2016-12-12 19:56:34', 1),
(2, 'test 2', '<p>test 2</p>', 'MapBackground2.png', 'right', '0000-00-00 00:00:00', 2);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `nav_loc_id` int(11) NOT NULL,
  `datetime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `nav_loc_id`, `datetime`) VALUES
(0, 'None', 1, '0000-00-00 00:00:00'),
(45, 'test 2', 2, '0000-00-00 00:00:00'),
(46, 'test', 1, '0000-00-00 00:00:00'),
(47, 'Services', 1, '0000-00-00 00:00:00'),
(48, 'test 2', 1, '2016-12-12 20:16:13'),
(49, 'test 3', 1, '2016-12-12 20:22:38');

-- --------------------------------------------------------

--
-- Table structure for table `contactus`
--

CREATE TABLE `contactus` (
  `id` int(11) NOT NULL,
  `heading` text NOT NULL,
  `introtext` text NOT NULL,
  `mapcode` text NOT NULL,
  `email` text NOT NULL,
  `sendtoemail` text NOT NULL,
  `address` text NOT NULL,
  `city` text NOT NULL,
  `state` text NOT NULL,
  `zipcode` text NOT NULL,
  `phone` text NOT NULL,
  `hours` text NOT NULL,
  `datetime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `loc_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `contactus`
--

INSERT INTO `contactus` (`id`, `heading`, `introtext`, `mapcode`, `email`, `sendtoemail`, `address`, `city`, `state`, `zipcode`, `phone`, `hours`, `datetime`, `loc_id`) VALUES
(1, 'Contact Us', 'The White House', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3105.1503819264844!2d-77.03871848464966!3d38.897676279570575!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x89b7b7bcdecbb1df%3A0x715969d86d0b76bf!2sThe+White+House!5e0!3m2!1sen!2sus!4v1479220635842" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>', 'rjones@tlcdelivers.com', 'rjones@tlcdelivers.com', '1600 Pennsylvania Ave NW', 'Washington', 'DC', '20500', '555-5555', '9-5', '0000-00-00 00:00:00', 1),
(2, 'Contact 2', 'Contact Us', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3105.1503819264844!2d-77.03871848464966!3d38.897676279570575!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x89b7b7bcdecbb1df%3A0x715969d86d0b76bf!2sThe+White+House!5e0!3m2!1sen!2sus!4v1479220635842" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>', 'ryan@email.com', 'ryan@email.com', '1600 Pennsylvania Ave NW', 'Washington', 'DC', '20500', '555-5555', '9-5 M-F, 9-3 Sat', '0000-00-00 00:00:00', 2);

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(11) NOT NULL,
  `image` text NOT NULL,
  `icon` text NOT NULL,
  `name` text NOT NULL,
  `link` text NOT NULL,
  `content` text NOT NULL,
  `active` text NOT NULL,
  `datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `loc_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `image`, `icon`, `name`, `link`, `content`, `active`, `datetime`, `loc_id`) VALUES
(4, 'webide.png', '', 'My Database', 'http://www.darpa.gov', 'My Own Icon Image', 'true', '2016-12-07 22:14:22', 1),
(5, '', 'address-card', 'DISA', 'http://www.disa.gov', 'Registration', 'true', '2016-12-07 22:06:19', 1),
(6, '', 'area-chart', 'ABC', 'http://www.billgates.gov', 'Really Long Title', 'true', '2016-12-07 22:07:12', 1),
(7, '', 'birthday-cake', 'CFPB', 'http://www.cfpb.gov', 'Online EBooks', 'true', '2016-12-07 22:05:16', 1),
(8, '', 'area-chart', 'Cal OES', 'http://www.darpa.gov', 'Online Databases', 'true', '2016-12-07 22:06:39', 1),
(9, 'webide.png', '', 'Darpa', 'http://www.darpa.gov', '', 'true', '2016-11-15 22:00:19', 2),
(10, 'webide.png', '', 'DISA', 'http://www.disa.gov', '', 'true', '2016-11-15 21:59:45', 2),
(11, 'webide.png', '', 'Bill and Melinda Gate Foundation', 'http://www.billgates.gov', '', 'true', '2016-11-15 21:59:57', 2),
(12, 'webide.png', '', 'CFPB', 'http://www.cfpb.gov', '', 'true', '2016-11-15 21:59:34', 2),
(13, 'webide.png', '', 'Cal OES', 'http://www.darpa.gov', '', 'true', '2016-11-29 14:49:45', 2),
(14, '', 'bicycle', 'Ebsco', 'http://ebscohost.com', 'Online Databases', 'true', '2016-12-07 22:13:41', 1);

-- --------------------------------------------------------

--
-- Table structure for table `featured`
--

CREATE TABLE `featured` (
  `id` int(11) NOT NULL,
  `heading` text NOT NULL,
  `introtext` text NOT NULL,
  `content` text NOT NULL,
  `image` text NOT NULL,
  `image_align` text NOT NULL,
  `datetime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `loc_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `featured`
--

INSERT INTO `featured` (`id`, `heading`, `introtext`, `content`, `image`, `image_align`, `datetime`, `loc_id`) VALUES
(1, 'Seeking Online Access to Resources', 'test', '<p>Welcome to the Chicago Public Schools Integrated Library System...Bringing together print and electronic materials for students and teachers who are Seeking Online Access to Resources.</p>', 'HSWorkingGroup.png', 'right', '2016-12-12 20:54:07', 1),
(2, 'featured two', '', '', 'HSWorkingGroup.png', 'right', '0000-00-00 00:00:00', 2);

-- --------------------------------------------------------

--
-- Table structure for table `generalinfo`
--

CREATE TABLE `generalinfo` (
  `id` int(11) NOT NULL,
  `heading` text NOT NULL,
  `content` text NOT NULL,
  `datetime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `loc_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `generalinfo`
--

INSERT INTO `generalinfo` (`id`, `heading`, `content`, `datetime`, `loc_id`) VALUES
(1, 'Information', '<p>Chicago Public Schools is the third largest school district in the United States with more than 600 schools providing education to approximately 400,000 children. Our vision is that every student in every neighborhood will be engaged in a rigorous, well-rounded instructional program and will graduate prepared for success in college, career and life.</p>', '0000-00-00 00:00:00', 1),
(2, 'General Info 2', '<p>test</p>', '0000-00-00 00:00:00', 2);

-- --------------------------------------------------------

--
-- Table structure for table `locations`
--

CREATE TABLE `locations` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `datetime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `active` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `locations`
--

INSERT INTO `locations` (`id`, `name`, `datetime`, `active`) VALUES
(1, 'CPS', '0000-00-00 00:00:00', 'true'),
(2, 'Curie Metro High School', '0000-00-00 00:00:00', 'true'),
(3, 'Northside Prep High School', '0000-00-00 00:00:00', 'true'),
(4, 'Hyde Park High School', '0000-00-00 00:00:00', 'true'),
(5, 'Crane Tech Prep', '0000-00-00 00:00:00', 'true'),
(6, 'DuSable Campus', '0000-00-00 00:00:00', 'true'),
(7, 'Amundsen High School', '0000-00-00 00:00:00', 'true'),
(8, 'Professional Library', '0000-00-00 00:00:00', 'true'),
(9, 'Amundsen High School', '0000-00-00 00:00:00', 'true'),
(10, 'Barry Elementary School', '0000-00-00 00:00:00', 'true'),
(11, 'Belding Elementary School', '0000-00-00 00:00:00', 'true'),
(12, 'Budlong Elementary School', '0000-00-00 00:00:00', 'true'),
(13, 'Caldwell Academy', '0000-00-00 00:00:00', 'true'),
(14, 'Clissold Elementary School', '0000-00-00 00:00:00', 'true'),
(15, 'Franklin Fine Arts', '0000-00-00 00:00:00', 'true'),
(16, 'Fulton Elementary School', '0000-00-00 00:00:00', 'true'),
(17, 'Kohn Elementary School', '0000-00-00 00:00:00', 'true'),
(18, 'Locke Elementary School', '0000-00-00 00:00:00', 'true'),
(19, 'May Community', '0000-00-00 00:00:00', 'true'),
(20, 'Jackson Language', '0000-00-00 00:00:00', 'true'),
(21, 'Mt. Vernon Elementary School', '0000-00-00 00:00:00', 'true'),
(22, 'Mozart Elementary School', '0000-00-00 00:00:00', 'true'),
(23, 'The Nettelhorst School', '0000-00-00 00:00:00', 'true'),
(24, 'Sandoval Elementary School , Socorro', '0000-00-00 00:00:00', 'true'),
(25, 'Hurley Elementary School , Edward N', '0000-00-00 00:00:00', 'true'),
(26, 'Norwood Park Elementary School', '0000-00-00 00:00:00', 'true'),
(27, 'Onahan Elementary School', '0000-00-00 00:00:00', 'true'),
(28, 'Palmer Elementary School', '0000-00-00 00:00:00', 'true'),
(29, 'Pirie Elementary School', '0000-00-00 00:00:00', 'true'),
(30, 'Reilly Elementary School', '0000-00-00 00:00:00', 'true'),
(31, 'Frazier Int. Magnet', '0000-00-00 00:00:00', 'true'),
(32, 'Thorp Academy', '0000-00-00 00:00:00', 'true'),
(33, 'Twain Elementary School', '0000-00-00 00:00:00', 'true'),
(34, 'Whistler Elementary School, John', '0000-00-00 00:00:00', 'true'),
(35, 'Whitney Elementary School', '0000-00-00 00:00:00', 'true'),
(36, 'Douglass Academy', '0000-00-00 00:00:00', 'true'),
(37, 'Price Elementary School', '0000-00-00 00:00:00', 'true'),
(38, 'Johnson Elementary School', '0000-00-00 00:00:00', 'true'),
(39, 'Davis Academy', '0000-00-00 00:00:00', 'true'),
(40, 'Higgins Community', '0000-00-00 00:00:00', 'true'),
(41, 'Grant Campus', '0000-00-00 00:00:00', 'true'),
(42, 'Marshall Middle School', '0000-00-00 00:00:00', 'true'),
(43, 'LaSalle II Magnet', '0000-00-00 00:00:00', 'true'),
(44, 'DePriest Elementary School', '0000-00-00 00:00:00', 'true'),
(45, 'Harlan High School', '0000-00-00 00:00:00', 'true'),
(46, 'Tilden High School', '0000-00-00 00:00:00', 'true'),
(47, 'Vaughn Occ High School', '0000-00-00 00:00:00', 'true'),
(48, 'Uplift Community High School', '0000-00-00 00:00:00', 'true'),
(49, 'Haley Academy Elementary School', '0000-00-00 00:00:00', 'true'),
(50, 'Cameron Elementary School', '0000-00-00 00:00:00', 'true'),
(51, 'Copernicus Elementary School', '0000-00-00 00:00:00', 'true'),
(52, 'Gale Academy', '0000-00-00 00:00:00', 'true'),
(53, 'Greene Elementary School', '0000-00-00 00:00:00', 'true'),
(54, 'Gunsaulus Academy', '0000-00-00 00:00:00', 'true'),
(55, 'Kershaw Elementary School', '0000-00-00 00:00:00', 'true'),
(56, 'Lloyd Elementary School', '0000-00-00 00:00:00', 'true'),
(57, 'Mayer Magnet', '0000-00-00 00:00:00', 'true'),
(58, 'Keller Magnet Elementary School', '0000-00-00 00:00:00', 'true'),
(59, 'Owen Academy', '0000-00-00 00:00:00', 'true'),
(60, 'Pasteur Elementary School', '0000-00-00 00:00:00', 'true'),
(61, 'Prussing Elementary School', '0000-00-00 00:00:00', 'true'),
(62, 'Pulaski International School of Chicago', '0000-00-00 00:00:00', 'true'),
(63, 'Armstrong L Elementary School', '0000-00-00 00:00:00', 'true'),
(64, 'Spencer Academy', '0000-00-00 00:00:00', 'true'),
(65, 'Stockton Elementary School', '0000-00-00 00:00:00', 'true'),
(66, 'Trumbull Elementary School', '0000-00-00 00:00:00', 'true'),
(67, 'Banneker Elementary School', '0000-00-00 00:00:00', 'true'),
(68, 'Dumas Elementary School', '0000-00-00 00:00:00', 'true'),
(69, 'Woods Academy Elementary School', '0000-00-00 00:00:00', 'true'),
(70, 'Lenart Gifted', '0000-00-00 00:00:00', 'true'),
(71, 'Payton Coll Prep High School', '0000-00-00 00:00:00', 'true'),
(72, 'Little Village High School Campus', '0000-00-00 00:00:00', 'true'),
(73, 'Hancock Coll Prep', '0000-00-00 00:00:00', 'true'),
(74, 'Fenger High School', '0000-00-00 00:00:00', 'true'),
(75, 'Robeson High School', '0000-00-00 00:00:00', 'true'),
(76, 'Hirsch Metro High School', '0000-00-00 00:00:00', 'true'),
(77, 'Kennedy High School', '0000-00-00 00:00:00', 'true'),
(78, 'Lake View High School', '0000-00-00 00:00:00', 'true'),
(79, 'Manley High School', '0000-00-00 00:00:00', 'true'),
(80, 'Brooks Coll Prep High School', '0000-00-00 00:00:00', 'true'),
(81, 'Schurz High School', '0000-00-00 00:00:00', 'true'),
(82, 'Senn Campus', '0000-00-00 00:00:00', 'true'),
(83, 'Taft High School', '0000-00-00 00:00:00', 'true'),
(84, 'Lincoln Park High School', '0000-00-00 00:00:00', 'true'),
(85, 'Wells Academy High School', '0000-00-00 00:00:00', 'true'),
(86, 'Chicago Military High School', '0000-00-00 00:00:00', 'true'),
(87, 'Orr Academy High School', '0000-00-00 00:00:00', 'true'),
(88, 'Carver Military High School', '0000-00-00 00:00:00', 'true'),
(89, 'Corliss High School', '0000-00-00 00:00:00', 'true'),
(90, 'Armstrong G Elementary School', '0000-00-00 00:00:00', 'true'),
(91, 'Beaubien Elementary School', '0000-00-00 00:00:00', 'true'),
(92, 'Bradwell Elementary School', '0000-00-00 00:00:00', 'true'),
(93, 'Bridge Elementary School', '0000-00-00 00:00:00', 'true'),
(94, 'Cassell Elementary School', '0000-00-00 00:00:00', 'true'),
(95, 'Greeley Elementary School', '0000-00-00 00:00:00', 'true'),
(96, 'Clay Elementary School', '0000-00-00 00:00:00', 'true'),
(97, 'Clinton Elementary School', '0000-00-00 00:00:00', 'true'),
(98, 'Coles Academy', '0000-00-00 00:00:00', 'true'),
(99, 'Columbus Elementary School', '0000-00-00 00:00:00', 'true'),
(100, 'Jordan Community', '0000-00-00 00:00:00', 'true'),
(101, 'Eberhart Elementary School', '0000-00-00 00:00:00', 'true'),
(102, 'Edwards Elementary School', '0000-00-00 00:00:00', 'true'),
(103, 'Emmet Elementary School', '0000-00-00 00:00:00', 'true'),
(104, 'Ericson Academy Elementary School', '0000-00-00 00:00:00', 'true'),
(105, 'Kanoon Magnet Elementary School', '0000-00-00 00:00:00', 'true'),
(106, 'Gary Elementary School', '0000-00-00 00:00:00', 'true'),
(107, 'Ninos Heroes AC', '0000-00-00 00:00:00', 'true'),
(108, 'Hitch Elementary School', '0000-00-00 00:00:00', 'true'),
(109, 'Holmes Elementary School', '0000-00-00 00:00:00', 'true'),
(110, 'Lewis Elementary School', '0000-00-00 00:00:00', 'true'),
(111, 'Lowell Elementary School, James R', '0000-00-00 00:00:00', 'true'),
(112, 'Till Academy', '0000-00-00 00:00:00', 'true'),
(113, 'Moos Elementary School', '0000-00-00 00:00:00', 'true'),
(114, 'Morrill Elementary School', '0000-00-00 00:00:00', 'true'),
(115, 'Beard Elementary School', '0000-00-00 00:00:00', 'true'),
(116, 'Murray Lang Academy', '0000-00-00 00:00:00', 'true'),
(117, 'West Park Academy', '0000-00-00 00:00:00', 'true'),
(118, 'Parker Academy', '0000-00-00 00:00:00', 'true'),
(119, 'Peterson Elementary School', '0000-00-00 00:00:00', 'true'),
(120, 'Pickard Elementary School', '0000-00-00 00:00:00', 'true'),
(121, 'Reinberg Elementary School', '0000-00-00 00:00:00', 'true'),
(122, 'Sawyer Elementary School', '0000-00-00 00:00:00', 'true'),
(123, 'Scammon Elementary School', '0000-00-00 00:00:00', 'true'),
(124, 'Seward Academy', '0000-00-00 00:00:00', 'true'),
(125, 'Sexton Elementary School', '0000-00-00 00:00:00', 'true'),
(126, 'Mireles Academy Elementary School', '0000-00-00 00:00:00', 'true'),
(127, 'Shoop Academy', '0000-00-00 00:00:00', 'true'),
(128, 'Smyth Elementary School', '0000-00-00 00:00:00', 'true'),
(129, 'Swift Elementary School', '0000-00-00 00:00:00', 'true'),
(130, 'Talcott Elementary School', '0000-00-00 00:00:00', 'true'),
(131, 'Coleman Academy', '0000-00-00 00:00:00', 'true'),
(132, 'Tilton Elementary School', '0000-00-00 00:00:00', 'true'),
(133, 'Volta Elementary School', '0000-00-00 00:00:00', 'true'),
(134, 'Albany Park Campus', '0000-00-00 00:00:00', 'true'),
(135, 'Dvorak Academy', '0000-00-00 00:00:00', 'true'),
(136, 'Buckingham Center', '0000-00-00 00:00:00', 'true'),
(137, 'Ashburn Elementary School', '0000-00-00 00:00:00', 'true'),
(138, 'Westcott Elementary School', '0000-00-00 00:00:00', 'true'),
(139, 'Brighton Park Elementary School', '0000-00-00 00:00:00', 'true'),
(140, 'Roque de Duprey Elementary School', '0000-00-00 00:00:00', 'true'),
(141, 'Orozco Elementary School', '0000-00-00 00:00:00', 'true'),
(142, 'Ace Tech Campus', '0000-00-00 00:00:00', 'true'),
(143, 'Clemente Academy High School', '0000-00-00 00:00:00', 'true'),
(144, 'Skinner West ES', '0000-00-00 00:00:00', 'true'),
(145, 'Hernandez MS', '0000-00-00 00:00:00', 'true'),
(146, 'Dulles School of Excellence', '0000-00-00 00:00:00', 'true'),
(147, 'Hughes L ES', '0000-00-00 00:00:00', 'true'),
(148, 'Prieto ES', '0000-00-00 00:00:00', 'true'),
(149, 'South Shore Academy', '0000-00-00 00:00:00', 'true'),
(150, 'Westinghouse HS', '0000-00-00 00:00:00', 'true'),
(151, 'Cooper Elementary Dual Language Academy, Peter', '0000-00-00 00:00:00', 'true'),
(152, 'Clark Magnet High School', '0000-00-00 00:00:00', 'true'),
(153, 'Bethune Elementary School', '0000-00-00 00:00:00', 'true'),
(154, 'Blaine Elementary School', '0000-00-00 00:00:00', 'true'),
(155, 'Boone Elementary School', '0000-00-00 00:00:00', 'true'),
(156, 'Byrne Elementary School', '0000-00-00 00:00:00', 'true'),
(157, 'Carver Primary School', '0000-00-00 00:00:00', 'true'),
(158, 'Chappell Elementary School', '0000-00-00 00:00:00', 'true'),
(159, 'Chicago Academy High School', '0000-00-00 00:00:00', 'true'),
(160, 'Christopher Elementary School', '0000-00-00 00:00:00', 'true'),
(161, 'Daley Elementary Academy', '0000-00-00 00:00:00', 'true'),
(162, 'Dunbar Career Academy High School', '0000-00-00 00:00:00', 'true'),
(163, 'Dunne Elementary School', '0000-00-00 00:00:00', 'true'),
(164, 'Dvorak Elementary Specialty Academy', '0000-00-00 00:00:00', 'true'),
(165, 'Dyett High School', '0000-00-00 00:00:00', 'true'),
(166, 'Edward Coles Elementary Language Academy', '0000-00-00 00:00:00', 'true'),
(167, 'Farnsworth Elementary School', '0000-00-00 00:00:00', 'true'),
(168, 'Fort Dearborn Elementary School', '0000-00-00 00:00:00', 'true'),
(169, 'Garfield Park Preparatory Academy ES', '0000-00-00 00:00:00', 'true'),
(170, 'Garvy Elementary School, John W.', '0000-00-00 00:00:00', 'true'),
(171, 'Gregory Elementary School', '0000-00-00 00:00:00', 'true'),
(172, 'Hammond Elementary School', '0000-00-00 00:00:00', 'true'),
(173, 'Hancock College Preparatory High School', '0000-00-00 00:00:00', 'true'),
(174, 'Julian High School', '0000-00-00 00:00:00', 'true'),
(175, 'Kozminski Elementary Community Academy', '0000-00-00 00:00:00', 'true'),
(176, 'Lake View High School', '0000-00-00 00:00:00', 'true'),
(177, 'Marshall Metropolitan High School', '0000-00-00 00:00:00', 'true'),
(178, 'Nash Elementary School', '0000-00-00 00:00:00', 'true'),
(179, 'Ninos Heroes Elementary Academic Center', '0000-00-00 00:00:00', 'true'),
(180, 'Nixon Elementary School', '0000-00-00 00:00:00', 'true'),
(181, 'Ogden International High School', '0000-00-00 00:00:00', 'true'),
(182, 'Peirce International Studies ES', '0000-00-00 00:00:00', 'true'),
(183, 'Perez Elementary School', '0000-00-00 00:00:00', 'true'),
(184, 'Richards Career Academy High School', '0000-00-00 00:00:00', 'true'),
(185, 'Sabin Elementary Dual Language Magnet School', '0000-00-00 00:00:00', 'true'),
(186, 'Skinner North Classical Elementary', '0000-00-00 00:00:00', 'true'),
(187, 'Sullivan High School', '0000-00-00 00:00:00', 'true'),
(188, 'Talcott Elementary School', '0000-00-00 00:00:00', 'true'),
(189, 'Walsh Elementary School', '0000-00-00 00:00:00', 'true'),
(190, 'Ward Elementary School, James', '0000-00-00 00:00:00', 'true'),
(191, 'Beidler, Elementary School, Jacob', '0000-00-00 00:00:00', 'true'),
(192, 'Bennett Elementary School, Frank I', '0000-00-00 00:00:00', 'true'),
(193, 'Black Magnet Elementary School, Robert A ', '0000-00-00 00:00:00', 'true'),
(194, 'Black Magnet Elementary School, Robert A - Branch', '0000-00-00 00:00:00', 'true'),
(195, 'Brentano Math & Science Academy ES, Lorenz', '0000-00-00 00:00:00', 'true'),
(196, 'Burr Elementary School, Jonathan ', '0000-00-00 00:00:00', 'true'),
(197, 'Chase Elementary School, Salmon P', '0000-00-00 00:00:00', 'true'),
(198, 'Chavez Multicultural Academic Center ES, Cesar E - Lower Library', '0000-00-00 00:00:00', 'true'),
(199, 'Chavez Multicultural Academic Center ES, Cesar E', '0000-00-00 00:00:00', 'true'),
(200, 'Coonley Elementary School, John C.', '0000-00-00 00:00:00', 'true'),
(201, 'Disney Magnet Elementary School, Walt', '0000-00-00 00:00:00', 'true'),
(202, 'Durkin Park Elementary School', '0000-00-00 00:00:00', 'true'),
(203, 'Esmond Elementary School', '0000-00-00 00:00:00', 'true'),
(204, 'Falconer Elementary School, Laughlin', '0000-00-00 00:00:00', 'true'),
(205, 'Gage Park High School', '0000-00-00 00:00:00', 'true'),
(206, 'Gary Elementary School, Joseph E - New', '0000-00-00 00:00:00', 'true'),
(207, 'Gary Elementary School. Joseph E - Main', '0000-00-00 00:00:00', 'true'),
(208, 'Hale Elementary School, Nathan', '0000-00-00 00:00:00', 'true'),
(209, 'Hamilton Elementary School, Alexander', '0000-00-00 00:00:00', 'true'),
(210, 'Hanson Park Elementary School - Branch', '0000-00-00 00:00:00', 'true'),
(211, 'Hanson Park Elementary School - Main Library', '0000-00-00 00:00:00', 'true'),
(212, 'Harte Elementary School, Bret', '0000-00-00 00:00:00', 'true'),
(213, 'Hedges Elementary School, James ', '0000-00-00 00:00:00', 'true'),
(214, 'Inter-American Elementary Magnet School', '0000-00-00 00:00:00', 'true'),
(215, 'Juarez Community Academy High School, Benito', '0000-00-00 00:00:00', 'true'),
(216, 'Kenwood Academy High School', '0000-00-00 00:00:00', 'true'),
(217, 'LaSalle Elementary Language Academy', '0000-00-00 00:00:00', 'true'),
(218, 'Lindblom Math & Science Academy HS, Robert', '0000-00-00 00:00:00', 'true'),
(219, 'Logandale Middle School', '0000-00-00 00:00:00', 'true'),
(220, 'Lovett Elementary School, Joseph', '0000-00-00 00:00:00', 'true'),
(221, 'McAuliffe Elementary School, Sharon Christa', '0000-00-00 00:00:00', 'true'),
(222, 'McPherson ES', '0000-00-00 00:00:00', 'true'),
(223, 'Metcalfe Elementary Community Academy, Ralph H', '0000-00-00 00:00:00', 'true'),
(224, 'Morgan Park High School', '0000-00-00 00:00:00', 'true'),
(225, 'National Teachers Elementary Academy', '0000-00-00 00:00:00', 'true'),
(226, 'Newberry Math & Science Academy ES, Walter L.', '0000-00-00 00:00:00', 'true'),
(227, 'North Lawndale HS', '0000-00-00 00:00:00', 'true'),
(228, 'Ogden Elementary School, William B.', '0000-00-00 00:00:00', 'true'),
(229, 'Powell Academy Elementary School', '0000-00-00 00:00:00', 'true'),
(230, 'Powell Academy ES', '0000-00-00 00:00:00', 'true'),
(231, 'Pritzker School, A.N.', '0000-00-00 00:00:00', 'true'),
(232, 'Raby High School, Al', '0000-00-00 00:00:00', 'true'),
(233, 'Rudolph Elementary Learning Center, Wilma', '0000-00-00 00:00:00', 'true'),
(234, 'Ruiz Elementary School, Irma C', '0000-00-00 00:00:00', 'true'),
(235, 'Shoop Math-Science Technical Academy ES, John D ', '0000-00-00 00:00:00', 'true'),
(236, 'South Loop Elementary School', '0000-00-00 00:00:00', 'true'),
(237, 'Suder Montessori Magnet ES', '0000-00-00 00:00:00', 'true'),
(238, 'von Steuben Metropolitan Science HS, Friedrich W', '0000-00-00 00:00:00', 'true'),
(239, 'Washington High School, George', '0000-00-00 00:00:00', 'true'),
(240, 'Azuela Elementary School, Mariano', '0000-00-00 00:00:00', 'true'),
(241, 'Bradwell Communications Arts & Science ES, Myra', '0000-00-00 00:00:00', 'true'),
(242, 'Brennemann Elementary School, Joseph', '0000-00-00 00:00:00', 'true'),
(243, 'Calmeca Academy of Fine Arts and Dual Language', '0000-00-00 00:00:00', 'true'),
(244, 'Camras Elementary School, Marvin', '0000-00-00 00:00:00', 'true'),
(245, 'Clinton Elementary School, DeWitt', '0000-00-00 00:00:00', 'true'),
(246, 'Graham Training Center High School, Ray', '0000-00-00 00:00:00', 'true'),
(247, 'Lorca Elementary School, Federico Garcia', '0000-00-00 00:00:00', 'true'),
(248, 'Wadsworth Elementary School, James', '0000-00-00 00:00:00', 'true'),
(249, 'Zaragoza', '0000-00-00 00:00:00', 'true'),
(250, 'Parkman Elementary School, Francis', '0000-00-00 00:00:00', 'true'),
(251, 'Hammond Elementary School, Charles G', '0000-00-00 00:00:00', 'true'),
(252, 'Hale Elementary School, Nathan', '0000-00-00 00:00:00', 'true'),
(253, 'Washington Elementary School, George', '0000-00-00 00:00:00', 'true'),
(254, 'Solorio Academy High School, Eric', '0000-00-00 00:00:00', 'true'),
(255, 'Lorca Elementary School, Federico Garcia', '0000-00-00 00:00:00', 'true'),
(256, 'West Ridge Elementary School', '0000-00-00 00:00:00', 'true'),
(257, 'Fernwood Elementary School', '0000-00-00 00:00:00', 'true'),
(258, 'Woodson South Elementary School, Carter G', '0000-00-00 00:00:00', 'true'),
(259, 'Jefferson Alternative High School, Nancy B', '0000-00-00 00:00:00', 'true'),
(260, 'Galileo Math & Science Scholastic Academy', '0000-00-00 00:00:00', 'true'),
(261, 'Phillips Academy High School, Wendell', '0000-00-00 00:00:00', 'true'),
(262, 'Gillespie Elementary School, Frank L', '0000-00-00 00:00:00', 'true'),
(263, 'Lara Elementary Academy, Agustin', '0000-00-00 00:00:00', 'true'),
(264, 'Hibbard Elementary School, William G', '0000-00-00 00:00:00', 'true'),
(265, 'Funston Elementary School, Frederick', '0000-00-00 00:00:00', 'true'),
(266, 'Garvey Elementary School, Marcus Moziah', '0000-00-00 00:00:00', 'true'),
(267, 'Bowen High School', '0000-00-00 00:00:00', 'true'),
(268, 'Solomon Elementary School, Hannah G', '0000-00-00 00:00:00', 'true'),
(269, 'M. M. Garvey ES', '0000-00-00 00:00:00', 'true'),
(270, 'Sheridan (Mark) Math & Science Academy', '0000-00-00 00:00:00', 'true'),
(271, 'Kinzie Elementary School, John H', '0000-00-00 00:00:00', 'true'),
(272, 'Saucedo Elementary Scholastic Academy, Maria', '0000-00-00 00:00:00', 'true'),
(273, 'Belmont-Cragin', '0000-00-00 00:00:00', 'true'),
(274, 'Simeon Career Academy High School, Neal F', '0000-00-00 00:00:00', 'true'),
(275, 'Mather High School, Stephen T', '0000-00-00 00:00:00', 'true'),
(276, 'Roosevelt High School, Theodore', '0000-00-00 00:00:00', 'true'),
(277, 'Little Village Elementary School', '0000-00-00 00:00:00', 'true'),
(278, 'Lavizzo Elementary School, Mildred I', '0000-00-00 00:00:00', 'true'),
(279, 'Sandoval ES', '0000-00-00 00:00:00', 'true'),
(280, 'Chicago Academy Elementary School', '0000-00-00 00:00:00', 'true'),
(281, 'North River Elementary School', '0000-00-00 00:00:00', 'true'),
(282, 'Agassiz Elementary School, Louis A', '0000-00-00 00:00:00', 'true'),
(283, 'Carter Elementary School, William W', '0000-00-00 00:00:00', 'true'),
(284, 'Cook Elementary School, John W', '0000-00-00 00:00:00', 'true'),
(285, 'Dirksen Elementary School, Everett McKinley', '0000-00-00 00:00:00', 'true'),
(286, 'Everett Elementary School, Edward', '0000-00-00 00:00:00', 'true'),
(287, 'Goethe Elementary School, Johann W von', '0000-00-00 00:00:00', 'true'),
(288, 'Hawthorne Elementary Scholastic Academy', '0000-00-00 00:00:00', 'true'),
(289, 'Kelvyn Park High School', '0000-00-00 00:00:00', 'true'),
(290, 'Mount Greenwood Elementary School', '0000-00-00 00:00:00', 'true'),
(291, 'Wentworth Elementary School, Daniel S', '0000-00-00 00:00:00', 'true'),
(292, 'Dirksen Elementary School', '0000-00-00 00:00:00', 'true'),
(293, 'Chicago High School for Agricultural Sciences', '0000-00-00 00:00:00', 'true'),
(294, 'Ariel Elementary Community Academy', '0000-00-00 00:00:00', 'true'),
(295, 'Bogan High School, William J', '0000-00-00 00:00:00', 'true'),
(296, 'Brighton Park Elementary School', '0000-00-00 00:00:00', 'true'),
(297, 'Castellanos Elementary School, Rosario', '0000-00-00 00:00:00', 'true'),
(298, 'Claremont Academy Elementary School', '0000-00-00 00:00:00', 'true'),
(299, 'Cleveland Elementary School, Grover', '0000-00-00 00:00:00', 'true'),
(300, 'Corkery Elementary School, Daniel J', '0000-00-00 00:00:00', 'true'),
(301, 'Dever Elementary School', '0000-00-00 00:00:00', 'true'),
(302, 'Dodge Elementary Renaissance Academy, Mary Mapes', '0000-00-00 00:00:00', 'true'),
(303, 'Ebinger Elementary School, Christian', '0000-00-00 00:00:00', 'true'),
(304, 'Field Elementary School, Eugene', '0000-00-00 00:00:00', 'true'),
(305, 'Graham Elementary School, Alexander', '0000-00-00 00:00:00', 'true'),
(306, 'Hamline Elementary School, John H', '0000-00-00 00:00:00', 'true'),
(307, 'Henderson Elementary School, Charles R', '0000-00-00 00:00:00', 'true'),
(308, 'King Jr Academy of Social Justice, Dr. Martin L.', '0000-00-00 00:00:00', 'true'),
(309, 'Hope College Preparatory High School', '0000-00-00 00:00:00', 'true'),
(310, 'Jamieson Elementary School, Minnie Mars', '0000-00-00 00:00:00', 'true'),
(311, 'Lee Elementary School, Richard Henry', '0000-00-00 00:00:00', 'true'),
(312, 'Libby Elementary School, Arthur A ', '0000-00-00 00:00:00', 'true'),
(313, 'Linne Elementary School, Carl von', '0000-00-00 00:00:00', 'true'),
(314, 'Manierre Elementary School, George', '0000-00-00 00:00:00', 'true'),
(315, 'Marquette Elementary School', '0000-00-00 00:00:00', 'true'),
(316, 'Marsh Elementary School, John L', '0000-00-00 00:00:00', 'true'),
(317, 'McDade Elementary Classical School, James E', '0000-00-00 00:00:00', 'true'),
(318, 'Morton School of Excellence', '0000-00-00 00:00:00', 'true'),
(319, 'Namaste Charter Elementary School', '0000-00-00 00:00:00', 'true'),
(320, 'New Sullivan Elementary School, William K', '0000-00-00 00:00:00', 'true'),
(321, 'Nightingale Elementary School, Florence', '0000-00-00 00:00:00', 'true'),
(322, 'Pershing Elementary Humanities Magnet, John J', '0000-00-00 00:00:00', 'true'),
(323, 'Ray Elementary School ', '0000-00-00 00:00:00', 'true'),
(324, 'Sandoval Elementary School, Socorro', '0000-00-00 00:00:00', 'true'),
(325, 'Sayre Language Academy, Harriet', '0000-00-00 00:00:00', 'true'),
(326, 'Goudy Elementary School, William C', '0000-00-00 00:00:00', 'true'),
(327, 'Haugan Elementary School, Helge A', '0000-00-00 00:00:00', 'true'),
(328, 'Smyser Elementary School, Washington D', '0000-00-00 00:00:00', 'true'),
(329, 'South Shore International College Prep High School', '0000-00-00 00:00:00', 'true'),
(330, 'Spry & Community Links, John', '0000-00-00 00:00:00', 'true'),
(331, 'Stowe Elementary School, Harriet Beecher', '0000-00-00 00:00:00', 'true'),
(332, 'Tarkington School of Excellence ES', '0000-00-00 00:00:00', 'true'),
(333, 'Vanderpoel Elementary Magnet School, John H', '0000-00-00 00:00:00', 'true'),
(334, 'Von Humboldt Elementary School, Alexander', '0000-00-00 00:00:00', 'true'),
(335, 'Waters Elementary School, Thomas J', '0000-00-00 00:00:00', 'true'),
(336, 'White Elementary Career Academy, Edward', '0000-00-00 00:00:00', 'true'),
(337, 'Whittier Elementary School, John Greenleaf', '0000-00-00 00:00:00', 'true'),
(338, 'Woodlawn Community Elementary School', '0000-00-00 00:00:00', 'true'),
(339, 'Zapata Elementary Academy, Emiliano', '0000-00-00 00:00:00', 'true'),
(340, 'Fernwood Elementary School', '0000-00-00 00:00:00', 'true'),
(341, 'McKay Elementary School, Francis M', '0000-00-00 00:00:00', 'true'),
(342, 'Hayt Elementary School, Stephen K', '0000-00-00 00:00:00', 'true'),
(343, 'Alcott High School for the Humanities', '0000-00-00 00:00:00', 'true'),
(344, 'Agassiz Elementary School', '0000-00-00 00:00:00', 'true'),
(345, 'Canty Elementary School, Arthur E', '0000-00-00 00:00:00', 'true'),
(346, 'Cardenas Elementary School, Lazaro', '0000-00-00 00:00:00', 'true'),
(347, 'Chicago Vocational Career Academy High School', '0000-00-00 00:00:00', 'true'),
(348, 'Columbia Explorers Elementary Academy', '0000-00-00 00:00:00', 'true'),
(349, 'Edgebrook Elementary School', '0000-00-00 00:00:00', 'true'),
(350, 'Farragut Career Academy High School, David G', '0000-00-00 00:00:00', 'true'),
(351, 'Schubert Elementary School, Franz Peter ', '0000-00-00 00:00:00', 'true'),
(352, 'Schubert Elementary School, Franz Peter ', '0000-00-00 00:00:00', 'true'),
(353, 'Herzl Elementary School, Theodore', '0000-00-00 00:00:00', 'true'),
(354, 'Murphy Elementary School, John B', '0000-00-00 00:00:00', 'true'),
(355, 'Lafayette Elementary School, Jean D', '0000-00-00 00:00:00', 'true'),
(356, 'Melody Elementary School, Genevieve', '0000-00-00 00:00:00', 'true'),
(357, 'New Field Elementary School', '0000-00-00 00:00:00', 'true'),
(358, 'Cuffe Math-Science Technology Academy ES, Paul', '0000-00-00 00:00:00', 'true'),
(359, 'Portage Park Elementary School', '0000-00-00 00:00:00', 'true'),
(360, 'Prescott Elementary School, William H', '0000-00-00 00:00:00', 'true'),
(361, 'Ryerson Elementary School, Martin A', '0000-00-00 00:00:00', 'true'),
(362, 'Kelly High School, Thomas', '0000-00-00 00:00:00', 'true'),
(363, 'Young Magnet High School, Whitney M', '0000-00-00 00:00:00', 'true'),
(364, 'STEM Magnet Academy', '0000-00-00 00:00:00', 'true'),
(365, 'Stevenson Elementary School, Adlai E', '0000-00-00 00:00:00', 'true'),
(366, 'Talman Elementary School', '0000-00-00 00:00:00', 'true'),
(367, 'Drummond Elementary School, Thomas', '0000-00-00 00:00:00', 'true'),
(368, 'Brown Elementary Community Academy, Ronald', '0000-00-00 00:00:00', 'true'),
(369, 'Bright Elementary School, Orville T', '0000-00-00 00:00:00', 'true'),
(370, 'Ross Elementary School, Betsy', '0000-00-00 00:00:00', 'true'),
(371, 'White Elementary Career Academy, Edward', '0000-00-00 00:00:00', 'true'),
(372, 'Yates Elementary School, Richard', '0000-00-00 00:00:00', 'true'),
(373, 'Brunson Math & Science Specialty ES, Brunson', '0000-00-00 00:00:00', 'true'),
(374, 'Burley Elementary School, Augustus H', '0000-00-00 00:00:00', 'true'),
(375, 'Evergreen Academy Middle School', '0000-00-00 00:00:00', 'true'),
(376, 'Foreman High School , Edwin G', '0000-00-00 00:00:00', 'true'),
(377, 'Gray Elementary School, William P', '0000-00-00 00:00:00', 'true'),
(378, 'Neil Elementary School, Jane A', '0000-00-00 00:00:00', 'true'),
(379, 'Nobel Elementary School, Alfred', '0000-00-00 00:00:00', 'true'),
(380, 'Northwest Middle School', '0000-00-00 00:00:00', 'true'),
(381, 'Stone Elementary Scholastic Academy', '0000-00-00 00:00:00', 'true'),
(382, 'Tonti Elementary School, Enrico', '0000-00-00 00:00:00', 'true'),
(383, 'McCutcheon Elementary School, John T', '0000-00-00 00:00:00', 'true'),
(384, 'Instituto Health Sciences Career Academy HS', '0000-00-00 00:00:00', 'true'),
(385, 'Bateman Elementary School, Newton', '0000-00-00 00:00:00', 'true'),
(386, 'Beasley Elementary Magnet Academic Center, Edward', '0000-00-00 00:00:00', 'true'),
(387, 'Burroughs Elementary School, John C', '0000-00-00 00:00:00', 'true'),
(388, 'Esmond Elementary School', '0000-00-00 00:00:00', 'true'),
(389, 'Fermi Elementary School , Enrico', '0000-00-00 00:00:00', 'true'),
(390, 'Lincoln Elementary School, Abraham', '0000-00-00 00:00:00', 'true'),
(391, 'North-Grand High School', '0000-00-00 00:00:00', 'true'),
(392, 'Pilsen Elementary Community Academy', '0000-00-00 00:00:00', 'true'),
(393, 'Wildwood Elementary School', '0000-00-00 00:00:00', 'true'),
(394, 'Chicago Quest North', '0000-00-00 00:00:00', 'true'),
(395, 'Learn South', '0000-00-00 00:00:00', 'true'),
(396, 'King Jr College Prep HS, Dr Martin Luther', '0000-00-00 00:00:00', 'true'),
(397, 'Shields Middle School, James', '0000-00-00 00:00:00', 'true'),
(398, 'Bell Elementary School, Alexander Graham', '0000-00-00 00:00:00', 'true'),
(399, 'Falconer Elementary School, Laughlin', '0000-00-00 00:00:00', 'true'),
(400, 'Stewart Elementary School, Graeme', '0000-00-00 00:00:00', 'true'),
(401, 'Randolph Elementary School, Asa Philip', '0000-00-00 00:00:00', 'true'),
(402, 'Burbank Elementary School, Luther', '0000-00-00 00:00:00', 'true'),
(403, 'Holden Elementary School, Charles N', '0000-00-00 00:00:00', 'true'),
(404, 'Burley Elementary School, Augustus H', '0000-00-00 00:00:00', 'true'),
(405, 'Marine Leadership Academy', '0000-00-00 00:00:00', 'true'),
(406, 'Lyon Elementary School, Mary', '0000-00-00 00:00:00', 'true'),
(407, 'Carnegie Elementary School, Andrew', '0000-00-00 00:00:00', 'true'),
(408, 'Healy Elementary School, Robert', '0000-00-00 00:00:00', 'true'),
(409, 'Black Magnet Elementary School, Robert A', '0000-00-00 00:00:00', 'true'),
(410, 'Rogers Elementary School , Philip', '0000-00-00 00:00:00', 'true'),
(411, 'Montefiore Special Elementary School, Moses', '0000-00-00 00:00:00', 'true'),
(412, 'Haines Elementary School, John Charles', '0000-00-00 00:00:00', 'true'),
(413, 'Carson Elementary School, Rachel', '0000-00-00 00:00:00', 'true'),
(414, 'Finkl Elementary School, William F', '0000-00-00 00:00:00', 'true'),
(415, 'Henry Elementary School, Patrick', '0000-00-00 00:00:00', 'true'),
(416, 'McNair Elementary School, Ronald E', '0000-00-00 00:00:00', 'true'),
(417, 'Penn Elementary School, William', '0000-00-00 00:00:00', 'true'),
(418, 'Reavis Math & Science Specialty ES, William C', '0000-00-00 00:00:00', 'true'),
(419, 'Gallistel Elementary Language Academy, Mathew', '0000-00-00 00:00:00', 'true'),
(420, 'Ellington Elementary School, Edward K', '0000-00-00 00:00:00', 'true'),
(421, 'Burnside Elementary Scholastic Academy', '0000-00-00 00:00:00', 'true'),
(422, 'Brighton Park Elementary School', '0000-00-00 00:00:00', 'true'),
(423, 'Addams Elementary School, Jane', '0000-00-00 00:00:00', 'true'),
(424, 'Taylor Elementary School , Douglas', '0000-00-00 00:00:00', 'true'),
(425, 'Davis Elementary School, Nathan S', '0000-00-00 00:00:00', 'true'),
(426, 'Jones College Preparatory High School , William', '0000-00-00 00:00:00', 'true'),
(427, 'Monroe Elementary School, James', '0000-00-00 00:00:00', 'true'),
(428, 'Kellogg Elementary School , Kate S', '0000-00-00 00:00:00', 'true'),
(429, 'Sumner Math & Science Community Acad ES, Charles', '0000-00-00 00:00:00', 'true'),
(430, 'Mount Vernon Elementary School ', '0000-00-00 00:00:00', 'true'),
(431, 'Colemon Elementary Academy, Johnnie', '0000-00-00 00:00:00', 'true'),
(432, 'McCormick Elementary School, Cyrus H', '0000-00-00 00:00:00', 'true'),
(433, 'Hubbard High School, Gurdon S', '0000-00-00 00:00:00', 'true'),
(434, 'Jenner Elementary Academy of the Arts, Edward', '0000-00-00 00:00:00', 'true'),
(435, 'Leland Elementary School, George', '0000-00-00 00:00:00', 'true'),
(436, 'Faraday Elementary School, Michael', '0000-00-00 00:00:00', 'true'),
(437, 'Kellman Corporate Community ES, Joseph', '0000-00-00 00:00:00', 'true'),
(438, 'Wells Preparatory Elementary Academy, Ida B', '0000-00-00 00:00:00', 'true'),
(439, 'Ward Elementary School, Laura S', '0000-00-00 00:00:00', 'true'),
(440, 'Fiske Elementary School , John', '0000-00-00 00:00:00', 'true'),
(441, 'Harvard Elementary School of Excellence, John', '0000-00-00 00:00:00', 'true'),
(442, 'Air Force Academy High School', '0000-00-00 00:00:00', 'true'),
(443, 'ASPIRA Charter - Haugan Campus', '0000-00-00 00:00:00', 'true'),
(444, 'Intrinsic Schools', '0000-00-00 00:00:00', 'true'),
(445, 'Hearst Elementary School, Phobe Apperson', '0000-00-00 00:00:00', 'true'),
(446, 'Alcott Elementary School, Louisa May', '0000-00-00 00:00:00', 'true'),
(447, 'Dixon Elementary School, Arthur', '0000-00-00 00:00:00', 'true'),
(448, 'Lane Technical High School, Albert G', '0000-00-00 00:00:00', 'true'),
(449, 'North Lawndale College Prep Charter', '0000-00-00 00:00:00', 'true'),
(450, 'Steinmetz College Preparatory HS, Charles P', '0000-00-00 00:00:00', 'true'),
(451, 'Chicago Intl Charter - Northtown', '0000-00-00 00:00:00', 'true'),
(452, 'Mitchell Elementary School, Ellen', '0000-00-00 00:00:00', 'true'),
(453, 'Turner-Drew Elementary Language Academy', '0000-00-00 00:00:00', 'true'),
(454, 'Shields Elementary School, James', '0000-00-00 00:00:00', 'true'),
(455, 'Dubois Elementary School, William E B', '0000-00-00 00:00:00', 'true'),
(456, 'Marine Leadership Academy at Ames', '0000-00-00 00:00:00', 'true'),
(457, 'Gresham Elementary School, Walter Q', '0000-00-00 00:00:00', 'true'),
(458, 'Langford Community Academy, Anna R', '0000-00-00 00:00:00', 'true'),
(459, 'Earhart Options for Knowledge ES, Amelia', '0000-00-00 00:00:00', 'true'),
(460, 'Gage Park High School', '0000-00-00 00:00:00', 'true'),
(461, 'Chicago High School for the Arts', '0000-00-00 00:00:00', 'true'),
(462, 'Mireles Elementary Academy, Arnold', '0000-00-00 00:00:00', 'true'),
(463, 'Fulton Elementary School, Robert', '0000-00-00 00:00:00', 'true'),
(464, 'Goode STEM Academy, Sarah E.', '0000-00-00 00:00:00', 'true'),
(465, 'Back of the Yards High School', '0000-00-00 00:00:00', 'true'),
(466, 'Prosser Career Academy High School, Charles Allen', '0000-00-00 00:00:00', 'true'),
(467, 'Oglesby Elementary School, Richard J', '0000-00-00 00:00:00', 'true');

-- --------------------------------------------------------

--
-- Table structure for table `navigation`
--

CREATE TABLE `navigation` (
  `id` int(11) NOT NULL,
  `sort` int(11) NOT NULL DEFAULT '0',
  `name` text NOT NULL,
  `url` text NOT NULL,
  `catid` int(11) NOT NULL DEFAULT '29',
  `section` text NOT NULL,
  `win` text NOT NULL,
  `loc_id` int(11) NOT NULL,
  `datetime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `navigation`
--

INSERT INTO `navigation` (`id`, `sort`, `name`, `url`, `catid`, `section`, `win`, `loc_id`, `datetime`) VALUES
(37, 1, 'Contact Us', 'contact.php?loc_id=1', 47, 'Footer', 'false', 1, '0000-00-00 00:00:00'),
(43, 3, 'Careers', 'page.php?page_id=28&loc_id=1', 0, 'Top', 'false', 1, '0000-00-00 00:00:00'),
(44, 4, 'Meet The Team', 'team.php?loc_id=1', 0, 'Top', 'false', 1, '0000-00-00 00:00:00'),
(45, 2, 'Services', '#', 47, 'Top', 'false', 1, '2016-12-13 15:50:39'),
(48, 3, 'Positions', 'page.php?page_id=34&loc_id=1', 46, 'Footer', 'false', 1, '0000-00-00 00:00:00'),
(50, 2, 'Services', 'services.php?loc_id=1', 47, 'Footer', 'false', 1, '0000-00-00 00:00:00'),
(51, 4, 'About', 'about.php?loc_id=1', 46, 'Footer', 'false', 1, '0000-00-00 00:00:00'),
(52, 5, 'Instructables', '#', 0, 'Footer', 'true', 1, '0000-00-00 00:00:00'),
(54, 1, 'About', 'about.php?loc_id=1', 0, 'Top', 'false', 1, '0000-00-00 00:00:00'),
(56, 5, 'Contact', 'contact.php?loc_id=1', 0, 'Top', 'false', 1, '0000-00-00 00:00:00'),
(57, 1, 'Test Link', '#', 0, 'Top', 'true', 2, '0000-00-00 00:00:00'),
(58, 2, 'Test location 2', 'page.php?page_id=35&loc_id=2', 0, 'Top', 'true', 2, '0000-00-00 00:00:00'),
(59, 0, 'Contact', 'contact.php?loc_id=2', 0, 'Top', 'off', 2, '0000-00-00 00:00:00'),
(60, 1, 'Databases', 'databases.php?loc_id=1', 47, 'Top', 'false', 1, '2016-12-13 15:50:39'),
(61, 1, 'LS2PAC', 'https://pac.library.cps.edu/?config=1#section=home', 0, 'Search', 'true', 1, '0000-00-00 00:00:00'),
(62, 2, 'LS2Kids', 'https://pac.library.cps.edu/?config=1#section=home', 0, 'Search', 'true', 1, '0000-00-00 00:00:00'),
(63, 3, 'Help', 'http://ls2pachelp.tlcdelivers.com/3_3_0/UserApp/LS2PAC.htm', 0, 'Search', 'true', 1, '0000-00-00 00:00:00'),
(64, 1, 'LS2PAC', '#', 0, 'Search', 'off', 2, '0000-00-00 00:00:00'),
(65, 2, 'LS2Kids', '#', 0, 'Search', 'off', 2, '0000-00-00 00:00:00'),
(66, 3, 'Help', '#', 0, 'Search', 'off', 2, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL,
  `image` text NOT NULL,
  `content` text NOT NULL,
  `active` text NOT NULL,
  `disqus` text NOT NULL,
  `datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `image_align` text NOT NULL,
  `loc_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `title`, `image`, `content`, `active`, `disqus`, `datetime`, `image_align`, `loc_id`) VALUES
(28, 'Join Our Team', '', '<p>Our work is driven&nbsp;by challenges that impact communities across our country and around the world. That is a&nbsp;nice way of saying that we are solving some of the toughest issues facing the public sector.&nbsp;How are we doing it? Through&nbsp;<strong style="box-sizing: border-box;">building the best team in the&nbsp;industry</strong>.</p>\r\n<p>Our team consists of developers, architects, data analysts, requirements gatherers, project managers, support engineers and much more.</p>\r\n<p><a href="page.php?ref=34">View Open Positions</a></p>', 'true', 'false', '2016-11-15 21:00:35', 'right', 1),
(33, 'Trusted by 15 of the 20 Largest Urban Areas to Make Smarter Risk Informed Decisions', 'budget2015.jpg', '<p>From federal, state and local law enforcement agencies to school districts, our products create an informed network of security experts that help ensure the safety of our communities.</p>\r\n<p>The&nbsp;provides a robust suite of applications that connects the front-line elements of the public safety community through data collection, prioritization, presentation and analysis. It is currently one of the most widely deployed solution in the nation&nbsp;and trusted by first responders to provide the right information at the right time, to do the right thing to keep themselves and their citizens safe</p>', 'true', 'false', '2016-12-12 19:32:03', 'right', 1),
(34, 'Positions', 'Ubuntu-Mate-Radioactive-no-logo.png', '<p>Job posting appear here if available.</p>', 'true', 'false', '2016-11-15 20:21:02', 'right', 1),
(35, 'Test location 2', 'CPSVisionBanner_TV.jpg', '<p>test</p>', 'true', 'false', '2016-12-12 18:57:44', 'left', 2),
(36, 'Test location 4', '', '', 'true', 'false', '2016-11-15 21:00:22', 'right', 1),
(37, 'Test location 5', '', '<p>test</p>', 'true', 'false', '2016-11-15 21:00:10', 'right', 1),
(38, 'Test location 6666', '', '<p>test test</p>', 'true', 'false', '2016-11-15 20:59:25', 'right', 1),
(39, 'test ', 'Ubuntu-Mate-Radioactive-no-logo.png', '<p>test</p>', 'true', 'false', '2016-11-15 14:05:23', 'right', 1),
(40, 'adfasdfasdfasdf', 'Ubuntu-Mate-Radioactive-no-logo.png', '<p>asdfasdf</p>', 'true', 'false', '2016-11-15 14:02:49', 'right', 1),
(41, 'hjkgjkghjkgjkghjk', 'Ubuntu-Mate-Radioactive-no-logo.png', '<p>hjkghjkgjhkgjkghkjasdfasdfasf</p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>asdfasdf</p>\r\n<p>&nbsp;</p>\r\n<p>asdfasdf</p>\r\n<p>adsfadsf</p>', 'true', 'false', '2016-11-15 20:20:33', 'right', 1);

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` int(11) NOT NULL,
  `icon` text NOT NULL,
  `image` text NOT NULL,
  `title` text NOT NULL,
  `content` text NOT NULL,
  `link` int(11) NOT NULL,
  `active` text NOT NULL,
  `datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `loc_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `icon`, `image`, `title`, `content`, `link`, `active`, `datetime`, `loc_id`) VALUES
(2, 'address-card', '', 'PUBLIC SAFETY APPLICATIONS', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', 28, 'true', '2016-11-14 22:04:13', 1),
(3, 'id-badge', '', 'SITUATIONAL AWARENESS', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', 33, 'true', '2016-11-15 20:32:50', 1),
(4, 'bicycle', '', 'INNOVATION CONSULTING', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', 33, 'true', '2016-11-15 21:43:58', 1),
(5, '', 'webide.png', 'INSIDER THREAT DETECTION', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', 36, 'true', '2016-12-12 20:59:55', 1),
(6, 'address-card', '', 'PUBLIC SAFETY APPLICATIONS', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', 28, 'true', '2016-11-14 22:04:13', 2),
(7, 'id-badge', '', 'SITUATIONAL AWARENESS', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', 33, 'true', '2016-11-15 20:32:50', 2),
(8, 'bicycle', '', 'INNOVATION CONSULTING', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', 33, 'true', '2016-11-15 21:43:58', 2),
(9, '', 'webide.png', 'INSIDER THREAT DETECTION', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', 36, 'true', '2016-11-29 14:49:35', 2);

-- --------------------------------------------------------

--
-- Table structure for table `services_icons`
--

CREATE TABLE `services_icons` (
  `id` int(11) NOT NULL,
  `icon` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `services_icons`
--

INSERT INTO `services_icons` (`id`, `icon`) VALUES
(1, 'diamond'),
(2, 'paper-plane'),
(3, 'motorcycle'),
(4, 'ship'),
(7, 'birthday-cake'),
(8, 'paint-brush'),
(9, 'eyedropper'),
(10, 'area-chart'),
(11, 'pie-chart'),
(12, 'line-chart'),
(13, 'bus'),
(14, 'bicycle'),
(15, 'buysellads'),
(16, 'connectdevelop'),
(17, 'shirtsinbulk'),
(18, 'simplybuilt'),
(19, 'skyatlas'),
(20, 'cart-plus'),
(21, 'server'),
(22, 'user-plus'),
(23, 'hotel'),
(24, 'bed'),
(25, 'train'),
(26, 'subway'),
(27, 'car'),
(28, 'cab'),
(29, 'taxi'),
(30, 'truck'),
(31, 'wrench'),
(32, 'compass'),
(33, 'bullseye'),
(34, 'check-square'),
(35, 'pencil-square'),
(36, 'dollar'),
(37, 'recycle'),
(38, 'tree'),
(39, 'bomb'),
(40, 'heartbeat'),
(41, 'child'),
(42, 'space-shuttle'),
(43, 'male'),
(44, 'map-marker'),
(45, 'copyright'),
(46, 'building'),
(47, 'female'),
(49, 'cogs'),
(50, 'clipboard'),
(51, 'database'),
(52, 'money'),
(55, 'print'),
(56, 'cc-visa'),
(57, 'cc-mastercard'),
(58, 'laptop'),
(60, 'book'),
(61, 'bookmark'),
(63, 'calendar'),
(64, 'drivers-license'),
(65, 'support'),
(66, 'address-card'),
(67, 'address-book'),
(68, 'braille'),
(69, 'cloud'),
(70, 'credit-card'),
(72, 'television'),
(73, 'magic'),
(76, 'lightbulb-o'),
(77, 'question'),
(78, 'wifi'),
(79, 'music'),
(80, 'video-camera'),
(81, 'picture-o'),
(82, 'podcast'),
(83, 'wpexplorer'),
(84, 'telegram'),
(85, 'grav'),
(86, 'snowflake-o'),
(87, 'id-badge');

-- --------------------------------------------------------

--
-- Table structure for table `setup`
--

CREATE TABLE `setup` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL,
  `keywords` text NOT NULL,
  `description` text NOT NULL,
  `headercode` text NOT NULL,
  `config` text NOT NULL,
  `logo` text NOT NULL,
  `ls2pac` text NOT NULL,
  `ls2kids` text NOT NULL,
  `searchdefault` int(11) NOT NULL,
  `author` text NOT NULL,
  `googleanalytics` text NOT NULL,
  `tinymce` int(11) NOT NULL DEFAULT '1',
  `pageheading` text NOT NULL,
  `servicesheading` text NOT NULL,
  `sliderheading` text NOT NULL,
  `teamheading` text NOT NULL,
  `customersheading` text NOT NULL,
  `databasesheading` text NOT NULL,
  `servicescontent` text NOT NULL,
  `customerscontent` text NOT NULL,
  `databasescontent` text NOT NULL,
  `teamcontent` text NOT NULL,
  `disqus` text NOT NULL,
  `datetime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `loc_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `setup`
--

INSERT INTO `setup` (`id`, `title`, `keywords`, `description`, `headercode`, `config`, `logo`, `ls2pac`, `ls2kids`, `searchdefault`, `author`, `googleanalytics`, `tinymce`, `pageheading`, `servicesheading`, `sliderheading`, `teamheading`, `customersheading`, `databasesheading`, `servicescontent`, `customerscontent`, `databasescontent`, `teamcontent`, `disqus`, `datetime`, `loc_id`) VALUES
(1, 'CPS', '', '', '', '1', 'webide.png', 'true', 'true', 1, '', '', 1, 'Pages', 'Services', 'Slides', 'Meet the Team', 'Databases', '', '', '', '', '', '', '0000-00-00 00:00:00', 1),
(2, 'Curie Metro High School', '', '', '', '1820', '', 'true', 'true', 1, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 2),
(3, 'Northside Prep High School', '', '', '', '1740', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 3),
(4, 'Hyde Park High School', '', '', '', '1390', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 4),
(5, 'Crane Tech Prep', '', '', '', '1270', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 5),
(6, 'DuSable Campus', '', '', '', '1280', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 6),
(7, 'Amundsen High School', '', '', '', '1210', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 7),
(8, 'Professional Library', '', '', '', '390', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 8),
(9, 'Amundsen High School', '', '', '', '1210', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 7),
(10, 'Barry Elementary School', '', '', '', '2160', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 10),
(11, 'Belding Elementary School', '', '', '', '2260', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 11),
(12, 'Budlong Elementary School', '', '', '', '2440', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 12),
(13, 'Caldwell Academy', '', '', '', '2580', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 13),
(14, 'Clissold Elementary School', '', '', '', '2820', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 14),
(15, 'Franklin Fine Arts', '', '', '', '3420', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 15),
(16, 'Fulton Elementary School', '', '', '', '3450', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 16),
(17, 'Kohn Elementary School', '', '', '', '4360', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 17),
(18, 'Locke Elementary School', '', '', '', '4510', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 18),
(19, 'May Community', '', '', '', '4670', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 19),
(20, 'Jackson Language', '', '', '', '4690', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 20),
(21, 'Mt. Vernon Elementary School', '', '', '', '4980', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 21),
(22, 'Mozart Elementary School', '', '', '', '5000', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 22),
(23, 'The Nettelhorst School', '', '', '', '5070', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 23),
(24, 'Sandoval Elementary School , Socorro', '', '', '', '0', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 24),
(25, 'Hurley Elementary School , Edward N', '', '', '', '4120', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 25),
(26, 'Norwood Park Elementary School', '', '', '', '5120', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 26),
(27, 'Onahan Elementary School', '', '', '', '5190', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 27),
(28, 'Palmer Elementary School', '', '', '', '5260', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 28),
(29, 'Pirie Elementary School', '', '', '', '5440', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 29),
(30, 'Reilly Elementary School', '', '', '', '5590ALL', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 30),
(31, 'Frazier Int. Magnet', '', '', '', '5850', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 31),
(32, 'Thorp Academy', '', '', '', '6190', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 32),
(33, 'Twain Elementary School', '', '', '', '6240', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 33),
(34, 'Whistler Elementary School, John', '', '', '', '6420', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 34),
(35, 'Whitney Elementary School', '', '', '', '6440ALL', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 35),
(36, 'Douglass Academy', '', '', '', '6630', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 36),
(37, 'Price Elementary School', '', '', '', '6810', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 37),
(38, 'Johnson Elementary School', '', '', '', '6940', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 38),
(39, 'Davis Academy', '', '', '', '7180', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 39),
(40, 'Higgins Community', '', '', '', '7210', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 40),
(41, 'Grant Campus', '', '', '', '7310', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 41),
(42, 'Marshall Middle School', '', '', '', '7520', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 42),
(43, 'LaSalle II Magnet', '', '', '', '8040', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 43),
(44, 'DePriest Elementary School', '', '', '', '8050', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 44),
(45, 'Harlan High School', '', '', '', '1350', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 45),
(46, 'Tilden High School', '', '', '', '1590', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 46),
(47, 'Vaughn Occ High School', '', '', '', '1920', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 47),
(48, 'Uplift Community High School', '', '', '', '2210', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 48),
(49, 'Haley Academy Elementary School', '', '', '', '2360', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 49),
(50, 'Cameron Elementary School', '', '', '', '2610', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 50),
(51, 'Copernicus Elementary School', '', '', '', '2900', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 51),
(52, 'Gale Academy', '', '', '', '3480', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 52),
(53, 'Greene Elementary School', '', '', '', '3650', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 53),
(54, 'Gunsaulus Academy', '', '', '', '3690', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 54),
(55, 'Kershaw Elementary School', '', '', '', '4270', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 55),
(56, 'Lloyd Elementary School', '', '', '', '4500', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 56),
(57, 'Mayer Magnet', '', '', '', '4680', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 57),
(58, 'Keller Magnet Elementary School', '', '', '', '4960', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 58),
(59, 'Owen Academy', '', '', '', '5240', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 59),
(60, 'Pasteur Elementary School', '', '', '', '5310', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 60),
(61, 'Prussing Elementary School', '', '', '', '5510', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 61),
(62, 'Pulaski International School of Chicago', '', '', '', '5520', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 62),
(63, 'Armstrong L Elementary School', '', '', '', '5700', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 63),
(64, 'Spencer Academy', '', '', '', '6000', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 64),
(65, 'Stockton Elementary School', '', '', '', '6060', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 65),
(66, 'Trumbull Elementary School', '', '', '', '6230', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 66),
(67, 'Banneker Elementary School', '', '', '', '6880', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 67),
(68, 'Dumas Elementary School', '', '', '', '6890', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 68),
(69, 'Woods Academy Elementary School', '', '', '', '7080', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 69),
(70, 'Lenart Gifted', '', '', '', '7240', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 70),
(71, 'Payton Coll Prep High School', '', '', '', '1090', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 71),
(72, 'Little Village High School Campus', '', '', '', '1130', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 72),
(73, 'Hancock Coll Prep', '', '', '', '1200', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 73),
(74, 'Fenger High School', '', '', '', '1310', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 74),
(75, 'Robeson High School', '', '', '', '1320', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 75),
(76, 'Hirsch Metro High School', '', '', '', '1380', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 76),
(77, 'Kennedy High School', '', '', '', '1420', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 77),
(78, 'Lake View High School', '', '', '', '1430', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 78),
(79, 'Manley High School', '', '', '', '1460', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 79),
(80, 'Brooks Coll Prep High School', '', '', '', '1500', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 80),
(81, 'Schurz High School', '', '', '', '1530', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 81),
(82, 'Senn Campus', '', '', '', '1540', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 82),
(83, 'Taft High School', '', '', '', '1580', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 83),
(84, 'Lincoln Park High School', '', '', '', '1620', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 84),
(85, 'Wells Academy High School', '', '', '', '1640', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 85),
(86, 'Chicago Military High School', '', '', '', '1800', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 86),
(87, 'Orr Academy High School', '', '', '', '1830', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 87),
(88, 'Carver Military High School', '', '', '', '1850', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 88),
(89, 'Corliss High School', '', '', '', '1860', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 89),
(90, 'Armstrong G Elementary School', '', '', '', '2080', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 90),
(91, 'Beaubien Elementary School', '', '', '', '2240', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 91),
(92, 'Bradwell Elementary School', '', '', '', '2340', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 92),
(93, 'Bridge Elementary School', '', '', '', '2380', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 93),
(94, 'Cassell Elementary School', '', '', '', '2720', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 94),
(95, 'Greeley Elementary School', '', '', '', '2730', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 95),
(96, 'Clay Elementary School', '', '', '', '2790', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 96),
(97, 'Clinton Elementary School', '', '', '', '2810', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 97),
(98, 'Coles Academy', '', '', '', '2830', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 98),
(99, 'Columbus Elementary School', '', '', '', '2850', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 99),
(100, 'Jordan Community', '', '', '', '2870', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 100),
(101, 'Eberhart Elementary School', '', '', '', '3140', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 101),
(102, 'Edwards Elementary School', '', '', '', '3200', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 102),
(103, 'Emmet Elementary School', '', '', '', '3230', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 103),
(104, 'Ericson Academy Elementary School', '', '', '', '3240', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 104),
(105, 'Kanoon Magnet Elementary School', '', '', '', '3370', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 105),
(106, 'Gary Elementary School', '', '', '', '3520', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 106),
(107, 'Ninos Heroes AC', '', '', '', '3720', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 107),
(108, 'Hitch Elementary School', '', '', '', '4010', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 108),
(109, 'Holmes Elementary School', '', '', '', '4030', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 109),
(110, 'Lewis Elementary School', '', '', '', '4450', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 110),
(111, 'Lowell Elementary School, James R', '', '', '', '4540', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 111),
(112, 'Till Academy', '', '', '', '4740', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 112),
(113, 'Moos Elementary School', '', '', '', '4870', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 113),
(114, 'Morrill Elementary School', '', '', '', '4880', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 114),
(115, 'Beard Elementary School', '', '', '', '4950', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 115),
(116, 'Murray Lang Academy', '', '', '', '5030', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 116),
(117, 'West Park Academy', '', '', '', '5140', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 117),
(118, 'Parker Academy', '', '', '', '5270', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 118),
(119, 'Peterson Elementary School', '', '', '', '5410', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 119),
(120, 'Pickard Elementary School', '', '', '', '5430', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 120),
(121, 'Reinberg Elementary School', '', '', '', '5600', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 121),
(122, 'Sawyer Elementary School', '', '', '', '5710', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 122),
(123, 'Scammon Elementary School', '', '', '', '5730', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 123),
(124, 'Seward Academy', '', '', '', '5820', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 124),
(125, 'Sexton Elementary School', '', '', '', '5830', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 125),
(126, 'Mireles Academy Elementary School', '', '', '', '5880', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 126),
(127, 'Shoop Academy', '', '', '', '5930', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 127),
(128, 'Smyth Elementary School', '', '', '', '5970ALL', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 128),
(129, 'Swift Elementary School', '', '', '', '6130', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 129),
(130, 'Talcott Elementary School', '', '', '', '6140', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 130),
(131, 'Coleman Academy', '', '', '', '6170', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 131),
(132, 'Tilton Elementary School', '', '', '', '6210', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 132),
(133, 'Volta Elementary School', '', '', '', '6270', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 133),
(134, 'Albany Park Campus', '', '', '', '6290', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 134),
(135, 'Dvorak Academy', '', '', '', '6760', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 135),
(136, 'Buckingham Center', '', '', '', '6980', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 136),
(137, 'Ashburn Elementary School', '', '', '', '7100', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 137),
(138, 'Westcott Elementary School', '', '', '', '7260', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 138),
(139, 'Brighton Park Elementary School', '', '', '', '0', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 139),
(140, 'Roque de Duprey Elementary School', '', '', '', '7510', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 140),
(141, 'Orozco Elementary School', '', '', '', '7610', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 141),
(142, 'Ace Tech Campus', '', '', '', '7950', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 142),
(143, 'Clemente Academy High School', '', '', '', '1840', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 143),
(144, 'Skinner West ES', '', '', '', '5940', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 144),
(145, 'Hernandez MS', '', '', '', '8021', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 145),
(146, 'Dulles School of Excellence', '', '', '', '6860', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 146),
(147, 'Hughes L ES', '', '', '', '8060', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 147),
(148, 'Prieto ES', '', '', '', '8023', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 148),
(149, 'South Shore Academy', '', '', '', '2015', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 149),
(150, 'Westinghouse HS', '', '', '', '1160', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 150),
(151, 'Cooper Elementary Dual Language Academy, Peter', '', '', '', '2890', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 151),
(152, 'Clark Magnet High School', '', '', '', '6620', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 152),
(153, 'Bethune Elementary School', '', '', '', '8020', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 153),
(154, 'Blaine Elementary School', '', '', '', '2300', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 154),
(155, 'Boone Elementary School', '', '', '', '2320', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 155),
(156, 'Byrne Elementary School', '', '', '', '2570', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 156),
(157, 'Carver Primary School', '', '', '', '2690', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 157),
(158, 'Chappell Elementary School', '', '', '', '2750', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 158),
(159, 'Chicago Academy High School', '', '', '', '7770', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 159),
(160, 'Christopher Elementary School', '', '', '', '2780', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 160),
(161, 'Daley Elementary Academy', '', '', '', '6560', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 161),
(162, 'Dunbar Career Academy High School', '', '', '', '1030', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 162),
(163, 'Dunne Elementary School', '', '', '', '6050ALL', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 163),
(164, 'Dvorak Elementary Specialty Academy', '', '', '', '6760', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 164),
(165, 'Dyett High School', '', '', '', '1600', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 165),
(166, 'Edward Coles Elementary Language Academy', '', '', '', '2830', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 166),
(167, 'Farnsworth Elementary School', '', '', '', '3280', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 167),
(168, 'Fort Dearborn Elementary School', '', '', '', '3400', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 168),
(169, 'Garfield Park Preparatory Academy ES', '', '', '', '8064', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 169),
(170, 'Garvy Elementary School, John W.', '', '', '', '3510', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 170),
(171, 'Gregory Elementary School', '', '', '', '3660', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 171),
(172, 'Hammond Elementary School', '', '', '', '3750', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 172),
(173, 'Hancock College Preparatory High School', '', '', '', '1200', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 173),
(174, 'Julian High School', '', '', '', '1870', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 174),
(175, 'Kozminski Elementary Community Academy', '', '', '', '4390', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 175),
(176, 'Lake View High School', '', '', '', '1430', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 78),
(177, 'Marshall Metropolitan High School', '', '', '', '1470', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 177),
(178, 'Nash Elementary School', '', '', '', '5050', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 178),
(179, 'Ninos Heroes Elementary Academic Center', '', '', '', '3720', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 179),
(180, 'Nixon Elementary School', '', '', '', '5100ALL', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 180),
(181, 'Ogden International High School', '', '', '', '8083', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 181),
(182, 'Peirce International Studies ES', '', '', '', '5360', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 182),
(183, 'Perez Elementary School', '', '', '', '2930', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 183),
(184, 'Richards Career Academy High School', '', '', '', '1110', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 184),
(185, 'Sabin Elementary Dual Language Magnet School', '', '', '', '7790', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 185),
(186, 'Skinner North Classical Elementary', '', '', '', '8024', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 186),
(187, 'Sullivan High School', '', '', '', '1570', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 187),
(188, 'Talcott Elementary School', '', '', '', '6140', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 130),
(189, 'Walsh Elementary School', '', '', '', '6320', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 189),
(190, 'Ward Elementary School, James', '', '', '', '6330', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 190),
(191, 'Beidler, Elementary School, Jacob', '', '', '', '2250', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 191),
(192, 'Bennett Elementary School, Frank I', '', '', '', '2280', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 192),
(193, 'Black Magnet Elementary School, Robert A ', '', '', '', '7860ALL', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 193),
(194, 'Black Magnet Elementary School, Robert A - Branch', '', '', '', '7861', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 194),
(195, 'Brentano Math & Science Academy ES, Lorenz', '', '', '', '2370', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 195),
(196, 'Burr Elementary School, Jonathan ', '', '', '', '2530', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 196),
(197, 'Chase Elementary School, Salmon P', '', '', '', '2760', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 197),
(198, 'Chavez Multicultural Academic Center ES, Cesar E - Lower Library', '', '', '', '5641', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 198),
(199, 'Chavez Multicultural Academic Center ES, Cesar E', '', '', '', '5640', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 199),
(200, 'Coonley Elementary School, John C.', '', '', '', '2880', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 200),
(201, 'Disney Magnet Elementary School, Walt', '', '', '', '8000', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 201),
(202, 'Durkin Park Elementary School', '', '', '', '7870', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 202),
(203, 'Esmond Elementary School', '', '', '', '3250', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 203),
(204, 'Falconer Elementary School, Laughlin', '', '', '', '0', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 204),
(205, 'Gage Park High School', '', '', '', '1340', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 205),
(206, 'Gary Elementary School, Joseph E - New', '', '', '', '3520ALL', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 206),
(207, 'Gary Elementary School. Joseph E - Main', '', '', '', '3520ALL', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 207),
(208, 'Hale Elementary School, Nathan', '', '', '', '3710', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 208),
(209, 'Hamilton Elementary School, Alexander', '', '', '', '3730', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 209),
(210, 'Hanson Park Elementary School - Branch', '', '', '', '4770ALL', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 210),
(211, 'Hanson Park Elementary School - Main Library', '', '', '', '4770ALL', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 211),
(212, 'Harte Elementary School, Bret', '', '', '', '3780', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 212),
(213, 'Hedges Elementary School, James ', '', '', '', '3900', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 213),
(214, 'Inter-American Elementary Magnet School', '', '', '', '4890', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 214),
(215, 'Juarez Community Academy High School, Benito', '', '', '', '1890', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 215),
(216, 'Kenwood Academy High School', '', '', '', '1710', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 216),
(217, 'LaSalle Elementary Language Academy', '', '', '', '4420', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 217),
(218, 'Lindblom Math & Science Academy HS, Robert', '', '', '', '7110', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 218),
(219, 'Logandale Middle School', '', '', '', '7560', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 219),
(220, 'Lovett Elementary School, Joseph', '', '', '', '4530', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 220),
(221, 'McAuliffe Elementary School, Sharon Christa', '', '', '', '3770', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 221),
(222, 'McPherson ES', '', '', '', '4800', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 222),
(223, 'Metcalfe Elementary Community Academy, Ralph H', '', '', '', '3190', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 223),
(224, 'Morgan Park High School', '', '', '', '1490', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 224),
(225, 'National Teachers Elementary Academy', '', '', '', '6480', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 225),
(226, 'Newberry Math & Science Academy ES, Walter L.', '', '', '', '5080', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 226),
(227, 'North Lawndale HS', '', '', '', '1106', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 227),
(228, 'Ogden Elementary School, William B.', '', '', '', '5150', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 228),
(229, 'Powell Academy Elementary School', '', '', '', '7010', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 229),
(230, 'Powell Academy ES', '', '', '', '7010', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 230),
(231, 'Pritzker School, A.N.', '', '', '', '6460', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 231),
(232, 'Raby High School, Al', '', '', '', '7690', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 232),
(233, 'Rudolph Elementary Learning Center, Wilma', '', '', '', '7350', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 233),
(234, 'Ruiz Elementary School, Irma C', '', '', '', '5390', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 234),
(235, 'Shoop Math-Science Technical Academy ES, John D ', '', '', '', '5930', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 235),
(236, 'South Loop Elementary School', '', '', '', '3960', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 236),
(237, 'Suder Montessori Magnet ES', '', '', '', '6340', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 237),
(238, 'von Steuben Metropolitan Science HS, Friedrich W', '', '', '', '1610', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 238),
(239, 'Washington High School, George', '', '', '', '1630', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 239),
(240, 'Azuela Elementary School, Mariano', '', '', '', '8660', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 240),
(241, 'Bradwell Communications Arts & Science ES, Myra', '', '', '', '2340', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 241),
(242, 'Brennemann Elementary School, Joseph', '', '', '', '6600', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 242),
(243, 'Calmeca Academy of Fine Arts and Dual Language', '', '', '', '7880', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 243),
(244, 'Camras Elementary School, Marvin', '', '', '', '8600', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 244),
(245, 'Clinton Elementary School, DeWitt', '', '', '', '2810', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 245),
(246, 'Graham Training Center High School, Ray', '', '', '', '1950', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 246),
(247, 'Lorca Elementary School, Federico Garcia', '', '', '', '8330', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 247),
(248, 'Wadsworth Elementary School, James', '', '', '', '6300', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 248),
(249, 'Zaragoza', '', '', '', '8550', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 249),
(250, 'Parkman Elementary School, Francis', '', '', '', '5280', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 250),
(251, 'Hammond Elementary School, Charles G', '', '', '', '3750', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 251),
(252, 'Hale Elementary School, Nathan', '', '', '', '3710', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 208),
(253, 'Washington Elementary School, George', '', '', '', '6360', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 253),
(254, 'Solorio Academy High School, Eric', '', '', '', '8550', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 254),
(255, 'Lorca Elementary School, Federico Garcia', '', '', '', '8330', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 247),
(256, 'West Ridge Elementary School', '', '', '', '8440', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 256),
(257, 'Fernwood Elementary School', '', '', '', '3330', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 257),
(258, 'Woodson South Elementary School, Carter G', '', '', '', '7820', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 258),
(259, 'Jefferson Alternative High School, Nancy B', '', '', '', '2120', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 259),
(260, 'Galileo Math & Science Scholastic Academy', '', '', '', '4160', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 260),
(261, 'Phillips Academy High School, Wendell', '', '', '', '1510', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 261),
(262, 'Gillespie Elementary School, Frank L', '', '', '', '3530', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 262),
(263, 'Lara Elementary Academy, Agustin', '', '', '', '3980', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 263),
(264, 'Hibbard Elementary School, William G', '', '', '', '4000', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 264),
(265, 'Funston Elementary School, Frederick', '', '', '', '3460', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 265),
(266, 'Garvey Elementary School, Marcus Moziah', '', '', '', '5420', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 266),
(267, 'Bowen High School', '', '', '', '7550', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 267),
(268, 'Solomon Elementary School, Hannah G', '', '', '', '5980', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 268),
(269, 'M. M. Garvey ES', '', '', '', '5420', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 269),
(270, 'Sheridan (Mark) Math & Science Academy', '', '', '', '4920', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 270),
(271, 'Kinzie Elementary School, John H', '', '', '', '4330', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 271),
(272, 'Saucedo Elementary Scholastic Academy, Maria', '', '', '', '4250', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 272),
(273, 'Belmont-Cragin', '', '', '', '3390', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 273),
(274, 'Simeon Career Academy High School, Neal F', '', '', '', '1150', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 274),
(275, 'Mather High School, Stephen T', '', '', '', '1480', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 275),
(276, 'Roosevelt High School, Theodore', '', '', '', '1520', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 276),
(277, 'Little Village Elementary School', '', '', '', '2590', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 277),
(278, 'Lavizzo Elementary School, Mildred I', '', '', '', '6260', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 278),
(279, 'Sandoval ES', '', '', '', '6430', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 279),
(280, 'Chicago Academy Elementary School', '', '', '', '6670', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 280),
(281, 'North River Elementary School', '', '', '', '7890', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 281),
(282, 'Agassiz Elementary School, Louis A', '', '', '', '2030', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 282),
(283, 'Carter Elementary School, William W', '', '', '', '2670', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 283),
(284, 'Cook Elementary School, John W', '', '', '', '2860', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 284),
(285, 'Dirksen Elementary School, Everett McKinley', '', '', '', '2950', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 285),
(286, 'Everett Elementary School, Edward', '', '', '', '3260', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 286),
(287, 'Goethe Elementary School, Johann W von', '', '', '', '3560', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 287),
(288, 'Hawthorne Elementary Scholastic Academy', '', '', '', '3830', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 288),
(289, 'Kelvyn Park High School', '', '', '', '1410', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 289),
(290, 'Mount Greenwood Elementary School', '', '', '', '4940', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 290),
(291, 'Wentworth Elementary School, Daniel S', '', '', '', '6390', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 291),
(292, 'Dirksen Elementary School', '', '', '', '2950', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 292),
(293, 'Chicago High School for Agricultural Sciences', '', '', '', '1790', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 293),
(294, 'Ariel Elementary Community Academy', '', '', '', '3640', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 294),
(295, 'Bogan High School, William J', '', '', '', '1230', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 295),
(296, 'Brighton Park Elementary School', '', '', '', '0', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 139),
(297, 'Castellanos Elementary School, Rosario', '', '', '', '2510', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 297);
INSERT INTO `setup` (`id`, `title`, `keywords`, `description`, `headercode`, `config`, `logo`, `ls2pac`, `ls2kids`, `searchdefault`, `author`, `googleanalytics`, `tinymce`, `pageheading`, `servicesheading`, `sliderheading`, `teamheading`, `customersheading`, `databasesheading`, `servicescontent`, `customerscontent`, `databasescontent`, `teamcontent`, `disqus`, `datetime`, `loc_id`) VALUES
(298, 'Claremont Academy Elementary School', '', '', '', '7830', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 298),
(299, 'Cleveland Elementary School, Grover', '', '', '', '2800', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 299),
(300, 'Corkery Elementary School, Daniel J', '', '', '', '2910', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 300),
(301, 'Dever Elementary School', '', '', '', '3020', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 301),
(302, 'Dodge Elementary Renaissance Academy, Mary Mapes', '', '', '', '3050', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 302),
(303, 'Ebinger Elementary School, Christian', '', '', '', '3150', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 303),
(304, 'Field Elementary School, Eugene', '', '', '', '3350', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 304),
(305, 'Graham Elementary School, Alexander', '', '', '', '3600ALL', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 305),
(306, 'Hamline Elementary School, John H', '', '', '', '3740ALL', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 306),
(307, 'Henderson Elementary School, Charles R', '', '', '', '3920', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 307),
(308, 'King Jr Academy of Social Justice, Dr. Martin L.', '', '', '', '7250', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 308),
(309, 'Hope College Preparatory High School', '', '', '', '1940', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 309),
(310, 'Jamieson Elementary School, Minnie Mars', '', '', '', '4180', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 310),
(311, 'Lee Elementary School, Richard Henry', '', '', '', '7170', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 311),
(312, 'Libby Elementary School, Arthur A ', '', '', '', '4470', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 312),
(313, 'Linne Elementary School, Carl von', '', '', '', '4490', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 313),
(314, 'Manierre Elementary School, George', '', '', '', '4580', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 314),
(315, 'Marquette Elementary School', '', '', '', '4620', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 315),
(316, 'Marsh Elementary School, John L', '', '', '', '4630', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 316),
(317, 'McDade Elementary Classical School, James E', '', '', '', '4750', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 317),
(318, 'Morton School of Excellence', '', '', '', '6800', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 318),
(319, 'Namaste Charter Elementary School', '', '', '', '7920', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 319),
(320, 'New Sullivan Elementary School, William K', '', '', '', '6100', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 320),
(321, 'Nightingale Elementary School, Florence', '', '', '', '5090', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 321),
(322, 'Pershing Elementary Humanities Magnet, John J', '', '', '', '5400', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 322),
(323, 'Ray Elementary School ', '', '', '', '5560', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 323),
(324, 'Sandoval Elementary School, Socorro', '', '', '', '6430', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 324),
(325, 'Sayre Language Academy, Harriet', '', '', '', '5720', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 325),
(326, 'Goudy Elementary School, William C', '', '', '', '3590', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 326),
(327, 'Haugan Elementary School, Helge A', '', '', '', '3810', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 327),
(328, 'Smyser Elementary School, Washington D', '', '', '', '5960', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 328),
(329, 'South Shore International College Prep High School', '', '', '', '8676', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 329),
(330, 'Spry & Community Links, John', '', '', '', '6010', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 330),
(331, 'Stowe Elementary School, Harriet Beecher', '', '', '', '6080ALL', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 331),
(332, 'Tarkington School of Excellence ES', '', '', '', '7160', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 332),
(333, 'Vanderpoel Elementary Magnet School, John H', '', '', '', '6250', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 333),
(334, 'Von Humboldt Elementary School, Alexander', '', '', '', '6280', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 334),
(335, 'Waters Elementary School, Thomas J', '', '', '', '6370', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 335),
(336, 'White Elementary Career Academy, Edward', '', '', '', '0', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 336),
(337, 'Whittier Elementary School, John Greenleaf', '', '', '', '6450', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 337),
(338, 'Woodlawn Community Elementary School', '', '', '', '3860', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 338),
(339, 'Zapata Elementary Academy, Emiliano', '', '', '', '3820', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 339),
(340, 'Fernwood Elementary School', '', '', '', '3330', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 257),
(341, 'McKay Elementary School, Francis M', '', '', '', '4760', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 341),
(342, 'Hayt Elementary School, Stephen K', '', '', '', '3850', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 342),
(343, 'Alcott High School for the Humanities', '', '', '', '8035', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 343),
(344, 'Agassiz Elementary School', '', '', '', '2030', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 344),
(345, 'Canty Elementary School, Arthur E', '', '', '', '2620', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 345),
(346, 'Cardenas Elementary School, Lazaro', '', '', '', '4320', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 346),
(347, 'Chicago Vocational Career Academy High School', '', '', '', '1010', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 347),
(348, 'Columbia Explorers Elementary Academy', '', '', '', '5860', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 348),
(349, 'Edgebrook Elementary School', '', '', '', '3170', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 349),
(350, 'Farragut Career Academy High School, David G', '', '', '', '1300', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 350),
(351, 'Schubert Elementary School, Franz Peter ', '', '', '', '0', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 351),
(352, 'Schubert Elementary School, Franz Peter ', '', '', '', '0', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 351),
(353, 'Herzl Elementary School, Theodore', '', '', '', '3970', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 353),
(354, 'Murphy Elementary School, John B', '', '', '', '5020', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 354),
(355, 'Lafayette Elementary School, Jean D', '', '', '', '4400', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 355),
(356, 'Melody Elementary School, Genevieve', '', '', '', '7190', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 356),
(357, 'New Field Elementary School', '', '', '', '7060', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 357),
(358, 'Cuffe Math-Science Technology Academy ES, Paul', '', '', '', '4090', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 358),
(359, 'Portage Park Elementary School', '', '', '', '5490', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 359),
(360, 'Prescott Elementary School, William H', '', '', '', '5500', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 360),
(361, 'Ryerson Elementary School, Martin A', '', '', '', '5680', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 361),
(362, 'Kelly High School, Thomas', '', '', '', '1400', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 362),
(363, 'Young Magnet High School, Whitney M', '', '', '', '1810', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 363),
(364, 'STEM Magnet Academy', '', '', '', '8678', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 364),
(365, 'Stevenson Elementary School, Adlai E', '', '', '', '6030', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 365),
(366, 'Talman Elementary School', '', '', '', '6680', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 366),
(367, 'Drummond Elementary School, Thomas', '', '', '', '3120', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 367),
(368, 'Brown Elementary Community Academy, Ronald', '', '', '', '5040', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 368),
(369, 'Bright Elementary School, Orville T', '', '', '', '2390', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 369),
(370, 'Ross Elementary School, Betsy', '', '', '', '5650', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 370),
(371, 'White Elementary Career Academy, Edward', '', '', '', '0', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 336),
(372, 'Yates Elementary School, Richard', '', '', '', '6510', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 372),
(373, 'Brunson Math & Science Specialty ES, Brunson', '', '', '', '2550', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 373),
(374, 'Burley Elementary School, Augustus H', '', '', '', '0', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 374),
(375, 'Evergreen Academy Middle School', '', '', '', '7490', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 375),
(376, 'Foreman High School , Edwin G', '', '', '', '1330', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 376),
(377, 'Gray Elementary School, William P', '', '', '', '3620', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 377),
(378, 'Neil Elementary School, Jane A', '', '', '', '5060', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 378),
(379, 'Nobel Elementary School, Alfred', '', '', '', '5110', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 379),
(380, 'Northwest Middle School', '', '', '', '4600', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 380),
(381, 'Stone Elementary Scholastic Academy', '', '', '', '6070', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 381),
(382, 'Tonti Elementary School, Enrico', '', '', '', '6220', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 382),
(383, 'McCutcheon Elementary School, John T', '', '', '', '6910', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 383),
(384, 'Instituto Health Sciences Career Academy HS', '', '', '', '8026', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 384),
(385, 'Bateman Elementary School, Newton', '', '', '', '2190', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 385),
(386, 'Beasley Elementary Magnet Academic Center, Edward', '', '', '', '6660', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 386),
(387, 'Burroughs Elementary School, John C', '', '', '', '2540', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 387),
(388, 'Esmond Elementary School', '', '', '', '3250', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 203),
(389, 'Fermi Elementary School , Enrico', '', '', '', '3320', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 389),
(390, 'Lincoln Elementary School, Abraham', '', '', '', '4480', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 390),
(391, 'North-Grand High School', '', '', '', '1140', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 391),
(392, 'Pilsen Elementary Community Academy', '', '', '', '4210', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 392),
(393, 'Wildwood Elementary School', '', '', '', '6470', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 393),
(394, 'Chicago Quest North', '', '', '', '8672', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 394),
(395, 'Learn South', '', '', '', '8029', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 395),
(396, 'King Jr College Prep HS, Dr Martin Luther', '', '', '', '1760', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 396),
(397, 'Shields Middle School, James', '', '', '', '9597', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 397),
(398, 'Bell Elementary School, Alexander Graham', '', '', '', '2270', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 398),
(399, 'Falconer Elementary School, Laughlin', '', '', '', '0', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 204),
(400, 'Stewart Elementary School, Graeme', '', '', '', '6040', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 400),
(401, 'Randolph Elementary School, Asa Philip', '', '', '', '3550', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 401),
(402, 'Burbank Elementary School, Luther', '', '', '', '2450', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 402),
(403, 'Holden Elementary School, Charles N', '', '', '', '4020', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 403),
(404, 'Burley Elementary School, Augustus H', '', '', '', '0', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 374),
(405, 'Marine Leadership Academy', '', '', '', '2090', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 405),
(406, 'Lyon Elementary School, Mary', '', '', '', '4560', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 406),
(407, 'Carnegie Elementary School, Andrew', '', '', '', '2630', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 407),
(408, 'Healy Elementary School, Robert', '', '', '', '3880ALL', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 408),
(409, 'Black Magnet Elementary School, Robert A', '', '', '', '7860ALL', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 193),
(410, 'Rogers Elementary School , Philip', '', '', '', '5630', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 410),
(411, 'Montefiore Special Elementary School, Moses', '', '', '', '4860', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 411),
(412, 'Haines Elementary School, John Charles', '', '', '', '3700', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 412),
(413, 'Carson Elementary School, Rachel', '', '', '', '2660', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 413),
(414, 'Finkl Elementary School, William F', '', '', '', '3760', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 414),
(415, 'Henry Elementary School, Patrick', '', '', '', '3940', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 415),
(416, 'McNair Elementary School, Ronald E', '', '', '', '7040', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 416),
(417, 'Penn Elementary School, William', '', '', '', '5370', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 417),
(418, 'Reavis Math & Science Specialty ES, William C', '', '', '', '5580', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 418),
(419, 'Gallistel Elementary Language Academy, Mathew', '', '', '', '3490', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 419),
(420, 'Ellington Elementary School, Edward K', '', '', '', '3220', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 420),
(421, 'Burnside Elementary Scholastic Academy', '', '', '', '2520', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 421),
(422, 'Brighton Park Elementary School', '', '', '', '0', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 139),
(423, 'Addams Elementary School, Jane', '', '', '', '2020', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 423),
(424, 'Taylor Elementary School , Douglas', '', '', '', '6150', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 424),
(425, 'Davis Elementary School, Nathan S', '', '', '', '2970', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 425),
(426, 'Jones College Preparatory High School , William', '', '', '', '1060', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 426),
(427, 'Monroe Elementary School, James', '', '', '', '4850', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 427),
(428, 'Kellogg Elementary School , Kate S', '', '', '', '4240', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 428),
(429, 'Sumner Math & Science Community Acad ES, Charles', '', '', '', '6110', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 429),
(430, 'Mount Vernon Elementary School ', '', '', '', '4980', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 430),
(431, 'Colemon Elementary Academy, Johnnie', '', '', '', '6170', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 431),
(432, 'McCormick Elementary School, Cyrus H', '', '', '', '4720', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 432),
(433, 'Hubbard High School, Gurdon S', '', '', '', '1670', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 433),
(434, 'Jenner Elementary Academy of the Arts, Edward', '', '', '', '4200', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 434),
(435, 'Leland Elementary School, George', '', '', '', '7320', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 435),
(436, 'Faraday Elementary School, Michael', '', '', '', '4640', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 436),
(437, 'Kellman Corporate Community ES, Joseph', '', '', '', '3410', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 437),
(438, 'Wells Preparatory Elementary Academy, Ida B', '', '', '', '5250', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 438),
(439, 'Ward Elementary School, Laura S', '', '', '', '5470', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 439),
(440, 'Fiske Elementary School , John', '', '', '', '3360', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 440),
(441, 'Harvard Elementary School of Excellence, John', '', '', '', '3800', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 441),
(442, 'Air Force Academy High School', '', '', '', '1055', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 442),
(443, 'ASPIRA Charter - Haugan Campus', '', '', '', '3500', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 443),
(444, 'Intrinsic Schools', '', '', '', '9619', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 444),
(445, 'Hearst Elementary School, Phobe Apperson', '', '', '', '3890', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 445),
(446, 'Alcott Elementary School, Louisa May', '', '', '', '2040', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 446),
(447, 'Dixon Elementary School, Arthur', '', '', '', '3040', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 447),
(448, 'Lane Technical High School, Albert G', '', '', '', '1440', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 448),
(449, 'North Lawndale College Prep Charter', '', '', '', '1105ALL', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 449),
(450, 'Steinmetz College Preparatory HS, Charles P', '', '', '', '1560', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 450),
(451, 'Chicago Intl Charter - Northtown', '', '', '', '7740', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 451),
(452, 'Mitchell Elementary School, Ellen', '', '', '', '4840', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 452),
(453, 'Turner-Drew Elementary Language Academy', '', '', '', '3110', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 453),
(454, 'Shields Elementary School, James', '', '', '', '5910', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 454),
(455, 'Dubois Elementary School, William E B', '', '', '', '8010', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 455),
(456, 'Marine Leadership Academy at Ames', '', '', '', '2090', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 456),
(457, 'Gresham Elementary School, Walter Q', '', '', '', '3670', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 457),
(458, 'Langford Community Academy, Anna R', '', '', '', '2900', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 458),
(459, 'Earhart Options for Knowledge ES, Amelia', '', '', '', '7450', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 459),
(460, 'Gage Park High School', '', '', '', '1340', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 205),
(461, 'Chicago High School for the Arts', '', '', '', '8047', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 461),
(462, 'Mireles Elementary Academy, Arnold', '', '', '', '5880', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 462),
(463, 'Fulton Elementary School, Robert', '', '', '', '3450', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 463),
(464, 'Goode STEM Academy, Sarah E.', '', '', '', '9598', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 464),
(465, 'Back of the Yards High School', '', '', '', '9623', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 465),
(466, 'Prosser Career Academy High School, Charles Allen', '', '', '', '1070', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 466),
(467, 'Oglesby Elementary School, Richard J', '', '', '', '5170', '', '', '', 0, '', '', 1, '', '', '', 'Meet the Team', '', '', '', '', '', '', '', '0000-00-00 00:00:00', 467);

-- --------------------------------------------------------

--
-- Table structure for table `slider`
--

CREATE TABLE `slider` (
  `id` int(11) NOT NULL,
  `image` text NOT NULL,
  `title` text NOT NULL,
  `link` text NOT NULL,
  `content` text NOT NULL,
  `active` text NOT NULL,
  `datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `loc_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `slider`
--

INSERT INTO `slider` (`id`, `image`, `title`, `link`, `content`, `active`, `datetime`, `loc_id`) VALUES
(3, 'parallax_9-12_med.jpg', 'Tibique singulis nam id, aliquid mediocrem definitiones nam ne', '28', 'Tibique singulis nam id, aliquid mediocrem definitiones nam ne.', 'true', '2016-12-05 21:58:31', 1),
(4, 'ChicagoSkylineAerial_tiltshift.jpg', 'Inani singulis efficiantur ut mel, et regione repudiare ius', '28', 'dgadfgsdfgsdfgsdfgsdfgsdfgsdfgsdfg\r\ndgadfgsdfgsdfgsdfgsdfgsdfgsdfgsdf\r\ndgadfgsdfgsdfgsdfgsdfgsdfgsdfgsdf\r\ndgadfgsdfgsdfgsdfgsdfgsdfgsdfgsdf\r\ndgadfgsdfgsdfgsdfgsdfgsdfgsdfgsdf\r\ndgadfgsdfgsdfgsdfgsdfgsdfgsdfgsdf\r\ndgadfgsdfgsdfgsdfgsdfgsdfgsdfgsdf\r\ndgadfgsdf', 'true', '2016-12-05 21:58:05', 1),
(5, 'parallax_6-8_med.jpg', 'Trusted by Mission-Critical Organizations', '', 'Our expertise in large-scale, enterprise networks and advanced threat analytics has led us to develop a full range of industry leading services and innovative products that help secure and maximize mission-critical operations.', 'true', '2016-12-05 14:38:21', 2),
(6, 'budget2015.jpg', 'Know your schools, detect threats sooner and respond faster', '', ' Threat awareness and incident response by enabling school districts and states to catalog their facilities and school security plans, to create and manage safety assessments and to report incidents and monitor threats in and around their schools through an integrated online system. ', 'true', '2016-12-05 14:38:50', 2),
(7, 'CPSVisionBanner_TV.jpg', 'Vim ea omnes discere molestie.', '34', 'Vim ea omnes discere molestie. Cu vix facilisis efficiendi, vix ne ipsum inermis. Te cum possit voluptua expetendis. Cibo integre virtute ius ut.', 'true', '2016-12-05 21:58:16', 1),
(8, 'space-desktop-backgrounds.jpg', 'New Slide', '35', 'test slide #1', 'true', '2016-11-22 19:19:48', 2);

-- --------------------------------------------------------

--
-- Table structure for table `socialmedia`
--

CREATE TABLE `socialmedia` (
  `id` int(11) NOT NULL,
  `heading` text NOT NULL,
  `facebook` text NOT NULL,
  `twitter` text NOT NULL,
  `pinterest` text NOT NULL,
  `google` text NOT NULL,
  `instagram` text NOT NULL,
  `youtube` text NOT NULL,
  `tumblr` text NOT NULL,
  `loc_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `socialmedia`
--

INSERT INTO `socialmedia` (`id`, `heading`, `facebook`, `twitter`, `pinterest`, `google`, `instagram`, `youtube`, `tumblr`, `loc_id`) VALUES
(1, 'Follow Us', 'http://www.facebook.com', 'http://www.twitter.com', '', 'http://www.google.com', 'http://instagram.com', '', '', 1),
(2, 'Follow Us 2', 'http://facebook.com', '', '', '', '', 'http://www.youtube.com', '', 2);

-- --------------------------------------------------------

--
-- Table structure for table `team`
--

CREATE TABLE `team` (
  `id` int(11) NOT NULL,
  `image` text NOT NULL,
  `title` text NOT NULL,
  `content` text NOT NULL,
  `name` text NOT NULL,
  `active` text NOT NULL,
  `datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `loc_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `team`
--

INSERT INTO `team` (`id`, `image`, `title`, `content`, `name`, `active`, `datetime`, `loc_id`) VALUES
(3, 'space-desktop-backgrounds.jpg', 'Chief Financial Officer', 'More than 30 years of experience in large and small aerospace and defense companies, most recently as the Chief Financial Officer of Applied Signal Technology.', 'Cindy Dole', 'true', '2016-12-05 22:01:38', 1),
(4, 'z7whdbw.jpg', 'Chief Operations Officer', 'President and CEO since in 1995. Provides executive oversight and leadership of day-to-day company operations, integration of shared company resources.', 'John Doe', 'true', '2016-12-05 22:00:59', 1),
(5, 'z7whdbw.jpg', 'CTO', 'Mr. Anderson has more than 20 years of experience in information technology strategy, program management, strategic planning and process improvement.', 'Mr. Anderson', 'true', '2016-12-05 22:01:28', 1),
(7, 'Ubuntu-Mate-Cold-no-logo.png', 'President', 'Mr. Smith has more than 20 years of experience in information technology strategy, program management, strategic planning and process improvement.', 'Mr. Smith', 'true', '2016-12-05 22:01:18', 1),
(8, 'Ubuntu-Mate-Radioactive-no-logo.png', 'Chief Financial Officer', 'More than 30 years of experience in large and small aerospace and defense companies, most recently as the Chief Financial Officer of Applied Signal Technology.', 'Cindy Dole', 'true', '2016-11-29 14:50:11', 2),
(9, 'Ubuntu-Mate-Radioactive-no-logo.png', 'Chief Operations Officer', 'President and CEO since in 1995. Provides executive oversight and leadership of day-to-day company operations, integration of shared company resources.', 'John Doe', 'true', '2016-11-14 21:59:52', 2),
(10, 'Ubuntu-Mate-Radioactive-no-logo.png', 'CTO', 'Mr. Anderson has more than 20 years of experience in information technology strategy, program management, strategic planning and process improvement.', 'Mr. Anderson', 'true', '2016-11-14 21:59:55', 2),
(11, 'Ubuntu-Mate-Radioactive-no-logo.png', 'President', 'Mr. Smith has more than 20 years of experience in information technology strategy, program management, strategic planning and process improvement.', 'Mr. Smith', 'true', '2016-11-14 21:59:54', 2),
(12, 'blue_milky_way_galaxy-2560x1600.jpg', 'Test', 'test test', 'Test', 'true', '2016-12-12 22:11:33', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL,
  `email` text NOT NULL,
  `level` int(11) NOT NULL,
  `datetime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `loc_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `email`, `level`, `datetime`, `loc_id`) VALUES
(1, 'admin', '*7561F5295A1A35CB8E0A7C46921994D383947FA5', 'rjones@tlcdelivers.com', 1, '0000-00-00 00:00:00', 1),
(2, 'rjones', '*7561F5295A1A35CB8E0A7C46921994D383947FA5', 'rjones@tlcdelivers.com', 0, '2016-12-12 21:14:39', 2),
(3, 'kgray', '*7561F5295A1A35CB8E0A7C46921994D383947FA5', 'kgray@tlcdelivers.com', 1, '0000-00-00 00:00:00', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `aboutus`
--
ALTER TABLE `aboutus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contactus`
--
ALTER TABLE `contactus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `featured`
--
ALTER TABLE `featured`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `generalinfo`
--
ALTER TABLE `generalinfo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `locations`
--
ALTER TABLE `locations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `navigation`
--
ALTER TABLE `navigation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services_icons`
--
ALTER TABLE `services_icons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `setup`
--
ALTER TABLE `setup`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `socialmedia`
--
ALTER TABLE `socialmedia`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `team`
--
ALTER TABLE `team`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `aboutus`
--
ALTER TABLE `aboutus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;
--
-- AUTO_INCREMENT for table `contactus`
--
ALTER TABLE `contactus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `featured`
--
ALTER TABLE `featured`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `generalinfo`
--
ALTER TABLE `generalinfo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `locations`
--
ALTER TABLE `locations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=468;
--
-- AUTO_INCREMENT for table `navigation`
--
ALTER TABLE `navigation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;
--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;
--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `services_icons`
--
ALTER TABLE `services_icons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;
--
-- AUTO_INCREMENT for table `setup`
--
ALTER TABLE `setup`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=468;
--
-- AUTO_INCREMENT for table `slider`
--
ALTER TABLE `slider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `socialmedia`
--
ALTER TABLE `socialmedia`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `team`
--
ALTER TABLE `team`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
