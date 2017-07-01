DROP DATABASE IF EXISTS `vellore_hotel`;

CREATE DATABASE `vellore_hotel`;

USE `vellore_hotel`;

CREATE TABLE IF NOT EXISTS `device_room` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `node` varchar(10) NOT NULL,
  `internal_pin` int(11) NOT NULL,
  `external_pin` varchar(10) NOT NULL,
  `relay_pin` varchar(10) NOT NULL,
  `room_no` varchar(10) NOT NULL,
  `active` boolean NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE IF NOT EXISTS `device_status` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `room_id` int(11),
  `room_no` varchar(10) NOT NULL,
  `node` varchar(10) NOT NULL,
  `pin` int(11) NOT NULL,
  `status` varchar(10) NOT NULL,
  `time` varchar(30) NOT NULL,
  `action_by` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_rooms_idx` (`room_id`),
  CONSTRAINT `fk_rooms` FOREIGN KEY (`room_id`) REFERENCES `device_room` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `device_room` 
(`id`, `node`, `internal_pin`, `external_pin`, `relay_pin`, `room_no`, `active`) VALUES 
(NULL, 'n1', '5', 'D1', 'R1', '3', '1'),
(NULL, 'n1', '4', 'D2', 'R2', '4', '1'),

(NULL, 'n2', '5', 'D1', 'R1', '7', '1'),
(NULL, 'n2', '4', 'D2', 'R2', '8', '1'),
(NULL, 'n2', '2', 'D4', 'R3', '9', '1'),

(NULL, 'n3', '5', 'D1', 'R1', '10', '1'),
(NULL, 'n3', '4', 'D2', 'R2', '11', '1'),

(NULL, 'n4', '5', 'D1', 'R1', '12', '1'),
(NULL, 'n4', '4', 'D2', 'R2', '13', '1'),
(NULL, 'n4', '2', 'D4', 'R3', '14', '1'),

(NULL, 'n5', '5', 'D1', 'R1', '15', '1'),
(NULL, 'n5', '4', 'D2', 'R2', '16', '1'),

(NULL, 'n6', '5', 'D1', 'R1', '17', '1'),
(NULL, 'n6', '4', 'D2', 'R2', '18', '1'),
(NULL, 'n6', '2', 'D4', 'R3', '19', '1'),

(NULL, 'n7', '5', 'D1', 'R1', '17', '1'),
(NULL, 'n7', '4', 'D2', 'R2', '18', '1'),
(NULL, 'n7', '2', 'D4', 'R3', '19', '1'),

(NULL, 'n8', '5', 'D4', 'R3', '23', '1'),
(NULL, 'n8', '4', 'D2', 'R2', '24', '1');

INSERT INTO `device_status` 
(`id`, `room_id`, `room_no`, `node`, `pin`, `status`, `time`, `action_by`) VALUES 
(NULL, '1', '3', 'n1', '5', '1', '', 'startup');
