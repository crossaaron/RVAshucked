CREATE DATABASE rvaShucked_db;
USE rvaShucked_db;
CREATE TABLE `rvaShucked_db`.`oysters` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  `zone` INT(11) NOT NULL,
  `location` VARCHAR(45) NULL,
  `profile` VARCHAR(240) NULL,
  `createdAt` DATETIME NULL,
  `updatedAt` DATETIME NULL,
  PRIMARY KEY (`id`));


  CREATE TABLE `rvaShucked_db`.`restaurants` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(100) NOT NULL,
  `placeId` VARCHAR(100) NOT NULL,
  `dumpLoc` VARCHAR(100) NOT NULL,
  `lynnhaven` TINYINT NULL DEFAULT 0,
  `rubySalts` TINYINT NULL DEFAULT 0,
  `morattico` TINYINT NULL DEFAULT 0,
  `seasideSalts` TINYINT NULL DEFAULT 0,
  `tangier` TINYINT NULL DEFAULT 0,
  `mckinneys` TINYINT NULL DEFAULT 0,
  `rochambeau` TINYINT NULL DEFAULT 0,
  `rappahannockRiver` TINYINT NULL DEFAULT 0,
  `oldeSalts` TINYINT NULL DEFAULT 0,
  `andersonNeck` TINYINT NULL DEFAULT 0,
  PRIMARY KEY (`id`));


CREATE TABLE `rvaShucked_db`.`users` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `username` VARCHAR(100) NOT NULL,
  `email` VARCHAR(50) NOT NULL UNIQUE,
  `password` BINARY(100) NOT NULL,
  `consumedCount` INT NULL DEFAULT 0,
  `lynnhaven` TINYINT NULL DEFAULT 0,
  `rubySalts` TINYINT NULL DEFAULT 0,
  `morattico` TINYINT NULL DEFAULT 0,
  `seasideSalts` TINYINT NULL DEFAULT 0,
  `tangier` TINYINT NULL DEFAULT 0,
  `mckinneys` TINYINT NULL DEFAULT 0,
  `rochambeau` TINYINT NULL DEFAULT 0,
  `rappahannock` TINYINT NULL DEFAULT 0,
  `oldSalts` TINYINT NULL DEFAULT 0,
  `andersonNeck` TINYINT NULL DEFAULT 0,
  PRIMARY KEY (`id`));

CREATE TABLE `rvaShucked_db`.`restaurants_has_oysters` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `oyster_id` INT NULL,
  `restaurant_id` INT NULL,
  PRIMARY KEY (`id`),
  INDEX `oyster_idx` (`oyster_id` ASC),
  INDEX `restaurant_idx` (`restaurant_id` ASC),
  CONSTRAINT `oyster`
    FOREIGN KEY (`oyster_id`)
    REFERENCES `rvaShucked_db`.`oysters` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `restaurant`
    FOREIGN KEY (`restaurant_id`)
    REFERENCES `rvaShucked_db`.`restaurants` (`id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE);

--Table for Tasting Notes--
CREATE TABLE tasting_notes (
  id INT NOT NULL AUTO_INCREMENT,
  user_id INT NOT NULL,
  user_comment VARCHAR(200) NOT NULL,
  PRIMARY KEY (id));
