-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema my_first_db
-- -----------------------------------------------------
-- my first databsein cophild ventures

-- -----------------------------------------------------
-- Schema my_first_db
--
-- my first databsein cophild ventures
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `my_first_db` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin ;
USE `my_first_db` ;

-- -----------------------------------------------------
-- Table `my_first_db`.`Category`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `my_first_db`.`Category` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  `description` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `my_first_db`.`Product`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `my_first_db`.`Product` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(100) NOT NULL,
  `price` DECIMAL NOT NULL,
  `categoryid` INT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC) VISIBLE,
  INDEX `id_idx` (`categoryid` ASC) VISIBLE,
  CONSTRAINT `id`
    FOREIGN KEY (`categoryid`)
    REFERENCES `my_first_db`.`Category` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
