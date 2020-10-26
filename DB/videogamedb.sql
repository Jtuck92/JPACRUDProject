-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema videogamedb
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `videogamedb` ;

-- -----------------------------------------------------
-- Schema videogamedb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `videogamedb` DEFAULT CHARACTER SET utf8 ;
USE `videogamedb` ;

-- -----------------------------------------------------
-- Table `videogame`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `videogame` ;

CREATE TABLE IF NOT EXISTS `videogame` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `title` VARCHAR(75) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

SET SQL_MODE = '';
DROP USER IF EXISTS videogameuser@localhost;
SET SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
CREATE USER 'videogameuser'@'localhost' IDENTIFIED BY 'videogameuser';

GRANT SELECT, INSERT, TRIGGER, UPDATE, DELETE ON TABLE * TO 'videogameuser'@'localhost';

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- Data for table `videogame`
-- -----------------------------------------------------
START TRANSACTION;
USE `videogamedb`;
INSERT INTO `videogame` (`id`, `title`) VALUES (1, 'The Legend of Zelda: Majora\'s Mask');
INSERT INTO `videogame` (`id`, `title`) VALUES (2, 'Super Smash Bros.');
INSERT INTO `videogame` (`id`, `title`) VALUES (3, 'Metal Gear Solid');
INSERT INTO `videogame` (`id`, `title`) VALUES (4, 'Ninja Gaiden');
INSERT INTO `videogame` (`id`, `title`) VALUES (5, 'Super Mario 64');
INSERT INTO `videogame` (`id`, `title`) VALUES (DEFAULT, 'Final Fantasy VI');

COMMIT;

