-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.4.18-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             12.4.0.6659
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- Dumping structure for table imdb_ratibgs.imdb_top_1000
DROP TABLE IF EXISTS `imdb_top_1000`;
CREATE TABLE IF NOT EXISTS `imdb_top_1000` (
  `movie_id` int(11) NOT NULL,
  `movie_title` varchar(50) DEFAULT NULL,
  `released_year` varchar(50) DEFAULT NULL,
  `certificate` varchar(50) DEFAULT NULL,
  `runtime` int(11) DEFAULT NULL,
  `genre` varchar(50) DEFAULT NULL,
  `imdb_rating` float DEFAULT NULL,
  `meta_score` int(11) DEFAULT NULL,
  `director` varchar(50) DEFAULT NULL,
  `star1` varchar(50) DEFAULT NULL,
  `star2` varchar(50) DEFAULT NULL,
  `star3` varchar(50) DEFAULT NULL,
  `star4` varchar(50) DEFAULT NULL,
  `gross` int(11) DEFAULT NULL,
  PRIMARY KEY (`movie_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Data exporting was unselected.

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
