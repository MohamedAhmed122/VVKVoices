-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 16, 2025 at 09:30 AM
-- Server version: 10.6.12-MariaDB
-- PHP Version: 7.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `php_blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `category_id` int NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `total_post` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`category_id`, `category_name`, `created_at`, `total_post`) VALUES
(1, 'Business Development', '2025-05-10 04:08:45', 2),
(2, 'Business Management and Marketing', '2025-05-10 04:08:45', 2),
(3, 'Programming and Internet Technologies', '2025-05-10 04:25:07', 3),
(4, 'Game Development', '2025-05-10 04:25:31', 2),
(5, 'Vilnius', '2025-05-10 05:12:18', 2),
(6, 'International E-Business and Commerce', '2025-05-10 05:13:45', 2);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `posts_id` int NOT NULL,
  `posts_title` varchar(255) NOT NULL,
  `posts_content` text NOT NULL,
  `posts_image` varchar(255) NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `tag_name` varchar(255) NOT NULL,
  `author` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`posts_id`, `posts_title`, `posts_content`, `posts_image`, `category_name`, `tag_name`, `author`, `created_at`) VALUES
(1, 'Let\'s learn how to use Realm in React-native', 'Realm is a powerful database solution for mobile applications built with React Native. In this comprehensive tutorial, we\'ll explore how to integrate Realm database with your React Native app for efficient data storage and retrieval. We\'ll cover installation, schema setup, CRUD operations, and synchronization techniques that make Realm stand out from other mobile database solutions. By the end of this guide, you\'ll be able to implement a robust offline-first data persistence strategy in your React Native applications.', 'uploads\\react-native.jpg', 'Programming and Internet Technologies', 'react-native', 'admin', '2025-05-15 13:05:06'),
(2, 'Modern 3D Character Design Techniques for Game Development', 'Creating compelling 3D characters is essential for immersive gaming experiences. This post explores cutting-edge techniques in 3D character modeling, including topology optimization, advanced rigging methods, and texture mapping workflows that bring characters to life. We\'ll discuss industry best practices for creating characters that balance visual quality with performance requirements, ensuring your game runs smoothly across different platforms while maintaining impressive visuals.', 'uploads\\game1.jpg', 'Game Development', '3D Graphic Modelling', 'admin', '2025-05-14 18:22:54'),
(3, 'Digital Marketing Strategies for Small Businesses in 2025', 'Small businesses face unique challenges when competing for attention in the digital marketplace. This article outlines effective and affordable marketing strategies specifically tailored for small business owners. Learn how to leverage social media platforms, email marketing, content creation, and SEO techniques to maximize your online presence without a massive budget. We provide actionable steps that can be implemented immediately to improve your business visibility and customer engagement.', 'uploads\\market1.jpg', 'Business Management and Marketing', 'marketing', 'demo', '2025-05-14 03:24:11'),
(4, 'Performance Optimization Techniques in C++ Game Development', 'Performance is critical in game development, and C++ remains the language of choice for developers seeking maximum control and efficiency. This deep dive explores advanced optimization techniques for C++ game engines, including memory management strategies, multithreading approaches, cache coherence methods, and SIMD instruction utilization. We\'ll also cover profiling tools and methodologies to identify and eliminate bottlenecks in your game code.', 'uploads\\blog-post-03.jpg', 'Game Development', 'C++', 'demo', '2025-05-13 18:47:43'),
(5, 'Building Scalable RESTful APIs with PHP and MariaDB', 'Creating robust and scalable APIs is crucial for modern web applications. This tutorial walks through the process of designing and implementing a RESTful API using PHP and MariaDB. We\'ll cover API architecture, authentication mechanisms, query optimization, caching strategies, and best practices for error handling. The guide includes practical examples of endpoint creation, database interaction, and response formatting that follow industry standards.', 'uploads\\game3.jpg', 'Programming and Internet Technologies', 'MariaDB', 'admin', '2025-05-13 08:50:01'),
(6, 'Upcoming Summer Events in Vilnius 2025', 'Vilnius comes alive during the summer months with an exciting array of events for locals and tourists alike. This comprehensive guide highlights the must-attend festivals, concerts, exhibitions, and cultural celebrations happening throughout the city this summer. From the annual Vilnius Festival to outdoor cinema nights in Bernardinai Garden, we\'ve curated a list of events that showcase the vibrant cultural scene of Lithuania\'s capital. Plan your perfect summer in Vilnius with our detailed calendar of events.', 'uploads\\vilnius1.jpg', 'Vilnius', 'Events', 'admin', '2025-05-12 01:33:23'),
(7, 'E-Business Tax Considerations for International Operations', 'Operating an e-business across international borders presents complex tax challenges that require careful navigation. This article examines key tax considerations for online businesses with global operations, including permanent establishment issues, VAT/GST compliance, digital service taxes, transfer pricing, and emerging regulations affecting digital commerce. We provide practical guidance for e-business owners to develop tax-efficient structures while maintaining compliance with evolving international tax frameworks.', 'uploads\\blog-post-03.jpg', 'International E-Business and Commerce', 'E-business', 'demo', '2025-05-11 04:13:47'),
(8, 'Nightlife Guide: The Best Parties in Vilnius', 'Vilnius boasts a vibrant and diverse nightlife scene that caters to all tastes and preferences. This insider\'s guide reveals the hottest clubs, bars, and underground venues where you can experience the best parties in the city. From electronic music havens to jazz lounges and cultural raves in unexpected locations, we\'ve compiled recommendations from local DJs and nightlife connoisseurs. Discover the unique atmosphere of Vilnius after dark with tips on dress codes, entry prices, and the best nights to visit each venue.', 'uploads\\bus8.jpg', 'Vilnius', 'parties', 'demo', '2025-05-11 16:02:06'),
(9, 'Investment Strategies for Business Development in the Baltic States', 'The Baltic region represents a growing opportunity for business investment, with Estonia, Latvia, and Lithuania offering unique advantages for entrepreneurs and established companies. This analysis examines current investment trends, funding opportunities, tax incentives, and strategic considerations for business development across various sectors in the Baltic states. We also highlight success stories of companies that have effectively scaled their operations in this dynamic market.', 'uploads\\bus9.jpg', 'Business Development', 'Economics', 'admin', '2025-05-10 05:18:24'),
(10, 'Building Interactive UIs with React Hooks and Context API', 'React has revolutionized frontend development, and modern React features like Hooks and Context API provide powerful new approaches to state management and component architecture. This tutorial offers a practical guide to leveraging these features to build clean, maintainable, and highly interactive user interfaces. We\'ll walk through real-world examples that demonstrate how to replace class components with functional components using Hooks, implement global state without Redux using Context, and optimize performance with useMemo and useCallback.', 'uploads\\bus7.jpg', 'Programming and Internet Technologies', 'react', 'demo', '2025-05-10 00:21:43'),
(11, 'Creating Custom Accounting Solutions for E-Commerce Platforms', 'E-commerce businesses have unique accounting needs that often require customized solutions beyond standard accounting software. This comprehensive guide explores how to develop tailored accounting systems that integrate seamlessly with popular e-commerce platforms. Learn about automating sales tax calculations, inventory valuation methods, multi-currency handling, payment gateway reconciliation, and creating financial reports that provide actionable insights for online retail businesses.', 'uploads\\media.jpg', 'Business Management and Marketing', 'Accounting', 'admin', '2025-05-09 02:23:37'),
(12, 'Cross-Border E-Commerce: Navigating Customs and Regulatory Compliance', 'Expanding an e-commerce business internationally brings opportunities and challenges, particularly regarding customs procedures and regulatory requirements. This detailed article provides a framework for understanding and complying with cross-border regulations, including customs documentation, product compliance standards, shipping restrictions, consumer protection laws, and privacy requirements across different regions. We\'ll share strategies for streamlining international fulfillment while avoiding costly delays and compliance issues.', 'uploads\\bus10.jpg', 'International E-Business and Commerce', 'Economics', 'demo', '2025-05-09 01:08:03'),
(13, 'Media Strategy Development for Emerging Businesses', 'Developing an effective media strategy is crucial for new businesses seeking to establish brand presence and audience engagement. This comprehensive guide walks through the process of creating a tailored media plan that aligns with business objectives and resources. Topics include audience research methods, channel selection, content development frameworks, ROI measurement, and adapting strategies as your business evolves. Real case studies demonstrate how emerging companies have successfully implemented these approaches to build brand recognition.', 'uploads\\media.jpg', 'Business Development', 'Media', 'admin', '2025-05-08 07:46:56');

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `name`, `created_at`) VALUES
(1, '3D Graphic Modelling', '2025-05-10 16:01:44'),
(2, 'C++', '2025-05-10 12:04:16'),
(3, 'Graphics and Animation', '2025-05-10 12:28:17'),
(4, 'Php', '2025-05-10 21:24:08'),
(5, 'mysql', '2025-05-10 20:54:22'),
(6, 'MariaDB', '2025-05-10 03:59:24'),
(7, 'react', '2025-05-10 12:05:28'),
(8, 'react-native', '2025-05-10 11:36:47'),
(9, 'Media', '2025-05-10 06:23:09'),
(10, 'E-business', '2025-05-10 23:55:09'),
(11, 'Accounting', '2025-05-10 03:11:21'),
(12, 'marketing', '2025-05-10 03:15:21'),
(13, 'Economics', '2025-05-10 03:18:21'),
(14, 'Events', '2025-05-10 03:21:21'),
(15, 'lifeStyle', '2025-05-10 03:24:21'),
(16, 'parties', '2025-05-10 03:27:21');

-- --------------------------------------------------------

--
-- Table structure for table `user_info`
--

CREATE TABLE `user_info` (
  `id` int NOT NULL,
  `name` text NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_info`
--

INSERT INTO `user_info` (`id`, `name`, `username`, `email`, `password`, `role`, `created_at`) VALUES
(1, 'admin', 'admin', 'admin@example.com', '25f9e794323b453885f5181f1b624d0b', 0, '2025-05-10 08:12:57'),
(2, 'demo', 'demo', 'demo@example.com', 'fe01ce2a7fbac8fafaed7c982a04e229', 1, '2025-05-10 13:24:37');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`posts_id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_info`
--
ALTER TABLE `user_info`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `category_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `posts_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `user_info`
--
ALTER TABLE `user_info`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;