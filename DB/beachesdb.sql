-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema beachesdb
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `beachesdb` ;

-- -----------------------------------------------------
-- Schema beachesdb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `beachesdb` DEFAULT CHARACTER SET utf8 ;
USE `beachesdb` ;

-- -----------------------------------------------------
-- Table `beach`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `beach` ;

CREATE TABLE IF NOT EXISTS `beach` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  `description` TEXT(2000) NULL,
  `rating` INT NULL,
  `sand_color` VARCHAR(45) NULL,
  `closest_city` VARCHAR(100) NULL,
  `considered_tropical` TINYINT NULL DEFAULT 1,
  `average_home_price` DOUBLE NULL,
  `miles_to_closest_city` INT NULL,
  `population_closest_city` INT NULL,
  `highest_temperature` DOUBLE NULL,
  `lowest_temperature` DOUBLE NULL,
  `government_type` VARCHAR(45) NULL,
  `image_url` VARCHAR(2000) NULL,
  `temperature_average_summer` DOUBLE NULL,
  `temperature_average_fall` DOUBLE NULL,
  `temperature_average_winter` DOUBLE NULL,
  `temperature_average_spring` DOUBLE NULL,
  `area_id` INT NULL,
  `created_on` DATETIME NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_on` DATETIME NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

SET SQL_MODE = '';
DROP USER IF EXISTS beachowner@localhost;
SET SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
CREATE USER 'beachowner'@'localhost' IDENTIFIED BY 'pass';

GRANT SELECT, INSERT, TRIGGER, UPDATE, DELETE ON TABLE * TO 'beachowner'@'localhost';
GRANT ALL ON * TO 'beachowner'@'localhost';
GRANT SELECT, INSERT, TRIGGER ON TABLE * TO 'beachowner'@'localhost';

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- Data for table `beach`
-- -----------------------------------------------------
START TRANSACTION;
USE `beachesdb`;
INSERT INTO `beach` (`id`, `name`, `description`, `rating`, `sand_color`, `closest_city`, `considered_tropical`, `average_home_price`, `miles_to_closest_city`, `population_closest_city`, `highest_temperature`, `lowest_temperature`, `government_type`, `image_url`, `temperature_average_summer`, `temperature_average_fall`, `temperature_average_winter`, `temperature_average_spring`, `area_id`, `created_on`, `updated_on`) VALUES (1, 'Siesta Key Beach', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

COMMIT;

