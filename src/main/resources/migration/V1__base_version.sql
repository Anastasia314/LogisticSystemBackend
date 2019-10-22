CREATE TABLE IF NOT EXISTS `logistics`.`points` (
  `id_point` INT(11) NOT NULL AUTO_INCREMENT,
  `name_of_point` VARCHAR(255) NULL DEFAULT NULL,
  PRIMARY KEY (`id_point`))
ENGINE = InnoDB
AUTO_INCREMENT = 25
DEFAULT CHARACTER SET = utf8;

CREATE TABLE IF NOT EXISTS `logistics`.`route` (
  `id_route` INT(11) NOT NULL AUTO_INCREMENT,
  `name_of_route` VARCHAR(255) NULL DEFAULT NULL,
  `start_point_of_route` INT(11) NULL DEFAULT NULL,
  `end_point_of_route` INT(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id_route`),
  INDEX `starts_point_id` (`start_point_of_route` ASC),
  INDEX `ends_point_id` (`end_point_of_route` ASC),
  CONSTRAINT `ends_point_id`
    FOREIGN KEY (`end_point_of_route`)
    REFERENCES `logistics`.`points` (`id_point`),
  CONSTRAINT `starts_point_id`
    FOREIGN KEY (`start_point_of_route`)
    REFERENCES `logistics`.`points` (`id_point`))
ENGINE = InnoDB
AUTO_INCREMENT = 35
DEFAULT CHARACTER SET = utf8;

CREATE TABLE IF NOT EXISTS `logistics`.`transport` (
  `id_transport` INT(11) NOT NULL AUTO_INCREMENT,
  `transport_name` VARCHAR(255) NULL DEFAULT NULL,
  `speed` INT(11) NULL DEFAULT NULL,
  `coefficient` DOUBLE NULL DEFAULT NULL,
  `max_weight` INT(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id_transport`))
ENGINE = InnoDB
AUTO_INCREMENT = 79
DEFAULT CHARACTER SET = utf8;

CREATE TABLE IF NOT EXISTS `logistics`.`maps` (
  `id_maps` INT(11) NOT NULL AUTO_INCREMENT,
  `start_point_id` INT(11) NULL DEFAULT NULL,
  `end_point_id` INT(11) NULL DEFAULT NULL,
  `route` INT(11) NULL DEFAULT NULL,
  `distance` DOUBLE NULL DEFAULT NULL,
  `id_transport_in_maps` INT(11) NULL DEFAULT NULL,
  `cost_for_hour` DOUBLE NULL DEFAULT NULL,
  PRIMARY KEY (`id_maps`),
  UNIQUE INDEX `unique_path` (`start_point_id` ASC, `end_point_id` ASC, `route` ASC),
  INDEX `route_id` (`route` ASC),
  INDEX `end_point_id` (`end_point_id` ASC),
  INDEX `transport_maps` (`id_transport_in_maps` ASC),
  CONSTRAINT `end_point_id`
    FOREIGN KEY (`end_point_id`)
    REFERENCES `logistics`.`points` (`id_point`),
  CONSTRAINT `route_id`
    FOREIGN KEY (`route`)
    REFERENCES `logistics`.`route` (`id_route`),
  CONSTRAINT `start_point_id`
    FOREIGN KEY (`start_point_id`)
    REFERENCES `logistics`.`points` (`id_point`),
  CONSTRAINT `transport_maps`
    FOREIGN KEY (`id_transport_in_maps`)
    REFERENCES `logistics`.`transport` (`id_transport`))
ENGINE = InnoDB
AUTO_INCREMENT = 11
DEFAULT CHARACTER SET = utf8;

CREATE TABLE IF NOT EXISTS `logistics`.`user` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `login` VARCHAR(255) NULL DEFAULT NULL,
  `password` VARCHAR(255) NULL DEFAULT NULL,
  `role` VARCHAR(255) NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `login` (`login` ASC))
ENGINE = InnoDB
AUTO_INCREMENT = 10
DEFAULT CHARACTER SET = utf8;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;