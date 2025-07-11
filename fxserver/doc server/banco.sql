-- --------------------------------------------------------
-- Servidor:                     127.0.0.1
-- Versão do servidor:           10.4.32-MariaDB - mariadb.org binary distribution
-- OS do Servidor:               Win64
-- HeidiSQL Versão:              12.10.0.7000
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Copiando estrutura do banco de dados para creawork
CREATE DATABASE IF NOT EXISTS `creawork` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;
USE `creawork`;

-- Copiando estrutura para tabela creawork.accounts
CREATE TABLE IF NOT EXISTS `accounts` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `whitelist` tinyint(1) NOT NULL DEFAULT 0,
  `priority` int(50) NOT NULL DEFAULT 0,
  `chars` int(10) NOT NULL DEFAULT 1,
  `gems` int(20) NOT NULL DEFAULT 0,
  `discord` varchar(50) NOT NULL DEFAULT '0',
  `license` varchar(50) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `license` (`license`),
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Copiando dados para a tabela creawork.accounts: ~6 rows (aproximadamente)
INSERT INTO `accounts` (`id`, `whitelist`, `priority`, `chars`, `gems`, `discord`, `license`) VALUES
	(1, 1, 0, 1, 4931868, '0', 'c06532b425f803c4b2d308845514e80204d14b77'),
	(2, 1, 0, 1, 999650, '0', '6a99e026853db21aa7d3ba042075d5eb9b04a651'),
	(3, 1, 0, 1, 1199775, '0', '0ea023ae54419fcda35283a73f7ba1ef94e7bd52'),
	(4, 1, 0, 1, 0, '0', '53c6e27c471de46808c51d40881c1f5b5f4588ee'),
	(5, 1, 0, 1, 0, '0', '1e6cafd724cebc49b9f9251a64f894302362c60c'),
	(6, 1, 0, 1, 0, '0', '11288d8c179dd04a23004927f990152d39a5eed0');

-- Copiando estrutura para tabela creawork.banneds
CREATE TABLE IF NOT EXISTS `banneds` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `license` varchar(50) NOT NULL,
  `time` int(20) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Copiando dados para a tabela creawork.banneds: ~0 rows (aproximadamente)

-- Copiando estrutura para tabela creawork.characters
CREATE TABLE IF NOT EXISTS `characters` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `license` varchar(50) DEFAULT NULL,
  `phone` varchar(10) DEFAULT NULL,
  `name` varchar(50) DEFAULT 'Individuo',
  `name2` varchar(50) DEFAULT 'Indigente',
  `sex` varchar(1) NOT NULL DEFAULT 'M',
  `prison` int(10) NOT NULL,
  `bank` int(20) NOT NULL DEFAULT 0,
  `medicplan` int(20) NOT NULL DEFAULT 0,
  `blood` int(1) NOT NULL DEFAULT 1,
  `fines` int(20) NOT NULL DEFAULT 0,
  `tracking` int(30) NOT NULL DEFAULT 0,
  `spending` int(20) NOT NULL DEFAULT 0,
  `cardlimit` int(20) NOT NULL DEFAULT 0,
  `cardpassword` int(11) NOT NULL DEFAULT 0,
  `deleted` int(1) NOT NULL DEFAULT 0,
  `created` int(20) NOT NULL DEFAULT 0,
  `paypal` int(11) DEFAULT 0,
  `age` int(11) DEFAULT 20,
  `time` int(11) DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `license` (`license`),
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Copiando dados para a tabela creawork.characters: ~6 rows (aproximadamente)
INSERT INTO `characters` (`id`, `license`, `phone`, `name`, `name2`, `sex`, `prison`, `bank`, `medicplan`, `blood`, `fines`, `tracking`, `spending`, `cardlimit`, `cardpassword`, `deleted`, `created`, `paypal`, `age`, `time`) VALUES
	(1, 'c06532b425f803c4b2d308845514e80204d14b77', '777-666', 'juninho', 'lima', 'M', 0, 64740615, 1749776722, 4, 0, 0, 1992, 8, 401, 0, 1748735175, 10000, 20, NULL),
	(2, '6a99e026853db21aa7d3ba042075d5eb9b04a651', '869-686', 'NTN', 'INFO', 'M', 0, 1024025, 0, 4, 0, 0, 0, 0, 401, 0, 1748736779, 0, 20, NULL),
	(3, '0ea023ae54419fcda35283a73f7ba1ef94e7bd52', '114-763', 'Alex', 'Esquio', 'M', 0, 32000, 0, 1, 0, 0, 0, 0, 0, 0, 1748910616, 0, 20, NULL),
	(4, '53c6e27c471de46808c51d40881c1f5b5f4588ee', '290-618', 'Pyetro', 'Yuri', 'M', 0, 5000, 0, 1, 0, 0, 0, 0, 0, 0, 1749009470, 0, 20, NULL),
	(5, '1e6cafd724cebc49b9f9251a64f894302362c60c', '548-971', 'Diana', 'fox', 'F', 0, 5000, 0, 3, 0, 0, 0, 0, 0, 0, 1749067712, 0, 20, NULL),
	(6, '11288d8c179dd04a23004927f990152d39a5eed0', '317-099', 'Socrattes', 'Pista', 'M', 0, 2002800, 0, 3, 0, 0, 975, 1025, 0, 0, 1749345364, 0, 20, NULL),
	(7, 'c06532b425f803c4b2d308845514e80204d14b77', '903-186', 'alme', 'ewke', 'F', 0, 5000, 0, 2, 0, 0, 0, 0, 0, 0, 1749528080, 0, 20, NULL);

-- Copiando estrutura para tabela creawork.chests
CREATE TABLE IF NOT EXISTS `chests` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `Name` varchar(50) NOT NULL,
  `Permission` varchar(50) DEFAULT NULL,
  `Weight` int(10) NOT NULL DEFAULT 500,
  `Slots` int(20) NOT NULL DEFAULT 50,
  `Logs` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Copiando dados para a tabela creawork.chests: ~0 rows (aproximadamente)
INSERT INTO `chests` (`id`, `Name`, `Permission`, `Weight`, `Slots`, `Logs`) VALUES
	(1, 'BurgerShot', 'BurgerShot', 500, 50, 0);

-- Copiando estrutura para tabela creawork.dependents
CREATE TABLE IF NOT EXISTS `dependents` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Passport` int(10) NOT NULL DEFAULT 0,
  `Dependent` int(10) NOT NULL DEFAULT 0,
  `Name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `Passport` (`Passport`),
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Copiando dados para a tabela creawork.dependents: ~0 rows (aproximadamente)
INSERT INTO `dependents` (`id`, `Passport`, `Dependent`, `Name`) VALUES
	(1, 1, 2, 'NTN INFO');

