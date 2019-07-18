-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 05, 2018 at 10:48 AM
-- Server version: 10.1.25-MariaDB
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `moviereviews`
--

DELIMITER $$
--
-- Procedures
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `deletemovie` (IN `m_id` INT)  NO SQL
DELETE from movie where movieid=m_id$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `getdata` ()  NO SQL
select * from movie$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(100) NOT NULL,
  `admin_name` varchar(20) NOT NULL,
  `user_id` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `admin_name`, `user_id`) VALUES
(7, 'monali', 1),
(8, 'pronoy', 2);

-- --------------------------------------------------------

--
-- Table structure for table `genre`
--

CREATE TABLE `genre` (
  `genreID` int(10) NOT NULL,
  `genrename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `genre`
--

INSERT INTO `genre` (`genreID`, `genrename`) VALUES
(1, 'Action'),
(2, 'Comedy'),
(3, 'Sci-Fi'),
(4, 'War'),
(5, 'Crime'),
(6, 'Horror'),
(7, 'Thriller');

-- --------------------------------------------------------

--
-- Table structure for table `logs`
--

CREATE TABLE `logs` (
  `log_id` int(100) NOT NULL,
  `m_id` int(100) NOT NULL,
  `action` varchar(100) NOT NULL,
  `mdate` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `logs`
--

INSERT INTO `logs` (`log_id`, `m_id`, `action`, `mdate`) VALUES
(1, 96, 'inserted', '2018-11-17 14:07:24.000000'),
(2, 96, 'deleted', '2018-11-17 14:09:19.000000'),
(3, 23, 'inserted', '2018-11-19 09:30:16.000000'),
(4, 23, 'deleted', '2018-11-19 09:30:29.000000'),
(5, 24, 'inserted', '2018-11-19 10:21:54.000000'),
(6, 24, 'deleted', '2018-11-19 10:23:40.000000'),
(7, 25, 'inserted', '2018-11-19 10:24:02.000000'),
(8, 26, 'inserted', '2018-11-19 10:37:22.000000'),
(9, 27, 'inserted', '2018-11-19 10:37:43.000000'),
(10, 28, 'inserted', '2018-11-19 10:38:05.000000'),
(11, 29, 'inserted', '2018-11-19 10:38:29.000000'),
(12, 30, 'inserted', '2018-11-19 10:38:57.000000'),
(13, 31, 'inserted', '2018-11-19 10:39:26.000000'),
(14, 32, 'inserted', '2018-11-19 10:39:56.000000'),
(15, 33, 'inserted', '2018-11-19 10:40:04.000000'),
(16, 34, 'inserted', '2018-11-19 10:40:13.000000'),
(17, 34, 'deleted', '2018-11-19 10:40:35.000000'),
(18, 33, 'deleted', '2018-11-19 10:40:41.000000'),
(19, 25, 'deleted', '2018-11-19 10:40:47.000000'),
(20, 26, 'deleted', '2018-11-19 10:40:52.000000'),
(21, 27, 'deleted', '2018-11-19 10:40:57.000000'),
(22, 28, 'deleted', '2018-11-19 10:41:01.000000'),
(23, 29, 'deleted', '2018-11-19 10:41:06.000000'),
(24, 30, 'deleted', '2018-11-19 10:41:11.000000'),
(25, 31, 'deleted', '2018-11-19 10:41:15.000000'),
(26, 32, 'deleted', '2018-11-19 10:41:19.000000'),
(27, 35, 'inserted', '2018-11-19 10:49:48.000000'),
(28, 36, 'inserted', '2018-11-19 10:50:19.000000'),
(29, 37, 'inserted', '2018-11-19 10:50:24.000000'),
(30, 38, 'inserted', '2018-11-19 10:50:43.000000'),
(31, 35, 'deleted', '2018-11-19 10:51:04.000000'),
(32, 36, 'deleted', '2018-11-19 10:51:09.000000'),
(33, 37, 'deleted', '2018-11-19 10:51:15.000000'),
(34, 38, 'deleted', '2018-11-19 10:51:20.000000'),
(35, 39, 'inserted', '2018-11-19 10:58:00.000000'),
(36, 40, 'inserted', '2018-11-19 10:58:57.000000'),
(37, 41, 'inserted', '2018-11-19 10:59:08.000000'),
(38, 42, 'inserted', '2018-11-19 11:00:14.000000'),
(39, 43, 'inserted', '2018-11-19 11:00:21.000000'),
(40, 40, 'deleted', '2018-11-19 11:01:16.000000'),
(41, 39, 'deleted', '2018-11-19 11:01:24.000000'),
(42, 41, 'deleted', '2018-11-19 11:01:29.000000'),
(43, 42, 'deleted', '2018-11-19 11:01:34.000000'),
(44, 43, 'deleted', '2018-11-19 11:01:38.000000'),
(45, 44, 'inserted', '2018-11-19 11:01:48.000000'),
(46, 45, 'inserted', '2018-11-19 11:02:57.000000'),
(47, 46, 'inserted', '2018-11-19 11:03:08.000000'),
(48, 44, 'deleted', '2018-11-19 11:03:31.000000'),
(49, 46, 'deleted', '2018-11-19 11:03:46.000000'),
(50, 45, 'deleted', '2018-11-19 11:03:55.000000'),
(51, 47, 'inserted', '2018-11-19 11:06:01.000000'),
(52, 47, 'deleted', '2018-11-19 11:08:33.000000'),
(53, 48, 'inserted', '2018-11-19 11:22:37.000000'),
(54, 49, 'inserted', '2018-11-19 13:24:12.000000'),
(55, 50, 'inserted', '2018-11-19 13:24:33.000000'),
(56, 50, 'deleted', '2018-11-19 13:24:56.000000'),
(57, 49, 'deleted', '2018-11-19 13:25:02.000000'),
(58, 48, 'deleted', '2018-11-19 13:25:07.000000'),
(59, 51, 'inserted', '2018-11-19 14:10:35.000000'),
(60, 51, 'deleted', '2018-11-19 14:12:01.000000'),
(61, 52, 'inserted', '2018-11-20 20:30:29.000000'),
(62, 52, 'deleted', '2018-11-20 20:37:04.000000'),
(63, 53, 'inserted', '2018-11-20 20:46:59.000000'),
(64, 53, 'deleted', '2018-11-20 20:47:25.000000');

-- --------------------------------------------------------

--
-- Table structure for table `movie`
--

CREATE TABLE `movie` (
  `movieid` int(10) NOT NULL,
  `movie_name` varchar(100) NOT NULL,
  `movie_desc` text NOT NULL,
  `movie_img` varchar(100) NOT NULL,
  `genreid` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `movie`
--

INSERT INTO `movie` (`movieid`, `movie_name`, `movie_desc`, `movie_img`, `genreid`) VALUES
(1, 'Mission Impossible 6: Fallout (2018)', 'Mission: Impossible- Fallout is a 2018 American action spy film written, produced and directed by Christopher McQuarrie. It is the sixth installment in the Mission: Impossible film series, and the second film to be directed by McQuarrie following Rogue Nation. The cast includes Tom Cruise, Ving Rhames, Simon Pegg, Rebecca Ferguson, Sean Harris, Michelle Monaghan and Alec Baldwin, all of whom reprise their roles from previous films, along with Henry Cavill, Vanessa Kirby and Angela Bassett, who join the franchise. In the film, Ethan Hunt (Cruise) and his team must track down stolen plutonium while being monitored by a CIA agent (Cavill) after a mission goes awry.', 'Action1.jpg', 1),
(2, 'Sicario 2 (2018)', 'Sicario: Day of the Soldado (titled Sicario 2: Soldado in the UK) is a 2018 American thriller film directed by Italian filmmaker Stefano Sollima and written by Taylor Sheridan. A sequel to 2015\'s Sicario, the film features Benicio del Toro, Josh Brolin, and Jeffrey Donovan reprising their roles, with Isabela Moner, Manuel Garcia-Rulfo, and Catherine Keener joining the cast. The story relates to the drug war at the U.S.-Mexico border and an attempt by the United States government to incite increased conflict among the cartels.', 'Action2.jpg', 1),
(3, 'The Predator (2018)', 'The Predator is a 2018 American science fiction action film directed by Shane Black and written by Black and Fred Dekker. It is the fourth installment in the Predator film series, following Predator (1987), Predator 2 (1990), and Predators (2010). Black had a supporting role in the original film, while John Davis returns as producer from the first three installments. The film stars Boyd Holbrook, Trevante Rhodes, Jacob Tremblay, Keegan-Michael Key, Olivia Munn, Thomas Jane, Alfie Allen, and Sterling K. Brown and follows a group of PTSD-afflicted soldiers who must fight off an invading pair of Predators.', 'Action3.jpg', 1),
(4, 'The Incredibles 2 (2018)', 'Incredibles 2 is a 2018 American computer-animated superhero film produced by Pixar Animation Studios and distributed by Walt Disney Pictures. Written and directed by Brad Bird, it is the sequel to The Incredibles (2004) and the second installment of the franchise. The story follows the Parr family as they try to restore public\'s trust in superheroes while balancing their family life, only to combat a new foe who seeks to turn the populace against all superheroes. Craig T. Nelson, Holly Hunter, Sarah Vowell and Samuel L. Jackson reprise their roles from the first film; newcomers to the cast include Huckleberry Milner (replacing Spencer Fox), Bob Odenkirk, Catherine Keener and Jonathan Banks (replacing Bud Luckey). Michael Giacchino returned to compose the score.', 'Comedy1.jpg', 2),
(5, 'Hotel Transylvania 3: Summer Vacation (2018)', 'Hotel Transylvania 3: Summer Vacation (known internationally as Hotel Transylvania 3: A Monster Vacation) is a 2018 American 3D computer-animated comedy film produced by Sony Pictures Animation and distributed by Sony Pictures Releasing. The third installment in the Hotel Transylvania franchise, it is directed by Genndy Tartakovsky and written by Tartakovsky and Michael McCullers, and features Adam Sandler, Andy Samberg, Selena Gomez, Kevin James, David Spade, Steve Buscemi, Keegan-Michael Key, Molly Shannon, Fran Drescher, and Mel Brooks reprising their roles, as well as new additions to the cast including Kathryn Hahn and Jim Gaffigan. In the film, Dracula finds love with a ship captain named Ericka Van Helsing while on a vacation on a cruise with his family and friends, but Mavis discovers that Ericka is actually the great-granddaughter of Abraham Van Helsing, Dracula\'s arch-enemy.', 'Comedy2.jpg', 2),
(6, 'Deadpool 2 (2018)', 'Deadpool 2 is a 2018 American superhero film based on the Marvel Comics character Deadpool, distributed by 20th Century Fox. It is the eleventh installment in the X-Men film series, and a direct sequel to the 2016 film Deadpool. The film is directed by David Leitch from a script by Rhett Reese, Paul Wernick, and Ryan Reynolds, with Reynolds starring in the title role alongside Josh Brolin, Morena Baccarin, Julian Dennison, Zazie Beetz, T.J. Miller, Brianna Hildebrand, and Jack Kesy. In the film, Deadpool forms the team X-Force to protect a young mutant from the time-traveling soldier Cable.', 'Comedy3.jpg', 2),
(7, 'Ocean\'s 8 (2018)', 'Ocean\'s 8 (stylized onscreen as Ocean\'s Eight) is a 2018 American heist comedy film directed by Gary Ross and written by Ross and Olivia Milch. The film is both a continuation and a spin-off from Steven Soderbergh\'s Ocean\'s trilogy and features an ensemble cast, including Sandra Bullock, Cate Blanchett, Anne Hathaway, Mindy Kaling, Sarah Paulson, Rihanna, Helena Bonham Carter, and Awkwafina. The film follows a group of women led by Debbie Ocean, the sister of Danny Ocean, who plan a sophisticated heist of the annual Met Gala in New York City.', 'Crime1.jpg', 5),
(8, 'Baby Driver (2017)', 'Baby Driver is a 2017 action film written and directed by Edgar Wright. The plot follows Baby (Ansel Elgort), a music lover who is coerced to work as a getaway driver for kingpin Doc (Kevin Spacey). The film also stars Lily James as Baby\'s love interest, and Jon Bernthal, Eiza Gonzalez, Jon Hamm, Flea and Jamie Foxx as criminals who work for Doc. The film features choreography in which the actors\' actions synchronize with its soundtrack. Wright conceived the project after envisioning a car chase set to the 1994 song \"Bellbottoms\" by the Jon Spencer Blues Explosion, which he used as the film\'s opening scene.', 'Crime2.jpg', 5),
(9, 'Hell or High Water (2016)', 'Hell or High Water is a 2016 American neo-Western crime thriller film directed by David Mackenzie and written by Taylor Sheridan. The film follows two brothers (Chris Pine and Ben Foster) who carry out a series of bank robberies to save their family ranch, while being pursued by two Texas Rangers (Jeff Bridges and Gil Birmingham).', 'Crime3.jpg', 5),
(10, 'Hereditary (2018)', 'Hereditary is a 2018 American supernatural horror film written and directed by Ari Aster, in his feature directorial debut. It stars Toni Collette, Alex Wolff, Milly Shapiro and Gabriel Byrne as a family haunted after the death of their secretive grandmother.', 'Horror1.jpg', 6),
(11, 'A Quiet Place (2018)', 'A Quiet Place is a 2018 American science fiction horror film directed by John Krasinski, who wrote the screenplay with Bryan Woods and Scott Beck. The film features a family facing struggles in a post-apocalyptic world. The family faces monsters which are blind and have an acute sense of hearing.[6] Krasinski also stars alongside Emily Blunt, Millicent Simmonds and Noah Jupe.', 'Horror2.jpg', 6),
(12, 'The Nun (2018)', 'he Nun is a 2018 American gothic supernatural horror film directed by Corin Hardy and written by Gary Dauberman, from a story by Dauberman and James Wan. A spin-off of 2016\'s The Conjuring 2, and the fifth installment in The Conjuring Universe, the film stars Demian Bichir, Taissa Farmiga, and Jonas Bloquet. The plot follows a Roman Catholic priest and a nun in her novitiate as they uncover an unholy secret in 1952 Romania.', 'Horror3.jpg', 6),
(13, 'Avengers: Infinity War (2018)', 'Avengers: Infinity War is a 2018 American superhero film based on the Marvel Comics superhero team the Avengers, produced by Marvel Studios and distributed by Walt Disney Studios Motion Pictures. It is the sequel to 2012\'s The Avengers and 2015\'s Avengers: Age of Ultron, and the nineteenth film in the Marvel Cinematic Universe (MCU). The film is directed by Anthony and Joe Russo, written by Christopher Markus and Stephen McFeely, and features an ensemble cast including Robert Downey Jr., Chris Hemsworth, Mark Ruffalo, Chris Evans, Scarlett Johansson, Benedict Cumberbatch, Don Cheadle, Tom Holland, Chadwick Boseman, Paul Bettany, Elizabeth Olsen, Anthony Mackie, Sebastian Stan, Danai Gurira, Letitia Wright, Dave Bautista, Zoe Saldana, Josh Brolin, and Chris Pratt. In the film, the Avengers and the Guardians of the Galaxy attempt to stop Thanos from amassing the all-powerful Infinity Stones.', 'Sci-fi1.jpg', 3),
(14, 'Annhiliation (2018)', 'Annihilation is a 2018 science fiction horror film written and directed by Alex Garland, based on the novel of the same name by Jeff VanderMeer. It stars Natalie Portman, Jennifer Jason Leigh, Gina Rodriguez, Tessa Thompson, Tuva Novotny and Oscar Isaac. The story follows a group of military scientists who enter \"The Shimmer\", a mysterious quarantined zone of mutating landscapes and transforming creatures. The film is based on the novel of the same title by Jeff VanderMeer, the first in his Southern Reach Trilogy.', 'Sci-fi2.jpg', 3),
(15, 'Solo: A Starwars Story(2018)', 'Solo: A Star Wars Story (or simply Solo) is a 2018 American space Western film based on the Star Wars character Han Solo. Directed by Ron Howard, produced by Lucasfilm and distributed by Walt Disney Studios Motion Pictures, it is the second Star Wars anthology film following Rogue One (2016). Alden Ehrenreich stars as Han Solo alongside Woody Harrelson, Emilia Clarke, Donald Glover, Thandie Newton, Phoebe Waller-Bridge, Joonas Suotamo, and Paul Bettany. The plot takes place approximately ten years prior to the events of A New Hope, and explores the early adventures of Han Solo and Chewbacca, who join a heist within the criminal underworld.', 'Sci-fi3.jpg', 3),
(16, 'Get Out (2017)', 'American who uncovers a disturbing secret when he meets the family of his white girlfriend. It stars Daniel Kaluuya, Allison Williams, Bradley Whitford, Caleb Landry Jones, Stephen Root, Lakeith Stanfield, and Catherine Keener.', 'Thriller1.jpg', 7),
(17, 'Gone Girl (2014)', 'Gone Girl is a 2014 American psychological thriller film directed by David Fincher and written by Gillian Flynn, based on her 2012 novel of the same title. The film stars Ben Affleck, Rosamund Pike, Neil Patrick Harris, and Tyler Perry. Set in Missouri, the story begins as a mystery that follows the events surrounding Nick Dunne (Affleck), who becomes the primary suspect in the sudden disappearance of his wife, Amy (Pike).', 'Thriller2.jpg', 7),
(18, 'A Girl on the Train (2016)', 'The Girl on the Train is a 2016 American mystery thriller drama film directed by Tate Taylor and written by Erin Cressida Wilson, based on Paula Hawkins\' 2015 debut novel of the same name. The film stars Emily Blunt, Rebecca Ferguson, Haley Bennett, Justin Theroux, Luke Evans, Allison Janney, Edgar Ramirez and Lisa Kudrow. The film follows an alcoholic divorcee who becomes involved in a missing persons investigation.', 'Thriller3.jpg', 7),
(19, 'Dunkirk (2017)', 'Dunkirk is a 2017 war film written, directed, and produced by Christopher Nolan that depicts the Dunkirk evacuation of World War II. Its ensemble cast includes Fionn Whitehead, Tom Glynn-Carney, Jack Lowden, Harry Styles, Aneurin Barnard, James D\'Arcy, Barry Keoghan, Kenneth Branagh, Cillian Murphy, Mark Rylance, and Tom Hardy. The film is a British-American-French-Dutch co-production, and was distributed by Warner Bros', 'War2.jpg', 4),
(20, '12 Strong (2018)', '12 Strong (also known as 12 Strong: The Declassified True Story of the Horse Soldiers) is a 2018 American action war drama film directed by Nicolai Fuglsig and written by Ted Tally and Peter Craig. The film is based on Doug Stanton\'s non-fiction book Horse Soldiers, which tells the story of U.S. Army Special Forces sent to Afghanistan immediately after the September 11 attacks. The film stars Chris Hemsworth, Michael Shannon, Michael Pena, Navid Negahban, Trevante Rhodes, Geoff Stults, Thad Luckinbill, William Fichtner, and Rob Riggle.', 'War1.jpg', 4),
(21, 'Hacksaw Ridge(2016) ', 'Hacksaw Ridge is a 2016 biographical war drama film directed by Mel Gibson and written by Andrew Knight and Robert Schenkkan, based on the 2004 documentary The Conscientious Objector. The film focuses on the World War II experiences of Desmond Doss, an American pacifist combat medic who, as a Seventh-day Adventist Christian, refused to carry or use a weapon or firearm of any kind. Doss became the first conscientious objector to be awarded the Medal of Honor, for service above and beyond the call of duty during the Battle of Okinawa. Andrew Garfield stars as Doss, with Sam Worthington, Luke Bracey, Teresa Palmer, Hugo Weaving, Rachel Griffiths, and Vince Vaughn in supporting roles.', 'War3.jpg', 4),
(22, 'Don\'t Breathe (2016)', 'Don\'t Breathe is a 2016 American horror film directed by Fede Alvarez, and co-written by Alvarez and Rodo Sayagues. The film stars Jane Levy, Dylan Minnette, Daniel Zovatto, and Stephen Lang, and focuses on three friends who get trapped inside a blind man\'s house while breaking into it.', 'Horror4.jpg', 6);

--
-- Triggers `movie`
--
DELIMITER $$
CREATE TRIGGER `delete log` AFTER DELETE ON `movie` FOR EACH ROW insert INTO logs VALUES(null,OLD.movieid,'deleted',NOW())
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `insert log` AFTER INSERT ON `movie` FOR EACH ROW insert into logs values(null,NEW.movieid,'inserted',NOW())
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `moviedb`
--

CREATE TABLE `moviedb` (
  `movieid` int(10) NOT NULL,
  `movie_collection` varchar(100) NOT NULL,
  `movie_actors` varchar(1000) NOT NULL,
  `movie_director` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `moviedb`
--

INSERT INTO `moviedb` (`movieid`, `movie_collection`, `movie_actors`, `movie_director`) VALUES
(1, '$120 million', 'Tom Cruise, Henry Cavill, Ving Rhames, Simon Pegg, Rebecca Ferguson,Sean Harris, Angela Bassett, Michelle Monaghan,Alec Baldwin', 'Christopher McQuarrie'),
(2, '$74 million', 'Benicio del Toro\r\nJosh Brolin\r\nIsabela Moner\r\nJeffrey Donovan\r\nManuel Garcia-Rulfo\r\nCatherine Keener', 'Stefano Sollima'),
(3, '	$159.6 million', 'Boyd Holbrook\r\nTrevante Rhodes\r\nJacob Tremblay\r\nKeegan-Michael Key\r\nOlivia Munn\r\nThomas Jane\r\nAlfie Allen\r\nSterling K. Brown', 'Shane Black'),
(4, '$11 million', 'Craig T. Nelson\r\nHolly Hunter\r\nSarah Vowell\r\nSophia Bush', 'Brad Bird'),
(5, '$12 million', 'Adam Sandler\r\nAndy Samberg\r\nSelena Gomez', 'Genndy Tartakovsky'),
(20, '$13 million', 'Chris Hemsworth,Michael Shannon,Michael Peña, Navid Negahban.', 'Nicolai Fuglsig\r\n'),
(21, '$23 million', 'Andrew Garfield,Richard Pyros,Jacob Warner,Milo Gibson', 'Mel Gibson	\r\n'),
(22, '$23 million', 'Stephen Lang, Jane Levy	,Dylan Minnette,Daniel Zovatto', ' Fede Alvarez'),
(19, '$150 million', 'Fionn Whitehead,Damien Bonnard,Aneurin Barnard,Lee Armstrong,Barry Keoghan', 'Christopher Nolan'),
(18, '$123 million', 'Emily Blunt,Haley Bennett,Rebecca Ferguson,Justin Theroux,Luke Evans', 'Tate Taylor'),
(17, '$123 million', 'Ben Affleck,Rosamund Pike,Neil Patrick Harris,Tyler Perry,Carrie Coon', 'David Fincher'),
(16, '$11 million', 'Daniel Kaluuya,Allison Williams,Catherine Keener,Bradley Whitford,Caleb Landry Jones', 'Jordan Peele'),
(15, '$23 million', 'Alden Ehrenreich,Woody Harrelson,Emilia Clarke,Donald Glover,Thandie Newton', 'Ron Howard'),
(14, '$22 million', 'Natalie Portman,Jennifer Jason Leigh,Gina Rodriguez,Tessa Thompson,Tuva Novotny', 'Alex Garland'),
(13, '$32 million', 'Robert Downey Jr.,Chris Hemsworth,Mark Ruffalo,Chris Evans,Scarlett Johansson,Benedict Cumberbatch', 'Anthony Russo,Joe Russo'),
(12, '$12 million', 'Demian Bichir,Taissa Farmiga,Jonas Bloquet,Bonnie Aarons', 'Corin Hardy'),
(11, '$23 million', 'Emily Blunt,John Krasinski\r\n', 'John Krasinski'),
(10, '$87 million', 'Toni Collette,Alex Wolff,Milly Shapiro,Ann Dowd\r\nGabriel Byrne', 'Ari Aster'),
(9, '$87 million', 'Jeff Bridges,Chris Pine,Ben Foster,Gil Birmingham', 'David Mackenzie'),
(8, '$83 million', 'Ansel Elgort,Kevin Spacey,Lily James,Eiza González\r\nJon Hamm', 'Edgar Wright'),
(7, '$12 million', 'Sandra Bullock,Cate Blanchett,Anne Hathaway,Mindy Kaling,Sarah Paulson,Awkwafina', 'Gary Ross'),
(6, '$69 million', 'Ryan Reynolds, Rob Liefeld, Rhett Reese, Paul Wernick, Fabian Nicieza', 'David Leitch');

-- --------------------------------------------------------

--
-- Table structure for table `rating`
--

CREATE TABLE `rating` (
  `rate_id` int(100) NOT NULL,
  `rate_val` int(50) NOT NULL,
  `movieid` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rating`
--

INSERT INTO `rating` (`rate_id`, `rate_val`, `movieid`) VALUES
(7, 1, 1),
(8, 6, 2),
(9, 10, 3),
(10, 5, 3),
(11, 10, 17);

-- --------------------------------------------------------

--
-- Table structure for table `userdet`
--

CREATE TABLE `userdet` (
  `user_id` int(10) NOT NULL,
  `user_name` varchar(20) NOT NULL,
  `user_password` varchar(20) NOT NULL,
  `email` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userdet`
--

INSERT INTO `userdet` (`user_id`, `user_name`, `user_password`, `email`) VALUES
(5, 'rahat', 'apple', 'raahat@gmail.com'),
(6, 'leela', 'qwerty', 't@d.com'),
(7, 'monali', 'monali', 'monali@moviepedia.com'),
(9, 'khushi', 'khushi', 'khushi@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `genre`
--
ALTER TABLE `genre`
  ADD PRIMARY KEY (`genreID`);

--
-- Indexes for table `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`log_id`);

--
-- Indexes for table `movie`
--
ALTER TABLE `movie`
  ADD PRIMARY KEY (`movieid`),
  ADD KEY `genreid` (`genreid`);

--
-- Indexes for table `moviedb`
--
ALTER TABLE `moviedb`
  ADD KEY `movieid` (`movieid`);

--
-- Indexes for table `rating`
--
ALTER TABLE `rating`
  ADD PRIMARY KEY (`rate_id`),
  ADD KEY `moved` (`movieid`),
  ADD KEY `moveid` (`movieid`);

--
-- Indexes for table `userdet`
--
ALTER TABLE `userdet`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `genre`
--
ALTER TABLE `genre`
  MODIFY `genreID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `logs`
--
ALTER TABLE `logs`
  MODIFY `log_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;
--
-- AUTO_INCREMENT for table `movie`
--
ALTER TABLE `movie`
  MODIFY `movieid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;
--
-- AUTO_INCREMENT for table `rating`
--
ALTER TABLE `rating`
  MODIFY `rate_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `userdet`
--
ALTER TABLE `userdet`
  MODIFY `user_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `movie`
--
ALTER TABLE `movie`
  ADD CONSTRAINT `movie_ibfk_1` FOREIGN KEY (`genreid`) REFERENCES `genre` (`genreID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `moviedb`
--
ALTER TABLE `moviedb`
  ADD CONSTRAINT `moviedb_ibfk_1` FOREIGN KEY (`movieid`) REFERENCES `movie` (`movieid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `rating`
--
ALTER TABLE `rating`
  ADD CONSTRAINT `rating_ibfk_1` FOREIGN KEY (`movieid`) REFERENCES `movie` (`movieid`) ON DELETE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
