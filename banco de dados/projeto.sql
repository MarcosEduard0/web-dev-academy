-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 10-Fev-2023 às 14:26
-- Versão do servidor: 10.4.21-MariaDB
-- versão do PHP: 7.4.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `projeto`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `clientes`
--

CREATE TABLE `clientes` (
  `cliente_id` int(6) UNSIGNED NOT NULL,
  `nome` varchar(50) NOT NULL,
  `data_nascimento` date NOT NULL,
  `tipo_documento` int(6) UNSIGNED NOT NULL,
  `documento` varchar(50) NOT NULL,
  `estado_civil` int(6) UNSIGNED NOT NULL,
  `possui_filhos` tinyint(1) NOT NULL,
  `profissao` varchar(50) NOT NULL,
  `sexo` int(2) UNSIGNED NOT NULL,
  `endereco` varchar(50) NOT NULL,
  `bairro` varchar(50) NOT NULL,
  `cidade` varchar(50) NOT NULL,
  `cep` varchar(50) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `clientes`
--

INSERT INTO `clientes` (`cliente_id`, `nome`, `data_nascimento`, `tipo_documento`, `documento`, `estado_civil`, `possui_filhos`, `profissao`, `sexo`, `endereco`, `bairro`, `cidade`, `cep`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Rhonda Frank', '2023-01-13', 0, '40312771480178', 0, 1, 'non, vestibulum', 2, 'P.O. Box 135, 7381 Nunc St.', 'Ross-shire', 'Okpoko', '85233', NULL, '2023-02-07 14:53:16', '2023-02-07 14:53:16'),
(2, 'Mallory Case', '2023-06-19', 0, '91879608535520', 2, 0, 'Professora', 1, 'P.O. Box 207, 7619 Faucibus St.', 'Waals-Brabant', 'Bellevue', '826637', NULL, '2023-02-07 15:55:10', NULL),
(3, 'Lee Butler', '2023-01-02', 1, '80754899050953', 3, 1, 'vel, vulputate eu, odio. Phasellus at augue id', 1, 'Ap #898-4840 Vulputate, Street', 'Los Lagos', 'Newton', '5565', NULL, NULL, NULL),
(4, 'Omar Cleveland', '2022-03-20', 1, '29311724382841', 2, 0, 'vulputate', 1, 'P.O. Box 433, 8828 Eu, Ave', 'Stockholms län', 'TrognŽe', '7195-9438', NULL, NULL, NULL),
(5, 'Beck Hopkins', '2023-11-23', 0, '91349450132593', 2, 1, 'dolor. Nulla semper tellus id nunc interdum feugia', 2, '9307 Lorem, Av.', 'Brandenburg', 'Wonju', '4136 FD', NULL, NULL, NULL),
(6, 'Erin Reid', '2022-04-27', 0, '54164725391118', 3, 0, 'ipsum non arcu. Vivamus sit amet risus.', 1, 'P.O. Box 301, 8979 Et St.', 'Saskatchewan', 'Doel', '156622', NULL, NULL, NULL),
(7, 'Bradley Watson', '2022-07-14', 2, '76007954169873', 2, 0, 'vitae, orci. Phasellus dapibus quam quis', 0, '404-2019 Aliquam St.', 'Poitou-Charentes', 'Jiangxi', '654057', NULL, NULL, NULL),
(8, 'Connor Franklin', '2023-06-07', 0, '48792951759327', 0, 1, 'dignissim pharetra. Nam ac nulla. In', 1, '161-3014 Amet Road', 'Imo', 'Ełk', '59313-94893', NULL, NULL, NULL),
(9, 'Keaton Hodge', '2024-01-13', 1, '7149885926963', 0, 1, 'in, tempus', 0, '640-8439 Auctor Av.', 'Midi-Pyrénées', 'Bydgoszcz', '53-555', NULL, NULL, NULL),
(10, 'Brielle Terrell', '2023-09-29', 0, '36852818725527', 2, 1, 'lobortis. Class aptent taciti sociosqu ad litora t', 0, '8981 Id, St.', 'Chhattisgarh', 'Itajaí', '7346', NULL, NULL, NULL),
(11, 'Odessa Glover', '2022-02-08', 1, '60168793469325', 2, 0, 'Morbi accumsan laoreet', 1, 'Ap #713-1189 Morbi St.', 'North Gyeongsang', 'Landau', '27776', NULL, NULL, NULL),
(12, 'Madaline Faulkner', '2023-03-30', 1, '35399559843275', 2, 0, 'non massa non ante bibendum ullamcorper. Duis curs', 1, 'Ap #167-8364 Amet St.', 'Kent', 'Jurong West', '734419', NULL, NULL, NULL),
(13, 'Griffith Rivas', '2022-05-26', 1, '89712141166217', 3, 1, 'nec tempus mauris erat eget ipsum. Suspendisse', 0, '312-521 Eu Avenue', 'North Region', 'Billings', '4427-1334', NULL, NULL, NULL),
(14, 'Thaddeus Mills', '2023-06-02', 2, '3400087255678', 1, 0, 'non, luctus sit amet, faucibus ut, nulla.', 1, 'P.O. Box 918, 9648 Duis Avenue', 'Alajuela', 'Sauda', '45859', NULL, NULL, NULL),
(15, 'Yael Best', '2023-01-29', 0, '40598561102638', 3, 0, 'et libero. Proin mi. Aliquam gravida mauris ut mi.', 2, 'Ap #254-3175 Metus Av.', 'Newfoundland and Labrador', 'Altmünster', '85838', NULL, NULL, NULL),
(16, 'Carolyn Beard', '2022-04-26', 0, '72726587311851', 2, 0, 'molestie dapibus', 2, 'Ap #528-8997 Vitae Street', 'Alberta', 'Imphal', '27888', NULL, NULL, NULL),
(17, 'Tanisha Rivas', '2022-04-04', 1, '38508890420881', 1, 0, 'est arcu ac', 1, 'P.O. Box 178, 4413 Risus Rd.', 'North Island', 'Cherkasy', '927542', NULL, NULL, NULL),
(18, 'Thomas Bridges', '2023-11-19', 0, '92919380301752', 1, 1, 'eu lacus. Quisque imperdiet, erat nonummy ultricie', 1, 'Ap #326-8260 Vulputate, Road', 'łódzkie', 'Thame', '28135', NULL, '2023-02-07 17:26:38', '2023-02-07 17:26:38'),
(19, 'Ralph Jacobs', '2023-08-23', 1, '1234', 1, 1, 'nec mauris blandit', 1, '9717 Fusce Ave', 'Louisiana', 'Barrancabermeja', '0205', NULL, '2023-02-07 19:17:51', NULL),
(20, 'Raven Graves', '2023-02-13', 1, '91589000042822', 0, 1, 'non sapien molestie orci tincidunt', 2, 'P.O. Box 256, 2752 Purus. Av.', 'Limburg', 'Rotorua', '4130 JO', NULL, NULL, NULL),
(21, 'Jenette Mccarty', '2023-03-30', 1, '82525719656078', 1, 1, 'viverra. Donec', 0, 'Ap #562-8538 Tincidunt Street', 'New Brunswick', 'Tehuacán', '74576', NULL, '2023-02-07 19:19:43', NULL),
(22, 'Hyacinth Herman', '2023-12-04', 2, '46257750456838', 1, 1, 'nec tellus. Nunc lectus pede, ultrices a, auctor n', 1, '179-6638 Convallis Street', 'Bạc Liêu', 'Gore', '80746', NULL, '2023-02-07 19:22:19', NULL),
(23, 'Serena Romero', '2022-07-22', 1, '53859500083756', 0, 1, 'feugiat. Sed nec metus facilisis lorem tristique a', 1, 'Ap #646-7527 Elit Ave', 'North Island', 'Värnamo', '86-16', NULL, NULL, NULL),
(24, 'Iris Kelley', '2023-11-02', 1, '71416861781263', 2, 1, 'ornare', 2, 'Ap #617-7505 Mi. Road', 'South Australia', 'Garbsen', '40528', NULL, NULL, NULL),
(25, 'Tate Rios', '2023-12-17', 1, '37083315839252', 2, 0, 'lorem lorem,', 1, 'Ap #385-356 Aenean Ave', 'Queensland', 'Mamuju', '11714', NULL, NULL, NULL),
(26, 'Farrah Reeves', '2023-12-01', 1, '23372446143776', 1, 0, 'ac arcu. Nunc mauris. Morbi non sapien', 1, 'P.O. Box 210, 9687 Sit Rd.', 'Ceuta', 'Sechura', '415913', NULL, NULL, NULL),
(27, 'Dylan Ayala', '2022-12-21', 1, '38696364658288', 1, 1, 'eu metus. In lorem. Donec elementum, lorem', 1, '960-4822 Dui, Street', 'Sinaloa', 'Morwell', '77115', NULL, NULL, NULL),
(28, 'Lael Hopper', '2023-10-18', 2, '89447731389334', 2, 1, 'tristique neque venenatis lacus. Etiam bibendum fe', 2, '4309 Lacinia St.', 'Zuid Holland', 'Dunedin', '781785', NULL, NULL, NULL),
(29, 'Ignatius Carver', '2022-05-03', 1, '14769569608960', 2, 0, 'semper tellus id nunc interdum', 1, 'Ap #768-8521 Id Street', 'North Island', 'Starachowice', '11-392', NULL, NULL, NULL),
(30, 'Knox Woodward', '2023-07-23', 2, '22075671015899', 1, 1, 'nulla ante, iaculis', 1, 'Ap #801-3936 Ultrices Ave', 'Kayseri', 'Redcliffe', '86130', NULL, '2023-02-07 19:22:44', NULL),
(31, 'Laith Peck', '2023-09-10', 1, '58532792839179', 3, 1, 'risus', 1, '828-5380 Molestie. Rd.', 'Västra Götalands län', 'Okigwe', '4678-4880', NULL, NULL, NULL),
(32, 'Rooney Shaffer', '2023-11-30', 1, '63318841669595', 3, 0, 'quis diam. Pellentesque habitant', 0, 'Ap #944-4865 Nunc Av.', 'łódzkie', 'Lviv', '62642', NULL, NULL, NULL),
(33, 'Walter Riggs', '2022-02-08', 2, '95845164118910', 0, 1, 'odio semper cursus. Integer mollis. Integer tincid', 1, 'Ap #357-2732 Lorem St.', 'Jalisco', 'Galway', '457638', NULL, NULL, NULL),
(34, 'Chancellor Wong', '2023-05-18', 1, '79616508802837', 0, 1, 'lacus. Aliquam rutrum lorem ac risus. Morbi metus.', 1, 'Ap #619-7223 Vitae Rd.', 'Lviv oblast', 'Molde', 'E8 1SB', NULL, NULL, NULL),
(35, 'Cherokee Whitehead', '2022-06-27', 1, '81946933914972', 0, 1, 'Sed neque. Sed', 0, 'Ap #467-9535 Id, Rd.', 'Kursk Oblast', 'Łomża', '38-670', NULL, NULL, NULL),
(36, 'Reagan Padilla', '2022-03-06', 2, '57978551105525', 2, 1, 'massa. Mauris vestibulum, neque sed dictum eleifen', 2, '487-2675 Rutrum Avenue', 'Gilgit Baltistan', 'Tam Đường', '7194 MC', NULL, NULL, NULL),
(37, 'Stephanie Garner', '2022-02-09', 1, '59900786830977', 0, 0, 'penatibus et magnis dis parturient montes,', 0, '4975 Imperdiet St.', 'Norfolk', 'Swabi', '04668', NULL, NULL, NULL),
(38, 'Adrienne Roman', '2022-07-10', 1, '4301812819379', 1, 1, 'Lorem', 1, 'Ap #844-7565 Cras Road', 'Jigawa', 'Bielefeld', '17312', NULL, '2023-02-08 00:02:02', NULL),
(39, 'Ina Olsen', '2024-01-08', 2, '85189803694892', 1, 1, 'tellus justo sit', 1, '8906 Nibh Rd.', 'Xīnán', 'Jönköping', '5810', NULL, NULL, NULL),
(40, 'Iona French', '2023-10-25', 2, '10054962433891', 1, 0, 'lobortis risus. In mi pede, nonummy', 1, 'Ap #688-8502 Facilisis Road', 'Somerset', 'Oudekapelle', '151015', NULL, NULL, NULL),
(41, 'Odette Morse', '2022-05-20', 2, '94713372029211', 1, 1, 'orci. Donec nibh. Quisque nonummy ipsum', 0, '7521 Vestibulum Ave', 'KwaZulu-Natal', 'Leirvik', '34511-05054', NULL, NULL, NULL),
(42, 'Josiah Walls', '2023-07-06', 0, '81925270076451', 1, 1, 'nec, leo. Morbi', 2, '543-6621 Aliquam Ave', 'Himachal Pradesh', 'Ansfelden', '30004', NULL, '2023-02-07 17:27:02', '2023-02-07 17:27:02'),
(43, 'Lacey Case', '2023-01-30', 2, '78984700904954', 1, 1, 'at, egestas a, scelerisque sed, sapien. Nunc pulvi', 1, 'Ap #198-4417 Ante, Street', 'Aragón', 'Vico nel Lazio', '4807 LM', NULL, NULL, NULL),
(44, 'Ezra Rodgers', '2023-04-08', 1, '26242288175638', 3, 0, 'eu enim.', 1, '556-5780 Facilisis Av.', 'Gloucestershire', 'Jagersfontein', 'E5G 3J7', NULL, NULL, NULL),
(45, 'Conan Leonard', '2023-08-07', 1, '65152446628438', 2, 1, 'iaculis nec, eleifend non, dapibus rutrum, justo. ', 1, '3305 Elit Avenue', 'Campania', 'Tuticorin', '8621', NULL, NULL, NULL),
(46, 'Ishmael Guerra', '2022-10-08', 0, '44357547509445', 1, 1, 'sem. Pellentesque ut ipsum ac mi eleifend egestas.', 0, '163-2075 Sed Avenue', 'Cusco', 'Nonsan', '14938', NULL, '2023-02-08 00:36:08', NULL),
(47, 'Kylee Moon', '2022-07-22', 1, '45519518111722', 2, 0, 'Morbi sit amet massa. Quisque porttitor eros', 0, '2147 Sit Street', 'Banten', 'Saratov', '74745-923', NULL, NULL, NULL),
(48, 'Chandler Weiss', '2022-06-06', 0, '25760084118430', 0, 1, 'dis parturient montes, nascetur ridiculus', 2, 'P.O. Box 718, 2306 Egestas Ave', 'Central Region', 'Cuenca', 'M9P 4DO', NULL, NULL, NULL),
(49, 'Noelle King', '2023-08-03', 2, '12282458045852', 1, 1, 'dolor.', 1, 'Ap #248-2475 Phasellus St.', 'Khmelnytskyi oblast', 'Pachuca', '80483-896', NULL, NULL, NULL),
(50, 'Naida Rivas', '2023-04-29', 0, '37114188875828', 2, 1, 'consequat nec, mollis vitae, posuere at, velit. Cr', 1, 'Ap #350-4808 Sed Street', 'Leinster', 'Galway', '75546', NULL, NULL, NULL),
(51, 'Alika Francis', '2022-03-19', 0, '14350489386883', 1, 1, 'facilisis facilisis, magna tellus faucibus leo, in', 0, 'P.O. Box 847, 3643 Purus Road', 'Azad Kashmir', 'Rzeszów', '936729', NULL, NULL, NULL),
(52, 'Janna Carney', '2023-07-23', 0, '38103991657845', 2, 0, 'egestas. Fusce aliquet magna a neque.', 0, 'Ap #477-1116 Morbi St.', 'Noord Holland', 'Lockerbie', '36-284', NULL, NULL, NULL),
(53, 'Leila Sanders', '2022-04-07', 0, '93022429886361', 2, 1, 'at lacus. Quisque purus sapien, gravida non,', 1, '848-6890 Vel Av.', 'Central Kalimantan', 'Corvino San Quirico', '3767', NULL, NULL, NULL),
(54, 'Phyllis Bradshaw', '2022-10-25', 2, '30252300758379', 1, 0, 'lobortis quam a felis ullamcorper viverra. Maecena', 1, '8114 Id St.', 'İzmir', 'Ovalle', '832258', NULL, NULL, NULL),
(55, 'Alika Langley', '2023-07-08', 1, '82999503147270', 2, 1, 'quis massa. Mauris vestibulum,', 2, '825-7684 Aliquam Ave', 'Magallanes y Antártica Chilena', 'Kilmarnock', '272157', NULL, NULL, NULL),
(56, 'Solomon Chambers', '2023-09-21', 1, '47917828792057', 3, 0, 'mauris erat eget ipsum.', 2, 'Ap #122-3289 Mi Rd.', 'Eastern Visayas', 'Flin Flon', '3858', NULL, NULL, NULL),
(57, 'Lee Torres', '2024-01-31', 1, '92721882945536', 1, 1, 'ante ipsum', 2, '504-601 Turpis. Rd.', 'North-East Region', 'Asigliano Veneto', '2195', NULL, NULL, NULL),
(58, 'Burke Puckett', '2023-10-28', 2, '39629951776846', 2, 0, 'senectus et netus', 2, '4165 Et Street', 'FATA', 'Płock', '3933-9253', NULL, NULL, NULL),
(59, 'Leo Roach', '2022-06-27', 1, '32158435847442', 2, 0, 'Donec nibh. Quisque nonummy ipsum non arcu. Vivamu', 0, 'P.O. Box 733, 8536 Nisi Av.', 'Euskadi', 'Borås', '854266', NULL, NULL, NULL),
(60, 'George Stein', '2022-07-12', 2, '22194597311917', 2, 1, 'odio sagittis semper. Nam tempor diam dictum sapie', 1, 'Ap #219-4666 Phasellus Avenue', 'North Region', 'Guápiles', '57C 8R6', NULL, NULL, NULL),
(61, 'Renee Pittman', '2022-04-18', 2, '19726388013636', 1, 0, 'netus et malesuada fames ac turpis egestas. Fusce', 0, 'P.O. Box 191, 598 Sit Rd.', 'Cajamarca', 'Zaria', '913056', NULL, NULL, NULL),
(62, 'Akeem Briggs', '2023-01-18', 0, '28673211778831', 2, 0, 'imperdiet nec, leo. Morbi neque tellus, imperdiet ', 1, '8978 Aliquam Rd.', 'Västra Götalands län', 'Ribnitz-Damgarten', '814428', NULL, NULL, NULL),
(63, 'Leo Farmer', '2023-02-22', 2, '19669170523002', 2, 0, 'nec tempus mauris erat eget ipsum. Suspendisse sag', 2, '624-1277 Id St.', 'North Island', 'Dublin', '78356', NULL, NULL, NULL),
(64, 'Zeph Terrell', '2022-06-20', 1, '76716247869106', 1, 0, 'ipsum sodales purus, in molestie tortor', 0, 'Ap #535-249 Consectetuer St.', 'Northern Mindanao', 'Oslo', '666187', NULL, NULL, NULL),
(65, 'Marny Sandoval', '2022-10-20', 0, '74325494820663', 1, 1, 'mollis vitae, posuere at, velit.', 0, '854-2180 Ut, St.', 'Ceuta', 'Hindeloopen', '789683', NULL, NULL, NULL),
(66, 'Selma Snider', '2022-02-25', 0, '43319431674105', 0, 0, 'orci, in consequat enim diam vel arcu. Curabitur u', 0, 'Ap #183-4756 Magna. Road', 'North Island', 'Auckland', '6151', NULL, NULL, NULL),
(67, 'Murphy Bender', '2022-12-16', 1, '29319455647038', 2, 0, 'turpis nec mauris blandit mattis. Cras eget nisi d', 0, '855 Volutpat Avenue', 'Northern Territory', 'Logroño', '58747-552', NULL, NULL, NULL),
(68, 'Bradley Cooper', '2022-07-12', 0, '33075982145671', 1, 0, 'eget ipsum. Suspendisse sagittis. Nullam', 0, 'P.O. Box 646, 176 Elit, Street', 'Saratov Oblast', 'Kon Tum', '23380', NULL, '2023-02-08 00:01:17', '2023-02-08 00:01:17'),
(69, 'Ainsley Horton', '2022-11-26', 1, '10923771745084', 2, 1, 'luctus et ultrices', 0, 'Ap #764-9907 Urna. Road', 'Tyrol', 'Sorsogon City', '67883', NULL, NULL, NULL),
(70, 'Matthew Fulton', '2023-05-17', 2, '55706899043406', 0, 0, 'arcu. Vivamus sit amet risus. Donec egestas. Aliqu', 1, 'P.O. Box 580, 365 Fermentum Rd.', 'Kon Tum', 'Muzzafarabad', 'T0E 6X7', NULL, NULL, NULL),
(71, 'Guy Mcgowan', '2023-04-05', 1, '50332232579619', 3, 1, 'iaculis enim, sit', 1, '526 Arcu Street', 'Noord Brabant', 'Mora', '531453', NULL, NULL, NULL),
(72, 'Berk Bowman', '2023-04-06', 2, '94501275800798', 1, 1, 'magna et ipsum cursus vestibulum. Mauris magna.', 1, 'Ap #183-5372 Aliquam Road', 'Ulster', 'Thane', '267519', NULL, NULL, NULL),
(73, 'Cairo Hudson', '2023-08-22', 1, '49828129205124', 2, 1, 'dis parturient montes, nascetur ridiculus mus. Pro', 1, '404-8830 Sagittis Ave', 'Kyiv oblast', 'Châlons-en-Champagne', '670872', NULL, NULL, NULL),
(74, 'Clark Aguirre', '2022-05-25', 1, '20640323217759', 3, 1, 'nec urna et arcu imperdiet ullamcorper. Duis', 1, '668-1320 Sed Av.', 'Connacht', 'Hà Nội', '41203', NULL, NULL, NULL),
(75, 'Chase Macias', '2023-04-08', 2, '95755687590565', 2, 1, 'tellus faucibus', 1, 'P.O. Box 272, 3350 At, Ave', 'Utrecht', 'Dublin', '5172', NULL, NULL, NULL),
(76, 'Marsden Hamilton', '2023-06-23', 2, '65695247361714', 1, 0, 'metus. Aenean sed pede nec', 1, '8284 Sed Av.', 'Jeju', 'Carmen de Bolivar', '6243', NULL, NULL, NULL),
(77, 'Ursa Livingston', '2022-11-11', 0, '85664054535732', 1, 1, 'dictum', 1, 'P.O. Box 241, 3696 Donec Street', 'Caraga', 'Kota', '23158', NULL, '2023-02-07 17:27:58', '2023-02-07 17:27:58'),
(78, 'Jade Berry', '2022-03-30', 1, '66977039041327', 1, 1, 'accumsan neque et nunc. Quisque', 1, 'Ap #864-621 Quisque Avenue', 'Yucatán', 'Piotrków Trybunalski', '42489', NULL, NULL, NULL),
(79, 'Chanda Trujillo', '2023-01-12', 0, '70136450460248', 2, 1, 'augue', 0, 'Ap #632-770 Lorem Rd.', 'Oost-Vlaanderen', 'Białystok', '232675', NULL, NULL, NULL),
(80, 'Maggie Rich', '2022-04-19', 1, '72369205087429', 1, 0, 'porttitor interdum. Sed', 1, 'Ap #973-790 Vitae Ave', 'Vorarlberg', 'Zwevegem', '48166', NULL, NULL, NULL),
(81, 'Joan Fitzgerald', '2022-02-23', 1, '5173306585686', 1, 0, 'fermentum convallis', 1, '587-5475 Risus. Ave', 'Stockholms län', 'Aparecida de Goiânia', '7968', NULL, NULL, NULL),
(82, 'Winifred Powers', '2023-06-10', 2, '81722871428330', 2, 0, 'enim, condimentum eget, volutpat ornare, facilisis', 1, 'Ap #690-3464 Feugiat. Rd.', 'Vestfold og Telemark', 'Avesta', '83692', NULL, NULL, NULL),
(83, 'Ora Rose', '2022-11-08', 1, '46403148832171', 2, 1, 'conubia nostra, per inceptos hymenaeos. Mauris ut ', 0, 'Ap #630-9804 Nibh Road', 'West Java', 'Trollhättan', '63491', NULL, NULL, NULL),
(84, 'Aquila Stark', '2023-05-04', 1, '82643241475005', 0, 0, 'Integer vitae nibh. Donec est mauris, rhoncus id,', 0, 'Ap #686-2347 Luctus Road', 'Junín', 'Charlottetown', '8350 ME', NULL, NULL, NULL),
(85, 'Solomon Yates', '2023-07-19', 1, '42251708995999', 1, 0, 'In tincidunt', 1, 'Ap #914-7262 Dictum Rd.', 'South Island', 'Istanbul', 'D8 1XO', NULL, NULL, NULL),
(86, 'Carlos Hubbard', '2022-08-29', 2, '27319419576177', 0, 0, 'Nulla tempor augue ac ipsum. Phasellus vitae mauri', 1, 'P.O. Box 151, 9836 Dictum St.', 'Rheinland-Pfalz', 'Albany', '65-404', NULL, NULL, NULL),
(87, 'Briar Villarreal', '2022-03-28', 1, '55204265460755', 2, 1, 'vitae dolor. Donec fringilla.', 2, '552-8025 Mauris St.', 'Piura', 'Pacasmayo', '115432', NULL, NULL, NULL),
(88, 'Leslie Rosales', '2022-08-26', 1, '74936697079049', 1, 0, 'Mauris nulla. Integer urna. Vivamus molestie dapib', 2, 'P.O. Box 116, 2270 Non, Avenue', 'Limpopo', 'Oslo', '615613', NULL, NULL, NULL),
(89, 'Alfonso Hudson', '2023-06-12', 1, '92660990551186', 1, 1, 'Morbi quis urna.', 2, 'Ap #604-3509 Phasellus Rd.', 'Mecklenburg-Vorpommern', 'Fogo', '536675', NULL, NULL, NULL),
(90, 'Joel Davidson', '2023-07-27', 1, '60176822592753', 2, 0, 'dolor dapibus gravida. Aliquam tincidunt, nunc', 2, '877-5578 Lorem St.', 'Tyrol', 'Hengelo', '336053', NULL, NULL, NULL),
(91, 'Chase Lucas', '2023-06-04', 2, '15109946383093', 1, 1, 'sed pede. Cum sociis natoque', 1, '225-4410 Sociosqu St.', 'Saskatchewan', 'Phan Thiết', '41265', NULL, NULL, NULL),
(92, 'Callie Freeman', '2022-05-18', 1, '95454393891583', 1, 1, 'consectetuer euismod est arcu ac orci. Ut semper', 1, 'P.O. Box 827, 314 A, Avenue', 'Huádōng', 'Kraków', '22844', NULL, NULL, NULL),
(93, 'Portia Sampson', '2022-08-03', 1, '3667438036878', 1, 0, 'Nullam feugiat placerat velit. Quisque', 2, 'Ap #360-2465 Lobortis Rd.', 'Westmorland', 'San Cristóbal de las Casas', '5666', NULL, NULL, NULL),
(94, 'Norman Porter', '2022-05-12', 1, '26618634256114', 2, 1, 'ac facilisis facilisis, magna tellus faucibus leo,', 1, 'Ap #267-2123 Odio Road', 'Western Australia', 'Tehuacán', '4014', NULL, NULL, NULL),
(95, 'Oprah Peters', '2023-06-21', 1, '79559504905530', 1, 1, 'amet, consectetuer adipiscing', 2, 'Ap #803-5195 Pellentesque. Avenue', 'Upper Austria', 'Bouwel', '62561', NULL, NULL, NULL),
(96, 'Ira Pate', '2023-06-18', 2, '39938751642609', 3, 0, 'urna. Ut tincidunt vehicula risus. Nulla', 2, 'Ap #601-5189 Integer Rd.', 'Daman and Diu', 'Yeosu', '99754', NULL, NULL, NULL),
(97, 'Melvin Daniels', '2022-10-16', 0, '60266846427482', 1, 1, 'aliquet, metus urna convallis erat,', 1, '329-7179 Volutpat St.', 'Gilgit Baltistan', 'San Diego', 'WP1 1DR', NULL, '2023-02-07 17:28:49', '2023-02-07 17:28:49'),
(98, 'Wayne Randall', '2022-03-10', 0, '34514150078717', 2, 0, 'adipiscing fringilla, porttitor vulputate, posuere', 1, '113-7266 Erat, Av.', 'Chernivtsi oblast', 'Wolfville', '27651', NULL, NULL, NULL),
(99, 'Moana Stanton', '2023-02-05', 0, '36869717441598', 0, 0, 'suscipit nonummy. Fusce fermentum fermentum arcu. ', 1, '5729 Suspendisse Rd.', 'Ontario', 'Valle del Guamuez', '51646', NULL, NULL, NULL),
(100, 'Shaeleigh Ross', '2022-12-23', 1, '5814624727469', 2, 0, 'vestibulum. Mauris magna. Duis dignissim tempor ar', 0, 'Ap #437-5504 Mus. Avenue', 'Central Region', 'Seogwipo', '25546-14357', NULL, NULL, NULL),
(101, 'Gavin Foster', '2022-02-14', 1, '81507081656499', 1, 0, 'congue. In', 0, 'P.O. Box 528, 5243 Hendrerit. Ave', 'Special Region of Yogyakarta', 'Requínoa', '7161', NULL, NULL, NULL),
(102, 'Isabelle Hall', '2023-10-07', 1, '82356909049848', 1, 0, 'est tempor bibendum. Donec felis orci, adipiscing', 1, '9861 Mauris Av.', 'Aberdeenshire', 'Jeju', '17-451', NULL, NULL, NULL),
(103, 'Rashad White', '2023-06-25', 2, '50357081813717', 2, 1, 'dui, in sodales elit', 2, 'Ap #465-7693 Dolor Ave', 'Île-de-France', 'Dutse', '245443', NULL, NULL, NULL),
(104, 'Camilla Warner', '2022-11-15', 0, '72015337863840', 2, 0, 'tristique ac, eleifend vitae, erat. Vivamus nisi.', 0, 'Ap #558-6682 Arcu. Street', 'Córdoba', 'Guápiles', '52-516', NULL, NULL, NULL),
(105, 'Signe King', '2023-01-29', 1, '5509525882260', 2, 1, 'Maecenas malesuada', 1, 'P.O. Box 144, 2826 Cursus Street', 'Australian Capital Territory', 'Jayapura', '164755', NULL, NULL, NULL),
(106, 'Hiroko Sargent', '2023-01-27', 1, '29256657817834', 0, 0, 'magna nec quam. Curabitur vel lectus. Cum sociis n', 1, 'Ap #352-2175 Ac St.', 'Styria', 'Kaliningrad', '325022', NULL, NULL, NULL),
(107, 'Mikayla Gilliam', '2022-04-03', 0, '57797035771748', 2, 0, 'iaculis quis, pede. Praesent eu dui.', 0, '3765 Eleifend. Av.', 'Kentucky', 'Pınarbaşı', '15020', NULL, NULL, NULL),
(108, 'Jackson Russo', '2022-12-04', 1, '47615394471673', 1, 1, 'Cras eget nisi dictum augue malesuada malesuada.', 0, '680-9078 Hendrerit St.', 'North West', 'Galway', '24372', NULL, NULL, NULL),
(109, 'Damon Acevedo', '2022-10-11', 0, '52510234041822', 2, 0, 'mus. Proin vel arcu eu odio', 0, '6999 Elit, Street', 'Sơn La', 'Lanester', 'T0R 8T0', NULL, NULL, NULL),
(110, 'Justin Kirk', '2022-09-06', 1, '13898224649732', 2, 0, 'hendrerit neque. In ornare sagittis felis.', 2, 'P.O. Box 683, 4539 Ut Rd.', 'Western Cape', 'Pishin Valley', '3266', NULL, NULL, NULL),
(111, 'Noelle Randall', '2023-04-29', 1, '41729841145058', 1, 1, 'neque pellentesque massa lobortis ultrices. Vivamu', 0, '874-1700 Quisque Rd.', 'Bihar', 'Kerikeri', '49656', NULL, NULL, NULL),
(112, 'Stephen Hopper', '2022-02-28', 1, '9152932124787', 1, 1, 'neque. Sed eget lacus. Mauris non dui nec urna sus', 2, '485-676 Vitae, St.', 'South Jeolla', 'Pramaggiore', '1536', NULL, NULL, NULL),
(113, 'Sheila Carey', '2023-02-24', 0, '29656153929160', 2, 0, 'neque.', 1, '855-5675 Enim. Road', 'Jeju', 'Konya', '98106', NULL, NULL, NULL),
(114, 'Chava Estrada', '2023-10-16', 1, '58044712382712', 2, 0, 'ipsum primis in faucibus orci luctus et ultrices p', 0, '151-9534 Adipiscing Avenue', 'Zachodniopomorskie', 'Rouen', '5527 JR', NULL, NULL, NULL),
(115, 'Jack Glenn', '2022-10-27', 2, '52974550127060', 2, 0, 'non quam. Pellentesque habitant morbi tristique', 1, '111-3542 Tortor, St.', 'Arica y Parinacota', 'Valparaíso de Goiás', '9815', NULL, NULL, NULL),
(116, 'Emily Wilkins', '2022-04-09', 1, '67864542536936', 1, 1, 'turpis vitae purus gravida sagittis.', 0, 'P.O. Box 543, 4735 Cras Rd.', 'Upper Austria', 'Zeist', '27844', NULL, NULL, NULL),
(117, 'Dennis Hood', '2023-06-05', 0, '91060805219512', 0, 1, 'elit, dictum eu, eleifend nec,', 1, 'Ap #172-2074 Non, St.', 'Arkansas', 'Kovel', '19863', NULL, NULL, NULL),
(118, 'Kennan Trevino', '2023-05-03', 2, '78106132288358', 1, 1, 'et tristique pellentesque, tellus sem mollis dui,', 1, 'Ap #396-3741 Dignissim. Street', 'Zachodniopomorskie', 'Tyumen', '854781', NULL, NULL, NULL),
(119, 'Aphrodite Morin', '2023-03-11', 1, '8076300928351', 2, 0, 'ac libero nec ligula consectetuer rhoncus. Nullam ', 1, 'P.O. Box 122, 7553 Eu Av.', 'Trøndelag', 'Springfield', '16567', NULL, NULL, NULL),
(120, 'Ahmed Newton', '2022-06-30', 0, '87145201501256', 3, 1, 'accumsan', 0, '857-5332 Magna. St.', 'New South Wales', 'Chestermere', '8345', NULL, NULL, NULL),
(121, 'Kirk Harrison', '2022-08-15', 1, '90103431219122', 2, 1, 'porta elit, a feugiat tellus lorem eu metus. In lo', 2, '3990 Mi. Ave', 'Gangwon', 'Alto del Carmen', '08613', NULL, NULL, NULL),
(122, 'Stewart Davis', '2023-12-25', 1, '86998644549090', 2, 0, 'Nunc ac sem ut', 1, 'Ap #983-3831 Duis Rd.', 'Anambra', 'Lelystad', '44845', NULL, NULL, NULL),
(123, 'Courtney Hester', '2022-06-17', 0, '89229121873923', 1, 0, 'neque vitae semper egestas, urna justo faucibus le', 1, 'Ap #707-3625 Velit. Av.', 'Banten', 'Mokpo', '2661', NULL, NULL, NULL),
(124, 'Mollie Irwin', '2023-10-17', 1, '3315006032031', 2, 0, 'tincidunt adipiscing. Mauris molestie', 0, 'P.O. Box 199, 6630 Convallis, Ave', 'Amur Oblast', 'Tanglin', '52429', NULL, NULL, NULL),
(125, 'Hyatt Butler', '2022-07-26', 1, '13607367608698', 2, 0, 'risus quis diam luctus', 2, 'Ap #134-9433 Eros St.', 'Flevoland', 'Alexandra', '762524', NULL, NULL, NULL),
(126, 'Daphne Terry', '2022-02-10', 2, '22386909630092', 1, 0, 'pellentesque massa lobortis ultrices. Vivamus', 1, 'Ap #253-2550 Augue. Road', 'Connacht', 'Pavlohrad', '7686', NULL, NULL, NULL),
(127, 'Eugenia Pittman', '2023-01-26', 1, '77124522093866', 0, 0, 'lobortis mauris. Suspendisse aliquet', 1, '513-8241 Eu Ave', 'Luxemburg', 'Simpang', '382576', NULL, NULL, NULL),
(128, 'Malik Benson', '2023-06-27', 1, '36553675161709', 3, 1, 'nec, mollis vitae, posuere at, velit. Cras lorem l', 0, 'Ap #748-9630 Iaculis Street', 'Hidalgo', 'Borlänge', '66-81', NULL, NULL, NULL),
(129, 'Juliet Burton', '2022-02-22', 1, '93936883724362', 0, 0, 'tempus scelerisque, lorem ipsum sodales purus, in', 1, '9401 Per Ave', 'North-East Region', 'Vergnies', '2653 ZN', NULL, NULL, NULL),
(130, 'Wallace Kane', '2022-09-01', 0, '28019678536529', 1, 1, 'fringilla euismod enim. Etiam gravida molestie arc', 1, '6848 Sem, Avenue', 'Bretagne', 'Mazatlán', '0653 FY', NULL, NULL, NULL),
(131, 'Desirae Bentley', '2022-06-13', 2, '60727378742254', 2, 1, 'ipsum porta elit, a', 1, '995-3997 Elit, Avenue', 'Opolskie', 'Koblenz', '47980', NULL, NULL, NULL),
(132, 'Orson Carlson', '2022-09-05', 1, '20370652083385', 2, 0, 'lobortis, nisi nibh', 0, '755-2940 Non, Street', 'Flevoland', 'Auxerre', '22549', NULL, NULL, NULL),
(133, 'Deacon Justice', '2022-07-04', 0, '47236363951128', 2, 0, 'natoque penatibus et magnis dis parturient montes,', 1, '129-4562 Pharetra St.', 'Centre', 'Kraków', '14228', NULL, NULL, NULL),
(134, 'Thor Nash', '2023-05-10', 2, '60642827129370', 1, 1, 'Duis cursus, diam at', 2, 'P.O. Box 600, 176 Neque. St.', 'Saskatchewan', 'Freirina', '6129', NULL, NULL, NULL),
(135, 'Clayton Wilson', '2023-10-31', 2, '91162046928402', 3, 1, 'blandit enim consequat purus. Maecenas libero est,', 2, '702-939 Mauris Rd.', 'Sardegna', 'Bursa', '411998', NULL, NULL, NULL),
(136, 'Brian Greer', '2023-06-30', 1, '76481696337450', 1, 1, 'Aenean egestas hendrerit neque. In ornare sagittis', 1, '475-8631 Et Rd.', 'Mexico City', 'Lima', '7867', NULL, NULL, NULL),
(137, 'Gray Leach', '2022-05-02', 2, '70429442498468', 2, 0, 'consectetuer ipsum nunc id enim. Curabitur massa. ', 1, '684-5591 Duis St.', 'Kirovohrad oblast', 'Piedecuesta', '41936', NULL, NULL, NULL),
(138, 'Virginia Chen', '2022-10-10', 2, '35391665291912', 3, 0, 'gravida nunc sed pede. Cum sociis natoque', 1, '118-6414 Curabitur Ave', 'Huáběi', 'Gorzów Wielkopolski', '86250', NULL, NULL, NULL),
(139, 'Ray Tyler', '2022-02-11', 0, '98263994840536', 2, 0, 'nisi. Mauris nulla. Integer urna.', 1, 'P.O. Box 631, 3762 Massa. Rd.', 'South Island', 'Castres', '81-68', NULL, NULL, NULL),
(140, 'Amery Fuller', '2022-04-28', 1, '87118673536347', 0, 0, 'volutpat. Nulla facilisis. Suspendisse commodo tin', 0, 'P.O. Box 793, 8495 Mauris Ave', 'Punjab', 'Rotello', '5558', NULL, NULL, NULL),
(141, 'Isaac Bolton', '2023-03-30', 2, '9404908444285', 0, 0, 'Proin dolor. Nulla semper tellus id', 0, 'Ap #253-5772 Praesent St.', 'Oyo', 'La Thuile', '0844-7168', NULL, NULL, NULL),
(142, 'Abbot Hoffman', '2023-10-17', 1, '72441485053553', 2, 1, 'Professor', 1, '818-4997 Nisl Rd.', 'Sucre', 'Temuka', '32-89', NULL, '2023-02-08 11:04:35', NULL),
(143, 'Quon Kramer', '2023-07-15', 1, '67567316907009', 3, 0, 'aliquet diam. Sed diam lorem, auctor quis, tristiq', 0, '9453 Sit Rd.', 'Quebec', 'Xinjiang', '65333-342', NULL, NULL, NULL),
(144, 'Blythe Wise', '2022-04-30', 0, '31520585687466', 1, 1, 'orci. Phasellus dapibus quam quis diam. Pellentesq', 2, 'P.O. Box 921, 6136 Phasellus Av.', 'West Sulawesi', 'Vosselaar', '4837', NULL, NULL, NULL),
(145, 'Brady Browning', '2022-11-04', 1, '17301307352065', 2, 0, 'est mauris, rhoncus id, mollis nec, cursus', 2, '1335 Lorem Rd.', 'Lima', 'Tampa', '966538', NULL, NULL, NULL),
(146, 'Hasad Maddox', '2022-11-14', 0, '96422565279923', 0, 0, 'Pellentesque habitant morbi tristique', 0, '573-6511 Mattis. Street', 'Overijssel', 'Southern Islands', '852865', NULL, NULL, NULL),
(147, 'Piper Garrison', '2023-05-20', 2, '35359293409395', 1, 1, 'et pede. Nunc sed orci', 1, 'Ap #584-7241 Pede St.', 'South Sumatra', 'Chiari', '89445-915', NULL, NULL, NULL),
(148, 'Maryam Rivas', '2023-06-09', 2, '84494252972103', 1, 1, 'interdum ligula eu enim. Etiam imperdiet dictum ma', 1, '3810 Semper Rd.', 'Central Sulawesi', 'Capestrano', '625869', NULL, NULL, NULL),
(149, 'Louis Kelley', '2022-09-20', 0, '35052694613711', 1, 0, 'felis. Donec tempor, est ac', 2, '545-9346 Malesuada Ave', 'South Island', 'Museum', 'D6 0WH', NULL, NULL, NULL),
(150, 'Oscar Nunez', '2022-10-04', 0, '89892721864270', 2, 0, 'urna convallis erat, eget tincidunt dui', 1, 'Ap #906-7517 Risus Avenue', 'Yukon', 'Volgograd', '84-38', NULL, NULL, NULL),
(151, 'Shay Morse', '2023-10-05', 2, '14745896240333', 2, 1, 'Aliquam gravida', 0, 'P.O. Box 893, 7018 Tristique Rd.', 'Västra Götalands län', 'Liaoning', 'F63 7LW', NULL, NULL, NULL),
(152, 'Gareth Wynn', '2023-11-10', 0, '63511116364287', 1, 1, 'eros. Nam consequat dolor vitae dolor. Donec', 1, 'P.O. Box 799, 6744 Magna. Rd.', 'Drenthe', 'Palu', '16146', NULL, NULL, NULL),
(153, 'Chadwick Elliott', '2023-08-21', 0, '41315553127617', 1, 0, 'ut cursus luctus, ipsum leo elementum', 2, '989-3014 Gravida Av.', 'Victoria', 'Whyalla', '8583', NULL, NULL, NULL),
(154, 'Duncan Gregory', '2023-04-26', 2, '16632819367819', 1, 1, 'ut', 1, 'Ap #292-7565 Nulla Street', 'South Jeolla', 'Bekegem', '18852', NULL, NULL, NULL),
(155, 'Malik Robbins', '2022-10-17', 1, '30548998151446', 0, 1, 'placerat eget, venenatis a, magna. Lorem ipsum dol', 0, 'P.O. Box 645, 4672 Sed St.', 'Jharkhand', 'Pamplona', '35159', NULL, NULL, NULL),
(156, 'Karina Carver', '2023-02-20', 1, '94428686631793', 2, 1, 'mi, ac mattis velit justo', 1, '819-993 Aliquam Avenue', 'Goa', 'Cockburn', '5767', NULL, NULL, NULL),
(157, 'Celeste Stout', '2023-04-14', 0, '33739903018013', 0, 1, 'molestie', 2, 'Ap #123-7807 Arcu St.', 'Poitou-Charentes', 'Bastia', '8184', NULL, NULL, NULL),
(158, 'Roanna Wiggins', '2023-01-31', 0, '63085298920330', 0, 0, 'erat semper rutrum. Fusce', 1, '4509 Eu Avenue', 'North-East Region', 'Kon Tum', '310336', NULL, NULL, NULL),
(159, 'Avram Barber', '2023-12-26', 1, '46607609845275', 1, 1, 'ante blandit viverra. Donec tempus,', 2, 'Ap #232-468 Egestas Street', 'Australian Capital Territory', 'Yopal', '447287', NULL, NULL, NULL),
(160, 'Lillian Lott', '2022-11-05', 1, '8959288913425', 3, 0, 'commodo hendrerit. Donec', 1, '682-4116 Etiam Road', 'Ankara', 'Ang Mo Kio', '7482', NULL, NULL, NULL),
(161, 'Tyler Oneil', '2022-02-12', 1, '32418109839509', 1, 0, 'purus. Nullam scelerisque neque sed sem', 1, '508-6921 Auctor St.', 'Bursa', 'Coatzacoalcos', '105333', NULL, NULL, NULL),
(162, 'Geoffrey Evans', '2022-11-25', 1, '46229222594240', 0, 0, 'vulputate, nisi sem', 0, 'Ap #649-4809 Ipsum. Road', 'Huádōng', 'Mesa', '77974', NULL, NULL, NULL),
(163, 'Darrel Buck', '2022-06-07', 1, '75662989402540', 3, 0, 'Quisque libero lacus, varius et, euismod', 2, '3209 At Street', 'Florida', 'Sokoto', '35466', NULL, NULL, NULL),
(164, 'Kevyn Barrett', '2023-11-12', 2, '70332570437942', 0, 1, 'orci quis lectus. Nullam suscipit,', 1, 'P.O. Box 321, 8984 Risus. Road', 'Castilla - La Mancha', 'Cork', '80497', NULL, NULL, NULL),
(165, 'Shelly Kirby', '2022-09-15', 2, '36776424616219', 2, 0, 'enim, gravida sit amet, dapibus id, blandit at,', 1, 'Ap #790-8584 Pretium St.', 'Heredia', 'Thiaumont', '73465', NULL, NULL, NULL),
(166, 'Simone Sexton', '2023-11-14', 1, '29718133221787', 1, 1, 'dolor, tempus', 2, '3228 Nullam Road', 'Maluku', 'Shandong', '81647', NULL, NULL, NULL),
(167, 'Rhona Gregory', '2023-09-19', 1, '66273262627296', 2, 0, 'vestibulum. Mauris magna. Duis dignissim', 1, '8893 Dictum St.', 'Chhattisgarh', 'Milton Keynes', '44121', NULL, NULL, NULL),
(168, 'Ahmed Whitley', '2023-12-12', 1, '78892960203287', 0, 0, 'quis, pede. Suspendisse dui. Fusce diam nunc, ulla', 1, 'Ap #267-1029 Metus. Rd.', 'Northern Cape', 'Porsgrunn', '278747', NULL, NULL, NULL),
(169, 'Reece Lamb', '2024-01-22', 2, '49377645440724', 3, 0, 'accumsan convallis, ante lectus', 2, '2165 Metus Av.', 'Azad Kashmir', 'Port Blair', '894535', NULL, NULL, NULL),
(170, 'Hollee Schroeder', '2023-02-24', 2, '70727214044041', 1, 0, 'fringilla ornare placerat, orci lacus vestibulum l', 2, '546-2784 Nullam Street', 'Magallanes y Antártica Chilena', 'Ipiales', '319841', NULL, NULL, NULL),
(171, 'Theodore Mann', '2023-08-31', 1, '32969985440570', 0, 0, 'convallis erat, eget tincidunt', 1, '5230 Ut Ave', 'Bryansk Oblast', 'Peutie', '859788', NULL, NULL, NULL),
(172, 'Wang Berger', '2024-01-02', 2, '78279381682771', 0, 0, 'erat neque non', 1, 'P.O. Box 201, 7806 Pede, St.', 'Rogaland', 'Northumberland', '41707', NULL, NULL, NULL),
(173, 'Fritz Abbott', '2022-10-13', 0, '75240546548402', 3, 0, 'tincidunt nibh. Phasellus', 0, 'Ap #991-6678 Donec Ave', 'Brandenburg', 'Overland Park', '7355 RT', NULL, NULL, NULL),
(174, 'Graiden Richardson', '2022-03-20', 1, '71880353903812', 1, 0, 'dui, semper et, lacinia vitae, sodales at, velit. ', 0, 'P.O. Box 311, 8810 Varius Rd.', 'Khánh Hòa', 'North Waziristan', '585777', NULL, NULL, NULL),
(175, 'Karly Dominguez', '2022-03-07', 1, '24082222766667', 2, 0, 'sapien. Aenean massa.', 1, '165-1510 Orci Av.', 'Ancash', 'Thanh Miện', '63-52', NULL, NULL, NULL),
(176, 'Flynn Perez', '2023-08-18', 1, '2741943442926', 3, 1, 'sed pede.', 1, '754-2525 Id St.', 'Zhōngnán', 'Stockholm', '1575', NULL, NULL, NULL),
(177, 'Byron Ray', '2024-01-11', 0, '97035668392335', 1, 1, 'elit, a feugiat tellus lorem eu', 1, 'Ap #294-3852 Amet, Rd.', 'FATA', 'Piła', '3088', NULL, NULL, NULL),
(178, 'Tashya Browning', '2022-11-07', 2, '21121840456360', 0, 0, 'orci luctus', 2, '164-9892 Senectus Rd.', 'Aquitaine', 'Bremerhaven', '3706', NULL, NULL, NULL),
(179, 'Aimee Pierce', '2023-09-07', 0, '85152650851761', 2, 0, 'laoreet,', 1, '123-2520 Lacus. Road', 'Jönköpings län', 'Cheongju', '03198', NULL, NULL, NULL),
(180, 'Davis Gallagher', '2022-02-21', 1, '42065258127658', 2, 1, 'sapien. Nunc pulvinar', 0, '631-2505 Elit St.', 'Jeju', 'Pariaman', '41572', NULL, NULL, NULL),
(181, 'Angela Williams', '2022-12-12', 1, '70605088776165', 0, 1, 'magna. Sed eu eros.', 1, 'Ap #315-1978 Orci Avenue', 'North Chungcheong', 'Hoyerswerda', '727465', NULL, NULL, NULL),
(182, 'Olympia Weaver', '2024-01-01', 0, '45137378655192', 2, 0, 'eu', 1, '380 Rutrum Rd.', 'Newfoundland and Labrador', 'Mohmand Agency', '5696', NULL, NULL, NULL),
(183, 'Dai Mcgowan', '2022-09-09', 0, '10212749680499', 2, 1, 'semper tellus id nunc interdum', 1, '884-2112 Egestas, Avenue', 'Zhōngnán', 'Salamanca', '10504', NULL, NULL, NULL),
(184, 'Anthony Barrett', '2023-12-19', 2, '19582208255305', 3, 1, 'neque. Sed eget lacus. Mauris non dui', 2, 'Ap #748-6054 Pede. Street', 'Denbighshire', 'Bottrop', '74728-506', NULL, NULL, NULL),
(185, 'Rashad Cardenas', '2023-05-12', 2, '34026234389492', 1, 1, 'commodo at, libero.', 1, 'Ap #357-3960 Scelerisque Ave', 'South Island', 'Trà Vinh', '07732', NULL, NULL, NULL),
(186, 'Hayes Huff', '2023-07-03', 1, '68556674241495', 1, 0, 'enim. Etiam gravida molestie arcu. Sed eu nibh vul', 1, 'Ap #882-6107 Ridiculus Road', 'Niger', 'Brunn am Gebirge', '13989', NULL, NULL, NULL),
(187, 'Evelyn Bowers', '2022-05-19', 2, '73406552529241', 2, 1, 'tortor. Nunc commodo', 1, 'Ap #735-7165 Turpis Street', 'Dolnośląskie', 'Ternate', '75721', NULL, NULL, NULL),
(188, 'Sawyer Santana', '2023-09-16', 1, '90013839941801', 0, 0, 'magnis dis parturient montes,', 2, 'Ap #870-6791 Non, Rd.', 'Yukon', 'Miryang', 'FM6 3OI', NULL, NULL, NULL),
(189, 'Mannix Cotton', '2023-12-23', 0, '82046617446534', 3, 0, 'molestie dapibus ligula. Aliquam', 1, '358-5512 Non, Ave', 'Gaziantep', 'Gyeongju', '7611 TG', NULL, NULL, NULL),
(190, 'Beau Hawkins', '2022-08-02', 1, '838053377275', 2, 0, 'justo. Praesent luctus. Curabitur egestas nunc', 0, '995-1442 Aliquet Street', 'Bayern', 'Tullibody', '69-25', NULL, NULL, NULL),
(191, 'Zephania Dickerson', '2022-09-17', 0, '84454297964117', 0, 0, 'ipsum primis in faucibus orci luctus', 0, 'Ap #644-4407 Ultrices Ave', 'Agder', 'Nazilli', '4546', NULL, NULL, NULL),
(192, 'Gavin Marshall', '2022-08-27', 1, '44422281108208', 2, 0, 'sit amet, risus.', 0, 'P.O. Box 820, 3191 Aliquam Avenue', 'Central Sulawesi', 'Lelystad', '714382', NULL, NULL, NULL),
(193, 'Kadeem Holt', '2023-06-29', 0, '6135051229004', 0, 0, 'pharetra, felis eget varius ultrices, mauris ipsum', 1, '2182 Duis Rd.', 'Tabasco', 'Cork', '3140', NULL, NULL, NULL),
(194, 'Abraham Carroll', '2022-10-23', 1, '42044454070053', 1, 1, 'Nunc ullamcorper, velit in aliquet lobortis, nisi ', 1, 'Ap #705-3264 Aliquet Road', 'Pskov Oblast', 'Mamuju', '47082', NULL, NULL, NULL),
(195, 'Kirsten Berry', '2023-07-30', 0, '89451725733404', 2, 0, 'Phasellus fermentum convallis ligula. Donec luctus', 2, '776-7793 Vel Street', 'Punjab', 'Matiari', '6365', NULL, NULL, NULL),
(196, 'Owen Whitley', '2023-08-06', 1, '51714386287736', 2, 0, 'suscipit nonummy. Fusce', 1, 'Ap #859-8823 In, St.', 'Gelderland', 'Laakirchen', 'H2V 6Z2', NULL, NULL, NULL),
(197, 'Lois Bruce', '2023-04-20', 2, '50060701818157', 3, 0, 'sagittis placerat.', 0, 'P.O. Box 710, 8929 Nulla St.', 'La Libertad', 'Omsk', '7425 DL', NULL, NULL, NULL),
(198, 'Steven Mclaughlin', '2023-07-07', 2, '84952700792543', 0, 1, 'diam. Duis', 0, 'P.O. Box 156, 3446 Vivamus Street', 'Lampung', 'Neder-Over-Heembeek', 'H52 7OJ', NULL, NULL, NULL),
(199, 'Camille Matthews', '2022-10-08', 0, '92788445679395', 2, 1, 'vestibulum nec, euismod in, dolor. Fusce feugiat. ', 2, 'P.O. Box 817, 5848 Tellus St.', 'Friesland', 'Freital', 'E5P 9NN', NULL, NULL, NULL),
(200, 'Talon Ellison', '2022-02-23', 1, '85614126130751', 3, 1, 'ipsum non arcu. Vivamus sit amet risus. Donec eges', 0, '991-2200 Duis Av.', 'Luxemburg', 'Sneek', '936861', NULL, NULL, NULL),
(201, '', '0000-00-00', 0, '', 0, 0, '', 0, '', '', '', '', '2023-02-07 19:34:34', '2023-02-07 19:34:34', NULL),
(202, 'Marcos Eduardo', '0000-00-00', 0, '', 0, 0, '', 0, '', '', '', '', '2023-02-07 23:52:42', '2023-02-07 23:52:42', NULL),
(203, 'Marcos Eduardo de Souza', '0000-00-00', 0, '', 0, 0, '', 0, 'Rua Tambaú', '', 'Rio de Janeiro', '21031130', '2023-02-07 23:55:23', '2023-02-07 23:55:23', NULL),
(204, '1', '0000-00-00', 0, '', 0, 0, '', 0, '', '', '', '', '2023-02-08 00:33:26', '2023-02-08 00:33:26', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `estadocivil`
--

CREATE TABLE `estadocivil` (
  `estado_civil_id` int(6) UNSIGNED NOT NULL,
  `estado_civil` varchar(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `estadocivil`
--

INSERT INTO `estadocivil` (`estado_civil_id`, `estado_civil`) VALUES
(1, 'Solteiro(a)'),
(2, 'Casado(a)'),
(3, 'Viuvo(a)');

-- --------------------------------------------------------

--
-- Estrutura da tabela `telefones`
--

CREATE TABLE `telefones` (
  `telefone_id` int(6) UNSIGNED NOT NULL,
  `cliente_id` int(6) UNSIGNED NOT NULL,
  `telefone` int(15) NOT NULL,
  `tipo_telefone_id` int(6) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `telefones`
--

INSERT INTO `telefones` (`telefone_id`, `cliente_id`, `telefone`, `tipo_telefone_id`) VALUES
(3, 19, 12345, 2),
(4, 21, 0, 1),
(5, 22, 0, 1),
(6, 30, 0, 1),
(7, 0, 0, 1),
(8, 38, 12345789, 2),
(9, 0, 0, 1),
(10, 0, 2147483647, 1),
(11, 46, 0, 1),
(12, 0, 0, 1),
(13, 142, 2147483647, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tipodocumento`
--

CREATE TABLE `tipodocumento` (
  `documento_id` int(6) UNSIGNED NOT NULL,
  `tipo_documento` varchar(55) NOT NULL,
  `sigla` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `tipodocumento`
--

INSERT INTO `tipodocumento` (`documento_id`, `tipo_documento`, `sigla`) VALUES
(0, 'Cadastro de Pessoas Físicas', 'CPF'),
(1, 'Cadastro Nacional da Pessoa Jurídica', 'CNPJ'),
(2, 'Outro', 'Outro');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tipotelefone`
--

CREATE TABLE `tipotelefone` (
  `tipo_telefone_id` int(6) UNSIGNED NOT NULL,
  `tipo_telefone` varchar(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `tipotelefone`
--

INSERT INTO `tipotelefone` (`tipo_telefone_id`, `tipo_telefone`) VALUES
(1, 'Residencial'),
(2, 'Celular');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`cliente_id`),
  ADD KEY `tipo_documento` (`tipo_documento`),
  ADD KEY `estado_civil` (`estado_civil`);

--
-- Índices para tabela `estadocivil`
--
ALTER TABLE `estadocivil`
  ADD PRIMARY KEY (`estado_civil_id`);

--
-- Índices para tabela `telefones`
--
ALTER TABLE `telefones`
  ADD PRIMARY KEY (`telefone_id`),
  ADD KEY `cliente_id` (`cliente_id`),
  ADD KEY `tipo_telefone_id` (`tipo_telefone_id`);

--
-- Índices para tabela `tipodocumento`
--
ALTER TABLE `tipodocumento`
  ADD PRIMARY KEY (`documento_id`);

--
-- Índices para tabela `tipotelefone`
--
ALTER TABLE `tipotelefone`
  ADD PRIMARY KEY (`tipo_telefone_id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `clientes`
--
ALTER TABLE `clientes`
  MODIFY `cliente_id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=205;

--
-- AUTO_INCREMENT de tabela `estadocivil`
--
ALTER TABLE `estadocivil`
  MODIFY `estado_civil_id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `telefones`
--
ALTER TABLE `telefones`
  MODIFY `telefone_id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de tabela `tipodocumento`
--
ALTER TABLE `tipodocumento`
  MODIFY `documento_id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `tipotelefone`
--
ALTER TABLE `tipotelefone`
  MODIFY `tipo_telefone_id` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
