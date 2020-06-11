-- phpMyAdmin SQL Dump
-- version 4.4.15.10
-- https://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: 2020-06-11 21:35:36
-- 服务器版本： 5.5.57-log
-- PHP Version: 7.2.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `yjs_anei10_com`
--

-- --------------------------------------------------------

--
-- 表的结构 `iqw_ad`
--

CREATE TABLE IF NOT EXISTS `iqw_ad` (
  `id` int(5) NOT NULL,
  `board_id` smallint(5) NOT NULL,
  `type` varchar(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `url` varchar(255) NOT NULL,
  `content` mediumtext NOT NULL,
  `extimg` varchar(255) NOT NULL,
  `defaultimg` varchar(255) DEFAULT NULL,
  `extval` varchar(200) NOT NULL,
  `desc` varchar(255) NOT NULL,
  `start_time` int(10) NOT NULL,
  `end_time` int(10) NOT NULL,
  `clicks` int(10) NOT NULL DEFAULT '0',
  `add_time` int(10) NOT NULL DEFAULT '0',
  `ordid` tinyint(3) unsigned NOT NULL DEFAULT '255',
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `iqw_ad`
--

INSERT INTO `iqw_ad` (`id`, `board_id`, `type`, `name`, `url`, `content`, `extimg`, `defaultimg`, `extval`, `desc`, `start_time`, `end_time`, `clicks`, `add_time`, `ordid`, `status`) VALUES
(33, 15, 'image', '首页幻灯1', '', '1.jpg', '', '', '', '', 1524499200, 1524758400, 0, 0, 255, 1),
(35, 15, 'image', 'banner2', '', '2.jpg', '', '', '', '', 1585756800, 1680537600, 0, 0, 255, 1);

-- --------------------------------------------------------

--
-- 表的结构 `iqw_adboard`
--

CREATE TABLE IF NOT EXISTS `iqw_adboard` (
  `id` smallint(5) NOT NULL,
  `name` varchar(50) NOT NULL,
  `tpl` varchar(20) NOT NULL,
  `width` smallint(5) NOT NULL,
  `height` smallint(5) NOT NULL,
  `description` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `iqw_adboard`
--

INSERT INTO `iqw_adboard` (`id`, `name`, `tpl`, `width`, `height`, `description`, `status`) VALUES
(15, '首页幻灯', 'banner', 800, 550, '首页幻灯', 1);

-- --------------------------------------------------------

--
-- 表的结构 `iqw_address_set`
--

CREATE TABLE IF NOT EXISTS `iqw_address_set` (
  `id` smallint(4) unsigned NOT NULL,
  `name` varchar(50) NOT NULL,
  `tags` varchar(50) NOT NULL,
  `pid` smallint(4) unsigned NOT NULL,
  `spid` varchar(50) NOT NULL,
  `fcolor` varchar(10) NOT NULL,
  `remark` varchar(255) NOT NULL,
  `add_time` int(10) NOT NULL,
  `items` int(10) unsigned NOT NULL DEFAULT '0',
  `likes` int(10) NOT NULL,
  `type` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '0:商品分类 1:标签分类',
  `ordid` tinyint(3) unsigned NOT NULL DEFAULT '255',
  `status` tinyint(1) NOT NULL,
  `is_index` tinyint(1) NOT NULL DEFAULT '0',
  `is_default` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `keyword` varchar(255) DEFAULT NULL COMMENT '关键词',
  `key` varchar(255) DEFAULT NULL COMMENT 'key值'
) ENGINE=MyISAM AUTO_INCREMENT=502 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `iqw_address_set`
--

INSERT INTO `iqw_address_set` (`id`, `name`, `tags`, `pid`, `spid`, `fcolor`, `remark`, `add_time`, `items`, `likes`, `type`, `ordid`, `status`, `is_index`, `is_default`, `keyword`, `key`) VALUES
(343, '南山区', '', 0, '0', '', '', 0, 0, 0, 0, 3, 1, 1, 0, 'alzs', 'alzs'),
(378, '华侨城', '', 343, '343|', '', '', 0, 0, 0, 0, 255, 1, 1, 0, NULL, NULL),
(345, '西丽', '', 343, '343|', '', '', 0, 0, 0, 0, 2, 1, 1, 0, 'cy', 'cy'),
(346, '白石洲', '', 343, '343|', '', '', 0, 0, 0, 0, 3, 1, 1, 0, 'hs', 'hs'),
(373, '上步', '', 371, '371|', '', '', 0, 0, 0, 0, 255, 1, 1, 0, 'ty', 'wtg'),
(372, '上沙', '', 371, '371|', '', '', 0, 0, 0, 0, 255, 1, 1, 0, 'ty', 'wxhyk'),
(371, '福田区', '', 0, '0', '', '', 0, 0, 0, 0, 2, 1, 1, 0, 'ty', 'hymk'),
(393, '罗湖区', '', 0, '0', '', '', 0, 0, 0, 0, 1, 1, 0, 0, NULL, NULL),
(394, '盐田区', '', 0, '0', '', '', 0, 0, 0, 0, 6, 1, 0, 0, NULL, NULL),
(395, '宝安区', '', 0, '0', '', '', 0, 0, 0, 0, 4, 1, 0, 0, NULL, NULL),
(396, '龙岗区', '', 0, '0', '', '', 0, 0, 0, 0, 5, 1, 0, 0, NULL, NULL),
(397, '光明新区', '', 0, '0', '', '', 0, 0, 0, 0, 8, 1, 0, 0, NULL, NULL),
(398, '龙华新区', '', 0, '0', '', '', 0, 0, 0, 0, 10, 1, 0, 0, NULL, NULL),
(399, '坪山新区', '', 0, '0', '', '', 0, 0, 0, 0, 7, 1, 0, 0, NULL, NULL),
(400, '大鹏新区', '', 0, '0', '', '', 0, 0, 0, 0, 9, 1, 0, 0, NULL, NULL),
(401, '蔡屋围', '', 393, '393|', '', '', 0, 0, 0, 0, 255, 1, 0, 0, NULL, NULL),
(402, '国贸', '', 393, '393|', '', '', 0, 0, 0, 0, 255, 1, 0, 0, NULL, NULL),
(403, '沙头角', '', 394, '394|', '', '', 0, 0, 0, 0, 255, 1, 0, 0, NULL, NULL),
(404, '西乡', '', 395, '395|', '', '', 0, 0, 0, 0, 255, 1, 0, 0, NULL, NULL),
(405, '布吉', '', 396, '396|', '', '', 0, 0, 0, 0, 255, 1, 0, 0, NULL, NULL),
(406, '公明', '', 397, '397|', '', '', 0, 0, 0, 0, 255, 1, 0, 0, NULL, NULL),
(407, '南澳', '', 400, '400|', '', '', 0, 0, 0, 0, 255, 1, 0, 0, NULL, NULL),
(408, '清湖', '', 398, '398|', '', '', 0, 0, 0, 0, 255, 1, 0, 0, NULL, NULL),
(409, '坑梓', '', 399, '399|', '', '', 0, 0, 0, 0, 255, 1, 0, 0, NULL, NULL),
(412, '地王', '', 393, '393|', '', '', 0, 0, 0, 0, 255, 1, 0, 0, NULL, NULL),
(413, '火车站', '', 393, '393|', '', '', 0, 0, 0, 0, 255, 1, 0, 0, NULL, NULL),
(414, '东门', '', 393, '393|', '', '', 0, 0, 0, 0, 255, 1, 0, 0, NULL, NULL),
(415, '文锦渡口岸', '', 393, '393|', '', '', 0, 0, 0, 0, 255, 1, 0, 0, NULL, NULL),
(416, '黄贝岭', '', 393, '393|', '', '', 0, 0, 0, 0, 255, 1, 0, 0, NULL, NULL),
(417, '莲塘', '', 393, '393|', '', '', 0, 0, 0, 0, 255, 1, 0, 0, NULL, NULL),
(418, '布心', '', 393, '393|', '', '', 0, 0, 0, 0, 255, 1, 0, 0, NULL, NULL),
(419, '翠竹', '', 393, '393|', '', '', 0, 0, 0, 0, 255, 1, 0, 0, NULL, NULL),
(420, '笋岗', '', 393, '393|', '', '', 0, 0, 0, 0, 255, 1, 0, 0, NULL, NULL),
(421, '泥岗', '', 393, '393|', '', '', 0, 0, 0, 0, 255, 1, 0, 0, NULL, NULL),
(422, '清水河', '', 393, '393|', '', '', 0, 0, 0, 0, 255, 1, 0, 0, NULL, NULL),
(423, '草埔', '', 393, '393|', '', '', 0, 0, 0, 0, 255, 1, 0, 0, NULL, NULL),
(424, '银湖', '', 393, '393|', '', '', 0, 0, 0, 0, 255, 1, 0, 0, NULL, NULL),
(425, '东湖', '', 393, '393|', '', '', 0, 0, 0, 0, 255, 1, 0, 0, NULL, NULL),
(426, '水贝', '', 393, '393|', '', '', 0, 0, 0, 0, 255, 1, 0, 0, NULL, NULL),
(427, '田贝', '', 393, '393|', '', '', 0, 0, 0, 0, 255, 1, 0, 0, NULL, NULL),
(428, '罗湖区委', '', 393, '393|', '', '', 0, 0, 0, 0, 255, 1, 0, 0, NULL, NULL),
(429, '下沙', '', 371, '371|', '', '', 0, 0, 0, 0, 255, 1, 0, 0, NULL, NULL),
(430, '八卦岭', '', 371, '371|', '', '', 0, 0, 0, 0, 255, 1, 0, 0, NULL, NULL),
(431, '华强北', '', 371, '371|', '', '', 0, 0, 0, 0, 255, 1, 0, 0, NULL, NULL),
(432, '梅林', '', 371, '371|', '', '', 0, 0, 0, 0, 255, 1, 0, 0, NULL, NULL),
(433, '景田', '', 371, '371|', '', '', 0, 0, 0, 0, 255, 1, 0, 0, NULL, NULL),
(434, '香密湖', '', 371, '371|', '', '', 0, 0, 0, 0, 255, 1, 0, 0, NULL, NULL),
(435, '车公庙', '', 371, '371|', '', '', 0, 0, 0, 0, 255, 1, 0, 0, NULL, NULL),
(436, '竹子林', '', 371, '371|', '', '', 0, 0, 0, 0, 255, 1, 0, 0, NULL, NULL),
(437, '益田', '', 371, '371|', '', '', 0, 0, 0, 0, 255, 1, 0, 0, NULL, NULL),
(438, '新洲', '', 371, '371|', '', '', 0, 0, 0, 0, 255, 1, 0, 0, NULL, NULL),
(439, '石厦', '', 371, '371|', '', '', 0, 0, 0, 0, 255, 1, 0, 0, NULL, NULL),
(440, '保税区', '', 371, '371|', '', '', 0, 0, 0, 0, 255, 1, 0, 0, NULL, NULL),
(441, '皇岗', '', 371, '371|', '', '', 0, 0, 0, 0, 255, 1, 0, 0, NULL, NULL),
(442, '岗厦', '', 371, '371|', '', '', 0, 0, 0, 0, 255, 1, 0, 0, NULL, NULL),
(443, '福田中心区', '', 371, '371|', '', '', 0, 0, 0, 0, 255, 1, 0, 0, NULL, NULL),
(444, '莲花北', '', 371, '371|', '', '', 0, 0, 0, 0, 255, 1, 0, 0, NULL, NULL),
(445, '笔架山', '', 371, '371|', '', '', 0, 0, 0, 0, 255, 1, 0, 0, NULL, NULL),
(446, '彩田村', '', 371, '371|', '', '', 0, 0, 0, 0, 255, 1, 0, 0, NULL, NULL),
(447, '赤尾', '', 371, '371|', '', '', 0, 0, 0, 0, 255, 1, 0, 0, NULL, NULL),
(448, '富民新村', '', 371, '371|', '', '', 0, 0, 0, 0, 255, 1, 0, 0, NULL, NULL),
(449, '购物公园', '', 371, '371|', '', '', 0, 0, 0, 0, 255, 1, 0, 0, NULL, NULL),
(450, '福田区委', '', 371, '371|', '', '', 0, 0, 0, 0, 255, 1, 0, 0, NULL, NULL),
(451, '华强南', '', 371, '371|', '', '', 0, 0, 0, 0, 255, 1, 0, 0, NULL, NULL),
(452, '园岭', '', 371, '371|', '', '', 0, 0, 0, 0, 255, 1, 0, 0, NULL, NULL),
(453, '科技园', '', 343, '343|', '', '', 0, 0, 0, 0, 255, 1, 0, 0, NULL, NULL),
(454, '南头', '', 343, '343|', '', '', 0, 0, 0, 0, 255, 1, 0, 0, NULL, NULL),
(455, '前海', '', 343, '343|', '', '', 0, 0, 0, 0, 255, 1, 0, 0, NULL, NULL),
(456, '南油', '', 343, '343|', '', '', 0, 0, 0, 0, 255, 1, 0, 0, NULL, NULL),
(457, '后海', '', 343, '343|', '', '', 0, 0, 0, 0, 255, 1, 0, 0, NULL, NULL),
(458, '中心区', '', 343, '343|', '', '', 0, 0, 0, 0, 255, 1, 0, 0, NULL, NULL),
(459, '蛇口', '', 343, '343|', '', '', 0, 0, 0, 0, 255, 1, 0, 0, NULL, NULL),
(460, '深圳湾', '', 343, '343|', '', '', 0, 0, 0, 0, 255, 1, 0, 0, NULL, NULL),
(461, '桂庙路口', '', 343, '343|', '', '', 0, 0, 0, 0, 255, 1, 0, 0, NULL, NULL),
(462, '海岸城', '', 343, '343|', '', '', 0, 0, 0, 0, 255, 1, 0, 0, NULL, NULL),
(463, '大冲', '', 343, '343|', '', '', 0, 0, 0, 0, 255, 1, 0, 0, NULL, NULL),
(464, '海上世界', '', 343, '343|', '', '', 0, 0, 0, 0, 255, 1, 0, 0, NULL, NULL),
(465, '南山医院', '', 343, '343|', '', '', 0, 0, 0, 0, 255, 1, 0, 0, NULL, NULL),
(466, '深大', '', 343, '343|', '', '', 0, 0, 0, 0, 255, 1, 0, 0, NULL, NULL),
(467, '桃源村', '', 343, '343|', '', '', 0, 0, 0, 0, 255, 1, 0, 0, NULL, NULL),
(468, '新安', '', 395, '395|', '', '', 0, 0, 0, 0, 255, 1, 0, 0, NULL, NULL),
(469, '中心区', '', 395, '395|', '', '', 0, 0, 0, 0, 255, 1, 0, 0, NULL, NULL),
(470, '福永', '', 395, '395|', '', '', 0, 0, 0, 0, 255, 1, 0, 0, NULL, NULL),
(471, '沙井', '', 395, '395|', '', '', 0, 0, 0, 0, 255, 1, 0, 0, NULL, NULL),
(472, '石岩', '', 395, '395|', '', '', 0, 0, 0, 0, 255, 1, 0, 0, NULL, NULL),
(473, '松岗', '', 395, '395|', '', '', 0, 0, 0, 0, 255, 1, 0, 0, NULL, NULL),
(474, '新城', '', 395, '395|', '', '', 0, 0, 0, 0, 255, 1, 0, 0, NULL, NULL),
(475, '同乐', '', 396, '396|', '', '', 0, 0, 0, 0, 255, 1, 0, 0, NULL, NULL),
(476, '坂田', '', 396, '396|', '', '', 0, 0, 0, 0, 255, 1, 0, 0, NULL, NULL),
(477, '龙岗中心', '', 396, '396|', '', '', 0, 0, 0, 0, 255, 1, 0, 0, NULL, NULL),
(478, '横岗', '', 396, '396|', '', '', 0, 0, 0, 0, 255, 1, 0, 0, NULL, NULL),
(479, '平湖', '', 396, '396|', '', '', 0, 0, 0, 0, 255, 1, 0, 0, NULL, NULL),
(480, '坪地', '', 396, '396|', '', '', 0, 0, 0, 0, 255, 1, 0, 0, NULL, NULL),
(481, '盐田', '', 394, '394|', '', '', 0, 0, 0, 0, 255, 1, 0, 0, NULL, NULL),
(482, '大、小梅沙', '', 394, '394|', '', '', 0, 0, 0, 0, 255, 1, 0, 0, NULL, NULL),
(483, '坪山', '', 399, '399|', '', '', 0, 0, 0, 0, 255, 1, 0, 0, NULL, NULL),
(484, '葵涌', '', 400, '400|', '', '', 0, 0, 0, 0, 255, 1, 0, 0, NULL, NULL),
(485, '大鹏', '', 400, '400|', '', '', 0, 0, 0, 0, 255, 1, 0, 0, NULL, NULL),
(486, '观澜', '', 398, '398|', '', '', 0, 0, 0, 0, 255, 1, 0, 0, NULL, NULL),
(487, '大浪', '', 398, '398|', '', '', 0, 0, 0, 0, 255, 1, 0, 0, NULL, NULL),
(488, '龙华中心区', '', 398, '398|', '', '', 0, 0, 0, 0, 255, 1, 0, 0, NULL, NULL),
(489, '民治', '', 398, '398|', '', '', 0, 0, 0, 0, 255, 1, 0, 0, NULL, NULL),
(490, '其他', '', 393, '393|', '', '', 0, 0, 0, 0, 255, 1, 0, 0, NULL, NULL),
(491, '其他', '', 371, '371|', '', '', 0, 0, 0, 0, 255, 1, 0, 0, NULL, NULL),
(492, '其他', '', 343, '343|', '', '', 0, 0, 0, 0, 255, 1, 0, 0, NULL, NULL),
(493, '其他', '', 395, '395|', '', '', 0, 0, 0, 0, 255, 1, 0, 0, NULL, NULL),
(494, '其他', '', 396, '396|', '', '', 0, 0, 0, 0, 255, 1, 0, 0, NULL, NULL),
(495, '其他', '', 394, '394|', '', '', 0, 0, 0, 0, 255, 1, 0, 0, NULL, NULL),
(496, '其他', '', 399, '399|', '', '', 0, 0, 0, 0, 255, 1, 0, 0, NULL, NULL),
(497, '其他', '', 397, '397|', '', '', 0, 0, 0, 0, 255, 1, 0, 0, NULL, NULL),
(498, '其他', '', 400, '400|', '', '', 0, 0, 0, 0, 255, 1, 0, 0, NULL, NULL),
(499, '其他', '', 398, '398|', '', '', 0, 0, 0, 0, 255, 1, 0, 0, NULL, NULL),
(500, '深圳周边', '', 0, '0', '', '', 0, 0, 0, 0, 255, 1, 0, 0, NULL, NULL),
(501, '深圳周边', '', 500, '500|', '', '', 0, 0, 0, 0, 255, 1, 0, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `iqw_admin`
--

CREATE TABLE IF NOT EXISTS `iqw_admin` (
  `id` mediumint(6) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(32) NOT NULL,
  `role_id` smallint(5) NOT NULL,
  `last_ip` varchar(15) NOT NULL,
  `last_time` int(10) NOT NULL DEFAULT '0',
  `contact` varchar(80) NOT NULL COMMENT '联系人',
  `mobile` varchar(20) NOT NULL COMMENT '手机号码',
  `email` varchar(50) NOT NULL,
  `user_id` varchar(50) NOT NULL COMMENT '手动添加业务员的id号',
  `real_name` varchar(50) NOT NULL COMMENT '业务员真实姓名',
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `iqw_admin`
--

INSERT INTO `iqw_admin` (`id`, `username`, `password`, `role_id`, `last_ip`, `last_time`, `contact`, `mobile`, `email`, `user_id`, `real_name`, `status`) VALUES
(2, 'admin', '0abc14f65d36a0b9058333a144945dd5', 2, '113.89.96.212', 1550634440, '管理员', '13789898989', '', '001', '管理员', 1),
(1, 'iqwweb', 'a2e92ddc3f206a2400b5b241ffc93124', 1, '113.104.203.57', 1591882504, '', '', 'ADMIN@QQ.COM', '1001-001', '爱企网', 1);

-- --------------------------------------------------------

--
-- 表的结构 `iqw_admin_auth`
--

CREATE TABLE IF NOT EXISTS `iqw_admin_auth` (
  `role_id` tinyint(3) NOT NULL,
  `menu_id` smallint(6) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `iqw_admin_auth`
--

INSERT INTO `iqw_admin_auth` (`role_id`, `menu_id`) VALUES
(2, 1),
(2, 10),
(2, 11),
(2, 12),
(2, 13),
(2, 23),
(2, 24),
(2, 25),
(2, 26),
(2, 27),
(2, 28),
(2, 36),
(2, 37),
(2, 38),
(2, 50),
(2, 60),
(2, 61),
(2, 62),
(2, 63),
(2, 64),
(2, 70),
(2, 117),
(2, 118),
(2, 119),
(2, 149),
(2, 150),
(2, 154),
(2, 155),
(2, 157),
(2, 158),
(2, 159),
(2, 181),
(2, 255),
(2, 278),
(2, 306),
(2, 307),
(2, 321),
(2, 366),
(2, 385),
(2, 386),
(2, 436),
(2, 437),
(2, 438),
(2, 439),
(2, 440),
(2, 441),
(2, 442),
(2, 443),
(2, 444),
(2, 446),
(2, 447),
(2, 455),
(2, 456),
(2, 457),
(2, 458),
(2, 459),
(2, 460),
(2, 461),
(2, 462),
(2, 463),
(3, 10),
(3, 50),
(3, 308),
(3, 309),
(3, 312),
(3, 317),
(3, 320),
(3, 366),
(3, 367),
(3, 379),
(3, 381),
(3, 382),
(3, 387),
(3, 388),
(3, 390),
(3, 391),
(3, 392),
(3, 402),
(3, 403),
(3, 404),
(3, 405),
(3, 406),
(3, 407),
(3, 408),
(3, 409),
(3, 410),
(3, 411),
(3, 412),
(3, 413),
(3, 414),
(3, 415),
(3, 416),
(3, 417),
(3, 418),
(3, 419),
(3, 421),
(3, 422),
(3, 423),
(3, 426),
(3, 427),
(3, 430),
(3, 431),
(4, 1),
(4, 10),
(4, 11),
(4, 12),
(4, 23),
(4, 24),
(4, 25),
(4, 50),
(4, 60),
(4, 154),
(4, 155),
(4, 156),
(4, 157),
(4, 158),
(4, 159),
(4, 160),
(4, 161),
(4, 162),
(4, 240),
(4, 278),
(4, 308),
(4, 309),
(4, 312),
(4, 317),
(4, 320),
(4, 321),
(4, 366),
(4, 367),
(4, 379),
(4, 381),
(4, 382),
(4, 387),
(4, 388),
(4, 390),
(4, 391),
(4, 392),
(4, 402),
(4, 403),
(4, 404),
(4, 405),
(4, 406),
(4, 407),
(4, 408),
(4, 409),
(4, 410),
(4, 411),
(4, 412),
(4, 413),
(4, 414),
(4, 415),
(4, 416),
(4, 417),
(4, 418),
(4, 419),
(4, 420),
(4, 421),
(4, 422),
(4, 423),
(4, 426),
(4, 427),
(4, 430),
(4, 431),
(5, 1),
(5, 10),
(5, 11),
(5, 12),
(5, 23),
(5, 24),
(5, 25),
(5, 50),
(5, 60),
(5, 154),
(5, 155),
(5, 156),
(5, 157),
(5, 158),
(5, 159),
(5, 160),
(5, 161),
(5, 162),
(5, 240),
(5, 278),
(5, 308),
(5, 309),
(5, 312),
(5, 317),
(5, 320),
(5, 321),
(5, 366),
(5, 367),
(5, 379),
(5, 381),
(5, 382),
(5, 387),
(5, 388),
(5, 390),
(5, 391),
(5, 392),
(5, 402),
(5, 403),
(5, 404),
(5, 405),
(5, 406),
(5, 407),
(5, 408),
(5, 409),
(5, 410),
(5, 411),
(5, 412),
(5, 413),
(5, 414),
(5, 415),
(5, 416),
(5, 417),
(5, 418),
(5, 419),
(5, 420),
(5, 421),
(5, 422),
(5, 423),
(5, 426),
(5, 427),
(5, 430),
(5, 431),
(5, 435),
(6, 10),
(6, 11),
(6, 12),
(6, 23),
(6, 24),
(6, 25),
(6, 50),
(6, 154),
(6, 155),
(6, 156),
(6, 157),
(6, 158),
(6, 159),
(6, 160),
(6, 161),
(6, 162),
(6, 240),
(6, 278),
(6, 308),
(6, 309),
(6, 312),
(6, 317),
(6, 320),
(6, 321),
(6, 366),
(6, 367),
(6, 379),
(6, 381),
(6, 382),
(6, 387),
(6, 388),
(6, 390),
(6, 391),
(6, 392),
(6, 402),
(6, 403),
(6, 404),
(6, 405),
(6, 406),
(6, 407),
(6, 408),
(6, 409),
(6, 410),
(6, 411),
(6, 412),
(6, 413),
(6, 414),
(6, 415),
(6, 416),
(6, 417),
(6, 418),
(6, 419),
(6, 421),
(6, 422),
(6, 423),
(6, 426),
(6, 427),
(6, 430),
(6, 431),
(6, 436),
(7, 1),
(7, 10),
(7, 11),
(7, 12),
(7, 23),
(7, 24),
(7, 25),
(7, 50),
(7, 60),
(7, 154),
(7, 155),
(7, 156),
(7, 157),
(7, 158),
(7, 159),
(7, 160),
(7, 161),
(7, 162),
(7, 240),
(7, 278),
(7, 308),
(7, 309),
(7, 312),
(7, 317),
(7, 320),
(7, 321),
(7, 366),
(7, 367),
(7, 379),
(7, 381),
(7, 382),
(7, 387),
(7, 388),
(7, 390),
(7, 391),
(7, 392),
(7, 402),
(7, 403),
(7, 404),
(7, 405),
(7, 406),
(7, 407),
(7, 408),
(7, 409),
(7, 410),
(7, 411),
(7, 412),
(7, 413),
(7, 414),
(7, 415),
(7, 416),
(7, 417),
(7, 418),
(7, 419),
(7, 420),
(7, 421),
(7, 422),
(7, 423),
(7, 426),
(7, 427),
(7, 430),
(7, 431),
(7, 436),
(8, 1),
(8, 10),
(8, 11),
(8, 12),
(8, 23),
(8, 24),
(8, 25),
(8, 50),
(8, 60),
(8, 154),
(8, 155),
(8, 156),
(8, 157),
(8, 158),
(8, 159),
(8, 160),
(8, 161),
(8, 162),
(8, 240),
(8, 278),
(8, 308),
(8, 309),
(8, 312),
(8, 317),
(8, 320),
(8, 321),
(8, 366),
(8, 367),
(8, 379),
(8, 381),
(8, 382),
(8, 387),
(8, 388),
(8, 390),
(8, 391),
(8, 392),
(8, 402),
(8, 403),
(8, 404),
(8, 405),
(8, 406),
(8, 407),
(8, 408),
(8, 409),
(8, 410),
(8, 411),
(8, 412),
(8, 413),
(8, 414),
(8, 415),
(8, 416),
(8, 417),
(8, 418),
(8, 419),
(8, 421),
(8, 422),
(8, 423),
(8, 426),
(8, 427),
(8, 430),
(8, 431),
(8, 435),
(9, 1),
(9, 10),
(9, 11),
(9, 12),
(9, 23),
(9, 24),
(9, 25),
(9, 50),
(9, 60),
(9, 154),
(9, 155),
(9, 156),
(9, 157),
(9, 158),
(9, 159),
(9, 160),
(9, 161),
(9, 162),
(9, 240),
(9, 278),
(9, 308),
(9, 309),
(9, 312),
(9, 317),
(9, 320),
(9, 321),
(9, 366),
(9, 367),
(9, 379),
(9, 381),
(9, 382),
(9, 387),
(9, 388),
(9, 390),
(9, 391),
(9, 392),
(9, 402),
(9, 403),
(9, 404),
(9, 405),
(9, 406),
(9, 407),
(9, 408),
(9, 409),
(9, 410),
(9, 411),
(9, 412),
(9, 413),
(9, 414),
(9, 415),
(9, 416),
(9, 417),
(9, 418),
(9, 419),
(9, 420),
(9, 421),
(9, 422),
(9, 423),
(9, 426),
(9, 427),
(9, 430),
(9, 431),
(9, 435);

-- --------------------------------------------------------

--
-- 表的结构 `iqw_admin_role`
--

CREATE TABLE IF NOT EXISTS `iqw_admin_role` (
  `id` tinyint(3) NOT NULL,
  `name` varchar(50) NOT NULL,
  `remark` text NOT NULL,
  `ordid` tinyint(3) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `iqw_admin_role`
--

INSERT INTO `iqw_admin_role` (`id`, `name`, `remark`, `ordid`, `status`) VALUES
(1, '爱企网管理员', '爱企网管理员', 0, 1),
(2, '超级管理员', '网站运营者最高权限', 0, 1);

-- --------------------------------------------------------

--
-- 表的结构 `iqw_article`
--

CREATE TABLE IF NOT EXISTS `iqw_article` (
  `id` int(11) unsigned NOT NULL,
  `cate_id` smallint(4) unsigned NOT NULL,
  `title` varchar(255) NOT NULL,
  `colors` varchar(10) NOT NULL,
  `author` varchar(100) NOT NULL,
  `tags` varchar(100) NOT NULL,
  `img` varchar(255) NOT NULL,
  `intro` varchar(255) NOT NULL,
  `info` text NOT NULL,
  `comments` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '评论数',
  `hits` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '浏览数',
  `ordid` tinyint(3) unsigned NOT NULL DEFAULT '255' COMMENT '排序值',
  `add_time` int(10) unsigned NOT NULL DEFAULT '0',
  `last_time` int(10) unsigned NOT NULL DEFAULT '0',
  `is_index` int(1) NOT NULL DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `seo_title` varchar(255) NOT NULL,
  `seo_keys` varchar(255) NOT NULL,
  `seo_desc` varchar(512) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=197 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `iqw_article`
--

INSERT INTO `iqw_article` (`id`, `cate_id`, `title`, `colors`, `author`, `tags`, `img`, `intro`, `info`, `comments`, `hits`, `ordid`, `add_time`, `last_time`, `is_index`, `status`, `seo_title`, `seo_keys`, `seo_desc`) VALUES
(196, 0, '123', '', '铺吧网', '', '', '123', '123', 0, 0, 255, 1524137092, 0, 0, 1, '', '', '');

-- --------------------------------------------------------

--
-- 表的结构 `iqw_article2`
--

CREATE TABLE IF NOT EXISTS `iqw_article2` (
  `id` int(11) NOT NULL,
  `type` smallint(5) NOT NULL COMMENT '1,公司制度。2文件。3通知',
  `title` varchar(255) NOT NULL,
  `info` text NOT NULL,
  `addtime` int(11) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='公司公告信息';

--
-- 转存表中的数据 `iqw_article2`
--

INSERT INTO `iqw_article2` (`id`, `type`, `title`, `info`, `addtime`) VALUES
(7, 3, '2017中秋国庆放假通知', '根据国务院2017年假日安排通知，国庆中秋放假安排如下：<br />\r\n<br />\r\n&nbsp;&nbsp;&nbsp; 10月1号至8号放假；其中法定假日2,3,4,5号，6号工作日调休至9月30号（周六）上班，由于当周单休，即7号（周六）调休至14号（周六）上班。<br />\r\n<br />\r\n<br />\r\n温馨提醒：<br />\r\n请各部门人员关好门窗和办公电脑等设备，放假期间伙伴们注意个人及财产安全，提前祝大家中秋团圆，阖家幸福，节日快乐！', 1506137020),
(6, 1, '深圳铺8行政办公制度', '<p style="text-indent:2em;">\r\n	<span style="font-family:宋体;color:black;"></span><span style="font-size:14.0pt;font-family:宋体;color:red;">一、考勤及请假<span></span></span> \r\n</p>\r\n<p style="margin-left:40.5pt;text-indent:2em;">\r\n	<span style="font-size:12pt;font-family:宋体;color:#000000;"><span style="color:#000000;">1、</span></span><span style="font-size:12.0pt;font-family:宋体;"><span style="color:#000000;">工作时间：上午</span><span style="color:#000000;">8:30—12:00</span><span style="color:#000000;">；下午</span><span style="color:#000000;">14:00—18:00 </span></span><span style="font-size:12pt;font-family:宋体;color:#000000;">，</span><span style="font-size:12.0pt;font-family:宋体;"><span style="color:#000000;">员工在规定上班时间内未到岗，视为迟到，在规定下班时间提前离岗者，视为早退。每次扣</span><span style="color:#000000;">30</span><span style="color:#000000;">元，迟到或者早退超过</span><span style="color:#000000;">30</span><span style="color:#000000;">分钟，计旷工半天；迟到或者早退超过两个小时，计旷工一天；</span><span></span></span> \r\n</p>\r\n<p style="margin-left:40.5pt;text-indent:2em;">\r\n	<span style="font-size:12pt;font-family:宋体;color:#000000;"><span style="color:#000000;">2、</span></span><span style="font-size:12.0pt;font-family:宋体;color:black;"><span style="color:#000000;">外出需微信群通知（号码</span><span style="color:#000000;">+</span><span style="color:#000000;">地址），同时在前台登记，弄虚作假者按旷工处理，并于公司早会上总监点名批评；</span></span><span style="font-size:12.0pt;font-family:宋体;"></span> \r\n</p>\r\n<p style="margin-left:40.5pt;text-indent:2em;">\r\n	<span style="font-size:12pt;font-family:宋体;color:#000000;"><span style="color:#000000;">3、</span></span><span style="font-size:12pt;font-family:宋体;color:#000000;">请假需提前一天当面或语音电话申请，短信、留言、托他人转告申请无效（特殊情况除外），半天内由主管审批，半天以上由本市场总监审批，非业务人员请假由其直属上级审批，未批休假者按旷工处理；</span><span style="font-size:12.0pt;font-family:宋体;"></span> \r\n</p>\r\n<p style="margin-left:40.5pt;text-indent:2em;">\r\n	<span style="font-size:12pt;font-family:宋体;color:#000000;"><span style="color:#000000;">4、</span></span><span style="font-size:12pt;font-family:宋体;color:#000000;">主管请假由本市场总监审批，总监请假由总经理审批，未批休假者按旷工处理；</span><span style="font-size:12.0pt;font-family:宋体;"></span> \r\n</p>\r\n<p style="margin-left:40.5pt;text-indent:2em;">\r\n	<span style="font-size:12pt;font-family:宋体;color:#000000;"><span style="color:#000000;">5、</span></span><span style="font-size:12.0pt;font-family:宋体;"><span style="color:#000000;">未办理请假手续擅离职守一律按旷工论处扣除当天工资，另旷工</span><span style="color:#000000;">1-3</span><span style="color:#000000;">天罚款</span><span style="color:#000000;">100</span><span style="color:#000000;">元</span><span style="color:#000000;">/</span><span style="color:#000000;">天，超过</span><span style="color:#000000;">3</span><span style="color:#000000;">天可计为自动离职。</span><span></span></span> \r\n</p>\r\n<p style="margin-left:40.5pt;text-indent:2em;">\r\n	<span style="font-size:12pt;font-family:宋体;color:#000000;"><span style="color:#000000;">6、</span></span><span style="font-size:12.0pt;font-family:宋体;color:black;"><span style="color:#000000;">每月请假超过</span><span style="color:#000000;">7</span><span style="color:#000000;">天计自动离职（特殊情况除外）</span></span> \r\n</p>\r\n<p style="text-indent:2em;">\r\n	<span style="font-size:14.0pt;font-family:宋体;color:red;">二、请休假待遇<span></span></span> \r\n</p>\r\n<p style="margin-left:40.5pt;text-indent:2em;">\r\n	<span style="font-size:12pt;font-family:宋体;color:#000000;"><span style="color:#000000;">1、</span></span><span style="font-size:12.0pt;font-family:宋体;"><span style="color:#000000;">事假：扣除请假当日全部工资。</span><span></span></span> \r\n</p>\r\n<p style="margin-left:40.5pt;text-indent:2em;">\r\n	<span style="font-size:12pt;font-family:宋体;color:#000000;"><span style="color:#000000;">2、</span></span><span style="font-size:12.0pt;font-family:宋体;"><span style="color:#000000;">病假：当月</span><span style="color:#000000;">2</span><span style="color:#000000;">天（含）以内</span><span style="color:#000000;">80%</span><span style="color:#000000;">发放岗位工资；</span><span style="color:#000000;">2</span><span style="color:#000000;">天以上无薪。</span><span></span></span> \r\n</p>\r\n<p style="margin-left:40.5pt;text-indent:2em;">\r\n	<span style="font-size:12pt;font-family:宋体;color:#000000;"><span style="color:#000000;">3、</span></span><span style="font-size:12.0pt;font-family:宋体;"><span style="color:#000000;">婚假：按国家婚姻法履行正式结婚登记手续的员工（不含试用期员工），可享受全薪婚假</span><span style="color:#000000;">3</span><span style="color:#000000;">天。婚假须在履行结婚登记手续后三个月内休完，过期视同自动放弃休假。</span><span></span></span> \r\n</p>\r\n<p style="margin-left:40.5pt;text-indent:2em;">\r\n	<span style="font-size:12pt;font-family:宋体;color:#000000;"><span style="color:#000000;">4、</span></span><span style="font-size:12.0pt;font-family:宋体;"><span style="color:#000000;">丧假：员工直系亲属（指父母、岳父母、配偶、子女）去世，可享受全薪丧假</span><span style="color:#000000;">3</span><span style="color:#000000;">天。</span><span></span></span> \r\n</p>\r\n<p style="margin-left:40.5pt;text-indent:2em;">\r\n	<span style="font-size:12pt;font-family:宋体;color:#000000;"><span style="color:#000000;">5、</span></span><span style="font-size:12.0pt;font-family:宋体;"><span style="color:#000000;">员工婚假、丧假的假期应一次性连续休完，假期内遇节假日，均不另增加假期天数。</span><span></span></span> \r\n</p>\r\n<p style="margin-left:40.5pt;text-indent:2em;">\r\n	<span style="font-size:12pt;font-family:宋体;color:#000000;"><span style="color:#000000;">6、</span></span><span style="font-size:12.0pt;font-family:宋体;"><span style="color:#000000;">年假：服务期满一年不满</span><span style="color:#000000;">10</span><span style="color:#000000;">年者，可享有</span><span style="color:#000000;">5</span><span style="color:#000000;">天全薪年假，已满</span><span style="color:#000000;">10</span><span style="color:#000000;">年不满</span><span style="color:#000000;">20</span><span style="color:#000000;">年的，享有</span><span style="color:#000000;">10</span><span style="color:#000000;">天年假，年假一般安排在春节假期时统一休息，当年度（</span><span style="color:#000000;">1</span><span style="color:#000000;">月</span><span style="color:#000000;">1</span><span style="color:#000000;">日到</span><span style="color:#000000;">12</span><span style="color:#000000;">月</span><span style="color:#000000;">31</span><span style="color:#000000;">日）累计请假</span><span style="color:#000000;">20</span><span style="color:#000000;">天及以上，则无年假。</span><span></span></span> \r\n</p>\r\n<p style="margin-left:40.5pt;text-indent:2em;">\r\n	<span style="font-size:12pt;font-family:宋体;color:#000000;"><span style="color:#000000;">7、</span></span><span style="font-size:12.0pt;font-family:宋体;"><span style="color:#000000;">病假需取得区级以上医院诊断证明，婚假须提供结婚证复印件，假期结束后的</span><span style="color:#000000;">3</span><span style="color:#000000;">个工作日内未能提供相应证明者，均以事假论处。</span><span></span></span> \r\n</p>\r\n<p style="margin-left:40.5pt;text-indent:2em;">\r\n	<span style="font-size:12pt;font-family:宋体;color:#000000;"><span style="color:#000000;">8、</span></span><span style="font-size:12.0pt;font-family:宋体;"><span style="color:#000000;">事假、病假以小时为单位累计，请假不满半日者按半日计算。</span><span></span></span> \r\n</p>\r\n<p style="margin-left:40.5pt;text-indent:2em;">\r\n	<span style="font-size:12pt;font-family:宋体;color:#000000;"><span style="color:#000000;">9、</span></span><span style="font-size:12.0pt;font-family:宋体;"><span style="color:#000000;">生日假：生日当天可享有半天带薪假期。</span></span> \r\n</p>\r\n<p style="text-indent:2em;">\r\n	<span style="font-size:12.0pt;font-family:宋体;">&nbsp;</span> \r\n</p>\r\n<p style="text-indent:2em;">\r\n	<span style="font-size:12.0pt;font-family:宋体;color:red;">&nbsp;</span> \r\n</p>\r\n<p style="text-indent:2em;">\r\n	<span style="font-size:14.0pt;font-family:宋体;color:red;">三、办公工作制度<span></span></span> \r\n</p>\r\n<p style="text-indent:2em;">\r\n	<span style="font-size:14.0pt;font-family:宋体;color:red;">&nbsp;</span> \r\n</p>\r\n<p style="margin-left:42.55pt;text-indent:2em;">\r\n	<span style="font-size:12.0pt;font-family:宋体;color:black;"><span>1、</span></span><span style="font-size:12.0pt;font-family:宋体;color:red;">上班时间不得玩手机游戏、看电子书、浏览与工作无关网站，玩网络游戏等，每发现一次罚款<span>20</span>元</span><span style="font-size:12.0pt;font-family:宋体;color:black;">；<span></span></span> \r\n</p>\r\n<p style="margin-left:42.55pt;text-indent:2em;">\r\n	<span style="font-size:12pt;font-family:宋体;color:#000000;"><span style="color:#000000;">2、</span></span><span style="font-size:12.0pt;font-family:宋体;color:black;"><span style="color:#000000;">不得以公司的名义，利用公司配备的资源，比如：网络、手机卡、座机等办理任何收费的服务或从事非法活动，否则全额赔偿应付费用，并罚款</span><span style="color:#000000;">100</span><span style="color:#000000;">元</span><span style="color:#000000;">/</span><span style="color:#000000;">次。</span><span></span></span> \r\n</p>\r\n<p style="margin-left:42.55pt;text-indent:2em;">\r\n	<span style="font-size:12pt;font-family:宋体;color:#000000;"><span style="color:#000000;">3、</span></span><span style="font-size:12.0pt;font-family:宋体;color:black;"><span style="color:#000000;">员工个人座位调整、电脑更换需向上级申请批准，个人不得私自更换，否则罚款</span><span style="color:#000000;">20</span><span style="color:#000000;">元</span><span></span><span style="color:#000000;">次；</span><span></span></span> \r\n</p>\r\n<p style="margin-left:43.95pt;text-indent:2em;">\r\n	<span style="font-size:12pt;font-family:宋体;color:#000000;"><span style="color:#000000;">4、</span></span><span style="font-size:12pt;font-family:宋体;color:#000000;">准时参加早会、舞会、晚会，不拖拉。</span><span style="font-size:12.0pt;font-family:宋体;color:black;"></span> \r\n</p>\r\n<p style="margin-left:43.95pt;text-indent:2em;">\r\n	<span style="font-size:12.0pt;font-family:宋体;color:black;"><span>5、</span></span><span style="font-size:12.0pt;font-family:宋体;color:red;">外出面谈客户不得弄虚作假，不得利用外出谈单时间办私人事情，第一次发现罚款<span>100</span>元，第二次发现罚款<span>200</span>元，第三次再犯计自动离职。</span><span style="font-size:12.0pt;font-family:宋体;color:black;"></span> \r\n</p>\r\n<p style="margin-left:42.55pt;text-indent:2em;">\r\n	<span style="font-size:12pt;font-family:宋体;color:#000000;"><span style="color:#000000;">6、</span></span><span style="font-size:12.0pt;font-family:宋体;color:black;"><span style="color:#000000;">不准穿拖鞋、睡衣或过于休闲的着装上班，否则罚款</span><span style="color:#000000;">10</span><span style="color:#000000;">元</span><span style="color:#000000;">/</span><span style="color:#000000;">次；</span><span></span></span> \r\n</p>\r\n<p style="margin-left:42.55pt;text-indent:2em;">\r\n	<span style="font-size:12pt;font-family:宋体;color:#000000;"><span style="color:#000000;">7、</span></span><span style="font-size:12.0pt;font-family:宋体;color:black;"><span style="color:#000000;">周一至周六上班</span><span style="color:#000000;">8</span><span style="color:#000000;">：</span><span style="color:#000000;">30-18</span><span style="color:#000000;">：</span><span style="color:#000000;">30</span><span style="color:#000000;">前办公区禁止嗑瓜子、花生等带壳容易发出声响的食物，违者</span><span style="color:#000000;">5</span><span style="color:#000000;">元</span><span style="color:#000000;">/</span><span style="color:#000000;">次；</span><span></span></span> \r\n</p>\r\n<p style="text-indent:2em;">\r\n	<span style="font-size:12.0pt;font-family:宋体;color:red;">&nbsp;</span> \r\n</p>\r\n<p style="text-indent:2em;">\r\n	<span style="font-size:12.0pt;font-family:宋体;color:red;">&nbsp;</span> \r\n</p>\r\n<p style="text-indent:2em;">\r\n	<span style="font-family:宋体;color:red;">四、罚款管理制度<span></span></span> \r\n</p>\r\n<p style="text-indent:2em;">\r\n	<span style="font-family:宋体;color:red;">&nbsp;</span> \r\n</p>\r\n<p style="margin-left:35.15pt;text-indent:2em;">\r\n	<span style="font-size:12.0pt;font-family:宋体;color:black;"><span style="color:#000000;">行政制度及业务制度各项罚款需于次日下班（</span><span style="color:#000000;">18:00</span><span style="color:#000000;">）前交至财务，延期未交则增加罚款</span><span style="color:#000000;">5</span><span style="color:#000000;">元</span><span></span><span style="color:#000000;">天（请假时间不计算在内）</span><span></span></span> \r\n</p>\r\n<p style="text-indent:2em;">\r\n	<span style="font-size:12.0pt;font-family:宋体;color:black;">&nbsp;</span> \r\n</p>\r\n<p style="text-indent:2em;">\r\n	<span style="font-size:12.0pt;font-family:宋体;color:black;">&nbsp;</span> \r\n</p>\r\n<p style="text-indent:2em;">\r\n	<span style="font-size:12.0pt;font-family:宋体;color:black;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; <img src="/data/upload/editer/image/2017/09/23/59c5d37450fa7.png" alt="" /></span> \r\n</p>\r\n<p style="text-indent:2em;">\r\n	<span style="font-size:12.0pt;font-family:宋体;color:black;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span style="font-size:12.0pt;font-family:宋体;color:black;"><span></span></span><span style="font-size:12.0pt;font-family:宋体;color:black;">深圳铺吧电子商务有限公司</span></span> \r\n</p>\r\n<p style="text-indent:2em;">\r\n	<span style="font-size:12.0pt;font-family:宋体;color:black;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 2017</span><span style="font-size:12.0pt;font-family:宋体;color:black;">年<span>8</span>月<span>15</span>号<span></span></span> \r\n</p>\r\n<p style="text-align:center;text-indent:2em;" align="center">\r\n	<span style="font-size:12.0pt;font-family:宋体;color:black;"><span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span><span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span><span style="font-size:12.0pt;font-family:宋体;color:black;"><span></span></span> \r\n</p>\r\n<p style="text-indent:2em;">\r\n	<br />\r\n</p>', 1506136957),
(8, 1, '铺8业务制度12-1', '<p>\r\n	<span style="font-family:宋体;">工作量：</span>\r\n</p>\r\n<p style="margin-left:0cm;text-indent:0cm;">\r\n	<span><span>1、</span></span><span style="font-family:宋体;">电话</span><span> 25</span><span style="font-family:宋体;">，外网信息量</span><span>8</span><span style="font-family:宋体;">，转让</span><span>10</span><span style="font-family:宋体;">条，信息分享</span><span>3</span><span style="font-family:宋体;">条，共四项，单项罚款</span><span>20</span><span style="font-family:宋体;">元。</span>\r\n</p>\r\n<p style="margin-left:0cm;text-indent:0cm;">\r\n	<span><span>2、</span></span><span style="font-family:宋体;">邀约量一周</span><span>5</span><span style="font-family:宋体;">个，少一个</span><span>15</span><span style="font-family:宋体;">元，入职未满一个月不参与，完成指标的奖励</span><span>30</span><span style="font-family:宋体;">元，多一个奖励</span><span>10</span><span style="font-family:宋体;">元，</span>\r\n</p>\r\n<p style="margin-left:0cm;text-indent:0cm;">\r\n	<span><span>3、</span></span><span style="font-family:宋体;">连续</span><span>2</span><span style="font-family:宋体;">个月转正不了，自行离职，（具体去留由直属上级评价）</span>\r\n</p>\r\n<p style="margin-left:0cm;text-indent:0cm;">\r\n	<span><span>4、</span></span><span style="font-family:宋体;">转正后连续</span><span>1</span><span style="font-family:宋体;">个月不开单自行离职（特殊情况除外）</span>\r\n</p>\r\n<p style="margin-left:0cm;text-indent:0cm;">\r\n	<span><span>5、</span></span><span style="font-family:宋体;">迟到一次罚款</span><span>30</span><span style="font-family:宋体;">元</span>\r\n</p>\r\n<p style="margin-left:0cm;text-indent:0cm;">\r\n	<span><span>6、</span></span><span style="font-family:宋体;">不参加午会罚款</span><span>30</span><span style="font-family:宋体;">元（接待客户，等特殊情况除外）</span>\r\n</p>\r\n<p style="margin-left:0cm;text-indent:0cm;">\r\n	<span><span>7、</span></span><span>8</span><span style="font-family:宋体;">点</span><span>30</span><span style="font-family:宋体;">之后不能再公司吃早餐、零食、口香糖等等，罚款</span><span>30</span>\r\n</p>\r\n<p style="margin-left:0cm;text-indent:0cm;">\r\n	<span><span>8、</span></span><span style="font-family:宋体;">上班不能穿短裤、</span><span>7</span><span style="font-family:宋体;">分裤、拖鞋，罚</span><span>30</span><span style="font-family:宋体;">元</span>\r\n</p>\r\n<p style="margin-left:0cm;text-indent:0cm;">\r\n	<span><span>9、</span></span><span style="font-family:宋体;">保持环境卫生，每天轮流值班、厕所等环境不能抽烟，罚</span><span>30</span>\r\n</p>\r\n<p style="margin-left:0cm;text-indent:0cm;">\r\n	<span><span>10、</span></span><span style="font-family:宋体;">每人最多领取</span><span>3</span><span style="font-family:宋体;">份合同，外出谈单及合同编码登记，签单合同及时上交公司，罚</span><span>30</span><span style="font-family:宋体;">元，合同丢失一份罚</span><span>200</span>\r\n</p>\r\n<p style="margin-left:0cm;text-indent:0cm;">\r\n	<span><span>11、</span></span><span style="font-family:宋体;">凡是晚上加班到</span><span>8</span><span style="font-family:宋体;">点的，公司补助晚餐</span><span>15</span><span style="font-family:宋体;">元，加班到</span><span>9</span><span style="font-family:宋体;">点的补助公交费（实报实销）</span>\r\n</p>\r\n<p>\r\n	<span>&nbsp;</span>\r\n</p>', 1516415430),
(9, 3, '2018年元旦及春节放假通知', '18年元旦及春节放假通知：<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 根据国务院2018年假期安排及公司实际情况，元旦及春节放假安排如下：<br />\r\n<br />\r\n&nbsp;&nbsp;&nbsp; 元旦假期：12月30号至1月1号，共放假3天，2号开始上班；其中1号为法定假，30、31号周末休息日，因当周单休30号周六为工作日，所以：30号工作日调休至1月6号（周六）上班。<br />\r\n<br />\r\n<br />\r\n&nbsp;&nbsp;&nbsp; 春节假期：2月7号至2月22号，共16天，2月23号（初八）正式上班；其中法定假3天，11、17、18周末休息日。<br />\r\n<br />\r\n温馨提醒：<br />\r\n请各部门人员关好门窗和办公电脑等设备，放假期间伙伴们注意个人及财产安全，提前祝大家节日快乐！', 1516415546);

-- --------------------------------------------------------

--
-- 表的结构 `iqw_article_cate`
--

CREATE TABLE IF NOT EXISTS `iqw_article_cate` (
  `id` smallint(4) unsigned NOT NULL,
  `type` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(100) NOT NULL,
  `alias` varchar(50) NOT NULL,
  `img` varchar(255) NOT NULL,
  `pid` smallint(4) unsigned NOT NULL DEFAULT '0',
  `spid` varchar(50) NOT NULL,
  `ordid` smallint(4) unsigned NOT NULL DEFAULT '255',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `seo_title` varchar(255) NOT NULL,
  `seo_keys` varchar(255) NOT NULL,
  `seo_desc` varchar(500) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=70 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `iqw_article_page`
--

CREATE TABLE IF NOT EXISTS `iqw_article_page` (
  `cate_id` smallint(4) unsigned NOT NULL DEFAULT '0',
  `title` varchar(120) NOT NULL,
  `info` mediumtext NOT NULL,
  `seo_title` varchar(255) NOT NULL,
  `seo_keys` varchar(255) NOT NULL,
  `seo_desc` varchar(512) NOT NULL,
  `last_time` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `iqw_article_page`
--

INSERT INTO `iqw_article_page` (`cate_id`, `title`, `info`, `seo_title`, `seo_keys`, `seo_desc`, `last_time`) VALUES
(32, '中心介绍', '<p>\r\n	<span style="white-space:nowrap;"><span style="white-space:nowrap;">\r\n	<p style="margin-top:0px;margin-bottom:0px;padding:0px;font-family:''Microsoft Yahei'';color:#333333;font-size:14px;line-height:28px;white-space:normal;background-color:#FFFFFF;">\r\n		宜昌市中小企业服务平台是市委、市政府转变政府职能，优化发展环境，壮大实体经济，服务中小企业的有效载体。中小企业在促进就业，推动创新，繁荣经济，增加财政收入等方面发挥了重要作用。\r\n	</p>\r\n	<p style="margin-top:0px;margin-bottom:0px;padding:0px;font-family:''Microsoft Yahei'';color:#333333;font-size:14px;line-height:28px;white-space:normal;background-color:#FFFFFF;">\r\n		&nbsp;\r\n	</p>\r\n	<p style="margin-top:0px;margin-bottom:0px;padding:0px;font-family:''Microsoft Yahei'';color:#333333;font-size:14px;line-height:28px;white-space:normal;background-color:#FFFFFF;">\r\n		中小企业公共服务平台由服务大厅和网络服务平台两部分组成，服务大厅建设有窗口服务区、呼叫应答区、信息化体验区、信息发布与培训中心等四大功能服务区及配套服务措施。网络服务平台主要建成的服务内容有中小企业数据库、政策法规库、服务资源库，信息化综合服务平台、银企保对接平台、电子商务平台、产学研合作对接平台、中小企业云制造平台、工业设计云平台、人力资源与培训服务平台等。\r\n	</p>\r\n	<p style="margin-top:0px;margin-bottom:0px;padding:0px;font-family:''Microsoft Yahei'';color:#333333;font-size:14px;line-height:28px;white-space:normal;background-color:#FFFFFF;">\r\n		&nbsp;\r\n	</p>\r\n	<p style="margin-top:0px;margin-bottom:0px;padding:0px;font-family:''Microsoft Yahei'';color:#333333;font-size:14px;line-height:28px;white-space:normal;background-color:#FFFFFF;">\r\n		宜昌市中小企业服务平台是市委、市政府转变政府职能，优化发展环境，壮大实体经济，服务中小企业的有效载体。\r\n	</p>\r\n	<p style="margin-top:0px;margin-bottom:0px;padding:0px;font-family:''Microsoft Yahei'';color:#333333;font-size:14px;line-height:28px;white-space:normal;background-color:#FFFFFF;">\r\n		&nbsp;\r\n	</p>\r\n	<p style="margin-top:0px;margin-bottom:0px;padding:0px;font-family:''Microsoft Yahei'';color:#333333;font-size:14px;line-height:28px;white-space:normal;background-color:#FFFFFF;">\r\n		中小企业在促进就业，推动创新，繁荣经济，增加财政收入等方面发挥了重要作用。 中小企业公共服务平台由服务大厅和网络服务平台两部分组成，服务大厅建设有窗口服务区、呼叫应答区、信息化体验区、信息发布与培训中心等四大功能服务区及配套服务措施。网络服务平台主要建成的服务内容有中小企业数据库、政策法规库、服务资源库，信息化综合服务平台、银企保对接平台、电子商务平台、产学研合作对接平台、中小企业云制造平台、工业设计云平台、人力资源与培训服务平台等。\r\n	</p>\r\n</span></span>\r\n</p>\r\n<p>\r\n	<span style="white-space:nowrap;"><span style="white-space:nowrap;"></span><br />\r\n</span> \r\n</p>', '', '', '', 0),
(33, '服务机构', '宜昌市中小企业服务平台是市委、市政府转变政府职能，优化发展环境，壮大实体经济，服务中小企业的有效载体。中小企业在促进就业，推动创新，繁荣经济，增加财政收入等方面发挥了重要作用。中小企业公共服务平台由服务大厅和网络服务平台两部分组成，服务大厅建设有窗口服务区、呼叫应答区、信息化体验区、信息发布与培训中心等四大功能服务区及配套服务措施。网络服务平台主要建成的服务内容有中小企业数据库、政策法规库、服务资源库，信息化综合服务平台、银企保对接平台、电子商务平台、产学研合作对接平台、中小企业云制造平台、工业设计云平台、人力资源与培训服务平台等。<br />\r\n<div>\r\n	<br />\r\n</div>', '', '', '', 0),
(38, '联系我们', '<h2>\r\n	伍家岗区中小企业发展服务中心\r\n</h2>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	电 话：0717-6919060\r\n</p>\r\n<p>\r\n	邮 箱：ycszxqyfwzx@163.com\r\n</p>\r\n<p>\r\n	传 真：0717-6919263\r\n</p>\r\n<p>\r\n	地 址：宜昌市伍家岗区前坪路2号\r\n</p>\r\n<p>\r\n	网 址：<a href="http://www.yc-wjg.com" target="_blank">www.yc-wjg.com</a> \r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<!--百度地图容器-->\r\n<style type="text/css">\r\n    .iw_poi_title {color:#CC5522;font-size:14px;font-weight:bold;overflow:hidden;padding-right:13px;white-space:nowrap}\r\n    .iw_poi_content {font:12px arial,sans-serif;overflow:visible;padding-top:4px;white-space:-moz-pre-wrap;word-wrap:break-word}\r\n</style>\r\n<script type="text/javascript" src="http://api.map.baidu.com/api?key=&v=1.1&services=true"></script>\r\n<div style="width:100%;height:350px;border:#ccc solid 1px;" id="dituContent">\r\n	<img src="http://api.map.baidu.com/staticimage?center=111.402638%2C30.639727&amp;zoom=17&amp;width=558&amp;height=360&amp;markers=111.402638%2C30.639727&amp;markerStyles=l%2CA" alt="" /><br />\r\n</div>\r\n<script type="text/javascript">\r\n    //创建和初始化地图函数：\r\n    function initMap(){\r\n        createMap();//创建地图\r\n        setMapEvent();//设置地图事件\r\n        addMapControl();//向地图添加控件\r\n        addMarker();//向地图中添加marker\r\n    }\r\n    //创建地图函数：\r\n    function createMap(){\r\n        var map = new BMap.Map("dituContent");//在百度地图容器中创建一个地图\r\n        var point = new BMap.Point(111.308175,30.698551);//定义一个中心点坐标\r\n        map.centerAndZoom(point,18);//设定地图的中心点和坐标并将地图显示在地图容器中\r\n        window.map = map;//将map变量存储在全局\r\n    }\r\n    //地图事件设置函数：\r\n    function setMapEvent(){\r\n        map.enableDragging();//启用地图拖拽事件，默认启用(可不写)\r\n        map.enableScrollWheelZoom();//启用地图滚轮放大缩小\r\n        map.enableDoubleClickZoom();//启用鼠标双击放大，默认启用(可不写)\r\n        map.enableKeyboard();//启用键盘上下左右键移动地图\r\n    }\r\n    //地图控件添加函数：\r\n    function addMapControl(){\r\n        //向地图中添加缩放控件\r\n	var ctrl_nav = new BMap.NavigationControl({anchor:BMAP_ANCHOR_TOP_LEFT,type:BMAP_NAVIGATION_CONTROL_LARGE});\r\n	map.addControl(ctrl_nav);\r\n        //向地图中添加缩略图控件\r\n	var ctrl_ove = new BMap.OverviewMapControl({anchor:BMAP_ANCHOR_BOTTOM_RIGHT,isOpen:1});\r\n	map.addControl(ctrl_ove);\r\n        //向地图中添加比例尺控件\r\n	var ctrl_sca = new BMap.ScaleControl({anchor:BMAP_ANCHOR_BOTTOM_LEFT});\r\n	map.addControl(ctrl_sca);\r\n    }\r\n    //标注点数组\r\n    var markerArr = [{title:"伍家岗区中小企业发展服务中心",content:"电话：0717-6558778<br />\r\n地址：宜昌市伍家岗区东山大道146附近",point:"111.308017|30.698279",isOpen:1,icon:{w:23,h:25,l:46,t:21,x:9,lb:12}}\r\n		 ];\r\n    //创建marker\r\n    function addMarker(){\r\n        for(var i=0;i<markerArr.length;i++){\r\n            var json = markerArr[i];\r\n            var p0 = json.point.split("|")[0];\r\n            var p1 = json.point.split("|")[1];\r\n            var point = new BMap.Point(p0,p1);\r\n			var iconImg = createIcon(json.icon);\r\n            var marker = new BMap.Marker(point,{icon:iconImg});\r\n			var iw = createInfoWindow(i);\r\n			var label = new BMap.Label(json.title,{"offset":new BMap.Size(json.icon.lb-json.icon.x+10,-20)});\r\n			marker.setLabel(label);\r\n            map.addOverlay(marker);\r\n            label.setStyle({\r\n                        borderColor:"#808080",\r\n                        color:"#333",\r\n                        cursor:"pointer"\r\n            });\r\n			(function(){\r\n				var index = i;\r\n				var _iw = createInfoWindow(i);\r\n				var _marker = marker;\r\n				_marker.addEventListener("click",function(){\r\n				    this.openInfoWindow(_iw);\r\n			    });\r\n			    _iw.addEventListener("open",function(){\r\n				    _marker.getLabel().hide();\r\n			    })\r\n			    _iw.addEventListener("close",function(){\r\n				    _marker.getLabel().show();\r\n			    })\r\n				label.addEventListener("click",function(){\r\n				    _marker.openInfoWindow(_iw);\r\n			    })\r\n				if(!!json.isOpen){\r\n					label.hide();\r\n					_marker.openInfoWindow(_iw);\r\n				}\r\n			})()\r\n        }\r\n    }\r\n    //创建InfoWindow\r\n    function createInfoWindow(i){\r\n        var json = markerArr[i];\r\n        var iw = new BMap.InfoWindow("<b class="iw_poi_title" title="" + json.title + "">" + json.title + "</b> \r\n<div class="iw_poi_content">\r\n	"+json.content+"\r\n</div>\r\n");\r\n        return iw;\r\n    }\r\n    //创建一个Icon\r\n    function createIcon(json){\r\n        var icon = new BMap.Icon("http://app.baidu.com/map/images/us_mk_icon.png", new BMap.Size(json.w,json.h),{imageOffset: new BMap.Size(-json.l,-json.t),infoWindowOffset:new BMap.Size(json.lb+5,1),offset:new BMap.Size(json.x,json.h)})\r\n        return icon;\r\n    }\r\n    initMap();//创建和初始化地图\r\n</script>', '', '', '', 0);

-- --------------------------------------------------------

--
-- 表的结构 `iqw_auto_user`
--

CREATE TABLE IF NOT EXISTS `iqw_auto_user` (
  `id` smallint(4) unsigned NOT NULL,
  `name` varchar(100) NOT NULL,
  `users` text NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `iqw_badword`
--

CREATE TABLE IF NOT EXISTS `iqw_badword` (
  `id` int(10) unsigned NOT NULL,
  `word_type` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '1：禁用；2：替换；3：审核',
  `badword` varchar(100) NOT NULL,
  `replaceword` varchar(100) NOT NULL,
  `add_time` int(10) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `iqw_badword`
--

INSERT INTO `iqw_badword` (`id`, `word_type`, `badword`, `replaceword`, `add_time`) VALUES
(1, 1, '你妹的', '', 1395153937);

-- --------------------------------------------------------

--
-- 表的结构 `iqw_balance_log`
--

CREATE TABLE IF NOT EXISTS `iqw_balance_log` (
  `id` int(10) NOT NULL,
  `uid` int(10) NOT NULL,
  `mname` varchar(30) NOT NULL COMMENT '管理员',
  `uname` varchar(50) NOT NULL,
  `action` varchar(50) NOT NULL,
  `score` decimal(10,2) NOT NULL,
  `add_time` int(10) NOT NULL,
  `content` varchar(50) NOT NULL COMMENT '原因',
  `balance` decimal(10,2) NOT NULL COMMENT '余额'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='会员消费记录';

-- --------------------------------------------------------

--
-- 表的结构 `iqw_collection`
--

CREATE TABLE IF NOT EXISTS `iqw_collection` (
  `id` int(11) NOT NULL,
  `s_id` int(11) NOT NULL,
  `u_id` int(11) NOT NULL,
  `type` tinyint(3) NOT NULL COMMENT '1为转让，2为找址'
) ENGINE=MyISAM AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `iqw_collection`
--

INSERT INTO `iqw_collection` (`id`, `s_id`, `u_id`, `type`) VALUES
(6, 1, 139, 1),
(4, 1, 139, 2),
(7, 1, 147, 1),
(8, 1, 147, 2),
(16, 602900, 166, 1),
(15, 602496, 166, 1),
(14, 603080, 166, 1),
(17, 603819, 192, 1),
(18, 603669, 192, 1),
(26, 606081, 192, 1),
(20, 604798, 192, 1),
(21, 604235, 192, 1),
(22, 604200, 192, 1),
(23, 604105, 192, 1),
(24, 604066, 192, 1),
(25, 603597, 192, 1);

-- --------------------------------------------------------

--
-- 表的结构 `iqw_fb_rels`
--

CREATE TABLE IF NOT EXISTS `iqw_fb_rels` (
  `id` int(11) NOT NULL,
  `curid` int(11) NOT NULL,
  `relid` int(11) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `iqw_fb_rels`
--

INSERT INTO `iqw_fb_rels` (`id`, `curid`, `relid`) VALUES
(22, 121, 2),
(23, 121, 3);

-- --------------------------------------------------------

--
-- 表的结构 `iqw_flink`
--

CREATE TABLE IF NOT EXISTS `iqw_flink` (
  `id` smallint(4) unsigned NOT NULL,
  `name` varchar(50) NOT NULL,
  `img` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `intro` varchar(300) DEFAULT NULL COMMENT '简介',
  `cate_id` smallint(5) NOT NULL,
  `ordid` tinyint(3) unsigned NOT NULL DEFAULT '255',
  `status` tinyint(1) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=42 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `iqw_flink`
--

INSERT INTO `iqw_flink` (`id`, `name`, `img`, `url`, `intro`, `cate_id`, `ordid`, `status`) VALUES
(19, '继光香香鸡', '595b364be5f1e.png', 'http://www.pubawang.com', '合作期间找到一家玄武区珠江路88号新世界百货340平的店铺。对我们服务非常满意。', 1, 0, 1),
(20, '千福粥城', '595b366f18919.png', 'http://www.pubawang.com', '合作期间找到一家玄武区珠江路88号新世界百货340平的店铺。对我们服务非常满意。', 1, 0, 1),
(22, '继光香香鸡1', '595b3a2926b63.png', 'http://www.pubawang.com', '', 1, 0, 1),
(23, '仟福粥城', '599d3f276122d.jpg', 'http://www.pubawang.com', '求租深圳空铺做餐饮，面积300-500', 1, 0, 1),
(24, '维恩口腔', '595b3b18916a4.jpg', 'http://www.ecz.gov.cn/', '', 2, 0, 1),
(25, '畅捷达', '595b3b4170ed6.jpg', 'http://www.pubawang.com', '', 2, 0, 1),
(26, '一只蟹', '595b3adc3e727.jpg', 'http://www.pubawang.com', '', 2, 0, 1),
(27, '中国电信', '595b3b7076ae1.jpg', 'http://www.pubawang.com', '', 2, 0, 1),
(28, '小叶佳栗子', '595b3ba38fe68.jpg', 'http://www.pubawang.com', '', 2, 0, 1),
(29, '肉夹小魔王', '595b3be05bf1a.jpg', 'http://www.pubawang.com', '', 2, 0, 1),
(38, '吴记黄焖鸡米饭', '59644c59013a0.jpg', 'http://www.pubawang.com', '', 7, 0, 1),
(39, '面点王', '59644d63b43e1.jpg', 'http://www.pubawang.com', '', 7, 0, 1),
(40, '小肥羊火锅餐厅', '59644da5e2ae8.jpg', 'http://www.pubawang.com', '', 7, 0, 1),
(41, '红荔村肠粉王', '5976fe301e61e.jpg', 'www.pubangwang.com', '', 7, 1, 1);

-- --------------------------------------------------------

--
-- 表的结构 `iqw_flink_cate`
--

CREATE TABLE IF NOT EXISTS `iqw_flink_cate` (
  `id` smallint(4) unsigned NOT NULL,
  `name` varchar(50) NOT NULL,
  `ordid` tinyint(3) unsigned NOT NULL DEFAULT '255',
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `iqw_flink_cate`
--

INSERT INTO `iqw_flink_cate` (`id`, `name`, `ordid`, `status`) VALUES
(1, '首页品牌选址伙伴', 255, 1),
(2, '首页合作品牌', 255, 1),
(7, '品牌选址合作商', 255, 1);

-- --------------------------------------------------------

--
-- 表的结构 `iqw_focus`
--

CREATE TABLE IF NOT EXISTS `iqw_focus` (
  `id` int(11) NOT NULL,
  `shop_id` int(11) NOT NULL COMMENT '店铺id',
  `busin_id` int(11) NOT NULL COMMENT '业务员id',
  `type` smallint(3) NOT NULL COMMENT '出租转让为1，找址为2'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='保护重点中间表';

-- --------------------------------------------------------

--
-- 表的结构 `iqw_industry`
--

CREATE TABLE IF NOT EXISTS `iqw_industry` (
  `id` smallint(4) unsigned NOT NULL,
  `name` varchar(50) NOT NULL,
  `tags` varchar(50) NOT NULL,
  `pid` smallint(4) unsigned NOT NULL,
  `spid` varchar(50) NOT NULL,
  `fcolor` varchar(10) NOT NULL,
  `remark` varchar(255) NOT NULL,
  `add_time` int(10) NOT NULL,
  `items` int(10) unsigned NOT NULL DEFAULT '0',
  `likes` int(10) NOT NULL,
  `type` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '0:商品分类 1:标签分类',
  `ordid` tinyint(3) unsigned NOT NULL DEFAULT '255',
  `transfer_ordid` int(11) NOT NULL DEFAULT '0' COMMENT '转让页楼层排序',
  `status` tinyint(1) NOT NULL,
  `is_index` tinyint(1) NOT NULL DEFAULT '0',
  `is_default` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `keyword` varchar(255) DEFAULT NULL COMMENT '关键词',
  `key` varchar(255) DEFAULT NULL COMMENT 'key值'
) ENGINE=MyISAM AUTO_INCREMENT=205 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `iqw_industry`
--

INSERT INTO `iqw_industry` (`id`, `name`, `tags`, `pid`, `spid`, `fcolor`, `remark`, `add_time`, `items`, `likes`, `type`, `ordid`, `transfer_ordid`, `status`, `is_index`, `is_default`, `keyword`, `key`) VALUES
(183, '新能源新材料', '', 0, '0', '', '', 0, 0, 0, 0, 0, 0, 1, 0, 0, NULL, NULL),
(184, '消费升级', '', 0, '0', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL),
(180, '生物医药', '', 0, '0', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL),
(182, '新材', '', 0, '0', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL),
(178, '互联网', '', 0, '0', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL),
(179, '文化传媒', '', 0, '0', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL),
(176, '其他', '', 0, '0', '', '', 0, 0, 0, 0, 15, 0, 1, 1, 0, NULL, NULL),
(177, 'TMT', '', 0, '0', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL),
(175, '物流/供应链', '', 0, '0', '', '', 0, 0, 0, 0, 13, 0, 1, 1, 0, NULL, NULL),
(174, '房产家居', '', 0, '0', '', '', 0, 0, 0, 0, 14, 0, 1, 1, 0, NULL, NULL),
(163, '智能制造', '', 0, '0', '', '', 0, 0, 0, 0, 2, 0, 1, 1, 0, NULL, NULL),
(164, '企业服务', '', 0, '0', '', '', 0, 0, 0, 0, 3, 0, 1, 1, 0, NULL, NULL),
(165, '金融', '', 0, '0', '', '', 0, 0, 0, 0, 4, 0, 1, 1, 0, NULL, NULL),
(166, '教育', '', 0, '0', '', '', 0, 0, 0, 0, 5, 0, 1, 1, 0, NULL, NULL),
(167, '数字娱乐', '', 0, '0', '', '', 0, 0, 0, 0, 6, 0, 1, 1, 0, NULL, NULL),
(168, '医疗健康', '', 0, '0', '', '', 0, 0, 0, 0, 7, 0, 1, 1, 0, NULL, NULL),
(169, '工具软件', '', 0, '0', '', '', 0, 0, 0, 0, 8, 0, 1, 1, 0, NULL, NULL),
(170, '社交网络', '', 0, '0', '', '', 0, 0, 0, 0, 9, 0, 1, 1, 0, NULL, NULL),
(171, '汽车交通', '', 0, '0', '', '', 0, 0, 0, 0, 10, 0, 1, 1, 0, NULL, NULL),
(181, '泛娱乐', '', 0, '0', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL),
(173, '旅游户外', '', 0, '0', '', '', 0, 0, 0, 0, 12, 0, 1, 1, 0, NULL, NULL),
(162, '消费生活', '', 0, '0', '', '', 0, 0, 0, 0, 1, 0, 1, 1, 0, NULL, NULL),
(185, '电商', '', 0, '0', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL),
(186, '高端装备', '', 0, '0', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL),
(187, '文化产业', '', 0, '0', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL),
(188, 'Pre-IPO项目', '', 0, '0', '', '', 0, 0, 0, 0, 0, 0, 1, 0, 0, NULL, NULL),
(189, '轨道交通', '', 0, '0', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL),
(190, '基础设施', '', 0, '0', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL),
(191, '大数据', '', 0, '0', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL),
(192, '高科技', '', 0, '0', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL),
(193, '通信电子', '', 0, '0', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL),
(194, '物联网', '', 0, '0', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL),
(195, '环保节能', '', 0, '0', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL),
(196, '农业', '', 0, '0', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL),
(197, '人工智能', '', 0, '0', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL),
(198, '体育', '', 0, '0', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL),
(199, '芯片', '', 0, '0', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL),
(200, '航空航天', '', 0, '0', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL),
(201, '半导体', '', 0, '0', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL),
(202, '云计算', '', 0, '0', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL),
(203, '智能硬件', '', 0, '0', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL),
(204, '机器人', '', 0, '0', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `iqw_ipban`
--

CREATE TABLE IF NOT EXISTS `iqw_ipban` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(30) NOT NULL,
  `type` varchar(30) NOT NULL,
  `expires_time` int(10) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `iqw_item`
--

CREATE TABLE IF NOT EXISTS `iqw_item` (
  `id` int(11) NOT NULL,
  `order_sn` varchar(255) NOT NULL COMMENT '订单号',
  `user_id` int(11) NOT NULL,
  `type_id` varchar(50) NOT NULL COMMENT '行业id',
  `type_name` varchar(50) NOT NULL COMMENT '行业名称',
  `title` varchar(50) NOT NULL COMMENT '项目名称',
  `inaword` varchar(50) NOT NULL COMMENT '一句话总结',
  `contents` text NOT NULL COMMENT '详情',
  `hb_num` smallint(5) NOT NULL COMMENT '红包数量',
  `yl_num` smallint(5) NOT NULL COMMENT '已领取红包',
  `money` decimal(10,2) NOT NULL COMMENT '总金额',
  `amount` decimal(10,2) NOT NULL COMMENT '所用余额',
  `pay_money` decimal(10,2) NOT NULL COMMENT '实付订单金额',
  `hb_private` tinyint(2) NOT NULL COMMENT '是否私密',
  `tp_img` text NOT NULL COMMENT '图片',
  `add_time` int(11) NOT NULL COMMENT '时间',
  `pay_status` tinyint(2) NOT NULL COMMENT '是否支付',
  `pay_time` int(11) NOT NULL,
  `status` tinyint(2) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='项目表';

-- --------------------------------------------------------

--
-- 表的结构 `iqw_itemh_img`
--

CREATE TABLE IF NOT EXISTS `iqw_itemh_img` (
  `id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `url` varchar(255) NOT NULL,
  `intro` varchar(100) DEFAULT NULL,
  `add_time` int(10) NOT NULL DEFAULT '0',
  `ordid` tinyint(3) unsigned NOT NULL DEFAULT '255',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `type` tinyint(3) NOT NULL COMMENT '3为找址',
  `zy_name` varchar(255) NOT NULL COMMENT '名称',
  `position` varchar(255) NOT NULL COMMENT '职位',
  `position_com` text NOT NULL COMMENT '职位描述'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `iqw_item_apply`
--

CREATE TABLE IF NOT EXISTS `iqw_item_apply` (
  `id` int(10) NOT NULL,
  `openid` varchar(255) NOT NULL,
  `avatarUrl` text NOT NULL,
  `user_type` tinyint(2) NOT NULL COMMENT '会员类型1创业，2投资',
  `type_id` varchar(255) NOT NULL COMMENT '行业id',
  `con_name` varchar(50) NOT NULL COMMENT '单位机构名称',
  `username` varchar(20) NOT NULL DEFAULT '0',
  `the_user` varchar(255) NOT NULL COMMENT '姓名',
  `item_name` varchar(255) NOT NULL COMMENT '项目名称',
  `position` varchar(255) NOT NULL COMMENT '职位',
  `wechat` varchar(255) NOT NULL COMMENT '微信号',
  `tj_phone` varchar(255) NOT NULL COMMENT '引荐人手机号',
  `tj_type` tinyint(3) NOT NULL COMMENT '1内部，2外部',
  `note` varchar(255) NOT NULL COMMENT '备注',
  `password` varchar(32) NOT NULL DEFAULT '0',
  `money` decimal(10,2) NOT NULL COMMENT '余额',
  `email` varchar(30) DEFAULT '',
  `phone` varchar(30) DEFAULT NULL,
  `intro` varchar(512) NOT NULL DEFAULT '',
  `info` varchar(512) DEFAULT '',
  `sex` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0:男,1:女',
  `type` tinyint(2) NOT NULL DEFAULT '1' COMMENT '会员类型：1，注册会员 2，收费会员',
  `city` varchar(20) NOT NULL,
  `country` varchar(30) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `reg_ip` varchar(15) NOT NULL,
  `cityid` int(5) NOT NULL DEFAULT '0',
  `cityname` varchar(20) DEFAULT NULL,
  `reg_time` int(10) unsigned NOT NULL DEFAULT '0',
  `last_time` int(10) unsigned NOT NULL DEFAULT '0',
  `last_ip` varchar(15) DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `is_auth` tinyint(2) NOT NULL DEFAULT '0' COMMENT '是否认证。1为已认证',
  `user_id` int(11) NOT NULL,
  `imgurl` varchar(255) NOT NULL,
  `wx_input` varchar(255) NOT NULL,
  `is_vx` tinyint(2) NOT NULL,
  `is_ck` tinyint(2) NOT NULL COMMENT '1查看项目',
  `quota` varchar(50) NOT NULL COMMENT '投资额度',
  `case` text NOT NULL COMMENT '投资案例',
  `field` text NOT NULL COMMENT '领域',
  `add_time` int(11) NOT NULL,
  `sq_type` tinyint(2) NOT NULL DEFAULT '1' COMMENT '1为h5提交，2为小程序'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `iqw_item_can`
--

CREATE TABLE IF NOT EXISTS `iqw_item_can` (
  `id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='可以看到项目的用户';

-- --------------------------------------------------------

--
-- 表的结构 `iqw_item_h`
--

CREATE TABLE IF NOT EXISTS `iqw_item_h` (
  `id` int(11) NOT NULL,
  `item_name` varchar(255) NOT NULL COMMENT '项目名称',
  `type_id` varchar(255) NOT NULL COMMENT '所属领域',
  `phone` int(11) NOT NULL COMMENT '联系人',
  `address` varchar(255) NOT NULL COMMENT '地区',
  `yz_rounds` varchar(50) NOT NULL COMMENT '融资轮次',
  `yz_lines` varchar(50) NOT NULL COMMENT '融资额度',
  `equity_ratio` varchar(50) NOT NULL COMMENT '释放股权比例',
  `tj_reason` text NOT NULL COMMENT '推荐理由',
  `company` text NOT NULL COMMENT '公司简介',
  `business_com` text NOT NULL COMMENT '业务描述',
  `company_title` varchar(255) NOT NULL COMMENT '公司名称',
  `bp_img` varchar(255) NOT NULL,
  `bpimg_list` text NOT NULL COMMENT '项目图片',
  `imgurl` text NOT NULL COMMENT '图片',
  `kh_num` smallint(4) NOT NULL COMMENT '看好',
  `bad_num` smallint(4) NOT NULL COMMENT '不看好',
  `add_time` int(11) NOT NULL,
  `info` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='h5项目';

-- --------------------------------------------------------

--
-- 表的结构 `iqw_item_img`
--

CREATE TABLE IF NOT EXISTS `iqw_item_img` (
  `id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `iqw_item_other`
--

CREATE TABLE IF NOT EXISTS `iqw_item_other` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL COMMENT '项目id',
  `sub_id` int(11) NOT NULL COMMENT '评论id',
  `wt_id` int(11) NOT NULL COMMENT '问题id',
  `content` varchar(255) NOT NULL COMMENT '其他问题',
  `add_time` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='其他问题';

--
-- 转存表中的数据 `iqw_item_other`
--

INSERT INTO `iqw_item_other` (`id`, `user_id`, `item_id`, `sub_id`, `wt_id`, `content`, `add_time`) VALUES
(8, 297, 285, 121, 36, '我也不知道说些什么', 1524724805),
(9, 297, 285, 121, 62, '还是说点什么吧', 1524724805);

-- --------------------------------------------------------

--
-- 表的结构 `iqw_item_pay`
--

CREATE TABLE IF NOT EXISTS `iqw_item_pay` (
  `id` int(11) NOT NULL,
  `order_sn` varchar(50) NOT NULL,
  `user_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `pay_status` tinyint(2) NOT NULL COMMENT '1为已支付',
  `pay_time` int(11) NOT NULL,
  `money` decimal(10,2) NOT NULL,
  `add_time` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=88 DEFAULT CHARSET=utf8 COMMENT='支付偷看项目';

--
-- 转存表中的数据 `iqw_item_pay`
--

INSERT INTO `iqw_item_pay` (`id`, `order_sn`, `user_id`, `item_id`, `pay_status`, `pay_time`, `money`, `add_time`) VALUES
(1, '18050262772845', 345, 298, 0, 0, '2.99', 0),
(11, '18050360485417', 273, 298, 0, 0, '0.01', 1525343615),
(16, '18050397041330', 273, 298, 1, 1525351447, '0.01', 1525351425),
(17, '18050471030186', 267, 301, 0, 0, '0.01', 1525393541),
(18, '18050469747167', 273, 294, 0, 0, '2.99', 1525433569),
(19, '18050590703443', 267, 300, 0, 0, '2.99', 1525481834),
(20, '18050571059503', 267, 300, 0, 0, '2.99', 1525481839),
(21, '18050516265965', 267, 301, 0, 0, '2.99', 1525481862),
(22, '18050570442247', 267, 294, 0, 0, '2.99', 1525483827),
(23, '18050511942499', 267, 294, 0, 0, '2.99', 1525484103),
(24, '18050533779489', 273, 300, 0, 0, '2.99', 1525493232),
(25, '18051521160125', 267, 306, 0, 0, '2.99', 1526364690),
(26, '18051680303413', 267, 306, 0, 0, '2.99', 1526435350),
(30, '18051631639518', 350, 306, 0, 0, '2.99', 1526456561),
(31, '18051687757305', 267, 306, 1, 0, '2.99', 1526456847),
(32, '18051631297630', 267, 294, 1, 0, '2.99', 1526456870),
(33, '18051636423514', 267, 301, 1, 0, '2.99', 1526458200),
(34, '18051610465916', 267, 301, 1, 0, '2.99', 1526458200),
(50, '18051655146767', 297, 301, 1, 0, '2.99', 1526459803),
(51, '18051674786966', 297, 313, 1, 0, '2.99', 1526464272),
(52, '18051627330759', 267, 317, 1, 0, '2.99', 1526468685),
(53, '18052455979541', 267, 77, 1, 0, '2.99', 1527118920),
(54, '18052411003219', 346, 77, 0, 0, '2.99', 1527144972),
(55, '18060672927378', 346, 72, 0, 0, '2.99', 1528259651),
(56, '18061939724735', 267, 100, 1, 0, '2.99', 1529394063),
(57, '18061947056100', 267, 2, 1, 0, '2.99', 1529394077),
(58, '18061966038754', 267, 186, 1, 0, '2.99', 1529394097),
(59, '18061926059028', 397, 208, 0, 0, '2.99', 1529395939),
(60, '18061967630589', 397, 208, 1, 1529395954, '2.99', 1529395947),
(61, '18062156069957', 411, 72, 0, 0, '2.99', 1529543939),
(62, '18062276903953', 421, 208, 0, 0, '2.99', 1529617952),
(63, '18062293162061', 406, 95, 0, 0, '2.99', 1529647129),
(64, '18062527130624', 433, 84, 0, 0, '2.99', 1529917628),
(65, '18062659439287', 434, 84, 0, 0, '2.99', 1529972968),
(66, '18070191881520', 453, 95, 1, 1530459261, '2.99', 1530459254),
(67, '18070397051206', 143, 77, 0, 0, '2.99', 1530573164),
(68, '18070397236159', 143, 77, 0, 0, '2.99', 1530573187),
(69, '18070386243996', 143, 77, 0, 0, '2.99', 1530573233),
(70, '18070421837885', 464, 236, 0, 0, '2.99', 1530700063),
(71, '18071353355427', 271, 84, 0, 0, '2.99', 1531470618),
(72, '18073119813005', 267, 125, 1, 0, '2.99', 1533000714),
(73, '18080539145012', 563, 247, 1, 1533443621, '2.99', 1533443612),
(74, '18081714121834', 614, 247, 0, 0, '2.99', 1534470430),
(75, '18082798551678', 640, 95, 1, 1535337740, '2.99', 1535337731),
(76, '18090138422538', 698, 292, 0, 0, '2.99', 1535734203),
(77, '18090111581203', 698, 292, 0, 0, '2.99', 1535734219),
(78, '18090698287243', 717, 279, 0, 0, '2.99', 1536182463),
(79, '18090687323119', 722, 106, 1, 1536220878, '2.99', 1536220872),
(80, '18091131124658', 747, 292, 0, 0, '2.99', 1536659726),
(81, '18091985464388', 790, 292, 1, 1537364944, '2.99', 1537364935),
(82, '18092124709631', 794, 236, 0, 0, '2.99', 1537513969),
(83, '18092267847373', 797, 154, 1, 1537581971, '2.99', 1537581965),
(84, '19010441249692', 855, 222, 0, 0, '2.99', 1546577951),
(85, '19011745847773', 861, 186, 1, 1547687659, '2.99', 1547687652),
(86, '19012875301514', 866, 28, 0, 0, '2.99', 1548655801),
(87, '19020258332460', 870, 203, 1, 1549040823, '2.99', 1549040817);

-- --------------------------------------------------------

--
-- 表的结构 `iqw_item_pl`
--

CREATE TABLE IF NOT EXISTS `iqw_item_pl` (
  `id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `content` text NOT NULL,
  `is_love` tinyint(3) NOT NULL COMMENT '1一般，2看好',
  `add_time` int(11) NOT NULL,
  `status` tinyint(2) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='项目评论表';

-- --------------------------------------------------------

--
-- 表的结构 `iqw_item_red`
--

CREATE TABLE IF NOT EXISTS `iqw_item_red` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `num` smallint(5) NOT NULL COMMENT '数量'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='显示红点和数量';

-- --------------------------------------------------------

--
-- 表的结构 `iqw_item_seen`
--

CREATE TABLE IF NOT EXISTS `iqw_item_seen` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `add_time` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='我看过的项目';

-- --------------------------------------------------------

--
-- 表的结构 `iqw_item_sub`
--

CREATE TABLE IF NOT EXISTS `iqw_item_sub` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `wt_str` varchar(50) NOT NULL COMMENT '问题字符串',
  `commtent` text NOT NULL COMMENT '建议',
  `is_love` tinyint(5) NOT NULL COMMENT '兴趣程度',
  `item_id` int(11) NOT NULL COMMENT '项目id',
  `money` decimal(10,2) NOT NULL COMMENT '得到的红包',
  `add_time` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='投资者评论表';

-- --------------------------------------------------------

--
-- 表的结构 `iqw_item_view`
--

CREATE TABLE IF NOT EXISTS `iqw_item_view` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `is_see` tinyint(2) NOT NULL COMMENT '1看好，2一般',
  `is_lx` tinyint(2) NOT NULL COMMENT '1为联系',
  `is_view` tinyint(2) NOT NULL COMMENT '1为已查看',
  `is_dc` tinyint(1) NOT NULL COMMENT '是否导出',
  `add_time` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='h5页面谁看了统计';

-- --------------------------------------------------------

--
-- 表的结构 `iqw_item_wt`
--

CREATE TABLE IF NOT EXISTS `iqw_item_wt` (
  `id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL COMMENT '项目id',
  `wt_id` smallint(5) NOT NULL COMMENT '问题id',
  `wt_name` varchar(255) NOT NULL COMMENT '问题',
  `pid` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='项目问题表';

-- --------------------------------------------------------

--
-- 表的结构 `iqw_jisiguan`
--

CREATE TABLE IF NOT EXISTS `iqw_jisiguan` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(50) NOT NULL COMMENT '纪念馆名',
  `content` text NOT NULL COMMENT '详细内容',
  `is_open` tinyint(2) NOT NULL DEFAULT '1' COMMENT '1为私有',
  `code` varchar(50) NOT NULL COMMENT '邀请码',
  `img_url` varchar(100) NOT NULL COMMENT '图片链接',
  `add_time` int(11) NOT NULL COMMENT '添加时间',
  `status` tinyint(2) NOT NULL COMMENT '审核状态',
  `ordid` smallint(6) NOT NULL COMMENT '排序'
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 COMMENT='纪念馆';

--
-- 转存表中的数据 `iqw_jisiguan`
--

INSERT INTO `iqw_jisiguan` (`id`, `user_id`, `title`, `content`, `is_open`, `code`, `img_url`, `add_time`, `status`, `ordid`) VALUES
(20, 2, '星光熠熠缅怀一代港星', '星光熠熠缅怀一代港星', 0, 'undefined', 'data/upload/item_sq/2004/03/5e870954b5217.jpg', 1585908058, 1, 0),
(21, 2, '精忠报国—近代民族英雄', '精忠报国—近代民族英雄', 0, 'undefined', 'data/upload/item_sq/2004/03/5e870e660797a.jpg', 1585909352, 1, 0),
(22, 2, '致敬疫战英烈', '致敬疫战英烈', 0, 'undefined', 'data/upload/item_sq/2004/03/5e875cc029a54.jpg', 1585929507, 1, 0),
(23, 2, '11', 'we''f''s', 0, 'undefined', '', 1586154689, 1, 0);

-- --------------------------------------------------------

--
-- 表的结构 `iqw_jisiguan_coll`
--

CREATE TABLE IF NOT EXISTS `iqw_jisiguan_coll` (
  `id` int(11) NOT NULL,
  `g_id` int(11) NOT NULL COMMENT '馆id',
  `user_id` int(11) NOT NULL COMMENT '用户id',
  `add_time` int(11) NOT NULL COMMENT '收藏时间'
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8 COMMENT='纪念馆收藏表';

--
-- 转存表中的数据 `iqw_jisiguan_coll`
--

INSERT INTO `iqw_jisiguan_coll` (`id`, `g_id`, `user_id`, `add_time`) VALUES
(4, 2, 2, 0),
(5, 2, 1, 1585836179),
(6, 1, 1, 1585842128),
(12, 15, 2, 1585900438),
(16, 22, 3, 1585963531),
(17, 0, 3, 1585963572),
(23, 22, 2, 1586151911),
(24, 20, 2, 1586154442),
(25, 21, 2, 1586154460),
(29, 21, 1, 1586168052),
(31, 22, 1, 1586169274),
(32, 22, 6, 1586591425);

-- --------------------------------------------------------

--
-- 表的结构 `iqw_jisiguan_list`
--

CREATE TABLE IF NOT EXISTS `iqw_jisiguan_list` (
  `id` int(11) NOT NULL,
  `g_id` int(11) NOT NULL COMMENT '纪念馆id',
  `user_id` int(11) NOT NULL COMMENT '发布者id',
  `title` varchar(50) NOT NULL COMMENT '纪念者名称',
  `content` text NOT NULL COMMENT '生平简介',
  `lazhu` int(11) NOT NULL COMMENT '蜡烛',
  `zhiqian` int(11) NOT NULL COMMENT '纸钱',
  `shangxiang` int(11) NOT NULL COMMENT '上香',
  `xianhua` int(11) NOT NULL COMMENT '鲜花',
  `cs_time` varchar(50) NOT NULL COMMENT '出生时间',
  `ss_time` varchar(50) NOT NULL COMMENT '逝世时间',
  `sex` tinyint(1) NOT NULL COMMENT '性别',
  `age` mediumint(6) NOT NULL COMMENT '年龄',
  `ordid` smallint(6) NOT NULL COMMENT '排序越大，越靠前',
  `add_time` int(11) NOT NULL COMMENT '添加时间',
  `status` tinyint(1) NOT NULL COMMENT '1可显示'
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8 COMMENT='祭祀列表';

--
-- 转存表中的数据 `iqw_jisiguan_list`
--

INSERT INTO `iqw_jisiguan_list` (`id`, `g_id`, `user_id`, `title`, `content`, `lazhu`, `zhiqian`, `shangxiang`, `xianhua`, `cs_time`, `ss_time`, `sex`, `age`, `ordid`, `add_time`, `status`) VALUES
(20, 20, 2, '梅艳芳', '梅艳芳，祖籍广西壮族自治区北海市合浦县，1963年10月10日出生于香港，家中两兄一姐，她排行最小。梅艳芳的父亲早逝，其母独力供养四名子女，全家仅靠母亲经营破旧的“锦霞”歌舞团维持生计，家境十分窘困。小小年纪的梅艳芳深受影响，四岁半便与姐姐在香港荔园游乐场登台表演，从此与舞台结下', 0, 0, 0, 0, '2003-12-30', '2003-12-30', 0, 40, 0, 1585908264, 1),
(21, 20, 2, '张国荣', '2003年张国荣的死去并不一定是这部电影所致，一个一生都追求完美的艺术家，在他的人生压力越来越大的情况下，一部小小的电影并不会对他产生什么，但是，《异度空间》这个火星，却让他最终不堪生命的重负，选择了死亡。', 0, 1, 1, 0, '2003-4-1', '2003-4-1', 0, 47, 0, 1585908696, 1),
(22, 21, 2, '邓世昌', '邓世昌（1849年10月4日－1894年9月17日），男，汉族，原名永昌，字正卿，广东番禺县龙导尾乡（现为广州市海珠区）人，清末北洋水师名将，民族英雄。邓世昌是中国最早的一批海军军官中的一个，是清朝北洋舰队中“致远”号的舰长。', 0, 0, 0, 0, '1894-9-17', '1894-9-17', 0, 45, 0, 1585909478, 1),
(23, 21, 2, '左宗棠', '左宗棠（1812年11月10日—1885年9月5日），汉族，字季高，一字朴存，号湘上农人。湖南湘阴人。晚清军事家、政治家，湘军名将，洋务派代表人物之一，与曾国藩等人并称“晚清中兴四大名臣”。', 0, 0, 0, 0, '1885-9-5', '1885-9-5', 0, 73, 0, 1585909599, 1),
(24, 22, 2, '李文亮', '李文亮，满族，籍贯辽宁省锦州市北镇市，武汉大学临床医学七年制专业毕业，中共党员。曾任武汉市中心医院眼科医生。2020年3月6日，国家卫生健康委员会、人力资源和社会保障部、国家中医药管理局追授李文亮“全国卫生健康系统新冠肺炎疫情防控工作先进个人”称号。', 4, 3, 2, 3, '2020-2-7', '2020-2-7', 0, 35, 0, 1585929696, 1);

-- --------------------------------------------------------

--
-- 表的结构 `iqw_jisiguan_list_img`
--

CREATE TABLE IF NOT EXISTS `iqw_jisiguan_list_img` (
  `id` int(11) NOT NULL,
  `list_id` int(11) NOT NULL COMMENT '列表id',
  `img_url` text NOT NULL COMMENT '图片链接',
  `add_time` int(11) NOT NULL COMMENT '添加时间'
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8 COMMENT='祭祀图片表';

--
-- 转存表中的数据 `iqw_jisiguan_list_img`
--

INSERT INTO `iqw_jisiguan_list_img` (`id`, `list_id`, `img_url`, `add_time`) VALUES
(1, 1, 'data/upload/item/a.jpg', 0),
(2, 1, 'data/upload/item/a.jpg', 0),
(3, 4, 'data/upload/item/a.jpg', 0),
(4, 4, 'data/upload/item/a.jpg', 0),
(5, 10, 'data/upload/item_sq/2004/', 1585876120),
(6, 11, 'data/upload/item_sq/2004/03/5e868cee0c1c6.jpg', 1585876221),
(7, 11, 'data/upload/item_sq/2004/03/5e868cf221caa.jpg', 1585876221),
(24, 6, 'data/upload/item_sq/2004/03/5e86d0ba2ae74.jpg', 1585894098),
(25, 6, 'data/upload/item_sq/2004/03/5e86d1f63d006.jpg', 1585894098),
(26, 13, 'data/upload/item_sq/2004/03/5e86d302ca401.jpg', 1585894168),
(28, 14, 'data/upload/item_sq/2004/03/5e86d659c9ad6.jpg', 1585895021),
(29, 12, 'data/upload/item_sq/2004/03/5e86d2309baab.jpg', 1585895205),
(30, 15, 'data/upload/item_sq/2004/03/5e86d78ccaa7c.jpg', 1585895324),
(31, 16, 'data/upload/item_sq/2004/03/5e86f0d21b98e.png', 1585901798),
(32, 17, 'data/upload/item_sq/2004/03/5e86f1b042dc1.png', 1585902022),
(33, 18, 'data/upload/item_sq/2004/03/5e8700b86e3a8.png', 1585905964),
(34, 18, 'data/upload/item_sq/2004/03/5e8700b9326c5.png', 1585905964),
(35, 18, 'data/upload/item_sq/2004/03/5e8700b978926.png', 1585905964),
(36, 18, 'data/upload/item_sq/2004/03/5e8700c215eba.png', 1585905964),
(37, 18, 'data/upload/item_sq/2004/03/5e8700d7c9439.png', 1585905964),
(38, 19, 'data/upload/item_sq/2004/03/5e8703bef2195.png', 1585906631),
(39, 20, 'data/upload/item_sq/2004/03/5e8709935cde9.jpg', 1585908264),
(40, 21, 'data/upload/item_sq/2004/03/5e870b5abab2c.jpg', 1585908696),
(41, 22, 'data/upload/item_sq/2004/03/5e870e8eebeb4.jpg', 1585909478),
(42, 23, 'data/upload/item_sq/2004/03/5e870f261cff2.jpg', 1585909599),
(43, 24, 'data/upload/item_sq/2004/03/5e875d3ec53b2.png', 1585929696),
(44, 25, '', 1586154991),
(48, 26, 'data/upload/item_sq/2004/06/5e8aec501e761.jpg', 1586162952),
(49, 26, 'data/upload/item_sq/2004/06/5e8aec71669a5.jpg', 1586162952),
(50, 27, 'data/upload/item_sq/2004/06/5e8b009ab88aa.jpg', 1586167979),
(51, 28, 'data/upload/item_sq/2004/06/5e8b05da2b77a.jpg', 1586169312);

-- --------------------------------------------------------

--
-- 表的结构 `iqw_jisiguan_liuyan`
--

CREATE TABLE IF NOT EXISTS `iqw_jisiguan_liuyan` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL COMMENT '会员id',
  `user_name` varchar(50) NOT NULL COMMENT '会员昵称',
  `user_img` text NOT NULL COMMENT '会员头像链接',
  `content` varchar(255) NOT NULL COMMENT '留言内容',
  `list_id` int(11) NOT NULL COMMENT '列表id',
  `add_time` int(11) NOT NULL COMMENT '留言时间',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1可显示'
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='留言';

--
-- 转存表中的数据 `iqw_jisiguan_liuyan`
--

INSERT INTO `iqw_jisiguan_liuyan` (`id`, `user_id`, `user_name`, `user_img`, `content`, `list_id`, `add_time`, `status`) VALUES
(1, 1, '行元', '', '留言111', 1, 0, 1),
(2, 1, '行元', '', '留言222', 1, 0, 1),
(3, 1, '行元', '', '留言333', 2, 0, 1),
(4, 1, '行元', '', '留言4', 2, 0, 1),
(5, 1, '行元', '', '', 4, 0, 1),
(6, 1, '行', '', '', 4, 0, 1),
(7, 1, '行元', 'https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83epm2iaYJt0ZkwGHbGYOeZpCP4Crz07dH04h0sdNKaJic7w8Lia8kXY6DymjkkEs7DicWoicuh5ZfA7VDhw/132', '123', 4, 1585840111, 0),
(8, 1, '行元', 'https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83epm2iaYJt0ZkwGHbGYOeZpCP4Crz07dH04h0sdNKaJic7w8Lia8kXY6DymjkkEs7DicWoicuh5ZfA7VDhw/132', '是个好人', 6, 1585842744, 0),
(9, 1, '行元', 'https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83epm2iaYJt0ZkwGHbGYOeZpCP4Crz07dH04h0sdNKaJic7w8Lia8kXY6DymjkkEs7DicWoicuh5ZfA7VDhw/132', '是个好人2', 6, 1585842775, 1),
(10, 1, '行元', 'https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83epm2iaYJt0ZkwGHbGYOeZpCP4Crz07dH04h0sdNKaJic7w8Lia8kXY6DymjkkEs7DicWoicuh5ZfA7VDhw/132', '好人', 3, 1585843926, 1),
(11, 2, '0', '', '是个好人', 6, 1585844007, 1),
(12, 1, '行元', 'https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83epm2iaYJt0ZkwGHbGYOeZpCP4Crz07dH04h0sdNKaJic7w8Lia8kXY6DymjkkEs7DicWoicuh5ZfA7VDhw/132', '确实是只好狗，', 15, 1585895363, 1),
(13, 2, '0', '', '是个好狗', 16, 1585901959, 1),
(14, 2, '0', '', '是啊', 15, 1585903863, 1),
(15, 1, '行元', 'https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83epm2iaYJt0ZkwGHbGYOeZpCP4Crz07dH04h0sdNKaJic7w8Lia8kXY6DymjkkEs7DicWoicuh5ZfA7VDhw/132', '123', 15, 1586156124, 1),
(16, 1, '行元', 'https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83epm2iaYJt0ZkwGHbGYOeZpCP4Crz07dH04h0sdNKaJic7w8Lia8kXY6DymjkkEs7DicWoicuh5ZfA7VDhw/132', '123', 26, 1586162995, 1);

-- --------------------------------------------------------

--
-- 表的结构 `iqw_jisiguan_xw`
--

CREATE TABLE IF NOT EXISTS `iqw_jisiguan_xw` (
  `id` int(11) NOT NULL,
  `list_id` int(11) NOT NULL COMMENT '列表id',
  `user_id` int(11) NOT NULL COMMENT '用户id',
  `xw_type` smallint(4) NOT NULL COMMENT '1蜡烛，2纸钱，3上香，4鲜花',
  `add_time` int(11) NOT NULL COMMENT '时间'
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8 COMMENT='祭祀行为';

--
-- 转存表中的数据 `iqw_jisiguan_xw`
--

INSERT INTO `iqw_jisiguan_xw` (`id`, `list_id`, `user_id`, `xw_type`, `add_time`) VALUES
(1, 4, 1, 1, 0),
(2, 4, 1, 1, 0),
(3, 4, 1, 1, 0),
(4, 4, 1, 2, 0),
(5, 4, 1, 2, 0),
(6, 4, 1, 1, 0),
(7, 4, 1, 3, 0),
(8, 4, 1, 1, 0),
(9, 4, 1, 3, 0),
(10, 6, 1, 3, 0),
(11, 3, 1, 4, 0),
(12, 6, 2, 1, 0),
(13, 6, 2, 2, 0),
(14, 6, 2, 3, 0),
(15, 6, 2, 4, 0),
(16, 6, 2, 3, 0),
(17, 4, 2, 3, 0),
(18, 7, 2, 4, 0),
(19, 7, 2, 3, 0),
(20, 11, 2, 2, 1585885874),
(21, 15, 1, 1, 1585895347),
(22, 16, 2, 1, 1585903241),
(23, 15, 2, 2, 1585903993),
(24, 15, 2, 4, 1585904029),
(25, 15, 2, 3, 1585904033),
(26, 21, 2, 2, 1585908817),
(27, 21, 2, 3, 1585908822),
(28, 24, 3, 1, 1585963536),
(29, 24, 3, 2, 1585963536),
(30, 24, 3, 3, 1585963536),
(31, 24, 3, 4, 1585963536),
(32, 24, 2, 3, 1586153298),
(33, 24, 2, 4, 1586153690),
(34, 24, 2, 1, 1586153696),
(35, 24, 2, 2, 1586153700),
(36, 26, 1, 3, 1586162982),
(37, 24, 6, 1, 1586591397),
(38, 24, 6, 2, 1586591403),
(39, 24, 6, 4, 1586591408),
(40, 24, 6, 1, 1586591417);

-- --------------------------------------------------------

--
-- 表的结构 `iqw_mail_queue`
--

CREATE TABLE IF NOT EXISTS `iqw_mail_queue` (
  `id` int(10) unsigned NOT NULL,
  `mail_to` varchar(120) NOT NULL,
  `mail_subject` varchar(255) NOT NULL,
  `mail_body` text NOT NULL,
  `priority` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `err_num` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `add_time` int(10) unsigned NOT NULL,
  `lock_expiry` int(10) unsigned NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `iqw_mail_queue`
--

INSERT INTO `iqw_mail_queue` (`id`, `mail_to`, `mail_subject`, `mail_body`, `priority`, `err_num`, `add_time`, `lock_expiry`) VALUES
(1, 'aaafff111@126.com', '密码找回', '<p>\r\n	尊敬的aaafff111:\r\n</p>\r\n<p style="padding-left:30px;">\r\n	您好, 您刚才在 费城 申请了重置密码，请点击下面的链接进行重置：\r\n</p>\r\n<p style="padding-left:30px;">\r\n	<a href="http://127.0.0.32:8080/index.php/findpwd-reset-username-aaafff111-activation-377dc89b6e165a5782f12b848076e59d-t-1393593218">http://127.0.0.32:8080/index.php/findpwd-reset-username-aaafff111-activation-377dc89b6e165a5782f12b848076e59d-t-1393593218</a> \r\n</p>\r\n<p style="padding-left:30px;">\r\n	此链接只能使用一次, 如果失效请重新申请. 如果以上链接无法点击，请将它拷贝到浏览器(例如IE)的地址栏中。\r\n</p>\r\n<p style="text-align:right;">\r\n	费城</p>\r\n<p style="text-align:right;">\r\n	2014-02-28 21:13:38</p>', 1, 1, 1393593218, 1393593248),
(2, 'aaafff111@126.com', '密码找回', '<p>\r\n	尊敬的aaafff111:\r\n</p>\r\n<p style="padding-left:30px;">\r\n	您好, 您刚才在 他乡故事 申请了重置密码，请点击下面的链接进行重置：\r\n</p>\r\n<p style="padding-left:30px;">\r\n	<a href="http://127.0.0.8/index.php/findpwd-reset-username-aaafff111-activation-47837f1ac48a7dc3283388b8fc8b81c0-t-1459495379">http://127.0.0.8/index.php/findpwd-reset-username-aaafff111-activation-47837f1ac48a7dc3283388b8fc8b81c0-t-1459495379</a> \r\n</p>\r\n<p style="padding-left:30px;">\r\n	此链接只能使用一次, 如果失效请重新申请. 如果以上链接无法点击，请将它拷贝到浏览器(例如IE)的地址栏中。\r\n</p>\r\n<p style="text-align:right;">\r\n	他乡故事</p>\r\n<p style="text-align:right;">\r\n	2016-04-01 15:22:59</p>', 1, 0, 1459495379, 1459495379);

-- --------------------------------------------------------

--
-- 表的结构 `iqw_menu`
--

CREATE TABLE IF NOT EXISTS `iqw_menu` (
  `id` smallint(6) NOT NULL,
  `name` varchar(50) NOT NULL,
  `pid` smallint(6) NOT NULL,
  `module_name` varchar(20) NOT NULL,
  `action_name` varchar(20) NOT NULL,
  `data` varchar(120) NOT NULL,
  `remark` varchar(255) NOT NULL,
  `often` tinyint(1) NOT NULL DEFAULT '0',
  `ordid` tinyint(3) unsigned NOT NULL DEFAULT '255',
  `display` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM AUTO_INCREMENT=464 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `iqw_menu`
--

INSERT INTO `iqw_menu` (`id`, `name`, `pid`, `module_name`, `action_name`, `data`, `remark`, `often`, `ordid`, `display`) VALUES
(1, '全局设置', 0, 'setting', 'index', '', '', 0, 10, 1),
(2, '核心设置', 1, 'setting', 'index', '', '', 0, 0, 1),
(3, '全局参数', 148, 'setting', 'index', '&type=site', '', 0, 2, 1),
(4, '邮件设置', 148, 'setting', 'index', '&type=mail', '', 0, 5, 1),
(337, '编辑', 336, 'item_cate3', 'edit', '', '', 0, 0, 0),
(6, '菜单管理', 2, 'menu', 'index', '', '', 0, 7, 1),
(7, '新增', 6, 'menu', 'add', '', '', 0, 0, 0),
(8, '编辑', 6, 'menu', 'edit', '', '', 0, 0, 0),
(9, '删除', 6, 'menu', 'delete', '', '', 0, 0, 0),
(10, '运营', 0, 'operate', 'index', '', '', 0, 4, 1),
(11, '广告管理', 10, 'advert', 'index', '', '', 0, 6, 1),
(12, '广告管理', 11, 'ad', 'index', '', '', 0, 0, 1),
(13, '广告位管理', 11, 'adboard', 'index', '', '', 0, 0, 0),
(14, '友情链接', 10, 'flink', 'index', '', '', 0, 7, 0),
(15, '友情链接', 14, 'flink', 'index', '', '', 0, 0, 1),
(16, '链接分类', 14, 'flink_cate', 'index', '', '', 0, 0, 1),
(17, '新增', 15, 'flink', 'add', '', '', 0, 0, 0),
(18, '编辑', 15, 'flink', 'edit', '', '', 0, 0, 0),
(19, '删除', 15, 'flink', 'delete', '', '', 0, 0, 0),
(20, '新增', 16, 'flink_cate', 'add', '', '', 0, 0, 0),
(21, '编辑', 16, 'flink_cate', 'edit', '', '', 0, 0, 0),
(22, '删除', 16, 'flink_cate', 'del', '', '', 0, 0, 0),
(23, '新增', 12, 'ad', 'add', '', '', 0, 0, 1),
(24, '编辑', 12, 'ad', 'edit', '', '', 0, 0, 0),
(25, '删除', 12, 'ad', 'delete', '', '', 0, 0, 0),
(26, '新增', 13, 'adboard', 'add', '', '', 0, 0, 0),
(27, '编辑', 13, 'adboard', 'edit', '', '', 0, 0, 0),
(28, '删除', 13, 'adboard', 'delete', '', '', 0, 0, 0),
(29, '数据安全', 0, 'data', 'index', '', '', 0, 7, 1),
(258, '商品分类', 256, 'score_item_cate', 'index', '', '', 0, 255, 1),
(31, '数据库管理', 29, 'backup', 'index', '', '', 0, 2, 1),
(32, '数据备份', 31, 'backup', 'index', '', '', 0, 0, 1),
(33, '数据恢复', 31, 'backup', 'restore', '', '', 0, 0, 0),
(34, '缓存管理', 254, 'cache', 'index', '', '', 0, 0, 1),
(195, '登陆接口', 245, 'oauth', 'index', '', '', 0, 2, 1),
(36, '黑名单管理', 117, 'ipban', 'index', '', '', 0, 3, 0),
(37, '新增', 36, 'ipban', 'add', '', '', 0, 0, 0),
(38, '编辑', 36, 'ipban', 'edit', '', '', 0, 0, 0),
(50, '项目管理', 0, 'item', 'index', '', '', 0, 1, 1),
(386, '行业管理', 385, 'industry', 'index', '', '', 0, 255, 1),
(52, '产品管理', 51, 'item', 'index', '', '', 0, 1, 1),
(54, '编辑', 52, 'item', 'edit', '', '', 0, 3, 0),
(190, '删除', 52, 'item', 'delete', '', '', 0, 4, 0),
(56, '产品分类', 51, 'item_cate', 'index', '', '', 0, 6, 1),
(57, '新增', 56, 'article_cate', 'add', '', '', 0, 0, 0),
(58, '编辑', 56, 'article_cate', 'edit', '', '', 0, 0, 0),
(59, '删除', 56, 'article_cate', 'delete', '', '', 0, 0, 0),
(60, '管理员管理', 1, 'admin', 'index', '', '', 0, 4, 1),
(61, '管理员管理', 60, 'admin', 'index', '', '', 0, 0, 1),
(62, '新增', 61, 'admin', 'add', '', '', 0, 0, 0),
(63, '编辑', 61, 'admin', 'edit', '', '', 0, 0, 0),
(64, '删除', 61, 'admin', 'delete', '', '', 0, 0, 0),
(65, '角色管理', 60, 'admin_role', 'index', '', '', 0, 0, 1),
(66, '新增', 65, 'admin_role', 'add', '', '', 0, 0, 1),
(329, '编辑', 327, 'article_cate2', 'edit', '', '', 0, 0, 0),
(70, '会员管理', 0, 'user', 'index', '', '', 0, 4, 1),
(119, '新增', 149, 'user', 'add', '', '', 0, 3, 0),
(118, '编辑', 149, 'user', 'edit', '', '', 0, 4, 0),
(117, '会员管理', 70, 'user', 'index', '', '', 0, 0, 1),
(156, '文章分类', 154, 'article_cate', 'index', '', '', 0, 3, 1),
(151, '导航设置', 216, 'nav', 'index', '', '', 0, 1, 1),
(149, '会员管理', 117, 'user', 'index', '', '', 0, 1, 1),
(150, '删除', 149, 'user', 'delete', '', '', 0, 5, 0),
(152, '主导航', 151, 'nav', 'index', '&type=main', '', 0, 1, 1),
(153, '底部导航', 151, 'nav', 'index', '&type=bottom', '', 0, 2, 1),
(154, '文章管理', 10, 'article', 'index', '', '', 0, 2, 1),
(155, '文章管理', 154, 'article', 'index', '', '', 0, 1, 1),
(148, '站点设置', 2, 'setting', 'index', '', '', 0, 0, 1),
(157, '添加文章', 155, 'article', 'add', '', '', 0, 2, 1),
(158, '编辑', 155, 'article', 'edit', '', '', 0, 3, 0),
(159, '删除', 155, 'article', 'delete', '', '', 0, 4, 0),
(160, '新增', 156, 'article_cate', 'add', '', '', 0, 0, 0),
(161, '编辑', 156, 'article_cate', '编辑', '', '', 0, 0, 0),
(162, '删除', 156, 'article_cate', 'delete', '', '', 0, 0, 0),
(332, '发布技术成果', 322, 'item2', 'add', '', '', 0, 3, 1),
(336, '招聘分类', 333, 'item_cate3', 'index', '', '', 0, 6, 1),
(335, '招聘审核', 333, 'item3', 'check', '', '', 0, 5, 1),
(178, '敏感词管理', 254, 'badword', 'index', '', '', 0, 4, 0),
(179, '新增', 178, 'badword', 'add', '', '', 0, 0, 0),
(180, '编辑', 178, 'badword', 'edit', '', '', 0, 0, 0),
(181, '删除', 36, 'ipban', 'delete', '', '', 0, 0, 0),
(182, '删除', 178, 'badword', 'delete', '', '', 0, 0, 0),
(255, '采集马甲', 117, 'auto_user', 'index', '', '', 0, 2, 0),
(184, '标签管理', 254, 'tag', 'index', '', '', 0, 3, 0),
(185, '商品接口', 245, 'item_site', 'index', '', '', 0, 1, 0),
(331, '技术成果审核', 322, 'item2', 'check', '', '', 0, 5, 1),
(330, '删除', 327, 'article_cate2', 'delete', '', '', 0, 0, 0),
(265, '删除', 257, 'score_item', 'edit', '', '', 0, 4, 0),
(198, '新增', 196, 'message', 'add', '', '', 0, 0, 1),
(328, '新增', 327, 'item_cate2', 'add', '', '', 0, 0, 0),
(327, '技术成果分类', 322, 'item_cate2', 'index', '', '', 0, 6, 1),
(203, '产品审核', 51, 'item', 'check', '', '', 0, 5, 1),
(249, '发布产品', 51, 'item', 'add', '', '', 0, 3, 1),
(259, '新增', 258, 'score_item_cate', 'add', '', '', 0, 255, 0),
(325, '删除', 323, 'item2', 'delete', '', '', 0, 4, 0),
(269, '积分设置', 2, 'score', 'setting', '', '', 0, 3, 0),
(257, '积分商品', 256, 'score_item', 'index', '', '', 0, 255, 1),
(212, '日志管理', 29, 'log', 'index', '', '', 0, 3, 0),
(213, '管理员日志', 212, 'log', 'index', '', '', 0, 0, 0),
(214, '用户日志', 212, 'log', 'user', '', '', 0, 0, 0),
(215, '积分日志', 212, 'log', 'score', '', '', 0, 0, 0),
(216, '界面设置', 1, 'setting', 'index', '&type=show', '', 0, 2, 0),
(256, '积分商城', 70, 'score_item', 'index', '', '', 0, 255, 0),
(254, '系统数据', 29, 'tag', 'index', '', '', 0, 1, 1),
(264, '编辑', 257, 'score_item', 'edit', '', '', 0, 3, 0),
(263, '添加商品', 257, 'score_item', 'add', '', '', 0, 2, 1),
(262, '积分订单', 256, 'score_order', 'index', '', '', 0, 255, 1),
(261, '删除', 258, 'score_item_cate', 'delete', '', '', 0, 255, 0),
(260, '编辑', 258, 'score_item_cate', 'edit', '', '', 0, 255, 0),
(232, '站内信管理', 70, 'message', 'index', '', '', 0, 0, 0),
(233, '系统通知', 232, 'message', 'index', '&type=1', '', 0, 0, 1),
(234, '用户私信', 232, 'message', 'index', '&type=2', '', 0, 0, 1),
(235, '通知模版', 2, 'message_tpl', 'index', '&type=msg', '', 0, 4, 0),
(236, '添加模版', 235, 'message_tpl', 'add', '', '', 0, 7, 1),
(237, '编辑', 235, 'message_tpl', 'edit', '', '', 0, 255, 0),
(238, '删除', 235, 'message_tpl', 'delete', '', '', 0, 255, 0),
(240, '单页管理', 154, 'article', 'page', '', '', 0, 4, 0),
(242, '积分记录', 269, 'score', 'logs', '', '', 0, 2, 1),
(244, '应用', 0, 'plugin', 'index', '', '', 0, 6, 0),
(245, '系统接口', 244, 'apis', 'index', '', '', 0, 1, 1),
(334, '发布招聘', 333, 'item3', 'add', '', '', 0, 3, 1),
(252, '用户整合', 245, 'integrate', 'index', '', '', 0, 255, 0),
(326, '成果库管理', 323, 'item2', 'index', '', '', 0, 1, 1),
(267, '批量注册', 149, 'user', 'add_users', '', '', 0, 2, 0),
(270, '邮件模板', 235, 'message_tpl', 'index', '&type=mail', '', 0, 6, 0),
(271, '短消息模板', 235, 'message_tpl', 'index', '&type=msg', '', 0, 5, 1),
(272, '附件设置', 148, 'setting', 'index', '&type=attachment', '', 0, 4, 1),
(273, '显示设置', 216, 'setting', 'index', '&type=style', '', 0, 2, 0),
(274, '模板管理', 216, 'template', 'index', '', '', 0, 3, 1),
(275, '站点设置', 148, 'setting', 'index', '', '', 0, 1, 1),
(276, '积分设置', 269, 'score', 'setting', '', '', 0, 1, 1),
(277, '产品管理', 52, 'item', 'index', '', '', 0, 1, 1),
(278, '文章管理', 155, 'article', 'index', '', '', 0, 1, 1),
(279, '会员管理', 149, 'user', 'index', '', '', 0, 1, 1),
(280, '积分商品', 257, 'score_item', 'index', '', '', 0, 1, 1),
(324, '编辑', 323, 'item2', 'edit', '', '', 0, 3, 0),
(282, 'SEO设置', 2, 'seo', 'url', '', '', 0, 5, 0),
(283, 'UR静态化', 282, 'seo', 'url', '', '', 0, 255, 1),
(284, '页面SEO', 282, 'seo', 'page', '', '', 0, 255, 0),
(286, '注册登陆', 2, 'setting', 'user', '', '', 0, 2, 1),
(305, '标签设置', 2, 'setting', 'others', '', '', 0, 2, 0),
(306, '区域管理', 10, 'address_set', 'index', '', '', 0, 8, 0),
(307, '地址管理', 306, 'address_set', 'index', '', '', 0, 255, 1),
(308, '成功案例', 317, 'article', 'index', '&cate_id=66', '', 0, 1, 1),
(309, '添加案例', 308, 'article', 'add', '', '', 0, 2, 1),
(422, '公司制度', 421, 'article2', 'index', '&type=1', '', 0, 255, 1),
(421, '公告栏', 0, 'article2', 'index', '', '', 0, 5, 0),
(312, '成功案例', 308, 'article', 'index', '&cate_id=66', '', 0, 1, 1),
(317, '成功案例', 10, 'article', 'index', '&cate_id=66', '', 0, 1, 0),
(323, '成果库管理', 322, 'item2', 'index', '', '', 0, 1, 1),
(320, '添加案例', 317, 'article', 'add', '&menuid=308', '', 0, 2, 1),
(321, '添加文章', 154, 'article', 'add', '&menuid=155', '', 0, 2, 1),
(338, '删除', 336, 'item_cate3', 'delete', '', '', 0, 0, 0),
(339, '新增', 336, 'item_cate3', 'add', '', '', 0, 0, 0),
(340, '招聘管理', 333, 'item3', 'index', '', '', 0, 1, 1),
(341, '删除', 340, 'item3', 'delete', '', '', 0, 4, 0),
(342, '招聘管理', 340, 'item3', 'index', '', '', 0, 1, 1),
(343, '编辑', 340, 'item3', 'edit', '', '', 0, 3, 0),
(345, '咨询分类', 344, 'item_cate4', 'index', '', '', 0, 6, 1),
(346, '编辑', 345, 'item_cate4', 'edit', '', '', 0, 0, 0),
(347, '删除', 345, 'item_cate4', 'delete', '', '', 0, 0, 0),
(348, '新增', 345, 'item_cate4', 'add', '', '', 0, 0, 0),
(349, '咨询审核', 344, 'item4', 'check', '', '', 0, 5, 1),
(350, '发布咨询', 344, 'item4', 'add', '', '', 0, 3, 1),
(351, '咨询服务', 344, 'item4', 'index', '', '', 0, 1, 1),
(352, '删除', 351, 'item4', 'delete', '', '', 0, 4, 0),
(353, '咨询服务', 351, 'item4', 'index', '', '', 0, 1, 1),
(354, '编辑', 351, 'item4', 'edit', '', '', 0, 3, 0),
(356, '发布技术需求', 355, 'item5', 'add', '', '', 0, 3, 1),
(357, '需求库审核', 355, 'item5', 'check', '', '', 0, 5, 1),
(358, '技术需求分类', 355, 'item_cate5', 'index', '', '', 0, 6, 1),
(359, '编辑', 358, 'article_cate5', 'edit', '', '', 0, 0, 0),
(360, '删除', 358, 'article_cate5', 'delete', '', '', 0, 0, 0),
(361, '新增', 358, 'item_cate5', 'add', '', '', 0, 0, 0),
(362, '需求库管理', 355, 'item5', 'index', '', '', 0, 1, 1),
(363, '删除', 362, 'item5', 'delete', '', '', 0, 4, 0),
(364, '需求库管理', 362, 'item5', 'index', '', '', 0, 1, 1),
(365, '编辑', 362, 'item5', 'edit', '', '', 0, 3, 0),
(366, '项目问答', 50, 'item', 'index', '', '', 0, 1, 1),
(385, '行业管理', 10, 'industry', 'index', '', '', 0, 255, 1),
(369, '项目管理', 368, 'item6', 'index', '', '', 0, 1, 1),
(370, '编辑', 369, 'item6', 'edit', '', '', 0, 3, 0),
(371, '删除', 369, 'item6', 'delete', '', '', 0, 4, 0),
(372, '项目管理', 369, 'item2', 'index', '', '', 0, 1, 1),
(377, '项目审核', 368, 'item6', 'check', '', '', 0, 5, 1),
(378, '项目申报', 368, 'item6', 'add', '', '', 0, 3, 1),
(383, '商铺转让信息', 380, 'transfer', 'index', '', '', 0, 255, 1),
(384, '商铺转让信息列表', 383, 'transfer', 'index', '', '', 0, 1, 1),
(389, '添加商铺转让信息', 383, 'transfer', 'add', '', '', 0, 2, 1),
(394, '商铺信息列表', 393, 'shop', 'index', '', '', 0, 255, 1),
(395, '添加商铺信息', 393, 'shop', 'add', '&cid=3', '', 0, 255, 1),
(397, '招商信息列表', 396, 'shop', 'index', '&cid=4', '', 0, 255, 1),
(398, '添加招商信息', 396, 'shop', 'add', '&cid=4', '', 0, 255, 1),
(400, '分类列表', 399, 'shop_cate', 'index', '', '', 0, 255, 1),
(447, '删除', 440, 'item_sub', 'delete', '', '', 0, 255, 1),
(446, '删除', 439, 'item', 'delete', '', '', 0, 255, 0),
(444, '详情', 440, 'item', 'edit', '', '', 0, 255, 0),
(443, '详情', 439, 'item', 'edit', '', '', 0, 255, 0),
(442, '创业者', 117, 'user', 'index', '&type_id=1', '', 0, 255, 1),
(440, '投资者问答', 366, 'item_sub', 'index', '', '', 0, 255, 1),
(439, '创业者提问', 366, 'item', 'index', '', '', 0, 255, 1),
(441, '投资者', 117, 'user', 'index', '&type_id=2', '', 0, 255, 1),
(423, '公司制度', 422, 'article2', 'index', '&type=1', '', 0, 255, 1),
(424, '添加公司制度', 423, 'article2', 'add', '&type=1', '', 0, 255, 1),
(425, '制度管理', 423, 'article2', 'index', '&type=1', '', 0, 255, 1),
(426, '公司文件', 421, 'article2', 'index', '&type=2', '', 0, 255, 1),
(427, '公司文件', 426, 'article2', 'index', '&type=2', '', 0, 255, 1),
(428, '添加文件', 427, 'article2', 'add', '&type=2', '', 0, 255, 1),
(429, '文件管理', 427, 'article2', 'index', '&type=2', '', 0, 255, 1),
(430, '公司通知', 421, 'article2', 'index', '&type=3', '', 0, 255, 1),
(431, '所有通知', 430, 'article2', 'index', '&type=3', '', 0, 255, 1),
(432, '添加通知', 431, 'article2', 'add', '&type=3', '', 0, 255, 1),
(433, '通知管理', 431, 'article2', 'index', '&type=3', '', 0, 255, 1),
(434, '导出excel', 149, 'user', 'getPrint', '', '', 0, 255, 0),
(436, '选址品牌列表', 11, 'ad', 'adlist', '', '', 0, 255, 0),
(437, '其它配置', 10, 'other_set', 'index', '', '', 0, 255, 1),
(438, '其它配置', 437, 'other_set', 'index', '', '', 0, 255, 1),
(455, 'h5项目', 50, 'item_h', 'index', '', '', 0, 255, 1),
(454, 'h5项目', 452, 'item_h', 'index', '', '', 0, 255, 1),
(452, 'h5项目', 448, 'item_h', 'index', '', '', 0, 255, 1),
(456, 'h5项目', 455, 'item_h', 'index', '', '', 0, 255, 1),
(457, '添加项目', 456, 'item_h', 'add', '', '', 0, 255, 1),
(458, '项目管理', 456, 'item_h', 'index', '', '', 0, 255, 1),
(459, '投资人认证', 455, 'item_apply', 'index', '', '', 0, 255, 1),
(460, '服务', 50, 'service', 'index', '', '', 0, 255, 1),
(461, '服务列表', 460, 'service', 'index', '', '', 0, 255, 1),
(462, '添加服务', 461, 'service', 'add', '', '', 0, 255, 1),
(463, '服务管理', 461, 'service', 'index', '', '', 0, 255, 1);

-- --------------------------------------------------------

--
-- 表的结构 `iqw_message`
--

CREATE TABLE IF NOT EXISTS `iqw_message` (
  `id` int(10) NOT NULL,
  `ftid` int(10) unsigned NOT NULL COMMENT '对话者ID之和',
  `from_id` int(10) NOT NULL,
  `from_name` varchar(50) NOT NULL,
  `to_id` int(10) NOT NULL,
  `to_name` varchar(50) NOT NULL,
  `add_time` int(10) NOT NULL,
  `info` mediumtext NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0没看1已看 2删除我发的 3删除收到的'
) ENGINE=MyISAM AUTO_INCREMENT=42 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `iqw_message`
--

INSERT INTO `iqw_message` (`id`, `ftid`, `from_id`, `from_name`, `to_id`, `to_name`, `add_time`, `info`, `status`) VALUES
(41, 51, 21, 'aaafff111', 30, 'test', 1459913704, '333333333333333333333', 0);

-- --------------------------------------------------------

--
-- 表的结构 `iqw_message_tpl`
--

CREATE TABLE IF NOT EXISTS `iqw_message_tpl` (
  `id` int(10) unsigned NOT NULL,
  `type` varchar(20) NOT NULL,
  `is_sys` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `name` varchar(50) NOT NULL,
  `alias` varchar(50) NOT NULL COMMENT '别名',
  `content` text NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `iqw_message_tpl`
--

INSERT INTO `iqw_message_tpl` (`id`, `type`, `is_sys`, `name`, `alias`, `content`) VALUES
(1, 'msg', 1, '登录', 'login', '<p>\r\n	欢迎\r\n</p>\r\n<p>\r\n	&nbsp;\r\n</p>\r\n<p>\r\n	<br />\r\n</p>'),
(3, 'mail', 1, '找回密码', 'findpwd', '<p>\r\n	尊敬的{$username}:\r\n</p>\r\n<p style="padding-left:30px;">\r\n	您好, 您刚才在 {$site_name} 申请了重置密码，请点击下面的链接进行重置：\r\n</p>\r\n<p style="padding-left:30px;">\r\n	<a href="{$reset_url}">{$reset_url}</a> \r\n</p>\r\n<p style="padding-left:30px;">\r\n	此链接只能使用一次, 如果失效请重新申请. 如果以上链接无法点击，请将它拷贝到浏览器(例如IE)的地址栏中。\r\n</p>\r\n<p style="text-align:right;">\r\n	{$site_name}\r\n</p>\r\n<p style="text-align:right;">\r\n	{$send_time}\r\n</p>');

-- --------------------------------------------------------

--
-- 表的结构 `iqw_nav`
--

CREATE TABLE IF NOT EXISTS `iqw_nav` (
  `id` smallint(4) unsigned NOT NULL,
  `type` varchar(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `alias` varchar(20) NOT NULL,
  `link` varchar(255) NOT NULL,
  `target` tinyint(1) NOT NULL DEFAULT '1',
  `ordid` tinyint(3) unsigned NOT NULL DEFAULT '255',
  `mod` varchar(20) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `iqw_oauth`
--

CREATE TABLE IF NOT EXISTS `iqw_oauth` (
  `id` smallint(4) unsigned NOT NULL,
  `code` varchar(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `config` text NOT NULL,
  `desc` text NOT NULL,
  `author` varchar(50) NOT NULL,
  `ordid` tinyint(3) unsigned NOT NULL DEFAULT '255',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1'
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `iqw_oauth`
--

INSERT INTO `iqw_oauth` (`id`, `code`, `name`, `config`, `desc`, `author`, `ordid`, `status`) VALUES
(4, 'qq', 'QQ登录', 'a:2:{s:7:"app_key";s:9:"100330010";s:10:"app_secret";s:32:"098381fd5d6a89f44127d61f0f2645da";}', '申请地址：http://connect.opensns.qq.com/', 'PinPHP TEAM', 2, 1);

-- --------------------------------------------------------

--
-- 表的结构 `iqw_other_set`
--

CREATE TABLE IF NOT EXISTS `iqw_other_set` (
  `id` smallint(4) unsigned NOT NULL,
  `name` varchar(50) NOT NULL,
  `pid` smallint(4) unsigned NOT NULL,
  `spid` varchar(50) NOT NULL,
  `ordid` tinyint(3) unsigned NOT NULL DEFAULT '255',
  `status` tinyint(1) NOT NULL,
  `is_index` tinyint(1) NOT NULL DEFAULT '0',
  `is_default` tinyint(1) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=70 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `iqw_other_set`
--

INSERT INTO `iqw_other_set` (`id`, `name`, `pid`, `spid`, `ordid`, `status`, `is_index`, `is_default`) VALUES
(18, '红包金额', 0, '0', 255, 1, 0, 0),
(19, '30', 18, '18|', 255, 1, 1, 0),
(20, '私密红包', 0, '0', 255, 1, 0, 0),
(21, '10', 20, '20|', 255, 1, 0, 0),
(22, '项目问题', 0, '0', 255, 1, 1, 0),
(36, '该项目的解决方案/产品有哪些特点', 22, '22|', 255, 1, 1, 0),
(40, '刚需低频类应用场景', 36, '22|36|', 255, 1, 1, 0),
(43, '刚需高频类应用场景', 36, '22|36|', 255, 1, 1, 0),
(44, '重运营模式，需要耗费大量的运营资源', 36, '22|36|', 255, 1, 1, 0),
(45, '没有清晰的应用场景，解决方案不明确', 36, '22|36|', 255, 1, 1, 0),
(46, '与其他替代产品相比，这款产品的优势明显', 36, '22|36|', 255, 1, 1, 0),
(47, '项目所处行业的看法', 22, '22|', 255, 1, 1, 0),
(48, '市场机会巨大，切入点没毛病', 47, '22|47|', 255, 1, 1, 0),
(49, '选择的细分领域已有龙头企业，很难吃下更多份额', 47, '22|47|', 255, 1, 1, 0),
(50, '未来的市场机会很大，但时机或切入点可能存在问题', 47, '22|47|', 255, 1, 1, 0),
(51, '项目创始团队给您的初步印象如何？', 22, '22|', 255, 1, 1, 0),
(52, '背景华丽，互补性强，执行力强', 51, '22|51|', 255, 1, 1, 0),
(53, '草根创业，有共同愿景，凝聚力强，堪比阿里“中供铁军”', 51, '22|51|', 255, 1, 1, 0),
(54, '团队待完善，执行力待观察', 51, '22|51|', 255, 1, 1, 0),
(55, '暂不做评论', 51, '22|51|', 255, 1, 1, 0),
(56, '您对项目描述的商业模式如何判断？', 22, '22|', 255, 1, 1, 0),
(57, '眼前一亮，改变与颠覆现有商业模式', 56, '22|56|', 255, 1, 1, 0),
(58, '有点意思，但还有很大升级与完善空间', 56, '22|56|', 255, 1, 1, 0),
(59, '没看明白', 56, '22|56|', 255, 1, 1, 0),
(60, '不看好，建议调整', 56, '22|56|', 255, 1, 1, 0),
(61, '暂不做评论', 56, '22|56|', 255, 1, 1, 0),
(62, '关于财务方面您如何评价？', 22, '22|', 255, 1, 1, 0),
(63, '收入预期合理，成本预算清晰合理', 62, '22|62|', 255, 1, 1, 0),
(64, '收入预期过于乐观，成本预算清晰合理', 62, '22|62|', 255, 1, 1, 0),
(65, '收入预期过于保守，成本预算清晰合理', 62, '22|62|', 255, 1, 1, 0),
(66, '收入预期合理，成本预算待调整', 62, '22|62|', 255, 1, 1, 0),
(67, '暂不做评论', 62, '22|62|', 255, 1, 1, 0),
(68, '5', 18, '18|', 255, 1, 1, 0);

-- --------------------------------------------------------

--
-- 表的结构 `iqw_remarks`
--

CREATE TABLE IF NOT EXISTS `iqw_remarks` (
  `id` int(11) NOT NULL,
  `type` tinyint(3) NOT NULL COMMENT '1转让。2出租，3找址',
  `r_type` tinyint(1) NOT NULL COMMENT '备注类型 1普通备注、2面谈备注',
  `service_type` tinyint(1) NOT NULL COMMENT '服务备注类型',
  `uid` int(11) NOT NULL COMMENT '业务员id',
  `shop_id` int(11) NOT NULL COMMENT '店铺Id',
  `addtime` int(11) NOT NULL,
  `content` text NOT NULL COMMENT '备注',
  `status` tinyint(1) NOT NULL,
  `ser_or_resu` tinyint(3) NOT NULL DEFAULT '1' COMMENT '1业绩备注。2服务备注'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='备注表';

-- --------------------------------------------------------

--
-- 表的结构 `iqw_score_item`
--

CREATE TABLE IF NOT EXISTS `iqw_score_item` (
  `id` int(10) unsigned NOT NULL,
  `cate_id` smallint(4) unsigned NOT NULL,
  `title` varchar(120) NOT NULL,
  `type` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '0：实物；1：虚拟',
  `img` varchar(255) NOT NULL,
  `score` int(10) unsigned NOT NULL DEFAULT '0',
  `stock` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `user_num` mediumint(8) unsigned NOT NULL DEFAULT '1',
  `buy_num` mediumint(8) NOT NULL DEFAULT '0',
  `desc` varchar(255) NOT NULL,
  `ordid` tinyint(3) unsigned NOT NULL DEFAULT '255'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `iqw_score_item_cate`
--

CREATE TABLE IF NOT EXISTS `iqw_score_item_cate` (
  `id` smallint(4) unsigned NOT NULL,
  `name` varchar(50) NOT NULL,
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `ordid` tinyint(3) unsigned NOT NULL DEFAULT '255'
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `iqw_score_log`
--

CREATE TABLE IF NOT EXISTS `iqw_score_log` (
  `id` int(10) NOT NULL,
  `uid` int(10) NOT NULL,
  `uname` varchar(50) NOT NULL,
  `action` varchar(50) NOT NULL,
  `score` int(10) NOT NULL,
  `add_time` int(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `iqw_score_order`
--

CREATE TABLE IF NOT EXISTS `iqw_score_order` (
  `id` int(10) unsigned NOT NULL,
  `order_sn` varchar(100) NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `uname` varchar(20) NOT NULL,
  `item_id` int(10) unsigned NOT NULL,
  `item_name` varchar(120) NOT NULL,
  `item_num` mediumint(8) NOT NULL,
  `consignee` varchar(20) NOT NULL,
  `address` varchar(255) NOT NULL,
  `zip` varchar(10) NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `order_score` int(10) NOT NULL,
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `add_time` int(10) unsigned NOT NULL,
  `remark` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `iqw_seen`
--

CREATE TABLE IF NOT EXISTS `iqw_seen` (
  `id` int(11) NOT NULL,
  `sid` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `type` smallint(3) NOT NULL COMMENT '1转让，2出租，3找址',
  `add_time` int(11) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=77 DEFAULT CHARSET=utf8 COMMENT='我看过的求租关联表';

--
-- 转存表中的数据 `iqw_seen`
--

INSERT INTO `iqw_seen` (`id`, `sid`, `uid`, `type`, `add_time`) VALUES
(5, 601678, 149, 3, 1500104887),
(2, 601623, 149, 3, 1500013729),
(3, 601619, 149, 3, 1500014020),
(4, 601608, 149, 3, 1500016121),
(6, 601672, 148, 3, 1500109247),
(7, 601648, 148, 3, 1500109339),
(8, 601655, 148, 3, 1500109468),
(9, 601666, 148, 3, 1500109836),
(10, 601668, 140, 3, 1500869824),
(11, 601666, 149, 3, 1500869826),
(12, 601668, 149, 3, 1500874166),
(13, 601667, 149, 3, 1500874253),
(14, 601655, 149, 3, 1500883085),
(15, 602011, 155, 3, 1502272136),
(16, 601705, 160, 3, 1504690454),
(17, 601869, 160, 3, 1504691853),
(18, 602017, 161, 3, 1504697214),
(19, 601766, 161, 3, 1504697442),
(20, 601740, 161, 3, 1504697459),
(21, 601742, 161, 3, 1504697479),
(22, 601753, 161, 3, 1504697484),
(23, 601846, 161, 3, 1504697496),
(24, 602059, 161, 3, 1504697564),
(25, 601869, 149, 3, 1505111438),
(26, 602037, 149, 3, 1505113125),
(27, 601869, 163, 3, 1505269615),
(28, 602034, 160, 3, 1505375883),
(29, 602037, 160, 3, 1505375894),
(30, 601668, 160, 3, 1505375898),
(31, 602699, 160, 3, 1505381993),
(32, 602118, 160, 3, 1505382001),
(33, 603597, 160, 3, 1506583742),
(34, 601776, 149, 3, 1506677210),
(35, 601776, 170, 3, 1507104808),
(36, 601869, 171, 3, 1507622580),
(37, 603723, 171, 3, 1507622932),
(38, 603695, 171, 3, 1507622945),
(39, 602017, 172, 3, 1507687550),
(40, 601822, 172, 3, 1507687578),
(41, 601655, 172, 3, 1507687616),
(42, 601683, 172, 3, 1507687647),
(43, 601683, 173, 3, 1507774554),
(44, 601785, 173, 3, 1507774619),
(45, 602017, 173, 3, 1507775401),
(46, 604455, 179, 3, 1508875025),
(47, 601776, 179, 3, 1508960963),
(48, 601668, 179, 3, 1508961019),
(49, 601675, 179, 3, 1508961088),
(50, 601863, 179, 3, 1508961178),
(51, 601666, 179, 3, 1508961217),
(52, 601655, 179, 3, 1508961233),
(53, 601706, 179, 3, 1508961517),
(54, 601816, 179, 3, 1508968669),
(55, 606401, 191, 3, 1513127985),
(56, 606723, 192, 3, 1513572711),
(57, 606695, 192, 3, 1513573096),
(58, 606694, 192, 3, 1513573118),
(59, 606724, 192, 3, 1515399677),
(60, 607489, 192, 3, 1515400157),
(61, 607487, 192, 3, 1515400164),
(62, 607541, 198, 3, 1515579118),
(63, 607539, 198, 3, 1515579129),
(64, 601869, 203, 3, 1515750386),
(65, 601706, 203, 3, 1515750549),
(66, 607626, 203, 3, 1515750557),
(67, 607624, 203, 3, 1515750562),
(68, 607622, 203, 3, 1515750566),
(69, 607621, 203, 3, 1515750572),
(70, 607620, 203, 3, 1515750608),
(71, 607616, 203, 3, 1515750619),
(72, 607611, 203, 3, 1515750747),
(73, 607629, 205, 3, 1515811227),
(74, 607959, 208, 3, 1516635521),
(75, 606930, 213, 3, 1517041576),
(76, 608170, 216, 3, 1517209252);

-- --------------------------------------------------------

--
-- 表的结构 `iqw_service`
--

CREATE TABLE IF NOT EXISTS `iqw_service` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `img` varchar(255) NOT NULL,
  `info` text NOT NULL,
  `add_time` int(11) NOT NULL,
  `status` tinyint(2) NOT NULL DEFAULT '1'
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='服务表';

--
-- 转存表中的数据 `iqw_service`
--

INSERT INTO `iqw_service` (`id`, `title`, `price`, `img`, `info`, `add_time`, `status`) VALUES
(1, '资本语言构建', '2800.00', '1805/21/5b0254cc9ce1e.png', '<img src="/data/upload/editer/image/2018/05/21/5b025490f057b.png" alt="" /><img src="/data/upload/editer/image/2018/05/21/5b02549926d35.png" alt="" /><img src="/data/upload/editer/image/2018/05/21/5b0254a05e31e.png" alt="" /><img src="/data/upload/editer/image/2018/05/21/5b0254a62c282.png" alt="" /><img src="/data/upload/editer/image/2018/05/21/5b0254ada8d9f.png" alt="" /><img src="/data/upload/editer/image/2018/05/21/5b0254b49f8db.png" alt="" /><img src="/data/upload/editer/image/2018/05/21/5b0254b9d3d8a.png" alt="" /><img src="/data/upload/editer/image/2018/05/21/5b0254bfadd3a.png" alt="" /><img src="/data/upload/editer/image/2018/05/21/5b0254c7f408f.png" alt="" />', 0, 1),
(2, '媒体传播', '3000.00', '1805/21/5b025505c6b79.png', '<img src="/data/upload/editer/image/2018/05/21/5b0254ea190eb.png" alt="" /><img src="/data/upload/editer/image/2018/05/21/5b0254ef836cd.png" alt="" /><img src="/data/upload/editer/image/2018/05/21/5b0254f639ecd.png" alt="" /><img src="/data/upload/editer/image/2018/05/21/5b0254fb5727c.png" alt="" /><img src="/data/upload/editer/image/2018/05/21/5b025501960b6.png" alt="" />', 0, 1);

-- --------------------------------------------------------

--
-- 表的结构 `iqw_setting`
--

CREATE TABLE IF NOT EXISTS `iqw_setting` (
  `name` varchar(100) NOT NULL,
  `data` text NOT NULL,
  `remark` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `iqw_setting`
--

INSERT INTO `iqw_setting` (`name`, `data`, `remark`) VALUES
('site_name', '', ''),
('site_title', '', ''),
('site_keyword', '', ''),
('site_description', '', ''),
('site_status', '1', ''),
('closed_reason', '网站升级中。。', ''),
('site_icp', '', ''),
('statistics_code', '', ''),
('statics_url', '', ''),
('mail_server', 'a:6:{s:4:"mode";s:4:"smtp";s:4:"host";s:12:"smtp.163.com";s:4:"port";s:2:"25";s:4:"from";s:14:"iqwweb@163.com";s:13:"auth_username";s:6:"iqwweb";s:13:"auth_password";s:10:"iqwweb2014";}', ''),
('item_check', '0', ''),
('score_rule', 'a:16:{s:8:"register";s:2:"20";s:13:"register_nums";s:1:"1";s:5:"login";s:2:"10";s:10:"login_nums";s:1:"5";s:7:"pubitem";s:2:"20";s:12:"pubitem_nums";s:2:"10";s:8:"likeitem";s:1:"1";s:13:"likeitem_nums";s:2:"20";s:9:"joinalbum";s:1:"2";s:14:"joinalbum_nums";s:2:"10";s:6:"fwitem";s:1:"2";s:11:"fwitem_nums";s:2:"10";s:6:"pubcmt";s:1:"1";s:11:"pubcmt_nums";s:1:"5";s:7:"delitem";s:3:"-20";s:12:"delitem_nums";s:3:"100";}', ''),
('album_cover_items', '5', '专辑封面显示图片数量'),
('integrate_code', 'default', ''),
('integrate_config', '', ''),
('hot_tags', '家居,花园,美食,旅行,创意,建筑,户外', ''),
('wall_spage_max', '3', ''),
('wall_spage_size', '10', ''),
('book_page_max', '100', ''),
('default_keyword', '懒得逛了，我搜~', ''),
('album_default_title', '默认专辑', ''),
('avatar_size', '120,240,500', ''),
('attr_allow_exts', 'jpg,gif,png,jpeg,swf,xls,xlsx,doc,pdf', ''),
('attr_allow_size', '2048', ''),
('itemcate_img', 'a:2:{s:5:"width";s:3:"800";s:6:"height";s:3:"800";}', ''),
('reg_protocol', '会员注册协议说明！', ''),
('score_article_img', 'a:4:{s:6:"bwidth";s:3:"500";s:7:"bheight";s:3:"500";s:6:"swidth";s:3:"350";s:7:"sheight";s:3:"350";}', ''),
('score_other_img', 'a:4:{s:6:"bwidth";s:3:"800";s:7:"bheight";s:3:"800";s:6:"swidth";s:3:"350";s:7:"sheight";s:3:"350";}', ''),
('item_cover_comments', '2', ''),
('user_intro_default', '这个家伙太懒，什么都木留下~', ''),
('ipban_switch', '0', ''),
('score_item_img', 'a:4:{s:6:"bwidth";s:3:"800";s:7:"bheight";s:3:"800";s:6:"swidth";s:3:"350";s:7:"sheight";s:3:"350";}', ''),
('seo_config', 'a:6:{s:4:"book";a:3:{s:5:"title";s:23:"{tag_name}-{site_title}";s:8:"keywords";s:11:"{site_name}";s:11:"description";s:18:"{site_description}";}s:4:"cate";a:3:{s:5:"title";s:23:"{cate_name}-{seo_title}";s:8:"keywords";s:14:"{seo_keywords}";s:11:"description";s:17:"{seo_description}";}s:5:"album";a:3:{s:5:"title";s:6:"专辑";s:8:"keywords";s:11:"{site_name}";s:11:"description";s:18:"{site_description}";}s:10:"album_cate";a:3:{s:5:"title";s:11:"{seo_title}";s:8:"keywords";s:14:"{seo_keywords}";s:11:"description";s:17:"{seo_description}";}s:12:"album_detail";a:3:{s:5:"title";s:13:"{album_title}";s:8:"keywords";s:13:"{album_intro}";s:11:"description";s:23:"杂志详细Description";}s:4:"item";a:3:{s:5:"title";s:12:"{item_title}";s:8:"keywords";s:10:"{item_tag}";s:11:"description";s:12:"{item_intro}";}}', ''),
('item_img', 'a:2:{s:5:"width";s:3:"500";s:6:"height";s:3:"500";}', ''),
('item_simg', 'a:2:{s:5:"width";s:3:"350";s:6:"height";s:3:"350";}', ''),
('item_bimg', 'a:2:{s:5:"width";s:3:"800";s:6:"height";s:3:"800";}', ''),
('attach_path', 'data/upload/', ''),
('wall_distance', '500', ''),
('reg_status', '1', ''),
('reg_closed_reason', '<h1>暂时关闭注册</h1>', ''),
('index_wall', '1', ''),
('tomadd_1', '活动召集\r\n精彩分享\r\n品牌机构\r\n基础知识\r\n每日精选', ''),
('tomadd_2', '', ''),
('tomadd_3', '', ''),
('tomadd_4', '', '');

-- --------------------------------------------------------

--
-- 表的结构 `iqw_tag`
--

CREATE TABLE IF NOT EXISTS `iqw_tag` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `iqw_user`
--

CREATE TABLE IF NOT EXISTS `iqw_user` (
  `id` int(10) NOT NULL,
  `openid` varchar(255) NOT NULL,
  `avatarUrl` text NOT NULL,
  `user_type` tinyint(2) NOT NULL COMMENT '会员类型1创业，2投资',
  `type_id` varchar(255) NOT NULL COMMENT '行业id',
  `con_name` varchar(50) NOT NULL COMMENT '单位机构名称',
  `username` varchar(20) NOT NULL DEFAULT '0',
  `the_user` varchar(255) NOT NULL COMMENT '姓名',
  `item_name` varchar(255) NOT NULL COMMENT '项目名称',
  `position` varchar(255) NOT NULL COMMENT '职位',
  `wechat` varchar(255) NOT NULL COMMENT '微信号',
  `tj_phone` varchar(255) NOT NULL COMMENT '引荐人手机号',
  `tj_type` tinyint(3) NOT NULL COMMENT '1内部，2外部',
  `note` varchar(255) NOT NULL COMMENT '备注',
  `password` varchar(32) NOT NULL DEFAULT '0',
  `money` decimal(10,2) NOT NULL COMMENT '余额',
  `email` varchar(30) DEFAULT '',
  `phone` varchar(30) DEFAULT NULL,
  `intro` varchar(512) NOT NULL DEFAULT '',
  `info` varchar(512) DEFAULT '',
  `sex` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1:男,0:女',
  `type` tinyint(2) NOT NULL DEFAULT '1' COMMENT '会员类型：1，注册会员 2，收费会员',
  `city` varchar(20) NOT NULL,
  `country` varchar(30) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `reg_ip` varchar(15) NOT NULL,
  `cityid` int(5) NOT NULL DEFAULT '0',
  `cityname` varchar(20) DEFAULT NULL,
  `reg_time` int(10) unsigned NOT NULL DEFAULT '0',
  `last_time` int(10) unsigned NOT NULL DEFAULT '0',
  `last_ip` varchar(15) DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `is_auth` tinyint(2) NOT NULL COMMENT '是否认证。1为已认证'
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `iqw_user`
--

INSERT INTO `iqw_user` (`id`, `openid`, `avatarUrl`, `user_type`, `type_id`, `con_name`, `username`, `the_user`, `item_name`, `position`, `wechat`, `tj_phone`, `tj_type`, `note`, `password`, `money`, `email`, `phone`, `intro`, `info`, `sex`, `type`, `city`, `country`, `address`, `reg_ip`, `cityid`, `cityname`, `reg_time`, `last_time`, `last_ip`, `status`, `is_auth`) VALUES
(1, 'oo3gg0bL-WKOMcALbjlnU91FOem4', 'https://wx.qlogo.cn/mmopen/vi_32/DYAIOgq83epm2iaYJt0ZkwGHbGYOeZpCP4Crz07dH04h0sdNKaJic7w8Lia8kXY6DymjkkEs7DicWoicuh5ZfA7VDhw/132', 0, '', '', '行元', '', '', '', '', '', 0, '', '0', '0.00', '', NULL, '', '', 1, 1, '', NULL, NULL, '', 0, 'Shenzhen', 1585817534, 0, '0', 1, 0),
(2, 'oo3gg0XUbAIR_cP38w6er8GkUGa8', '', 0, '', '', '0', '', '', '', '', '', 0, '', '0', '0.00', '', NULL, '', '', 0, 1, '', NULL, NULL, '', 0, NULL, 1585843890, 0, '0', 1, 0),
(3, 'oo3gg0UEQax8gGYW4nH82hGNAvLY', '', 0, '', '', '0', '', '', '', '', '', 0, '', '0', '0.00', '', NULL, '', '', 0, 1, '', NULL, NULL, '', 0, NULL, 1585963522, 0, '0', 1, 0),
(4, 'oo3gg0eBRvrkzp8Gixd1EVSUHrLc', '', 0, '', '', '0', '', '', '', '', '', 0, '', '0', '0.00', '', NULL, '', '', 0, 1, '', NULL, NULL, '', 0, NULL, 1585963522, 0, '0', 1, 0),
(5, 'oo3gg0XMU4ySqb_hI4mAICCq09uU', 'https://wx.qlogo.cn/mmhead/iawbcLCHcSjvcAbUFPpUX2xHMGdXh5Bbo55u4JeHSlNQ/132', 0, '', '', '林俊原', '', '', '', '', '', 0, '', '0', '0.00', '', NULL, '', '', 0, 1, '', NULL, NULL, '', 0, '', 1586085226, 0, '0', 1, 0),
(6, 'oo3gg0ZT02TPd3IZJdTz8t-z1YxA', '', 0, '', '', '0', '', '', '', '', '', 0, '', '0', '0.00', '', NULL, '', '', 0, 1, '', NULL, NULL, '', 0, NULL, 1586431184, 0, '0', 1, 0);

-- --------------------------------------------------------

--
-- 表的结构 `iqw_user_address`
--

CREATE TABLE IF NOT EXISTS `iqw_user_address` (
  `id` int(10) unsigned NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `consignee` varchar(20) NOT NULL,
  `address` varchar(255) NOT NULL,
  `zip` varchar(10) NOT NULL,
  `mobile` varchar(15) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `iqw_user_bind`
--

CREATE TABLE IF NOT EXISTS `iqw_user_bind` (
  `uid` int(10) unsigned NOT NULL,
  `type` varchar(60) NOT NULL,
  `keyid` varchar(100) NOT NULL,
  `info` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `iqw_user_follow`
--

CREATE TABLE IF NOT EXISTS `iqw_user_follow` (
  `uid` int(10) unsigned NOT NULL COMMENT '用户ID',
  `follow_uid` int(10) unsigned NOT NULL COMMENT '被关注者ID',
  `add_time` int(10) unsigned NOT NULL,
  `mutually` tinyint(1) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `iqw_user_info`
--

CREATE TABLE IF NOT EXISTS `iqw_user_info` (
  `id` int(10) NOT NULL,
  `uid` int(10) unsigned NOT NULL DEFAULT '0',
  `varchar_1` varchar(32) DEFAULT NULL,
  `varchar_2` varchar(32) DEFAULT NULL,
  `varchar_3` varchar(32) DEFAULT NULL,
  `varchar_4` varchar(32) DEFAULT NULL,
  `varchar_5` varchar(32) DEFAULT NULL,
  `varchar_6` varchar(64) DEFAULT NULL COMMENT ' ',
  `varchar_7` varchar(64) DEFAULT '',
  `varchar_8` varchar(64) DEFAULT NULL,
  `varchar_9` varchar(64) DEFAULT NULL,
  `varchar_10` varchar(64) DEFAULT NULL,
  `varchar_30` varchar(64) DEFAULT NULL,
  `varchar_31` varchar(64) DEFAULT NULL,
  `varchar_32` varchar(64) DEFAULT NULL,
  `varchar_33` varchar(64) DEFAULT NULL,
  `varchar_34` varchar(64) DEFAULT NULL,
  `varchar_35` varchar(64) DEFAULT NULL,
  `varchar_11` varchar(256) DEFAULT NULL,
  `varchar_12` varchar(256) DEFAULT NULL,
  `varchar_13` varchar(256) DEFAULT NULL,
  `varchar_14` varchar(256) DEFAULT NULL,
  `varchar_15` varchar(256) DEFAULT NULL,
  `varchar_16` text
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `iqw_user_info`
--

INSERT INTO `iqw_user_info` (`id`, `uid`, `varchar_1`, `varchar_2`, `varchar_3`, `varchar_4`, `varchar_5`, `varchar_6`, `varchar_7`, `varchar_8`, `varchar_9`, `varchar_10`, `varchar_30`, `varchar_31`, `varchar_32`, `varchar_33`, `varchar_34`, `varchar_35`, `varchar_11`, `varchar_12`, `varchar_13`, `varchar_14`, `varchar_15`, `varchar_16`) VALUES
(1, 113, '小型企业', '独资', '1234456', '测试', '0766-23232323', '402020@qq.com', '12221121212', '322323232323', '李天一', '湖北宜昌', '2015-12-23', '100', '宜昌', '232323', 'www.iqwweb.net', '111111', '222222', '宜昌腾云科技有限公司是专业致力于安防监控、智能楼宇、停车道闸的高科技公司。是集弱电系统项目设计、销售、工程、服务于一体的综合机构。我们努力把腾云科技打造成宜昌地区最专业的最有影响力的弱电系统公司。', NULL, NULL, NULL, '企业介绍'),
(2, 31, '大型企业', '', '33333', '3333', '4444', '', '', '', '', 'test123', '', '', '', '', '', '', '', '主营业务', NULL, NULL, NULL, '企业介绍信息！'),
(3, 34, '大型企业', '正德厚生 臻于至善', '正德厚生 臻于至善', '正德厚生 臻于至善', '正德厚生 臻于至善', '正德厚生 臻于至善', '正德厚生 臻于至善', '正德厚生 臻于至善', '正德厚生 臻于至善', '正德厚生 臻于至善', '正德厚生 臻于至善', '正德厚生 臻于至善', '正德厚生 臻于至善', '正德厚生 臻于至善', '正德厚生 臻于至善', '正德厚生 臻于至善', '正德厚生 臻于至善', '年营业额\r\n107647.3百万美元（2014年）\r\n注册资本\r\n3000亿人民币\r\n上市市场\r\n港交所；纽约证交所\r\n董事长\r\n尚冰\r\n总裁\r\n李跃\r\n客服电话\r\n10086\r\n世界500强\r\n第55位（2014年）\r\n核心价值观\r\n正德厚生 臻于至善\r\n知名品牌\r\n全球通、动感地带、神州行', NULL, NULL, NULL, '中国移动通信集团公司，1999年07月22日成立，经营范围包括基础电信业务（具体经营范围以许可证为准，有效期至2019年1月6日）等。\r\n基本信息\r\n公司名称\r\n中国移动通信集团公司\r\n公司口号\r\n沟通从心开始；移动信息专家\r\n外文名称\r\nChina Mobile Communications Corporation（CMCC）\r\n年营业额\r\n5604亿元人民币（2012年）\r\n总部地点\r\n北京\r\n员工数\r\n197,303\r\n成立时间\r\n2000年（庚辰年）4月20日\r\n经营范围\r\n全通信行业\r\n公司性质\r\n大型上市央企\r\n \r\n年营业额\r\n107647.3百万美元（2014年）\r\n注册资本\r\n3000亿人民币\r\n上市市场\r\n港交所；纽约证交所\r\n董事长\r\n尚冰\r\n总裁\r\n李跃\r\n客服电话\r\n10086\r\n世界500强\r\n第55位（2014年）\r\n核心价值观\r\n正德厚生 臻于至善\r\n知名品牌\r\n全球通、动感地带、神州行'),
(4, 96, '大型企业', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ' 安琪酵母股份有限公司是从事酵母及酵母衍生物产品生产、经营、技术服务的专业化公司，是国家重点高新技术企业。公司主导产品包括面包酵母、酿酒酵母、酵母抽提物、营养酵母、生物饲料添加剂等。产品应用领域为烘焙、发酵面食、酿酒等食品制造业及医药保健、动物养殖业等。公司酵母生产规模、市场占有率均居于国内同行乃至亚洲之首，是中国酵母行业的排头兵，"安琪"商标是中国驰名商标。', NULL, NULL, NULL, '       安琪酵母股份有限公司是从事酵母及酵母衍生物产品生产、经营、技术服务的专业化公司，是国家重点高新技术企业。公司主导产品包括面包酵母、酿酒酵母、酵母抽提物、营养酵母、生物饲料添加剂等。产品应用领域为烘焙、发酵面食、酿酒等食品制造业及医药保健、动物养殖业等。公司酵母生产规模、市场占有率均居于国内同行乃至亚洲之首，是中国酵母行业的排头兵，"安琪"商标是中国驰名商标。\r\n\r\n安琪酵母股份有限公司(以下简称"公司")是于1998年3月25日经湖北省体改委鄂体改[1998]34号文批准,以湖北安琪生物集团有限公司为主要发起人,联合宜昌先锋科技发展有限公司、宜昌西陵酒业有限公司、贵州润丰(集团)实业有限公司、宜昌溢美堂调味品有限公司以发起方式设立的股份有限公司。湖北安琪生物集团有限公司以1997年12月31日经评估确认后的净资产6,929.66万元投入,折合股本6920万股;其他股东以现金出资共计3,150万元,折合股本3150万股。公司设立时总股本为10,070万股。2000年7月31日经中国证券监督管理委员会证监发字(2000)105号文批准同意公司向社会公众公开发行人民币普通股(A股)3,500万股,2000年8月3日公司社会公众股通过上海证券交易所系统上网定价发行,并于8月18日挂牌上市交易,发行后公司总股本为13,570万股。2007年8月8日,经公司2007年第一次临时股东大会议通过以2007年中期总股本13,570万股为基数,以资本公积金向全体股东每10股转增10股,共转增13,570万股,转增后公司总股本为27,140万股。[1]'),
(5, 112, '中型企业', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '北大燕园财税实战交流中心（武汉中联合达顾问管理有限公司）于2011年6月在武汉成立，是一家集财税培训、咨询、考试等业务为一体的综合教育培训机构。作为北京大学民经院研究工作的重要对外窗口，汇聚北京大学学者教授，以及政府官员、国内外知名高校、研究机构专家为湖北企业提供服务。在湖北地区主要负责开展以下两个项目: 一、会员制财税培训：以大中型企业为服务对象，为企业总裁、财务总监、财务经理提供财务管理、税务管理等方面培训。邀请国内外知名的财务管理领域专家、学者、老师组成强大的师资团队，根据国家经济、财会、税收等最新政', NULL, NULL, NULL, '北大燕园财税实战交流中心（武汉中联合达顾问管理有限公司）于2011年6月在武汉成立，是一家集财税培训、咨询、考试等业务为一体的综合教育培训机构。作为北京大学民经院研究工作的重要对外窗口，汇聚北京大学学者教授，以及政府官员、国内外知名高校、研究机构专家为湖北企业提供服务。在湖北地区主要负责开展以下两个项目: 一、会员制财税培训：以大中型企业为服务对象，为企业总裁、财务总监、财务经理提供财务管理、税务管理等方面培训。邀请国内外知名的财务管理领域专家、学者、老师组成强大的师资团队，根据国家经济、财会、税收等最新政策，组织培训课程，帮助企业创造收益。二、中英政府--财务总监（CFO）国际国内双职业资格认证考试培训：为顺应世界经济一体化趋势、与国际职业资格标准体系接轨，1999年6月13日《中共中央、国务院关于深化教育改革全面推进素质教育的决定》指出：“在全社会实行学业证书和职业资格证书并重的制度”。剑桥大学商务管理——财务管理高级专业级资格认证(批准文件劳社厅函〔2003〕343号，证书注册号为劳引字〔2003〕003号http://zyxm.osta.org.cn/htm/844/9508.html)是目前国际上最高级别的财务管理国际职业资格认证培训之一。 其课程是迄今为止唯一由中国国家人力资源和社会保障部引进的高级财务管理领域职业资格认证项目（文件号：劳社厅函（2003）343号），其职业资格既是国际职业资格最高级，又是国内职业资格最高级。同时，该项目的合格学员可赴英国剑桥大学参加一年一度的颁证典礼；获得剑桥大学永久学籍；并享受中华人民共和国国家高级人才终身津贴，与高级职称享有同等待遇。\r\n'),
(6, 111, '中型企业', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '全面学习重点解决多个核心问题：即在战略明晰基础之上、选择何种组织管控模式、如何优化组织结构、如何规范权责体系和核心管理流程；集团总部管控体系搭建、总部战略规划与制定、集团投融资策略、集团并购重组后的整合、集团企业在迅速扩张时的风险防范、构建集团盈利模式等方法与工具，多角度全方位深入解决集团管控问题。', NULL, NULL, NULL, ''),
(7, 110, '中型企业', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '新思略企业管理顾问具体服务项目包括“问题解决-通关参与”式精品公开课、主题研习坊、微咨询内训以及标杆名企考察、在线微课堂等标准服务项目，另可结合企业及个人实际情况提供年度系统学习发展计划、内部专兼职讲师团队建设（辅导咨询）、内部精品课程库打造（咨询辅导）、论坛沙龙策划、企业管理顾问等深度定制合作项目。（\r\n', NULL, NULL, NULL, ''),
(8, 109, '大型企业', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '台湾健峰企管集团成立近20年来，坚持3T（TQM,TPM,TPS）战略及e化管理，以专业咨询顾问与管理人才培训为主要业务。目前拥有60余位专任专职的顾问师群和300余位热心专业的行政人员。集团成立迄今已辅导台塑集团、统一集团、国瑞汽车、英业达等4,000余家台湾企业，深圳华为科技、湖南远大空调、浙江方太厨具、帅康集团、卧龙控股、浪莎针织、雷士照明、欧普照明等2,000余家大陆企业，并为包括德力西集团、正泰集团、奥康集团、株洲电力机车厂、业通家居、春源钢铁、兴莱鞋业等知名公司在内的全国各地企业培训了20余万位', NULL, NULL, NULL, ''),
(9, 101, '微型企业', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '企建教育培训与服务（非职业技能证书的培训）；管理咨询服务；科技咨询与培训服务；商务信息咨询与培训服务；软件开发与培训服务。（国家有专项规定的项目经审批后或凭有效许可证方可经营）。', NULL, NULL, NULL, ''),
(10, 100, '小型企业', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '　“企建工程”把培训课堂直接设在企业，相当于给企业设置了一个高品质的管理能力提升培训的商学院，解决了传统培训与工作冲突、成本高等问题。同时，满足了企业和个人的自学需求，有效地实现了企业学习和培训的目标，为员工提供了一套高价值的福利系统。该项目目前已邀请了全国近百名专家轮流登台授课，制定了一系列课程，课程体系分为中国经济政策大讲堂、名师大讲堂、企业精英大讲堂、管理通大讲堂等，现阶段正通过网络在全国推广。', NULL, NULL, NULL, ''),
(11, 108, '小型企业', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '    诚弘所全体律师长期以来，以保障人权、追求公正、促进法治为使命，诚信执业，尽职尽责，维护当事人的合法权益，赢得了社会和当事人的信赖。27年来，全所律师以饱满的政治热情和诚信执著的敬业精神为当事人提供帮助，承办了一大批重大疑难案件，担任多家企业和政府的法律顾问，为政府、企业保驾护航，出谋划策，取得了良好的经济效益和社会效益。\r\n      湖北诚弘律师事务所全体人员牢记“诚信敬业，弘义兴邦”的所训，热心公益，勤奋敬业，与时俱进，全力开拓法律业务，时刻准备以优质的服务、良好的信誉和勤奋的精神为维护社会发展', NULL, NULL, NULL, '  湖北诚弘律师事务所成立于1981年。其前身为宜昌县法律顾问处、宜昌县律师事务所和湖北晓曦律师事务所。湖北晓曦律师事务所2000年10月改制为合伙所，２００７年更名为“湖北诚弘律师事务所”。本所位于宜昌市夷陵区平湖大道1号宜昌市夷陵区司法局院内。本所拥有180余平方米的办公用房，购置了先进的电脑等电子办公设备，配备了即时查询的各种法律法规数据库软件（包含自1949年至今的法律、行政法规、部门规章、地方性法规规章、司法解释和国际条约及其惯例）及其他各门类的法学理论书籍。全所现有专职律师及行政人员13名，其中二级律师３名，三级律师６名，初级律师２名，行政人员２名。另有实习人员数名。专职律师均具有法学本科学历，７名获得法学学士学位，他们拥有精湛的诉讼技巧。1981年以来，本所多次被省、市、区司法行政部门评为“先进律师事务所”、“先进集体”；律师个人也有多人次被省、市、区司法行政部门评为“优秀律师”和“先进个人”。\r\n      诚弘人秉承“诚信敬业”精神，担当“弘义兴邦”使命！'),
(12, 106, '小型企业', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '湖北群晖律师事务所位于湖北省宜昌市夷陵区平湖大道1号，主营项目：法律服务 。近年不断更新硬件设施，改善服务，提升软实力，为广大市民提供更加好的服务。', NULL, NULL, NULL, ''),
(13, 105, '小型企业', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '湖北君任律师事务所地处欣欣向荣的宜昌开发区海关大楼六楼，是于2005年12月12日成立的一所全新的法律服务机构。本所学习国际先进的律师事务所管理经验，突破了我国律师事务所管理的陈旧模式，以全新的理念和制度，建立了“整体运营，资源共享，各扬所长，共同发展”的律师事务所运行模式。本所成立之后迅速发展，形成了国际法律事务、民商事法律事务、行政法律事务、房地产法律事务、刑事法律事务等多个专业团队，并与法学院校、律师专业组织、宜昌市实业界、各部门建立了广泛的联系。本所建立的高效运行和专业化发展模式以及受人之托，忠人之', NULL, NULL, NULL, ''),
(14, 104, '中型企业', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '湖北民基律师事务所是一家具有服务特色和专业品牌的合伙制律师事务所，由宜昌市司法局直属管理。民基律师用勤业敬业的职业态度、团队和谐的工作理念、富有成效的执业成果，赢得了社会各界的充分肯定。主要荣誉：全国优秀律师事务所、湖北省优秀律师事务所、宜昌市优秀律师事务所；全国律师行业创先争优活动先进集体、全国律师行业创先争优活动示范点、湖北省政法系统先进基层党组织、全省律师行业先进基层党组织、宜昌市直机关先进基层党组织；湖北省文化建设示范单位等。', NULL, NULL, NULL, ''),
(15, 103, '中型企业', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '  湖北楚贤律师事务所，是宜昌市司法局直属的综合型律师事务所，是在宜昌市法学会的大力支持下设立的具有独立法人资格的法律服务机构。所内现拥有近500平方米的自有产权办公用房，设施齐全、环境优雅。同时应宜昌市法学会要求本所在宜昌市法学会常设办公地点，为宜昌市法学会会员单位提供高效法律服务。 ', NULL, NULL, NULL, ''),
(16, 99, '微型企业', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '本单位位于湖北省宜昌市远安县鸣凤镇东门路3号，主营项目：咨询服务。近年不断更新硬件设施，改善服务，提升软实力，为广大市民提供更加好的服务。', NULL, NULL, NULL, ''),
(17, 98, '中型企业', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '   湖北百思特律师事务所原名宜昌市万丰律师事务所（2000 年根据司法部统一要求而更名），成立于 1996 年，是宜昌市成立最早的大型合伙制律师事务所之一。自成立以来，通过立以来通过艰苦创业，现发展到55名执业律师、 8名实习律师。', NULL, NULL, NULL, ''),
(18, 107, '中型企业', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '宜昌鸿宇连邦软件有限责任公司成立于一九九七年三月，公司先后通过国家软件企业认定、国家高新技术企业认定、系统集成四级资质认定、ISO9000质量体系认证等一系列资质，员工分别持有软件工程师、信息系统管理师、网络工程师、系统分析设计师、中高级程序k员、专职测试工程师、维护工程师、项目经理等证书，队伍年轻，富有朝气和活力。\r\n', NULL, NULL, NULL, ''),
(19, 97, '中型企业', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '宜昌纵横贝尔科技有限公司是宜昌最大的专业从事管理软件销售、咨询、开发与服务的软件公司，国家高新技术企业、"双软"认证企业、宜昌市科技型中小企业创新成长工程试点企业、西陵区总部企业、用友软件钻石级经销商。\r\n', NULL, NULL, NULL, ''),
(20, 93, '中型企业', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '湖北集防科技有限公司是一家集计算机软硬件开发、销售；楼宇综合布线及监控系统设计、安装；电子自动化控制系统的设计、安装；消防器材、五金工具、电力设备、办公设备及耗材销售；网络维护等一体的高新技术企业。长期专注于发展新兴智能产业，目前已发展成为数字社区、智能家居、智慧酒店整体解决方案提供商、产品提供商及工程施工商。公司员工近50人，其中注册建造师5人，高级工程师3人，中级工程师20人，初级工程师10人。', NULL, NULL, NULL, ''),
(21, 88, '中型企业', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ' 湖北凯利丰绿色建材开发有限公司位于湖北省宜昌市三峡移民创业园，是集绿色建材咨询与设计、发泡水泥保温材料研发、生产与工程施工为一体的节能高新技术企业。公司注册为“新材料技术推广服务”行业，注册资金1500万元，其使命是为建筑节能提供综合解决方案。', NULL, NULL, NULL, ''),
(22, 87, '小型企业', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '宜昌市龙凤沙发有限公司创立于1988年。集研发、生产、销售为一体的专业家具制造企业，经营范围包括各类沙发、软床、茶几、餐桌椅、红木、实木等家具品种。龙凤沙发始终秉承“做百年企业，铸永恒品牌”企业宗旨，与时俱进，不断开拓进取。', NULL, NULL, NULL, ''),
(23, 36, '中型企业', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '公司主要从事液晶背景光源（CCFL冷阴极荧光灯管、LED及LED-LB产品）、CCFL液晶民用照明、LED民用照明产品的研发、制造及销售；是国家重点高新技术企业、省市重点培育高新技术企业，也是国内显示产业链的重要成员之一。\r\n', NULL, NULL, NULL, ''),
(24, 102, '中型企业', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '   宜昌三峡会计师事务所有限公司是经湖北省财政厅批准，在工商行政管理部门登记注册，拥有各类审计、资产评估、工程造价、税务鉴证、司法鉴定、会计代理、科技项目咨询等多种执业资格综合服务的专业中介机构。分别还成立了具有独法人资格的四个公司，即：宜昌红峡资产评估有限公司，宜昌四维合伙税务师事务所，湖北夷陵造价咨询事务所有限公司，宜昌市崇佳生产力促进有限公司。', NULL, NULL, NULL, ''),
(25, 95, '大型企业', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ' 河北省冀州市银河化工有限责任公司属股份制企业，现有员工260余人，其中专业人员56人，占地面积180亩，固定资产6000万元，年销售额超两亿元。主要产品是甲醛、甲缩醛、多聚甲醛、乌洛托品等化工产品。', NULL, NULL, NULL, ''),
(26, 94, '中型企业', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '本公司是一家设计、生产、销售纺织装饰面料的专业公司。公司拥有幅宽180cm-300cm剑杆织机、转移印花机拼先后引进意大利提花剑杆机先进生产设备。生产不同幅宽的装饰布，主要生产大提花、小提花的色织、印花等沙发、窗帘布料以及床上用品。所产的装饰布料风格独特，种类繁多，花色齐全，适合不同区域的风格，产品销往日本、美国、澳大利亚、新家坡、中东等国家和地区。\r\n', NULL, NULL, NULL, ''),
(27, 77, '大型企业', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '公司生产的悬架系统弹簧、动力系统弹簧、车身及内饰弹簧、通用弹簧及其他弹簧产品广泛运用于交通运输设备、机械、五金、仪器仪表、家用电器等主要市场。“美力”商标已被评为浙江省著名商标，“美力”商号被浙江省工商行政管理局授予“浙江省知名商号”等荣誉称号。公司已成为中国弹簧行业具有较强影响力的品牌之一，也是民营弹簧制造企业中的佼佼者。', NULL, NULL, NULL, '');

-- --------------------------------------------------------

--
-- 表的结构 `iqw_user_msgtip`
--

CREATE TABLE IF NOT EXISTS `iqw_user_msgtip` (
  `id` int(11) NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `type` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '1:评论，2:报名，3:关注，4:赞我，5:通知去评分',
  `fromid` int(11) NOT NULL DEFAULT '0',
  `articleid` int(11) NOT NULL DEFAULT '0',
  `num` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `status` int(2) NOT NULL DEFAULT '0' COMMENT '0没看 1已看'
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `iqw_user_stat`
--

CREATE TABLE IF NOT EXISTS `iqw_user_stat` (
  `uid` int(10) unsigned NOT NULL,
  `action` varchar(20) NOT NULL,
  `num` int(10) unsigned NOT NULL,
  `last_time` int(10) unsigned NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `iqw_ad`
--
ALTER TABLE `iqw_ad`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `iqw_adboard`
--
ALTER TABLE `iqw_adboard`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `iqw_address_set`
--
ALTER TABLE `iqw_address_set`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `iqw_admin`
--
ALTER TABLE `iqw_admin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_name` (`username`);

--
-- Indexes for table `iqw_admin_auth`
--
ALTER TABLE `iqw_admin_auth`
  ADD KEY `role_id` (`role_id`,`menu_id`);

--
-- Indexes for table `iqw_admin_role`
--
ALTER TABLE `iqw_admin_role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `iqw_article`
--
ALTER TABLE `iqw_article`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `iqw_article2`
--
ALTER TABLE `iqw_article2`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `iqw_article_cate`
--
ALTER TABLE `iqw_article_cate`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `iqw_article_page`
--
ALTER TABLE `iqw_article_page`
  ADD PRIMARY KEY (`cate_id`);

--
-- Indexes for table `iqw_auto_user`
--
ALTER TABLE `iqw_auto_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `iqw_badword`
--
ALTER TABLE `iqw_badword`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `iqw_balance_log`
--
ALTER TABLE `iqw_balance_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `iqw_collection`
--
ALTER TABLE `iqw_collection`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `iqw_fb_rels`
--
ALTER TABLE `iqw_fb_rels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `iqw_flink`
--
ALTER TABLE `iqw_flink`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `iqw_flink_cate`
--
ALTER TABLE `iqw_flink_cate`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `iqw_focus`
--
ALTER TABLE `iqw_focus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `iqw_industry`
--
ALTER TABLE `iqw_industry`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `iqw_ipban`
--
ALTER TABLE `iqw_ipban`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `iqw_item`
--
ALTER TABLE `iqw_item`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `iqw_itemh_img`
--
ALTER TABLE `iqw_itemh_img`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `iqw_item_apply`
--
ALTER TABLE `iqw_item_apply`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `iqw_item_can`
--
ALTER TABLE `iqw_item_can`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `iqw_item_h`
--
ALTER TABLE `iqw_item_h`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `iqw_item_other`
--
ALTER TABLE `iqw_item_other`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `iqw_item_pay`
--
ALTER TABLE `iqw_item_pay`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `iqw_item_pl`
--
ALTER TABLE `iqw_item_pl`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `iqw_item_red`
--
ALTER TABLE `iqw_item_red`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `iqw_item_seen`
--
ALTER TABLE `iqw_item_seen`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `iqw_item_sub`
--
ALTER TABLE `iqw_item_sub`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `iqw_item_view`
--
ALTER TABLE `iqw_item_view`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `iqw_item_wt`
--
ALTER TABLE `iqw_item_wt`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `iqw_jisiguan`
--
ALTER TABLE `iqw_jisiguan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `iqw_jisiguan_coll`
--
ALTER TABLE `iqw_jisiguan_coll`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `iqw_jisiguan_list`
--
ALTER TABLE `iqw_jisiguan_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `iqw_jisiguan_list_img`
--
ALTER TABLE `iqw_jisiguan_list_img`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `iqw_jisiguan_liuyan`
--
ALTER TABLE `iqw_jisiguan_liuyan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `iqw_jisiguan_xw`
--
ALTER TABLE `iqw_jisiguan_xw`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `iqw_mail_queue`
--
ALTER TABLE `iqw_mail_queue`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `iqw_menu`
--
ALTER TABLE `iqw_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `iqw_message`
--
ALTER TABLE `iqw_message`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `iqw_message_tpl`
--
ALTER TABLE `iqw_message_tpl`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `iqw_nav`
--
ALTER TABLE `iqw_nav`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `iqw_oauth`
--
ALTER TABLE `iqw_oauth`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `iqw_other_set`
--
ALTER TABLE `iqw_other_set`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `iqw_remarks`
--
ALTER TABLE `iqw_remarks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `iqw_score_item`
--
ALTER TABLE `iqw_score_item`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `iqw_score_item_cate`
--
ALTER TABLE `iqw_score_item_cate`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `iqw_score_log`
--
ALTER TABLE `iqw_score_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `iqw_score_order`
--
ALTER TABLE `iqw_score_order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `iqw_seen`
--
ALTER TABLE `iqw_seen`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `iqw_service`
--
ALTER TABLE `iqw_service`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `iqw_setting`
--
ALTER TABLE `iqw_setting`
  ADD KEY `name` (`name`);

--
-- Indexes for table `iqw_tag`
--
ALTER TABLE `iqw_tag`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `iqw_user`
--
ALTER TABLE `iqw_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `iqw_user_address`
--
ALTER TABLE `iqw_user_address`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `iqw_user_bind`
--
ALTER TABLE `iqw_user_bind`
  ADD KEY `uid` (`uid`),
  ADD KEY `uid_type` (`uid`,`type`),
  ADD KEY `type_keyid` (`type`,`keyid`);

--
-- Indexes for table `iqw_user_follow`
--
ALTER TABLE `iqw_user_follow`
  ADD PRIMARY KEY (`uid`,`follow_uid`);

--
-- Indexes for table `iqw_user_info`
--
ALTER TABLE `iqw_user_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `iqw_user_msgtip`
--
ALTER TABLE `iqw_user_msgtip`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `iqw_user_stat`
--
ALTER TABLE `iqw_user_stat`
  ADD UNIQUE KEY `uid_type` (`uid`,`action`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `iqw_ad`
--
ALTER TABLE `iqw_ad`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=36;
--
-- AUTO_INCREMENT for table `iqw_adboard`
--
ALTER TABLE `iqw_adboard`
  MODIFY `id` smallint(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `iqw_address_set`
--
ALTER TABLE `iqw_address_set`
  MODIFY `id` smallint(4) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=502;
--
-- AUTO_INCREMENT for table `iqw_admin`
--
ALTER TABLE `iqw_admin`
  MODIFY `id` mediumint(6) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT for table `iqw_admin_role`
--
ALTER TABLE `iqw_admin_role`
  MODIFY `id` tinyint(3) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `iqw_article`
--
ALTER TABLE `iqw_article`
  MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=197;
--
-- AUTO_INCREMENT for table `iqw_article2`
--
ALTER TABLE `iqw_article2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `iqw_article_cate`
--
ALTER TABLE `iqw_article_cate`
  MODIFY `id` smallint(4) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=70;
--
-- AUTO_INCREMENT for table `iqw_auto_user`
--
ALTER TABLE `iqw_auto_user`
  MODIFY `id` smallint(4) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `iqw_badword`
--
ALTER TABLE `iqw_badword`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `iqw_balance_log`
--
ALTER TABLE `iqw_balance_log`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `iqw_collection`
--
ALTER TABLE `iqw_collection`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `iqw_fb_rels`
--
ALTER TABLE `iqw_fb_rels`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `iqw_flink`
--
ALTER TABLE `iqw_flink`
  MODIFY `id` smallint(4) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=42;
--
-- AUTO_INCREMENT for table `iqw_flink_cate`
--
ALTER TABLE `iqw_flink_cate`
  MODIFY `id` smallint(4) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `iqw_focus`
--
ALTER TABLE `iqw_focus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `iqw_industry`
--
ALTER TABLE `iqw_industry`
  MODIFY `id` smallint(4) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=205;
--
-- AUTO_INCREMENT for table `iqw_ipban`
--
ALTER TABLE `iqw_ipban`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `iqw_item`
--
ALTER TABLE `iqw_item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `iqw_itemh_img`
--
ALTER TABLE `iqw_itemh_img`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `iqw_item_apply`
--
ALTER TABLE `iqw_item_apply`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `iqw_item_can`
--
ALTER TABLE `iqw_item_can`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `iqw_item_h`
--
ALTER TABLE `iqw_item_h`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `iqw_item_other`
--
ALTER TABLE `iqw_item_other`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `iqw_item_pay`
--
ALTER TABLE `iqw_item_pay`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=88;
--
-- AUTO_INCREMENT for table `iqw_item_pl`
--
ALTER TABLE `iqw_item_pl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `iqw_item_red`
--
ALTER TABLE `iqw_item_red`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `iqw_item_seen`
--
ALTER TABLE `iqw_item_seen`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `iqw_item_sub`
--
ALTER TABLE `iqw_item_sub`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `iqw_item_view`
--
ALTER TABLE `iqw_item_view`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `iqw_item_wt`
--
ALTER TABLE `iqw_item_wt`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `iqw_jisiguan`
--
ALTER TABLE `iqw_jisiguan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `iqw_jisiguan_coll`
--
ALTER TABLE `iqw_jisiguan_coll`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=33;
--
-- AUTO_INCREMENT for table `iqw_jisiguan_list`
--
ALTER TABLE `iqw_jisiguan_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT for table `iqw_jisiguan_list_img`
--
ALTER TABLE `iqw_jisiguan_list_img`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=52;
--
-- AUTO_INCREMENT for table `iqw_jisiguan_liuyan`
--
ALTER TABLE `iqw_jisiguan_liuyan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `iqw_jisiguan_xw`
--
ALTER TABLE `iqw_jisiguan_xw`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=41;
--
-- AUTO_INCREMENT for table `iqw_mail_queue`
--
ALTER TABLE `iqw_mail_queue`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `iqw_menu`
--
ALTER TABLE `iqw_menu`
  MODIFY `id` smallint(6) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=464;
--
-- AUTO_INCREMENT for table `iqw_message`
--
ALTER TABLE `iqw_message`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=42;
--
-- AUTO_INCREMENT for table `iqw_message_tpl`
--
ALTER TABLE `iqw_message_tpl`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `iqw_nav`
--
ALTER TABLE `iqw_nav`
  MODIFY `id` smallint(4) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `iqw_oauth`
--
ALTER TABLE `iqw_oauth`
  MODIFY `id` smallint(4) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `iqw_other_set`
--
ALTER TABLE `iqw_other_set`
  MODIFY `id` smallint(4) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=70;
--
-- AUTO_INCREMENT for table `iqw_remarks`
--
ALTER TABLE `iqw_remarks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `iqw_score_item`
--
ALTER TABLE `iqw_score_item`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `iqw_score_item_cate`
--
ALTER TABLE `iqw_score_item_cate`
  MODIFY `id` smallint(4) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `iqw_score_log`
--
ALTER TABLE `iqw_score_log`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `iqw_score_order`
--
ALTER TABLE `iqw_score_order`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `iqw_seen`
--
ALTER TABLE `iqw_seen`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=77;
--
-- AUTO_INCREMENT for table `iqw_service`
--
ALTER TABLE `iqw_service`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `iqw_tag`
--
ALTER TABLE `iqw_tag`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `iqw_user`
--
ALTER TABLE `iqw_user`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `iqw_user_address`
--
ALTER TABLE `iqw_user_address`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `iqw_user_info`
--
ALTER TABLE `iqw_user_info`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT for table `iqw_user_msgtip`
--
ALTER TABLE `iqw_user_msgtip`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=17;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