-- Copiando estrutura para tabela creawork.entitydata
CREATE TABLE IF NOT EXISTS `entitydata` (
  `dkey` varchar(100) NOT NULL,
  `dvalue` longtext DEFAULT NULL,
  PRIMARY KEY (`dkey`),
  KEY `dkey` (`dkey`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Copiando dados para a tabela creawork.entitydata: ~18 rows (aproximadamente)
INSERT INTO `entitydata` (`dkey`, `dvalue`) VALUES
	('Chest:BurgerShot', '{"15":{"item":"cucumber-1748747106","amount":10},"19":{"item":"onion-1748747267","amount":12},"16":{"item":"carrot-1748747122","amount":10},"17":{"item":"radish-1748747136","amount":10},"10":{"amount":20,"item":"milk-1748747019"},"11":{"amount":10,"item":"icecreamingred"},"6":{"amount":40,"item":"hamburgerpatty-1748746914"},"8":{"amount":20,"item":"potato-1748746956"},"9":{"amount":20,"item":"cbveggy-1748746990"},"14":{"amount":3,"item":"tomato-1748747090"},"13":{"amount":5,"item":"hfcs-1748747072"},"12":{"amount":10,"item":"coffeebeans-1748747056"},"18":{"item":"beetroot-1748747151","amount":10},"1":{"amount":87,"item":"styrofoamcup"},"2":{"item":"rawchickenthighs-1748746702","amount":98},"3":{"amount":97,"item":"hamburgermeat-1748746853"},"4":{"amount":37,"item":"hamburgerbuns-1748746878"},"5":{"amount":32,"item":"lettuce-1748746893"}}'),
	('Glove:02NUN715', '[]'),
	('Glove:18IMU024', '[]'),
	('Glove:48CXG949', '[]'),
	('Glove:79NGL474', '[]'),
	('Mods:1:chiron17', '{"liverys":-1,"platestyle":5,"xenonColor":255,"colors":[5,150],"neon":{"1":false,"2":false,"3":false,"0":false},"tint":2,"plateIndex":5,"extras":[0,0,0,0,0,0,0,0,0,0,0,0],"dashColour":147,"var":{"24":false,"23":false},"interColour":147,"wheeltype":7,"extracolors":[159,147],"smokecolor":[255,255,255],"lights":[255,0,255],"mods":{"1":-1,"2":-1,"3":-1,"4":-1,"5":-1,"6":-1,"7":-1,"8":-1,"9":-1,"10":-1,"11":3,"12":2,"13":2,"14":0,"15":3,"16":4,"17":false,"18":1,"19":false,"20":false,"21":false,"22":false,"23":-1,"24":-1,"25":-1,"26":-1,"27":-1,"28":-1,"29":-1,"30":-1,"31":-1,"32":-1,"33":-1,"34":-1,"35":-1,"36":-1,"37":-1,"38":-1,"39":-1,"40":-1,"41":-1,"42":-1,"43":-1,"44":-1,"45":-1,"46":-1,"47":-1,"48":-1,"0":-1}}'),
	('Outfit:1', '{"accessory":{"item":0,"texture":0},"shoes":{"item":161,"texture":0},"ear":{"item":-1,"texture":0},"pants":{"item":229,"texture":0},"vest":{"item":0,"texture":0},"glass":{"item":0,"texture":0},"tshirt":{"item":238,"texture":0},"1":{"item":202,"texture":2},"hat":{"item":-1,"texture":0},"arms":{"item":235,"texture":0},"backpack":{"item":0,"texture":0},"bracelet":{"item":-1,"texture":0},"decals":{"item":0,"texture":0},"torso":{"item":15,"texture":0},"mask":{"item":0,"texture":0},"watch":{"item":-1,"texture":0}}'),
	('Outfit:2', '[]'),
	('Outfit:6', '[]'),
	('Permissions:Admin', '{"1":1,"2":1,"3":1,"6":1,"7":1}'),
	('Permissions:advogado', '{}'),
	('Permissions:AutoSport', '{"3":1}'),
	('Permissions:BurgerShot', '{}'),
	('Permissions:Magnata', '{"1":1}'),
	('Permissions:Mechanic', '[]'),
	('Permissions:Paramedic', '{"1":1}'),
	('Permissions:Police', '{"1":1,"2":1,"3":1}'),
	('Permissions:Premium', '{"1":0}'),
	('Shopping', '[{"Price":100.0,"Name":"juninho lima Comprou Mochila Grande","Discount":0,"Index":"backpackg","Amount":1},{"Price":150.0,"Name":"juninho lima Comprou Placa Premium","Discount":0,"Index":"platepremium","Amount":1},{"Price":200.039,"Name":"juninho lima Comprou Chip Telefônico","Discount":15.95,"Index":"chip","Amount":1},{"Price":100.0,"Name":"Alex Esquio Comprou Mochila Grande","Discount":0,"Index":"backpackg","Amount":1},{"Price":50.0,"Name":"Alex Esquio Comprou Mochila Pequena","Discount":0,"Index":"backpackp","Amount":1},{"Price":75.0,"Name":"Alex Esquio Comprou Mochila Média","Discount":0,"Index":"backpackm","Amount":1},{"Price":75.0,"Name":"juninho lima Comprou Mochila Média","Discount":0,"Index":"backpackm","Amount":1},{"Price":50.0,"Name":"juninho lima Comprou Mochila Pequena","Discount":0,"Index":"backpackp","Amount":1},{"Price":50.0,"Name":"juninho lima Comprou Mochila Pequena","Discount":0,"Index":"backpackp","Amount":1},{"Price":75.0,"Name":"juninho lima Comprou Mochila Média","Discount":0,"Index":"backpackm","Amount":1},{"Price":200.039,"Name":"NTN INFO Comprou Chip Telefônico","Discount":15.95,"Index":"chip","Amount":1},{"Price":50.0,"Name":"juninho lima Comprou Mochila Pequena","Discount":0,"Index":"backpackp","Amount":1},{"Price":50.0,"Name":"juninho lima Comprou Mochila Pequena","Discount":0,"Index":"backpackp","Amount":1},{"Price":100.0,"Name":"juninho lima Comprou Mochila Grande","Discount":0,"Index":"backpackg","Amount":1},{"Price":100.0,"Name":"NTN INFO Comprou Mochila Grande","Discount":0,"Index":"backpackg","Amount":1},{"Price":50.0,"Name":"NTN INFO Comprou Mochila Pequena","Discount":0,"Index":"backpackp","Amount":1},{"Price":75.0,"Name":"juninho lima Comprou Mochila Média","Amount":1,"Index":"backpackm","Discount":0}]'),
	('Vault:119', '{"1":{"amount":2,"item":"homekey-007748-119"}}'),
	('Vault:395', '[]'),
	('Wardrobe:1', '{"eu":{"shoes":{"texture":0,"item":161},"vest":{"texture":0,"item":0},"ear":{"texture":0,"item":-1},"watch":{"texture":0,"item":-1},"bracelet":{"texture":0,"item":-1},"glass":{"texture":0,"item":0},"backpack":{"texture":0,"item":0},"pants":{"texture":0,"item":229},"hat":{"texture":0,"item":-1},"arms":{"texture":0,"item":235},"tshirt":{"texture":0,"item":238},"mask":{"texture":0,"item":0},"1":{"texture":2,"item":202},"torso":{"texture":0,"item":15},"decals":{"texture":0,"item":0},"accessory":{"texture":0,"item":0}}}');

-- Copiando estrutura para tabela creawork.fidentity
CREATE TABLE IF NOT EXISTS `fidentity` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  `name2` varchar(50) NOT NULL DEFAULT '',
  `port` int(1) NOT NULL DEFAULT 1,
  `blood` int(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Copiando dados para a tabela creawork.fidentity: ~0 rows (aproximadamente)

-- Copiando estrutura para tabela creawork.fines
CREATE TABLE IF NOT EXISTS `fines` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Passport` int(10) NOT NULL DEFAULT 0,
  `Name` varchar(50) NOT NULL,
  `Date` varchar(50) NOT NULL,
  `Hour` varchar(50) NOT NULL,
  `Value` int(11) NOT NULL,
  `Message` longtext DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `Passport` (`Passport`),
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Copiando dados para a tabela creawork.fines: ~0 rows (aproximadamente)
INSERT INTO `fines` (`id`, `Passport`, `Name`, `Date`, `Hour`, `Value`, `Message`) VALUES
	(1, 3, 'Alex Esquio', '2025-06-01', '21:16:43', 290, 'velocidade');

-- Copiando estrutura para tabela creawork.gas_station_balance
CREATE TABLE IF NOT EXISTS `gas_station_balance` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `gas_station_id` varchar(50) NOT NULL,
  `income` bit(1) NOT NULL,
  `title` varchar(255) NOT NULL,
  `amount` int(10) unsigned NOT NULL,
  `date` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Copiando dados para a tabela creawork.gas_station_balance: ~0 rows (aproximadamente)

-- Copiando estrutura para tabela creawork.gas_station_business
CREATE TABLE IF NOT EXISTS `gas_station_business` (
  `gas_station_id` varchar(50) NOT NULL DEFAULT '',
  `user_id` varchar(50) NOT NULL,
  `stock` int(10) unsigned NOT NULL DEFAULT 0,
  `price` int(10) unsigned NOT NULL DEFAULT 0,
  `stock_upgrade` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `truck_upgrade` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `relationship_upgrade` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `money` int(10) unsigned NOT NULL DEFAULT 0,
  `total_money_earned` int(10) unsigned NOT NULL DEFAULT 0,
  `total_money_spent` int(10) unsigned NOT NULL DEFAULT 0,
  `gas_bought` int(10) unsigned NOT NULL DEFAULT 0,
  `gas_sold` int(10) unsigned NOT NULL DEFAULT 0,
  `distance_traveled` double unsigned NOT NULL DEFAULT 0,
  `total_visits` int(10) unsigned NOT NULL DEFAULT 0,
  `customers` int(10) unsigned NOT NULL DEFAULT 0,
  `timer` int(10) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`gas_station_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Copiando dados para a tabela creawork.gas_station_business: ~0 rows (aproximadamente)

-- Copiando estrutura para tabela creawork.gas_station_jobs
CREATE TABLE IF NOT EXISTS `gas_station_jobs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `gas_station_id` varchar(50) NOT NULL DEFAULT '',
  `name` varchar(50) NOT NULL,
  `reward` int(10) unsigned NOT NULL DEFAULT 0,
  `amount` int(11) NOT NULL DEFAULT 0,
  `progress` bit(1) NOT NULL DEFAULT b'0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Copiando dados para a tabela creawork.gas_station_jobs: ~0 rows (aproximadamente)

-- Copiando estrutura para tabela creawork.hydrus_credits
CREATE TABLE IF NOT EXISTS `hydrus_credits` (
  `player_id` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `amount` int(11) DEFAULT 0,
  PRIMARY KEY (`player_id`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Copiando dados para a tabela creawork.hydrus_credits: ~0 rows (aproximadamente)

-- Copiando estrutura para tabela creawork.hydrus_scheduler
CREATE TABLE IF NOT EXISTS `hydrus_scheduler` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `player_id` varchar(100) NOT NULL,
  `command` varchar(100) NOT NULL,
  `args` varchar(4096) NOT NULL,
  `execute_at` bigint(20) DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `player_index` (`player_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Copiando dados para a tabela creawork.hydrus_scheduler: ~0 rows (aproximadamente)

-- Copiando estrutura para tabela creawork.investments
CREATE TABLE IF NOT EXISTS `investments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Passport` int(10) NOT NULL DEFAULT 0,
  `Liquid` int(20) NOT NULL DEFAULT 0,
  `Monthly` int(20) NOT NULL DEFAULT 0,
  `Deposit` int(20) NOT NULL DEFAULT 0,
  `Last` int(20) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `Passport` (`Passport`),
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Copiando dados para a tabela creawork.investments: ~0 rows (aproximadamente)
INSERT INTO `investments` (`id`, `Passport`, `Liquid`, `Monthly`, `Deposit`, `Last`) VALUES
	(1, 1, 0, 0, 100000, 1748568146);

-- Copiando estrutura para tabela creawork.invoices
CREATE TABLE IF NOT EXISTS `invoices` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Passport` int(10) NOT NULL DEFAULT 0,
  `Received` int(10) NOT NULL DEFAULT 0,
  `Type` varchar(50) NOT NULL,
  `Reason` longtext NOT NULL,
  `Holder` varchar(50) NOT NULL,
  `Value` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `Passport` (`Passport`),
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Copiando dados para a tabela creawork.invoices: ~4 rows (aproximadamente)
INSERT INTO `invoices` (`id`, `Passport`, `Received`, `Type`, `Reason`, `Holder`, `Value`) VALUES
	(1, 1, 0, 'received', 'Cartão de Crédito', 'Loja: Retirou Veiculo', 50),
	(2, 1, 0, 'received', 'Cartão de Crédito', 'Loja: Retirou Veiculo', 50),
	(3, 1, 0, 'received', 'Cartão de Crédito', 'Loja: Teste-Driver', 100),
	(4, 1, 0, 'received', 'Cartão de Crédito', 'Loja: Banco', 500),
	(5, 1, 0, 'received', 'Cartão de Crédito', 'Loja: Mecânica', 1250),
	(6, 1, 0, 'received', 'Cartão de Crédito', 'Loja: Gastos com combustível.', 27),
	(7, 1, 0, 'received', 'Cartão de Crédito', 'Loja: 1x(Água)', 15),
	(8, 6, 0, 'received', 'Cartão de Crédito', 'Loja: 1x(Nintendo)', 975);

-- Copiando estrutura para tabela creawork.organizations
CREATE TABLE IF NOT EXISTS `organizations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `bank` int(20) NOT NULL DEFAULT 0,
  `premium` int(20) NOT NULL DEFAULT 0,
  `buff` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Copiando dados para a tabela creawork.organizations: ~5 rows (aproximadamente)
INSERT INTO `organizations` (`id`, `name`, `bank`, `premium`, `buff`) VALUES
	(1, 'AutoSport', 0, 0, 0),
	(2, 'Paramedic', 0, 1751402734, 1),
	(3, 'BurgerShot', 0, 0, 0),
	(4, 'Police', 0, 0, 0),
	(5, 'advogado', 0, 0, 0);

-- Copiando estrutura para tabela creawork.org_transactions
CREATE TABLE IF NOT EXISTS `org_transactions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `Type` varchar(50) NOT NULL,
  `Value` int(20) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Copiando dados para a tabela creawork.org_transactions: ~0 rows (aproximadamente)

-- Copiando estrutura para tabela creawork.playerdata
CREATE TABLE IF NOT EXISTS `playerdata` (
  `Passport` int(11) NOT NULL,
  `dkey` varchar(100) NOT NULL,
  `dvalue` longtext DEFAULT NULL,
  PRIMARY KEY (`Passport`,`dkey`),
  KEY `Passport` (`Passport`),
  KEY `dkey` (`dkey`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Copiando dados para a tabela creawork.playerdata: ~62 rows (aproximadamente)
INSERT INTO `playerdata` (`Passport`, `dkey`, `dvalue`) VALUES
	(1, 'Ammos', '{"AMMO_9":74}'),
	(1, 'Attachs', '[]'),
	(1, 'Backpack', '{"backpackm":1751406848,"backpackg":1751157868,"backpackp":1751406847}'),
	(1, 'Barbershop', '[0,0,0,10,3,0,-1,-1,-1,39,44,0,0,0,0,0,0,41,0,0.99,0,19,0.99,21,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0.01,0,0]'),
	(1, 'Clothings', '{"decals":{"item":70,"texture":1},"watch":{"item":-1,"texture":0},"mask":{"item":-1,"texture":0},"arms":{"item":199,"texture":0},"hat":{"item":3,"texture":1},"accessory":{"item":195,"texture":0},"1":{"item":202,"texture":2},"glass":{"item":0,"texture":0},"shoes":{"item":96,"texture":0},"tshirt":{"item":215,"texture":0},"vest":{"item":105,"texture":0},"bracelet":{"item":-1,"texture":0},"ear":{"item":-1,"texture":0},"backpack":{"item":0,"texture":0},"pants":{"item":232,"texture":0},"torso":{"item":534,"texture":1}}'),
	(1, 'Creator', '1'),
	(1, 'Datatable', '{"Health":200,"Stress":0,"Inventory":{"10":{"amount":1,"item":"WEAPON_GOLFCLUB-1749414937"},"11":{"amount":1,"item":"cellphone-1749360243"},"14":{"amount":1,"item":"rottweiler"},"1":{"amount":1,"item":"WEAPON_CARBINERIFLE-1748837237-33YL92"},"5":{"amount":1,"item":"identity-1"},"3":{"Name":"Documentos Dmv","Index":"dmvdocs","Coords":{"z":106.09814453125,"y":373.5560607910156,"x":228.5274658203125},"Key":"dmvdocs-1-{\\"1\\":\\"A\\"}-[]-[]","Id":1,"Amount":1,"Route":0,"Timer":1749418388,"Peso":0.25},"2":{"amount":1,"item":"WEAPON_GLOCK22-1748837395-05F5W9"},"15":{"amount":1,"item":"husky"},"4":{"amount":1,"item":"handcuff-1749415429"},"7":{"amount":128,"item":"AMMO_762"},"6":{"amount":1,"item":"rope-1749415409"},"9":{"amount":1,"item":"debitcard-1"},"8":{"amount":1,"item":"platepremium"}},"Thirst":91,"Skin":"mp_m_freemode_01","Weight":75.99000000000031,"Armour":0,"Hunger":91,"Pos":{"z":21.37,"y":-2837.4,"x":-1097.26}}'),
	(1, 'Experience', '{"Fisherman":0,"Lumberman":0,"Transporter":0,"Trucker":0,"Postal":0,"Delivery":0,"Tows":0,"Tractor":0,"Bus":0,"Hunting":0,"Taxi":0,"Minerman":0,"Milkman":0,"Garbageman":0}'),
	(1, 'Gymnasium', '{"1":1749251670}'),
	(1, 'Rolepass', '{"Points":0,"RolepassBuy":true,"Premium":0,"Free":0,"Finish":1751338800.0}'),
	(1, 'Tatuagens', '{"MP_MP_Biker_Tat_052_M":"mpbiker_overlays","MP_Smuggler_Tattoo_020_M":"mpsmuggler_overlays","MP_MP_Biker_Tat_042_M":"mpbiker_overlays","MP_Bea_M_Stom_000":"mpbeach_overlays","MP_MP_Stunt_tat_013_M":"mpstunt_overlays","FM_Tat_M_035":"multiplayer_overlays","MP_MP_Biker_Tat_059_M":"mpbiker_overlays","NGHip_M_Hair_001":"multiplayer_overlays","FM_Tat_M_003":"multiplayer_overlays","MP_Buis_M_Neck_003":"mpbusiness_overlays","MP_MP_Biker_Tat_002_M":"mpbiker_overlays","MP_Xmas2_M_Tat_024":"mpchristmas2_overlays","MP_MP_Biker_Tat_060_M":"mpbiker_overlays","MP_Airraces_Tattoo_007_M":"mpairraces_overlays","FM_Hip_M_Tat_005":"mphipster_overlays","MP_Xmas2_M_Tat_012":"mpchristmas2_overlays","MP_Bea_M_Neck_000":"mpbeach_overlays","MP_LUXE_TAT_028_M":"mpluxe2_overlays","MP_Bea_M_Neck_001":"mpbeach_overlays","FM_Tat_Award_M_015":"multiplayer_overlays","MP_LR_Tat_003_M":"mplowrider2_overlays"}'),
	(2, 'Ammos', '[]'),
	(2, 'Attachs', '[]'),
	(2, 'Backpack', '{"backpackg":1751429843,"backpackp":1751429845}'),
	(2, 'Barbershop', '[0,18,0.17,5,10,0,-1,-1,-1,79,61,61,0,0,0,0,0,0,10,0.55,61,10,0.86,0,0,0,0,-0.25,0.34,0.48,0,0.01,-1,-1,0,0,-0.31,0.2,-0.49,0.23,0.65,0,-0.8,-0.21,0,0]'),
	(2, 'Clothings', '{"backpack":{"texture":0,"item":0},"glass":{"texture":0,"item":40},"mask":{"texture":0,"item":0},"torso":{"texture":0,"item":655},"tshirt":{"texture":0,"item":236},"accessory":{"texture":0,"item":0},"bracelet":{"texture":0,"item":-1},"decals":{"texture":0,"item":0},"watch":{"texture":0,"item":-1},"shoes":{"texture":0,"item":165},"ear":{"texture":0,"item":-1},"hat":{"texture":0,"item":-1},"vest":{"texture":0,"item":0},"arms":{"texture":0,"item":15},"pants":{"texture":0,"item":225}}'),
	(2, 'Creator', '1'),
	(2, 'Datatable', '{"Skin":"mp_m_freemode_01","Weight":41.33,"Pos":{"z":42.09,"x":617.64,"y":2763.37},"Inventory":{"2":{"amount":1,"item":"plasticbottle"},"3":{"amount":1,"item":"water"},"8":{"amount":1,"item":"spoon"},"1":{"amount":1,"item":"identity-2"},"6":{"amount":19827827,"item":"dollars"},"9":{"amount":1,"item":"canopener"},"4":{"amount":1,"item":"cellphone-1748477579"},"5":{"amount":3,"item":"hamburger-1748477579"}},"Thirst":57,"Armour":0,"Hunger":57,"Stress":0,"Health":190}'),
	(2, 'Experience', '{"Fisherman":0,"Tractor":0,"Lumberman":0,"Bus":0,"Postal":0,"Taxi":0,"Milkman":0,"Transporter":0,"Minerman":0,"Trucker":0,"Garbageman":0,"Hunting":0,"Tows":0,"Delivery":0}'),
	(2, 'Gymnasium', '{"1":1749349648}'),
	(3, 'Ammos', '[]'),
	(3, 'Attachs', '[]'),
	(3, 'Backpack', '{"backpackm":1751406812,"backpackg":1751405922,"backpackp":1751406759}'),
	(3, 'Barbershop', '[0,0,0,0,0,0,0,0,0,47,0,0,0,0,0,0,0,0,0,0,0,24,0.99,61,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]'),
	(3, 'Clothings', '{"watch":{"item":-1,"texture":0},"backpack":{"item":0,"texture":0},"arms":{"item":0,"texture":0},"pants":{"item":240,"texture":0},"accessory":{"item":0,"texture":0},"mask":{"item":0,"texture":0},"glass":{"item":0,"texture":0},"hat":{"item":-1,"texture":0},"vest":{"item":0,"texture":0},"torso":{"item":652,"texture":0},"bracelet":{"item":-1,"texture":0},"tshirt":{"item":243,"texture":0},"shoes":{"item":167,"texture":0},"decals":{"item":0,"texture":0},"ear":{"item":-1,"texture":0}}'),
	(3, 'Creator', '1'),
	(3, 'Datatable', '{"Skin":"mp_m_freemode_01","Weight":110,"Health":200,"Inventory":{"8":{"amount":1,"item":"cannedsoup-1748828623"},"18":{"amount":3,"item":"jadeite"},"2":{"amount":1,"item":"identity-3"},"3":{"amount":17,"item":"cigarette"},"1":{"amount":994240,"item":"dollars"},"6":{"amount":3,"item":"sulfuric"},"7":{"amount":1,"item":"cannedsoup-1748828383"},"4":{"amount":1,"item":"cellphone-1748651416"},"5":{"amount":2,"item":"water"}},"Thirst":74,"Armour":0,"Hunger":74,"Pos":{"z":30.48,"x":231.02,"y":-883.63},"Stress":0}'),
	(3, 'Experience', '{"Fisherman":0,"Tractor":0,"Trucker":0,"Bus":0,"Postal":0,"Taxi":0,"Milkman":0,"Transporter":0,"Minerman":25,"Lumberman":0,"Garbageman":0,"Hunting":0,"Tows":0,"Delivery":0}'),
	(3, 'Rolepass', '{"Points":22,"RolepassBuy":false,"Free":0,"Finish":1751338800.0,"Premium":0}'),
	(4, 'Ammos', '[]'),
	(4, 'Attachs', '[]'),
	(4, 'Backpack', '[]'),
	(4, 'Barbershop', '[0,0,0,5,0,0,-1,-1,0,54,61,61,0,0,0,0,0,0,0,0.99,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]'),
	(4, 'Clothings', '{"mask":{"texture":0,"item":0},"pants":{"texture":0,"item":241},"vest":{"texture":0,"item":0},"tshirt":{"texture":0,"item":243},"watch":{"texture":0,"item":-1},"torso":{"texture":0,"item":654},"glass":{"texture":0,"item":52},"decals":{"texture":0,"item":0},"bracelet":{"texture":0,"item":-1},"accessory":{"texture":0,"item":0},"shoes":{"texture":0,"item":87},"hat":{"texture":0,"item":-1},"backpack":{"texture":0,"item":0},"ear":{"texture":0,"item":-1},"arms":{"texture":0,"item":0}}'),
	(4, 'Creator', '1'),
	(4, 'Datatable', '{"Inventory":{"1":{"amount":1,"item":"gift"},"2":{"amount":1,"item":"identity-4"},"3":{"amount":1500,"item":"dollars"},"4":{"amount":2,"item":"water"},"5":{"amount":1,"item":"cellphone-1748750270"},"6":{"amount":3,"item":"hamburger-1748750270"}},"Weight":40,"Skin":"mp_m_freemode_01","Armour":0,"Stress":0,"Hunger":91,"Pos":{"y":-1567.89,"z":4.4,"x":-1209.41},"Health":195,"Thirst":91}'),
	(4, 'Experience', '[]'),
	(5, 'Ammos', '[]'),
	(5, 'Attachs', '[]'),
	(5, 'Backpack', '[]'),
	(5, 'Barbershop', '[0,0,0.14,7,12,0,-1,-1,-1,134,34,35,32,0.43,17,1,0.53,0,1,0.99,34,0,0,0,2,0.46,0,-1,-0.08,-0.59,0.01,-0.11,-0.04,0.27,0,0,-0.28,0.09,0,-0.47,-0.05,-0.53,-0.22,0.35,0,0]'),
	(5, 'Clothings', '{"tshirt":{"item":268,"texture":0},"bracelet":{"item":20,"texture":5},"glass":{"item":0,"texture":0},"hat":{"item":-1,"texture":0},"pants":{"item":182,"texture":7},"decals":{"item":230,"texture":0},"watch":{"item":22,"texture":0},"vest":{"item":0,"texture":0},"mask":{"item":0,"texture":0},"shoes":{"item":177,"texture":12},"ear":{"item":20,"texture":0},"torso":{"item":74,"texture":0},"accessory":{"item":42,"texture":0},"backpack":{"item":0,"texture":0},"arms":{"item":15,"texture":0}}'),
	(5, 'Creator', '1'),
	(5, 'Datatable', '{"Thirst":59,"Health":200,"Pos":{"x":299.82,"z":29.32,"y":-1114.74},"Hunger":59,"Stress":0,"Skin":"mp_f_freemode_01","Armour":0,"Inventory":{"8":{"amount":1,"item":"homekey-334493-118"},"7":{"amount":1,"item":"homekey-466742-118"},"9":{"amount":1,"item":"homekey-944921-121"},"4":{"amount":1,"item":"cellphone-1748808512"},"3":{"amount":1500,"item":"dollars"},"6":{"amount":1,"item":"gift"},"5":{"amount":3,"item":"hamburger-1748808512"},"10":{"amount":1,"item":"hood-1749415370"},"2":{"amount":2,"item":"water"},"1":{"amount":1,"item":"identity-5"}},"Weight":40}'),
	(5, 'Experience', '{"Tows":0,"Tractor":0,"Bus":0,"Trucker":0,"Taxi":0,"Milkman":0,"Delivery":0,"Minerman":0,"Garbageman":0,"Lumberman":0,"Fisherman":0,"Hunting":0,"Transporter":0,"Postal":0}'),
	(6, 'Ammos', '[]'),
	(6, 'Attachs', '[]'),
	(6, 'Backpack', '[]'),
	(6, 'Barbershop', '[0,0,0,6,0,0,0,0,0,39,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]'),
	(6, 'Clothings', '{"backpack":{"item":0,"texture":0},"bracelet":{"item":-1,"texture":0},"decals":{"item":0,"texture":0},"torso":{"item":15,"texture":0},"tshirt":{"item":15,"texture":0},"mask":{"item":0,"texture":0},"watch":{"item":-1,"texture":0},"accessory":{"item":202,"texture":0},"pants":{"item":229,"texture":1},"shoes":{"item":169,"texture":0},"ear":{"item":-1,"texture":0},"hat":{"item":-1,"texture":0},"vest":{"item":0,"texture":0},"arms":{"item":15,"texture":0},"glass":{"item":40,"texture":0}}'),
	(6, 'Creator', '1'),
	(6, 'Datatable', '{"Inventory":{"15":{"amount":6,"item":"AMMO_762"},"2":{"item":"AMMO_762","amount":127},"1":{"item":"WEAPON_AK47-1749088663-1052SW","amount":1},"12":{"item":"cellphone-1749086164","amount":1},"10":{"amount":1,"item":"nintendo"},"8":{"amount":1,"item":"creditcard-6"},"7":{"item":"debitcard-6","amount":1},"13":{"amount":1,"item":"WEAPON_AK47-1749088695-43VQ2Z"},"9":{"amount":1,"item":"receipt-6-1749087192-2000-pagamento"},"4":{"amount":2,"item":"water"},"3":{"amount":1,"item":"identity-6"},"6":{"amount":3,"item":"hamburger-1749086164"},"5":{"amount":1700,"item":"dollars"}},"Weight":40,"Stress":0,"Skin":"mp_m_freemode_01","Thirst":99,"Health":200,"Armour":0,"Pos":{"x":1095.92,"z":67.16,"y":-399.2},"Hunger":99}'),
	(6, 'Experience', '{"Tows":0,"Minerman":0,"Garbageman":0,"Postal":0,"Trucker":0,"Lumberman":0,"Milkman":0,"Transporter":0,"Tractor":0,"Bus":0,"Delivery":0,"Taxi":0,"Hunting":0,"Fisherman":0}'),
	(6, 'Tatuagens', '{"MP_MP_Stunt_tat_045_M":"mpstunt_overlays","MP_MP_Biker_Tat_029_M":"mpbiker_overlays","MP_Airraces_Tattoo_001_M":"mpairraces_overlays","MP_Buis_M_Neck_002":"mpbusiness_overlays","MP_MP_Stunt_tat_021_M":"mpstunt_overlays","MP_Bea_M_Stom_001":"mpbeach_overlays","MP_Gunrunning_Tattoo_030_M":"mpgunrunning_overlays","MP_Airraces_Tattoo_000_M":"mpairraces_overlays","MP_Airraces_Tattoo_003_M":"mpairraces_overlays","MP_Buis_M_Neck_003":"mpbusiness_overlays","MP_Christmas2017_Tattoo_006_M":"mpchristmas2017_overlays","MP_Buis_M_Neck_000":"mpbusiness_overlays","MP_Buis_M_Neck_001":"mpbusiness_overlays"}'),
	(7, 'Ammos', '[]'),
	(7, 'Attachs', '[]'),
	(7, 'Backpack', '[]'),
	(7, 'Barbershop', '[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]'),
	(7, 'Clothings', '{"decals":{"item":0,"texture":0},"glass":{"item":0,"texture":0},"shoes":{"item":0,"texture":0},"mask":{"item":0,"texture":0},"torso":{"item":0,"texture":0},"ear":{"item":-1,"texture":0},"tshirt":{"item":1,"texture":0},"hat":{"item":-1,"texture":0},"watch":{"item":-1,"texture":0},"backpack":{"item":0,"texture":0},"accessory":{"item":0,"texture":0},"arms":{"item":0,"texture":0},"bracelet":{"item":-1,"texture":0},"vest":{"item":0,"texture":0},"pants":{"item":0,"texture":0}}'),
	(7, 'Creator', '1'),
	(7, 'Datatable', '{"Weight":40,"Thirst":98,"Inventory":{"5":{"amount":2,"item":"water"},"6":{"amount":1,"item":"identity-7"},"3":{"amount":1500,"item":"dollars"},"4":{"amount":3,"item":"hamburger-1749268880"},"1":{"amount":1,"item":"cellphone-1749268880"},"2":{"amount":1,"item":"gift"}},"Stress":0,"Hunger":98,"Skin":"mp_f_freemode_01","Pos":{"x":-1095.05,"y":-2835.32,"z":21.37},"Armour":0,"Health":200}'),
	(7, 'Experience', '{"Garbageman":0,"Milkman":0,"Lumberman":0,"Taxi":0,"Bus":0,"Minerman":0,"Transporter":0,"Delivery":0,"Postal":0,"Hunting":0,"Tractor":0,"Trucker":0,"Fisherman":0,"Tows":0}');

-- Copiando estrutura para tabela creawork.port
CREATE TABLE IF NOT EXISTS `port` (
  `portId` int(11) NOT NULL AUTO_INCREMENT,
  `identity` longtext DEFAULT NULL,
  `user_id` text DEFAULT NULL,
  `portType` longtext DEFAULT NULL,
  `serial` longtext DEFAULT NULL,
  `nidentity` longtext DEFAULT NULL,
  `exam` longtext DEFAULT NULL,
  `date` text DEFAULT NULL,
  PRIMARY KEY (`portId`),
  KEY `portId` (`portId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Copiando dados para a tabela creawork.port: ~0 rows (aproximadamente)

-- Copiando estrutura para tabela creawork.prison
CREATE TABLE IF NOT EXISTS `prison` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `police` varchar(255) DEFAULT '0',
  `nuser_id` int(11) NOT NULL DEFAULT 0,
  `services` int(11) NOT NULL DEFAULT 0,
  `fines` int(20) NOT NULL DEFAULT 0,
  `text` longtext DEFAULT NULL,
  `date` text DEFAULT NULL,
  `cops` longtext NOT NULL DEFAULT '0',
  `association` longtext NOT NULL DEFAULT '0',
  `residual` text DEFAULT NULL,
  `url` longtext DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Copiando dados para a tabela creawork.prison: ~5 rows (aproximadamente)
INSERT INTO `prison` (`id`, `police`, `nuser_id`, `services`, `fines`, `text`, `date`, `cops`, `association`, `residual`, `url`) VALUES
	(1, 'juninho lima', 3, 0, 5500, '<p data-criminal="true">ROUBO, o individo sekskeskeksmeekl ksekseksl sjkehskeskekseehna kskeksenmsm,enseiksnesmekms</p><p data-criminal="true">&nbsp;</p><p data-criminal="true">&nbsp;</p><p data-criminal="true">sjeskeklskeksles</p><p data-criminal="true">jsekskes</p><p data-criminal="true">esjkeskkes</p><p data-criminal="true">eskes</p><p data-criminal="true">eisk</p><p data-criminal="true">eskje</p><p data-criminal="true">sejks</p><p data-criminal="true">ejse</p><p data-criminal="true">s</p>', '01/06/2025 ás 21:11', '', '', 'Não', 'https://discord.com/channels/746240490638278726/882265730668703774/887490644061323296'),
	(2, 'juninho lima', 3, 0, 5500, '<p data-criminal="true">ROUBO, o individo sekskeskeksmeekl ksekseksl sjkehskeskekseehna kskeksenmsm,enseiksnesmekms</p><p data-criminal="true">&nbsp;</p><p data-criminal="true">&nbsp;</p><p data-criminal="true">sjeskeklskeksles</p><p data-criminal="true">jsekskes</p><p data-criminal="true">esjkeskkes</p><p data-criminal="true">eskes</p><p data-criminal="true">eisk</p><p data-criminal="true">eskje</p><p data-criminal="true">sejks</p><p data-criminal="true">ejse</p><p data-criminal="true">s</p>', '01/06/2025 ás 21:11', '', '', 'Não', 'https://discord.com/channels/746240490638278726/882265730668703774/887490644061323296'),
	(3, 'juninho lima', 3, 1, 1500, '<p data-criminal="true">TRÁFICO DE DROGAS, jkeshjejsnmeskekskesjensee</p><p data-criminal="true">sesjejsejhsleskesjeujsjesjejsejse</p><p data-criminal="true">sejsjesjejse</p><p data-criminal="true">sekskeksekskes</p><p data-criminal="true">eksekskeske</p><p data-criminal="true">se</p><p data-criminal="true">skeskekskeskejsgeeneeiejekmelle</p>', '01/06/2025 ás 21:43', '3', '', 'Não', 'https://discord.com/channels/746240490638278726/747607232593526894'),
	(4, 'juninho lima', 3, 70, 20000, '<p data-criminal="true">TRÁFICO DE DROGAS, jkeshjejsnmeskekskesjensee</p><p data-criminal="true">sesjejsejhsleskesjeujsjesjejsejse</p><p data-criminal="true">sejsjesjejse</p><p data-criminal="true">sekskeksekskes</p><p data-criminal="true">eksekskeske</p><p data-criminal="true">se</p><p data-criminal="true">skeskekskeskejsgeeneeiejekmelle</p>', '01/06/2025 ás 21:44', '', '', 'Não', 'https://discord.com/channels/746240490638278726/747607232593526894'),
	(5, 'juninho lima', 3, 30, 20000, '<p>aasssa</p>', '01/06/2025 ás 22:30', '', '', 'Não', 'advogad'),
	(6, 'juninho lima', 3, 4, 20000, '<p>skenskjehgshegshjkbegshjkbeses</p>', '08/06/2025 ás 19:57', '', '', 'Não', 'snhbehjksgebseskksnme'),
	(7, 'juninho lima', 3, 4, 20000, '<p>skenskjehgshegshjkbegshjkbeses</p>', '08/06/2025 ás 19:58', '', '', 'Não', 'sesesesees'),
	(8, 'juninho lima', 1, 5, 20000, '<p>skenskjehgshegshjkbegshjkbeses</p>', '08/06/2025 ás 19:59', '', '', 'Não', '272872gbhvshvhes');

-- Copiando estrutura para tabela creawork.propertys
CREATE TABLE IF NOT EXISTS `propertys` (
  `Number` int(20) NOT NULL,
  `Passport` int(11) NOT NULL DEFAULT 0,
  `Interior` int(11) NOT NULL DEFAULT 0,
  `Keychain` int(11) NOT NULL DEFAULT 0,
  `Tax` int(20) NOT NULL DEFAULT 0,
  PRIMARY KEY (`Number`) USING BTREE,
  KEY `Passport` (`Passport`),
  KEY `id` (`Number`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Copiando dados para a tabela creawork.propertys: ~4 rows (aproximadamente)
INSERT INTO `propertys` (`Number`, `Passport`, `Interior`, `Keychain`, `Tax`) VALUES
	(118, 1, 3, 334493, 1752003088),
	(119, 1, 1, 7748, 1752004634),
	(121, 1, 3, 944921, 1752004934),
	(395, 1, 1, 841891, 1752006050);

-- Copiando estrutura para tabela creawork.races
CREATE TABLE IF NOT EXISTS `races` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Race` int(3) NOT NULL DEFAULT 0,
  `Passport` int(5) NOT NULL DEFAULT 0,
  `Name` varchar(100) NOT NULL DEFAULT 'Individuo Indigente',
  `Vehicle` varchar(50) NOT NULL DEFAULT 'Sultan RS',
  `Points` int(20) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `Passport` (`Passport`),
  KEY `Race` (`Race`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Copiando dados para a tabela creawork.races: ~0 rows (aproximadamente)

-- Copiando estrutura para tabela creawork.reports
CREATE TABLE IF NOT EXISTS `reports` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `victim_id` text DEFAULT NULL,
  `police_name` text DEFAULT NULL,
  `solved` text DEFAULT NULL,
  `victim_name` text DEFAULT NULL,
  `created_at` text DEFAULT NULL,
  `victim_report` text DEFAULT NULL,
  `updated_at` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `portId` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Copiando dados para a tabela creawork.reports: ~0 rows (aproximadamente)

-- Copiando estrutura para tabela creawork.smartphone_bank_invoices
CREATE TABLE IF NOT EXISTS `smartphone_bank_invoices` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `payee_id` int(11) NOT NULL,
  `payer_id` int(11) NOT NULL,
  `reason` varchar(255) NOT NULL DEFAULT '',
  `value` int(11) NOT NULL,
  `paid` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Copiando dados para a tabela creawork.smartphone_bank_invoices: ~0 rows (aproximadamente)

-- Copiando estrutura para tabela creawork.smartphone_blocks
CREATE TABLE IF NOT EXISTS `smartphone_blocks` (
  `user_id` int(11) NOT NULL,
  `phone` varchar(32) NOT NULL,
  PRIMARY KEY (`user_id`,`phone`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Copiando dados para a tabela creawork.smartphone_blocks: ~0 rows (aproximadamente)

-- Copiando estrutura para tabela creawork.smartphone_calls
CREATE TABLE IF NOT EXISTS `smartphone_calls` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `initiator` varchar(50) NOT NULL,
  `target` varchar(50) NOT NULL,
  `duration` int(11) NOT NULL DEFAULT 0,
  `status` varchar(255) NOT NULL,
  `video` tinyint(4) NOT NULL DEFAULT 0,
  `anonymous` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `initiator_index` (`initiator`),
  KEY `target_index` (`target`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Copiando dados para a tabela creawork.smartphone_calls: ~3 rows (aproximadamente)
INSERT INTO `smartphone_calls` (`id`, `initiator`, `target`, `duration`, `status`, `video`, `anonymous`, `created_at`) VALUES
	(1, '777-666', '114-763', 21, 'ok', 1, 0, 1748651699),
	(2, '777-666', '114-763', 0, 'unanswered', 0, 0, 1748651723),
	(3, '777-666', '114-763', 10, 'ok', 1, 0, 1748651725);

-- Copiando estrutura para tabela creawork.smartphone_casino
CREATE TABLE IF NOT EXISTS `smartphone_casino` (
  `user_id` int(11) NOT NULL,
  `balance` bigint(20) NOT NULL DEFAULT 0,
  `double` bigint(20) NOT NULL DEFAULT 0,
  `crash` bigint(20) NOT NULL DEFAULT 0,
  `mine` bigint(20) NOT NULL DEFAULT 0,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Copiando dados para a tabela creawork.smartphone_casino: ~0 rows (aproximadamente)
INSERT INTO `smartphone_casino` (`user_id`, `balance`, `double`, `crash`, `mine`) VALUES
	(1, 9987951, 7000, -10849, -8200);

-- Copiando estrutura para tabela creawork.smartphone_contacts
CREATE TABLE IF NOT EXISTS `smartphone_contacts` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `owner` varchar(50) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `owner_index` (`owner`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Copiando dados para a tabela creawork.smartphone_contacts: ~0 rows (aproximadamente)
INSERT INTO `smartphone_contacts` (`id`, `owner`, `phone`, `name`) VALUES
	(1, '777-666', '114-763', 'alex');

-- Copiando estrutura para tabela creawork.smartphone_gallery
CREATE TABLE IF NOT EXISTS `smartphone_gallery` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `folder` varchar(255) NOT NULL DEFAULT '/',
  `url` varchar(255) NOT NULL,
  `created_at` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Copiando dados para a tabela creawork.smartphone_gallery: ~4 rows (aproximadamente)
INSERT INTO `smartphone_gallery` (`id`, `user_id`, `folder`, `url`, `created_at`) VALUES
	(1, 1, '/instagram', 'http://181.215.45.148/jester/images/1748576396.jpg', 1748565596),
	(2, 1, '/instagram', 'http://181.215.45.148/jester/images/1748576485.jpg', 1748565685),
	(3, 1, '/instagram', 'http://181.215.45.148/jester/images/1748656503.jpg', 1748645702),
	(4, 1, '/whatsapp', 'http://181.215.45.148/jester/images/1748662249.jpg', 1748651448),
	(5, 1, '/twitter', 'http://181.215.45.148/jester/images/1748662598.jpg', 1748651797),
	(6, 1, '/instagram', 'http://181.215.45.148/jester/images/1748761188.jpg', 1748750387),
	(7, 1, '/instagram', 'http://181.215.45.148/jester/images/1748809626.jpg', 1748798825),
	(8, 1, '/tinder', 'http://181.215.45.148/jester/images/1749421048.jpg', 1749410248);

-- Copiando estrutura para tabela creawork.smartphone_ifood_orders
CREATE TABLE IF NOT EXISTS `smartphone_ifood_orders` (
  `id` varchar(10) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `worker_id` int(11) DEFAULT NULL,
  `store_id` int(11) DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  `fee` int(11) DEFAULT NULL,
  `rate` tinyint(4) DEFAULT 0,
  `created_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Copiando dados para a tabela creawork.smartphone_ifood_orders: ~0 rows (aproximadamente)

-- Copiando estrutura para tabela creawork.smartphone_instagram
CREATE TABLE IF NOT EXISTS `smartphone_instagram` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `username` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `bio` varchar(255) NOT NULL,
  `avatarURL` varchar(255) DEFAULT NULL,
  `verified` tinyint(4) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Copiando dados para a tabela creawork.smartphone_instagram: ~0 rows (aproximadamente)
INSERT INTO `smartphone_instagram` (`id`, `user_id`, `username`, `name`, `bio`, `avatarURL`, `verified`) VALUES
	(1, 1, 'jkshesh', 'juininh', 'sgegses', 'http://181.215.45.148/jester/images/1748576396.jpg', 0);

-- Copiando estrutura para tabela creawork.smartphone_instagram_followers
CREATE TABLE IF NOT EXISTS `smartphone_instagram_followers` (
  `follower_id` bigint(20) NOT NULL,
  `profile_id` bigint(20) NOT NULL,
  PRIMARY KEY (`follower_id`,`profile_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Copiando dados para a tabela creawork.smartphone_instagram_followers: ~0 rows (aproximadamente)

-- Copiando estrutura para tabela creawork.smartphone_instagram_likes
CREATE TABLE IF NOT EXISTS `smartphone_instagram_likes` (
  `post_id` bigint(20) NOT NULL,
  `profile_id` bigint(20) NOT NULL,
  PRIMARY KEY (`post_id`,`profile_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Copiando dados para a tabela creawork.smartphone_instagram_likes: ~0 rows (aproximadamente)

-- Copiando estrutura para tabela creawork.smartphone_instagram_notifications
CREATE TABLE IF NOT EXISTS `smartphone_instagram_notifications` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `profile_id` int(11) NOT NULL,
  `author_id` int(11) NOT NULL,
  `content` varchar(512) NOT NULL,
  `saw` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `profile_id_index` (`profile_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Copiando dados para a tabela creawork.smartphone_instagram_notifications: ~0 rows (aproximadamente)

-- Copiando estrutura para tabela creawork.smartphone_instagram_posts
CREATE TABLE IF NOT EXISTS `smartphone_instagram_posts` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `profile_id` bigint(20) NOT NULL,
  `post_id` bigint(20) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `created_at` bigint(20) NOT NULL,
  `comments` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `profile_id_index` (`profile_id`),
  KEY `post_id_index` (`post_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Copiando dados para a tabela creawork.smartphone_instagram_posts: ~0 rows (aproximadamente)
INSERT INTO `smartphone_instagram_posts` (`id`, `profile_id`, `post_id`, `image`, `content`, `created_at`, `comments`) VALUES
	(1, 1, NULL, 'http://181.215.45.148/jester/images/1748576485.jpg', '', 1748565686, 0),
	(2, 1, NULL, 'http://181.215.45.148/jester/images/1748656503.jpg', '', 1748645704, 0),
	(3, 1, NULL, 'http://181.215.45.148/jester/images/1748809626.jpg', 'fodac', 1748798828, 0);

-- Copiando estrutura para tabela creawork.smartphone_olx
CREATE TABLE IF NOT EXISTS `smartphone_olx` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  `description` varchar(1024) NOT NULL,
  `images` varchar(1024) NOT NULL,
  `created_at` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Copiando dados para a tabela creawork.smartphone_olx: ~0 rows (aproximadamente)

-- Copiando estrutura para tabela creawork.smartphone_paypal_transactions
CREATE TABLE IF NOT EXISTS `smartphone_paypal_transactions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL,
  `target` bigint(20) NOT NULL,
  `type` varchar(255) NOT NULL DEFAULT 'payment',
  `description` varchar(255) DEFAULT NULL,
  `value` bigint(20) NOT NULL,
  `created_at` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id_index` (`user_id`),
  KEY `target_index` (`target`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Copiando dados para a tabela creawork.smartphone_paypal_transactions: ~4 rows (aproximadamente)
INSERT INTO `smartphone_paypal_transactions` (`id`, `user_id`, `target`, `type`, `description`, `value`, `created_at`) VALUES
	(15, 1, 1, 'deposit', NULL, 6666, 1749409346),
	(16, 1, 1, 'deposit', NULL, 10000, 1749409717),
	(17, 1, 1, 'deposit', NULL, 10000, 1749409869),
	(18, 1, 1, 'deposit', NULL, 1000, 1749409944),
	(19, 1, 1, 'deposit', NULL, 2000, 1749410151);

-- Copiando estrutura para tabela creawork.smartphone_tinder
CREATE TABLE IF NOT EXISTS `smartphone_tinder` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `bio` varchar(1024) NOT NULL,
  `age` tinyint(4) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `show_gender` tinyint(4) NOT NULL,
  `tags` varchar(255) NOT NULL,
  `show_tags` tinyint(4) NOT NULL,
  `target` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id_index` (`user_id`),
  KEY `gender_index` (`gender`),
  KEY `target_index` (`target`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Copiando dados para a tabela creawork.smartphone_tinder: ~0 rows (aproximadamente)
INSERT INTO `smartphone_tinder` (`id`, `user_id`, `name`, `image`, `bio`, `age`, `gender`, `show_gender`, `tags`, `show_tags`, `target`) VALUES
	(1, 1, 'jnn ss', 'http://181.215.45.148/jester/images/1749421048.jpg', 'eursrsrs ', 25, 'Male', 1, '["Heterossexual"]', 1, 'Female');

-- Copiando estrutura para tabela creawork.smartphone_tinder_messages
CREATE TABLE IF NOT EXISTS `smartphone_tinder_messages` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `sender` int(11) NOT NULL,
  `target` int(11) NOT NULL,
  `content` varchar(255) NOT NULL,
  `liked` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sender_index` (`sender`),
  KEY `target_index` (`target`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Copiando dados para a tabela creawork.smartphone_tinder_messages: ~0 rows (aproximadamente)

-- Copiando estrutura para tabela creawork.smartphone_tinder_rating
CREATE TABLE IF NOT EXISTS `smartphone_tinder_rating` (
  `profile_id` int(11) NOT NULL,
  `rated_id` int(11) NOT NULL,
  `rating` tinyint(4) NOT NULL DEFAULT 0,
  PRIMARY KEY (`profile_id`,`rated_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Copiando dados para a tabela creawork.smartphone_tinder_rating: ~0 rows (aproximadamente)

-- Copiando estrutura para tabela creawork.smartphone_tor_messages
CREATE TABLE IF NOT EXISTS `smartphone_tor_messages` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `channel` varchar(24) NOT NULL DEFAULT 'geral',
  `sender` varchar(50) NOT NULL,
  `image` varchar(512) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `content` varchar(500) DEFAULT NULL,
  `created_at` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `channel_index` (`channel`),
  KEY `sender_index` (`sender`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Copiando dados para a tabela creawork.smartphone_tor_messages: ~0 rows (aproximadamente)
INSERT INTO `smartphone_tor_messages` (`id`, `channel`, `sender`, `image`, `location`, `content`, `created_at`) VALUES
	(1, 'dm:3-6b80c9', '7045321', NULL, NULL, 'gay', 1748651764);

-- Copiando estrutura para tabela creawork.smartphone_tor_payments
CREATE TABLE IF NOT EXISTS `smartphone_tor_payments` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `sender` bigint(20) NOT NULL,
  `target` bigint(20) NOT NULL,
  `amount` int(11) NOT NULL,
  `created_at` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sender_index` (`sender`),
  KEY `target_index` (`target`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Copiando dados para a tabela creawork.smartphone_tor_payments: ~0 rows (aproximadamente)

-- Copiando estrutura para tabela creawork.smartphone_twitter_followers
CREATE TABLE IF NOT EXISTS `smartphone_twitter_followers` (
  `follower_id` bigint(20) NOT NULL,
  `profile_id` bigint(20) NOT NULL,
  KEY `profile_id_index` (`profile_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Copiando dados para a tabela creawork.smartphone_twitter_followers: ~0 rows (aproximadamente)

-- Copiando estrutura para tabela creawork.smartphone_twitter_likes
CREATE TABLE IF NOT EXISTS `smartphone_twitter_likes` (
  `tweet_id` bigint(20) NOT NULL,
  `profile_id` bigint(20) NOT NULL,
  KEY `tweet_id_index` (`tweet_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Copiando dados para a tabela creawork.smartphone_twitter_likes: ~0 rows (aproximadamente)

-- Copiando estrutura para tabela creawork.smartphone_twitter_profiles
CREATE TABLE IF NOT EXISTS `smartphone_twitter_profiles` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `avatarURL` varchar(255) NOT NULL,
  `bannerURL` varchar(255) NOT NULL,
  `bio` varchar(255) DEFAULT NULL,
  `verified` tinyint(4) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Copiando dados para a tabela creawork.smartphone_twitter_profiles: ~0 rows (aproximadamente)
INSERT INTO `smartphone_twitter_profiles` (`id`, `user_id`, `name`, `username`, `avatarURL`, `bannerURL`, `bio`, `verified`) VALUES
	(1, 1, 'eu', 'eye', 'http://181.215.45.148/jester/images/1748662598.jpg', 'http://localhost/smartphone/smartphone/cccccc.png', 'ye', 0);

-- Copiando estrutura para tabela creawork.smartphone_twitter_tweets
CREATE TABLE IF NOT EXISTS `smartphone_twitter_tweets` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `profile_id` int(11) NOT NULL,
  `tweet_id` bigint(20) DEFAULT NULL,
  `content` varchar(280) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `profile_id_index` (`profile_id`),
  KEY `tweet_id_index` (`tweet_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Copiando dados para a tabela creawork.smartphone_twitter_tweets: ~0 rows (aproximadamente)
INSERT INTO `smartphone_twitter_tweets` (`id`, `profile_id`, `tweet_id`, `content`, `image`, `created_at`) VALUES
	(1, 1, NULL, 'ola', NULL, 1748651821);

-- Copiando estrutura para tabela creawork.smartphone_uber_trips
CREATE TABLE IF NOT EXISTS `smartphone_uber_trips` (
  `id` varchar(10) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `driver_id` int(11) DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  `from` varchar(255) DEFAULT NULL,
  `to` varchar(255) DEFAULT NULL,
  `user_rate` tinyint(4) DEFAULT 0,
  `driver_rate` tinyint(4) DEFAULT 0,
  `created_at` int(11) DEFAULT NULL,
  `finished_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Copiando dados para a tabela creawork.smartphone_uber_trips: ~0 rows (aproximadamente)

-- Copiando estrutura para tabela creawork.smartphone_weazel
CREATE TABLE IF NOT EXISTS `smartphone_weazel` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `author` varchar(255) NOT NULL,
  `tag` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(4096) NOT NULL,
  `imageURL` varchar(255) DEFAULT NULL,
  `videoURL` varchar(255) DEFAULT NULL,
  `views` int(11) NOT NULL DEFAULT 0,
  `created_at` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Copiando dados para a tabela creawork.smartphone_weazel: ~0 rows (aproximadamente)

-- Copiando estrutura para tabela creawork.smartphone_whatsapp
CREATE TABLE IF NOT EXISTS `smartphone_whatsapp` (
  `owner` varchar(32) NOT NULL,
  `avatarURL` varchar(255) DEFAULT NULL,
  `read_receipts` tinyint(4) NOT NULL DEFAULT 1,
  PRIMARY KEY (`owner`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Copiando dados para a tabela creawork.smartphone_whatsapp: ~0 rows (aproximadamente)
INSERT INTO `smartphone_whatsapp` (`owner`, `avatarURL`, `read_receipts`) VALUES
	('777-666', 'http://181.215.45.148/jester/images/1748662249.jpg', 1);

-- Copiando estrutura para tabela creawork.smartphone_whatsapp_channels
CREATE TABLE IF NOT EXISTS `smartphone_whatsapp_channels` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `sender` varchar(50) NOT NULL,
  `target` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sender_index` (`sender`),
  KEY `target_index` (`target`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Copiando dados para a tabela creawork.smartphone_whatsapp_channels: ~0 rows (aproximadamente)
INSERT INTO `smartphone_whatsapp_channels` (`id`, `sender`, `target`) VALUES
	(1, '777-666', '114-763');

-- Copiando estrutura para tabela creawork.smartphone_whatsapp_groups
CREATE TABLE IF NOT EXISTS `smartphone_whatsapp_groups` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `avatarURL` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `members` varchar(2048) NOT NULL,
  `created_at` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Copiando dados para a tabela creawork.smartphone_whatsapp_groups: ~0 rows (aproximadamente)

-- Copiando estrutura para tabela creawork.smartphone_whatsapp_messages
CREATE TABLE IF NOT EXISTS `smartphone_whatsapp_messages` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `channel_id` bigint(20) unsigned NOT NULL,
  `sender` varchar(50) NOT NULL,
  `image` varchar(512) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `content` varchar(500) DEFAULT NULL,
  `deleted_by` varchar(255) DEFAULT NULL,
  `readed` tinyint(4) NOT NULL DEFAULT 0,
  `saw_at` bigint(20) NOT NULL DEFAULT 0,
  `created_at` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sender_index` (`sender`),
  KEY `channel_id_index` (`channel_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Copiando dados para a tabela creawork.smartphone_whatsapp_messages: ~0 rows (aproximadamente)

-- Copiando estrutura para tabela creawork.taxs
CREATE TABLE IF NOT EXISTS `taxs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Passport` int(10) NOT NULL DEFAULT 0,
  `Name` varchar(50) NOT NULL,
  `Date` varchar(50) NOT NULL,
  `Hour` varchar(50) NOT NULL,
  `Value` int(11) NOT NULL,
  `Message` longtext DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `Passport` (`Passport`),
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Copiando dados para a tabela creawork.taxs: ~0 rows (aproximadamente)
INSERT INTO `taxs` (`id`, `Passport`, `Name`, `Date`, `Hour`, `Value`, `Message`) VALUES
	(1, 1, 'Posto de Gasolina', '01/06/2025', '00:41', 28, 'Gastos com combustível.'),
	(2, 1, 'Posto de Gasolina', '01/06/2025', '14:19', 11, 'Gastos com combustível.');

-- Copiando estrutura para tabela creawork.transactions
CREATE TABLE IF NOT EXISTS `transactions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Passport` int(10) NOT NULL DEFAULT 0,
  `Type` varchar(50) NOT NULL,
  `Date` varchar(50) NOT NULL,
  `Value` int(11) NOT NULL,
  `Balance` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `Passport` (`Passport`),
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=407 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Copiando dados para a tabela creawork.transactions: ~361 rows (aproximadamente)
INSERT INTO `transactions` (`id`, `Passport`, `Type`, `Date`, `Value`, `Balance`) VALUES
	(1, 1, 'entry', '28/05/2025', 5000, 0),
	(2, 2, 'entry', '28/05/2025', 5000, 0),
	(3, 1, 'entry', '28/05/2025', 2000000, 5000),
	(4, 1, 'entry', '28/05/2025', 984000, 2005000),
	(5, 2, 'entry', '28/05/2025', 1000000, 5000),
	(6, 1, 'exit', '28/05/2025', 1000000, 2989000),
	(7, 1, 'exit', '28/05/2025', 100000, 1989000),
	(8, 1, 'entry', '28/05/2025', 100000000, 1889000),
	(9, 1, 'exit', '29/05/2025', 100000, 101889000),
	(10, 1, 'entry', '29/05/2025', 100000, 101789000),
	(11, 1, 'exit', '29/05/2025', 10000000, 101889000),
	(12, 1, 'exit', '29/05/2025', 20000, 91889000),
	(13, 1, 'exit', '29/05/2025', 25000, 91869000),
	(14, 1, 'exit', '29/05/2025', 120000, 91844000),
	(15, 1, 'exit', '29/05/2025', 7250, 91724000),
	(16, 1, 'exit', '29/05/2025', 1250, 91716750),
	(17, 1, 'exit', '29/05/2025', 1250, 91715500),
	(18, 1, 'exit', '29/05/2025', 1250, 91714250),
	(19, 1, 'exit', '29/05/2025', 775, 91713000),
	(20, 1, 'exit', '29/05/2025', 775, 91712225),
	(21, 1, 'exit', '29/05/2025', 1000, 91711450),
	(22, 1, 'exit', '29/05/2025', 2000, 91710450),
	(23, 1, 'exit', '30/05/2025', 4750, 91708450),
	(24, 1, 'exit', '30/05/2025', 150, 91703700),
	(25, 1, 'exit', '30/05/2025', 175, 91703550),
	(26, 1, 'exit', '30/05/2025', 2000, 91703375),
	(27, 1, 'exit', '30/05/2025', 5000, 91701375),
	(28, 1, 'entry', '30/05/2025', 3500, 91696375),
	(29, 1, 'entry', '30/05/2025', 1100, 91699875),
	(30, 3, 'entry', '30/05/2025', 5000, 0),
	(31, 1, 'exit', '30/05/2025', 1292992, 91700975),
	(32, 1, 'exit', '30/05/2025', 20000, 90407983),
	(33, 1, 'exit', '30/05/2025', 299999, 90387983),
	(34, 1, 'exit', '30/05/2025', 29999, 90087984),
	(35, 1, 'exit', '30/05/2025', 2999, 90057985),
	(36, 1, 'exit', '30/05/2025', 22827289, 90054986),
	(37, 1, 'entry', '30/05/2025', 3500, 67227697),
	(38, 1, 'entry', '30/05/2025', 1100, 67231197),
	(39, 1, 'exit', '30/05/2025', 20000, 67232297),
	(40, 1, 'entry', '31/05/2025', 3500, 67212297),
	(41, 1, 'entry', '31/05/2025', 1100, 67215797),
	(42, 1, 'exit', '31/05/2025', 30, 67216897),
	(43, 1, 'exit', '31/05/2025', 165, 67216867),
	(44, 1, 'exit', '31/05/2025', 135, 67216702),
	(45, 1, 'exit', '31/05/2025', 25, 67216567),
	(46, 1, 'entry', '31/05/2025', 3500, 67216542),
	(47, 1, 'entry', '31/05/2025', 1100, 67220042),
	(48, 1, 'entry', '01/06/2025', 3500, 67221142),
	(49, 1, 'entry', '01/06/2025', 1100, 67224642),
	(50, 1, 'exit', '01/06/2025', 975, 67225742),
	(51, 1, 'entry', '01/06/2025', 3500, 67224767),
	(52, 1, 'entry', '01/06/2025', 1100, 67228267),
	(53, 4, 'entry', '01/06/2025', 5000, 0),
	(54, 1, 'entry', '01/06/2025', 3500, 67229367),
	(55, 1, 'entry', '01/06/2025', 1100, 67232867),
	(56, 1, 'entry', '01/06/2025', 3500, 67233967),
	(57, 1, 'entry', '01/06/2025', 1100, 67237467),
	(58, 1, 'entry', '01/06/2025', 3500, 67238567),
	(59, 1, 'entry', '01/06/2025', 1100, 67242067),
	(60, 1, 'entry', '01/06/2025', 3500, 67243167),
	(61, 1, 'entry', '01/06/2025', 1100, 67246667),
	(62, 1, 'entry', '01/06/2025', 3500, 67247767),
	(63, 1, 'entry', '01/06/2025', 1100, 67251267),
	(64, 1, 'entry', '01/06/2025', 3500, 67252367),
	(65, 1, 'entry', '01/06/2025', 1100, 67255867),
	(66, 1, 'entry', '01/06/2025', 3500, 67256967),
	(67, 1, 'entry', '01/06/2025', 1100, 67260467),
	(68, 1, 'entry', '01/06/2025', 3500, 67261567),
	(69, 1, 'entry', '01/06/2025', 1100, 67265067),
	(70, 1, 'entry', '01/06/2025', 3500, 67266167),
	(71, 1, 'entry', '01/06/2025', 1100, 67269667),
	(72, 1, 'entry', '01/06/2025', 3500, 67270767),
	(73, 1, 'entry', '01/06/2025', 1100, 67274267),
	(74, 1, 'entry', '01/06/2025', 3500, 67275367),
	(75, 1, 'entry', '01/06/2025', 1100, 67278867),
	(76, 1, 'entry', '01/06/2025', 3500, 67279967),
	(77, 1, 'entry', '01/06/2025', 1100, 67283467),
	(78, 1, 'entry', '01/06/2025', 3500, 67284567),
	(79, 1, 'entry', '01/06/2025', 1100, 67288067),
	(80, 1, 'entry', '01/06/2025', 3500, 67289167),
	(81, 1, 'entry', '01/06/2025', 1100, 67292667),
	(82, 1, 'entry', '01/06/2025', 3500, 67293767),
	(83, 1, 'entry', '01/06/2025', 1100, 67297267),
	(84, 1, 'entry', '01/06/2025', 3500, 67298367),
	(85, 1, 'entry', '01/06/2025', 1100, 67301867),
	(86, 1, 'entry', '01/06/2025', 3500, 67302967),
	(87, 1, 'entry', '01/06/2025', 1100, 67306467),
	(88, 1, 'entry', '01/06/2025', 3500, 67307567),
	(89, 1, 'entry', '01/06/2025', 1100, 67311067),
	(90, 1, 'entry', '01/06/2025', 3500, 67312167),
	(91, 1, 'entry', '01/06/2025', 1100, 67315667),
	(92, 1, 'entry', '01/06/2025', 3500, 67316767),
	(93, 1, 'entry', '01/06/2025', 1100, 67320267),
	(94, 1, 'exit', '01/06/2025', 30, 67321367),
	(95, 1, 'exit', '01/06/2025', 135, 67321337),
	(96, 1, 'exit', '01/06/2025', 165, 67321202),
	(97, 1, 'exit', '01/06/2025', 30, 67321037),
	(98, 1, 'exit', '01/06/2025', 150, 67321007),
	(99, 1, 'exit', '01/06/2025', 20, 67320857),
	(100, 1, 'exit', '01/06/2025', 20, 67320837),
	(101, 1, 'exit', '01/06/2025', 20, 67320817),
	(102, 1, 'exit', '01/06/2025', 11, 67320797),
	(103, 1, 'exit', '01/06/2025', 2000, 67320786),
	(104, 1, 'exit', '01/06/2025', 125, 67318786),
	(105, 1, 'entry', '01/06/2025', 3500, 67318661),
	(106, 1, 'entry', '01/06/2025', 1100, 67322161),
	(107, 5, 'entry', '01/06/2025', 5000, 0),
	(108, 1, 'exit', '01/06/2025', 1000, 67323261),
	(109, 1, 'entry', '01/06/2025', 3500, 67322261),
	(110, 1, 'entry', '01/06/2025', 1100, 67325761),
	(111, 1, 'exit', '01/06/2025', 5000, 67326861),
	(112, 1, 'exit', '01/06/2025', 1000, 67321861),
	(113, 1, 'exit', '01/06/2025', 1000, 67320861),
	(114, 1, 'entry', '01/06/2025', 2000, 67319861),
	(115, 1, 'exit', '01/06/2025', 1000, 67321861),
	(116, 1, 'entry', '01/06/2025', 2000, 67320861),
	(117, 1, 'exit', '01/06/2025', 1000, 67322861),
	(118, 1, 'entry', '01/06/2025', 2000, 67321861),
	(119, 1, 'exit', '01/06/2025', 1000, 67323861),
	(120, 1, 'entry', '01/06/2025', 2000, 67322861),
	(121, 1, 'exit', '01/06/2025', 1000, 67324861),
	(122, 1, 'entry', '01/06/2025', 2000, 67323861),
	(123, 1, 'exit', '01/06/2025', 1000, 67325861),
	(124, 1, 'entry', '01/06/2025', 12000, 67324861),
	(125, 1, 'exit', '01/06/2025', 1000, 67336861),
	(126, 1, 'exit', '01/06/2025', 1000, 67335861),
	(127, 1, 'exit', '01/06/2025', 1000, 67334861),
	(128, 1, 'entry', '01/06/2025', 2000, 67333861),
	(129, 1, 'exit', '01/06/2025', 1000, 67335861),
	(130, 1, 'exit', '01/06/2025', 1000, 67334861),
	(131, 1, 'entry', '01/06/2025', 2000, 67333861),
	(132, 1, 'exit', '01/06/2025', 1000, 67335861),
	(133, 1, 'entry', '01/06/2025', 2000, 67334861),
	(134, 1, 'exit', '01/06/2025', 1000, 67336861),
	(135, 1, 'entry', '01/06/2025', 2000, 67335861),
	(136, 1, 'exit', '01/06/2025', 1000, 67337861),
	(137, 1, 'exit', '01/06/2025', 1000, 67336861),
	(138, 1, 'entry', '01/06/2025', 2000, 67335861),
	(139, 1, 'exit', '01/06/2025', 1000, 67337861),
	(140, 1, 'entry', '01/06/2025', 10000, 67336861),
	(141, 1, 'exit', '01/06/2025', 500, 67346861),
	(142, 1, 'exit', '01/06/2025', 500, 67346361),
	(143, 1, 'exit', '01/06/2025', 500, 67345861),
	(144, 1, 'entry', '01/06/2025', 1000, 67345361),
	(145, 1, 'exit', '01/06/2025', 500, 67346361),
	(146, 1, 'exit', '01/06/2025', 500, 67345861),
	(147, 1, 'entry', '01/06/2025', 1000, 67345361),
	(148, 1, 'exit', '01/06/2025', 500, 67346361),
	(149, 1, 'entry', '01/06/2025', 1000, 67345861),
	(150, 1, 'exit', '01/06/2025', 500, 67346861),
	(151, 1, 'entry', '01/06/2025', 1000, 67346361),
	(152, 1, 'exit', '01/06/2025', 500, 67347361),
	(153, 1, 'entry', '01/06/2025', 1000, 67346861),
	(154, 1, 'exit', '01/06/2025', 500, 67347861),
	(155, 1, 'exit', '01/06/2025', 500, 67347361),
	(156, 1, 'entry', '01/06/2025', 1000, 67346861),
	(157, 1, 'exit', '01/06/2025', 500, 67347861),
	(158, 1, 'exit', '01/06/2025', 500, 67347361),
	(159, 1, 'exit', '01/06/2025', 500, 67346861),
	(160, 1, 'exit', '01/06/2025', 500, 67346361),
	(161, 1, 'entry', '01/06/2025', 1000, 67345861),
	(162, 1, 'exit', '01/06/2025', 250, 67346861),
	(163, 1, 'exit', '01/06/2025', 250, 67346611),
	(164, 1, 'exit', '01/06/2025', 250, 67346361),
	(165, 1, 'entry', '01/06/2025', 500, 67346111),
	(166, 1, 'exit', '01/06/2025', 250, 67346611),
	(167, 1, 'exit', '01/06/2025', 250, 67346361),
	(168, 1, 'exit', '01/06/2025', 250, 67346111),
	(169, 1, 'exit', '01/06/2025', 250, 67345861),
	(170, 1, 'exit', '01/06/2025', 250, 67345611),
	(171, 1, 'exit', '01/06/2025', 250, 67345361),
	(172, 1, 'exit', '01/06/2025', 250, 67345111),
	(173, 1, 'entry', '01/06/2025', 500, 67344861),
	(174, 1, 'exit', '01/06/2025', 250, 67345361),
	(175, 1, 'exit', '01/06/2025', 5000, 67345111),
	(176, 1, 'exit', '01/06/2025', 5000, 67340111),
	(177, 1, 'entry', '01/06/2025', 2500, 67335111),
	(178, 1, 'exit', '01/06/2025', 2000, 67337611),
	(179, 1, 'exit', '01/06/2025', 975, 67335611),
	(180, 1, 'entry', '01/06/2025', 3500, 67334636),
	(181, 1, 'entry', '01/06/2025', 1100, 67338136),
	(182, 1, 'exit', '01/06/2025', 10000, 67339236),
	(183, 1, 'entry', '01/06/2025', 3500, 67329236),
	(184, 1, 'entry', '01/06/2025', 1100, 67332736),
	(185, 1, 'exit', '01/06/2025', 3450, 67333836),
	(186, 1, 'exit', '01/06/2025', 51500, 67330386),
	(187, 1, 'exit', '01/06/2025', 41250, 67278886),
	(188, 1, 'entry', '01/06/2025', 3500, 67237636),
	(189, 1, 'entry', '01/06/2025', 1100, 67241136),
	(190, 1, 'entry', '01/06/2025', 1100, 67242236),
	(191, 1, 'exit', '01/06/2025', 1000, 67243336),
	(192, 1, 'exit', '01/06/2025', 1000, 67242336),
	(193, 1, 'exit', '01/06/2025', 1000, 67241336),
	(194, 1, 'entry', '01/06/2025', 1100, 67240336),
	(195, 1, 'entry', '01/06/2025', 10000, 67241436),
	(196, 1, 'exit', '01/06/2025', 775, 67251436),
	(197, 1, 'exit', '01/06/2025', 925, 67250661),
	(198, 1, 'exit', '01/06/2025', 600, 67249736),
	(199, 1, 'exit', '01/06/2025', 500, 67249136),
	(200, 1, 'exit', '01/06/2025', 125, 67248636),
	(201, 1, 'exit', '01/06/2025', 400, 67248511),
	(202, 1, 'exit', '01/06/2025', 775, 67248111),
	(203, 1, 'exit', '01/06/2025', 150, 67247336),
	(204, 1, 'entry', '01/06/2025', 1100, 67247186),
	(205, 1, 'exit', '01/06/2025', 425, 67248286),
	(206, 1, 'entry', '01/06/2025', 10000, 67247861),
	(207, 1, 'entry', '01/06/2025', 1100, 67257861),
	(208, 1, 'exit', '01/06/2025', 425, 67258961),
	(209, 1, 'entry', '01/06/2025', 1100, 67258536),
	(210, 1, 'entry', '01/06/2025', 1100, 67259636),
	(211, 1, 'entry', '01/06/2025', 5000, 67260736),
	(212, 1, 'entry', '01/06/2025', 10000, 67265736),
	(213, 1, 'entry', '01/06/2025', 1100, 67275736),
	(214, 1, 'entry', '01/06/2025', 5000, 67276836),
	(215, 1, 'entry', '01/06/2025', 10000, 67281836),
	(216, 1, 'entry', '01/06/2025', 1100, 67291836),
	(217, 1, 'entry', '02/06/2025', 5000, 67292936),
	(218, 1, 'entry', '02/06/2025', 10000, 67297936),
	(219, 1, 'entry', '02/06/2025', 1100, 67307936),
	(220, 1, 'entry', '02/06/2025', 5000, 67309036),
	(221, 1, 'entry', '02/06/2025', 10000, 67314036),
	(222, 1, 'entry', '02/06/2025', 1100, 67324036),
	(223, 1, 'entry', '02/06/2025', 5000, 67325136),
	(224, 1, 'exit', '02/06/2025', 775, 67330136),
	(225, 1, 'exit', '02/06/2025', 600, 67329361),
	(226, 1, 'exit', '02/06/2025', 175, 67328761),
	(227, 1, 'exit', '02/06/2025', 125, 67328586),
	(228, 1, 'exit', '02/06/2025', 4, 67328461),
	(229, 1, 'exit', '02/06/2025', 4, 67328457),
	(230, 1, 'exit', '02/06/2025', 400, 67328453),
	(231, 2, 'entry', '02/06/2025', 10000, 1005000),
	(232, 1, 'exit', '02/06/2025', 4, 67328053),
	(233, 1, 'exit', '02/06/2025', 4, 67328049),
	(234, 1, 'entry', '02/06/2025', 10000, 67328045),
	(235, 1, 'entry', '02/06/2025', 1100, 67338045),
	(236, 1, 'entry', '02/06/2025', 5000, 67339145),
	(237, 2, 'entry', '02/06/2025', 10000, 1015000),
	(238, 1, 'entry', '02/06/2025', 10000, 67344145),
	(239, 1, 'exit', '02/06/2025', 25, 67354145),
	(240, 1, 'entry', '02/06/2025', 1100, 67354120),
	(241, 1, 'entry', '02/06/2025', 5000, 67355220),
	(242, 1, 'entry', '02/06/2025', 10000, 67360220),
	(243, 1, 'entry', '02/06/2025', 1100, 67370220),
	(244, 1, 'entry', '02/06/2025', 5000, 67371320),
	(245, 1, 'entry', '02/06/2025', 10000, 67376320),
	(246, 1, 'entry', '02/06/2025', 1100, 67386320),
	(247, 1, 'entry', '02/06/2025', 5000, 67387420),
	(248, 1, 'entry', '02/06/2025', 10000, 67392420),
	(249, 1, 'entry', '02/06/2025', 1100, 67402420),
	(250, 1, 'entry', '02/06/2025', 5000, 67403520),
	(251, 1, 'entry', '02/06/2025', 10000, 67408520),
	(252, 1, 'entry', '02/06/2025', 1100, 67418520),
	(253, 1, 'entry', '02/06/2025', 5000, 67419620),
	(254, 1, 'entry', '03/06/2025', 5000, 67424620),
	(255, 1, 'entry', '03/06/2025', 1100, 67429620),
	(256, 1, 'entry', '03/06/2025', 10000, 67430720),
	(257, 1, 'entry', '04/06/2025', 5000, 67440720),
	(258, 1, 'entry', '04/06/2025', 1100, 67445720),
	(259, 1, 'exit', '04/06/2025', 150, 67446820),
	(260, 1, 'exit', '04/06/2025', 175, 67446670),
	(261, 1, 'exit', '04/06/2025', 30, 67446495),
	(262, 1, 'exit', '04/06/2025', 135, 67446465),
	(263, 1, 'exit', '04/06/2025', 165, 67446330),
	(264, 1, 'exit', '04/06/2025', 30, 67446165),
	(265, 1, 'entry', '04/06/2025', 10000, 67446135),
	(266, 6, 'entry', '04/06/2025', 5000, 0),
	(267, 1, 'exit', '04/06/2025', 100, 67456135),
	(268, 1, 'entry', '04/06/2025', 5000, 67456035),
	(269, 1, 'entry', '04/06/2025', 1100, 67461035),
	(270, 6, 'entry', '04/06/2025', 2000000, 5000),
	(271, 1, 'exit', '04/06/2025', 2000000, 67462135),
	(272, 6, 'exit', '04/06/2025', 200, 2005000),
	(273, 6, 'exit', '04/06/2025', 2000, 2004800),
	(274, 1, 'entry', '04/06/2025', 2000, 65462135),
	(275, 1, 'exit', '04/06/2025', 25, 65464135),
	(276, 1, 'exit', '04/06/2025', 275, 65464110),
	(277, 1, 'entry', '04/06/2025', 10000, 65463835),
	(278, 1, 'exit', '04/06/2025', 975, 65473835),
	(279, 2, 'exit', '04/06/2025', 975, 1025000),
	(280, 1, 'entry', '04/06/2025', 5000, 65472860),
	(281, 1, 'entry', '04/06/2025', 1100, 65477860),
	(282, 1, 'entry', '04/06/2025', 10000, 65478960),
	(283, 1, 'entry', '04/06/2025', 5000, 65488960),
	(284, 1, 'entry', '04/06/2025', 1100, 65493960),
	(285, 1, 'entry', '04/06/2025', 10000, 65495060),
	(286, 1, 'entry', '04/06/2025', 5000, 65505060),
	(287, 1, 'entry', '04/06/2025', 1100, 65510060),
	(288, 1, 'entry', '05/06/2025', 10000, 65511160),
	(289, 1, 'entry', '05/06/2025', 5000, 65521160),
	(290, 1, 'entry', '05/06/2025', 1100, 65526160),
	(291, 1, 'exit', '05/06/2025', 2, 65527260),
	(292, 1, 'exit', '05/06/2025', 10000, 65527258),
	(293, 1, 'exit', '05/06/2025', 1000, 65517258),
	(294, 1, 'entry', '05/06/2025', 1100, 65516258),
	(295, 1, 'entry', '05/06/2025', 2500, 65517358),
	(296, 1, 'entry', '05/06/2025', 1100, 65519858),
	(297, 1, 'entry', '05/06/2025', 2500, 65520958),
	(298, 1, 'entry', '05/06/2025', 1100, 65523458),
	(299, 1, 'entry', '05/06/2025', 2500, 65524558),
	(300, 1, 'entry', '05/06/2025', 1100, 65527058),
	(301, 1, 'entry', '06/06/2025', 2500, 65528158),
	(302, 1, 'entry', '06/06/2025', 1100, 65530658),
	(303, 1, 'entry', '06/06/2025', 2500, 65531758),
	(304, 1, 'entry', '06/06/2025', 1100, 65534258),
	(305, 1, 'entry', '06/06/2025', 2500, 65535358),
	(306, 1, 'entry', '06/06/2025', 1100, 65537858),
	(307, 1, 'entry', '06/06/2025', 2500, 65538958),
	(308, 1, 'entry', '06/06/2025', 1100, 65541458),
	(309, 1, 'entry', '06/06/2025', 2500, 65542558),
	(310, 1, 'entry', '06/06/2025', 1100, 65545058),
	(311, 1, 'entry', '06/06/2025', 2500, 65546158),
	(312, 1, 'entry', '06/06/2025', 1100, 65548658),
	(313, 1, 'entry', '06/06/2025', 2500, 65549758),
	(314, 1, 'entry', '06/06/2025', 1100, 65552258),
	(315, 1, 'entry', '06/06/2025', 2500, 65553358),
	(316, 1, 'entry', '06/06/2025', 1100, 65555858),
	(317, 1, 'entry', '06/06/2025', 2500, 65556958),
	(318, 1, 'entry', '06/06/2025', 1100, 65559458),
	(319, 1, 'entry', '06/06/2025', 2500, 65560558),
	(320, 1, 'entry', '06/06/2025', 1100, 65563058),
	(321, 1, 'entry', '06/06/2025', 2500, 65564158),
	(322, 1, 'entry', '06/06/2025', 1100, 65566658),
	(323, 1, 'entry', '06/06/2025', 2500, 65567758),
	(324, 1, 'entry', '06/06/2025', 1100, 65570258),
	(325, 1, 'entry', '06/06/2025', 2500, 65571358),
	(326, 1, 'entry', '06/06/2025', 1100, 65573858),
	(327, 1, 'entry', '06/06/2025', 2500, 65574958),
	(328, 1, 'entry', '06/06/2025', 1100, 65577458),
	(329, 1, 'entry', '06/06/2025', 2500, 65578558),
	(330, 1, 'entry', '06/06/2025', 1100, 65581058),
	(331, 1, 'entry', '06/06/2025', 2500, 65582158),
	(332, 1, 'entry', '06/06/2025', 1100, 65584658),
	(333, 1, 'entry', '06/06/2025', 2500, 65585758),
	(334, 1, 'entry', '06/06/2025', 1100, 65588258),
	(335, 1, 'entry', '06/06/2025', 2500, 65589358),
	(336, 1, 'entry', '06/06/2025', 1100, 65591858),
	(337, 1, 'entry', '06/06/2025', 2500, 65592958),
	(338, 1, 'entry', '06/06/2025', 1100, 65595458),
	(339, 1, 'entry', '06/06/2025', 2500, 65596558),
	(340, 1, 'entry', '06/06/2025', 1100, 65599058),
	(341, 1, 'entry', '06/06/2025', 2500, 65600158),
	(342, 1, 'entry', '06/06/2025', 1100, 65602658),
	(343, 1, 'entry', '06/06/2025', 2500, 65603758),
	(344, 1, 'entry', '06/06/2025', 1100, 65606258),
	(345, 1, 'entry', '06/06/2025', 2500, 65607358),
	(346, 1, 'entry', '06/06/2025', 1100, 65609858),
	(347, 1, 'entry', '06/06/2025', 2500, 65610958),
	(348, 1, 'entry', '06/06/2025', 1100, 65613458),
	(349, 1, 'entry', '06/06/2025', 2500, 65614558),
	(350, 1, 'entry', '06/06/2025', 1100, 65617058),
	(351, 1, 'entry', '06/06/2025', 2500, 65618158),
	(352, 1, 'entry', '06/06/2025', 1100, 65620658),
	(353, 1, 'entry', '06/06/2025', 2500, 65621758),
	(354, 1, 'entry', '06/06/2025', 1100, 65624258),
	(355, 1, 'entry', '06/06/2025', 2500, 65625358),
	(356, 1, 'entry', '06/06/2025', 1100, 65627858),
	(357, 1, 'entry', '06/06/2025', 2500, 65628958),
	(358, 1, 'entry', '06/06/2025', 1100, 65631458),
	(359, 1, 'entry', '06/06/2025', 2500, 65632558),
	(360, 1, 'entry', '06/06/2025', 1100, 65635058),
	(361, 1, 'entry', '06/06/2025', 2500, 65636158),
	(362, 1, 'entry', '06/06/2025', 1100, 65638658),
	(363, 1, 'entry', '06/06/2025', 2500, 65639758),
	(364, 1, 'entry', '06/06/2025', 1100, 65642258),
	(365, 1, 'entry', '06/06/2025', 2500, 65643358),
	(366, 1, 'entry', '06/06/2025', 1100, 65645858),
	(367, 1, 'entry', '06/06/2025', 2500, 65646958),
	(368, 1, 'entry', '06/06/2025', 1100, 65649458),
	(369, 7, 'entry', '07/06/2025', 5000, 0),
	(370, 1, 'entry', '07/06/2025', 1100, 65650558),
	(371, 1, 'exit', '07/06/2025', 60000, 65651658),
	(372, 1, 'exit', '07/06/2025', 200000, 65591658),
	(373, 1, 'exit', '07/06/2025', 20000, 65391658),
	(374, 1, 'exit', '08/06/2025', 20000, 65371658),
	(375, 1, 'exit', '08/06/2025', 222222, 65351658),
	(376, 1, 'exit', '08/06/2025', 20000, 65129436),
	(377, 1, 'exit', '08/06/2025', 6666, 65109436),
	(378, 1, 'exit', '08/06/2025', 10000, 65102770),
	(379, 1, 'exit', '08/06/2025', 10000, 65092770),
	(380, 1, 'exit', '08/06/2025', 1000, 65082770),
	(381, 1, 'entry', '08/06/2025', 1100, 65081770),
	(382, 1, 'exit', '08/06/2025', 2000, 65082870),
	(383, 1, 'exit', '08/06/2025', 375, 65080870),
	(384, 1, 'exit', '08/06/2025', 225, 65080495),
	(385, 1, 'entry', '08/06/2025', 1100, 65080270),
	(386, 1, 'exit', '08/06/2025', 300000, 65081370),
	(387, 1, 'exit', '08/06/2025', 500, 64781370),
	(388, 1, 'exit', '08/06/2025', 575, 64780870),
	(389, 1, 'exit', '08/06/2025', 975, 64780295),
	(390, 1, 'entry', '08/06/2025', 1100, 64779320),
	(391, 1, 'exit', '08/06/2025', 30, 64780420),
	(392, 1, 'exit', '08/06/2025', 175, 64780390),
	(393, 1, 'entry', '08/06/2025', 1100, 64780215),
	(394, 1, 'exit', '08/06/2025', 25000, 64781315),
	(395, 1, 'exit', '08/06/2025', 25000, 64756315),
	(396, 1, 'exit', '08/06/2025', 2000, 64731315),
	(397, 1, 'exit', '08/06/2025', 12000, 64729315),
	(398, 1, 'entry', '08/06/2025', 1100, 64717315),
	(399, 3, 'entry', '08/06/2025', 3500, 5000),
	(400, 1, 'entry', '08/06/2025', 1100, 64718415),
	(401, 1, 'entry', '08/06/2025', 10000, 64719515),
	(402, 3, 'entry', '08/06/2025', 10000, 8500),
	(403, 3, 'entry', '08/06/2025', 3500, 18500),
	(404, 1, 'entry', '08/06/2025', 1100, 64729515),
	(405, 1, 'entry', '08/06/2025', 10000, 64730615),
	(406, 3, 'entry', '08/06/2025', 10000, 22000);

-- Copiando estrutura para tabela creawork.vehicles
CREATE TABLE IF NOT EXISTS `vehicles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Passport` int(11) NOT NULL,
  `vehicle` varchar(100) NOT NULL,
  `tax` int(20) NOT NULL DEFAULT 0,
  `plate` varchar(10) DEFAULT NULL,
  `rental` int(20) NOT NULL DEFAULT 0,
  `arrest` int(20) NOT NULL DEFAULT 0,
  `engine` int(4) NOT NULL DEFAULT 1000,
  `body` int(4) NOT NULL DEFAULT 1000,
  `health` int(4) NOT NULL DEFAULT 1000,
  `fuel` int(3) NOT NULL DEFAULT 100,
  `nitro` int(5) NOT NULL DEFAULT 0,
  `work` varchar(5) NOT NULL DEFAULT 'false',
  `doors` longtext NOT NULL,
  `windows` longtext NOT NULL,
  `tyres` longtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `Passport` (`Passport`),
  KEY `vehicle` (`vehicle`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Copiando dados para a tabela creawork.vehicles: ~16 rows (aproximadamente)
INSERT INTO `vehicles` (`id`, `Passport`, `vehicle`, `tax`, `plate`, `rental`, `arrest`, `engine`, `body`, `health`, `fuel`, `nitro`, `work`, `doors`, `windows`, `tyres`) VALUES
	(1, 2, 'cb500x', 1749083188, '40CEU432', 1749083188, 0, 1000, 1000, 1000, 100, 0, 'false', '', '', ''),
	(3, 1, 'asbo', 1752004737, '02NUN715', 0, 0, 1000, 998, 998, 99, 0, 'false', '{"1":false,"2":false,"3":false,"4":false,"5":false,"0":false}', '{"1":1,"2":1,"3":1,"4":false,"5":false,"0":1}', '{"1":false,"2":true,"3":true,"4":false,"5":false,"6":false,"7":false,"0":false}'),
	(4, 1, '69charger', 1752004737, '79NGL474', 1751156110, 0, 1000, 1000, 1000, 100, 0, 'false', '', '', ''),
	(5, 1, '22m5', 1752004737, '18IMU024', 1751156185, 1752013998, 889, 839, 840, 94, 0, 'false', '{"1":false,"2":false,"3":false,"4":1,"5":false,"0":false}', '{"1":1,"2":1,"3":1,"4":false,"5":false,"0":false}', '{"1":false,"2":true,"3":true,"4":false,"5":false,"6":false,"7":false,"0":false}'),
	(6, 1, 'cb500x', 1752004737, '75GRQ827', 1751156408, 0, 992, 983, 996, 65, 2000, 'false', '{"1":false,"2":false,"3":false,"4":false,"5":false,"0":false}', '{"1":false,"2":false,"3":false,"4":false,"5":false,"0":false}', '{"1":true,"2":true,"3":true,"4":false,"5":true,"6":false,"7":false,"0":false}'),
	(7, 1, 'chiron17', 1752004737, '82PKM220', 1751156419, 0, 993, 992, 992, 98, 1239, 'false', '{"1":false,"2":false,"3":false,"4":false,"5":false,"0":false}', '{"1":1,"2":1,"3":1,"4":1,"5":1,"0":1}', '{"1":false,"2":true,"3":true,"4":false,"5":false,"6":false,"7":false,"0":false}'),
	(8, 1, 'filthynsx', 1752004737, '39QKC169', 1751156429, 0, 1000, 1000, 1000, 100, 0, 'false', '{"1":false,"2":false,"3":false,"4":false,"5":false,"0":false}', '{"1":1,"2":1,"3":1,"4":false,"5":false,"0":1}', '{"1":false,"2":true,"3":true,"4":false,"5":false,"6":false,"7":false,"0":false}'),
	(11, 1, 'rr14', 1752004737, '48UXW059', 1752005821, 0, 1000, 1000, 1000, 100, 0, 'false', '', '', ''),
	(12, 1, 'stockade', 1749413911, '56IHP326', 0, 0, 1000, 1000, 1000, 100, 0, 'true', '', '', ''),
	(13, 1, 'polvic', 1749424988, '07DBY238', 0, 0, 1000, 1000, 1000, 100, 0, 'true', '', '', ''),
	(14, 1, 'komodapol', 1749425027, '09WDE407', 0, 0, 1000, 1000, 1000, 100, 0, 'true', '', '', ''),
	(15, 1, 'policetpol', 1749425111, '07DZQ604', 0, 0, 1000, 1000, 1000, 100, 0, 'true', '', '', ''),
	(16, 2, 'adder', 1749691362, '33FTN097', 0, 0, 1000, 1000, 1000, 100, 0, 'false', '', '', ''),
	(17, 6, 'a45amg', 1749692010, '13EBN716', 1749692010, 0, 1000, 1000, 1000, 100, 0, 'false', '', '', ''),
	(18, 1, 'ambulance2', 1749776741, '42OPP584', 0, 0, 1000, 1000, 1000, 100, 0, 'true', '', '', ''),
	(19, 3, 'maj350z', 1750025961, '48CXG949', 1752013161, 0, 1000, 1000, 1000, 100, 0, 'false', '', '', ''),
	(20, 1, 'speeder', 1750028698, '03PEX823', 0, 0, 1000, 1000, 1000, 100, 0, 'true', '', '', ''),
	(21, 1, 'taxi', 1750029433, '41LUT543', 0, 0, 1000, 1000, 1000, 100, 0, 'true', '', '', '');

-- Copiando estrutura para tabela creawork.vrp_properties
CREATE TABLE IF NOT EXISTS `vrp_properties` (
  `property_id` int(11) NOT NULL AUTO_INCREMENT,
  `property` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `owner` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `tax` text CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT '{}',
  `information` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`property_id`,`property`(100))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Copiando dados para a tabela creawork.vrp_properties: ~0 rows (aproximadamente)

-- Copiando estrutura para tabela creawork.vrp_user_moneys
CREATE TABLE IF NOT EXISTS `vrp_user_moneys` (
  `user_id` int(11) NOT NULL,
  `wallet` int(11) NOT NULL DEFAULT 0,
  `bank` int(11) NOT NULL DEFAULT 0,
  `paypal` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Copiando dados para a tabela creawork.vrp_user_moneys: ~0 rows (aproximadamente)

-- Copiando estrutura para tabela creawork.warehouse
CREATE TABLE IF NOT EXISTS `warehouse` (
  `Number` int(20) NOT NULL,
  `Passport` int(10) NOT NULL DEFAULT 0,
  `Password` int(11) NOT NULL DEFAULT 0,
  `Tax` int(20) NOT NULL DEFAULT 0,
  PRIMARY KEY (`Number`) USING BTREE,
  KEY `Passport` (`Passport`),
  KEY `id` (`Number`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Copiando dados para a tabela creawork.warehouse: ~0 rows (aproximadamente)

-- Copiando estrutura para tabela creawork.warrants
CREATE TABLE IF NOT EXISTS `warrants` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` text DEFAULT NULL,
  `identity` text DEFAULT NULL,
  `status` text DEFAULT NULL,
  `nidentity` text DEFAULT NULL,
  `timeStamp` text DEFAULT NULL,
  `reason` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `portId` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Copiando dados para a tabela creawork.warrants: ~0 rows (aproximadamente)

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
