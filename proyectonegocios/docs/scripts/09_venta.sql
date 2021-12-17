CREATE TABLE `ventas` (
  `vntid` bigint NOT NULL AUTO_INCREMENT,
  `usrcod` bigint NOT NULL,
  `vntfch` datetime DEFAULT NULL,
  PRIMARY KEY (`vntid`),
  KEY `usrcod_idx` (`usrcod`),
  CONSTRAINT `usrcod` FOREIGN KEY (`usrcod`) REFERENCES `usuario` (`usercod`)
) ENGINE=InnoDB;
