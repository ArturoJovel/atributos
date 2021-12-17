CREATE TABLE IF NOT EXISTS `atributos` (
  `atributosCod` INT(10) NOT NULL AUTO_INCREMENT,
  `atributosDsc` VARCHAR(45) NULL,
  `atributosEst` CHAR(3) NULL,
  `atributosCnt` INT(4) NULL,
  PRIMARY KEY (`atributosCod`))
ENGINE = InnoDB