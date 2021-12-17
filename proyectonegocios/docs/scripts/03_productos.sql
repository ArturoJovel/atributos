CREATE TABLE `productos` (
  `prdcod` bigint NOT NULL AUTO_INCREMENT,
  `prddsc` varchar(45) DEFAULT NULL,
  `prdprc` decimal(18,4) DEFAULT NULL,
  `prdImg` varchar(255) DEFAULT NULL,
  `catid` bigint DEFAULT NULL,
  `mrcid` bigint DEFAULT NULL,
  `prdcnt` int DEFAULT NULL,
  PRIMARY KEY (`prdcod`),
  KEY `catid_idx` (`catid`),
  KEY `mrcid_idx` (`mrcid`),
  CONSTRAINT `catid` FOREIGN KEY (`catid`) REFERENCES `categorias` (`catid`),
  CONSTRAINT `mrcid` FOREIGN KEY (`mrcid`) REFERENCES `marcas` (`mrcid`)
) ENGINE=InnoDB;