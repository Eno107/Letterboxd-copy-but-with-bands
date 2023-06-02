-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 02, 2023 at 04:21 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `orpheus`
--

-- --------------------------------------------------------

--
-- Table structure for table `album`
--

CREATE TABLE `album` (
  `album_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `artist` int(11) NOT NULL,
  `prof_pic` varchar(255) NOT NULL,
  `length` varchar(255) NOT NULL,
  `relase` int(11) NOT NULL,
  `spotify` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `album`
--

INSERT INTO `album` (`album_id`, `name`, `artist`, `prof_pic`, `length`, `relase`, `spotify`) VALUES
(101, 'Aphotic', 11, './projectimgs/aphotic.png', '50:51', 2011, 'https://open.spotify.com/album/2qu7B0v0xJYo44KiDJSYnP'),
(102, 'Bled White', 11, './projectimgs/bled_white.png', '1:08:14', 2014, 'https://open.spotify.com/album/6avXuI0EwgEQtaev2CnLuZ'),
(103, 'Hamartia', 11, './projectimgs/hamartia.png', '56:44', 2017, 'https://open.spotify.com/album/0FpI1CJs7fzPJqQgCUAGah'),
(104, 'Nephilim Grove', 11, './projectimgs/nephilim_grove.png', '52:59', 2019, 'https://open.spotify.com/album/7xNZwURYY9mYfrAmrmP828'),
(105, 'The novella reservoir', 11, './projectimgs/the_novella_reservoir.png', '45:55', 2007, 'https://open.spotify.com/album/5fL7A8fQWQbz4um1ZQFlhM'),
(106, 'The pale haunt departure', 11, './projectimgs/the_pale_haunt_departure.png', '51:42', 2005, 'https://open.spotify.com/album/6A3io91FO1e6GFruHoz4HL'),
(107, 'Howdilly Twodilly', 9, './projectimgs/howdilly_twodilly.png', '38:06', 2019, 'https://open.spotify.com/album/3U9pQYTgcV3nrWFDlnZWlJ'),
(108, 'Amnesiac', 1, './projectimgs/amnesiac.png', '47:21', 2001, 'https://open.spotify.com/album/1HrMmB5useeZ0F5lHrMvl0'),
(109, 'Hail to the thief', 1, './projectimgs/hail_to_the_thief.png', '56:35', 2003, 'https://open.spotify.com/album/5mzoI3VH0ZWk1pLFR6RoYy'),
(110, 'In Rainbows', 1, './projectimgs/in_rainbows.png', '42:38', 2007, 'https://open.spotify.com/album/5vkqYmiPBYLaalcmjujWxK'),
(111, 'Kid a', 1, './projectimgs/kid_a.png', '47:11', 2000, 'https://open.spotify.com/album/6GjwtEZcfenmOf6l18N7T7'),
(112, 'Ok computer', 1, './projectimgs/ok_computer.png', '53:41', 1997, 'https://open.spotify.com/album/6dVIqQ8qmQ5GBnJ9shOYGE'),
(113, 'The bends', 1, './projectimgs/the_bends.png', '48:39', 1995, 'https://open.spotify.com/album/35UJLpClj5EDrhpNIi4DFg'),
(114, 'Dawn of victory', 12, './projectimgs/dawn_of_victory.png', '49:31', 2000, 'https://open.spotify.com/album/6T6i4ZLAwRHVOxRaQnC5js'),
(115, 'Legendary tales', 12, './projectimgs/legendary_tales.png', '45:34', 1997, 'https://open.spotify.com/album/4VTthS6o2pV12cux2FSXRS'),
(116, 'Symphony of enchanted lands', 12, './projectimgs/symphony_of_enchanted_lands.png', '55:46', 1998, 'https://open.spotify.com/album/346aOAWcE17Sz9pqeENw4I'),
(117, 'Glory for salvation', 12, './projectimgs/glory_for_salvation.png', '1:06:00', 2021, 'https://open.spotify.com/album/4OfONg7cNiDlH9tpVNKN5i'),
(118, 'The eighth mountain', 12, './projectimgs/the_eighth_mountain.png', '1:04:00', 2019, 'https://open.spotify.com/album/3pwQV3i9yTnQPGlwvfNfRg'),
(119, 'Triumph or agony', 12, './projectimgs/triumph_or_agony.png', '1:02:33', 2006, 'https://open.spotify.com/track/04d6uafYR81pq9dTpx4Hez'),
(120, 'Angles', 15, './projectimgs/angles.png', '34:12', 2011, 'https://open.spotify.com/album/6Jx4cGhWHewTcfKDJKguBQ'),
(121, 'Comedown machine', 15, './projectimgs/comedown_machine.png', '39:54', 2013, 'https://open.spotify.com/album/4WnkQO4xD9ljQooB3VIxCV'),
(122, 'First impressions of earth', 15, './projectimgs/first_impressions_of_earth.png', '52:02', 2006, 'https://open.spotify.com/album/1HQ61my1h3VWp2EBWKlp0n'),
(123, 'Is this it', 15, './projectimgs/is_this_it.png', '35:48', 2001, 'https://open.spotify.com/album/2yNaksHgeMQM9Quse463b5'),
(124, 'Room on fire', 15, './projectimgs/room_on_fire.png', '33:05', 2003, 'https://open.spotify.com/album/3HFbH1loOUbqCyPsLuHLLh'),
(125, 'The new abnormal', 15, './projectimgs/the_new_abnormal.png', '45:10', 2020, 'https://open.spotify.com/album/2xkZV2Hl1Omi8rk2D7t5lN'),
(126, 'Demigod', 10, './projectimgs/demigod.png', '41:01', 2004, 'https://open.spotify.com/album/0agVluQ3DkGd2dIec20gU6'),
(127, 'Evangelion', 10, './projectimgs/evangelion.png', '41:58', 2009, 'https://open.spotify.com/album/7k6KxkfxwJuUecA41Xe2QL'),
(128, 'I loved you at your darkest', 10, './projectimgs/i_loved_you_at_your_darkest.png', '46:39', 2018, 'https://open.spotify.com/album/7FY3UoY2F1mdvptEBkHiZb'),
(129, 'Opvs contra natvram', 10, './projectimgs/opvs_contra_natvram.png', '43:20', 2022, 'https://open.spotify.com/album/4HJqsD4Aw2HHa24liDoxFe'),
(130, 'The apostasy', 10, './projectimgs/the_apostasy.png', '1:08:00', 2007, 'https://open.spotify.com/album/3uKQnAnKQXvtau6tvFDyh1'),
(131, 'The satanist', 10, './projectimgs/the_satanist.png', '44:22', 2014, 'https://open.spotify.com/album/3KMD4mCBn8KS8bhtwn3cnq'),
(132, 'I let the devil in', 3, './projectimgs/i_let_the_devil_in.png', '38:45', 2018, 'https://open.spotify.com/album/243HdSBXwZWGcDxqae5hZX'),
(133, 'The death we seek', 3, './projectimgs/the_death_we_seek.png', '39:54', 2023, 'https://open.spotify.com/album/0llAadNufIDvVRzWfSxQxC'),
(134, 'The place i feel safest', 3, './projectimgs/the_place_i_feel_safest.png', '50:23', 2017, 'https://open.spotify.com/album/5N6IHOSvle9RAoC1QvqsgS'),
(135, 'The way it ends', 3, './projectimgs/the_way_it_ends.png', '38:50', 2020, 'https://open.spotify.com/album/2pVCexIJwUK0Mg9cFtDhxr'),
(136, 'A matter of life and death', 2, './projectimgs/a_matter_of_life_and_death.png', '1:12:00', 2006, 'https://open.spotify.com/album/1gdB9kn59KSAVG5VQcjdHi'),
(137, 'Brave new world', 2, './projectimgs/brave_new_world.png', '1:07:00', 2000, 'https://open.spotify.com/album/1hDF0QPIHVTnSJtxyQVguB'),
(138, 'Fear of the dark', 2, './projectimgs/fear_of_the_dark.png', '58:37', 1992, 'https://open.spotify.com/album/16Su3EUFLPqWVyrwN1q5wO'),
(139, 'Killers', 2, './projectimgs/killers.png', '38:47', 1981, 'https://open.spotify.com/album/5REF2imQI3lMAmeWcDXE3D'),
(140, 'Piece of mind', 2, './projectimgs/piece_of_mind.png', '46:09', 1983, 'https://open.spotify.com/album/7I9Wh2IgvI3Nnr8Z1ZSWby'),
(141, 'Powerslave', 2, './projectimgs/powerslave.png', '50:57', 1984, 'https://open.spotify.com/album/309KOMEivisMmBuzk09635'),
(142, 'Seventh son of seventh son', 2, './projectimgs/seventh_son_of_the_seventh_son.png', '44:05', 1988, 'https://open.spotify.com/album/1rG6IgNdwE1IGFuIKuYosz'),
(143, 'Somewhere in time', 2, './projectimgs/somewhere_in_time.png', '51:40', 1986, 'https://open.spotify.com/album/0OEg65hPhgP7B0Dy9TqP2L'),
(144, 'The final frontier', 2, './projectimgs/the_final_frontier.png', '1:16:00', 2010, 'https://open.spotify.com/album/5YAfxU5OZKqAvE1GZPRQYY'),
(145, 'The number of the beast', 2, './projectimgs/the_number_of_the_beast.png', '40:22', 1982, 'https://open.spotify.com/album/5S3gls8Kjn8KVmqlIDEBbO'),
(146, 'Absolution', 5, './projectimgs/absolution.png', '57:13', 2004, 'https://open.spotify.com/album/0HcHPBu9aaF1MxOiZmUQTl'),
(147, 'Black holes & revelations', 5, './projectimgs/black_holes_&_revelations.png', '50:15', 2006, 'https://open.spotify.com/album/0lw68yx3MhKflWFqCsGkIs'),
(148, 'Origin of symmetry', 5, './projectimgs/origin_of_symmetry.png', '55:06', 2001, 'https://open.spotify.com/album/1Dh27pjT3IEdiRG9Se5uQn'),
(149, 'Showbiz', 5, './projectimgs/showbiz.png', '54:26', 1999, 'https://open.spotify.com/album/6AyUVv7MnxxTuijp4WmrhO'),
(150, 'Il re e nudo', 7, './projectimgs/Il_re_e_nudo.jpeg', '32:12', 2014, 'https://open.spotify.com/album/4z5i2lNMvMrdw6Gm2PhVia'),
(151, 'Fake news', 7, './projectimgs/fake_news.jpeg', '54:24', 2022, 'https://open.spotify.com/album/320Gb2Ckal3R9G5GI8hgjV'),
(152, 'Fuori dall hype ringo star', 7, './projectimgs/fuori_dall_hype_ringo_star.jpeg', '1:01:00', 2020, 'https://open.spotify.com/album/56JsicBPrw88plclhKK74J'),
(153, 'Ahia', 7, './projectimgs/ahia.jpeg', '24:31', 2020, 'https://open.spotify.com/album/0b2peKNz7zmn4xIxfPBUPa'),
(154, 'Folklore', 4, './projectimgs/folklore.jpeg', '1:03:00', 2020, 'https://open.spotify.com/album/2fenSS68JI1h4Fo296JfGr'),
(155, 'Speak now', 4, './projectimgs/speak_now.jpeg', '1:41:00', 2010, 'https://open.spotify.com/album/6S6JQWzUrJVcJLK4fi74Fw'),
(156, 'Midnights', 4, './projectimgs/midnights.jpeg', '44:08', 2022, 'https://open.spotify.com/album/151w1FgRZfnKZA9FEcg9Z3'),
(157, 'Evermore', 4, './projectimgs/evermore.jpeg', '1:00:00', 2020, 'https://open.spotify.com/album/2Xoteh7uEpea4TohMxjtaq'),
(158, 'Reputation', 4, './projectimgs/reputation.jpeg', '55:45', 2017, 'https://open.spotify.com/album/6DEjYFkNZh67HP7R9PSZvv'),
(159, 'Teatro d ira', 14, './projectimgs/teatro_d_ira.jpeg', '29:08', 2021, 'https://open.spotify.com/album/7KF1Ain9mYYlg5M46g0i4A'),
(160, 'Chosen', 14, './projectimgs/chosen.jpeg', '20:52', 2017, 'https://open.spotify.com/album/2qJw6w5XwQO0PQlSWPu7Tw'),
(161, 'Il ballo della vita', 14, './projectimgs/il_ballo_della_vita.jpeg', '34:16', 2018, 'https://open.spotify.com/album/44a7Wk3Jh2JGVhjcFYWozj'),
(162, 'Rush', 14, './projectimgs/rush.jpeg', '52:50', 2023, 'https://open.spotify.com/album/2KUaR4K36tSliwAoUA1gcs'),
(163, 'Sunset season', 8, './projectimgs/sunset_season.jpeg', '18:39', 2018, 'https://open.spotify.com/album/16pubXUlqRziVWRsT6lLNz'),
(164, 'Superache', 8, './projectimgs/superache.jpeg', '40:22', 2022, 'https://open.spotify.com/album/5hIOd0FvjlgG4uLjXHkFWI'),
(165, 'Kid krow', 8, './projectimgs/kid_krow.jpeg', '33:33', 2020, 'https://open.spotify.com/album/2CMlkzFI2oDAy5MbyV7OV5'),
(166, 'Glory days', 6, './projectimgs/glory_days.jpeg', '1:15:00', 2016, 'https://open.spotify.com/album/4w49hcqZt66HZX0MJHfW0m'),
(167, 'LM5', 6, './projectimgs/lm5.jpeg', '26:30', 2018, 'https://open.spotify.com/album/4H9aW9bRNBV49fusgFUBGz'),
(168, 'Get weird', 6, './projectimgs/get_weird.jpeg', '1:03:00', 2015, 'https://open.spotify.com/album/2FnfZiFMv7bmXAIATOJDHs'),
(169, 'Salute', 6, './projectimgs/salute.jpeg', '1:16:00', 2013, 'https://open.spotify.com/album/4cH9WxyfNWlfR257RitWBt'),
(170, 'Confetti', 6, './projectimgs/confetti.jpeg', '40:31', 2020, 'https://open.spotify.com/album/33a8Ha3pE7fo2o4T4xLabF');

-- --------------------------------------------------------

--
-- Table structure for table `artist`
--

CREATE TABLE `artist` (
  `id` int(11) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `prof_pic` varchar(255) NOT NULL,
  `biography` longtext NOT NULL,
  `genre` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `artist`
--

INSERT INTO `artist` (`id`, `Name`, `prof_pic`, `biography`, `genre`) VALUES
(1, 'Radiohead', './projectimgs/radiohead.png', 'Radiohead are an English rock band formed in Abingdon, Oxfordshire, in 1985. The band consists of Thom Yorke (vocals, guitar, piano, keyboards); brothers Jonny Greenwood (lead guitar, keyboards, other instruments) and Colin Greenwood (bass); Ed O\'Brien (guitar, backing vocals); and Philip Selway (drums, percussion). They have worked with the producer Nigel Thornberry Cartoon character and the cover artist Stanley Donwood since 1994. Radiohead\'s experimental approach is credited with advancing the sound of alternative rock.<br><br>\r\n\r\n\r\n', 'Alternative Rock'),
(2, 'Iron Maiden', './projectimgs/ironMaiden.jpg', 'Iron Maiden are an English heavy metal band formed in Leyton, East London, in 1975 by bassist and primary songwriter Steve Harris. Although fluid in the early years of the band, the lineup for most of the band\'s history has consisted of Harris, lead vocalist Bruce Dickinson, drummer Nicko McBrain, and Canadian actor Michael Cera, Adrian Smith and Janick Gers. \r\n<br><br>As pioneers of the new wave of British heavy metal movement, Iron Maiden achieved initial success during the early 1980s. After several lineup changes, the band went on to release a series of UK and US Platinum and Gold albums, including 1980\'s debut album, 1981\'s Killers, and 1982\'s The Number of the Beast – its first album with Bruce Dickinson, who replaced Paul Di\'Anno as lead singer – which was a turning point in their career, helping establish them as one of heavy metal\'s most important artists.The Number of the Beast is among the most popular heavy metal albums of all time, having sold almost 20 million copies worldwide.\r\n<br>\r\n', 'Heavy Metal'),
(3, 'Currents', './projectimgs/currents.jpeg', 'Currents is an American metalcore band from Fairfield, Connecticut, formed in 2011. After numerous line-up changes, they consist of singer Brian Wille, guitarists Ryan Castaldi and Chris Wiseman, bassist and backing vocalist Christian Pulgarin, and drummer Matt Young.<br><br>\r\nIn January 2013, the debut EP Victimized was released independently with five tracks on it. Two years later, on January 23, 2015, they released the EP Life // Lost, in which Ricky Armellino from This or the Apocalypse appears as a guest musician, was also released independently.<br><br>\r\n', 'Progressive Metal'),
(4, 'Taylor Swift', './projectimgs/taylor.jpg', 'Taylor Alison Swift (born December 13, 1989) is an American singer-songwriter. Recognized for her genre-spanning discography, songwriting, and artistic reinventions, Swift is a prominent cultural figure who has been cited as an influence on a generation of music artists.<br><br>\r\nSwift started professional songwriting at 14 and signed a recording contract with Big Machine Records in 2005 to become a country musician. Under Big Machine, she released six studio albums, four of which to country radio.', 'Pop'),
(5, 'Muse', './projectimgs/muse.jpg', 'Muse are an English rock band from Teignmouth, Devon, formed in 1994. The band consists of Matt Bellamy (lead vocals, guitar, keyboards), Chris Wolstenholme (bass guitar, backing vocals), and Dominic Howard (drums).\r\n<br><br>\r\nMuse released their debut album, Showbiz, in 1999, showcasing Bellamy\'s falsetto and a melancholic alternative rock style. Their second album, Origin of Symmetry (2001), incorporated wider instrumentation and romantic classical influences and earned them a reputation for energetic live performances. Absolution (2003) saw further classical influence, with strings on tracks such as \"Butterflies and Hurricanes\", and was the first of seven consecutive UK number-one albums.\r\n<br><br>\r\n\r\n', 'Alternative Rock'),
(6, 'Little Mix', './projectimgs/littleMix.jpg', 'Little Mix are a British girl group, formed on the eighth series of The X Factor UK by Kelly Rowland. In 2011, the group rose to prominence after becoming the first group to win the series, and are regarded as the show\'s most successful winning act  Originally a four-piece group, the line up consisted of Leigh-Anne Pinnock, Jade Thirlwall, Perrie Edwards, and Jesy Nelson, before her departure in 2020. Known for their vocals and signature harmonies, they are cited for helping the girl band renaissance in the UK and for re-defining girl groups. In 2022, Little Mix went on an indefinite hiatus, allowing its members to pursue solo projects.\r\n<br>', 'Pop'),
(7, 'Pinguini Tattici Nucleari\r\n', './projectimgs/pinguini.png', 'The band was born at the end of 2010 in the province of Bergamo , and is formed by Francesco Bernuzzi, Claudio Cuter, Cristiano Marchesi, Lorenzo Pasini and Riccardo Zanotti . According to the members of the band, the name derives from the Scottish Tactical Nuclear Penguin beer , produced since 2009 by the BrewDog brewery. They made their debut as a demented metal band.<br><br>\r\nTheir first self-produced EP , containing five songs, entitled Cartoni animali , was released in 2012. On December 18, 2012 they performed on the stage of the Polaresco in Bergamo for the party of the Uni+ university list.<br>', 'Rock'),
(8, 'Conan Gray', './projectimgs/detektivi.jpg', 'Conan Lee Gray (born December 5, 1998), is an American singer and songwriter. Born in Lemon Grove, California, and raised in Georgetown, Texas, he began uploading vlogs, covers and original songs to YouTube as a teenager. In 2018, Gray signed a record deal with Republic Records, which released his debut EP, Sunset Season (2018). Bolstered by the commercially successful songs \"Maniac\" and \"Heather\", his debut studio album Kid Krow (2020) debuted at number five on the U.S. Billboard 200, making it the biggest U.S. artist debut of the year. His second studio album, Superache (2022), received critical acclaim and debuted in the top 10 in the U.S., the United Kingdom, Australia, Ireland and the Netherlands.<br>\r\n', 'Pop'),
(9, 'Okilly Dokilly', './projectimgs/okillydok.jpeg', 'Okilly Dokilly were an American heavy metal band from Phoenix, Arizona, United States, that played \"Nedal\" music; a subgenre of metal music themed around the animated character Ned Flanders from the television series The Simpsons. All four of the band\'s members performed dressed as Flanders, and the majority of the lyrics to their songs are quotes of his.<br><br>\r\nThe band members go by the pseudonyms: Head Ned, Shred Ned, Zed Ned, Dread Ned and Bed Ned. The unusual concept behind the group has resulted in worldwide attention. The lead singer, Head Ned, said that Nedal music is \"Not as fast as Bartcore, and a little cleaner than Krusty Punk”, references to hardcore punk and crust punk, respectively.<br>', 'Heavy Metal'),
(10, 'Behemoth', './projectimgs/mothi.jpeg', 'Behemoth is a Polish extreme metal band from Gdańsk, formed in 1991. They are considered to have played an important role in establishing the Polish extreme metal underground.<br><br>\r\nUntil the late 1990s, the band played a traditional black metal style with heathen lyrical content, but soon changed to that of occult and thelemic themes written by their lead vocalist Nergal and Krzysztof Auschwitz. With the 1999 release of Satanica, the band demonstrated their presence in the death metal scene, while retaining their own signature style characterized by the drum work of Inferno and multi-layered vocals. Despite Behemoth having been labeled as death metal or thrash metal-influenced, Nergal has mentioned that he does not like the band to be labeled.<br>', 'Blackened Death Metal'),
(11, 'Novembers Doom', './projectimgs/november.jpeg', 'Novembers Doom is an American death-doom band from Chicago, currently signed to Prophecy Productions. Along with Evoken and Rigor Sardonicous, Novembers Doom is one of the earliest American death-doom bands still active today.<br><br>\r\nNovembers Doom formed in 1989 as the death-thrash metal band Laceration. Gradually, the band began to change their sound towards a heavier, slower style, at which point the name Novembers Doom was adopted as the band members felt it more suited their current direction. By 1991, the band was getting noticed in the metal underground for their dark heavy music on early demos (such as the \"Scabs\" demo, which was re-released as part of the Amid Its Hallowed Mirth remastered CD released in 2008).\r\n<br><br>\r\nExploring and expanding, the band added female backing vocals and continued its thick, eerie brand of metal. An early 7-inch record deal with Regress Records, of Italy, allowed Avantgarde Records to hear the band. This recording was heavy, combined with moods of darkness and despair. The two songs would lead to the release of the band\'s full-length debut CD, Amid Its Hallowed Mirth on Avant Garde and Nuclear Blast in early 1995.\r\n<br>', 'Doom-Death Metal'),
(12, 'Rhapsody Of Fire', './projectimgs/rapsodia.jpeg', 'Rhapsody of Fire (formerly known as Rhapsody) is an Italian symphonic power metal band formed by Luca Turilli and Alex Staropoli, widely seen as a pioneer of the symphonic power metal subgenre.<br><br>\r\nSince forming in 1993 as Thundercross, the band has released twelve studio albums, two live albums, three EPs, and a Live DVD. Rhapsody of Fire is known for its conceptual lyrics that constitute a fantasy story throughout all of their albums from 1997 to 2011. After using the moniker of Rhapsody for nearly ten years, the band changed its name to Rhapsody of Fire in 2006 due to trademark issues.\r\n<br>', 'Symphonic Power Metal Band'),
(14, 'Måneskin', './projectimgs/maneskin.jpg', 'Måneskin is an Italian rock band formed in Rome in 2016. The band is composed of vocalist Damiano David, bassist Victoria De Angelis, guitarist Thomas Raggi, and drummer Ethan Torchio. Performing in the streets in their early days, they rose to prominence after finishing second in the eleventh season of the Italian version of X Factor in 2017. Their international breakthrough occurred when the foursome won the Eurovision Song Contest 2021 for Italy with the song \"Zitti e buoni\".\r\n<br>', 'Rock'),
(15, 'The Strokes', './projectimgs/strokes.jpg', 'The Strokes are an American rock band formed in New York City in 1998. The band is composed of lead singer and songwriter Julian Casablancas, guitarists Nick Valensi and Albert Hammond Jr., bassist Nikolai Fraiture, and drummer Fabrizio Moretti. They were a leading group of the early-2000s indie rock revival.\r\n<br><br>\r\nThe release of their EP The Modern Age in early 2001 sparked a bidding war among major labels, with the band eventually signing to RCA Records. That summer, they released their debut album, Is This It, to critical acclaim and strong sales. It has since appeared on numerous \"best album\" lists. It was followed by Room on Fire (2003) and First Impressions of Earth (2005), both of which sold well but failed to match Is This It in critical success.\r\n<br>', 'Rock');

-- --------------------------------------------------------

--
-- Table structure for table `friendship`
--

CREATE TABLE `friendship` (
  `friendship_id` int(11) NOT NULL,
  `user_id1` int(11) NOT NULL,
  `user_id2` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `friendship`
--

INSERT INTO `friendship` (`friendship_id`, `user_id1`, `user_id2`) VALUES
(3, 1, 4),
(5, 11, 1),
(6, 1, 10),
(7, 12, 1),
(8, 13, 1),
(9, 14, 1),
(10, 14, 9),
(11, 14, 13),
(12, 14, 6),
(13, 14, 2),
(14, 14, 3),
(15, 14, 4),
(16, 14, 8),
(17, 14, 12),
(18, 1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `log`
--

CREATE TABLE `log` (
  `user_id` int(11) NOT NULL,
  `album_id` int(11) NOT NULL,
  `rating` int(11) NOT NULL,
  `time_created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `log`
--

INSERT INTO `log` (`user_id`, `album_id`, `rating`, `time_created`) VALUES
(1, 102, 3, '2023-05-27 01:15:08'),
(1, 170, 2, '2023-05-29 11:41:51'),
(1, 116, 3, '2023-05-26 23:08:28'),
(1, 136, 4, '2023-05-29 11:37:36'),
(1, 112, 5, '2023-05-29 11:37:20'),
(1, 125, 3, '2023-05-29 11:44:46'),
(1, 153, 2, '2023-05-29 11:42:27'),
(1, 142, 3, '2023-05-29 11:38:32'),
(1, 159, 2, '2023-05-29 11:43:53'),
(1, 111, 4, '2023-05-29 11:37:12'),
(1, 129, 5, '2023-05-27 01:15:22'),
(1, 118, 2, '2023-05-27 01:19:39'),
(1, 147, 3, '2023-05-29 11:40:28'),
(6, 112, 5, '2023-05-27 01:49:28'),
(6, 106, 4, '2023-05-27 01:51:27'),
(6, 110, 5, '2023-05-27 01:56:50'),
(6, 147, 1, '2023-05-27 01:57:05'),
(6, 142, 5, '2023-05-27 02:42:15'),
(1, 122, 4, '2023-05-29 11:44:22'),
(1, 120, 2, '2023-05-29 11:44:33'),
(7, 120, 5, '2023-05-27 03:45:37'),
(1, 143, 3, '2023-05-29 11:38:37'),
(1, 109, 4, '2023-05-29 11:36:58'),
(8, 112, 3, '2023-05-27 14:27:47'),
(8, 102, 5, '2023-05-27 14:31:15'),
(8, 120, 2, '2023-05-27 14:31:22'),
(10, 154, 5, '2023-05-27 17:39:06'),
(10, 120, 4, '2023-05-27 17:39:53'),
(10, 125, 5, '2023-05-27 17:41:39'),
(1, 167, 2, '2023-05-29 11:41:34'),
(12, 108, 4, '2023-05-27 22:37:31'),
(1, 113, 5, '2023-05-29 11:37:25'),
(13, 155, 5, '2023-05-29 10:51:35'),
(13, 154, 5, '2023-05-29 10:52:09'),
(13, 157, 5, '2023-05-29 10:52:38'),
(13, 158, 5, '2023-05-29 10:52:49'),
(13, 156, 4, '2023-05-29 10:53:13'),
(13, 167, 5, '2023-05-29 10:53:47'),
(13, 166, 5, '2023-05-29 10:54:01'),
(13, 169, 3, '2023-05-29 10:54:13'),
(13, 168, 4, '2023-05-29 10:54:25'),
(13, 170, 4, '2023-05-29 10:54:39'),
(13, 164, 5, '2023-05-29 10:55:08'),
(13, 163, 4, '2023-05-29 10:55:17'),
(13, 165, 4, '2023-05-29 10:55:24'),
(13, 153, 4, '2023-05-29 10:55:49'),
(13, 151, 5, '2023-05-29 10:56:57'),
(13, 150, 3, '2023-05-29 10:57:08'),
(13, 160, 3, '2023-05-29 11:06:52'),
(13, 159, 5, '2023-05-29 11:08:44'),
(13, 161, 4, '2023-05-29 11:09:04'),
(13, 162, 4, '2023-05-29 11:09:11'),
(13, 123, 4, '2023-05-29 11:09:50'),
(13, 147, 3, '2023-05-29 11:10:25'),
(14, 132, 3, '2023-05-29 11:48:14'),
(14, 133, 5, '2023-05-29 11:19:25'),
(14, 134, 4, '2023-05-29 11:48:28'),
(14, 135, 5, '2023-05-29 11:19:41'),
(14, 129, 4, '2023-05-29 11:20:17'),
(14, 128, 4, '2023-05-29 11:20:31'),
(14, 126, 3, '2023-05-29 11:20:39'),
(14, 127, 4, '2023-05-29 11:20:47'),
(14, 131, 5, '2023-05-29 11:20:56'),
(14, 130, 3, '2023-05-29 11:21:05'),
(14, 154, 1, '2023-05-29 11:21:23'),
(14, 155, 1, '2023-05-29 11:21:31'),
(14, 156, 1, '2023-05-29 11:21:38'),
(14, 157, 1, '2023-05-29 11:21:47'),
(14, 158, 1, '2023-05-29 11:21:55'),
(14, 106, 5, '2023-05-29 11:22:26'),
(14, 101, 4, '2023-05-29 11:22:34'),
(14, 102, 4, '2023-05-29 11:22:44'),
(14, 103, 4, '2023-05-29 11:22:54'),
(14, 104, 3, '2023-05-29 11:23:03'),
(14, 105, 5, '2023-05-29 11:23:11'),
(14, 114, 5, '2023-05-29 11:23:40'),
(14, 115, 3, '2023-05-29 11:23:47'),
(14, 116, 5, '2023-05-29 11:23:57'),
(14, 117, 4, '2023-05-29 11:24:06'),
(14, 118, 3, '2023-05-29 11:24:23'),
(14, 119, 4, '2023-05-29 11:24:33'),
(14, 144, 3, '2023-05-29 11:25:39'),
(14, 145, 5, '2023-05-29 11:25:55'),
(14, 140, 4, '2023-05-29 11:26:10'),
(14, 141, 5, '2023-05-29 11:26:19'),
(14, 142, 4, '2023-05-29 11:26:48'),
(14, 143, 4, '2023-05-29 11:27:00'),
(14, 139, 2, '2023-05-29 11:27:11'),
(14, 138, 3, '2023-05-29 11:27:23'),
(14, 137, 4, '2023-05-29 11:27:33'),
(14, 136, 3, '2023-05-29 11:27:43'),
(14, 150, 1, '2023-05-29 11:28:07'),
(14, 151, 2, '2023-05-29 11:28:17'),
(14, 152, 2, '2023-05-29 11:28:28'),
(14, 153, 1, '2023-05-29 11:28:40'),
(14, 159, 1, '2023-05-29 11:29:00'),
(14, 160, 2, '2023-05-29 11:29:09'),
(14, 161, 1, '2023-05-29 11:29:20'),
(14, 162, 2, '2023-05-29 11:29:34'),
(14, 165, 2, '2023-05-29 11:29:56'),
(14, 164, 1, '2023-05-29 11:30:07'),
(14, 163, 1, '2023-05-29 11:30:15'),
(14, 166, 1, '2023-05-29 11:30:38'),
(14, 167, 3, '2023-05-29 11:30:55'),
(14, 169, 2, '2023-05-29 11:31:05'),
(14, 170, 2, '2023-05-29 11:31:16'),
(14, 107, 3, '2023-05-29 11:31:35'),
(14, 108, 3, '2023-05-29 11:31:59'),
(14, 109, 3, '2023-05-29 11:32:08'),
(14, 110, 3, '2023-05-29 11:32:18'),
(14, 111, 1, '2023-05-29 11:32:42'),
(14, 112, 2, '2023-05-29 11:32:54'),
(14, 113, 4, '2023-05-29 11:33:09'),
(14, 146, 2, '2023-05-29 11:33:28'),
(14, 147, 4, '2023-05-29 11:33:37'),
(14, 148, 3, '2023-05-29 11:33:45'),
(14, 149, 4, '2023-05-29 11:33:52'),
(14, 120, 3, '2023-05-29 11:34:33'),
(14, 121, 2, '2023-05-29 11:34:43'),
(14, 122, 3, '2023-05-29 11:34:53'),
(14, 123, 5, '2023-05-29 11:35:02'),
(14, 124, 3, '2023-05-29 11:35:12'),
(14, 125, 3, '2023-05-29 11:35:31'),
(1, 108, 3, '2023-05-29 11:36:51'),
(1, 110, 5, '2023-05-29 11:37:04'),
(1, 137, 3, '2023-05-29 11:37:42'),
(1, 138, 3, '2023-05-29 11:37:48'),
(1, 139, 3, '2023-05-29 11:37:54'),
(1, 140, 3, '2023-05-29 11:38:05'),
(1, 141, 4, '2023-05-29 11:38:16'),
(1, 144, 2, '2023-05-29 11:38:25'),
(1, 145, 3, '2023-05-29 11:38:43'),
(1, 133, 4, '2023-05-29 11:39:13'),
(1, 135, 4, '2023-05-29 11:39:18'),
(1, 134, 3, '2023-05-29 11:39:23'),
(1, 132, 2, '2023-05-29 11:39:28'),
(1, 154, 4, '2023-05-31 18:09:31'),
(1, 155, 2, '2023-05-29 11:39:42'),
(1, 156, 2, '2023-05-29 11:39:50'),
(1, 157, 1, '2023-05-29 11:39:54'),
(1, 158, 1, '2023-05-29 11:39:59'),
(1, 146, 2, '2023-05-29 11:40:12'),
(1, 148, 4, '2023-05-29 11:40:37'),
(1, 149, 3, '2023-05-29 11:40:42'),
(1, 166, 1, '2023-05-29 11:41:27'),
(1, 168, 3, '2023-05-29 11:41:38'),
(1, 169, 3, '2023-05-29 11:41:44'),
(1, 152, 3, '2023-05-29 11:42:11'),
(1, 150, 1, '2023-05-29 11:42:16'),
(1, 151, 2, '2023-05-29 11:42:21'),
(1, 164, 3, '2023-05-29 11:42:38'),
(1, 163, 3, '2023-05-29 11:42:45'),
(1, 165, 2, '2023-05-29 11:42:51'),
(1, 107, 2, '2023-05-29 11:43:13'),
(1, 130, 1, '2023-05-29 11:43:24'),
(1, 161, 1, '2023-05-29 11:43:33'),
(1, 160, 1, '2023-05-29 11:43:39'),
(1, 162, 1, '2023-05-29 11:43:43'),
(1, 123, 5, '2023-05-29 11:44:18'),
(1, 121, 4, '2023-05-29 11:44:27'),
(1, 124, 3, '2023-05-29 11:44:40');

-- --------------------------------------------------------

--
-- Table structure for table `soundlist`
--

CREATE TABLE `soundlist` (
  `user_id` int(11) NOT NULL,
  `album_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `soundlist`
--

INSERT INTO `soundlist` (`user_id`, `album_id`) VALUES
(2, 162),
(2, 157),
(2, 130),
(2, 158),
(2, 117),
(2, 146),
(1, 116),
(6, 106),
(6, 110),
(6, 147),
(6, 112),
(1, 117),
(1, 115),
(1, 114),
(1, 119),
(1, 118),
(1, 106),
(1, 105),
(1, 104),
(1, 103),
(1, 102),
(1, 101),
(1, 127),
(1, 128),
(1, 129),
(1, 131),
(1, 126),
(10, 147),
(12, 120),
(13, 158),
(13, 166),
(13, 152),
(14, 106),
(14, 102),
(14, 116),
(14, 117),
(14, 129),
(14, 131),
(14, 128),
(14, 141),
(14, 136),
(1, 121),
(1, 124),
(1, 138);

-- --------------------------------------------------------

--
-- Table structure for table `trackkk`
--

CREATE TABLE `trackkk` (
  `tracklist_id` int(11) NOT NULL,
  `album_id` int(11) NOT NULL,
  `trackList` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `trackkk`
--

INSERT INTO `trackkk` (`tracklist_id`, `album_id`, `trackList`) VALUES
(0, 116, '<div class=\"track-name-container\">\r\n    <span> epicus furor </span>\r\n    <span>1:14</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> emerald sword </span>\r\n    <span>4:20</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> wisdom of the kings </span>\r\n    <span>4:28</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> heroes of the lost valley </span>\r\n    <span>2:04</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> eternal glory </span>\r\n    <span>7:29</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> beyond the gates of infinity </span>\r\n    <span>7:23</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> wings of destiny </span>\r\n    <span>4:28</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> the dark tower of the abyss </span>\r\n    <span>6:46</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> riding the winds of eternity </span>\r\n    <span>4:13</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> symphony of enchanted lands </span>\r\n    <span>13:17</span>\r\n</div>'),
(1, 133, '<div class=\"track-name-container\">\r\n    <span> The Death We Seek </span>\r\n    <span>4:05</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> Living In Tragedy </span>\r\n    <span>4:03</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> Unfamiliar </span>\r\n    <span>3:44</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> So Alone </span>\r\n    <span>3:58</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> Over and Over </span>\r\n    <span>4:08</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> Beyond This Road </span>\r\n    <span>4:08</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> Vengance </span>\r\n    <span>3:50</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> Gone Astray </span>\r\n    <span>3:38</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> Remember Me </span>\r\n    <span>4:04</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> Guide Us Home </span>\r\n    <span>4:11</span>\r\n</div>'),
(2, 134, '<div class=\"track-name-container\">\r\n    <span> Apnea </span>\r\n    <span>3:25</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> Tremor </span>\r\n    <span>3:19</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> Night Terrors </span>\r\n    <span>3:45</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> delusion</span>\r\n    <span>4:02</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> Withered </span>\r\n    <span>3:46</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> Dreamer </span>\r\n    <span>3:25</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> Forget Me </span>\r\n    <span>4:13</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> The Place I Feel Safest </span>\r\n    <span>3:52</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> Silence </span>\r\n    <span>4:07</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> Best Memory </span>\r\n    <span>4:25</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> Another Life </span>\r\n    <span>3:24</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> Im Not Waiting </span>\r\n    <span>3:58</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> Shattered </span>\r\n    <span>4:37</span>\r\n</div>'),
(3, 135, '<div class=\"track-name-container\">\r\n    <span> Never There </span>\r\n    <span>1:49</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> A Flag To Wave </span>\r\n    <span>3:34</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> Poverty Of Self </span>\r\n    <span>3:26</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> Monsters </span>\r\n    <span>3:32</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> Kill The Ache </span>\r\n    <span>3:53</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> Let Me Leave </span>\r\n    <span>3:21</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> Origin </span>\r\n    <span>4:05</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> Split </span>\r\n    <span>3:06</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> Second Skin </span>\r\n    <span>3:45</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> How I Fall Appart </span>\r\n    <span>4:11</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> Better Days </span>\r\n    <span>4:08</span>\r\n</div>'),
(4, 132, '<div class=\"track-name-container\">\r\n    <span> Into Dispair </span>\r\n    <span>3:52</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> My Disguise </span>\r\n    <span>4:21</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> Feel The Same </span>\r\n    <span>3:38</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> The Rope </span>\r\n    <span>3:38</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> Forever Marked </span>\r\n    <span>3:51</span>\r\n</div>'),
(5, 127, '<div class=\"track-name-container\">\r\n    <span> Daimonos </span>\r\n    <span>5:15</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> Shemhamforash </span>\r\n    <span>3:56</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> Ov Fire And The Void </span>\r\n    <span>4:27</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> Transmigrating Beyond Realms Ov Amenti </span>\r\n    <span>3:27</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> He Who Breeds Pestilence </span>\r\n    <span>5:41</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span>The Seed Ov I</span>\r\n    <span>4:58 </span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> Alas, Lord Is Upon Me </span>\r\n    <span>3:15</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> Defiling Morality Ov Black God </span>\r\n    <span>2:49</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> Lucifer </span>\r\n    <span>8:06</span>\r\n</div>'),
(6, 129, '<div class=\"track-name-container\">\r\n    <span> Post-God Nirvana </span>\r\n    <span>2:11</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> Malaria Vulgata </span>\r\n    <span>2:18</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> The Deathless Sun </span>\r\n    <span>4:43</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> Ov My Herculean Exile </span>\r\n    <span>4:44</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> Neo-Spartacvs</span>\r\n    <span>4:18</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> Disinheritance</span>\r\n    <span>4:23</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> Once Upon A Pale Horse </span>\r\n    <span>4:17</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> Thy Becoming Eternal </span>\r\n    <span>4:09</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> Versvs Christvs </span>\r\n    <span>6:30</span>\r\n</div>'),
(7, 128, '<div class=\"track-name-container\">\r\n    <span> Solve </span>\r\n    <span>2:04</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> Wolves of Siberia </span>\r\n    <span>2:54</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> God=Dog </span>\r\n    <span>3:58</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> Ecclesia Diabollica Catholica </span>\r\n    <span>4:49</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> Bartzabel </span>\r\n    <span>5:01</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> If Crucifixion Was Not Enough</span>\r\n    <span>2:04</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> Angelvs XIII </span>\r\n    <span>3:16</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> Sabbath Matter</span>\r\n    <span>4:56</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> Coagvla</span>\r\n    <span>2:04</span>\r\n</div>'),
(8, 130, '<div class=\"track-name-container\">\r\n    <span> Rome 64 C.E. </span>\r\n    <span>1:16</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> Slaying The Prophets Of Isa </span>\r\n    <span>3:23</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> At The Left Hand Ov God </span>\r\n    <span>4:57</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> Kriegsphilosophie</span>\r\n    <span>4:23</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> Be Without Fear </span>\r\n    <span>3:16</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> Arcana Heriticae</span>\r\n    <span>2:57</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> Libertheme </span>\r\n    <span>4:50</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> Inner Sanctum </span>\r\n    <span>5:01</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> Pazuzu </span>\r\n    <span>2:35</span></div>'),
(9, 126, '<div class=\"track-name-container\">\r\n    <span> Sculpting The Throne Ov Seth </span>\r\n    <span>4:41</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> Demigod </span>\r\n    <span>3:31</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> Conquer All </span>\r\n    <span>3:30</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> The Nephilim Rising </span>\r\n    <span>4:21</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> Towards Babylon </span>\r\n    <span>3:22</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> Before The Æons Came </span>\r\n    <span>2:58</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> Mysterium Coniunctionis </span>\r\n    <span>3:41</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> Slaves Shall Serve </span>\r\n    <span>3:05</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> The Reign Ov Shemsu-Hor </span>\r\n    <span>8:27</span></div>'),
(10, 131, '<div class=\"track-name-container\">\r\n    <span> Blow Your Trumpets Gabriel </span>\r\n    <span>4:25</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> Furor Divinus </span>\r\n    <span>3:07</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> Messe Noire </span>\r\n    <span>4:05</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> Ora Pro Nobis Lucifer</span>\r\n    <span>5:35</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> Amen </span>\r\n    <span>3:49</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> The Satanist </span>\r\n    <span>5:34</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> Ben Sahar</span>\r\n    <span>5:35</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> In The Absence Ov Light </span>\r\n    <span>4:59</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> O Father O Satan O Sun! </span>\r\n    <span>7:13</span></div>'),
(11, 165, '<div class=\"track-name-container\">\r\n    <span>Comfort Crowd</span>\r\n    <span>2:54</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span>Wish You Were Sober</span>\r\n    <span>2:48</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span>Maniac</span>\r\n    <span>3:05</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span>Online Love</span>\r\n    <span>0:37</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span>Checkmate</span>\r\n    <span>2:28</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span>The Cut That Always Bleeds</span>\r\n    <span>3:51</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span>Fight or Flight</span>\r\n    <span>2:51</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span>Affluenza</span>\r\n    <span>3:19</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span>(Can We Be Friends?)</span>\r\n    <span>0:59</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span>Heather</span>\r\n    <span>3:18</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span>Little League</span>\r\n    <span>3:14</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span>The Story</span>\r\n    <span>4:05</span>\r\n</div>'),
(12, 164, '<div class=\"track-name-container\">\r\n    <span>Movies</span>\r\n    <span>3:34</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span>People Watching</span>\r\n    <span>2:38</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span>Disaster</span>\r\n    <span>2:33</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span>Best Friend</span>\r\n    <span>2:28</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span>Astronomy</span>\r\n    <span>4:03</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span>Yours</span>\r\n    <span>4:03</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span>Jigsaw</span>\r\n    <span>3:28</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span>Family Line</span>\r\n    <span>3:36</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span>Summer Child</span>\r\n    <span>2:59</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span>Footnote</span>\r\n    <span>3:44</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span>Memories</span>\r\n    <span>4:08</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span>The Exit</span>\r\n    <span>3:41</span>\r\n</div>'),
(13, 163, '<div class=\"track-name-container\">\r\n    <span>Idle Town</span>\r\n    <span>3:57</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span>Generation Why</span>\r\n    <span>3:39</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span>Crush Culture</span>\r\n    <span>3:24</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span>Greek God</span>\r\n    <span>3:56</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span>Lookalike</span>\r\n    <span>3:00</span>\r\n</div>'),
(14, 154, '<div class=\"track-name-container\">\r\n    <span>the 1</span>\r\n    <span>3:30</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span>cardigan</span>\r\n    <span>3:59</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span>the last great american dynasty</span>\r\n    <span>3:51</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span>exile</span>\r\n    <span>4:45</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span>my tears ricochet</span>\r\n    <span>4:15</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span>mirrorball</span>\r\n    <span>3:28</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span>seven</span>\r\n    <span>3:28</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span>august</span>\r\n    <span>4:21</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span>this is me trying</span>\r\n    <span>3:15</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span>illicit affairs</span>\r\n    <span>3:10</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span>invisible string</span>\r\n    <span>4:12</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span>mad woman</span>\r\n    <span>3:57</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span>epiphany</span>\r\n    <span>4:49</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span>betty</span>\r\n    <span>4:54</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span>peace</span>\r\n    <span>3:54</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span>hoax</span>\r\n    <span>3:40</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span>the lakes</span>\r\n    <span>3:31</span>\r\n</div>'),
(15, 157, '<div class=\"track-name-container\">\r\n    <span>willow</span>\r\n    <span>3:34</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span>champagne problems</span>\r\n    <span>4:04</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span>gold rush</span>\r\n    <span>3:05</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span>\'tis the damn season</span>\r\n    <span>3:49</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span>tolerate it</span>\r\n    <span>4:05</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span>no body no crime (feat. HAIM)</span>\r\n    <span>3:35</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span>happiness</span>\r\n    <span>5:15</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span>dorothea</span>\r\n    <span>3:45</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span>coney island (feat. The National)</span>\r\n    <span>4:35</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span>ivy</span>\r\n    <span>4:20</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span>cowboy like me</span>\r\n    <span>4:35</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span>long story short</span>\r\n    <span>3:35</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span>marjorie</span>\r\n    <span>4:17</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span>closure</span>\r\n    <span>3:00</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span>evermore (feat. Bon Iver)</span>\r\n    <span>5:04</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span>right where you left me</span>\r\n    <span>4:05</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span>it\'s time to go</span>\r\n    <span>4:14</span>\r\n</div>'),
(16, 155, '<div class=\"track-name-container\">\r\n    <span>Mine</span>\r\n    <span>3:50</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span>Sparks Fly</span>\r\n    <span>4:20</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span>Back To December</span>\r\n    <span>4:53</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span>Speak Now</span>\r\n    <span>4:00</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span>Dear John</span>\r\n    <span>6:43</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span>Mean</span>\r\n    <span>3:57</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span>The Story Of Us</span>\r\n    <span>4:25</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span>Never Grow Up</span>\r\n    <span>4:50</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span>Enchanted</span>\r\n    <span>5:52</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span>Better Than Revenge </span>\r\n    <span>3:37</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span>Innocent</span>\r\n    <span>5:02</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span>Haunted</span>\r\n    <span>4:02</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span>Last Kiss</span>\r\n    <span>6:02</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span>Long Live</span>\r\n    <span>5:17</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span>Ours</span>\r\n    <span>3:58</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span>If This Was A Movie</span>\r\n    <span>3:54</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span>Superman</span>\r\n    <span>4:36</span>\r\n</div>'),
(17, 158, '<div class=\"track-name-container\">\r\n    <span>...Ready For It?</span>\r\n    <span>3:28</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span>End Game</span>\r\n    <span>4:04</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span>I Did Something Bad</span>\r\n    <span>3:58</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span>Don\'t Blame Me</span>\r\n    <span>3:56</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span>Delicate</span>\r\n    <span>3:52</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span>Look What You Made Me Do</span>\r\n    <span>3:31</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span>So It Goes...</span>\r\n    <span>3:47</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span>Gorgeous</span>\r\n    <span>3:29</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span>Getaway Car</span>\r\n    <span>3:53</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span>King Of My Hear</span>\r\n    <span>3:34</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span>Dancing With Our Hands Tied</span>\r\n    <span>3:31</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span>Dress</span>\r\n    <span>3:50</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span>This Is Why We Can\'t Have Nice Things</span>\r\n    <span>3:27</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span>Call It What You Want</span>\r\n    <span>3:23</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span>New Year\'s Day</span>\r\n    <span>3:55</span>\r\n</div>'),
(18, 156, '<div class=\"track-name-container\">\r\n    <span>Lavender Haze</span>\r\n    <span>3:22</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span>Maroon</span>\r\n    <span>3:38</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span>Anti-Hero</span>\r\n    <span>3:20</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span>Snow On The Beach (feat. Lana Del Ray)</span>\r\n    <span>4:16</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span>You\'re On Your Own, Kid</span>\r\n    <span>3:14</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span>Midnight Rain</span>\r\n    <span>2:54</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span>Question..?</span>\r\n    <span>3:30</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span>Vigilante Shit</span>\r\n    <span>2:44</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span>Bejewelled</span>\r\n    <span>3:14</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span>Labyrinth</span>\r\n    <span>4:07</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span>Karma</span>\r\n    <span>3:24</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span>Sweet Nothing</span>\r\n    <span>3:08</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span>Mastermind</span>\r\n    <span>3:11</span>\r\n</div>'),
(19, 151, '<div class=\"track-name-container\">\r\n    <span>Zen</span>\r\n    <span>3:23</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span>L\'Ultima Volta</span>\r\n    <span>3:02</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span>Hold On</span>\r\n    <span>3:24</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span>Stage Diving</span>\r\n    <span>3:50</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span>Ricordi</span>\r\n    <span>3:23</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span>Melting Pop</span>\r\n    <span>3:29</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span>Fede</span>\r\n    <span>3:42</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span>Dentista Croazia</span>\r\n    <span>4:23</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span>Hikikomori</span>\r\n    <span>3:27</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span>Giovani Wannabe</span>\r\n    <span>3:34</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span>Barfly</span>\r\n    <span>3:57</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span>Non Sono Cool</span>\r\n    <span>2:41</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span>Cena di Classe</span>\r\n    <span>4:34</span>\r\n</div>'),
(20, 152, '<div class=\"track-name-container\">\r\n    <span>Ringo Starr</span>\r\n    <span>3:03</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span>Ridere</span>\r\n    <span>3:34</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span>Bergamo</span>\r\n    <span>4:48</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span>Fuori dall\'Hype</span>\r\n    <span>3:51</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span>Antartide</span>\r\n    <span>4:35</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span>Lake Washington Boulevard</span>\r\n    <span>3:49</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span>Monopoli</span>\r\n    <span>3:59</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span>Nonono</span>\r\n    <span>3:32</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span>Scatole</span>\r\n    <span>4:06</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span>Sashimi</span>\r\n    <span>3:31</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span>La banalita del mare</span>\r\n    <span>3:13</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span>Verdura</span>\r\n    <span>3:30</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span>Freddie</span>\r\n    <span>4:58</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span>Cancellaria</span>\r\n    <span>5:52</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span>Irene</span>\r\n    <span>4:38</span>\r\n</div>'),
(21, 150, '<div class=\"track-name-container\">\r\n    <span>In vento - Intro</span>\r\n    <span>0:48</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span>In vento</span>\r\n    <span>3:21</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span>Italia Italia</span>\r\n    <span>2:54</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span>Test di ingresso di medicina</span>\r\n    <span>5:53</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span>Bagatelle</span>\r\n    <span>4:11</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span>Ilaria</span>\r\n    <span>4:46</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span>Cancelleria</span>\r\n    <span>4:28</span>\r\n</div>'),
(22, 153, '<div class=\"track-name-container\">\r\n    <span>Scooby Doo</span>\r\n    <span>2:29</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span>Scrivile Scemo</span>\r\n    <span>3:34</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span>Bohemien</span>\r\n    <span>3:13</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span>Pastello Bianco</span>\r\n    <span>3:56</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span>La storia infinita </span>\r\n    <span>3:27</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span>Giulia</span>\r\n    <span>3:06</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span>Ahia!</span>\r\n    <span>4:12</span>\r\n</div>'),
(23, 169, '<div class=\"track-name-container\">\r\n    <span>Salute</span>\r\n    <span>3:56</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span>Move</span>\r\n    <span>2:48</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span>little Me</span>\r\n    <span>3:55</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span>word Up!</span>\r\n    <span>3:04</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span>Nothing Feels Like You</span>\r\n    <span>3:27</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span>towers</span>\r\n    <span>3:58</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span>Competition </span>\r\n    <span>3:27</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span>These Four Walls</span>\r\n    <span>3:28</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span>About the Boy</span>\r\n    <span>3:44</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span>Boy</span>\r\n    <span>2:54</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span>Good Enough</span>\r\n    <span>3:52</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span>Mr Loverboy</span>\r\n    <span>3:14</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span>A Different Beat</span>\r\n    <span>3:27</span>\r\n</div>\r\n'),
(24, 170, '<div class=\"track-name-container\">\r\n    <span>break up song</span>\r\n    <span>3:20</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span>holiday</span>\r\n    <span>3:33</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span>sweet melody</span>\r\n    <span>3:33</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span>confetti</span>\r\n    <span>2:47</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span>happiness</span>\r\n    <span>3:17</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span>not a pop song</span>\r\n    <span>2:59</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span>nothing but my feelings</span>\r\n    <span>2:42</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span>gloves up</span>\r\n    <span>2:47</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span>a mess (happy 4 u)</span>\r\n    <span>3:29</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span>my love wont let you down</span>\r\n    <span>2:54</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span>rendezvous</span>\r\n    <span>2:56</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span>if you want my love</span>\r\n    <span>2:40</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span>breathe</span>\r\n    <span>3:39</span>\r\n</div>'),
(25, 167, '<div class=\"track-name-container\">\r\n    <span>the national manthem</span>\r\n    <span>0:29</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span>woman like me (feat. nicki minaj)</span>\r\n    <span>3:48</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span>think about us</span>\r\n    <span>3:55</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span>strip (feat. sharaya j)</span>\r\n    <span>3:19</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span>monster in me</span>\r\n    <span>3:45</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span>joan of arc</span>\r\n    <span>3:11</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span>love a girl right</span>\r\n    <span>3:02</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span>american boy</span>\r\n    <span>3:11</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span>told you so</span>\r\n    <span>3:12</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span>wasabi</span>\r\n    <span>2:34</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span>more than words (feat. KAMILLE)</span>\r\n    <span>3:18</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span>motivate</span>\r\n    <span>3:41</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span>notice</span>\r\n    <span>3:34</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span>the cure</span>\r\n    <span>3:35</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span>forget you not</span>\r\n    <span>3:07</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span>woman\'s world</span>\r\n    <span>3:37</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span>only you</span>\r\n    <span>3:09</span>\r\n</div>'),
(26, 166, '<div class=\"track-name-container\">\r\n    <span>Shout out to my ex</span>\r\n    <span>4:06</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span>touch (feat. kid ink)</span>\r\n    <span>3:22</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span>reggaeton lento (remix)</span>\r\n    <span>3:08</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span>F.U</span>\r\n    <span>3:58</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span>Power (feat. stormzy)</span>\r\n    <span>4:02</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span>no more sad songs (feat. machine gun kelly)</span>\r\n    <span>3:45</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span>oops (feat. charlie puth)</span>\r\n    <span>3:24</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span>you gotta not</span>\r\n    <span>3:11</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span>down & dirty</span>\r\n    <span>2:55</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span>your love</span>\r\n    <span>3:27</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span>nobody like you</span>\r\n    <span>4:08</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span>private show</span>\r\n    <span>2:41</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span>nothing else matters</span>\r\n    <span>4:27</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span>if i get my way</span>\r\n    <span>3:40</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span>is your love enough?</span>\r\n    <span>3:44</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span>dear lover</span>\r\n    <span>3:20</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span>beep beep</span>\r\n    <span>3:52</span>\r\n</div>'),
(27, 168, '<div class=\"track-name-container\">\r\n    <span>Black Magic</span>\r\n    <span>3:31</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span>Love me like you</span>\r\n    <span>3:17</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span>weird people</span>\r\n    <span>3:31</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span>secret love song (feat. Jason Derulo)</span>\r\n    <span>4:09</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span>hair</span>\r\n    <span>3:29</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span>grown</span>\r\n    <span>2:36</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span>i love you</span>\r\n    <span>4:09</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span>OMG</span>\r\n    <span>3:25</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span>Lightning</span>\r\n    <span>5:12</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span>A.D.I.D.A.S</span>\r\n    <span>3:22</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span>The end</span>\r\n    <span>2:12</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span>i won\'t</span>\r\n    <span>3:17</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span>secret love song, pt. II</span>\r\n    <span>4:27</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span>clued up</span>\r\n    <span>4:06</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span>the beginning</span>\r\n    <span>1:35</span>\r\n</div>\r\n'),
(28, 137, '<div class=\"track-name-container\">\r\n    <span> the wicker man </span>\r\n    <span>4:37</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> ghost of the navigator </span>\r\n    <span>6:50</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> brave new world </span>\r\n    <span>6:18</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> blood brothers </span>\r\n    <span>7:14</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> the mercenary </span>\r\n    <span>4:42</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> dream of mirrors </span>\r\n    <span>9:21</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> the fallen angel </span>\r\n    <span>4:00</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> the nomad </span>\r\n    <span>9:06</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> out of the silent planet </span>\r\n    <span>6:25</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> the thin line between love and hate </span>\r\n    <span>8:26</span>\r\n</div>'),
(29, 140, '<div class=\"track-name-container\">\r\n    <span> where eagles dare </span>\r\n    <span>6:08</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> revelations </span>\r\n    <span>3:49</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> flight of icarus </span>\r\n    <span>3:49</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> die with your boots on </span>\r\n    <span>5:22</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> the trooper </span>\r\n    <span>4:10</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> where eagles dare </span>\r\n    <span>6:08</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> still life </span>\r\n    <span>4:27</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> quest of fire </span>\r\n    <span>3:40</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> sun and steel </span>\r\n    <span>3:25</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> to tame a land </span>\r\n    <span>7:26</span>\r\n</div>'),
(30, 145, '<div class=\"track-name-container\">\r\n    <span> Invaders </span>\r\n    <span>3:20</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> children of the damned</span>\r\n    <span>4:34</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> the prisoner </span>\r\n    <span>5:34</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> 22 acacia avenue </span>\r\n    <span>6:34</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> the number of the beast </span>\r\n    <span>4:25</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> run to the hills </span>\r\n    <span>3:50</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> gangland </span>\r\n    <span>3:46</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> hallowed be thy name </span>\r\n    <span>7:08</span>\r\n</div>\r\n'),
(31, 139, '<div class=\"track-name-container\">\r\n    <span> the ides of march </span>\r\n    <span>1:48</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> wrathchild </span>\r\n    <span>2:54</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> murders in the rue morgue </span>\r\n    <span>4:14</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> another life </span>\r\n    <span>3:22</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> genghis khan </span>\r\n    <span>3:02</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> innocent exile </span>\r\n    <span>3:50</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> killers </span>\r\n    <span>4:58</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> prodigal son </span>\r\n    <span>6:00</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> purgatory </span>\r\n    <span>3:18</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> drifter </span>\r\n    <span>4:47</span>\r\n</div>'),
(32, 141, '<div class=\"track-name-container\">\r\n    <span> aces high </span>\r\n    <span>4:31</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> 2 minutes to midnight </span>\r\n    <span>6:04</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> losfer words (Big \'Orra) </span>\r\n    <span>4:15</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> flash of the blade </span>\r\n    <span>4:05</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> the duellists </span>\r\n    <span>6:18</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> back in the village </span>\r\n    <span>5:02</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> powerslave </span>\r\n    <span>7:12</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> rime of the ancient mariner </span>\r\n    <span>13:45</span>\r\n</div>'),
(33, 142, '<div class=\"track-name-container\">\r\n    <span> moonchild </span>\r\n    <span>5:38</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> infinite dreams </span>\r\n    <span>6:08</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> can i play with madness </span>\r\n    <span>3:30</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> the evil that men do </span>\r\n    <span>4:33</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> seventh son of a seventh son </span>\r\n    <span>9:52</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> the prophecy </span>\r\n    <span>5:04</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> the clairvoyant </span>\r\n    <span>4:26</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> only the good die young </span>\r\n    <span>4:40</span>\r\n</div>'),
(34, 143, '<div class=\"track-name-container\">\r\n    <span> caught somewhere in time </span>\r\n    <span>7:22</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> wasted years </span>\r\n    <span>5:06</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> sea of madness </span>\r\n    <span>5:42</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> heaven can wait </span>\r\n    <span>7:24</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> the loneliness of the long distance runner </span>\r\n    <span>6:31</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> stranger in a strange land </span>\r\n    <span>5:43</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> Deja-Vu </span>\r\n    <span>4:55</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> alexander the great </span>\r\n    <span>8:35</span>\r\n</div>'),
(35, 144, '<div class=\"track-name-container\">\r\n    <span> Satellite 15... The Final Frontier </span>\r\n    <span>8:40</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> el dorado </span>\r\n    <span>6:49</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> mother of mercy </span>\r\n    <span>5:40</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> coming home </span>\r\n    <span>5:52</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> the alchemist </span>\r\n    <span>4:29</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> isle of avalon </span>\r\n    <span>9:06</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> starblind </span>\r\n    <span>7:48</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> the talisman </span>\r\n    <span>9:03</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> the man who would be king </span>\r\n    <span>8:28</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> when the wild blows </span>\r\n    <span>10:59</span>\r\n</div>'),
(36, 136, '<div class=\"track-name-container\">\r\n    <span> different world </span>\r\n    <span>4:17</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> these colours don\'t run </span>\r\n    <span>6:52</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> brighter than a thousand suns </span>\r\n    <span>8:44</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> the pilgrim </span>\r\n    <span>5:07</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> the longest day </span>\r\n    <span>7:48</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> out of the shadows </span>\r\n    <span>5:36</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> the reincarnation of benjamin breeg </span>\r\n    <span>7:21</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> for the greater good of god </span>\r\n    <span>9:23</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> lord of light </span>\r\n    <span>7:25</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> the legacy</span>\r\n    <span>9:20</span>\r\n</div>');
INSERT INTO `trackkk` (`tracklist_id`, `album_id`, `trackList`) VALUES
(37, 138, '<div class=\"track-name-container\">\r\n    <span> be quick or be dead </span>\r\n    <span>3:21</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> from here to eternity </span>\r\n    <span>3:35</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> afraid to shoot strangers </span>\r\n    <span>6:52</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> fear is the key </span>\r\n    <span>5:30</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> childhood\'s end </span>\r\n    <span>4:37</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> wasting love </span>\r\n    <span>5:46</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> the fugitive </span>\r\n    <span>4:52</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> chains of misery </span>\r\n    <span>3:33</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> the apparition </span>\r\n    <span>3:53</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> judas be my guide </span>\r\n    <span>3:06</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> weekend warrior </span>\r\n    <span>5:37</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> fear of the dark </span>\r\n    <span>7:16</span>\r\n</div>'),
(38, 161, '<div class=\"track-name-container\">\r\n    <span>new song</span>\r\n    <span>3:33</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span>torna a casa</span>\r\n    <span>3:50</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span>l\'altra dimensione</span>\r\n    <span>2:06</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span>sh*t blvd</span>\r\n    <span>3:22</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span>fear for nobody</span>\r\n    <span>2:30</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span>le parole lontane</span>\r\n    <span>3:24</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span>immortale (feat. vegas jones)</span>\r\n    <span>2:31</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span>lasciami stare</span>\r\n    <span>2:49</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span>are you ready?</span>\r\n    <span>2:33</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span>close to the top</span>\r\n    <span>2:18</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span>niente da dire</span>\r\n    <span>2:36</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span>moriro da re</span>\r\n    <span>2:37</span>\r\n</div>'),
(39, 162, '<div class=\"track-name-container\">\r\n    <span>OWN MY MIND</span>\r\n    <span>3:11</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span>GOSSIP (feat. Tom Morello)</span>\r\n    <span>2:48</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span>TIMEZONE</span>\r\n    <span>2:59</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span>BLA BLA BLA</span>\r\n    <span>3:04</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span>BABY SAID</span>\r\n    <span>2:44</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span>GASOLINE</span>\r\n    <span>3:41</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span>FEEL </span>\r\n    <span>2:47</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span>DON\'T WANNA SLEEP</span>\r\n    <span>2:36</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span>KOOL KIDS</span>\r\n    <span>2:43</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span>IF NOT FOR YOU</span>\r\n    <span>3:15</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span>READ YOUR DIARY</span>\r\n    <span>2:30</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span>MARK CHAPMAN</span>\r\n    <span>3:40</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span>LA FINE</span>\r\n    <span>3:20</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span>IL DONO DELLA VITA</span>\r\n    <span>3:44</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span>MAMMAMIA</span>\r\n    <span>3:06</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span>SUPERMODEL</span>\r\n    <span>2:28</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span>THE LONELIEST</span>\r\n    <span>4:07</span>\r\n</div>'),
(40, 160, '<div class=\"track-name-container\">\r\n    <span>chosen</span>\r\n    <span>2:42</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span>recovery</span>\r\n    <span>2:55</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span>vengo dalla luna</span>\r\n    <span>3:04</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span>beggin\'</span>\r\n    <span>3:31</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span>let\'s get it started</span>\r\n    <span>2:26</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span>somebody told me</span>\r\n    <span>2:41</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span>you need me, i don\'t need you</span>\r\n    <span>3:30</span>\r\n</div>'),
(41, 159, '<div class=\"track-name-container\">\r\n    <span>zitti e buoni</span>\r\n    <span>3:14</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span>coraline</span>\r\n    <span>5:00</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span>lividi sui gomitu</span>\r\n    <span>2:45</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span>i wanna be your slave</span>\r\n    <span>2:53</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span>in nome del padre</span>\r\n    <span>3:50</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span>for your love</span>\r\n    <span>3:50</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span>la paura del buio</span>\r\n    <span>3:29</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span>vent\'anni</span>\r\n    <span>2:47</span>\r\n</div>\r\n'),
(42, 105, '<div class=\"track-name-container\">\r\n    <span> rain </span>\r\n    <span>4:16</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> the novella reservoir </span>\r\n    <span>5:22</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> drown the inland mere </span>\r\n    <span>6:00</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> twilight innocence </span>\r\n    <span>5:58</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> the voice of failure </span>\r\n    <span>5:51</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> they were left to die </span>\r\n    <span>5:30</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> dominate the human strain </span>\r\n    <span>5:30</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> leaving this </span>\r\n    <span>7:27</span>\r\n</div>\r\n\r\n'),
(43, 102, '<div class=\"track-name-container\">\r\n    <span> bled white </span>\r\n    <span>6:49</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> heartfelt </span>\r\n    <span>7:09</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> just breathe </span>\r\n    <span>7:50</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> scorpius </span>\r\n    <span>1:15</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> unrest </span>\r\n    <span>5:25</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> the memory room </span>\r\n    <span>6:53</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> the brave pawn </span>\r\n    <span>3:58</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> clear </span>\r\n    <span>6:06</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> the grand circle </span>\r\n    <span>6:48</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> animus </span>\r\n    <span>6:39</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> the silent dark </span>\r\n    <span>9:29</span>\r\n</div>\r\n'),
(44, 101, '<div class=\"track-name-container\">\r\n    <span> the dark host </span>\r\n    <span>8:08</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> harvest scythe </span>\r\n    <span>5:42</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> buried </span>\r\n    <span>6:32</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> what could have been </span>\r\n    <span>6:33</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> Of Age and Origin - Part 1: A Violent Day </span>\r\n    <span>5:04</span>\r\n</div>\r\n<hr>\r\n\r\n<div class=\"track-name-container\">\r\n    <span> Of Age and Origin - Part 2: A Day of joy </span>\r\n    <span>3:19</span>\r\n</div>\r\n<hr>\r\n\r\n<div class=\"track-name-container\">\r\n    <span> six sides </span>\r\n    <span>7:47</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> shadow play </span>\r\n    <span>7:46</span>\r\n</div>\r\n'),
(45, 106, '<div class=\"track-name-container\">\r\n    <span> The Pale Haunt Departure </span>\r\n    <span>5:44</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> swallowed by the moon </span>\r\n    <span>5:57</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> autumn reflection </span>\r\n    <span>6:06</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> dark world burden </span>\r\n    <span>6:09</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> in the absence of grace </span>\r\n    <span>8:09</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> The dead leaf echo </span>\r\n    <span>7:30</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> Through a child\'s eyes </span>\r\n    <span>5:32</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> collapse of the falling throe </span>\r\n    <span>6:36</span>\r\n</div>\r\n'),
(46, 104, '<div class=\"track-name-container\">\r\n    <span> petrichor </span>\r\n    <span>6:12</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> the witness marks </span>\r\n    <span>4:45</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> what we become </span>\r\n    <span>6:31</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> adagio </span>\r\n    <span>5:35</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> black light </span>\r\n    <span>6:10</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> the clearing blind </span>\r\n    <span>5:40</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> still warmth </span>\r\n    <span>5:36</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> the obelus </span>\r\n    <span>5:46</span>\r\n</div>\r\n'),
(47, 103, '<div class=\"track-name-container\">\r\n    <span> devils light </span>\r\n    <span>5:05</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> plague bird </span>\r\n    <span>5:21</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> ghost </span>\r\n    <span>5:32</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> ever after </span>\r\n    <span>5:56</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> hamartia </span>\r\n    <span>3:35</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> apostasy </span>\r\n    <span>4:19</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> miasma </span>\r\n    <span>5:38</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> zephyr </span>\r\n    <span>6:28</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> waves in the red cloth </span>\r\n    <span>5:38</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> borderline </span>\r\n    <span>9:03</span>\r\n</div>\r\n'),
(48, 116, '<div class=\"track-name-container\">\r\n    <span> epicus furor </span>\r\n    <span>1:14</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> emerald sword </span>\r\n    <span>4:20</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> wisdom of the kings </span>\r\n    <span>4:28</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> heroes of the lost valley </span>\r\n    <span>2:04</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> eternal glory </span>\r\n    <span>7:29</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> beyond the gates of infinity </span>\r\n    <span>7:23</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> wings of destiny </span>\r\n    <span>4:28</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> the dark tower of the abyss </span>\r\n    <span>6:46</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> riding the winds of eternity </span>\r\n    <span>4:13</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> symphony of enchanted lands </span>\r\n    <span>13:17</span>\r\n</div>'),
(49, 118, '<div class=\"track-name-container\">\r\n    <span> abyss of pain </span>\r\n    <span>0:48</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> seven heroic deeds </span>\r\n    <span>4:47</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> master of peace </span>\r\n    <span>5:31</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> rain of fury </span>\r\n    <span>4:09</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> white wizard </span>\r\n    <span>4:56</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> warrior heart </span>\r\n    <span>4:29</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> the courage to forgive </span>\r\n    <span>4:54</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> march against the tyrant </span>\r\n    <span>9:22</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> clash of times </span>\r\n    <span>4:41</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> the legend goes on </span>\r\n    <span>4:45</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> the wind, the rain and the moon </span>\r\n    <span>5:22</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> tales of a hero\'s fare </span>\r\n    <span>10:47</span>\r\n</div>'),
(50, 119, '<div class=\"track-name-container\">\r\n    <span> Dar-Kunor </span>\r\n    <span>3:13</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> triumph or agony </span>\r\n    <span>5:02</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> heart of darklands </span>\r\n    <span>4:10</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> old age wonders </span>\r\n    <span>4:35</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> the myth of the holy sword </span>\r\n    <span>5:03</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> il canto del vento </span>\r\n    <span>3:54</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> silent dream </span>\r\n    <span>3:50</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> Dar-Kunor </span>\r\n    <span>3:13</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> bloody red dungeons </span>\r\n    <span>5:11</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> son of pain </span>\r\n    <span>4:42</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> the mystic story of the demonknight </span>\r\n    <span>8:39</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> Dark reign of fire </span>\r\n    <span>6:26</span>\r\n</div>'),
(51, 117, '<div class=\"track-name-container\">\r\n    <span> son of vengance </span>\r\n    <span>5:46</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> the kingdom of ice </span>\r\n    <span>4:25</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> glory for salvation </span>\r\n    <span>5:04</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> eternal snow </span>\r\n    <span>1:33</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> terial the hawk </span>\r\n    <span>4:49</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> maid of the secret sand </span>\r\n    <span>5:07</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> abyss of pain II </span>\r\n    <span>10:44</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> infinitae gloriae </span>\r\n    <span>4:31</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> magic signs </span>\r\n    <span>4:52</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> i\'ll be your hero </span>\r\n    <span>5:29</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> chains of destiny </span>\r\n    <span>3:55</span>\r\n</div>'),
(52, 114, '<div class=\"track-name-container\">\r\n    <span> Lux Triumphans </span>\r\n    <span>2:00</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> dawn of victory </span>\r\n    <span>4:46</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> triumph for my magic steel </span>\r\n    <span>5:46</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> the village of dwarves </span>\r\n    <span>3:52</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> Dargor, Shadowlord of the Black Mountain </span>\r\n    <span>4:47</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> the bloody rage of the titans </span>\r\n    <span>6:23</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> holy thunderforce </span>\r\n    <span>4:21</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> trolls in the dark </span>\r\n    <span>2:32</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> the last winged unicorn </span>\r\n    <span>5:43</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> the mighty ride of the firelord </span>\r\n    <span>9:15</span>\r\n</div>'),
(53, 115, '<div class=\"track-name-container\">\r\n    <span> Ira Tenax </span>\r\n    <span>1:13</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> warrior of ice </span>\r\n    <span>5:57</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> rage of the winter </span>\r\n    <span>6:12</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> forest of unicorns </span>\r\n    <span>3:24</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> flames of revenge </span>\r\n    <span>5:34</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> virgin skies </span>\r\n    <span>1:20</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> land of immortals </span>\r\n    <span>4:53</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> echoes of tragedy </span>\r\n    <span>3:32</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> lord of the thunder </span>\r\n    <span>5:34</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> legendary tales </span>\r\n    <span>7:49</span>\r\n</div>'),
(54, 107, '<div class=\"track-name-container\">\r\n    <span> reneducation </span>\r\n    <span>3:40</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> when the comet gets here </span>\r\n    <span>2:43</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> murder house </span>\r\n    <span>4:55</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> i can\'t, it\'s a geo </span>\r\n    <span>1:33</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> bulletproof glass </span>\r\n    <span>4:03</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> claw my eyes out </span>\r\n    <span>3:36</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> purple drapes </span>\r\n    <span>1:48</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> here\'s the noose </span>\r\n    <span>4:21</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> Murdiddlyurdeler </span>\r\n    <span>4:22</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> Murdiddlyurdeler </span>\r\n    <span>4:22</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> wrong god </span>\r\n    <span>5:26</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> folkilly dokilly </span>\r\n    <span>1:35</span>\r\n</div>'),
(55, 148, '<div class=\"track-name-container\">\r\n    <span> new born </span>\r\n    <span>6:03</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> bliss </span>\r\n    <span>4:11</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> space dementia </span>\r\n    <span>6:20</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> hyper music </span>\r\n    <span>3:21</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> plug in baby </span>\r\n    <span>3:38</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> citizen erased </span>\r\n    <span>7:21</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> micro cuts </span>\r\n    <span>3:38</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> screenager </span>\r\n    <span>4:20</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> darkshines </span>\r\n    <span>4:46</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> feeling good </span>\r\n    <span>3:18</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> megalomania </span>\r\n    <span>4:39</span>\r\n</div>'),
(56, 147, '<div class=\"track-name-container\">\r\n    <span> take a bow </span>\r\n    <span>4:35</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> starlight </span>\r\n    <span>3:59</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> supermassive black hole </span>\r\n    <span>3:29</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> map of the problematique</span>\r\n    <span>4:18</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> soldier\'s poem </span>\r\n    <span>2:03</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> invincible </span>\r\n    <span>5:00</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> assassins </span>\r\n    <span>3:31</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> exo-politics </span>\r\n    <span>3:53</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> city of delusion </span>\r\n    <span>4:48</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> hoodoo </span>\r\n    <span>3:43</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> knights of cydonia </span>\r\n    <span>6:06</span>\r\n</div>'),
(57, 149, '<div class=\"track-name-container\">\r\n    <span> sunburn </span>\r\n    <span>3:54</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> muscle museum </span>\r\n    <span>4:23</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> fillip </span>\r\n    <span>4:01</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> falling down </span>\r\n    <span>4:33</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> cave </span>\r\n    <span>4:46</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> showbiz </span>\r\n    <span>5:16</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> unintended </span>\r\n    <span>3:57</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> uno </span>\r\n    <span>3:37</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> sober </span>\r\n    <span>4:04</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> escape </span>\r\n    <span>3:31</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> overdue </span>\r\n    <span>2:26</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> hate this and i\'ll love you </span>\r\n    <span>5:09</span>\r\n</div>'),
(58, 146, '<div class=\"track-name-container\">\r\n    <span> intro </span>\r\n    <span>0:22</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> apocalypse please </span>\r\n    <span>4:12</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> time is running out </span>\r\n    <span>3:56</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> sing for absolution </span>\r\n    <span>4:54</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> stockholm syndrome </span>\r\n    <span>4:48</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> falling away with you </span>\r\n    <span>4:40</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> interlude </span>\r\n    <span>0:37</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> hysteria </span>\r\n    <span>3:47</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> blackout </span>\r\n    <span>4:22</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> butterflies and hurricanes </span>\r\n    <span>5:01</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> the small print </span>\r\n    <span>3:28</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> endlessly </span>\r\n    <span>3:49</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> thoughts of a dying atheist </span>\r\n    <span>3:11</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> ruled by secrecy </span>\r\n    <span>4:54</span>\r\n</div>'),
(59, 125, '<div class=\"track-name-container\">\r\n    <span> the adults are talking </span>\r\n    <span>5:09</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> selfless </span>\r\n    <span>3:42</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> brookly bridge to chorus </span>\r\n    <span>3:55</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> Bad decisions </span>\r\n    <span>4:53</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> eternal summer </span>\r\n    <span>6:15</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> at the door </span>\r\n    <span>5:10</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> why are sundays so depressing </span>\r\n    <span>4:35</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> not the same anymore </span>\r\n    <span>5:37</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> ode to the mets </span>\r\n    <span>5:51</span>\r\n</div>'),
(60, 124, '<div class=\"track-name-container\">\r\n    <span> what ever happened? </span>\r\n    <span>2:49</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> reptilia </span>\r\n    <span>3:35</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> automatic stop </span>\r\n    <span>3:21</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> 12:51 </span>\r\n    <span>2:33</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> you talk way too much </span>\r\n    <span>2:58</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> between love & hate </span>\r\n    <span>3:10</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> meet me in the bathroom </span>\r\n    <span>2:56</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> under control </span>\r\n    <span>3:02</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> the way it is </span>\r\n    <span>2:17</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> the end has no end </span>\r\n    <span>3:00</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> i can\'t win </span>\r\n    <span>2:34</span>\r\n</div>'),
(61, 120, '<div class=\"track-name-container\">\r\n    <span> machu picchu </span>\r\n    <span>3:32</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> under cover of darkness </span>\r\n    <span>3:57</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> two kinds of happiness </span>\r\n    <span>3:44</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> you\'re so right </span>\r\n    <span>2:34</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> taken for a fool </span>\r\n    <span>3:25</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> games </span>\r\n    <span>3:52</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> call me back </span>\r\n    <span>3:02</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> gratisfaction </span>\r\n    <span>2:59</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> metabolism </span>\r\n    <span>3:05</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> life is simple in the moonlight </span>\r\n    <span>4:15</span>\r\n</div>'),
(62, 122, '<div class=\"track-name-container\">\r\n    <span> you only live once </span>\r\n    <span>3:09</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> juicebox </span>\r\n    <span>3:17</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> heart in a cage </span>\r\n    <span>3:27</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> razorblade </span>\r\n    <span>3:29</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> on the other side </span>\r\n    <span>4:38</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> vision of division </span>\r\n    <span>4:20</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> ask me anything </span>\r\n    <span>3:12</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> electricityscape </span>\r\n    <span>3:33</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> killing lies </span>\r\n    <span>3:50</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> fear of sleep </span>\r\n    <span>4:00</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> 15 minutes </span>\r\n    <span>4:34</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> ize of the world </span>\r\n    <span>4:29</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> evening sun </span>\r\n    <span>3:06</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> red light </span>\r\n    <span>3:11</span>\r\n</div>'),
(63, 121, '<div class=\"track-name-container\">\r\n    <span> tap out </span>\r\n    <span>3:42</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> all the time </span>\r\n    <span>3:02</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> one way trigger </span>\r\n    <span>4:02</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> welcome to japan </span>\r\n    <span>3:50</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> 80\'s comedown machine </span>\r\n    <span>4:58</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> 50/50 </span>\r\n    <span>2:43</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> slow animals </span>\r\n    <span>4:20</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> partners in crime </span>\r\n    <span>3:21</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> chances </span>\r\n    <span>3:36</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> happy ending </span>\r\n    <span>2:52</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> call it fate, call it karma </span>\r\n    <span>3:24</span>\r\n</div>'),
(64, 123, '<div class=\"track-name-container\">\r\n    <span> is this it </span>\r\n    <span>2:31</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> the modern age </span>\r\n    <span>3:28</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> soma </span>\r\n    <span>2:33</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> barely legal </span>\r\n    <span>3:54</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> someday </span>\r\n    <span>3:03</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> alone, together </span>\r\n    <span>3:08</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> last nite </span>\r\n    <span>3:13</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> hard to explain </span>\r\n    <span>3:44</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> new york city cops </span>\r\n    <span>3:31</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> trying your luck </span>\r\n    <span>3:22</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> take it or leave it </span>\r\n    <span>3:16</span>\r\n</div>'),
(65, 109, '<div class=\"track-name-container\">\r\n    <span> 2+2=5 </span>\r\n    <span>3:19</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> sit down, stand up</span>\r\n    <span>4:19</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> sail to the moon </span>\r\n    <span>4:18</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> backdrifts </span>\r\n    <span>5:22</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> go to sleep </span>\r\n    <span>3:21</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> where i end and you begin </span>\r\n    <span>4:29</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> we suck young blood </span>\r\n    <span>4:56</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> the gloaming </span>\r\n    <span>3:32</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> there there </span>\r\n    <span>5:25</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> i will </span>\r\n    <span>1:59</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> a punchup at a wedding </span>\r\n    <span>4:57</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> myxomatosis </span>\r\n    <span>3:52</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> scatterbrain </span>\r\n    <span>3:21</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> a wolf at the door </span>\r\n    <span>3:21</span>\r\n</div>'),
(66, 112, '<div class=\"track-name-container\">\r\n    <span> airbag </span>\r\n    <span>4:44</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> paranoid android </span>\r\n    <span>6:23</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> subterranean homesick alien </span>\r\n    <span>4:27</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> exit music (for a film) </span>\r\n    <span>4:24</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> let down </span>\r\n    <span>4:59</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> karma police </span>\r\n    <span>4:21</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> fitter happier </span>\r\n    <span>1:57</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> electioneering </span>\r\n    <span>3:50</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> climbing up the walls </span>\r\n    <span>4:45</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> no surprises </span>\r\n    <span>3:48</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> lucky </span>\r\n    <span>4:19</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> the tourist </span>\r\n    <span>5:24</span>\r\n</div>'),
(67, 110, '<div class=\"track-name-container\">\r\n    <span> 15 step </span>\r\n    <span>3:58</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> bodysnatchers </span>\r\n    <span>4:02</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> nude </span>\r\n    <span>4:15</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> weird Fishes/Arpeggi </span>\r\n    <span>5:18</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> all i need </span>\r\n    <span>3:49</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> faust arp </span>\r\n    <span>2:10</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> reckoner </span>\r\n    <span>4:50</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> house of cards </span>\r\n    <span>5:28</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> jigsaw falling into place </span>\r\n    <span>4:09</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> videotape </span>\r\n    <span>4:40</span>\r\n</div>'),
(68, 108, '<div class=\"track-name-container\">\r\n    <span> Packt Like Sardines in a Crushd Tin Box </span>\r\n    <span>4:00</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> Pyramid song </span>\r\n    <span>4:49</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> Pulk/Pull revolving doors </span>\r\n    <span>4:07</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> you and whose army? </span>\r\n    <span>3:11</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> Packt Like Sardines in a Crushd Tin Box </span>\r\n    <span>4:00</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> i might be wrong </span>\r\n    <span>4:54</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> knives out </span>\r\n    <span>4:15</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> morning bell/amnesiac </span>\r\n    <span>3:14</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> dollars and cents </span>\r\n    <span>4:52</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> hunting bears </span>\r\n    <span>2:01</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> like spinning plates </span>\r\n    <span>3:57</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> life in a glasshouse</span>\r\n    <span>4:31</span>\r\n</div>'),
(69, 111, '<div class=\"track-name-container\">\r\n    <span> everything in its right place </span>\r\n    <span>4:11</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> kid a </span>\r\n    <span>4:44</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> the national anthem </span>\r\n    <span>5:51</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> how to disappear completely </span>\r\n    <span>5:56</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> treefingers </span>\r\n    <span>3:42</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> optimistic </span>\r\n    <span>5:15</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> in limbo </span>\r\n    <span>3:31</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> idioteque </span>\r\n    <span>5:09</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> morning bell </span>\r\n    <span>4:35</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> motion picture soundtrack </span>\r\n    <span>7:01</span>\r\n</div>'),
(70, 113, '<div class=\"track-name-container\">\r\n    <span> planet telex </span>\r\n    <span>4:19</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> the bends </span>\r\n    <span>4:06</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> high and dry </span>\r\n    <span>4:17</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> fake plastic trees </span>\r\n    <span>4:50</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> bones </span>\r\n    <span>3:09</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> nice dream </span>\r\n    <span>3:53</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> just </span>\r\n    <span>3:54</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> my iron lung </span>\r\n    <span>4:36</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> bullet proof... i wish i was </span>\r\n    <span>3:29</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> black star </span>\r\n    <span>4:07</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> sulk </span>\r\n    <span>3:42</span>\r\n</div>\r\n<hr>\r\n<div class=\"track-name-container\">\r\n    <span> street spirit </span>\r\n    <span>4:12</span>\r\n</div>');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `prof_pic` varchar(255) NOT NULL DEFAULT './projectimgs/png-transparent-profile-logo-computer-icons-user-user-blue-heroes-logo-thumbnail.png'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `email`, `prof_pic`) VALUES
(1, 'enoBendi', '1234', 'test@gmail.com', './projectimgs/comedown_machine.png'),
(2, 'enoBendii', 'Test1234@', 'enobendi24@gmail.com', './projectimgs/png-transparent-profile-logo-computer-icons-user-user-blue-heroes-logo-thumbnail.png'),
(3, 'enoBendiii', '123456Ee@', 'enobendi24@gmail.com', './projectimgs/png-transparent-profile-logo-computer-icons-user-user-blue-heroes-logo-thumbnail.png'),
(4, 'enoBendi2', 'Test1234@', 'eno@bendi21.com', './projectimgs/png-transparent-profile-logo-computer-icons-user-user-blue-heroes-logo-thumbnail.png'),
(6, 'enoBendi22', 'Test1234@', 'eno@bendi21.com', './projectimgs/in_rainbows.png'),
(7, 'fsafasfa', 'Test@1234', 'enobendi24@gmail.com', './projectimgs/png-transparent-profile-logo-computer-icons-user-user-blue-heroes-logo-thumbnail.png'),
(8, 'enoBendi2223', 'Test@1234', 'eno@bendi21.com', './projectimgs/png-transparent-profile-logo-computer-icons-user-user-blue-heroes-logo-thumbnail.png'),
(9, 'noah', 'Epokarse1@', 'noah@pacuku.com', './projectimgs/png-transparent-profile-logo-computer-icons-user-user-blue-heroes-logo-thumbnail.png'),
(10, '107infj', 'Test@1234', 'naskastefani@yahoo.com', './projectimgs/png-transparent-profile-logo-computer-icons-user-user-blue-heroes-logo-thumbnail.png'),
(11, '107310', 'Test@1234', 'enobendi24@gmail.com', './projectimgs/png-transparent-profile-logo-computer-icons-user-user-blue-heroes-logo-thumbnail.png'),
(12, 'enoBendi123', 'Test@1234', 'enobendi24@gmail.com', './projectimgs/png-transparent-profile-logo-computer-icons-user-user-blue-heroes-logo-thumbnail.png'),
(13, 'noala', 'Test@1234', 'n@p21.com', './projectimgs/evermore.jpeg'),
(14, 'ekgbu123', 'niggas69', 'elginbelalla@gmail.com', './projectimgs/demigod.png'),
(15, 'Eno@Bendi', 'Test@1234', 'enobendi24@gmail.com', './projectimgs/png-transparent-profile-logo-computer-icons-user-user-blue-heroes-logo-thumbnail.png'),
(16, 'TESTUSERaAME', 'Test@1234', 'enobendi24@gmail.com', './projectimgs/png-transparent-profile-logo-computer-icons-user-user-blue-heroes-logo-thumbnail.png'),
(17, 'testUser', 'Test@1234', 'enobendi24@gmail.com', './projectimgs/png-transparent-profile-logo-computer-icons-user-user-blue-heroes-logo-thumbnail.png');

-- --------------------------------------------------------

--
-- Table structure for table `userfavalbum`
--

CREATE TABLE `userfavalbum` (
  `user_id` int(11) NOT NULL,
  `album_id` int(11) NOT NULL,
  `fav_order` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `userfavalbum`
--

INSERT INTO `userfavalbum` (`user_id`, `album_id`, `fav_order`) VALUES
(1, 122, 1),
(1, 113, 2),
(1, 149, 3),
(1, 107, 4),
(2, 101, 1),
(6, 112, 1),
(10, 125, 1),
(13, 158, 1),
(13, 157, 2),
(13, 151, 3),
(13, 159, 4),
(14, 128, 1),
(14, 133, 2),
(14, 106, 3),
(14, 114, 4);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `album`
--
ALTER TABLE `album`
  ADD PRIMARY KEY (`album_id`),
  ADD KEY `test` (`artist`);

--
-- Indexes for table `artist`
--
ALTER TABLE `artist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `friendship`
--
ALTER TABLE `friendship`
  ADD PRIMARY KEY (`friendship_id`),
  ADD KEY `user_id1` (`user_id1`),
  ADD KEY `user_id2` (`user_id2`);

--
-- Indexes for table `log`
--
ALTER TABLE `log`
  ADD KEY `user_id` (`user_id`),
  ADD KEY `album_id` (`album_id`);

--
-- Indexes for table `soundlist`
--
ALTER TABLE `soundlist`
  ADD KEY `album_id` (`album_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `trackkk`
--
ALTER TABLE `trackkk`
  ADD PRIMARY KEY (`tracklist_id`),
  ADD KEY `album_id` (`album_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `userfavalbum`
--
ALTER TABLE `userfavalbum`
  ADD KEY `album_id` (`album_id`),
  ADD KEY `user_id` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `album`
--
ALTER TABLE `album`
  MODIFY `album_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=171;

--
-- AUTO_INCREMENT for table `artist`
--
ALTER TABLE `artist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `friendship`
--
ALTER TABLE `friendship`
  MODIFY `friendship_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `album`
--
ALTER TABLE `album`
  ADD CONSTRAINT `test` FOREIGN KEY (`artist`) REFERENCES `artist` (`id`);

--
-- Constraints for table `friendship`
--
ALTER TABLE `friendship`
  ADD CONSTRAINT `friendship_ibfk_1` FOREIGN KEY (`user_id1`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `friendship_ibfk_2` FOREIGN KEY (`user_id2`) REFERENCES `user` (`id`);

--
-- Constraints for table `log`
--
ALTER TABLE `log`
  ADD CONSTRAINT `log_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `log_ibfk_2` FOREIGN KEY (`album_id`) REFERENCES `album` (`album_id`);

--
-- Constraints for table `soundlist`
--
ALTER TABLE `soundlist`
  ADD CONSTRAINT `soundlist_ibfk_1` FOREIGN KEY (`album_id`) REFERENCES `album` (`album_id`),
  ADD CONSTRAINT `soundlist_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Constraints for table `trackkk`
--
ALTER TABLE `trackkk`
  ADD CONSTRAINT `trackkk_ibfk_1` FOREIGN KEY (`album_id`) REFERENCES `album` (`album_id`);

--
-- Constraints for table `userfavalbum`
--
ALTER TABLE `userfavalbum`
  ADD CONSTRAINT `userfavalbum_ibfk_1` FOREIGN KEY (`album_id`) REFERENCES `album` (`album_id`),
  ADD CONSTRAINT `userfavalbum_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
