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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Copiando dados para a tabela creawork.accounts: ~3 rows (aproximadamente)
INSERT INTO `accounts` (`id`, `whitelist`, `priority`, `chars`, `gems`, `discord`, `license`) VALUES
	(1, 1, 0, 1, 45694, '0', 'c06532b425f803c4b2d308845514e80204d14b77'),
	(2, 1, 0, 1, 0, '0', '1e6cafd724cebc49b9f9251a64f894302362c60c'),
	(3, 1, 0, 1, 0, '0', '6a99e026853db21aa7d3ba042075d5eb9b04a651');

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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Copiando dados para a tabela creawork.characters: ~3 rows (aproximadamente)
INSERT INTO `characters` (`id`, `license`, `phone`, `name`, `name2`, `sex`, `prison`, `bank`, `medicplan`, `blood`, `fines`, `tracking`, `spending`, `cardlimit`, `cardpassword`, `deleted`, `created`, `paypal`, `age`, `time`) VALUES
	(1, 'c06532b425f803c4b2d308845514e80204d14b77', '216-678', 'juninho', 'lima', 'M', 0, 90704, 1750201779, 1, 0, 0, 591, 1409, 401, 0, 1749854459, 19999, 20, NULL),
	(3, '1e6cafd724cebc49b9f9251a64f894302362c60c', '094-720', 'nebulosa', 'ds', 'F', 0, 1800, 0, 1, 0, 0, 0, 0, 0, 0, 1750036629, 0, 20, NULL),
	(4, '6a99e026853db21aa7d3ba042075d5eb9b04a651', '255-686', 'NATAN', 'CRISTÃO', 'M', 0, 5000, 0, 3, 0, 0, 0, 0, 0, 0, 1750039681, 0, 20, NULL);

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
	(1, 'CluckinBell', 'CluckinBell', 500, 50, 0);

-- Copiando estrutura para tabela creawork.dependents
CREATE TABLE IF NOT EXISTS `dependents` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Passport` int(10) NOT NULL DEFAULT 0,
  `Dependent` int(10) NOT NULL DEFAULT 0,
  `Name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `Passport` (`Passport`),
  KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Copiando dados para a tabela creawork.dependents: ~0 rows (aproximadamente)

