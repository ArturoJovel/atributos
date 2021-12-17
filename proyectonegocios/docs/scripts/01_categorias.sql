CREATE TABLE `categorias` (
  `catid` bigint NOT NULL AUTO_INCREMENT,
  `catnom` varchar(45) DEFAULT NULL,
  `catest` char(3) DEFAULT 'ACT',
  PRIMARY KEY (`catid`)
) ENGINE=InnoDB;;