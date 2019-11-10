
DROP DATABASE `bd_route-carpool`;

CREATE DATABASE `bd_route-carpool`;

USE `bd_route-carpool`;

CREATE TABLE `user_type` (
    `id` INT(1) NOT NULL,
    `description` VARCHAR(15) NOT NULL,
    PRIMARY KEY (id)
);

INSERT INTO user_type VALUES ('1', 'Dueño');
INSERT INTO user_type VALUES ('2', 'Usuario');
INSERT INTO user_type VALUES ('3', 'Administrador');

CREATE TABLE `user` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  `type` INT(1) NOT NULL,
  `name` TEXT NOT NULL,
  `first_lastname` TEXT NOT NULL,
  `second_lastname` TEXT NOT NULL,
  `email` VARCHAR(100) NOT NULL,
  `phone` VARCHAR(9) NOT NULL,
  `password` VARCHAR(100) NOT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (type) REFERENCES user_type(id)
);

INSERT INTO `user` (`type`,
  `name`,
  `first_lastname`,
  `second_lastname`,
  `email`,
  `phone`,
  `password`) VALUES
(2,'Carlos', 'Romero', 'Tapia', 'ctapia@gmail.com','981562743', 'abc123'),
(2,'Erica', 'Tapia', 'Nuñez', 'etapia@gmail.com', '981562743','1234'),
(2,'Luis', 'Lopez', 'Zeballos', 'llopez@gmail.com', '981562743','abc1234'),
(1,'Fabian', 'Lopez', 'Sarango', 'flopez@gmail.com','981562743',  '12345'),
(1,'Sandra', 'Lopez', 'Sarango', 'slopez@gmail.com', '987654321',  '123456'),
(1,'Miguel', 'Rodas', 'Balbin', 'mrodas@gmail.com', '965434897',  '1234567'),
(1,'Luis', 'Ramirez', 'Sotelo', 'adfdsf@gmil.com', '987654321',  '123456'),
(1,'Fabian', 'SADSA', 'DSA', 'asd', '987654321', '123');

select * from user;

CREATE TABLE `vehicle_type` (
    `id` INT(1) NOT NULL,
    `description` VARCHAR(15) NOT NULL,
    `seat` INT(1),
    PRIMARY KEY (id)
);

INSERT INTO vehicle_type VALUES (1, 'Minivan', 6);
INSERT INTO vehicle_type VALUES (2, 'Van', 7);
INSERT INTO vehicle_type VALUES (3, 'Sedan', 4);

CREATE TABLE `route` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` int(1) NOT NULL,
  `license_plate` varchar(7) NOT NULL,
  `brand` varchar(50) NOT NULL,
  `sail_point` varchar(100) NOT NULL,
  `arrival_point` varchar(100) NOT NULL,
  `date` date NOT NULL,
  `time` int(11) NOT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (type) REFERENCES vehicle_type (id)
);

INSERT INTO `route` (`type`,`license_plate`, `brand`, `sail_point`, `arrival_point`, `date`, `time`) VALUES
(1, 'ABC-123', 'Hyundai', 'La Molina', 'Pershing', '0000-00-00', 21),
(2, 'ABC-123', 'Hyundai', 'La Molina', 'Pershing', '0000-00-00', 21),
(3, 'EMD-123', 'Toyota', 'Jockey Club', 'Puente Nuevo', '2019-10-30', 0),
(1, 'DFE-345', 'Toyota', 'Aviacion con Javier Prado', 'Rivera Navarrete', '2019-10-30', 19),
(2, 'DFE-123', 'Toyota', 'Javier Prado con Rivera Navarrete', 'Plaza San Miguel', '2019-10-31', 21),
(3, 'EDF-567', 'Hyundai', 'Javier Prado con Pershing', 'Plaza San Miguel', '2019-10-31', 19),
(1, 'EDF-567', 'Hyundai', 'Javier Prado con Pershing', 'Plaza San Miguel', '2019-10-31', 19),
(2, 'ABC-678', 'ttttt', 'asdf', 'lkjh', '0000-00-00', 18),
(3, 'EMD-123', 'Toyota', 'abfdsfds', 'fdsfdsfsdf', '2019-12-30', 14),
(1, 'EMD-123', 'TOYOTA', 'Av. Javier Prado 123', 'Av Pershing 123', '2019-10-30', 21);

select * from route;

CREATE TABLE `route_stops` (
    `id` INT(11) NOT NULL AUTO_INCREMENT,
    `route_id` INT(11) NOT NULL,
    `description` VARCHAR(50) NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (route_id) REFERENCES route(id)
);

INSERT INTO `route_stops` (route_id, description) VALUES
                                                         (1, 'Javier Prado'),
                                                        (1, 'Salaverry'),
                                                        (2, 'Javier Prado'),
                                                        (3, 'Santa Anita'),
                                                        (4, 'Guardia Civil con Javier Prad'),
                                                        (5, 'Salaverry con Pershing'),
                                                        (6, 'Sucre con La Marina'),
                                                        (7, 'Sucre con La Marina'),
                                                        (8, 'zxcv'),
                                                        (9, 'fdsfdsfdsf'),
                                                        (10, '123');

select * from route_stops;