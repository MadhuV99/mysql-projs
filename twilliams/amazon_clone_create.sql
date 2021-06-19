-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema amazon_clone
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema amazon_clone
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `amazon_clone` DEFAULT CHARACTER SET utf8 ;
USE `amazon_clone` ;

-- -----------------------------------------------------
-- Table `amazon_clone`.`customers`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `amazon_clone`.`customers` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `email_address` VARCHAR(45) NULL,
  `full_name` VARCHAR(45) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `amazon_clone`.`orders`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `amazon_clone`.`orders` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `order_number` VARCHAR(45) NULL,
  `order_date` DATETIME NULL,
  `customerid` INT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
