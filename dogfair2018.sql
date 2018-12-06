-- phpMyAdmin SQL Dump
-- version 4.4.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- 생성 시간: 18-10-09 15:34
-- 서버 버전: 10.1.13-MariaDB
-- PHP 버전: 7.0.0p1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- 데이터베이스: `dogfair2018`
--

-- --------------------------------------------------------

--
-- 테이블 구조 `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `adminid` varchar(20) NOT NULL,
  `adminpw` varchar(20) NOT NULL,
  `adminnm` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 테이블의 덤프 데이터 `admin`
--

INSERT INTO `admin` (`adminid`, `adminpw`, `adminnm`) VALUES
('admin', '1111', '관리자');

-- --------------------------------------------------------

--
-- 테이블 구조 `notice`
--

CREATE TABLE IF NOT EXISTS `notice` (
  `notice_id` int(11) NOT NULL,
  `notice_title` varchar(70) NOT NULL,
  `notice_content` text NOT NULL,
  `notice_wdate` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- 테이블의 덤프 데이터 `notice`
--

INSERT INTO `notice` (`notice_id`, `notice_title`, `notice_content`, `notice_wdate`) VALUES
(1, '2018 화성시 반려견 어울림 한마당 축제 개최', '<center><img src="http://www.dogfair2018.com/images/festival4.jpg" width="100%"></center>\r\n<center><img src="http://www.dogfair2018.com/images/festival2.jpg" width="100%"></center>\r\n<center><img src="http://www.dogfair2018.com/images/festival3.jpg" width="100%"></center>\r\n<center><img src="http://www.dogfair2018.com/images/festival1.jpg" width="100%"></center>', '2018-10-02 08:06:55'),
(2, '반려동물 동반입장 안내', '      <center><img src="http://www.dogfair2018.com/images/dogentrance.jpg" width="100%"></center>\r\n    ', '2018-10-04 01:16:24'),
(3, '[poster] 2018 화성시 반려견 어울림 한마당 축제', '   <center><img src="http://www.dogfair2018.com/images/poster1.jpg" width="100%"></center>\r\n    ', '2018-10-09 12:26:55'),
(4, '[펫티켓] 모두에게 안전하고 행복한 펫티켓 문화 ', '      <center><img src="http://www.dogfair2018.com/images/ptc.jpg" width="100%"></center>\r\n    ', '2018-10-09 13:04:39');

-- --------------------------------------------------------

--
-- 테이블 구조 `participant`
--

CREATE TABLE IF NOT EXISTS `participant` (
  `nm` varchar(20) NOT NULL,
  `tl` varchar(13) NOT NULL,
  `dognm` varchar(20) NOT NULL,
  `dogtype` varchar(30) NOT NULL,
  `doggn` varchar(20) NOT NULL,
  `dogage` varchar(5) NOT NULL,
  `dogwt` varchar(5) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 테이블의 덤프 데이터 `participant`
--

INSERT INTO `participant` (`nm`, `tl`, `dognm`, `dogtype`, `doggn`, `dogage`, `dogwt`, `date`) VALUES
('콩콩이', '010-2222-2222', '해오름', '진돗개', 'male', '2', '6', '2018-10-02 05:10:29'),
('전서현', '010-2772-8317', '신데렐라', '테리어', 'male', '3', '2', '2018-09-16 03:23:41'),
('마파두부', '010-5255-2255', '에드워드', '테리어', 'male', '9', '9', '2018-09-16 10:22:11'),
('이승주', '010-5527-1143', '슈', '포메리안', 'male', '3', '6', '2018-10-03 23:25:23'),
('장미경', '010-5624-8888', '슈렉', '슈나우저', 'female', '3', '5', '2018-09-16 02:39:34'),
('호비', '010-9316-3743', '소지섭', '치와와', 'female', '3', '4', '2018-10-02 07:52:57'),
('뽀로로', '010-9545-2523', '만두', '퍼그', 'male', '6', '5', '2018-09-16 02:39:38');

-- --------------------------------------------------------

--
-- 테이블 구조 `press`
--

CREATE TABLE IF NOT EXISTS `press` (
  `press_id` int(11) NOT NULL,
  `press_title` varchar(70) NOT NULL,
  `press_content` text NOT NULL,
  `press_wdate` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- 테이블의 덤프 데이터 `press`
--

INSERT INTO `press` (`press_id`, `press_title`, `press_content`, `press_wdate`) VALUES
(1, '[머니투데이 뉴스]화성시 반려동물 어울림 한마당축제 개최 ', '<a href ="http://news.mt.co.kr/mtview.php?no=2018100521197443437">http://news.mt.co.kr/mtview.php?no=2018100521197443437 </a>\r\n\r\n\r\n위 링크를 클릭하시면 기사를 보실 수 있습니다.', '2018-10-06 02:27:06'),
(3, '[머니투데이]화성시 반려동물 어울림 한마당축제 개최', '<a href="http://naver.me/I5lc8JxX">http://naver.me/I5lc8JxX</a>\r\n\r\n\r\n위 링크를 클릭하시면 기사를 보실 수 있습니다.', '2018-10-06 08:35:34');

--
-- 덤프된 테이블의 인덱스
--

--
-- 테이블의 인덱스 `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`adminid`);

--
-- 테이블의 인덱스 `notice`
--
ALTER TABLE `notice`
  ADD PRIMARY KEY (`notice_id`);

--
-- 테이블의 인덱스 `participant`
--
ALTER TABLE `participant`
  ADD PRIMARY KEY (`tl`);

--
-- 테이블의 인덱스 `press`
--
ALTER TABLE `press`
  ADD PRIMARY KEY (`press_id`);

--
-- 덤프된 테이블의 AUTO_INCREMENT
--

--
-- 테이블의 AUTO_INCREMENT `notice`
--
ALTER TABLE `notice`
  MODIFY `notice_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- 테이블의 AUTO_INCREMENT `press`
--
ALTER TABLE `press`
  MODIFY `press_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
