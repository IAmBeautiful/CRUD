CREATE SCHEMA `test` DEFAULT CHARACTER SET utf8 ;

CREATE TABLE `test`.`users` 
(
  `ID` INT NOT NULL AUTO_INCREMENT,
  `USER_NAME` VARCHAR(25) NOT NULL,
  
`USER_AGE` INT NOT NULL,
  
`USER_ADMIN` TINYINT NOT NULL,
  
`USER_DATE` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`));

INSERT INTO `test`.`users` (`ID`, `USER_NAME`, `USER_AGE`, `USER_ADMIN`, `USER_DATE`) VALUES ('1', 'Vasya', '73', '1', '2017-06-07 13:37:00');
INSERT INTO `test`.`users` (`ID`, `USER_NAME`, `USER_AGE`, `USER_ADMIN`, `USER_DATE`) VALUES ('2', 'Petya', '14', '1', '2017-06-07 13:38:00');
INSERT INTO `test`.`users` (`ID`, `USER_NAME`, `USER_AGE`, `USER_ADMIN`, `USER_DATE`) VALUES ('3', 'Slava', '33', '1', '2017-06-07 13:54:00');
INSERT INTO `test`.`users` (`ID`, `USER_NAME`, `USER_AGE`, `USER_ADMIN`, `USER_DATE`) VALUES ('4', 'Gosha', '23', '0', '2017-06-07 13:12:00');
INSERT INTO `test`.`users` (`ID`, `USER_NAME`, `USER_AGE`, `USER_ADMIN`, `USER_DATE`) VALUES ('5', 'Grisha', '16', '0', '2017-06-07 14:37:00');
INSERT INTO `test`.`users` (`ID`, `USER_NAME`, `USER_AGE`, `USER_ADMIN`, `USER_DATE`) VALUES ('6', 'Yula', '17', '0', '2017-06-07 16:37:00');
INSERT INTO `test`.`users` (`ID`, `USER_NAME`, `USER_AGE`, `USER_ADMIN`, `USER_DATE`) VALUES ('7', 'Serega', '16', '0', '2017-06-07 22:37:00');
INSERT INTO `test`.`users` (`ID`, `USER_NAME`, `USER_AGE`, `USER_ADMIN`, `USER_DATE`) VALUES ('8', 'Sveta', '23', '0', '2017-06-07 18:37:00');
INSERT INTO `test`.`users` (`ID`, `USER_NAME`, `USER_AGE`, `USER_ADMIN`, `USER_DATE`) VALUES ('9', 'Alina', '13', '0', '2017-06-07 13:37:00');
INSERT INTO `test`.`users` (`ID`, `USER_NAME`, `USER_AGE`, `USER_ADMIN`, `USER_DATE`) VALUES ('10', 'Misha', '16', '0', '2017-06-07 13:37:00');
INSERT INTO `test`.`users` (`ID`, `USER_NAME`, `USER_AGE`, `USER_ADMIN`, `USER_DATE`) VALUES ('11', 'Sasha', '33', '0', '2017-06-07 19:56:00');
INSERT INTO `test`.`users` (`ID`, `USER_NAME`, `USER_AGE`, `USER_ADMIN`, `USER_DATE`) VALUES ('12', 'Artem', '13', '0', '2017-06-07 13:37:00');
INSERT INTO `test`.`users` (`ID`, `USER_NAME`, `USER_AGE`, `USER_ADMIN`, `USER_DATE`) VALUES ('13', 'Vova', '23', '0', '2017-06-07 20:58:00');
INSERT INTO `test`.`users` (`ID`, `USER_NAME`, `USER_AGE`, `USER_ADMIN`, `USER_DATE`) VALUES ('14', 'Masha', '16', '0', '2017-06-07 13:37:00');
INSERT INTO `test`.`users` (`ID`, `USER_NAME`, `USER_AGE`, `USER_ADMIN`, `USER_DATE`) VALUES ('15', 'Christina', '13', '0', '2017-06-07 13:37:00');
INSERT INTO `test`.`users` (`ID`, `USER_NAME`, `USER_AGE`, `USER_ADMIN`, `USER_DATE`) VALUES ('16', 'Olya', '13', '0', '2017-06-07 11:37:00');
INSERT INTO `test`.`users` (`ID`, `USER_NAME`, `USER_AGE`, `USER_ADMIN`, `USER_DATE`) VALUES ('17', 'Nastya', '23', '0', '2017-06-07 13:37:00');
INSERT INTO `test`.`users` (`ID`, `USER_NAME`, `USER_AGE`, `USER_ADMIN`, `USER_DATE`) VALUES ('18', 'Zina', '13', '0', '2017-06-07 13:17:00');
INSERT INTO `test`.`users` (`ID`, `USER_NAME`, `USER_AGE`, `USER_ADMIN`, `USER_DATE`) VALUES ('19', 'Igor', '26', '0', '2017-06-07 13:37:00');
INSERT INTO `test`.`users` (`ID`, `USER_NAME`, `USER_AGE`, `USER_ADMIN`, `USER_DATE`) VALUES ('20', 'Andrey', '13', '0', '2017-06-07 13:18:00');
INSERT INTO `test`.`users` (`ID`, `USER_NAME`, `USER_AGE`, `USER_ADMIN`, `USER_DATE`) VALUES ('21', 'Natalya', '13', '0', '2017-06-07 13:37:00');
INSERT INTO `test`.`users` (`ID`, `USER_NAME`, `USER_AGE`, `USER_ADMIN`, `USER_DATE`) VALUES ('22', 'Ilya', '23', '0', '2017-06-07 12:14:00');
INSERT INTO `test`.`users` (`ID`, `USER_NAME`, `USER_AGE`, `USER_ADMIN`, `USER_DATE`) VALUES ('23', 'Bolik', '16', '0', '2017-06-07 13:37:00');
INSERT INTO `test`.`users` (`ID`, `USER_NAME`, `USER_AGE`, `USER_ADMIN`, `USER_DATE`) VALUES ('24', 'Lelik', '13', '0', '2017-06-07 22:13:00');
INSERT INTO `test`.`users` (`ID`, `USER_NAME`, `USER_AGE`, `USER_ADMIN`, `USER_DATE`) VALUES ('25', 'Petya', '76', '0', '2017-06-07 21:37:00');
INSERT INTO `test`.`users` (`ID`, `USER_NAME`, `USER_AGE`, `USER_ADMIN`, `USER_DATE`) VALUES ('26', 'Angela', '13', '0', '2017-06-07 20:37:00');