-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 19, 2021 at 03:33 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `UserName` varchar(100) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `updationDate` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `UserName`, `Password`, `updationDate`) VALUES
(1, 'admin', 'f925916e2754e5e03f75dd58a5733251', '2017-05-13 11:18:49');

-- --------------------------------------------------------

--
-- Table structure for table `tblbooking`
--

CREATE TABLE `tblbooking` (
  `BookingId` int(11) NOT NULL,
  `PackageId` int(11) DEFAULT NULL,
  `UserEmail` varchar(100) DEFAULT NULL,
  `FromDate` varchar(100) DEFAULT NULL,
  `ToDate` varchar(100) DEFAULT NULL,
  `Comment` mediumtext DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp(),
  `status` int(11) DEFAULT NULL,
  `CancelledBy` varchar(5) DEFAULT NULL,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tblenquiry`
--

CREATE TABLE `tblenquiry` (
  `id` int(11) NOT NULL,
  `FullName` varchar(100) DEFAULT NULL,
  `EmailId` varchar(100) DEFAULT NULL,
  `MobileNumber` char(10) DEFAULT NULL,
  `Subject` varchar(100) DEFAULT NULL,
  `Description` mediumtext DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `Status` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tblissues`
--

CREATE TABLE `tblissues` (
  `id` int(11) NOT NULL,
  `UserEmail` varchar(100) DEFAULT NULL,
  `Issue` varchar(100) DEFAULT NULL,
  `Description` mediumtext DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `AdminRemark` mediumtext DEFAULT NULL,
  `AdminremarkDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblissues`
--

INSERT INTO `tblissues` (`id`, `UserEmail`, `Issue`, `Description`, `PostingDate`, `AdminRemark`, `AdminremarkDate`) VALUES
(8, NULL, NULL, NULL, '2021-03-25 09:39:40', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblpages`
--

CREATE TABLE `tblpages` (
  `id` int(11) NOT NULL,
  `type` varchar(255) DEFAULT '',
  `detail` longtext DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpages`
--

INSERT INTO `tblpages` (`id`, `type`, `detail`) VALUES
(1, 'Terms', '										<div><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">By using this website, you certify that you have read and reviewed this Agreement and that you&nbsp;</span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">agree to comply with its terms. If you do not want to be bound by the terms of this Agreement,&nbsp;</span><br></div><div><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">you are advised to leave the website accordingly. EXPLORE INDIA only grants use and access of this&nbsp;</span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">website, its products, and its services to those who have accepted its terms.</span></div><div><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">Privacy policy</span></div><div><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">Before you continue using our website, we advise you to read our privacy policy regarding our user data collection. It will help you better understand our practices.</span></div><div><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">Age restriction</span></div><div><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">You must be at least 18 (eighteen) years of age before you can use this website. By using this&nbsp;</span></div><div><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">website, you warrant that you are at least 18 years of age and you may legally adhere to this&nbsp;</span></div><div><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">Agreement. EXPLORE INDIA assumes no responsibility for liabilities related to age misrepresentation.</span></div><div><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">Intellectual property</span></div><div><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">You agree that all materials, products, and services provided on this website are the property of&nbsp;</span></div><div><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">EXPLORE INDIA, its affiliates, directors, officers, employees, agents, suppliers, or licensors including all&nbsp;</span></div><div><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">copyrights, trade secrets, trademarks, patents, and other intellectual property. You also agree&nbsp;</span></div><div><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">that you will not reproduce or redistribute the EXPLORE INDIA’s intellectual property in any way,&nbsp;</span></div><div><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">including electronic, digital, or new trademark registrations.</span></div><div><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">You grant EXPLORE INDIA a royalty-free and non-exclusive license to display, use, copy, transmit, and&nbsp;</span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">broadcast the content you upload and publish. For issues regarding intellectual property claims,&nbsp;</span></div><div><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">you should contact the company in order to come to an agreement.</span></div><div><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">User accounts</span></div><div><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">As a user of this website, you may be asked to register with us and provide private information.&nbsp;</span></div><div><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">You are responsible for ensuring the accuracy of this information, and you are responsible for&nbsp;</span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">maintaining the safety and security of your identifying information. You are also responsible for&nbsp;</span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">all activities that occur under your account or password.</span></div><div><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">If you think there are any possible issues regarding the security of your account on the website,&nbsp;</span></div><div><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">inform us immediately so we may address it accordingly.</span></div><div><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">We reserve all rights to terminate accounts, edit or remove content and cancel orders in their&nbsp;</span></div><div><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">sole discretion.</span></div><div><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">Applicable law</span></div><div><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">By visiting this website, you agree that the laws of India, without regard to principles of&nbsp;</span></div><div><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">conflict laws will govern these terms and conditions, or any dispute of any sort that might come&nbsp;</span></div><div><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">between EXPLORE INDIA and you, or its business partners and associates.</span></div><div><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">Disputes</span></div><div><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">Any dispute relating in any way to your visit to this website or to products you purchase from us&nbsp;</span></div><div><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">shall be arbitrated by state or federal court of India and you consent to the exclusive jurisdiction&nbsp;</span></div><div><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">and venue of such courts.</span></div><div><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">Indemnification</span></div><div><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">You agree to indemnify EXPLORE INDIA and its affiliates and hold EXPLORE INDIA harmless against legal claims&nbsp;</span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">and demands that may arise from your use or misuse of our services. We reserve the right to&nbsp;</span></div><div><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">select our own legal counsel.&nbsp;</span></div><div><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">Limitation on liability</span></div><div><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">EXPLORE INDIA is not liable for any damages that may occur to you as a result of your misuse of our&nbsp;</span></div><div><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">website.</span></div><div><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">EXPLORE INDIA reserves the right to edit, modify, and change this Agreement at any time. We shall let our&nbsp;</span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">users know of these changes through electronic mail. This Agreement is an understanding&nbsp;</span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">between EXPLORE INDIA and the user, and this supersedes and replaces all prior agreements regarding&nbsp;</span></div><div><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">the use of this website.</span></div>\r\n										'),
(2, 'Privacy', '																														<div style=\"text-align: justify;\"><div>This privacy policy&nbsp; will help you understand how EXPLORE INDIA uses and&nbsp;</div><div>protects the data you provide to us when you visit and use it.</div><div>We reserve the right to change this policy at any given time, of which you will be promptly updated. If you want to make sure that you are up to date with the latest changes, we advise&nbsp;</div><div>you to frequently visit this page.</div><div>What User Data We Collect</div><div>When you visit the website, we may collect the following data:</div><div>• Your IP address.</div><div>• Your contact information and email address.</div><div>• Other information such as interests and preferences.</div><div>• Data profile regarding your online behavior on our website.</div><div>Why We Collect Your Data</div><div>We are collecting your data for several reasons:</div><div>• To better understand your needs.</div><div>• To improve our services and products.</div><div>• To send you promotional emails containing the information we think you will find interesting.</div><div>• To contact you to fill out surveys and participate in other types of market research.</div><div>• To customize our website according to your online behavior and personal preferences.</div><div>Safeguarding and Securing the Data</div><div>EXPLORE INDIA&nbsp; is committed to securing your data and keeping it confidential. [name] has done all in its&nbsp;</div><div>power to prevent data theft, unauthorized access, and disclosure by implementing the latest&nbsp;</div><div>technologies and software, which help us safeguard all the information we collect online.</div><div>Our Cookie Policy</div><div>Once you agree to allow our website to use cookies, you also agree to use the data it collects&nbsp;</div><div>regarding your online behavior (analyze web traffic, web pages you spend the most time on,&nbsp;</div><div>and websites you visit).</div><div>The data we collect by using cookies is used to customize our website to your needs. After we&nbsp;</div><div>use the data for statistical analysis, the data is completely removed from our systems.</div><div>Please note that cookies don\'t allow us to gain control of your computer in any way. They are strictly used to monitor which pages you find useful and which you do not so that we can provide a better experience for you. Terms and conditions template by WebsitePolicies.com</div><div>If you want to disable cookies, you can do it by accessing the settings of your internet browser.&nbsp;</div><div>(Provide links for cookie settings for major internet browsers).</div><div>Links to Other Websites</div><div>Our website contains links that lead to other websites. If you click on these links [name] is not held responsible for your data and privacy protection. Visiting those websites is not governed by this privacy policy agreement. Make sure to read the privacy policy documentation of the&nbsp;</div><div>the website you go to from our website.</div><div>Restricting the Collection of your Personal Data</div><div>At some point, you might wish to restrict the use and collection of your personal data. You can&nbsp;</div><div>achieve this by doing the following:</div><div>When you are filling the forms on the website, make sure to check if there is a box that you&nbsp;</div><div>can leave unchecked, if you don\'t want to disclose your personal information.</div><div>If you have already agreed to share your information with us, feel free to contact us via email&nbsp;</div><div>and we will be more than happy to change this for you.</div><div>[name] will not lease, sell or distribute your personal information to any third parties, unless we have your permission. We might do so if the law forces us. Your personal information will be&nbsp;</div><div>used when we need to send you promotional materials if you agree to this privacy policy</div></div>\r\n										\r\n										\r\n										'),
(3, 'Aboutus', '<span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px;\">“Travel is the main thing you purchase that makes you more extravagant”. We, at ‘EXPLORE INDIA’, swear by this and put stock in satisfying travel dreams that make you perpetually rich constantly. We have been moving excellent encounters for a considerable length of time through our cutting edge planned occasion bundles and other fundamental travel administrations. We rouse our clients to carry on with a rich life, brimming with extraordinary travel encounters. Through our exceptionally curated occasion bundles, we need to take you on an adventure where you personally enjoy with the stunning magnificence of India and far off terrains. We need you to observe sensational scenes that are a long ways past your creative ability. We offer best limits on our top rated visit bundles to clients who pick our viable administrations over and over. How about we remind you indeed that we don’t expect to be your visit and travel specialists; we endeavor to be your vacation accomplices until the end of time.</span>'),
(11, 'Contact', '																				<div>Have a question? Need a tip? You can find a host of brilliant articles in our knowledge base. If you can\'t find what you\'re looking for, we\'d be happy to point you in the right direction. Please feel free to send us an email or even give us a call.<br></div><div>Contact Information<br></div><div>General Inquiries:<br></div><div>info@exploreindia.com<br></div><div>Technical support:<br></div><div>support@exploreindia.com<br></div><div>PR Inquiries<br></div><div>pr@exploreindia.com<br></div><div>India Headquarters<br></div><div><div>101 APJ Abdul Kamal Street, Delhi, India 1100022</div></div>\r\n										\r\n										');

-- --------------------------------------------------------

--
-- Table structure for table `tbltourpackages`
--

CREATE TABLE `tbltourpackages` (
  `PackageId` int(11) NOT NULL,
  `PackageName` varchar(200) DEFAULT NULL,
  `PackageType` varchar(150) DEFAULT NULL,
  `PackageLocation` varchar(100) DEFAULT NULL,
  `PackagePrice` int(11) DEFAULT NULL,
  `PackageFetures` varchar(255) DEFAULT NULL,
  `PackageDetails` mediumtext DEFAULT NULL,
  `PackageImage` varchar(100) DEFAULT NULL,
  `Creationdate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbltourpackages`
--

INSERT INTO `tbltourpackages` (`PackageId`, `PackageName`, `PackageType`, `PackageLocation`, `PackagePrice`, `PackageFetures`, `PackageDetails`, `PackageImage`, `Creationdate`, `UpdationDate`) VALUES
(7, 'Kerela', 'Family Package ', 'Kerela', 20000, 'free pick up and drop', 'Owing to its misty mountains, pristine beaches, glimmering backwaters, verdant natural reserves, and mesmerizing waterfalls, Kerala never fails to fascinate its visitors. So, plan a trip to this captivating state and visit some of its picturesque destinations, such as Munnar, Kumarakom, and Cochin. Be it joyous boat rides, adrenaline-pumping adventure activities or nature walks, these regions offer it all.', 'kerela.jpg', '2021-04-06 20:09:32', NULL),
(8, 'Manali', 'Couple-Package', 'Manali', 30000, 'free pick up and drop', 'If you are looking for a memorable Manali trip, Explore India holiday packages are the right choice for you. Explore India offers the widest range of customizable Manali tour to suit every kind of traveler from Delhi, Mumbai, Chennai or Bangalore. Explore from over 144 tour packages to Manali with unbeatable deals and discounts. Explore the main Manali sightseeing points with the variety of experiential tours and activities included in MakeMyTrip’s Manali tour packages. Be it a short trip or a long itinerary, a relaxing stay or an adventure holiday, whatever your travel preference, Explore India has the right Manali vacation tours for you to choose from. Looking to indulge? Don’t forget to check out our luxury Manali tour packages offering the best of hotels and inclusions designed to pamper you on your Manali vacation. If you wish to know more about Manali travel such as the best time to visit Manali, how to reach Manali, things to do in Manali and so on.', 'manali.cms', '2021-04-07 06:08:50', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblusers`
--

CREATE TABLE `tblusers` (
  `id` int(11) NOT NULL,
  `FullName` varchar(100) DEFAULT NULL,
  `MobileNumber` char(10) DEFAULT NULL,
  `EmailId` varchar(70) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblusers`
--

INSERT INTO `tblusers` (`id`, `FullName`, `MobileNumber`, `EmailId`, `Password`, `RegDate`, `UpdationDate`) VALUES
(12, 'Sanjivani Dubey', '9579375043', 'sd@gmail.com', '25d55ad283aa400af464c76d713c07ad', '2021-03-25 09:39:40', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblbooking`
--
ALTER TABLE `tblbooking`
  ADD PRIMARY KEY (`BookingId`);

--
-- Indexes for table `tblenquiry`
--
ALTER TABLE `tblenquiry`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblissues`
--
ALTER TABLE `tblissues`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblpages`
--
ALTER TABLE `tblpages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbltourpackages`
--
ALTER TABLE `tbltourpackages`
  ADD PRIMARY KEY (`PackageId`);

--
-- Indexes for table `tblusers`
--
ALTER TABLE `tblusers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `EmailId` (`EmailId`),
  ADD KEY `EmailId_2` (`EmailId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblbooking`
--
ALTER TABLE `tblbooking`
  MODIFY `BookingId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tblenquiry`
--
ALTER TABLE `tblenquiry`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tblissues`
--
ALTER TABLE `tblissues`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tblpages`
--
ALTER TABLE `tblpages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tbltourpackages`
--
ALTER TABLE `tbltourpackages`
  MODIFY `PackageId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tblusers`
--
ALTER TABLE `tblusers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
