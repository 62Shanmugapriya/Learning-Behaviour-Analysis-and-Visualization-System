-- phpMyAdmin SQL Dump
-- version 2.11.6
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 29, 2025 at 07:51 AM
-- Server version: 5.0.51
-- PHP Version: 5.2.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `jsp_e_learning_website`
--

-- --------------------------------------------------------

--
-- Table structure for table `notes_details`
--

CREATE TABLE `notes_details` (
  `id` int(100) NOT NULL,
  `course_name` varchar(100) NOT NULL,
  `leanner_style` varchar(100) NOT NULL,
  `file_name` varchar(100) NOT NULL,
  `cdate` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  `report` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notes_details`
--


-- --------------------------------------------------------

--
-- Table structure for table `question_details`
--

CREATE TABLE `question_details` (
  `id` int(100) NOT NULL,
  `question` varchar(100) NOT NULL,
  `a1` varchar(100) NOT NULL,
  `a2` varchar(100) NOT NULL,
  `a3` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  `report` varchar(100) NOT NULL,
  `received` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `question_details`
--

INSERT INTO `question_details` (`id`, `question`, `a1`, `a2`, `a3`, `status`, `report`, `received`) VALUES
(1, 'What kind of book would you like to read for fun?', 'A book with lots of pictures in it', 'A book with lots of words in it', 'A book with word searches or crossword puzzles', '0', '0', '0'),
(2, 'When you are not sure how to spell a word, what are you most likely to do?', 'Write it down to see if it looks right', 'Spell it out loud to see if it sounds right', 'Trace the letters in the air (finger spelling)', '0', '0', '0'),
(3, 'You''re out shopping for clothes, and you''re waiting in line to pay. What are you most likely to do W', 'Look around at other clothes on the racks', 'Talk to the person next to you in line', 'Fidget or move back and forth', '0', '0', '0'),
(4, 'When you see the word "cat," what do you do first?', 'Picture a cat in your mind', 'Say the word "cat" to yourself', 'Think about being with a cat (petting it or hearing it purr)', '0', '0', '0'),
(5, 'What''s the best way for you to study for a test?', 'Read the book or your notes and review pictures or charts', 'Have someone ask you questions that you can answer out loud', 'Make up index cards that you can review', '0', '0', '0'),
(6, 'What''s the best way for you to learn about how something works (like a computer or a video game)?', 'Get someone to show you', 'Read about it or listen to someone explain it', 'Figure it out on your own', '0', '0', '0'),
(7, 'If you went to a school dance, what would you be most likely to remember the next day?', 'The faces of the people who were there', 'The music that was played', 'The dance moves you did and the food you ate', '0', '0', '0'),
(8, 'What do you find most distracting when you are trying to study?', 'People walking past you', 'Loud noises', 'An uncomfortable chair', '0', '0', '0'),
(9, 'When you are angry, what are you most likely to do?', 'Put on your "mad" face', 'Yell and scream', 'Slam doors', '0', '0', '0'),
(10, 'When you are happy, what are you most likely to do?', 'Smile from ear to ear', 'Talk up a storm', 'Act really hyper', '0', '0', '0'),
(11, 'When in a new place, how do you find your way around?', 'Look for a map or directory that shows you where everything is', 'Ask someone for directions', 'Just start walking around until you find what you''re looking for', '0', '0', '0'),
(12, 'Of these three classes, which is your favorite?', 'Art class', 'Music class', 'Gym class', '0', '0', '0'),
(13, 'When you hear a song on the radio, what are you most likely to do?', 'Picture the video that goes along with it', 'Sing or hum along with the music', 'Start dancing or tapping your foot', '0', '0', '0'),
(14, 'What do you find most distracting when in class?', 'Lights that are too bright or too dim', 'Noises from the hallway or outside the building (like traffic or someone cutting the grass)', 'The temperature being too hot or too cold', '0', '0', '0'),
(15, 'What do you like to do to relax?', 'Read', 'Listen to music', 'Exercise (walk, run, play sports, etc.)', '0', '0', '0'),
(16, 'What is the best way for you to remember a friend''s phone number?', 'Picture the numbers on the phone as you would dial them', 'Say it out loud over and over and over', 'Write it down or store it in your phone contact list', '0', '0', '0'),
(17, 'If you won a game, which of these three prizes would you choose?', 'A poster for the wall', 'A music CD or mp3 download', 'A game of some kind (or a football or soccer ball, etc.)', '0', '0', '0'),
(18, 'Which would you rather go to with a group of friends?', 'A movie', 'A concert', 'An amusement park', '0', '0', '0'),
(19, 'What are you most likely to remember about new people you meet?', 'Their face but not their name', 'Their name but not their face', 'What you talked about with them', '0', '0', '0'),
(20, 'When you give someone directions to your house, what are you most likely to tell them?', 'A description of building and landmarks they will pass on the way', 'The names of the roads or streets they will be on', 'Follow me-it will be easier if I just show you how to get there.', '0', '0', '0');

-- --------------------------------------------------------

--
-- Table structure for table `staff_details`
--

CREATE TABLE `staff_details` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `contact` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `qualification` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `cdate` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  `report` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `staff_details`
--


-- --------------------------------------------------------

--
-- Table structure for table `student_reg`
--

CREATE TABLE `student_reg` (
  `id` int(10) NOT NULL,
  `rno` varchar(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `fathername` varchar(50) NOT NULL,
  `age` varchar(50) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `dob` varchar(50) NOT NULL,
  `mnumber` varchar(15) NOT NULL,
  `department` varchar(30) NOT NULL,
  `address` text NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `cdate` varchar(50) NOT NULL,
  `status` varchar(10) NOT NULL,
  `report` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_reg`
--


-- --------------------------------------------------------

--
-- Table structure for table `student_result`
--

CREATE TABLE `student_result` (
  `id` int(100) NOT NULL,
  `uid` varchar(100) NOT NULL,
  `solitary` varchar(100) NOT NULL,
  `social` varchar(100) NOT NULL,
  `physical` varchar(100) NOT NULL,
  `arural` varchar(100) NOT NULL,
  `logical` varchar(100) NOT NULL,
  `verbal` varchar(100) NOT NULL,
  `visual` varchar(100) NOT NULL,
  `total` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_result`
--

