-- MySQL Script generated by MySQL Workbench
-- Mon Sep 28 13:35:47 2020
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema SUGYUM
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema SUGYUM
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `SUGYUM` DEFAULT CHARACTER SET utf8 ;
USE `SUGYUM` ;

-- -----------------------------------------------------
-- Table `SUGYUM`.`SG_MASTER_INFO`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `SUGYUM`.`SG_MASTER_INFO` (
  `SG_MASTER_INFO_ID` VARCHAR(36) NOT NULL,
  `ID` VARCHAR(20) NOT NULL,
  `NAME` VARCHAR(10) NULL,
  `NICK NAME` VARCHAR(20) NULL,
  `PWD` VARCHAR(100) NULL,
  `LAST_LOGIN` DATETIME NULL,
  PRIMARY KEY (`SG_MASTER_INFO_ID`),
  UNIQUE INDEX `ID_UNIQUE` (`ID` ASC))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `SUGYUM`.`SG_MEMBER_INFO`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `SUGYUM`.`SG_MEMBER_INFO` (
  `SG_MEMBER_INFO_ID` VARCHAR(36) NOT NULL,
  `ID` VARCHAR(20) NOT NULL,
  `NAME` VARCHAR(10) NULL,
  `NICK NAME` VARCHAR(20) NULL,
  `PWD` VARCHAR(100) NULL,
  `SUBSCRIBE_DATE` DATETIME NULL,
  `LAST_LOGIN` DATETIME NULL,
  `CONSENT` ENUM('Y', 'N') NULL,
  PRIMARY KEY (`SG_MEMBER_INFO_ID`),
  UNIQUE INDEX `ID_UNIQUE` (`ID` ASC))
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
