CREATE TABLE `center_location` (
  `center_id` char(12) NOT NULL,
  `center_name` varchar(20) NOT NULL,
  `center_address_line_1` varchar(45) NOT NULL,
  `center_address_line_2` varchar(45) NOT NULL,
  `center_state` varchar(45) NOT NULL,
  `center_city` varchar(45) NOT NULL,
  `center_pincode` varchar(6) NOT NULL,
  `center_lat` decimal(10,8) DEFAULT NULL,
  `center_lng` decimal(10,8) DEFAULT NULL,
  PRIMARY KEY (`center_id`),
  UNIQUE KEY `center_name_UNIQUE` (`center_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='list of centers';
CREATE TABLE `center_item_type` (
  `item_type_id` varchar(8) NOT NULL,
  `item_type_name` varchar(45) NOT NULL,
  `item_type_unit` varchar(10) NOT NULL,
  PRIMARY KEY (`item_type_id`),
  UNIQUE KEY `item_type_name` (`item_type_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
CREATE TABLE `center_item` (
  `item_id` int(11) NOT NULL,
  `item_name` varchar(45) NOT NULL,
  `item_type_id` varchar(8) DEFAULT NULL,
  `item_desc` varchar(45) DEFAULT NULL,
  `item_quantity` int(11) NOT NULL,
  `item_price` decimal(10,2) NOT NULL,
  PRIMARY KEY (`item_id`),
  KEY `fk_item_type_idx` (`item_type_id`),
  CONSTRAINT `fk_item_type` FOREIGN KEY (`item_type_id`) REFERENCES `center_item_type` (`item_type_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
CREATE TABLE `center_inventory_item` (
  `inventory_item_id` int(11) NOT NULL,
  `item_id` int(11) DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  PRIMARY KEY (`inventory_item_id`),
  KEY `fk_item_id_idx` (`item_id`),
  CONSTRAINT `fk_item_id` FOREIGN KEY (`item_id`) REFERENCES `center_item` (`item_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


INSERT INTO `freshupcenter`.`center_location`
(`center_id`,
`center_name`,
`center_address_line_1`,
`center_address_line_2`,
`center_state`,
`center_city`,
`center_pincode`,
`center_lat`,
`center_lng`)
VALUES
('tshydgbl032a',
'FRESHUP GACHIBOWLI',
'Near Gachibowli Flyover',
'',
'Telangana State',
'Hyderabad',
'500032',
17.4379203,
78.362463);


