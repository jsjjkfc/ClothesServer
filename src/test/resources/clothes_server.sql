/*
MySQL Data Transfer
Source Host: localhost
Source Database: clothes_server
Target Host: localhost
Target Database: clothes_server
Date: 2015/7/25 20:07:58
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for t_address
-- ----------------------------
CREATE TABLE `t_address` (
  `address_id` int(11) NOT NULL AUTO_INCREMENT,
  `address` varchar(255) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`address_id`),
  KEY `address_user_fk` (`user_id`),
  CONSTRAINT `t_address_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `t_user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for t_attribute
-- ----------------------------
CREATE TABLE `t_attribute` (
  `attribute_id` int(11) NOT NULL AUTO_INCREMENT,
  `attribute_type` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`attribute_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for t_order
-- ----------------------------
CREATE TABLE `t_order` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `time` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`order_id`),
  KEY `order_user_fk` (`user_id`),
  CONSTRAINT `t_order_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `t_user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for t_order_product_relation
-- ----------------------------
CREATE TABLE `t_order_product_relation` (
  `order_product_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `num` int(11) DEFAULT NULL,
  `size` varchar(255) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`order_product_id`),
  KEY `ff1` (`order_id`),
  KEY `ff2` (`product_id`),
  CONSTRAINT `t_order_product_relation_ibfk_3` FOREIGN KEY (`order_id`) REFERENCES `t_order` (`order_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `t_order_product_relation_ibfk_4` FOREIGN KEY (`product_id`) REFERENCES `t_product` (`product_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for t_pic
-- ----------------------------
CREATE TABLE `t_pic` (
  `pic_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) DEFAULT NULL,
  `pic_path` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`pic_id`),
  KEY `pic_fk` (`product_id`),
  CONSTRAINT `t_pic_ibfk_3` FOREIGN KEY (`product_id`) REFERENCES `t_product` (`product_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for t_product
-- ----------------------------
CREATE TABLE `t_product` (
  `product_id` int(11) NOT NULL AUTO_INCREMENT,
  `supplier_id` int(11) DEFAULT NULL,
  `type_id` int(11) DEFAULT NULL,
  `product_name` varchar(255) DEFAULT NULL,
  `product_desc` varchar(255) DEFAULT NULL,
  `product_price` decimal(9,2) DEFAULT '0.00',
  `product_sale_price` decimal(9,2) DEFAULT NULL,
  PRIMARY KEY (`product_id`),
  KEY `fk1` (`supplier_id`),
  KEY `fk2` (`type_id`),
  CONSTRAINT `t_product_ibfk_5` FOREIGN KEY (`supplier_id`) REFERENCES `t_supplier` (`supplier_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `t_product_ibfk_6` FOREIGN KEY (`type_id`) REFERENCES `t_type` (`type_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=95 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for t_product_attribute_relation
-- ----------------------------
CREATE TABLE `t_product_attribute_relation` (
  `product_attribute_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) DEFAULT NULL,
  `attribute_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`product_attribute_id`),
  KEY `t_p_a_fk` (`product_id`),
  KEY `t_p_a_fk1` (`attribute_id`),
  CONSTRAINT `t_p_a_fk` FOREIGN KEY (`product_id`) REFERENCES `t_product` (`product_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `t_p_a_fk1` FOREIGN KEY (`attribute_id`) REFERENCES `t_attribute` (`attribute_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for t_supplier
-- ----------------------------
CREATE TABLE `t_supplier` (
  `supplier_id` int(11) NOT NULL AUTO_INCREMENT,
  `supplier_pic_path` varchar(255) DEFAULT NULL,
  `supplier_desc` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`supplier_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for t_supplier_type_relation
-- ----------------------------
CREATE TABLE `t_supplier_type_relation` (
  `supplier_id` int(11) DEFAULT NULL,
  `type_id` int(11) DEFAULT NULL,
  `supplier_type_id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`supplier_type_id`),
  KEY `fk3` (`supplier_id`),
  KEY `fk4` (`type_id`),
  CONSTRAINT `t_supplier_type_relation_ibfk_5` FOREIGN KEY (`supplier_id`) REFERENCES `t_supplier` (`supplier_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `t_supplier_type_relation_ibfk_6` FOREIGN KEY (`type_id`) REFERENCES `t_type` (`type_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for t_type
-- ----------------------------
CREATE TABLE `t_type` (
  `type_id` int(11) NOT NULL AUTO_INCREMENT,
  `type_name` varchar(255) DEFAULT '',
  PRIMARY KEY (`type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for t_user
-- ----------------------------
CREATE TABLE `t_user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `wechat_open_id` varchar(255) DEFAULT NULL,
  `telephone` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records 
-- ----------------------------
INSERT INTO `t_attribute` VALUES ('1', '颜色', '红色');
INSERT INTO `t_attribute` VALUES ('2', '颜色', '绿色');
INSERT INTO `t_attribute` VALUES ('3', '尺寸', 'XXL');
INSERT INTO `t_attribute` VALUES ('4', '尺寸', 'XL');
INSERT INTO `t_pic` VALUES ('1', '88', 'http://7xk6ga.com1.z0.glb.clouddn.com/o_19r1qjtfnlec19gt1b3u1fumpum9.png');
INSERT INTO `t_pic` VALUES ('2', '89', 'http://7xk6ga.com1.z0.glb.clouddn.com/o_19r1qknddb031o4u2jd11l2a3q9.png');
INSERT INTO `t_pic` VALUES ('3', '90', 'http://7xk6ga.com1.z0.glb.clouddn.com/o_19r1qkv56uag9eqhrq76m1ust9.png');
INSERT INTO `t_pic` VALUES ('4', '91', 'http://7xk6ga.com1.z0.glb.clouddn.com/o_19r1ql58514fe1u23rat1c22b6v9.png');
INSERT INTO `t_pic` VALUES ('5', '92', 'http://7xk6ga.com1.z0.glb.clouddn.com/o_19r1qldl3rvh92f169c1on5hk89.png');
INSERT INTO `t_pic` VALUES ('9', '93', 'http://7xk6ga.com1.z0.glb.clouddn.com/o_19r2gsbp3e15qfs10dp1dojhi89.png');
INSERT INTO `t_pic` VALUES ('10', '94', 'http://7xk6ga.com1.z0.glb.clouddn.com/o_19r2gtt2l1fno1uk28iba17d29.png');
INSERT INTO `t_product` VALUES ('88', '1', '1', 'sdfs', '73', '44.00', '0.00');
INSERT INTO `t_product` VALUES ('89', '1', '1', null, '73', '44.00', '0.00');
INSERT INTO `t_product` VALUES ('90', '1', '2', 'sdfsd', 'sdfsd', '4343.00', '423.00');
INSERT INTO `t_product` VALUES ('91', '1', '2', 'sdfsd', '23sdf', '232.00', '32.00');
INSERT INTO `t_product` VALUES ('92', '1', '1', 'sdsd', 'dfsd', '23.00', '23.00');
INSERT INTO `t_product` VALUES ('93', '1', '1', '', '73', '44.00', '0.00');
INSERT INTO `t_product` VALUES ('94', '1', '1', '', '73', '44.00', '0.00');
INSERT INTO `t_product_attribute_relation` VALUES ('1', '88', '2');
INSERT INTO `t_product_attribute_relation` VALUES ('2', '88', '1');
INSERT INTO `t_product_attribute_relation` VALUES ('3', '88', '3');
INSERT INTO `t_product_attribute_relation` VALUES ('4', '88', '4');
INSERT INTO `t_product_attribute_relation` VALUES ('5', '89', '1');
INSERT INTO `t_product_attribute_relation` VALUES ('6', '93', '1');
INSERT INTO `t_product_attribute_relation` VALUES ('7', '94', '1');
INSERT INTO `t_supplier` VALUES ('1', null, '店家1号');
INSERT INTO `t_type` VALUES ('1', '类别1');
INSERT INTO `t_type` VALUES ('2', '类型2');
INSERT INTO `t_type` VALUES ('3', '类型3');
INSERT INTO `t_user` VALUES ('1', 'cqd', '123', '1', '10000', null);