-- Copiando estrutura para tabela creawork.entitydata
CREATE TABLE IF NOT EXISTS `entitydata` (
  `dkey` varchar(100) NOT NULL,
  `dvalue` longtext DEFAULT NULL,
  PRIMARY KEY (`dkey`),
  KEY `dkey` (`dkey`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Copiando dados para a tabela creawork.entitydata: ~14 rows (aproximadamente)
INSERT INTO `entitydata` (`dkey`, `dvalue`) VALUES
	('Chest:CluckinBell', '{"1":{"item":"potato-1749857005","amount":5}}'),
	('Glove:43AEG602', '[]'),
	('Mods:1:fk8', '{"extracolors":[147,147],"var":{"24":false,"23":false},"tint":2,"lights":[255,0,255],"smokecolor":[255,255,255],"extras":[0,0,0,0,0,0,0,0,0,0,0,0],"wheeltype":0,"platestyle":0,"neon":{"1":false,"2":false,"3":false,"0":false},"interColour":147,"colors":[147,147],"dashColour":147,"plateIndex":0,"liverys":0,"mods":{"1":1,"2":0,"3":-1,"4":-1,"5":0,"6":-1,"7":1,"8":-1,"9":-1,"10":-1,"11":4,"12":2,"13":3,"14":6,"15":3,"16":4,"17":false,"18":1,"19":false,"20":false,"21":false,"22":1,"23":-1,"24":-1,"25":-1,"26":-1,"27":-1,"28":-1,"29":-1,"30":-1,"31":-1,"32":-1,"33":-1,"34":-1,"35":-1,"36":-1,"37":-1,"38":-1,"39":-1,"40":-1,"41":-1,"42":-1,"43":-1,"44":-1,"45":-1,"46":-1,"47":-1,"48":-1,"0":0},"xenonColor":1}'),
	('Outfit:1', '{"shoes":{"item":33,"texture":0},"bracelet":{"item":-1,"texture":0},"accessory":{"item":0,"texture":0},"decals":{"item":0,"texture":0},"backpack":{"item":0,"texture":0},"mask":{"item":141,"texture":0},"ear":{"item":-1,"texture":0},"vest":{"item":0,"texture":0},"watch":{"item":-1,"texture":0},"pants":{"item":108,"texture":0},"hat":{"item":-1,"texture":0},"arms":{"item":164,"texture":0},"glass":{"item":0,"texture":0},"tshirt":{"item":15,"texture":0},"torso":{"item":277,"texture":0}}'),
	('Outfit:2', '{"decals":{"texture":0,"item":0},"bracelet":{"texture":0,"item":-1},"tshirt":{"texture":0,"item":15},"hat":{"texture":0,"item":-1},"accessory":{"texture":0,"item":0},"pants":{"texture":0,"item":14},"arms":{"texture":0,"item":15},"ear":{"texture":0,"item":-1},"backpack":{"texture":0,"item":0},"torso":{"texture":0,"item":15},"watch":{"texture":0,"item":-1},"mask":{"texture":0,"item":0},"vest":{"texture":0,"item":0},"glass":{"texture":0,"item":0},"shoes":{"texture":0,"item":5}}'),
	('Permissions:Admin', '{"3":1,"2":1,"1":1}'),
	('Permissions:AutoSport', '[]'),
	('Permissions:BurgerShot', '[]'),
	('Permissions:CluckinBell', '{"1":1}'),
	('Permissions:EastCustoms', '{}'),
	('Permissions:FastFood', '[]'),
	('Permissions:Mechanic', '{"1":1}'),
	('Permissions:Paramedic', '{"2":1,"1":1}'),
	('Permissions:Police', '{}'),
	('Shopping', '[{"Name":"juninho lima Comprou Mochila Grande","Index":"backpackg","Price":100.0,"Discount":0,"Amount":1},{"Name":"juninho lima Comprou Mochila Média","Index":"backpackm","Price":75.0,"Discount":0,"Amount":1},{"Name":"juninho lima Comprou Mochila Pequena","Index":"backpackp","Price":50.0,"Discount":0,"Amount":1},{"Name":"juninho lima Comprou +1 Personagem","Index":"newchars","Price":4500.9,"Discount":16.65,"Amount":1}]');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Copiando dados para a tabela creawork.fines: ~0 rows (aproximadamente)

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Copiando dados para a tabela creawork.investments: ~0 rows (aproximadamente)

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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Copiando dados para a tabela creawork.invoices: ~8 rows (aproximadamente)
INSERT INTO `invoices` (`id`, `Passport`, `Received`, `Type`, `Reason`, `Holder`, `Value`) VALUES
	(1, 1, 0, 'received', 'Cartão de Crédito', 'Loja: Retirou Veiculo', 50),
	(2, 1, 0, 'received', 'Cartão de Crédito', 'Loja: Retirou Veiculo', 50),
	(3, 1, 0, 'received', 'Cartão de Crédito', 'Loja: 1x(Sopa em Lata)', 30),
	(4, 1, 0, 'received', 'Cartão de Crédito', 'Loja: 1x(Abridor de Lata)', 135),
	(5, 1, 0, 'received', 'Cartão de Crédito', 'Loja: 1x(Sopa em Lata)', 30),
	(6, 1, 0, 'received', 'Cartão de Crédito', 'Loja: 1x(Colher)', 165),
	(7, 1, 0, 'received', 'Cartão de Crédito', 'Loja: Retirou Veiculo', 50),
	(8, 1, 0, 'received', 'Cartão de Crédito', 'Loja: Retirou Veiculo', 50),
	(9, 1, 0, 'received', 'Cartão de Crédito', 'Loja: car-washed', 20),
	(10, 1, 0, 'received', 'Cartão de Crédito', 'Loja: Gastos com combustível.', 11);

-- Copiando estrutura para tabela creawork.organizations
CREATE TABLE IF NOT EXISTS `organizations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `bank` int(20) NOT NULL DEFAULT 0,
  `premium` int(20) NOT NULL DEFAULT 0,
  `buff` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Copiando dados para a tabela creawork.organizations: ~2 rows (aproximadamente)
INSERT INTO `organizations` (`id`, `name`, `bank`, `premium`, `buff`) VALUES
	(1, 'BurgerShot', 0, 0, 0),
	(2, 'EastCustoms', 0, 0, 0),
	(3, 'Paramedic', 0, 1752362782, 1),
	(4, 'CluckinBell', 0, 0, 0);

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

-- Copiando estrutura para tabela creawork.pause_marketplace_itens
CREATE TABLE IF NOT EXISTS `pause_marketplace_itens` (
  `id` varchar(20) NOT NULL,
  `Name` varchar(50) NOT NULL DEFAULT '0',
  `Key` varchar(255) NOT NULL,
  `Price` int(11) NOT NULL,
  `Amount` int(11) NOT NULL,
  `owner_id` varchar(50) DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Copiando dados para a tabela creawork.pause_marketplace_itens: ~0 rows (aproximadamente)

-- Copiando estrutura para tabela creawork.pause_shopping
CREATE TABLE IF NOT EXISTS `pause_shopping` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `passport` varchar(50) NOT NULL,
  `item_name` varchar(100) NOT NULL,
  `amount` int(11) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `discount` decimal(10,2) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci MAX_ROWS=10;

-- Copiando dados para a tabela creawork.pause_shopping: ~0 rows (aproximadamente)

-- Copiando estrutura para tabela creawork.playerdata
CREATE TABLE IF NOT EXISTS `playerdata` (
  `Passport` int(11) NOT NULL,
  `dkey` varchar(100) NOT NULL,
  `dvalue` longtext DEFAULT NULL,
  PRIMARY KEY (`Passport`,`dkey`),
  KEY `Passport` (`Passport`),
  KEY `dkey` (`dkey`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Copiando dados para a tabela creawork.playerdata: ~28 rows (aproximadamente)
INSERT INTO `playerdata` (`Passport`, `dkey`, `dvalue`) VALUES
	(1, 'Ammos', '[]'),
	(1, 'Attachs', '[]'),
	(1, 'Backpack', '{"backpackm":1752192926,"backpackg":1752192913,"backpackp":1752192925}'),
	(1, 'Barbershop', '[0,11,0,0,0,0,0,-1,-1,57,44,0,0,0,0,0,0,0,17,0.99,1,3,0.95,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]'),
	(1, 'Clothings', '{"vest":{"texture":0,"item":0},"watch":{"texture":0,"item":-1},"hat":{"texture":0,"item":-1},"backpack":{"texture":0,"item":0},"mask":{"texture":0,"item":0},"tshirt":{"texture":0,"item":15},"accessory":{"texture":0,"item":0},"torso":{"texture":0,"item":15},"glass":{"texture":0,"item":0},"bracelet":{"texture":0,"item":-1},"pants":{"texture":0,"item":14},"arms":{"texture":0,"item":15},"ear":{"texture":0,"item":-1},"decals":{"texture":0,"item":0},"shoes":{"texture":0,"item":5}}'),
	(1, 'Creator', '1'),
	(1, 'Datatable', '{"Hunger":84,"Skin":"mp_m_freemode_01","Pos":{"x":-302.36,"y":-1343.34,"z":31.31},"Stress":0,"Thirst":84,"Health":200,"Armour":0,"Inventory":{"21":{"amount":2,"item":"boombox"},"18":{"amount":1,"item":"lockpick-1750727515"},"17":{"amount":1,"item":"nitro"},"16":{"amount":1,"item":"toolbox"},"15":{"amount":1,"item":"hood-1750727513"},"9":{"data":[],"amount":1,"item":"wallet-J7O7E8A8Z2"},"19":{"amount":1,"item":"jackham-1750727516"},"12":{"amount":1,"item":"repairkit01"},"11":{"amount":1,"item":"radio-1750723856"},"14":{"amount":1,"item":"radio-1750727512"},"6":{"data":{"1":{"amount":30,"item":"cigarette"}},"amount":1,"item":"ciggypack-Q8M6M5D9M1"},"3":{"item":"cellphone-1749595259","amount":1},"4":{"item":"debitcard-1","amount":1},"1":{"amount":1,"item":"WEAPON_SWITCHBLADE-1750727713"},"2":{"item":"medicplan-1","amount":1},"13":{"amount":1,"item":"cellphone-1750727496"},"8":{"data":{"1":{"amount":30,"item":"cigarette"}},"amount":1,"item":"ciggypack-B9F8G6C3W0"},"20":{"amount":1,"item":"skateboard"},"10":{"amount":1,"item":"vape-1750727452"},"5":{"data":{"3":{"item":"identity-1","amount":1},"1":{"item":"creditcard-1","amount":1}},"amount":1,"item":"wallet-H6V6F2E9H4"},"7":{"item":"dollars","amount":44264}},"Weight":111.23000000000002}'),
	(1, 'Experience', '{"Postal":0,"Trucker":9,"Fisherman":0,"Milkman":0,"Tows":0,"Garbageman":0,"Delivery":0,"Taxi":0,"Lumberman":0,"Bus":0,"Tractor":0,"Transporter":0,"Minerman":0,"Hunting":0}'),
	(1, 'Gymnasium', '{"1":1751585757}'),
	(1, 'Rolepass', '{"Level":1,"Free":0,"Finish":1751338800.0,"RolepassBuy":true,"Premium":0,"Points":109}'),
	(2, 'Ammos', '[]'),
	(2, 'Attachs', '[]'),
	(2, 'Backpack', '[]'),
	(2, 'Barbershop', '[0,0,0,0,0,0,0,0,0,37,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]'),
	(2, 'Clothings', '{"pants":{"item":150,"texture":3},"arms":{"item":106,"texture":1},"glass":{"item":0,"texture":0},"backpack":{"item":0,"texture":0},"hat":{"item":-1,"texture":0},"mask":{"item":121,"texture":0},"torso":{"item":367,"texture":12},"accessory":{"item":161,"texture":0},"decals":{"item":0,"texture":0},"tshirt":{"item":267,"texture":0},"vest":{"item":0,"texture":0},"ear":{"item":-1,"texture":0},"bracelet":{"item":-1,"texture":0},"shoes":{"item":19,"texture":7},"watch":{"item":-1,"texture":0}}'),
	(2, 'Creator', '1'),
	(2, 'Datatable', '{"Skin":"mp_f_freemode_01","Inventory":{"1":{"item":"receipt-2-1749602501-1000-pagamento","amount":1},"7":{"item":"homekey-634750-112","amount":1},"2":{"item":"gift","amount":1},"9":{"item":"cellphone-1749599919","amount":1},"4":{"item":"identity-2","amount":1},"3":{"item":"water","amount":2},"6":{"item":"dollars","amount":1500},"5":{"item":"hamburger-1749599919","amount":3}},"Hunger":37,"Health":175,"Thirst":37,"Stress":0,"Armour":0,"Pos":{"x":-706.56,"z":37.41,"y":-150.93},"Weight":40}'),
	(2, 'Experience', '{"Garbageman":0,"Taxi":0,"Bus":0,"Delivery":0,"Milkman":0,"Minerman":0,"Fisherman":0,"Hunting":0,"Transporter":0,"Postal":0,"Tractor":0,"Tows":0,"Lumberman":0,"Trucker":0}'),
	(3, 'Ammos', '[]'),
	(3, 'Attachs', '[]'),
	(3, 'Backpack', '[]'),
	(3, 'Barbershop', '[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]'),
	(3, 'Clothings', '{"tshirt":{"texture":0,"item":1},"backpack":{"texture":0,"item":0},"shoes":{"texture":0,"item":0},"mask":{"texture":0,"item":0},"decals":{"texture":0,"item":0},"torso":{"texture":0,"item":0},"vest":{"texture":0,"item":0},"glass":{"texture":0,"item":0},"watch":{"texture":0,"item":-1},"bracelet":{"texture":0,"item":-1},"hat":{"texture":0,"item":-1},"pants":{"texture":0,"item":0},"ear":{"texture":0,"item":-1},"arms":{"texture":0,"item":0},"accessory":{"texture":0,"item":0}}'),
	(3, 'Creator', '1'),
	(3, 'Datatable', '{"Skin":"mp_f_freemode_01","Pos":{"y":115.44,"z":56.03,"x":-830.55},"Weight":40,"Stress":0,"Health":100,"Inventory":{"1":{"item":"receipt-3-1749856662-3000-pagamento agora","amount":1},"2":{"item":"water","amount":2},"7":{"item":"homekey-363891-112","amount":1},"8":{"item":"receipt-3-1749856577-200-pagamento","amount":1},"5":{"item":"hamburger-1749777429","amount":3},"6":{"item":"identity-3","amount":1},"3":{"item":"gift","amount":1},"4":{"item":"cellphone-1749777429","amount":1}},"Thirst":0,"Armour":0,"Hunger":0}'),
	(3, 'Experience', '{"Milkman":0,"Lumberman":0,"Postal":0,"Minerman":0,"Transporter":0,"Trucker":0,"Bus":0,"Fisherman":0,"Taxi":0,"Delivery":0,"Hunting":0,"Tows":0,"Tractor":0,"Garbageman":0}'),
	(4, 'Backpack', '[]'),
	(4, 'Clothings', '{"vest":{"texture":0,"item":0},"watch":{"texture":0,"item":-1},"backpack":{"texture":0,"item":0},"mask":{"texture":0,"item":0},"torso":{"texture":0,"item":0},"ear":{"texture":0,"item":-1},"glass":{"texture":0,"item":0},"tshirt":{"texture":0,"item":1},"accessory":{"texture":0,"item":0},"shoes":{"texture":0,"item":0},"bracelet":{"texture":0,"item":-1},"decals":{"texture":0,"item":0},"arms":{"texture":0,"item":0},"hat":{"texture":0,"item":-1},"pants":{"texture":0,"item":0}}'),
	(4, 'Datatable', '{"Skin":"mp_m_freemode_01","Weight":40,"Inventory":{"3":{"item":"hamburger-1749780481","amount":3},"4":{"item":"dollars","amount":1500},"1":{"item":"gift","amount":1},"2":{"item":"water","amount":2},"5":{"item":"identity-4","amount":1},"6":{"item":"cellphone-1749780481","amount":1}}}');

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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Copiando dados para a tabela creawork.prison: ~0 rows (aproximadamente)
INSERT INTO `prison` (`id`, `police`, `nuser_id`, `services`, `fines`, `text`, `date`, `cops`, `association`, `residual`, `url`) VALUES
	(1, 'juninho lima', 2, 6, 20000, '<p>ladrao seses behjsn eses</p>', '10/06/2025 ás 21:02', '', '', 'Não', 'seseseseses');

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

-- Copiando dados para a tabela creawork.propertys: ~0 rows (aproximadamente)
INSERT INTO `propertys` (`Number`, `Passport`, `Interior`, `Keychain`, `Tax`) VALUES
	(112, 1, 3, 363891, 1752195894);

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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Copiando dados para a tabela creawork.smartphone_calls: ~2 rows (aproximadamente)
INSERT INTO `smartphone_calls` (`id`, `initiator`, `target`, `duration`, `status`, `video`, `anonymous`, `created_at`) VALUES
	(4, '216-678', '094-720', 6, 'ok', 1, 0, 1749859559),
	(5, '216-678', '094-720', 17, 'ok', 1, 0, 1749859598);

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

-- Copiando estrutura para tabela creawork.smartphone_contacts
CREATE TABLE IF NOT EXISTS `smartphone_contacts` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `owner` varchar(50) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `owner_index` (`owner`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Copiando dados para a tabela creawork.smartphone_contacts: ~0 rows (aproximadamente)
INSERT INTO `smartphone_contacts` (`id`, `owner`, `phone`, `name`) VALUES
	(1, '216-678', '687-155', 'eu'),
	(2, '216-678', '094-720', 'euuuuuu');

-- Copiando estrutura para tabela creawork.smartphone_gallery
CREATE TABLE IF NOT EXISTS `smartphone_gallery` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `folder` varchar(255) NOT NULL DEFAULT '/',
  `url` varchar(255) NOT NULL,
  `created_at` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Copiando dados para a tabela creawork.smartphone_gallery: ~2 rows (aproximadamente)
INSERT INTO `smartphone_gallery` (`id`, `user_id`, `folder`, `url`, `created_at`) VALUES
	(1, 1, '/instagram', 'http://181.215.45.148/jester/images/1749606815.jpg', 1749596015),
	(2, 1, '/instagram', 'http://181.215.45.148/jester/images/1749607681.jpg', 1749596881),
	(3, 1, '/instagram', 'http://181.215.45.148/jester/images/1749612329.jpg', 1749601528),
	(4, 2, '/instagram', 'http://181.215.45.148/jester/images/1749706323.jpg', 1749695522);

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Copiando dados para a tabela creawork.smartphone_instagram: ~0 rows (aproximadamente)
INSERT INTO `smartphone_instagram` (`id`, `user_id`, `username`, `name`, `bio`, `avatarURL`, `verified`) VALUES
	(1, 1, 'kiwee', 'fodac', 'ssesese', 'http://181.215.45.148/jester/images/1749606815.jpg', 1);

-- Copiando estrutura para tabela creawork.smartphone_instagram_followers
CREATE TABLE IF NOT EXISTS `smartphone_instagram_followers` (
  `follower_id` bigint(20) NOT NULL,
  `profile_id` bigint(20) NOT NULL,
  PRIMARY KEY (`follower_id`,`profile_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Copiando dados para a tabela creawork.smartphone_instagram_followers: ~0 rows (aproximadamente)
INSERT INTO `smartphone_instagram_followers` (`follower_id`, `profile_id`) VALUES
	(2, 1);

-- Copiando estrutura para tabela creawork.smartphone_instagram_likes
CREATE TABLE IF NOT EXISTS `smartphone_instagram_likes` (
  `post_id` bigint(20) NOT NULL,
  `profile_id` bigint(20) NOT NULL,
  PRIMARY KEY (`post_id`,`profile_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Copiando dados para a tabela creawork.smartphone_instagram_likes: ~0 rows (aproximadamente)
INSERT INTO `smartphone_instagram_likes` (`post_id`, `profile_id`) VALUES
	(3, 1);

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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Copiando dados para a tabela creawork.smartphone_instagram_posts: ~4 rows (aproximadamente)
INSERT INTO `smartphone_instagram_posts` (`id`, `profile_id`, `post_id`, `image`, `content`, `created_at`, `comments`) VALUES
	(1, 1, NULL, 'http://181.215.45.148/jester/images/1749607681.jpg', 'rei maraomba', 1749596885, 0),
	(2, 1, NULL, 'http://181.215.45.148/jester/images/1749612329.jpg', '', 1749601533, 0),
	(3, 2, NULL, 'http://181.215.45.148/jester/images/1749706323.jpg', '', 1749695632, 0),
	(4, 1, 3, NULL, 'lindeza', 1749695646, NULL);

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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Copiando dados para a tabela creawork.smartphone_paypal_transactions: ~0 rows (aproximadamente)

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Copiando dados para a tabela creawork.smartphone_tinder: ~0 rows (aproximadamente)

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Copiando dados para a tabela creawork.smartphone_tor_messages: ~0 rows (aproximadamente)

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Copiando dados para a tabela creawork.smartphone_twitter_profiles: ~0 rows (aproximadamente)

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Copiando dados para a tabela creawork.smartphone_twitter_tweets: ~0 rows (aproximadamente)

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
	('216-678', NULL, 1);

-- Copiando estrutura para tabela creawork.smartphone_whatsapp_channels
CREATE TABLE IF NOT EXISTS `smartphone_whatsapp_channels` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `sender` varchar(50) NOT NULL,
  `target` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sender_index` (`sender`),
  KEY `target_index` (`target`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Copiando dados para a tabela creawork.smartphone_whatsapp_channels: ~0 rows (aproximadamente)
INSERT INTO `smartphone_whatsapp_channels` (`id`, `sender`, `target`) VALUES
	(1, '216-678', '687-155'),
	(2, '216-678', '094-720');

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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Copiando dados para a tabela creawork.smartphone_whatsapp_messages: ~1 rows (aproximadamente)
INSERT INTO `smartphone_whatsapp_messages` (`id`, `channel_id`, `sender`, `image`, `location`, `content`, `deleted_by`, `readed`, `saw_at`, `created_at`) VALUES
	(1, 1, '216-678', NULL, NULL, 'kkkkkkkkk', NULL, 0, 0, 1750980782);

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

-- Copiando dados para a tabela creawork.taxs: ~1 rows (aproximadamente)
INSERT INTO `taxs` (`id`, `Passport`, `Name`, `Date`, `Hour`, `Value`, `Message`) VALUES
	(2, 1, 'Posto de Gasolina', '13/06/2025', '20:14', 12, 'Gastos com combustível.');

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
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Copiando dados para a tabela creawork.transactions: ~52 rows (aproximadamente)
INSERT INTO `transactions` (`id`, `Passport`, `Type`, `Date`, `Value`, `Balance`) VALUES
	(1, 1, 'entry', '10/06/2025', 5000, 0),
	(2, 1, 'exit', '10/06/2025', 500, 5000),
	(3, 1, 'exit', '10/06/2025', 20, 4500),
	(4, 1, 'exit', '10/06/2025', 50, 4480),
	(5, 1, 'exit', '10/06/2025', 1250, 4430),
	(6, 1, 'exit', '10/06/2025', 1250, 3180),
	(7, 1, 'exit', '10/06/2025', 1250, 1930),
	(8, 1, 'exit', '10/06/2025', 20, 680),
	(9, 1, 'exit', '10/06/2025', 100, 660),
	(10, 1, 'entry', '10/06/2025', 3500, 560),
	(11, 2, 'entry', '10/06/2025', 5000, 0),
	(12, 1, 'entry', '10/06/2025', 10000, 4060),
	(13, 1, 'entry', '10/06/2025', 3500, 14060),
	(14, 2, 'exit', '10/06/2025', 1000, 5000),
	(15, 1, 'entry', '10/06/2025', 1000, 17560),
	(16, 1, 'entry', '10/06/2025', 10000, 18560),
	(17, 1, 'entry', '10/06/2025', 3500, 28560),
	(18, 1, 'entry', '10/06/2025', 10000, 32060),
	(19, 1, 'entry', '10/06/2025', 3500, 42060),
	(20, 2, 'entry', '10/06/2025', 10000, 4000),
	(21, 1, 'exit', '11/06/2025', 19999, 45560),
	(22, 1, 'entry', '11/06/2025', 3500, 25561),
	(23, 1, 'entry', '11/06/2025', 10000, 29061),
	(24, 1, 'entry', '11/06/2025', 3500, 39061),
	(25, 1, 'entry', '11/06/2025', 10000, 42561),
	(26, 1, 'entry', '11/06/2025', 3500, 52561),
	(27, 1, 'entry', '11/06/2025', 3500, 56061),
	(28, 2, 'entry', '11/06/2025', 10000, 14000),
	(29, 1, 'entry', '11/06/2025', 10000, 59561),
	(30, 1, 'entry', '11/06/2025', 3500, 69561),
	(31, 2, 'entry', '11/06/2025', 10000, 24000),
	(32, 1, 'entry', '11/06/2025', 10000, 73061),
	(33, 1, 'entry', '11/06/2025', 3500, 83061),
	(34, 2, 'entry', '11/06/2025', 10000, 34000),
	(35, 1, 'entry', '11/06/2025', 3500, 86561),
	(36, 2, 'entry', '11/06/2025', 10000, 44000),
	(37, 1, 'entry', '11/06/2025', 10000, 90061),
	(38, 1, 'entry', '12/06/2025', 2500, 100061),
	(39, 2, 'entry', '12/06/2025', 2500, 54000),
	(40, 1, 'entry', '12/06/2025', 2250, 102561),
	(41, 2, 'entry', '12/06/2025', 2500, 56500),
	(42, 1, 'entry', '12/06/2025', 2250, 104811),
	(43, 3, 'entry', '12/06/2025', 5000, 0),
	(44, 1, 'entry', '12/06/2025', 2250, 107061),
	(45, 4, 'entry', '12/06/2025', 5000, 0),
	(46, 1, 'exit', '13/06/2025', 7, 109311),
	(47, 1, 'exit', '13/06/2025', 100, 109304),
	(48, 3, 'exit', '13/06/2025', 200, 5000),
	(49, 3, 'exit', '13/06/2025', 3000, 4800),
	(50, 1, 'exit', '13/06/2025', 225, 109204),
	(51, 1, 'exit', '13/06/2025', 375, 108979),
	(52, 1, 'exit', '13/06/2025', 650, 108604),
	(53, 1, 'exit', '13/06/2025', 1500, 107954),
	(54, 1, 'entry', '13/06/2025', 2500, 106454),
	(55, 1, 'exit', '19/06/2025', 1000, 108954),
	(56, 1, 'exit', '19/06/2025', 100, 107954),
	(57, 1, 'exit', '19/06/2025', 100, 107854),
	(58, 1, 'exit', '23/06/2025', 15000, 107754),
	(59, 1, 'exit', '23/06/2025', 50, 92754),
	(60, 1, 'exit', '26/06/2025', 2000, 92704);

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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Copiando dados para a tabela creawork.vehicles: ~8 rows (aproximadamente)
INSERT INTO `vehicles` (`id`, `Passport`, `vehicle`, `tax`, `plate`, `rental`, `arrest`, `engine`, `body`, `health`, `fuel`, `nitro`, `work`, `doors`, `windows`, `tyres`) VALUES
	(2, 1, '69charger', 1753314606, '14KWP917', 1752187997, 0, 995, 994, 994, 99, 0, 'false', '{"1":false,"2":false,"3":false,"4":false,"5":false,"0":false}', '{"1":1,"2":1,"3":1,"4":false,"5":false,"0":1}', '{"1":false,"2":true,"3":true,"4":false,"5":false,"6":false,"7":false,"0":false}'),
	(3, 1, 'fk8', 1750202089, '43AEG602', 1752189289, 0, 939, 932, 936, 65, 0, 'false', '{"1":false,"2":false,"3":false,"4":false,"5":false,"0":false}', '{"1":1,"2":false,"3":false,"4":1,"5":1,"0":false}', '{"1":false,"2":true,"3":true,"4":false,"5":false,"6":false,"7":false,"0":false}'),
	(4, 1, 'polvic', 1750205445, '79ZBS370', 0, 0, 1000, 1000, 1000, 100, 0, 'true', '', '', ''),
	(5, 1, 'komodapol', 1750205463, '18JER473', 0, 0, 1000, 1000, 1000, 100, 0, 'true', '', '', ''),
	(6, 1, 'ambulance2', 1750381853, '58AYD138', 0, 0, 910, 900, 900, 99, 0, 'true', '{"1":false,"2":false,"3":false,"4":false,"5":false,"0":false}', '{"1":1,"2":1,"3":1,"4":false,"5":false,"0":1}', '{"1":false,"2":true,"3":true,"4":false,"5":false,"6":false,"7":false,"0":false}'),
	(8, 1, 'taxi', 1750975036, '04DJP784', 0, 0, 1000, 1000, 1000, 99, 0, 'true', '{"1":false,"2":false,"3":false,"4":false,"5":false,"0":false}', '{"1":1,"2":1,"3":1,"4":false,"5":false,"0":1}', '{"1":false,"2":true,"3":true,"4":false,"5":false,"6":false,"7":false,"0":false}'),
	(9, 1, 'phantom', 1750975143, '56OKM838', 0, 0, 1000, 1000, 999, 81, 0, 'true', '{"1":false,"2":false,"3":false,"4":false,"5":false,"0":false}', '{"1":1,"2":false,"3":false,"4":false,"5":false,"0":1}', '{"1":true,"2":false,"3":false,"4":true,"5":true,"6":true,"7":true,"0":true}'),
	(10, 1, 'hauler2', 1750976002, '49LUI515', 0, 0, 997, 996, 995, 98, 0, 'true', '{"1":false,"2":false,"3":false,"4":false,"5":false,"0":false}', '{"1":1,"2":false,"3":false,"4":false,"5":false,"0":1}', '{"1":false,"2":false,"3":false,"4":true,"5":false,"6":false,"7":true,"0":false}');

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
