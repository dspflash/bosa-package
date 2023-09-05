/*
SQLyog 企业版 - MySQL GUI v8.14 
MySQL - 5.0.51b-community-nt-log : Database - bosa
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`bosa` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `bosa`;

/*Table structure for table `dataview` */

DROP TABLE IF EXISTS `dataview`;

CREATE TABLE `dataview` (
  `ID` int(10) NOT NULL auto_increment,
  `SN` varchar(50) default NULL,
  `NewSN` varchar(50) default NULL,
  `Tester` varchar(50) default NULL,
  `ProductBill` varchar(50) default NULL,
  `InfOne` varchar(50) default NULL,
  `InfTwo` varchar(50) default NULL,
  `InfThree` varchar(50) default NULL,
  `InfFour` varchar(50) default NULL,
  `InfFive` varchar(50) default NULL,
  `InfSix` varchar(50) default NULL,
  `TestType` varchar(50) default NULL,
  `TestTemp` varchar(50) default NULL,
  `TestMethod` varchar(50) default NULL,
  `TcMode` varchar(50) default NULL,
  `TeMode` varchar(50) default NULL,
  `Vbr` varchar(50) default NULL,
  `Vapd` varchar(50) default NULL,
  `Sen` varchar(50) default NULL,
  `OL` varchar(50) default NULL,
  `Res` varchar(50) default NULL,
  `Icc` varchar(50) default NULL,
  `Idark` varchar(50) default NULL,
  `IXtalk` varchar(50) default NULL,
  `EXtalk` varchar(50) default NULL,
  `Gain` varchar(50) default NULL,
  `MDPId` varchar(50) default NULL,
  `Ith` varchar(50) default NULL,
  `Rs` varchar(50) default NULL,
  `SE` varchar(50) default NULL,
  `IKink` varchar(50) default NULL,
  `PIMKink` varchar(50) default NULL,
  `MKink` varchar(50) default NULL,
  `Kink` varchar(50) default NULL,
  `Iop` varchar(50) default NULL,
  `Vop` varchar(50) default NULL,
  `Im` varchar(50) default NULL,
  `ImNfa` varchar(50) default NULL,
  `Pf` varchar(50) default NULL,
  `Imtepf` varchar(50) default NULL,
  `Te` varchar(50) default NULL,
  `Tc` varchar(50) default NULL,
  `Result` varchar(50) default NULL,
  `WorkerID` varchar(255) default NULL,
  `TestDate` timestamp NULL default NULL,
  UNIQUE KEY `Index_8E26C142_1F41_4049` (`ID`),
  KEY `WorkerID` (`WorkerID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `dataview` */

LOCK TABLES `dataview` WRITE;

UNLOCK TABLES;

/*Table structure for table `item` */

DROP TABLE IF EXISTS `item`;

CREATE TABLE `item` (
  `item_id` int(11) NOT NULL auto_increment,
  `item_id_m` int(11) default NULL,
  `org_id` int(11) NOT NULL,
  `item_number` varchar(50) NOT NULL,
  `item_name` varchar(50) default NULL,
  `item_specification` varchar(50) default NULL,
  `item_description` varchar(255) default NULL,
  `image_file` varchar(100) default NULL,
  `product_line` varchar(20) default NULL,
  `product_line_percentage` tinyint(4) default '0',
  `locator_control` int(11) default NULL,
  `allow_negative_balance_cb` tinyint(1) default '1',
  `long_description` text,
  `uom_id` int(11) NOT NULL,
  `origination_type` varchar(25) default NULL,
  `origination_date` date default NULL,
  `item_type` int(20) default NULL,
  `item_status` int(11) NOT NULL default '277',
  `item_category` int(11) default NULL,
  `inventory_item_cb` tinyint(1) default '1',
  `stockable_cb` tinyint(1) default '1',
  `transactable_cb` tinyint(1) default '1',
  `reservable_cb` tinyint(1) default '0',
  `cycle_count_enabled_cb` tinyint(1) default '1',
  `kit_cb` tinyint(1) default '0',
  `bom_enabled_cb` tinyint(1) default '0',
  `bom_type` int(11) default '0',
  `costing_enabled_cb` tinyint(1) default '1',
  `inventory_asset_cb` tinyint(1) default '0',
  `default_cost_group` varchar(15) default NULL,
  `material_ac_id` int(11) default '0',
  `material_oh_ac_id` int(11) default '0',
  `overhead_ac_id` int(11) default '0',
  `resource_ac_id` int(11) default '0',
  `osp_ac_id` int(11) default '0',
  `expense_ac_id` int(11) default '0',
  `lot_uniqueness` varchar(25) default NULL,
  `lot_generation` varchar(25) default NULL,
  `lot_prefix` varchar(25) default NULL,
  `lot_starting_number` int(11) default '1',
  `serial_uniqueness` varchar(25) default NULL,
  `serial_generation` varchar(25) default NULL,
  `serial_prefix` varchar(25) default NULL,
  `serial_starting_number` int(11) default '1',
  `purchased_cb` tinyint(1) default '1',
  `use_asl_cb` tinyint(1) default '1',
  `invoice_matching` int(11) default '302',
  `default_buyer` int(11) default NULL,
  `list_price` decimal(15,5) default '0.00000',
  `contract_item_type` varchar(25) default NULL,
  `duration_uom_id` int(11) default '0',
  `receipt_sub_inventory` int(11) default '1',
  `over_receipt_percentage` tinyint(4) default '0',
  `over_receipt_action` varchar(20) default NULL,
  `receipt_days_early` int(10) default '0',
  `receipt_days_late` int(10) default '0',
  `receipt_day_action` varchar(20) default NULL,
  `receipt_routing` int(11) default '299',
  `weight_uom_id` int(11) default NULL,
  `weight` int(11) default '0',
  `volume_uom_id` int(11) default NULL,
  `volume` int(11) default '0',
  `dimension_uom_id` int(11) default NULL,
  `length` int(11) default '0',
  `width` int(11) default '0',
  `height` int(11) default '0',
  `equipment_cb` tinyint(1) default '0',
  `electronic_format_cb` tinyint(1) default '0',
  `planning_method` int(11) default NULL,
  `planner` int(11) default NULL,
  `make_buy` enum('Make','Buy') default 'Buy',
  `wip_supply_subinventory` int(11) default '1',
  `wip_supply_locator` int(11) default NULL,
  `fix_order_quantity` int(11) default '0',
  `saftey_stock_days` int(11) default '0',
  `saftey_stock_percentage` tinyint(4) default '0',
  `saftey_stock_quantity` int(11) default '0',
  `fix_days_supply` int(11) default '0',
  `fix_lot_multiplier` int(11) default '0',
  `minimum_order_quantity` int(11) default '0',
  `maximum_order_quantity` int(11) default '0',
  `minmax_min_quantity` decimal(20,5) default '0.00000',
  `minmax_max_quantity` decimal(20,5) default '0.00000',
  `minmax_multibin_number` int(5) default '0',
  `minmax_multibin_size` decimal(20,5) default '0.00000',
  `forecast_method` int(11) default NULL,
  `forecast_control` varchar(20) default NULL,
  `demand_timefence` int(11) default '0',
  `planning_timefence` int(11) default '0',
  `release_timefence` int(11) default '0',
  `pre_processing_lt` int(11) default '0',
  `post_processing_lt` int(11) default '0',
  `processing_lt` int(11) default '0',
  `cumulative_mfg_lt` int(11) default '0',
  `cumulative_total_lt` int(11) default '0',
  `lt_lot_size` int(11) default '0',
  `build_in_wip_cb` tinyint(1) default '1',
  `wip_supply_type` int(11) default '337',
  `customer_ordered_cb` tinyint(1) default '1',
  `internal_ordered_cb` tinyint(1) default '1',
  `shippable_cb` tinyint(1) default '1',
  `returnable_cb` tinyint(1) default '1',
  `invoiceable_cb` tinyint(1) default '1',
  `billing_type` int(11) default NULL,
  `service_request_cb` tinyint(1) default '0',
  `atp` int(11) default '0',
  `picking_rule` varchar(20) default NULL,
  `sourcing_rule_id` int(11) default NULL,
  `sales_ac_id` int(11) default '0',
  `cogs_ac_id` int(11) default '0',
  `deffered_cogs_ac_id` int(11) default '0',
  `ip_tax_class` int(11) default '0',
  `op_tax_class` int(11) default '0',
  `ap_payment_term` int(11) default '0',
  `ar_payment_term` int(11) default '0',
  `duration` decimal(15,5) default '0.00000',
  `rev_enabled_cb` tinyint(1) default '0',
  `rounding_option` int(11) default '595',
  `onhand_with_rev_cb` tinyint(1) default '0',
  `item_rev_number` int(11) default NULL,
  `am_asset_type` varchar(25) default NULL,
  `am_activity_cause` int(11) default NULL,
  `am_activity_type` int(11) default NULL,
  `am_activity_source` int(11) default NULL,
  `discount_class` int(11) default '0',
  `demand_class` varchar(25) default NULL,
  `created_by` int(11) NOT NULL,
  `creation_date` datetime default NULL,
  `last_update_by` int(11) NOT NULL,
  `last_update_date` datetime default NULL,
  PRIMARY KEY  (`item_id`),
  UNIQUE KEY `item_number_2` (`item_number`,`org_id`),
  UNIQUE KEY `item_id_m` (`item_id_m`,`org_id`),
  KEY `item_type` (`item_type`),
  KEY `item_category` (`item_category`),
  KEY `item_number` (`item_number`),
  KEY `inventory_item_cb` (`inventory_item_cb`),
  KEY `item_status` (`item_status`),
  KEY `item_name` (`item_name`),
  KEY `item_specification` (`item_specification`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `item` */

LOCK TABLES `item` WRITE;

UNLOCK TABLES;

/*Table structure for table `item_properties` */

DROP TABLE IF EXISTS `item_properties`;

CREATE TABLE `item_properties` (
  `idx` bigint(20) NOT NULL auto_increment,
  `item_id_m` bigint(20) NOT NULL,
  `property_id` int(11) NOT NULL,
  `property_value` varchar(20) NOT NULL default '',
  `org_id` int(11) default NULL,
  `created_by` int(12) NOT NULL,
  `creation_date` datetime default NULL,
  `last_update_by` int(12) NOT NULL,
  `last_update_date` datetime default NULL,
  PRIMARY KEY  (`idx`),
  UNIQUE KEY `id_item` (`item_id_m`,`property_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*Data for the table `item_properties` */

LOCK TABLES `item_properties` WRITE;

UNLOCK TABLES;

/*Table structure for table `item_property` */

DROP TABLE IF EXISTS `item_property`;

CREATE TABLE `item_property` (
  `property_id` int(11) NOT NULL auto_increment,
  `prop_display_name` varchar(20) NOT NULL default '',
  `description` varchar(50) default NULL,
  `created_by` int(12) NOT NULL,
  `creation_date` datetime default NULL,
  `last_update_by` int(12) NOT NULL,
  `last_update_date` datetime default NULL,
  PRIMARY KEY  (`property_id`),
  UNIQUE KEY `prop_display_name` (`prop_display_name`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

/*Data for the table `item_property` */

LOCK TABLES `item_property` WRITE;

insert  into `item_property`(`property_id`,`prop_display_name`,`description`,`created_by`,`creation_date`,`last_update_by`,`last_update_date`) values (1,'产品品名','',1,'2023-07-27 14:45:25',1,'2023-07-27 15:35:42'),(2,'客户品名','',1,'2023-07-27 14:45:40',1,'2023-07-27 15:35:50'),(3,'工单单号','',1,'2023-07-27 14:46:00',1,'2023-07-27 15:35:57'),(4,'合同单号','',1,'2023-07-27 14:46:17',1,'2023-07-27 15:36:12'),(5,'型号','',1,'2023-07-27 14:46:34',1,'2023-07-27 15:36:21');

UNLOCK TABLES;

/*Table structure for table `mac_10gbosadata` */

DROP TABLE IF EXISTS `mac_10gbosadata`;

CREATE TABLE `mac_10gbosadata` (
  `ID` int(10) NOT NULL auto_increment,
  `SN` varchar(50) default NULL,
  `NewSN` varchar(50) default NULL,
  `Tester` varchar(50) default NULL,
  `ProductBill` varchar(50) default NULL,
  `InfOne` varchar(50) default NULL,
  `InfTwo` varchar(50) default NULL,
  `InfThree` varchar(50) default NULL,
  `InfFour` varchar(50) default NULL,
  `InfFive` varchar(50) default NULL,
  `InfSix` varchar(50) default NULL,
  `TestType` varchar(50) default NULL,
  `TestTemp` varchar(50) default NULL,
  `TestMethod` varchar(50) default NULL,
  `TcMode` varchar(50) default NULL,
  `TeMode` varchar(50) default NULL,
  `Vbr` varchar(50) default NULL,
  `Vapd` varchar(50) default NULL,
  `Sen` varchar(50) default NULL,
  `OL` varchar(50) default NULL,
  `Res` varchar(50) default NULL,
  `Icc` varchar(50) default NULL,
  `Idark` varchar(50) default NULL,
  `IXtalk` varchar(50) default NULL,
  `EXtalk` varchar(50) default NULL,
  `Gain` varchar(50) default NULL,
  `MDPId` varchar(50) default NULL,
  `Ith` varchar(50) default NULL,
  `Rs` varchar(50) default NULL,
  `SE` varchar(50) default NULL,
  `IKink` varchar(50) default NULL,
  `PIMKink` varchar(50) default NULL,
  `MKink` varchar(50) default NULL,
  `Kink` varchar(50) default NULL,
  `Iop` varchar(50) default NULL,
  `Vop` varchar(50) default NULL,
  `Im` varchar(50) default NULL,
  `ImNfa` varchar(50) default NULL,
  `Pf` varchar(50) default NULL,
  `Imtepf` varchar(50) default NULL,
  `Te` varchar(50) default NULL,
  `Tc` varchar(50) default NULL,
  `Result` varchar(50) default NULL,
  `WorkerID` varchar(255) default NULL,
  `TestDate` timestamp NULL default NULL,
  UNIQUE KEY `Index_09F9FC51_2D62_4AFB` (`ID`),
  KEY `WorkerID` (`WorkerID`),
  KEY `SN` (`SN`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `mac_10gbosadata` */

LOCK TABLES `mac_10gbosadata` WRITE;

UNLOCK TABLES;

/*Table structure for table `pkg` */

DROP TABLE IF EXISTS `pkg`;

CREATE TABLE `pkg` (
  `pkg_id` bigint(20) NOT NULL auto_increment,
  `pkg_sn` varchar(50) NOT NULL,
  `pkg_tp` enum('box','bag','carton') default 'box',
  `pkg_spec` smallint(6) default NULL,
  `remark` varchar(50) default NULL,
  `created_dt` timestamp NULL default NULL,
  `created_by` smallint(5) default NULL,
  `updated_dt` timestamp NULL default NULL,
  `updated_by` smallint(5) default NULL,
  PRIMARY KEY  (`pkg_id`),
  UNIQUE KEY `pkg_sn` (`pkg_sn`),
  KEY `pkg_tp` (`pkg_tp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `pkg` */

LOCK TABLES `pkg` WRITE;

UNLOCK TABLES;

/*Table structure for table `pkg_mat` */

DROP TABLE IF EXISTS `pkg_mat`;

CREATE TABLE `pkg_mat` (
  `pkg_mat_id` bigint(20) NOT NULL auto_increment,
  `pkg_id` bigint(20) NOT NULL,
  `mat_id` bigint(20) NOT NULL,
  `mat_sn` varchar(50) NOT NULL,
  `created_dt` timestamp NULL default NULL,
  `created_by` smallint(6) default NULL,
  `updated_dt` timestamp NULL default NULL,
  `updated_by` smallint(6) default NULL,
  PRIMARY KEY  (`pkg_mat_id`),
  UNIQUE KEY `mat_id` (`mat_id`),
  KEY `pkg_id` (`pkg_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `pkg_mat` */

LOCK TABLES `pkg_mat` WRITE;

UNLOCK TABLES;

/*Table structure for table `pkg_pkg` */

DROP TABLE IF EXISTS `pkg_pkg`;

CREATE TABLE `pkg_pkg` (
  `pkg_pkg_id` bigint(20) NOT NULL auto_increment,
  `pkg_id` bigint(20) default NULL,
  `pkg_x_id` bigint(20) default NULL COMMENT 'subpkg',
  `created_dt` timestamp NULL default NULL,
  `created_by` smallint(6) default NULL,
  `updated_dt` timestamp NULL default NULL,
  `updated_by` smallint(6) default NULL,
  PRIMARY KEY  (`pkg_pkg_id`),
  UNIQUE KEY `pkg_x_id` (`pkg_x_id`),
  KEY `pkg_id` (`pkg_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `pkg_pkg` */

LOCK TABLES `pkg_pkg` WRITE;

UNLOCK TABLES;

/*Table structure for table `pkg_specification` */

DROP TABLE IF EXISTS `pkg_specification`;

CREATE TABLE `pkg_specification` (
  `specification_id` int(12) NOT NULL auto_increment,
  `org_id` int(12) NOT NULL,
  `pkg_tp` enum('box','bag','carton') default NULL,
  `structure` varchar(255) default NULL,
  `specification_name` varchar(50) NOT NULL,
  `bc_label` varchar(50) NOT NULL,
  `specification` varchar(25) default NULL,
  `dimension_uom_id` int(12) default NULL,
  `length` decimal(15,5) default NULL,
  `height` decimal(15,5) default NULL,
  `width` decimal(15,5) default NULL,
  `max_units` decimal(15,5) default NULL,
  `max_volume_uom_id` int(12) default NULL,
  `max_volume` decimal(15,5) default NULL,
  `max_weight_uom_id` int(12) default NULL,
  `max_weight` decimal(15,5) default NULL,
  `ef_id` int(12) default NULL,
  `status` varchar(25) default NULL,
  `rev_enabled_cb` tinyint(1) default NULL,
  `rev_number` varchar(255) default NULL,
  `created_by` int(12) NOT NULL,
  `creation_date` datetime default NULL,
  `last_update_by` int(12) NOT NULL,
  `last_update_date` datetime default NULL,
  PRIMARY KEY  (`specification_id`),
  KEY `org_id` (`org_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `pkg_specification` */

LOCK TABLES `pkg_specification` WRITE;

UNLOCK TABLES;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
