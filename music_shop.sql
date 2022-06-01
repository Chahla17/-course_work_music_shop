CREATE SCHEMA IF NOT EXISTS `music_shop` DEFAULT CHARACTER SET utf8 ;
USE `music_shop` ;

CREATE TABLE IF NOT EXISTS `music_shop`.`types` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `type` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`id`))
;

CREATE TABLE IF NOT EXISTS `music_shop`.`items` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(255) NOT NULL,
  `cost` INT NOT NULL,
  `types_id` INT NOT NULL,
  `number_of_items` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_items_types_idx` (`types_id` ASC) VISIBLE,
  CONSTRAINT `fk_items_types`
    FOREIGN KEY (`types_id`)
    REFERENCES `music_shop`.`types` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
;

CREATE TABLE IF NOT EXISTS `music_shop`.`positions` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `position` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`id`))
;

CREATE TABLE IF NOT EXISTS `music_shop`.`personal` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `full_name` VARCHAR(255) NOT NULL,
  `positions_id` INT NOT NULL,
  `salary` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_personal_positions1_idx` (`positions_id` ASC) VISIBLE,
  CONSTRAINT `fk_personal_positions1`
    FOREIGN KEY (`positions_id`)
    REFERENCES `music_shop`.`positions` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
;

CREATE TABLE IF NOT EXISTS `music_shop`.`clients` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `full_name` VARCHAR(255) NOT NULL,
  `phone_number` VARCHAR(15) NULL,
  `email` VARCHAR(255) NULL,
  PRIMARY KEY (`id`))
;

CREATE TABLE IF NOT EXISTS `music_shop`.`purchases` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `items_id` INT NOT NULL,
  `clients_id` INT NOT NULL,
  `personal_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_purchases_items1_idx` (`items_id` ASC) VISIBLE,
  INDEX `fk_purchases_clients1_idx` (`clients_id` ASC) VISIBLE,
  INDEX `fk_purchases_personal1_idx` (`personal_id` ASC) VISIBLE,
  CONSTRAINT `fk_purchases_items1`
    FOREIGN KEY (`items_id`)
    REFERENCES `music_shop`.`items` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_purchases_clients1`
    FOREIGN KEY (`clients_id`)
    REFERENCES `music_shop`.`clients` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_purchases_personal1`
    FOREIGN KEY (`personal_id`)
    REFERENCES `music_shop`.`personal` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
;
