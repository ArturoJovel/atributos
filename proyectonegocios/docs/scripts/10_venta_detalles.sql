CREATE TABLE `ventas_detalles` (
  `vntid` bigint NOT NULL,
  `prdcod` bigint NOT NULL,
  `cantidad` decimal(18,4) DEFAULT NULL,
  `precio` decimal(18,4) DEFAULT NULL,
  PRIMARY KEY (`vntid`,`prdcod`),
  KEY `vntid_idx` (`vntid`),
  KEY `prdcod_idx` (`prdcod`),
  CONSTRAINT `prdcod` FOREIGN KEY (`prdcod`) REFERENCES `productos` (`prdcod`),
  CONSTRAINT `vntid` FOREIGN KEY (`vntid`) REFERENCES `ventas` (`vntid`)
) ENGINE=InnoDB;