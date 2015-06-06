-- phpMyAdmin SQL Dump
-- version 2.11.9.5
-- http://www.phpmyadmin.net
--
-- Host: 10.1.12.40
-- Generation Time: Sep 30, 2014 at 02:53 PM
-- Server version: 5.0.83
-- PHP Version: 4.4.9

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `db280315_nyuko`
--

-- --------------------------------------------------------

--
-- Table structure for table `application_tbl`
--

CREATE TABLE IF NOT EXISTS `application_tbl` (
  `app_id` int(11) NOT NULL auto_increment,
  `app_descp` varchar(100) NOT NULL,
  `create_date` datetime NOT NULL,
  `delete_flag` smallint(6) NOT NULL,
  PRIMARY KEY  (`app_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=19 ;

--
-- Dumping data for table `application_tbl`
--

INSERT INTO `application_tbl` (`app_id`, `app_descp`, `create_date`, `delete_flag`) VALUES
(1, 'Photoshop CS1', '2014-09-04 15:39:55', 0),
(2, 'Photoshop CS2', '2014-09-04 15:39:55', 0),
(3, 'Photoshop CS3', '2014-09-04 15:39:56', 0),
(4, 'Photoshop CS4', '2014-09-04 15:39:56', 0),
(5, 'Photoshop CS5', '2014-09-04 15:39:56', 0),
(6, 'Photoshop CS6', '2014-09-04 15:39:56', 0),
(7, 'Illustrator CS1', '2014-09-04 15:39:56', 0),
(8, 'Illustrator CS2', '2014-09-04 15:39:56', 0),
(9, 'Illustrator CS3', '2014-09-04 15:39:56', 0),
(10, 'Illustrator CS4', '2014-09-04 15:39:56', 0),
(11, 'Illustrator CS5', '2014-09-04 15:39:56', 0),
(12, 'Illustrator CS6', '2014-09-04 15:39:56', 0),
(13, 'InDesign CS1', '2014-09-04 15:39:56', 0),
(14, 'InDesign CS2', '2014-09-04 15:39:56', 0),
(15, 'InDesign CS3', '2014-09-04 15:39:56', 0),
(16, 'InDesign CS4', '2014-09-04 15:39:56', 0),
(17, 'InDesign CS5', '2014-09-04 15:39:56', 0),
(18, 'InDesign CS6', '2014-09-04 15:39:56', 0);

-- --------------------------------------------------------

--
-- Table structure for table `client_tbl`
--

CREATE TABLE IF NOT EXISTS `client_tbl` (
  `client_id` int(11) NOT NULL auto_increment,
  `company_name` varchar(50) collate utf8_unicode_ci NOT NULL,
  `client_user_name` varchar(50) collate utf8_unicode_ci NOT NULL,
  `address` tinytext collate utf8_unicode_ci NOT NULL,
  `created_date` datetime NOT NULL,
  `delete_flag` smallint(2) NOT NULL,
  PRIMARY KEY  (`client_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=38 ;

--
-- Dumping data for table `client_tbl`
--

INSERT INTO `client_tbl` (`client_id`, `company_name`, `client_user_name`, `address`, `created_date`, `delete_flag`) VALUES
(3, '佐川印刷株式会社　東京支店', 'RUBBER SOUL', '東京都品川区南品川5-2-10 佐川印刷東京ビル', '2014-09-18 13:32:07', 0),
(4, '佐川印刷株式会社　横浜支店', 'RUBBER SOUL', '神奈川県横浜市神奈川区反町2丁目14番地2', '2014-09-18 13:32:55', 0),
(5, '佐川印刷株式会社　大阪支店', 'RUBBER SOUL', '大阪市西区北堀江2丁目2番18号 佐川印刷大阪ビル2F', '2014-09-18 13:33:52', 0),
(6, '佐川印刷株式会社　京都支店', 'RUBBER SOUL', '京都府向日市森本町戌亥5番地の3', '2014-09-18 13:35:42', 0),
(7, '佐川印刷株式会社　北関東支店', 'RUBBER SOUL', '埼玉県さいたま市南区白幡4-12-19', '2014-09-18 13:36:30', 0),
(8, '株式会社シップス', 'RUBBER SOUL', '東京都中央区銀座1-20-15', '2014-09-18 13:37:24', 0),
(9, '株式会社セン グラフィックアーツ', 'RUBBER SOUL', '東京都文京区水道1‐4‐10', '2014-09-18 13:40:42', 0),
(10, 'ダイオープリンティング株式会社', 'RUBBER SOUL', '東京都豊島区北大塚 1-13-4　オーク大塚ビル', '2014-09-18 13:41:53', 0),
(11, '不二印刷株式会社', 'RUBBER SOUL', '大阪市北区南森町1-2-28', '2014-09-18 13:43:13', 0),
(12, '株式会社サイバーネット', 'RUBBER SOUL', '東京都豊島区東池袋3-22-7　CN ビル ', '2014-09-18 13:44:16', 0),
(13, 'JTB印刷株式会社', 'RUBBER SOUL', '東京都品川区南品川5丁目2-10', '2014-09-18 13:45:29', 0),
(14, '富士ゼロックスサービスリンク株式会社', 'RUBBER SOUL', '東京都港区芝5-34-6 新田町ビル10階', '2014-09-18 13:46:29', 0),
(15, '富士ゼロックスサービスリンク株式会社', 'RUBBER SOUL', 'Tokyo', '2014-09-18 13:47:44', 0),
(16, '株式会社ガット', 'RUBBER SOUL', 'Tokyo', '2014-09-18 13:48:14', 0),
(17, '竹田印刷株式会社', 'RUBBER SOUL', '東京都北区上中里二丁目9番1号', '2014-09-18 13:49:07', 0),
(18, 'SGS Associates株式会社', 'RUBBER SOUL', '東京都千代田区外神田2-18-21　楽器会館601', '2014-09-18 13:50:04', 0),
(19, '株式会社デジタルプラネッツ', 'RUBBER SOUL', '東京都中央区新富1丁目14番1号 いちご八丁堀ビル 6Ｆ', '2014-09-18 13:52:11', 0),
(20, '株式会社帆風', 'RUBBER SOUL', '東京都新宿区下宮比町2-29', '2014-09-18 13:53:31', 0),
(21, 'トロア企画株式会社', 'RUBBER SOUL', '東京都千代田区神田神保町1-27　渡辺ビル3F', '2014-09-18 13:54:33', 0),
(22, '株式会社新星コーポレーション', 'RUBBER SOUL', '東京都練馬区高野台2丁目16番17号', '2014-09-18 13:56:25', 0),
(23, '㈱さら', 'RUBBER SOUL', 'tokyo', '2014-09-18 13:57:02', 1),
(24, '株式会社さら', 'RUBBER SOUL', 'tokyo', '2014-09-18 13:57:17', 0),
(25, '株式会社ADKアーツ', 'RUBBER SOUL', '東京都港区虎ノ門一丁目10番5号\r\n日土地虎ノ門ビル', '2014-09-18 13:58:11', 0),
(26, '株式会社V.C.C.', 'ATU', '大阪市北区同心1丁目6番27号', '2014-09-18 13:59:26', 0),
(27, '株式会社mix', 'ATU', 'Tokyo', '2014-09-18 14:00:46', 0),
(28, '株式会社プリマリール', 'ATU', '東京都新宿区下宮比町2-29 \r\n飯田橋NKビル6F (', '2014-09-18 14:02:05', 0),
(29, 'アルトラエンタテインメント株式会社', 'ATU', 'Tokyo-meguro', '2014-09-18 14:05:54', 0),
(30, '㈱目録舎', 'ＡＴＵ', 'Tokyo', '2014-09-18 14:07:25', 1),
(31, '株式会社目録舎', 'ＡＴＵ', 'Tokyo', '2014-09-18 14:08:08', 0),
(32, '株式会社ラバーソウル', 'RUBBER SOUL', 'Tokyo', '2014-09-18 14:09:00', 0),
(33, 'Michele', 'Michele', 'vietnam', '2014-09-19 11:36:09', 1),
(34, 'Michele', 'ATU', 'Vietnam', '2014-09-19 11:36:55', 0),
(35, '蘇州ラバーソウル', 'RUBBER SOUL', 'Suzhou', '2014-09-19 11:37:26', 0),
(36, 'ラバーソウル　ミャンマー', 'RUBBER SOUL', 'myanmmer', '2014-09-19 11:38:13', 0),
(37, '株式会社バドインターナショナル', 'RUBBERSOUL', '東京都渋谷区恵比寿4丁目20番3号 恵比寿ガーデンプレイスタワー17階', '2014-09-30 12:47:24', 0);

-- --------------------------------------------------------

--
-- Table structure for table `order_tbl`
--

CREATE TABLE IF NOT EXISTS `order_tbl` (
  `order_id` int(11) NOT NULL auto_increment,
  `order_uid` varchar(9) collate utf8_unicode_ci NOT NULL,
  `client_id` int(11) NOT NULL COMMENT 'fk client_tbl',
  `address` tinytext collate utf8_unicode_ci NOT NULL,
  `responsible_person` varchar(50) collate utf8_unicode_ci NOT NULL,
  `order_person` varchar(100) collate utf8_unicode_ci NOT NULL,
  `client_person` varchar(30) collate utf8_unicode_ci NOT NULL,
  `order_dept` varchar(100) collate utf8_unicode_ci NOT NULL,
  `order_date` datetime NOT NULL,
  `receipt_date` datetime NOT NULL COMMENT 'hashuu yotei',
  `product_name` varchar(50) character set utf8 NOT NULL,
  `client_price` int(11) NOT NULL COMMENT 'juchu kingaku',
  `order_price` int(11) NOT NULL COMMENT 'hacchu kingaku',
  `company_sell_price` int(11) NOT NULL,
  `margin_price` int(11) NOT NULL,
  `os_id` int(11) NOT NULL COMMENT 'fk os_tbl',
  `layout` varchar(30) character set utf8 NOT NULL,
  `text_size` int(11) NOT NULL,
  `format` varchar(255) collate utf8_unicode_ci NOT NULL,
  `divs` varchar(255) collate utf8_unicode_ci NOT NULL,
  `display_data` smallint(2) NOT NULL COMMENT '1:yes, 2:no',
  `display_data_qty` int(11) NOT NULL,
  `ad` varchar(255) collate utf8_unicode_ci NOT NULL,
  `comment` tinytext character set utf8 NOT NULL,
  `start_time` datetime NOT NULL,
  `end_time` datetime NOT NULL,
  `delivery_date` datetime NOT NULL,
  `status_id` int(11) NOT NULL COMMENT 'fk status_tbl',
  `order_type` smallint(2) NOT NULL COMMENT '1:hacchu, 2:juchu',
  `create_date` datetime NOT NULL,
  `delete_flag` smallint(2) NOT NULL,
  PRIMARY KEY  (`order_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=25 ;

--
-- Dumping data for table `order_tbl`
--

INSERT INTO `order_tbl` (`order_id`, `order_uid`, `client_id`, `address`, `responsible_person`, `order_person`, `client_person`, `order_dept`, `order_date`, `receipt_date`, `product_name`, `client_price`, `order_price`, `company_sell_price`, `margin_price`, `os_id`, `layout`, `text_size`, `format`, `divs`, `display_data`, `display_data_qty`, `ad`, `comment`, `start_time`, `end_time`, `delivery_date`, `status_id`, `order_type`, `create_date`, `delete_flag`) VALUES
(1, 'ORDAC63B8', 1, 'Irifune', 'RubberSoulC', 'RubberSoulC', 'rubbersoul', 'RS入船C', '2014-09-05 13:54:36', '2014-09-05 06:54:00', 'DTPC', 0, 90000, 10000, 200, 1, '5', 7, '5', '8', 0, 0, '4', 'Comments is the comments.', '2014-09-12 00:00:00', '2014-09-23 02:00:00', '2014-09-12 03:00:00', 12, 1, '2014-09-05 13:54:36', 0),
(2, 'ORDCDB104', 1, 'Irifune', 'RubberSoul', 'RubberSoul', 'rubbersoul', 'RS入船', '2014-09-05 14:31:52', '2014-09-05 06:54:00', 'DTP', 0, 5000, 0, 0, 1, '0', 0, '0', '0', 1, 0, '0', 'Comments', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 11, 1, '2014-09-05 14:31:52', 0),
(3, 'ORDC8BEC6', 0, 'Irifunessssss', 'RubberSoul', '', 'rubbersoul', 'RS入船', '2014-09-05 14:41:31', '2014-09-05 06:54:00', 'DTP', 0, 0, 0, 0, 1, '0', 0, '0', '0', 1, 0, '0', 'Comments', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 2, '2014-09-05 14:41:31', 0),
(4, 'ORDF1BBAC', 0, 'Irifune343', 'RubberSoul', '', 'rubbersoul', 'RS入船', '2014-09-09 14:17:08', '2014-09-05 06:54:00', 'DTP', 0, 0, 0, 0, 1, '0', 0, '0', '0', 1, 0, '0', 'Comments', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1, '2014-09-09 14:17:08', 0),
(5, 'ORDF03959', 1, 'Irifune', 'RubberSoul', 'RubberSoul', 'rubbersoul', 'RS入船', '2014-11-09 14:19:07', '2014-09-05 06:54:00', 'DTP', 0, 0, 0, 0, 1, '0', 0, '0', '0', 1, 0, '0', 'Comments', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 2, '2014-09-09 14:19:07', 0),
(6, 'ORD7122EE', 1, 'Irifune', 'RubberSoul', 'RubberSoul', 'rubbersoul', 'RS入船', '2014-01-09 14:21:02', '2014-09-05 06:54:00', 'DTP', 0, 0, 0, 0, 1, '0', 0, '0', '0', 1, 0, '0', 'Comments', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 2, '2014-09-09 14:21:02', 0),
(7, 'ORDE7E9F2', 1, 'Irifune', 'RubberSoul', 'RubberSoul', 'rubbersoul', 'RS入船', '2014-12-09 14:23:34', '2014-09-05 06:54:00', 'DTP', 0, 0, 0, 0, 1, '0', 0, '0', '0', 1, 0, '0', 'Comments', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1, '2014-09-09 14:23:34', 0),
(8, 'ORDCC7BE7', 1, 'Irifune', 'RubberSoul', 'RubberSoul', 'rubbersoul', 'RS入船', '2014-11-09 14:25:39', '2014-09-05 06:54:00', 'DTP', 0, 0, 0, 0, 1, '0', 0, '0', '0', 1, 0, '0', 'Comments', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 2, '2014-09-09 14:25:39', 0),
(9, 'ORD7E79E5', 1, 'Irifune', 'RubberSoul', 'RubberSoul', 'rubbersoul', 'RS入船', '2014-12-09 14:27:17', '2014-09-05 06:54:00', 'DTP', 0, 0, 0, 0, 1, '0', 0, '0', '0', 1, 0, '0', 'Comments', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1, '2014-09-09 14:27:17', 0),
(10, 'ORDF8ADA9', 1, 'Irifune', 'RubberSoul', 'RubberSoul', 'rubbersoul', 'RS入船', '2014-11-09 14:28:47', '2014-09-05 06:54:00', 'DTP', 0, 0, 0, 0, 1, '0', 0, '0', '0', 1, 0, '0', 'Comments', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1, '2014-09-09 14:28:47', 0),
(11, 'ORDCDD8DE', 1, 'Irifune', 'RubberSoul', 'RubberSoul', 'rubbersoul', 'RS入船', '2014-10-09 14:30:21', '2014-09-05 06:54:00', 'DTP', 0, 0, 0, 0, 1, '0', 0, '0', '0', 1, 0, '0', 'Comments', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 2, '2014-09-09 14:30:21', 0),
(12, 'ORDD42050', 1, 'Irifune', 'RubberSoul', 'RubberSoul', 'rubbersoul', 'RS入船', '2014-10-09 14:31:48', '2014-09-05 06:54:00', 'DTP', 0, 0, 0, 0, 1, '0', 0, '0', '0', 1, 0, '0', 'Comments', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 2, '2014-09-09 14:31:48', 0),
(13, 'ORD337761', 1, 'Irifune', 'RubberSoul', 'RubberSoul', 'rubbersoul', 'RS入船', '2014-12-09 14:46:43', '2014-09-05 06:54:00', 'DTP', 0, 0, 0, 0, 1, '0', 0, '0', '0', 1, 0, '0', 'Comments', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1, '2014-09-09 14:46:43', 0),
(14, 'ORDCEB829', 1, 'Irifune', 'RubberSoul', 'RubberSoul', 'rubbersoul', 'RS入船', '2014-10-09 14:50:59', '2014-09-05 06:54:00', 'DTP', 0, 0, 0, 0, 1, '0', 0, '0', '0', 1, 0, '0', 'Comments', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 2, '2014-09-09 14:50:59', 0),
(15, 'ORD3819F3', 1, 'Irifune', 'RubberSoul', 'RubberSoul', 'rubbersoul', 'RS入船', '2014-11-09 14:53:04', '2014-09-05 06:54:00', 'DTP', 0, 0, 0, 0, 1, '0', 0, '0', '0', 1, 0, '0', 'Comments', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 2, '2014-09-09 14:53:04', 0),
(16, 'ORDA65A35', 1, 'Irifune', 'RubberSoul', 'RubberSoul', 'rubbersoul', 'RS入船', '2014-12-09 14:55:05', '2014-09-05 06:54:00', 'DTP', 0, 0, 0, 0, 1, '0', 0, '0', '0', 1, 0, '0', 'Comments', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1, '2014-09-09 14:55:05', 0),
(17, 'ORDA657EC', 1, 'Irifune', 'RubberSoul', 'RubberSoul', 'rubbersoul', 'RS入船', '2014-01-09 14:56:28', '2014-09-05 06:54:00', 'DTP', 0, 0, 0, 0, 1, '0', 0, '0', '0', 1, 0, '0', 'Comments', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1, '2014-09-09 14:56:28', 0),
(18, 'ORDBDB124', 1, 'Irifune', 'RubberSoul', 'RubberSoul', 'rubbersoul', 'RS入船', '2014-01-09 14:59:16', '2014-09-05 06:54:00', 'DTP', 0, 0, 0, 0, 1, '0', 0, '0', '0', 1, 0, '0', 'Comments', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 2, '2014-09-09 14:59:16', 0),
(19, 'ORD5428F3', 1, 'Irifune', 'RubberSoul', 'RubberSoul', 'rubbersoul', 'RS入船', '2014-02-09 15:00:02', '2014-09-05 06:54:00', 'DTP', 0, 0, 0, 0, 1, '0', 0, '0', '0', 1, 0, '0', 'Comments', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 1, '2014-09-09 15:00:02', 0),
(20, 'ORDFEE9E0', 1, 'Irifune', 'RubberSoul', 'RubberSoul', 'rubbersoul', 'RS入船', '2014-09-11 17:41:35', '2014-09-05 06:54:00', 'DTP', 0, 0, 0, 0, 1, '0', 0, '0', '0', 1, 0, '0', 'Comments', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 2, '2014-09-11 17:41:35', 0),
(21, 'ORDD0D9F5', 3, '東京都品川区南品川5-2-10 佐川印刷東京ビル', '住友準之介', '', 'rubbersoul', '営業部', '2014-09-19 17:21:34', '2014-09-19 17:19:00', 'ＤＢ登録', 1500, 0, 0, 0, 1, '0', 0, '0', '0', 1, 5, '0', '', '2014-09-19 17:19:00', '2014-09-30 18:30:00', '2014-09-30 19:00:00', 3, 2, '2014-09-19 17:21:34', 0),
(22, 'ORD55FD74', 1, '', '', '', 'rubbersoul', '', '2014-09-25 10:02:14', '2014-09-25 10:00:00', '', 0, 0, 0, 0, 1, '0', 0, '0', '0', 1, 0, '0', '', '2014-09-25 10:00:00', '2014-09-30 00:00:00', '2014-10-01 00:00:00', 1, 1, '2014-09-25 10:02:14', 0),
(23, 'ORDD3F5D9', 3, '', 'cli_user', 'test', 'rubbersoul', '', '2014-09-25 11:37:58', '2014-09-25 11:37:00', 'dtp', 0, 0, 0, 0, 12, '0', 0, '0', '0', 1, 0, '0', '', '2014-09-25 11:37:00', '2014-09-30 00:00:00', '2014-10-01 00:00:00', 1, 1, '2014-09-25 11:37:58', 0),
(24, 'ORD870233', 3, '', '住友準之介', '', '平野係長', '', '2014-09-26 18:31:14', '2014-09-26 13:30:00', 'ＪＴＢ', 150000, 0, 0, 0, 1, '1', 1, '0', '0', 1, 0, '0', '', '2014-09-26 13:30:00', '2014-10-17 02:00:00', '2014-09-17 10:30:00', 1, 2, '2014-09-26 18:31:14', 0);

-- --------------------------------------------------------

--
-- Table structure for table `ord_app_tbl`
--

CREATE TABLE IF NOT EXISTS `ord_app_tbl` (
  `order_id` int(11) NOT NULL,
  `app_id` int(11) NOT NULL,
  `create_date` datetime NOT NULL,
  `delete_flag` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ord_app_tbl`
--

INSERT INTO `ord_app_tbl` (`order_id`, `app_id`, `create_date`, `delete_flag`) VALUES
(5, 6, '2014-09-09 14:19:11', 0),
(5, 6, '2014-09-09 14:19:11', 0),
(5, 6, '2014-09-09 14:19:11', 0),
(6, 14, '2014-09-09 14:21:02', 0),
(6, 14, '2014-09-09 14:21:02', 0),
(6, 14, '2014-09-09 14:21:02', 0),
(7, 12, '2014-09-09 14:23:34', 0),
(7, 12, '2014-09-09 14:23:34', 0),
(7, 12, '2014-09-09 14:23:34', 0),
(8, 18, '2014-09-09 14:25:43', 0),
(8, 18, '2014-09-09 14:25:43', 0),
(8, 18, '2014-09-09 14:25:43', 0),
(9, 1, '2014-09-09 14:27:19', 0),
(9, 1, '2014-09-09 14:27:19', 0),
(9, 1, '2014-09-09 14:27:19', 0),
(10, 2, '2014-09-09 14:28:47', 0),
(10, 2, '2014-09-09 14:28:47', 0),
(10, 2, '2014-09-09 14:28:47', 0),
(11, 3, '2014-09-09 14:30:22', 0),
(11, 3, '2014-09-09 14:30:22', 0),
(11, 3, '2014-09-09 14:30:22', 0),
(12, 2, '2014-09-09 14:31:49', 0),
(12, 2, '2014-09-09 14:31:49', 0),
(12, 2, '2014-09-09 14:31:50', 0),
(13, 2, '2014-09-09 14:46:44', 0),
(13, 2, '2014-09-09 14:46:44', 0),
(13, 3, '2014-09-09 14:46:44', 0),
(14, 2, '2014-09-09 14:51:00', 0),
(14, 1, '2014-09-09 14:51:00', 0),
(14, 4, '2014-09-09 14:51:00', 0),
(15, 1, '2014-09-09 14:53:04', 0),
(15, 1, '2014-09-09 14:53:04', 0),
(15, 1, '2014-09-09 14:53:05', 0),
(16, 2, '2014-09-09 14:55:06', 0),
(16, 3, '2014-09-09 14:55:06', 0),
(16, 4, '2014-09-09 14:55:06', 0),
(17, 5, '2014-09-09 14:56:30', 0),
(17, 2, '2014-09-09 14:56:30', 0),
(17, 2, '2014-09-09 14:56:32', 0),
(18, 1, '2014-09-09 14:59:16', 0),
(18, 1, '2014-09-09 14:59:16', 0),
(18, 1, '2014-09-09 14:59:16', 0),
(19, 2, '2014-09-09 15:00:02', 0),
(19, 3, '2014-09-09 15:00:02', 0),
(19, 3, '2014-09-09 15:00:02', 0),
(1, 2, '2014-09-12 18:11:56', 0),
(1, 6, '2014-09-12 18:11:56', 0),
(1, 1, '2014-09-12 18:11:56', 0),
(3, 7, '2014-09-18 16:33:10', 0),
(3, 2, '2014-09-18 16:33:10', 0),
(4, 5, '2014-09-18 16:36:08', 0),
(4, 5, '2014-09-18 16:36:08', 0),
(4, 5, '2014-09-18 16:36:08', 0),
(21, 6, '2014-09-19 17:22:19', 0),
(21, 18, '2014-09-19 17:22:19', 0),
(21, 12, '2014-09-19 17:22:19', 0),
(23, 2, '2014-09-25 11:37:58', 0),
(24, 6, '2014-09-26 18:31:14', 0),
(24, 9, '2014-09-26 18:31:14', 0),
(24, 18, '2014-09-26 18:31:14', 0);

-- --------------------------------------------------------

--
-- Table structure for table `ord_rf_tbl`
--

CREATE TABLE IF NOT EXISTS `ord_rf_tbl` (
  `order_id` int(11) NOT NULL,
  `rf_id` int(11) NOT NULL,
  `create_date` datetime NOT NULL,
  `delete_flag` smallint(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ord_rf_tbl`
--

INSERT INTO `ord_rf_tbl` (`order_id`, `rf_id`, `create_date`, `delete_flag`) VALUES
(5, 10, '2014-09-09 14:19:08', 0),
(5, 10, '2014-09-09 14:19:09', 0),
(5, 10, '2014-09-09 14:19:09', 0),
(6, 5, '2014-09-09 14:21:02', 0),
(6, 5, '2014-09-09 14:21:02', 0),
(6, 5, '2014-09-09 14:21:02', 0),
(7, 3, '2014-09-09 14:23:34', 0),
(7, 3, '2014-09-09 14:23:34', 0),
(7, 3, '2014-09-09 14:23:34', 0),
(8, 2, '2014-09-09 14:25:40', 0),
(8, 2, '2014-09-09 14:25:41', 0),
(8, 2, '2014-09-09 14:25:42', 0),
(9, 1, '2014-09-09 14:27:18', 0),
(9, 1, '2014-09-09 14:27:18', 0),
(9, 1, '2014-09-09 14:27:18', 0),
(10, 4, '2014-09-09 14:28:47', 0),
(10, 4, '2014-09-09 14:28:47', 0),
(10, 4, '2014-09-09 14:28:47', 0),
(11, 6, '2014-09-09 14:30:22', 0),
(11, 6, '2014-09-09 14:30:22', 0),
(11, 6, '2014-09-09 14:30:22', 0),
(12, 7, '2014-09-09 14:31:48', 0),
(12, 6, '2014-09-09 14:31:49', 0),
(12, 1, '2014-09-09 14:31:49', 0),
(13, 1, '2014-09-09 14:46:44', 0),
(13, 1, '2014-09-09 14:46:44', 0),
(13, 1, '2014-09-09 14:46:44', 0),
(14, 1, '2014-09-09 14:50:59', 0),
(14, 1, '2014-09-09 14:51:00', 0),
(14, 1, '2014-09-09 14:51:00', 0),
(15, 1, '2014-09-09 14:53:04', 0),
(15, 3, '2014-09-09 14:53:04', 0),
(15, 3, '2014-09-09 14:53:04', 0),
(16, 5, '2014-09-09 14:55:06', 0),
(16, 3, '2014-09-09 14:55:06', 0),
(16, 3, '2014-09-09 14:55:06', 0),
(17, 3, '2014-09-09 14:56:29', 0),
(17, 4, '2014-09-09 14:56:29', 0),
(17, 1, '2014-09-09 14:56:29', 0),
(18, 3, '2014-09-09 14:59:16', 0),
(18, 2, '2014-09-09 14:59:16', 0),
(18, 2, '2014-09-09 14:59:16', 0),
(19, 1, '2014-09-09 15:00:02', 0),
(19, 2, '2014-09-09 15:00:02', 0),
(19, 3, '2014-09-09 15:00:02', 0),
(1, 7, '2014-09-12 18:11:55', 0),
(1, 1, '2014-09-12 18:11:55', 0),
(3, 2, '2014-09-18 16:33:10', 0),
(3, 5, '2014-09-18 16:33:10', 0),
(4, 1, '2014-09-18 16:36:08', 0),
(4, 1, '2014-09-18 16:36:08', 0),
(4, 1, '2014-09-18 16:36:08', 0),
(21, 3, '2014-09-19 17:22:19', 0),
(23, 2, '2014-09-25 11:37:58', 0),
(23, 5, '2014-09-25 11:37:58', 0),
(23, 2, '2014-09-25 11:37:58', 0),
(24, 3, '2014-09-26 18:31:14', 0);

-- --------------------------------------------------------

--
-- Table structure for table `os_tbl`
--

CREATE TABLE IF NOT EXISTS `os_tbl` (
  `os_id` int(11) NOT NULL auto_increment,
  `os_descp` varchar(100) NOT NULL,
  `create_date` datetime NOT NULL,
  `delete_flag` smallint(2) NOT NULL,
  PRIMARY KEY  (`os_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=14 ;

--
-- Dumping data for table `os_tbl`
--

INSERT INTO `os_tbl` (`os_id`, `os_descp`, `create_date`, `delete_flag`) VALUES
(1, 'Macintosh OS X 10.0', '2014-09-04 15:33:41', 0),
(2, 'Macintosh OS X 10.1', '2014-09-04 15:33:41', 0),
(3, 'Macintosh OS X 10.2', '2014-09-04 15:33:41', 0),
(4, 'Macintosh OS X 10.3', '2014-09-04 15:33:41', 0),
(5, 'Macintosh X 10.4', '2014-09-04 15:33:42', 0),
(6, 'Macintosh X 10.5', '2014-09-04 15:33:42', 0),
(7, 'Macintosh X 10.6', '2014-09-04 15:33:42', 0),
(8, 'Macintosh X 10.7', '2014-09-04 15:33:42', 0),
(9, 'Macintosh X 10.8', '2014-09-04 15:33:42', 0),
(10, 'Macintosh X 10.9', '2014-09-04 15:33:42', 0),
(11, 'Macintosh X 10.10', '2014-09-04 15:33:42', 0),
(12, 'Windows OS 7', '2014-09-19 17:06:22', 0),
(13, 'Windows OS 8', '2014-09-19 17:06:51', 0);

-- --------------------------------------------------------

--
-- Table structure for table `receiptfacts_tbl`
--

CREATE TABLE IF NOT EXISTS `receiptfacts_tbl` (
  `rf_id` int(11) NOT NULL auto_increment,
  `rf_descp` varchar(200) NOT NULL,
  `create_date` datetime NOT NULL,
  `delete_flag` smallint(2) NOT NULL,
  PRIMARY KEY  (`rf_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=14 ;

--
-- Dumping data for table `receiptfacts_tbl`
--

INSERT INTO `receiptfacts_tbl` (`rf_id`, `rf_descp`, `create_date`, `delete_flag`) VALUES
(1, '統一名刺', '2014-09-04 15:30:49', 0),
(2, '統一名刺(両面)', '2014-09-04 15:30:49', 0),
(3, 'ＤＴＰ新規　コーディング', '2014-09-04 15:30:49', 0),
(4, '編集', '2014-09-04 15:30:49', 0),
(5, 'トレース', '2014-09-04 15:30:49', 0),
(6, '切り抜き', '2014-09-04 15:30:49', 0),
(7, '色修正マスク', '2014-09-04 15:30:49', 0),
(8, 'ＷＥＢ画面作成', '2014-09-04 15:30:49', 0),
(9, '文字入力', '2014-09-04 15:30:49', 0),
(10, 'マスキング', '2014-09-04 15:30:50', 0),
(11, 'その他', '2014-09-04 15:30:50', 0),
(13, 'ＤＴＰコーディング　修正', '2014-09-26 18:32:51', 0);

-- --------------------------------------------------------

--
-- Table structure for table `status_tbl`
--

CREATE TABLE IF NOT EXISTS `status_tbl` (
  `sta_id` int(11) NOT NULL auto_increment,
  `sta_descp` varchar(100) NOT NULL,
  `create_date` datetime NOT NULL,
  `delete_flag` smallint(2) NOT NULL,
  PRIMARY KEY  (`sta_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `status_tbl`
--

INSERT INTO `status_tbl` (`sta_id`, `sta_descp`, `create_date`, `delete_flag`) VALUES
(1, '予定', '2014-09-04 15:49:33', 0),
(2, '入稿', '2014-09-04 15:49:33', 0),
(3, '初校出し', '2014-09-04 15:49:33', 0),
(4, '再校', '2014-09-04 15:49:33', 0),
(5, '再校出し', '2014-09-04 15:49:33', 0),
(6, '三校', '2014-09-04 15:49:33', 0),
(7, '三校出し', '2014-09-04 15:49:33', 0),
(8, '四校', '2014-09-04 15:49:33', 0),
(9, '四校出し', '2014-09-04 15:49:33', 0),
(10, '五校', '2014-09-04 15:49:33', 0),
(11, '五校出し', '2014-09-04 15:49:33', 0),
(12, '校了', '2014-09-04 15:49:33', 0);

-- --------------------------------------------------------

--
-- Table structure for table `user_tbl`
--

CREATE TABLE IF NOT EXISTS `user_tbl` (
  `id` int(11) NOT NULL auto_increment,
  `user_id` varchar(10) collate utf8_unicode_ci NOT NULL,
  `user_name` varchar(50) collate utf8_unicode_ci NOT NULL,
  `department_name` varchar(20) collate utf8_unicode_ci NOT NULL,
  `email` varchar(50) collate utf8_unicode_ci NOT NULL,
  `password` varchar(128) collate utf8_unicode_ci NOT NULL,
  `salt` varchar(128) collate utf8_unicode_ci NOT NULL,
  `create_date` datetime NOT NULL,
  `delete_flag` smallint(6) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=7 ;

--
-- Dumping data for table `user_tbl`
--

INSERT INTO `user_tbl` (`id`, `user_id`, `user_name`, `department_name`, `email`, `password`, `salt`, `create_date`, `delete_flag`) VALUES
(4, 'RUBBERSOUL', 'zV2REmWa', '', 'j.sumitomo@rubbersoul.co.jp', '9e79bcceac857a02d1542f3696cb2a7061a9adcc7ed67d588388ce235c611523cb5a920fb1ec79dd86362ca3ddadbeabdd3c426f8e29e5563cad9cfd79a5ea4e', '31bca02094eb78126a517b206a88c73cfa9ec6f704c7030d18212cace820f025f00bf0ea68dbf3f3a5436ca63b53bf7bf80ad8d5de7d8359d0b7fed9dbc3ab99', '2014-09-19 17:15:55', 0),
(6, 'master', 'master', 'master', 'master@gmail.com', 'ed629a2611daf5101f655279699bfccaa0bf6dda29e2ed3f6496a9dc7846d05b6642aab4ac18c97a1bc5b9ca3a570112621bff71c512de0028492434d12008ba', '3c9ad55147a7144f6067327c3b82ea70e7c5426add9ceea4d07dc2902239bf9e049b88625eb65d014a7718f79354608cab0921782c643f0208983fffa3582e40', '2014-09-30 14:50:49', 0);

-- --------------------------------------------------------

--
-- Table structure for table `year_tbl`
--

CREATE TABLE IF NOT EXISTS `year_tbl` (
  `year_id` int(11) NOT NULL auto_increment,
  `year_start` int(4) NOT NULL,
  `year_end` int(4) NOT NULL,
  `create_date` datetime NOT NULL,
  `delete_flag` smallint(2) NOT NULL,
  PRIMARY KEY  (`year_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `year_tbl`
--

INSERT INTO `year_tbl` (`year_id`, `year_start`, `year_end`, `create_date`, `delete_flag`) VALUES
(1, 1990, 2030, '2014-09-30 14:13:05', 0);
