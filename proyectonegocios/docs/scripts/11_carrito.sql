CREATE TABLE `carrito` (
  `crtcod` bigint NOT NULL AUTO_INCREMENT,
  `prdcod` bigint DEFAULT NULL,
  `usercod` bigint DEFAULT NULL,
  `crtfchd` datetime DEFAULT NULL,
  `crtest` varchar(45) DEFAULT 'CRT',
  `crtcan` int DEFAULT '1',
  PRIMARY KEY (`crtcod`),
  KEY `prdcod_idx` (`prdcod`),
  KEY `usercod_idx` (`usercod`),
  CONSTRAINT `prdcod2` FOREIGN KEY (`prdcod`) REFERENCES `productos` (`prdcod`),
  CONSTRAINT `usercod2` FOREIGN KEY (`usercod`) REFERENCES `usuario` (`usercod`)
) ENGINE=InnoDB;