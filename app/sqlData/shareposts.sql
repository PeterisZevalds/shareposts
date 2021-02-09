-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 09, 2021 at 10:28 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shareposts`
--

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `title`, `body`, `created_at`) VALUES
(8, 10, 'This is my first post', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using &#39;Content here, content here&#39;, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for &#39;lorem ipsum&#39; will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', '2021-02-09 11:25:12'),
(9, 10, 'This is my second post. Lorem ipsum!', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don&#39;t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn&#39;t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.', '2021-02-09 11:25:39'),
(10, 11, 'This is my first post as Jane.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris finibus a felis eu tristique. Ut at est mauris. Nulla porttitor odio vel quam mollis, id scelerisque elit commodo. Sed vehicula tellus ut tellus iaculis, bibendum rutrum nibh sollicitudin. Phasellus aliquet id ante et aliquam. In scelerisque risus leo, nec vulputate risus porta ut. Vestibulum rhoncus rutrum ligula ut finibus. Morbi ante felis, congue id dapibus vel, pharetra eu ante. In vitae euismod neque, at congue enim. Etiam pharetra euismod justo sed eleifend. Morbi sed sapien augue. Donec interdum aliquet tempus. Aenean nec tempor odio. Quisque euismod enim sit amet vulputate aliquet. Proin eu sapien diam. In molestie, nibh ut interdum fringilla, enim dolor euismod nisl, vitae tempor ipsum erat at dui.', '2021-02-09 11:27:14');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `created_at`) VALUES
(10, 'John Doe', 'johnd@gmail.com', '$2y$10$LnAZJmG6k8qeEnwtBNShReB2l8xSvuOwvXJQjgLbMYF8eZYCPh6g2', '2021-02-09 11:24:35'),
(11, 'Jane Doe', 'janed@gmail.com', '$2y$10$lgb.rWfl1kxjhgeiWAuVwu92bkLiTy5/TG189YisdKQYECykA.cN.', '2021-02-09 11:26:34'),
(12, 'Janet Jackson', 'janetj@gmail.com', '$2y$10$QxwdSVVjbt0xsUBluIML5eMKn34NG1MS0PQ.zYlKeK6wVNMpJGC8K', '2021-02-09 11:27:43'),
(13, 'Peteris Zevalds', 'pzevalds@gmail.com', '$2y$10$TmPF2DTWV00y/oMLksnurOi0AcH7U/rZBmJ7ofaPzBz3FFStQwlRS', '2021-02-09 11:28:11');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
