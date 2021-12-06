--
-- Database: 'Libraby_Management_System'
--

DROP DATABASE IF EXISTS Libraby_Management_System;
CREATE DATABASE IF NOT EXISTS Libraby_Management_System;
USE Libraby_Management_System;

-- --------------------------------------------------------


--
-- Table structure for table `Books`
--

CREATE TABLE `Books` (
  `ID` int(11) NOT NULL,
  `Title` text DEFAULT NULL,
  `Writer` text DEFAULT NULL,
  `Department` text DEFAULT NULL,
  `Topic` text DEFAULT NULL,
  `Pages` text DEFAULT NULL,
  `Publication` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Books`
--

INSERT INTO `Books` (`ID`, `Title`, `Writer`, `Department`, `Topic`, `Pages`, `Publication`) VALUES
(3, 'Fundamentals of Wavelets', 'Goswami, Jaideva', 'tech', 'signal_processing', '228', 'Wiley'),
(4, 'Data Smart', 'Foreman, John', 'tech', 'data_science', '235', 'Wiley'),
(5, 'God Created the Integers', 'Hawking, Stephen', 'tech', 'mathematics', '197', 'Penguin'),
(6, 'Superfreakonomics', 'Dubner, Stephen', 'science', 'economics', '179', 'HarperCollins'),
(7, 'Orientalism', 'Said, Edward', 'nonfiction', 'history', '197', 'Penguin'),
(8, 'Nature of Statistical Learning Theory, The', 'Vapnik, Vladimir', 'tech', 'data_science', '230', 'Springer'),
(9, 'Integration of the Indian States', 'Menon, V P', 'nonfiction', 'history', '217', 'Orient Blackswan'),
(10, 'Drunkard\'s Walk, The', 'Mlodinow, Leonard', 'science', 'mathematics', '197', 'Penguin'),
(11, 'Image Processing & Mathematical Morphology', 'Shih, Frank', 'tech', 'signal_processing', '241', 'CRC'),
(12, 'How to Think Like Sherlock Holmes', 'Konnikova, Maria', 'nonfiction', 'psychology', '240', 'Penguin'),
(13, 'Data Scientists at Work', 'Sebastian Gutierrez', 'tech', 'data_science', '230', 'Apress'),
(14, 'Slaughterhouse Five', 'Vonnegut, Kurt', 'fiction', 'classic', '198', 'Random House'),
(15, 'Birth of a Theorem', 'Villani, Cedric', 'science', 'mathematics', '234', 'Bodley Head'),
(16, 'Structure & Interpretation of Computer Programs', 'Sussman, Gerald', 'tech', 'computer_science', '240', 'MIT Press'),
(17, 'Age of Wrath, The', 'Eraly, Abraham', 'nonfiction', 'history', '238', 'Penguin'),
(18, 'Trial, The', 'Kafka, Frank', 'fiction', 'classic', '198', 'Random House'),
(19, 'Statistical Decision Theory', 'Pratt, John', 'tech', 'data_science', '236', 'MIT Press'),
(20, 'Data Mining Handbook', 'Nisbet, Robert', 'tech', 'data_science', '242', 'Apress'),
(21, 'New Machiavelli, The', 'Wells, H. G.', 'fiction', 'novel', '180', 'Penguin'),
(22, 'Physics & Philosophy', 'Heisenberg, Werner', 'philosophy', 'science', '197', 'Penguin'),
(23, 'Making Software', 'Oram, Andy', 'tech', 'computer_science', '232', 'O\'Reilly'),
(24, 'Analysis, Vol I', 'Tao, Terence', 'tech', 'mathematics', '248', 'HBA'),
(25, 'Machine Learning for Hackers', 'Conway, Drew', 'tech', 'data_science', '233', 'O\'Reilly'),
(26, 'Signal and the Noise, The', 'Silver, Nate', 'tech', 'data_science', '233', 'Penguin'),
(27, 'Python for Data Analysis', 'McKinney, Wes', 'tech', 'data_science', '233', 'O\'Reilly'),
(28, 'Introduction to Algorithms', 'Cormen, Thomas', 'tech', 'computer_science', '234', 'MIT Press'),
(29, 'Beautiful and the Damned, The', 'Deb, Siddhartha', 'nonfiction', 'history', '198', 'Penguin'),
(30, 'Outsider, The', 'Camus, Albert', 'fiction', 'classic', '198', 'Penguin'),
(31, 'Complete Sherlock Holmes, The - Vol I', 'Doyle, Arthur Conan', 'fiction', 'classic', '176', 'Random House'),
(32, 'Complete Sherlock Holmes, The - Vol II', 'Doyle, Arthur Conan', 'fiction', 'classic', '176', 'Random House'),
(33, 'Wealth of Nations, The', 'Smith, Adam', 'science', 'economics', '175', 'Random House'),
(34, 'Pillars of the Earth, The', 'Follett, Ken', 'fiction', 'novel', '176', 'Random House'),
(35, 'Mein Kampf', 'Hitler, Adolf', 'nonfiction', 'autobiography', '212', 'Rupa'),
(36, 'Tao of Physics, The', 'Capra, Fritjof', 'science', 'physics', '179', 'Penguin'),
(37, 'Surely You\'re Joking Mr Feynman', 'Feynman, Richard', 'science', 'physics', '198', 'Random House'),
(38, 'Farewell to Arms, A', 'Hemingway, Ernest', 'fiction', 'classic', '179', 'Rupa'),
(39, 'Veteran, The', 'Forsyth, Frederick', 'fiction', 'novel', '177', 'Transworld'),
(40, 'False Impressions', 'Archer, Jeffery', 'fiction', 'novel', '177', 'Pan'),
(41, 'Last Lecture, The', 'Pausch, Randy', 'nonfiction', 'autobiography', '197', 'Hyperion'),
(42, 'Return of the Primitive', 'Rand, Ayn', 'philosophy', 'objectivism', '202', 'Penguin'),
(43, 'Jurassic Park', 'Crichton, Michael', 'fiction', 'novel', '174', 'Random House'),
(44, 'Russian Journal, A', 'Steinbeck, John', 'nonfiction', 'history', '196', 'Penguin'),
(45, 'Tales of Mystery and Imagination', 'Poe, Edgar Allen', 'fiction', 'classic', '172', 'HarperCollins'),
(46, 'Freakonomics', 'Dubner, Stephen', 'science', 'economics', '197', 'Penguin'),
(47, 'Hidden Connections, The', 'Capra, Fritjof', 'science', 'physics', '197', 'HarperCollins'),
(48, 'Story of Philosophy, The', 'Durant, Will', 'philosophy', 'history', '170', 'Pocket'),
(49, 'Asami Asami', 'Deshpande, P L', 'fiction', 'novel', '205', 'Mauj'),
(50, 'Journal of a Novel', 'Steinbeck, John', 'fiction', 'classic', '196', 'Penguin'),
(51, 'Once There Was a War', 'Steinbeck, John', 'nonfiction', 'history', '196', 'Penguin'),
(52, 'Moon is Down, The', 'Steinbeck, John', 'fiction', 'classic', '196', 'Penguin'),
(53, 'Brethren, The', 'Grisham, John', 'fiction', 'novel', '174', 'Random House'),
(54, 'In a Free State', 'Naipaul, V. S.', 'fiction', 'novel', '196', 'Rupa'),
(55, 'Catch 22', 'Heller, Joseph', 'fiction', 'classic', '178', 'Random House'),
(56, 'Complete Mastermind, The', 'BBC', 'nonfiction', 'trivia', '178', 'BBC'),
(57, 'Dylan on Dylan', 'Dylan, Bob', 'nonfiction', 'autobiography', '197', 'Random House'),
(58, 'Soft Computing & Intelligent Systems', 'Gupta, Madan', 'tech', 'data_science', '242', 'Elsevier'),
(59, 'Textbook of Economic Theory', 'Stonier, Alfred', 'tech', 'economics', '242', 'Pearson'),
(60, 'Econometric Analysis', 'Greene, W. H.', 'tech', 'economics', '242', 'Pearson'),
(61, 'Learning OpenCV', 'Bradsky, Gary', 'tech', 'signal_processing', '232', 'O\'Reilly'),
(62, 'Data Structures Using C & C++', 'Tanenbaum, Andrew', 'tech', 'computer_science', '235', 'Prentice Hall'),
(63, 'Computer Vision, A Modern Approach', 'Forsyth, David', 'tech', 'signal_processing', '255', 'Pearson'),
(64, 'Principles of Communication Systems', 'Taub, Schilling', 'tech', 'signal_processing', '240', 'TMH'),
(65, 'Let Us C', 'Kanetkar, Yashwant', 'tech', 'computer_science', '213', 'Prentice Hall'),
(66, 'Amulet of Samarkand, The', 'Stroud, Jonathan', 'fiction', 'novel', '179', 'Random House'),
(67, 'Crime and Punishment', 'Dostoevsky, Fyodor', 'fiction', 'classic', '180', 'Penguin'),
(68, 'Angels & Demons', 'Brown, Dan', 'fiction', 'novel', '178', 'Random House'),
(69, 'Argumentative Indian, The', 'Sen, Amartya', 'nonfiction', 'history', '209', 'Picador'),
(70, 'Sea of Poppies', 'Ghosh, Amitav', 'fiction', 'novel', '197', 'Penguin'),
(71, 'Idea of Justice, The', 'Sen, Amartya', 'philosophy', 'economics', '212', 'Penguin'),
(72, 'Raisin in the Sun, A', 'Hansberry, Lorraine', 'fiction', 'novel', '175', 'Penguin'),
(73, 'All the President\'s Men', 'Woodward, Bob', 'nonfiction', 'history', '177', 'Random House'),
(74, 'Prisoner of Birth, A', 'Archer, Jeffery', 'fiction', 'novel', '176', 'Pan'),
(75, 'Scoop!', 'Nayar, Kuldip', 'nonfiction', 'history', '216', 'HarperCollins'),
(76, 'Ahe Manohar Tari', 'Deshpande, Sunita', 'nonfiction', 'autobiography', '213', 'Mauj'),
(77, 'Last Mughal, The', 'Dalrymple, William', 'nonfiction', 'history', '199', 'Penguin'),
(78, 'Social Choice & Welfare, Vol 39 No. 1', 'Various', 'tech', 'economics', '235', 'Springer'),
(79, 'Radiowaril Bhashane & Shrutika', 'Deshpande, P L', 'nonfiction', 'misc', '213', 'Mauj'),
(80, 'Gun Gayin Awadi', 'Deshpande, P L', 'nonfiction', 'misc', '212', 'Mauj'),
(81, 'Aghal Paghal', 'Deshpande, P L', 'nonfiction', 'misc', '212', 'Mauj'),
(82, 'Maqta-e-Ghalib', 'Garg, Sanjay', 'nonfiction', 'poetry', '221', 'Mauj'),
(83, 'Beyond Degrees', NULL, 'philosophy', 'education', '222', 'HarperCollins'),
(84, 'Manasa', 'Kale, V P', 'nonfiction', 'misc', '213', 'Mauj'),
(85, 'India from Midnight to Milennium', 'Tharoor, Shashi', 'nonfiction', 'history', '198', 'Penguin'),
(86, 'World\'s Greatest Trials, The', NULL, 'nonfiction', 'history', '210', NULL),
(87, 'Great Indian Novel, The', 'Tharoor, Shashi', 'fiction', 'novel', '198', 'Penguin'),
(88, 'O Jerusalem!', 'Lapierre, Dominique', 'nonfiction', 'history', '217', 'vikas'),
(89, 'City of Joy, The', 'Lapierre, Dominique', 'fiction', 'novel', '177', 'vikas'),
(90, 'Freedom at Midnight', 'Lapierre, Dominique', 'nonfiction', 'history', '167', 'vikas'),
(91, 'Winter of Our Discontent, The', 'Steinbeck, John', 'fiction', 'classic', '196', 'Penguin'),
(92, 'On Education', 'Russell, Bertrand', 'philosophy', 'education', '203', 'Routledge'),
(93, 'Free Will', 'Harris, Sam', 'nonfiction', 'psychology', '203', 'FreePress'),
(94, 'Bookless in Baghdad', 'Tharoor, Shashi', 'nonfiction', 'history', '206', 'Penguin'),
(95, 'Case of the Lame Canary, The', 'Gardner, Earle Stanley', 'fiction', 'novel', '179', NULL),
(96, 'Theory of Everything, The', 'Hawking, Stephen', 'science', 'physics', '217', 'Jaico'),
(97, 'New Markets & Other Essays', 'Drucker, Peter', 'science', 'economics', '176', 'Penguin'),
(98, 'Electric Universe', 'Bodanis, David', 'science', 'physics', '201', 'Penguin'),
(99, 'Hunchback of Notre Dame, The', 'Hugo, Victor', 'fiction', 'classic', '175', 'Random House'),
(100, 'Burning Bright', 'Steinbeck, John', 'fiction', 'classic', '175', 'Penguin'),
(101, 'Age of Discontuinity, The', 'Drucker, Peter', 'nonfiction', 'economics', '178', 'Random House'),
(102, 'Doctor in the Nude', 'Gordon, Richard', 'fiction', 'novel', '179', 'Penguin'),
(103, 'Down and Out in Paris & London', 'Orwell, George', 'nonfiction', 'autobiography', '179', 'Penguin'),
(104, 'Identity & Violence', 'Sen, Amartya', 'philosophy', 'philosophy', '219', 'Penguin'),
(105, 'Beyond the Three Seas', 'Dalrymple, William', 'nonfiction', 'history', '197', 'Random House'),
(106, 'World\'s Greatest Short Stories, The', NULL, 'fiction', 'classic', '217', 'Jaico'),
(107, 'Talking Straight', 'Iacoca, Lee', 'nonfiction', 'autobiography', '175', NULL),
(108, 'Maugham\'s Collected Short Stories, Vol 3', 'Maugham, William S', 'fiction', 'classic', '171', 'Vintage'),
(109, 'Phantom of Manhattan, The', 'Forsyth, Frederick', 'fiction', 'classic', '180', NULL),
(110, 'Ashenden of The British Agent', 'Maugham, William S', 'fiction', 'classic', '160', 'Vintage'),
(111, 'Zen & The Art of Motorcycle Maintenance', 'Pirsig, Robert', 'philosophy', 'autobiography', '172', 'Vintage'),
(112, 'Great War for Civilization, The', 'Fisk, Robert', 'nonfiction', 'history', '197', 'HarperCollins'),
(113, 'We the Living', 'Rand, Ayn', 'fiction', 'novel', '178', 'Penguin'),
(114, 'Artist and the Mathematician, The', 'Aczel, Amir', 'science', 'mathematics', '186', 'HighStakes'),
(115, 'History of Western Philosophy', 'Russell, Bertrand', 'philosophy', 'philosophy', '213', 'Routledge'),
(116, 'Selected Short Stories', NULL, 'fiction', 'classic', '215', 'Jaico'),
(117, 'Rationality & Freedom', 'Sen, Amartya', 'science', 'economics', '213', 'Springer'),
(118, 'Clash of Civilizations and Remaking of the World Order', 'Huntington, Samuel', 'nonfiction', 'history', '228', 'Simon&Schuster'),
(119, 'Uncommon Wisdom', 'Capra, Fritjof', 'nonfiction', 'anthology', '197', 'Fontana'),
(120, 'One', 'Bach, Richard', 'nonfiction', 'autobiography', '172', 'Dell'),
(121, 'Karl Marx Biography', NULL, 'nonfiction', 'autobiography', '162', NULL),
(122, 'To Sir With Love', 'Braithwaite', 'fiction', 'classic', '197', 'Penguin');

--
-- Indexes for table `Books`
--
ALTER TABLE `Books`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for table `Books`
--
ALTER TABLE `Books`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=123;
COMMIT;