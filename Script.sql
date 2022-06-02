



CREATE TABLE IF NOT EXISTS `car` (
  `licenseNum` char(25) NOT NULL,
  `type` char(25) NOT NULL,
  `color` char(25) NOT NULL,
  PRIMARY KEY (`licenseNum`),
  UNIQUE KEY `Car_licenseNum_uindex` (`licenseNum`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

INSERT INTO `car` (`licenseNum`, `type`, `color`) VALUES
('123poi', 'Sedan', 'Red'),
('123sdf', 'Sedan', 'Black'),
('123wer', 'SUV', 'Gold'),
('BRY123', 'Sedan', 'Blue'),
('GTH657', 'Truck', 'Green'),
('MAT123', 'Sedan', 'Bronze'),
('MAT456', 'Truck', 'Gold'),
('RAH123', 'Van', 'Red'),
('RAH456', 'Truck', 'Grey'),
('SCO123', 'Truck', 'Blue'),
('SCO456', 'Sedan', 'Green'),
('123456', 'car', 'red');



CREATE TABLE IF NOT EXISTS `drivers` (
  `DID` int(11) NOT NULL AUTO_INCREMENT,
  `email` char(25) NOT NULL,
  `password` char(25) NOT NULL,
  `phoneNum` char(25) NOT NULL,
  `name` char(25) NOT NULL,
  `licenseNum` char(25) NOT NULL,
  PRIMARY KEY (`DID`),
  UNIQUE KEY `Driver_name_uindex` (`name`),
  KEY `licenseNum` (`licenseNum`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;


INSERT INTO `drivers` (`DID`, `email`, `password`, `phoneNum`, `name`, `licenseNum`) VALUES
(1, 'laks@mail.com', '123', '6049831234', 'Laks', 'GTH657'),
(2, 'dasfasd@asdf.com', '123', '6041234567', 'Nadine', '123sdf'),
(3, 'rahul@mail.com', '123', '6043962446', 'Rahul', 'RAH123'),
(4, 'scott@mail.com', '123', '6042093841', 'Scott', 'SCO123'),
(5, 'scott1@mail.com', '123', '6042919401', 'Henry', 'SCO456'),
(6, 'matan@mail.com', '123', '6041239584', 'Matan', 'MAT123'),
(7, 'matan1@mail.com', '123', '6047830134', 'Halevy', 'MAT456'),
(8, 'bryan@mail.com', '123', '6089401034', 'Bryan', 'BRY123'),
(9, 'bryan1@mail.com', '123', '7783489219', 'Jiang', 'GTH657'),
(10, '2134321@dfs.com', '123', '7781234567', 'Kobe', '123wer'),
(11, 'pk@gmail.com', 'Pk@123', '0779825624', 'pk', '123456');




CREATE TABLE IF NOT EXISTS `locations` (
  `postal_code` char(25) NOT NULL,
  `city` char(25) NOT NULL,
  `province` char(25) NOT NULL,
  PRIMARY KEY (`postal_code`),
  UNIQUE KEY `Location_postalCode_uindex` (`postal_code`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;


INSERT INTO `locations` (`postal_code`, `city`, `province`) VALUES
('123ahj', 'Vancouver', 'BC'),
('123asd', 'Vancouver', 'BC'),
('321asd', 'Vancouver', 'BC'),
('v4r2e2', 'Vancouver', 'BC'),
('v5y6t7', 'Surrey', 'BC'),
('V6T 1Z1', 'Vancouver', 'BC'),
('V6T1Z4', 'Vancouver', 'BC'),
('V6T4T6', 'Vancouver', 'BC'),
('V6Y 3C5', 'Richmond', 'BC'),
('v7r3r3', 'Vancouver', 'BC'),
('5863', 'colombo', 'colombo'),
('4562', 'colombo', 'colombo'),
('462', 'hikkaduwe', 'galle'),
('456', 'malabe', 'colombo'),
('262', 'ff', 'dsds');




CREATE TABLE IF NOT EXISTS `participates` (
  `PID` int(11) NOT NULL,
  `RID` int(11) NOT NULL,
  `Type` char(25) DEFAULT NULL,
  PRIMARY KEY (`PID`,`RID`),
  KEY `RID` (`RID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;




INSERT INTO `participates` (`PID`, `RID`, `Type`) VALUES
(1, 3, 'cash'),
(1, 1, 'cash');





CREATE TABLE IF NOT EXISTS `passengers` (
  `PID` int(11) NOT NULL AUTO_INCREMENT,
  `email` char(25) NOT NULL,
  `password` char(25) NOT NULL,
  `phoneNum` char(25) NOT NULL,
  `name` char(25) NOT NULL,
  PRIMARY KEY (`PID`),
  UNIQUE KEY `Passenger_name_uindex` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;



INSERT INTO `passengers` (`PID`, `email`, `password`, `phoneNum`, `name`) VALUES
(1, 'mbh159@gmail.com', '123', '6044187452', 'Angus'),
(2, 'test123@gmail.com', '123', '6044187451', 'Kaiser'),
(4, 'asdf@adsf.com', '123', '6044187455', 'Hasan'),
(5, 'adsf@asdf.com', '123', '6044187458', 'Yeung'),
(6, 'cameron@mail.com', '123', '6049323450', 'Cameron'),
(7, 'rooney@mail.com', '123', '7789432342', 'Rooney'),
(8, 'sadsa@asd.com', '123', '7787787788', 'Ronaldo'),
(9, 'christianbale@batman.com', '123', '6041234567', 'christianbale');



CREATE TABLE IF NOT EXISTS `rides` (
  `RID` int(11) NOT NULL AUTO_INCREMENT,
  `destination` char(25) NOT NULL,
  `price` float NOT NULL,
  `DID` int(11) NOT NULL,
  `address` char(25) DEFAULT NULL,
  `postal_code` char(25) NOT NULL,
  `ride_date` date NOT NULL,
  `ride_time` time DEFAULT NULL,
  `seats` int(11) NOT NULL,
  `seats_left` int(11) NOT NULL,
  `createddatetime` datetime NOT NULL,
  PRIMARY KEY (`RID`),
  KEY `DID` (`DID`),
  KEY `RideShare_Location_postalCode_fk` (`postal_code`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;



INSERT INTO `rides` (`RID`, `destination`, `price`, `DID`, `address`, `postal_code`, `ride_date`, `ride_time`, `seats`, `seats_left`, `createddatetime`) VALUES
(1, 'malabe', 400, 9, 'new kandy road', '4562', '2022-05-28', '12:02:00', 5, 4, '2022-05-27 17:53:08'),
(2, 'hikkaduwe', 600, 9, 'galle road', '462', '2022-05-28', '17:00:00', 4, 0, '2022-05-27 17:54:03'),
(3, 'kaduwela', 200, 7, 'new kandy road', '456', '2022-05-28', '17:09:00', 6, 0, '2022-05-28 19:10:45'),
(4, 'ff', 50, 6, 'sds', '262', '2022-05-28', '17:55:00', 10, 10, '2022-05-28 22:41:31');

COMMIT;











