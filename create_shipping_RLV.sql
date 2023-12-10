DROP DATABASE IF EXISTS shipping;

CREATE DATABASE shipping;

USE shipping;

CREATE TABLE `container` (
  `cID` int NOT NULL,
  `length` int NOT NULL,
  `width` int NOT NULL,
  `height` int NOT NULL,
  `weight` double NOT NULL,
  `shipID` char(2) NOT NULL,
  PRIMARY KEY (`cID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `port` (
  `pName` varchar(20) NOT NULL,
  `city` varchar(15) NOT NULL,
  `country` char(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `ship` (
  `sName` varchar(20) NOT NULL,
  `displacement` int NOT NULL,
  `capName` varchar(15) NOT NULL,
  `crewNum` int NOT NULL,
  `pName` varchar(20) DEFAULT NULL,
  `year` int NOT NULL,
  PRIMARY KEY (`sName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
