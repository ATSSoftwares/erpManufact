-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 08, 2017 at 09:03 AM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.5.35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `erpmanufact`
--

-- --------------------------------------------------------

--
-- Table structure for table `adminlogin`
--

CREATE TABLE `adminlogin` (
  `UserName` varchar(500) NOT NULL,
  `password` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `adminlogin`
--

INSERT INTO `adminlogin` (`UserName`, `password`) VALUES
('ADMIN', 'b521caa6e1db82e5a01c924a419870cb72b81635');

-- --------------------------------------------------------

--
-- Table structure for table `coustomer`
--

CREATE TABLE `coustomer` (
  `Id` int(11) NOT NULL,
  `Cutname` varchar(100) NOT NULL,
  `Cutaddresh` varchar(500) NOT NULL,
  `Cutcity` varchar(500) NOT NULL,
  `Cutpin` int(50) NOT NULL,
  `Cutcontact1` varchar(500) NOT NULL,
  `Cutcontact2` varchar(500) NOT NULL,
  `Cutopenbal` varchar(500) NOT NULL,
  `Cutcrdr` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cus_rcpt`
--

CREATE TABLE `cus_rcpt` (
  `rcpt_id` int(11) NOT NULL,
  `cus_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `dmg_fg`
--

CREATE TABLE `dmg_fg` (
  `date` varchar(250) NOT NULL,
  `item_id` int(11) NOT NULL,
  `qnt` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `dmg_raw`
--

CREATE TABLE `dmg_raw` (
  `date` varchar(250) NOT NULL,
  `rwmt_id` int(11) NOT NULL,
  `qut` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `expence_pmnt`
--

CREATE TABLE `expence_pmnt` (
  `payment_id` int(11) NOT NULL,
  `exp_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `exp_acc`
--

CREATE TABLE `exp_acc` (
  `id` int(11) NOT NULL,
  `Account_name` varchar(500) NOT NULL,
  `Oppening_bal` varchar(500) NOT NULL,
  `Exp_crdr` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `finished_goods`
--

CREATE TABLE `finished_goods` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `group_id` int(11) NOT NULL,
  `avalible_stock` varchar(500) NOT NULL,
  `wstg` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `income_accounts`
--

CREATE TABLE `income_accounts` (
  `id` int(11) NOT NULL,
  `Account_name` varchar(500) NOT NULL,
  `Openning_bal` varchar(500) NOT NULL,
  `Income_crdr` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `income_rcpt`
--

CREATE TABLE `income_rcpt` (
  `rcpt_id` int(11) NOT NULL,
  `incacc_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `itemgrp`
--

CREATE TABLE `itemgrp` (
  `id` int(11) NOT NULL,
  `Groupitem` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `manufacturing`
--

CREATE TABLE `manufacturing` (
  `date` varchar(250) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `packing`
--

CREATE TABLE `packing` (
  `date` varchar(250) NOT NULL,
  `pac_id` int(11) NOT NULL,
  `quantity` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `packingtype`
--

CREATE TABLE `packingtype` (
  `Id` int(11) NOT NULL,
  `packingitem` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `packing_detail`
--

CREATE TABLE `packing_detail` (
  `packing_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `quantity` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pack_items`
--

CREATE TABLE `pack_items` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `group_id` int(11) NOT NULL,
  `stock` varchar(250) NOT NULL,
  `wstg` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `pmnt_id` int(11) NOT NULL,
  `invoice` int(250) NOT NULL,
  `date` varchar(250) NOT NULL,
  `amount` int(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `product_groups`
--

CREATE TABLE `product_groups` (
  `product_id` int(11) NOT NULL,
  `rwmt_id` int(11) NOT NULL,
  `quantity` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `purchase_voucher`
--

CREATE TABLE `purchase_voucher` (
  `invoice_id` int(11) NOT NULL,
  `invoice` int(250) NOT NULL,
  `supplier_id` int(11) NOT NULL,
  `date` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `purvoucher_am`
--

CREATE TABLE `purvoucher_am` (
  `invoice_id` int(11) NOT NULL,
  `amount` varchar(250) NOT NULL,
  `in_vat` varchar(250) NOT NULL,
  `in_add` varchar(250) NOT NULL,
  `roff` varchar(250) NOT NULL,
  `grand_total` varchar(250) NOT NULL,
  `payment` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pur_fg`
--

CREATE TABLE `pur_fg` (
  `invoice_id` int(11) NOT NULL,
  `wsi_id` int(11) NOT NULL,
  `purchase_rate` varchar(250) NOT NULL,
  `quantity` varchar(250) NOT NULL,
  `disc` varchar(250) NOT NULL,
  `discounted_amount` varchar(250) NOT NULL,
  `total` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pur_rawitem`
--

CREATE TABLE `pur_rawitem` (
  `invoice_id` int(11) NOT NULL,
  `rmt_id` int(11) NOT NULL,
  `rateperpc` varchar(250) NOT NULL,
  `disc` varchar(250) NOT NULL,
  `quantity` varchar(250) NOT NULL,
  `discounted_amount` varchar(250) NOT NULL,
  `total` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `rawitemweghit`
--

CREATE TABLE `rawitemweghit` (
  `Id` int(11) NOT NULL,
  `Itemname` varchar(500) NOT NULL,
  `Itemvalue` varchar(500) NOT NULL,
  `Itemstock` varchar(500) NOT NULL,
  `Itemstockperpc` varchar(500) NOT NULL,
  `qntinpacket` varchar(500) NOT NULL,
  `wstg_ammount` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `reciept`
--

CREATE TABLE `reciept` (
  `rcpt_id` int(11) NOT NULL,
  `invoice` int(250) NOT NULL,
  `date` varchar(250) NOT NULL,
  `amount` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `salevoucher_am`
--

CREATE TABLE `salevoucher_am` (
  `invoice_id` int(11) NOT NULL,
  `amount` varchar(250) NOT NULL,
  `out_vat` varchar(250) NOT NULL,
  `out_add` varchar(250) NOT NULL,
  `roff` varchar(250) NOT NULL,
  `grand_total` varchar(250) NOT NULL,
  `reciept` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sale_fgwstg`
--

CREATE TABLE `sale_fgwstg` (
  `invoice_id` int(11) NOT NULL,
  `fg_id` int(11) NOT NULL,
  `sale_rate` varchar(250) NOT NULL,
  `quantity` varchar(250) NOT NULL,
  `disc` varchar(250) NOT NULL,
  `discounted_amount` varchar(250) NOT NULL,
  `total` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sale_finishgoods`
--

CREATE TABLE `sale_finishgoods` (
  `invoice_id` int(11) NOT NULL,
  `fg_id` int(11) NOT NULL,
  `sale_rate` varchar(250) NOT NULL,
  `quantity` varchar(250) NOT NULL,
  `discount` varchar(250) NOT NULL,
  `discounted_amount` varchar(250) NOT NULL,
  `total` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sale_packs`
--

CREATE TABLE `sale_packs` (
  `invoice_id` int(11) NOT NULL,
  `pack_id` int(11) NOT NULL,
  `sale_rate` varchar(250) NOT NULL,
  `quantity` varchar(250) NOT NULL,
  `disc` varchar(250) NOT NULL,
  `discounted_amount` varchar(250) NOT NULL,
  `total` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sale_ritmwstg`
--

CREATE TABLE `sale_ritmwstg` (
  `invoice_id` int(11) NOT NULL,
  `rwmt_id` int(11) NOT NULL,
  `sale_rate` varchar(250) NOT NULL,
  `quantity` varchar(250) NOT NULL,
  `disc` varchar(250) NOT NULL,
  `discounted_amount` varchar(250) NOT NULL,
  `total` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sale_voucher`
--

CREATE TABLE `sale_voucher` (
  `invoice_id` int(11) NOT NULL,
  `invoice` int(250) NOT NULL,
  `date` varchar(250) NOT NULL,
  `customer_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sale_wholesale`
--

CREATE TABLE `sale_wholesale` (
  `invoice_id` int(11) NOT NULL,
  `wsitem_id` int(11) NOT NULL,
  `sale_rate` varchar(250) NOT NULL,
  `quantity` varchar(250) NOT NULL,
  `disc` varchar(250) NOT NULL,
  `discounted_amount` varchar(250) NOT NULL,
  `total` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `supplyer`
--

CREATE TABLE `supplyer` (
  `Id` int(11) NOT NULL,
  `Supname` varchar(500) NOT NULL,
  `Supaddress` varchar(500) NOT NULL,
  `Supcity` varchar(500) NOT NULL,
  `Suppin` varchar(50) NOT NULL,
  `Supcontact1` varchar(500) NOT NULL,
  `Supcontact2` varchar(500) NOT NULL,
  `Supopenbal` varchar(500) NOT NULL,
  `Supcrdr` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sup_pmnt`
--

CREATE TABLE `sup_pmnt` (
  `pmnt_id` int(11) NOT NULL,
  `sup_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `wsitem`
--

CREATE TABLE `wsitem` (
  `item_id` int(11) NOT NULL,
  `item_name` varchar(250) NOT NULL,
  `type_id` int(11) NOT NULL,
  `sale_rate` varchar(250) NOT NULL,
  `stock` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `wsitem_type`
--

CREATE TABLE `wsitem_type` (
  `type_id` int(11) NOT NULL,
  `type_name` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `coustomer`
--
ALTER TABLE `coustomer`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `cus_rcpt`
--
ALTER TABLE `cus_rcpt`
  ADD PRIMARY KEY (`rcpt_id`,`cus_id`) USING BTREE,
  ADD KEY `cus_id` (`cus_id`);

--
-- Indexes for table `dmg_fg`
--
ALTER TABLE `dmg_fg`
  ADD KEY `item_id` (`item_id`);

--
-- Indexes for table `dmg_raw`
--
ALTER TABLE `dmg_raw`
  ADD KEY `rwmt_id` (`rwmt_id`);

--
-- Indexes for table `expence_pmnt`
--
ALTER TABLE `expence_pmnt`
  ADD PRIMARY KEY (`payment_id`,`exp_id`) USING BTREE,
  ADD KEY `exp_id` (`exp_id`);

--
-- Indexes for table `exp_acc`
--
ALTER TABLE `exp_acc`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `finished_goods`
--
ALTER TABLE `finished_goods`
  ADD PRIMARY KEY (`id`),
  ADD KEY `group_id` (`group_id`);

--
-- Indexes for table `income_accounts`
--
ALTER TABLE `income_accounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `income_rcpt`
--
ALTER TABLE `income_rcpt`
  ADD PRIMARY KEY (`rcpt_id`,`incacc_id`) USING BTREE,
  ADD KEY `incacc_id` (`incacc_id`);

--
-- Indexes for table `itemgrp`
--
ALTER TABLE `itemgrp`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `manufacturing`
--
ALTER TABLE `manufacturing`
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `packing`
--
ALTER TABLE `packing`
  ADD KEY `pac_id` (`pac_id`);

--
-- Indexes for table `packingtype`
--
ALTER TABLE `packingtype`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `packing_detail`
--
ALTER TABLE `packing_detail`
  ADD PRIMARY KEY (`packing_id`,`item_id`) USING BTREE,
  ADD KEY `item_id` (`item_id`);

--
-- Indexes for table `pack_items`
--
ALTER TABLE `pack_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `group_id` (`group_id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`pmnt_id`);

--
-- Indexes for table `product_groups`
--
ALTER TABLE `product_groups`
  ADD PRIMARY KEY (`product_id`,`rwmt_id`),
  ADD KEY `product_groups_ibfk_2` (`rwmt_id`);

--
-- Indexes for table `purchase_voucher`
--
ALTER TABLE `purchase_voucher`
  ADD PRIMARY KEY (`invoice_id`,`supplier_id`) USING BTREE,
  ADD KEY `supplier_id` (`supplier_id`);

--
-- Indexes for table `purvoucher_am`
--
ALTER TABLE `purvoucher_am`
  ADD PRIMARY KEY (`invoice_id`);

--
-- Indexes for table `pur_fg`
--
ALTER TABLE `pur_fg`
  ADD PRIMARY KEY (`invoice_id`,`wsi_id`) USING BTREE,
  ADD KEY `wsi_id` (`wsi_id`);

--
-- Indexes for table `pur_rawitem`
--
ALTER TABLE `pur_rawitem`
  ADD PRIMARY KEY (`invoice_id`,`rmt_id`) USING BTREE,
  ADD KEY `rmt_id` (`rmt_id`);

--
-- Indexes for table `rawitemweghit`
--
ALTER TABLE `rawitemweghit`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `reciept`
--
ALTER TABLE `reciept`
  ADD PRIMARY KEY (`rcpt_id`);

--
-- Indexes for table `salevoucher_am`
--
ALTER TABLE `salevoucher_am`
  ADD PRIMARY KEY (`invoice_id`);

--
-- Indexes for table `sale_fgwstg`
--
ALTER TABLE `sale_fgwstg`
  ADD PRIMARY KEY (`invoice_id`,`fg_id`) USING BTREE,
  ADD KEY `fg_id` (`fg_id`);

--
-- Indexes for table `sale_finishgoods`
--
ALTER TABLE `sale_finishgoods`
  ADD PRIMARY KEY (`invoice_id`,`fg_id`) USING BTREE,
  ADD KEY `fg_id` (`fg_id`);

--
-- Indexes for table `sale_packs`
--
ALTER TABLE `sale_packs`
  ADD PRIMARY KEY (`invoice_id`,`pack_id`) USING BTREE,
  ADD KEY `pack_id` (`pack_id`);

--
-- Indexes for table `sale_ritmwstg`
--
ALTER TABLE `sale_ritmwstg`
  ADD PRIMARY KEY (`invoice_id`,`rwmt_id`) USING BTREE,
  ADD KEY `rwmt_id` (`rwmt_id`);

--
-- Indexes for table `sale_voucher`
--
ALTER TABLE `sale_voucher`
  ADD PRIMARY KEY (`invoice_id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Indexes for table `sale_wholesale`
--
ALTER TABLE `sale_wholesale`
  ADD PRIMARY KEY (`invoice_id`,`wsitem_id`) USING BTREE,
  ADD KEY `wsitem_id` (`wsitem_id`);

--
-- Indexes for table `supplyer`
--
ALTER TABLE `supplyer`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `sup_pmnt`
--
ALTER TABLE `sup_pmnt`
  ADD PRIMARY KEY (`pmnt_id`,`sup_id`) USING BTREE,
  ADD KEY `sup_id` (`sup_id`);

--
-- Indexes for table `wsitem`
--
ALTER TABLE `wsitem`
  ADD PRIMARY KEY (`item_id`),
  ADD KEY `type_id` (`type_id`);

--
-- Indexes for table `wsitem_type`
--
ALTER TABLE `wsitem_type`
  ADD PRIMARY KEY (`type_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `coustomer`
--
ALTER TABLE `coustomer`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
--
-- AUTO_INCREMENT for table `exp_acc`
--
ALTER TABLE `exp_acc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `finished_goods`
--
ALTER TABLE `finished_goods`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `income_accounts`
--
ALTER TABLE `income_accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `itemgrp`
--
ALTER TABLE `itemgrp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `packingtype`
--
ALTER TABLE `packingtype`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `pack_items`
--
ALTER TABLE `pack_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `pmnt_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `purchase_voucher`
--
ALTER TABLE `purchase_voucher`
  MODIFY `invoice_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `rawitemweghit`
--
ALTER TABLE `rawitemweghit`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `reciept`
--
ALTER TABLE `reciept`
  MODIFY `rcpt_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `sale_voucher`
--
ALTER TABLE `sale_voucher`
  MODIFY `invoice_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `supplyer`
--
ALTER TABLE `supplyer`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `wsitem`
--
ALTER TABLE `wsitem`
  MODIFY `item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `wsitem_type`
--
ALTER TABLE `wsitem_type`
  MODIFY `type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `cus_rcpt`
--
ALTER TABLE `cus_rcpt`
  ADD CONSTRAINT `cus_rcpt_ibfk_1` FOREIGN KEY (`rcpt_id`) REFERENCES `reciept` (`rcpt_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `cus_rcpt_ibfk_2` FOREIGN KEY (`cus_id`) REFERENCES `coustomer` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `dmg_fg`
--
ALTER TABLE `dmg_fg`
  ADD CONSTRAINT `dmg_fg_ibfk_1` FOREIGN KEY (`item_id`) REFERENCES `finished_goods` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `dmg_raw`
--
ALTER TABLE `dmg_raw`
  ADD CONSTRAINT `dmg_raw_ibfk_1` FOREIGN KEY (`rwmt_id`) REFERENCES `rawitemweghit` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `expence_pmnt`
--
ALTER TABLE `expence_pmnt`
  ADD CONSTRAINT `expence_pmnt_ibfk_1` FOREIGN KEY (`payment_id`) REFERENCES `payment` (`pmnt_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `expence_pmnt_ibfk_2` FOREIGN KEY (`exp_id`) REFERENCES `exp_acc` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `finished_goods`
--
ALTER TABLE `finished_goods`
  ADD CONSTRAINT `finished_goods_ibfk_1` FOREIGN KEY (`group_id`) REFERENCES `itemgrp` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `income_rcpt`
--
ALTER TABLE `income_rcpt`
  ADD CONSTRAINT `income_rcpt_ibfk_1` FOREIGN KEY (`rcpt_id`) REFERENCES `reciept` (`rcpt_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `income_rcpt_ibfk_2` FOREIGN KEY (`incacc_id`) REFERENCES `income_accounts` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `manufacturing`
--
ALTER TABLE `manufacturing`
  ADD CONSTRAINT `manufacturing_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `finished_goods` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `packing`
--
ALTER TABLE `packing`
  ADD CONSTRAINT `packing_ibfk_1` FOREIGN KEY (`pac_id`) REFERENCES `pack_items` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `packing_detail`
--
ALTER TABLE `packing_detail`
  ADD CONSTRAINT `packing_detail_ibfk_1` FOREIGN KEY (`packing_id`) REFERENCES `pack_items` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `packing_detail_ibfk_2` FOREIGN KEY (`item_id`) REFERENCES `finished_goods` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `pack_items`
--
ALTER TABLE `pack_items`
  ADD CONSTRAINT `pack_items_ibfk_1` FOREIGN KEY (`group_id`) REFERENCES `packingtype` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `product_groups`
--
ALTER TABLE `product_groups`
  ADD CONSTRAINT `product_groups_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `finished_goods` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `product_groups_ibfk_2` FOREIGN KEY (`rwmt_id`) REFERENCES `rawitemweghit` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `purchase_voucher`
--
ALTER TABLE `purchase_voucher`
  ADD CONSTRAINT `purchase_voucher_ibfk_1` FOREIGN KEY (`supplier_id`) REFERENCES `supplyer` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `purvoucher_am`
--
ALTER TABLE `purvoucher_am`
  ADD CONSTRAINT `purvoucher_am_ibfk_1` FOREIGN KEY (`invoice_id`) REFERENCES `purchase_voucher` (`invoice_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `pur_fg`
--
ALTER TABLE `pur_fg`
  ADD CONSTRAINT `pur_fg_ibfk_1` FOREIGN KEY (`invoice_id`) REFERENCES `purchase_voucher` (`invoice_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pur_fg_ibfk_2` FOREIGN KEY (`wsi_id`) REFERENCES `wsitem` (`item_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `pur_rawitem`
--
ALTER TABLE `pur_rawitem`
  ADD CONSTRAINT `pur_rawitem_ibfk_1` FOREIGN KEY (`invoice_id`) REFERENCES `purchase_voucher` (`invoice_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pur_rawitem_ibfk_2` FOREIGN KEY (`rmt_id`) REFERENCES `rawitemweghit` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `salevoucher_am`
--
ALTER TABLE `salevoucher_am`
  ADD CONSTRAINT `salevoucher_am_ibfk_1` FOREIGN KEY (`invoice_id`) REFERENCES `sale_voucher` (`invoice_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `sale_fgwstg`
--
ALTER TABLE `sale_fgwstg`
  ADD CONSTRAINT `sale_fgwstg_ibfk_1` FOREIGN KEY (`invoice_id`) REFERENCES `sale_voucher` (`invoice_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `sale_fgwstg_ibfk_2` FOREIGN KEY (`fg_id`) REFERENCES `finished_goods` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `sale_finishgoods`
--
ALTER TABLE `sale_finishgoods`
  ADD CONSTRAINT `sale_finishgoods_ibfk_1` FOREIGN KEY (`invoice_id`) REFERENCES `sale_voucher` (`invoice_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `sale_finishgoods_ibfk_2` FOREIGN KEY (`fg_id`) REFERENCES `finished_goods` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `sale_packs`
--
ALTER TABLE `sale_packs`
  ADD CONSTRAINT `sale_packs_ibfk_1` FOREIGN KEY (`invoice_id`) REFERENCES `sale_voucher` (`invoice_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `sale_packs_ibfk_2` FOREIGN KEY (`pack_id`) REFERENCES `pack_items` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `sale_ritmwstg`
--
ALTER TABLE `sale_ritmwstg`
  ADD CONSTRAINT `sale_ritmwstg_ibfk_1` FOREIGN KEY (`invoice_id`) REFERENCES `sale_voucher` (`invoice_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `sale_ritmwstg_ibfk_2` FOREIGN KEY (`rwmt_id`) REFERENCES `rawitemweghit` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `sale_voucher`
--
ALTER TABLE `sale_voucher`
  ADD CONSTRAINT `sale_voucher_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `coustomer` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `sale_wholesale`
--
ALTER TABLE `sale_wholesale`
  ADD CONSTRAINT `sale_wholesale_ibfk_1` FOREIGN KEY (`invoice_id`) REFERENCES `sale_voucher` (`invoice_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `sale_wholesale_ibfk_2` FOREIGN KEY (`wsitem_id`) REFERENCES `wsitem` (`item_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `sup_pmnt`
--
ALTER TABLE `sup_pmnt`
  ADD CONSTRAINT `sup_pmnt_ibfk_1` FOREIGN KEY (`pmnt_id`) REFERENCES `payment` (`pmnt_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `sup_pmnt_ibfk_2` FOREIGN KEY (`sup_id`) REFERENCES `supplyer` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `wsitem`
--
ALTER TABLE `wsitem`
  ADD CONSTRAINT `wsitem_ibfk_1` FOREIGN KEY (`type_id`) REFERENCES `wsitem_type` (`type_id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
