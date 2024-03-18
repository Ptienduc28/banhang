-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema banhang
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema banhang
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `banhang` DEFAULT CHARACTER SET utf8 ;
USE `banhang` ;

-- -----------------------------------------------------
-- Table `banhang`.`users`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `banhang`.`users` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `email` VARCHAR(45) NULL,
  `password` VARCHAR(45) NULL,
  `role` VARCHAR(45) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `banhang`.`categories`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `banhang`.`categories` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NULL,
  `desciption` VARCHAR(45) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `banhang`.`products`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `banhang`.`products` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NULL,
  `desciption` TEXT NULL,
  `img` VARCHAR(2048) NULL,
  `pice` DOUBLE NULL,
  `quantity` VARCHAR(45) NULL,
  `categories_id` INT NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `banhang`.`orders`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `banhang`.`orders` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `code` VARCHAR(45) NULL,
  `status` VARCHAR(45) NULL,
  `users_id` INT NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `banhang`.`order_items`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `banhang`.`order_items` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `quantity` INT NULL,
  `price` DOUBLE NULL,
  `products_id` INT NOT NULL,
  `orders_id` INT NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
