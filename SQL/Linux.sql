/*
Navicat MySQL Data Transfer

Source Server         : 123
Source Server Version : 50711
Source Host           : 127.0.0.1:3306
Source Database       : 

Target Server Type    : MYSQL
Target Server Version : 50711
File Encoding         : 65001

Date: 2016-05-24 02:47:34
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for Character_DATA
-- ----------------------------
DROP TABLE IF EXISTS `Character_DATA`;
CREATE TABLE `Character_DATA` (
  `CharacterID` int(11) NOT NULL AUTO_INCREMENT,
  `PlayerID` int(11) NOT NULL DEFAULT '1000',
  `PlayerUID` varchar(45) NOT NULL DEFAULT '0',
  `InstanceID` int(11) NOT NULL DEFAULT '0',
  `Datestamp` datetime DEFAULT NULL,
  `LastLogin` datetime NOT NULL,
  `Inventory` longtext,
  `Backpack` longtext,
  `Worldspace` varchar(70) NOT NULL DEFAULT '[]',
  `Medical` varchar(200) NOT NULL DEFAULT '[]',
  `Alive` tinyint(4) NOT NULL DEFAULT '1',
  `Generation` int(11) NOT NULL DEFAULT '1',
  `LastAte` datetime NOT NULL,
  `LastDrank` datetime NOT NULL,
  `KillsZ` int(11) NOT NULL DEFAULT '0',
  `HeadshotsZ` int(11) NOT NULL DEFAULT '0',
  `distanceFoot` int(11) NOT NULL DEFAULT '0',
  `duration` int(11) NOT NULL DEFAULT '0',
  `currentState` varchar(1000) NOT NULL DEFAULT '[[],[]]',
  `KillsH` int(11) NOT NULL DEFAULT '0',
  `Model` varchar(50) NOT NULL DEFAULT '"Survivor2_DZ"',
  `KillsB` int(11) NOT NULL DEFAULT '0',
  `Humanity` int(11) NOT NULL DEFAULT '2500',
  `last_updated` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`CharacterID`),
  KEY `PlayerID` (`PlayerID`),
  KEY `Alive_PlayerID` (`Alive`,`LastLogin`,`PlayerID`),
  KEY `PlayerUID` (`PlayerUID`),
  KEY `Alive_PlayerUID` (`Alive`,`LastLogin`,`PlayerUID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of Character_DATA
-- ----------------------------
INSERT INTO `Character_DATA` VALUES ('1', '1000', '76561198080809662', '1337', '2016-03-23 15:32:55', '2016-03-23 15:32:55', '[[],[\"HandRoadFlare\",\"ItemPainkiller\",\"ItemBandage\"],\"\"]', '[\"\",[[],[]],[[],[]]]', '[1,[3805.1,2268.54,0.001]]', '[false,false,false,false,false,false,false,12000,[],[0,0],0,\"O\",true,[0,0,0],false]', '1', '1', '2016-03-23 15:32:55', '2016-03-23 15:32:55', '0', '0', '32563', '5', '[[\"\",\"amovpercmstpsnonwnondnon\",36],[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]]', '0', 'Survivor2_DZ', '0', '2500', '2016-03-23 21:33:41');

-- ----------------------------
-- Table structure for Character_DEAD
-- ----------------------------
DROP TABLE IF EXISTS `Character_DEAD`;
CREATE TABLE `Character_DEAD` (
  `CharacterID` int(11) NOT NULL AUTO_INCREMENT,
  `PlayerID` int(11) NOT NULL DEFAULT '0',
  `PlayerUID` varchar(45) NOT NULL DEFAULT '0',
  `InstanceID` int(11) NOT NULL DEFAULT '0',
  `Datestamp` datetime DEFAULT NULL,
  `LastLogin` datetime NOT NULL,
  `Inventory` longtext,
  `Backpack` longtext,
  `Worldspace` varchar(70) NOT NULL DEFAULT '[]',
  `Medical` varchar(200) NOT NULL DEFAULT '[]',
  `Alive` tinyint(4) NOT NULL DEFAULT '1',
  `Generation` int(11) NOT NULL DEFAULT '1',
  `LastAte` datetime NOT NULL,
  `LastDrank` datetime NOT NULL,
  `KillsZ` int(11) NOT NULL DEFAULT '0',
  `HeadshotsZ` int(11) NOT NULL DEFAULT '0',
  `distanceFoot` int(11) NOT NULL DEFAULT '0',
  `duration` int(11) NOT NULL DEFAULT '0',
  `currentState` varchar(1000) NOT NULL DEFAULT '[[],[]]',
  `KillsH` int(11) NOT NULL DEFAULT '0',
  `Model` varchar(50) NOT NULL DEFAULT '"Survivor2_DZ"',
  `KillsB` int(11) NOT NULL DEFAULT '0',
  `Humanity` int(11) NOT NULL DEFAULT '2500',
  `last_updated` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`CharacterID`),
  KEY `PlayerID` (`PlayerID`),
  KEY `Alive_PlayerID` (`Alive`,`LastLogin`,`PlayerID`),
  KEY `PlayerUID` (`PlayerUID`),
  KEY `Alive_PlayerUID` (`Alive`,`LastLogin`,`PlayerUID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- ----------------------------
-- Records of Character_DEAD
-- ----------------------------

-- ----------------------------
-- Table structure for event_scheduler
-- ----------------------------
DROP TABLE IF EXISTS `event_scheduler`;
CREATE TABLE `event_scheduler` (
  `System` text,
  `LastRun` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of event_scheduler
-- ----------------------------
INSERT INTO `event_scheduler` VALUES ('3hRespawns', null);
INSERT INTO `event_scheduler` VALUES ('pCleanup', null);
INSERT INTO `event_scheduler` VALUES ('pCleanupBase', null);
INSERT INTO `event_scheduler` VALUES ('pMain', null);

-- ----------------------------
-- Table structure for Object_CLASSES
-- ----------------------------
DROP TABLE IF EXISTS `Object_CLASSES`;
CREATE TABLE `Object_CLASSES` (
  `Classname` varchar(32) NOT NULL DEFAULT '',
  `Chance` varchar(4) NOT NULL DEFAULT '0',
  `MaxNum` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `Damage` varchar(20) NOT NULL DEFAULT '0',
  `Type` text NOT NULL,
  PRIMARY KEY (`Classname`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of Object_CLASSES
-- ----------------------------
INSERT INTO `Object_CLASSES` VALUES ('ATV_CZ_EP1', '0.70', '6', '0.05000', 'atv');
INSERT INTO `Object_CLASSES` VALUES ('car_hatchback', '0.73', '3', '0.05000', 'car');
INSERT INTO `Object_CLASSES` VALUES ('datsun1_civil_3_open', '0.75', '3', '0.05000', 'car');
INSERT INTO `Object_CLASSES` VALUES ('Fishing_Boat', '0.61', '1', '0.05000', 'largeboat');
INSERT INTO `Object_CLASSES` VALUES ('S1203_TK_CIV_EP1', '0.69', '1', '0.05000', 'bus');
INSERT INTO `Object_CLASSES` VALUES ('tractor', '0.7', '1', '0.05000', 'farmvehicle');
INSERT INTO `Object_CLASSES` VALUES ('BAF_Offroad_D', '0.54', '1', '0.05000', 'car');
INSERT INTO `Object_CLASSES` VALUES ('UAZ_Unarmed_TK_EP1', '0.7', '2', '0.05000', 'car');
INSERT INTO `Object_CLASSES` VALUES ('UH1H_DZ', '0.59', '1', '0.05000', 'helicopter');
INSERT INTO `Object_CLASSES` VALUES ('UralCivil2', '0.67', '1', '0.05000', 'truck');
INSERT INTO `Object_CLASSES` VALUES ('V3S_Civ', '0.66', '1', '0.05000', 'truck');
INSERT INTO `Object_CLASSES` VALUES ('Volha_2_TK_CIV_EP1', '0.71', '2', '0.05000', 'car');
INSERT INTO `Object_CLASSES` VALUES ('Ikarus', '0.59', '1', '0.05000', 'bus');
INSERT INTO `Object_CLASSES` VALUES ('ATV_US_EP1', '0.70', '5', '0.05000', 'atv');
INSERT INTO `Object_CLASSES` VALUES ('BAF_Offroad_W', '0.54', '1', '0.05000', 'car');
INSERT INTO `Object_CLASSES` VALUES ('car_sedan', '0.59', '1', '0.05000', 'car');
INSERT INTO `Object_CLASSES` VALUES ('hilux1_civil_1_open', '0.59', '1', '0.05000', 'car');
INSERT INTO `Object_CLASSES` VALUES ('hilux1_civil_2_covered', '0.59', '1', '0.05000', 'car');
INSERT INTO `Object_CLASSES` VALUES ('hilux1_civil_3_open', '0.59', '1', '0.05000', 'car');
INSERT INTO `Object_CLASSES` VALUES ('Ikarus_TK_CIV_EP1', '0.59', '1', '0.05000', 'bus');
INSERT INTO `Object_CLASSES` VALUES ('LandRover_TK_CIV_EP1', '0.59', '1', '0.05000', 'car');
INSERT INTO `Object_CLASSES` VALUES ('MH6J_EP1', '0.32', '1', '0.05000', 'helicopter');
INSERT INTO `Object_CLASSES` VALUES ('Old_bike_TK_CIV_EP1', '0.64', '4', '0.05000', 'bike');
INSERT INTO `Object_CLASSES` VALUES ('Old_bike_TK_INS_EP1', '0.64', '4', '0.05000', 'bike');
INSERT INTO `Object_CLASSES` VALUES ('PBX', '0.59', '1', '0.05000', 'smallboat');
INSERT INTO `Object_CLASSES` VALUES ('Skoda', '0.68', '4', '0.05000', 'car');
INSERT INTO `Object_CLASSES` VALUES ('SkodaBlue', '0.68', '2', '0.05000', 'car');
INSERT INTO `Object_CLASSES` VALUES ('SkodaGreen', '0.68', '1', '0.05000', 'car');
INSERT INTO `Object_CLASSES` VALUES ('Smallboat_1', '0.59', '2', '0.05000', 'mediumboat');
INSERT INTO `Object_CLASSES` VALUES ('Smallboat_2', '0.59', '2', '0.05000', 'mediumboat');
INSERT INTO `Object_CLASSES` VALUES ('SUV_DZ', '0.59', '1', '0.05000', 'car');
INSERT INTO `Object_CLASSES` VALUES ('TentStorage', '0.59', '0', '0.05000', 'tent');
INSERT INTO `Object_CLASSES` VALUES ('TT650_Ins', '0.72', '2', '0.05000', 'motorcycle');
INSERT INTO `Object_CLASSES` VALUES ('TT650_TK_CIV_EP1', '0.72', '1', '0.05000', 'motorcycle');
INSERT INTO `Object_CLASSES` VALUES ('TT650_TK_EP1', '0.72', '1', '0.05000', 'motorcycle');
INSERT INTO `Object_CLASSES` VALUES ('UAZ_INS', '0.59', '2', '0.05000', 'car');
INSERT INTO `Object_CLASSES` VALUES ('UAZ_RU', '0.59', '1', '0.05000', 'car');
INSERT INTO `Object_CLASSES` VALUES ('UAZ_Unarmed_TK_CIV_EP1', '0.59', '3', '0.05000', 'car');
INSERT INTO `Object_CLASSES` VALUES ('UAZ_Unarmed_UN_EP1', '0.59', '1', '0.05000', 'car');
INSERT INTO `Object_CLASSES` VALUES ('UralCivil', '0.59', '1', '0.05000', 'truck');
INSERT INTO `Object_CLASSES` VALUES ('Mi17_DZ', '0.49', '1', '0.05000', 'helicopter');
INSERT INTO `Object_CLASSES` VALUES ('AN2_DZ', '1', '2', '0.05000', 'plane');
INSERT INTO `Object_CLASSES` VALUES ('Hedgehog_DZ', '0', '0', '0', 'Hedgehog');
INSERT INTO `Object_CLASSES` VALUES ('Wire_cat1', '0', '0', '0', 'wire');
INSERT INTO `Object_CLASSES` VALUES ('Sandbag1_DZ', '0', '0', '0', 'Sandbag');
INSERT INTO `Object_CLASSES` VALUES ('AH6X_DZ', '0.48', '1', '0.05000', 'helicopter');
INSERT INTO `Object_CLASSES` VALUES ('datsun1_civil_1_open', '0.59', '2', '0.05000', 'car');
INSERT INTO `Object_CLASSES` VALUES ('Lada1_TK_CIV_EP1', '0.59', '3', '0.05000', 'car');
INSERT INTO `Object_CLASSES` VALUES ('M1030', '0.58', '2', '0.05000', 'motorcycle');
INSERT INTO `Object_CLASSES` VALUES ('SUV_TK_EP1', '0.39', '1', '0.05000', 'car');
INSERT INTO `Object_CLASSES` VALUES ('VolhaLimo_TK_CIV_EP1', '0.49', '1', '0.05000', 'car');
INSERT INTO `Object_CLASSES` VALUES ('Lada2', '0.59', '2', '0', 'car');
INSERT INTO `Object_CLASSES` VALUES ('hilux1_civil_3_open_EP1', '0.59', '3', '0', 'car');
INSERT INTO `Object_CLASSES` VALUES ('LandRover_CZ_EP1', '0.59', '3', '0', 'car');
INSERT INTO `Object_CLASSES` VALUES ('HMMWV_DZ', '0.21', '2', '0', 'car');
INSERT INTO `Object_CLASSES` VALUES ('MH6J_DZ', '0.48', '1', '0.05000', 'helicopter');
INSERT INTO `Object_CLASSES` VALUES ('StashSmall', '0', '0', '0', 'StashSmall');
INSERT INTO `Object_CLASSES` VALUES ('StashMedium', '0', '0', '0', 'StashMedium');
INSERT INTO `Object_CLASSES` VALUES ('Pickup_PK_INS', '0.10', '1', '0.42500', 'car');

-- ----------------------------
-- Table structure for Object_DATA
-- ----------------------------
DROP TABLE IF EXISTS `Object_DATA`;
CREATE TABLE `Object_DATA` (
  `ObjectID` int(11) NOT NULL AUTO_INCREMENT,
  `ObjectUID` bigint(20) NOT NULL DEFAULT '0',
  `Instance` int(11) NOT NULL,
  `Classname` varchar(50) DEFAULT NULL,
  `Datestamp` datetime NOT NULL,
  `CharacterID` int(11) NOT NULL DEFAULT '0',
  `Worldspace` varchar(70) NOT NULL DEFAULT '[]',
  `Inventory` longtext,
  `Hitpoints` longtext NOT NULL,
  `Fuel` double(13,5) NOT NULL DEFAULT '1.00000',
  `Damage` double(13,5) NOT NULL DEFAULT '0.00000',
  `last_updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`ObjectID`),
  UNIQUE KEY `CheckUID` (`ObjectUID`,`Instance`),
  KEY `ObjectUID` (`ObjectUID`),
  KEY `Instance` (`Damage`,`Instance`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of Object_DATA
-- ----------------------------

-- ----------------------------
-- Table structure for Object_SPAWNS
-- ----------------------------
DROP TABLE IF EXISTS `Object_SPAWNS`;
CREATE TABLE `Object_SPAWNS` (
  `ObjectUID` bigint(20) NOT NULL DEFAULT '0',
  `Classname` varchar(32) DEFAULT NULL,
  `Worldspace` varchar(64) DEFAULT NULL,
  `Inventory` longtext,
  `Hitpoints` varchar(999) NOT NULL DEFAULT '[]',
  `MapID` varchar(255) NOT NULL DEFAULT '',
  `Last_changed` int(10) DEFAULT NULL,
  PRIMARY KEY (`ObjectUID`,`MapID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of Object_SPAWNS
-- ----------------------------
INSERT INTO `Object_SPAWNS` VALUES ('30728533', 'UAZ_Unarmed_TK_EP1', '[0,[12140.168, 12622.802,0]]', '[[[], []], [[\"20Rnd_762x51_DMR\"], [5]], [[], []]]', '[[\"palivo\",1],[\"motor\",1],[\"karoserie\",1],[\"wheel_1_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_2_2_steering\",1]]', '', null);
INSERT INTO `Object_SPAWNS` VALUES ('26883451', 'UAZ_Unarmed_TK_CIV_EP1', '[0,[6279.4966, 7810.3691,0]]', '[[[], []], [[\"20Rnd_762x51_DMR\"], [5]], [[], []]]', '[[\"palivo\",1],[\"motor\",1],[\"karoserie\",1],[\"wheel_1_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_2_2_steering\",1]]', '', null);
INSERT INTO `Object_SPAWNS` VALUES ('42231659', 'UAZ_Unarmed_UN_EP1', '[45,[6865.2432,2481.6943,0]]', '[[[], []], [[\"30Rnd_556x45_StanagSD\"], [5]], [[], []]]', '[[\"palivo\",1],[\"motor\",1],[\"karoserie\",1],[\"wheel_1_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_2_2_steering\",1]]', '', null);
INSERT INTO `Object_SPAWNS` VALUES ('30507947', 'UAZ_RU', '[157,[3693.0386, 5969.1489,0]]', '[[[], []], [[\"HandGrenade_west\"], [2]], [[], []]]', '[[\"palivo\",1],[\"motor\",1],[\"karoserie\",1],[\"wheel_1_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_2_2_steering\",1]]', '', null);
INSERT INTO `Object_SPAWNS` VALUES ('25844760', 'UAZ_Unarmed_TK_CIV_EP1', '[20,[13264.081,12167.432,0]]', '[[[], []], [[\"20Rnd_762x51_DMR\"], [5]], [[], []]]', '[[\"palivo\",1],[\"motor\",1],[\"karoserie\",1],[\"wheel_1_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_2_2_steering\",1]]', '', null);
INSERT INTO `Object_SPAWNS` VALUES ('37699964', 'UAZ_Unarmed_TK_CIV_EP1', '[223,[4817.6572, 2556.5034,0]]', '[[[], []], [[\"20Rnd_762x51_DMR\"], [5]], [[], []]]', '[[\"palivo\",1],[\"motor\",1],[\"karoserie\",1],[\"wheel_1_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_2_2_steering\",1]]', '', null);
INSERT INTO `Object_SPAWNS` VALUES ('10965544', 'UAZ_Unarmed_TK_EP1', '[337,[8120.3057,9305.4912,0]]', '[[[], []], [[\"20Rnd_762x51_DMR\"], [5]], [[], []]]', '[[\"palivo\",1],[\"motor\",1],[\"karoserie\",1],[\"wheel_1_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_2_2_steering\",1]]', '', null);
INSERT INTO `Object_SPAWNS` VALUES ('41727833', 'ATV_US_EP1', '[337,[3312.2793,11270.755,0]]', '[[[], []], [[\"ItemTent\", \"Item5Matchbox\"], [1, 1]], [[], []]]', '[[\"palivo\",1],[\"motor\",1],[\"karoserie\",1],[\"wheel_1_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_2_2_steering\",1]]', '', null);
INSERT INTO `Object_SPAWNS` VALUES ('75742533', 'ATV_US_EP1', '[50,[3684.0366, 5999.0117,0]]', '[[[], []], [[\"ItemTent\", \"Item5Matchbox\"], [1, 1]], [[], []]]', '[[\"palivo\",1],[\"motor\",1],[\"karoserie\",1],[\"wheel_1_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_2_2_steering\",1]]', '', null);
INSERT INTO `Object_SPAWNS` VALUES ('53529173', 'ATV_CZ_EP1', '[202,[11464.035, 11381.071,0]]', '[[[], []], [[\"Skin_Camo1_DZ\", \"ItemCompass\"], [1, 1]], [[], []]]', '[[\"palivo\",1],[\"motor\",1],[\"karoserie\",1],[\"wheel_1_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_2_2_steering\",1]]', '', null);
INSERT INTO `Object_SPAWNS` VALUES ('40418266', 'ATV_US_EP1', '[253,[11459.299,11386.546,0]]', '[[[], []], [[\"ItemTent\", \"Item5Matchbox\"], [1, 1]], [[], []]]', '[[\"palivo\",1],[\"motor\",1],[\"karoserie\",1],[\"wheel_1_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_2_2_steering\",1]]', '', null);
INSERT INTO `Object_SPAWNS` VALUES ('41503818', 'ATV_CZ_EP1', '[335,[8856.8359,2893.7903,0]]', '[[[], []], [[\"Skin_Camo1_DZ\", \"ItemCompass\"], [1, 1]], [[], []]]', '[[\"palivo\",1],[\"motor\",1],[\"karoserie\",1],[\"wheel_1_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_2_2_steering\",1]]', '', null);
INSERT INTO `Object_SPAWNS` VALUES ('86264294', 'SkodaBlue', '[353,[12869.565,4450.4077,0]]', '[[[], []], [[\"ItemWatch\", \"ItemKnife\"], [1, 1]], [[], []]]', '[[\"palivo\",1],[\"motor\",1],[\"karoserie\",1],[\"wheel_1_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_2_2_steering\",1]]', '', null);
INSERT INTO `Object_SPAWNS` VALUES ('6810018', 'Skoda', '[223,[6288.416, 7834.3521,0]]', '[[[\"Binocular\"], [1]], [[], []], [[\"CZ_VestPouch_EP1\"], [1]]]', '[[\"palivo\",1],[\"motor\",1],[\"karoserie\",1],[\"wheel_1_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_2_2_steering\",1]]', '', null);
INSERT INTO `Object_SPAWNS` VALUES ('75257214', 'SkodaGreen', '[306,[8125.7075,3166.3708,0]]', '[[[], []], [[\"Item5Matchbox\", \"ItemMap\"], [1, 1]], [[], []]]', '[[\"palivo\",1],[\"motor\",1],[\"karoserie\",1],[\"wheel_1_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_2_2_steering\",1]]', '', null);
INSERT INTO `Object_SPAWNS` VALUES ('55856021', 'ATV_US_EP1', '[284,[8854.9082,2891.5762,0]]', '[[[], []], [[\"ItemTent\", \"Item5Matchbox\"], [1, 1]], [[], []]]', '[[\"palivo\",1],[\"motor\",1],[\"karoserie\",1],[\"wheel_1_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_2_2_steering\",1]]', '', null);
INSERT INTO `Object_SPAWNS` VALUES ('53508464', 'TT650_Ins', '[291,[11945.78,9099.3633,0]]', '[[[], []], [[\"ItemJerrycan\"], [1]], [[], []]]', '[[\"motor\",1]]', '', null);
INSERT INTO `Object_SPAWNS` VALUES ('99974261', 'TT650_TK_EP1', '[151,[6592.686,2906.8245,0]]', '[[[], []], [[\"PartGeneric\"], [1]], [[], []]]', '[[\"motor\",1]]', '', null);
INSERT INTO `Object_SPAWNS` VALUES ('39345918', 'TT650_TK_CIV_EP1', '[372,[8762.8516, 11727.877,0]]', '[[[], []], [[\"PartWheel\"], [1]], [[], []]]', '[[\"motor\",1]]', '', null);
INSERT INTO `Object_SPAWNS` VALUES ('96806808', 'TT650_TK_CIV_EP1', '[52,[8713.4893, 7103.0518,0]]', '[[[], []], [[\"PartWheel\"], [1]], [[], []]]', '[[\"motor\",1]]', '', null);
INSERT INTO `Object_SPAWNS` VALUES ('65996290', 'Old_bike_TK_CIV_EP1', '[50,[8040.6777, 7086.5356,0]]', '[]', '[]', '', null);
INSERT INTO `Object_SPAWNS` VALUES ('39561031', 'Old_bike_TK_CIV_EP1', '[316,[7943.5068,6988.1763,0]]', '[]', '[]', '', null);
INSERT INTO `Object_SPAWNS` VALUES ('99816288', 'Old_bike_TK_INS_EP1', '[201,[8070.6958, 3358.7793,0]]', '[]', '[]', '', null);
INSERT INTO `Object_SPAWNS` VALUES ('80398351', 'Old_bike_TK_INS_EP1', '[179,[3474.3989, 2562.4915,0]]', '[]', '[]', '', null);
INSERT INTO `Object_SPAWNS` VALUES ('2542893', 'Old_bike_TK_INS_EP1', '[236,[1773.9318,2351.6221,0]]', '[]', '[]', '', null);
INSERT INTO `Object_SPAWNS` VALUES ('71519415', 'Old_bike_TK_CIV_EP1', '[236,[3699.9189,2474.2119,0]]', '[]', '[]', '', null);
INSERT INTO `Object_SPAWNS` VALUES ('49968400', 'Old_bike_TK_CIV_EP1', '[73,[8350.0947, 2480.542,0]]', '[]', '[]', '', null);
INSERT INTO `Object_SPAWNS` VALUES ('35283758', 'Old_bike_TK_INS_EP1', '[35,[8345.7227, 2482.6855,0]]', '[]', '[]', '', null);
INSERT INTO `Object_SPAWNS` VALUES ('26513596', 'Old_bike_TK_CIV_EP1', '[23,[3203.0916, 3988.6379,0]]', '[]', '[]', '', null);
INSERT INTO `Object_SPAWNS` VALUES ('26716708', 'Old_bike_TK_INS_EP1', '[191,[2782.7134,5285.5342,0]]', '[]', '[]', '', null);
INSERT INTO `Object_SPAWNS` VALUES ('54042757', 'Old_bike_TK_INS_EP1', '[155,[8680.75,2445.5315,0]]', '[]', '[]', '', null);
INSERT INTO `Object_SPAWNS` VALUES ('90063662', 'Old_bike_TK_CIV_EP1', '[155,[12158.999,3468.7563,0]]', '[]', '[]', '', null);
INSERT INTO `Object_SPAWNS` VALUES ('88190045', 'Old_bike_TK_INS_EP1', '[250,[11984.01,3835.9231,0]]', '[]', '[]', '', null);
INSERT INTO `Object_SPAWNS` VALUES ('70759242', 'Old_bike_TK_CIV_EP1', '[255,[10153.068,2219.3547,0]]', '[]', '[]', '', null);
INSERT INTO `Object_SPAWNS` VALUES ('89226080', 'UH1H_DZ2', '[60,[11279.154,4296.0205,0]]', '[[[], []], [[\"ItemSodaMtngreen\",\"ItemSodaMtngreenEmpty\"], [1, 2]], [[], []]]', '[[\"motor\",1],[\"elektronika\",1],[\"mala vrtule\",1],[\"velka vrtule\",1]]', '', null);
INSERT INTO `Object_SPAWNS` VALUES ('33852678', 'UH1H_DZ', '[133,[4211.8789,10735.168,0]]', '[[[], []], [[\"ItemSodaPeppsy\"], [5]], [[], []]]', '[[\"motor\",1],[\"elektronika\",1],[\"mala vrtule\",1],[\"velka vrtule\",1]]', '', null);
INSERT INTO `Object_SPAWNS` VALUES ('1585150', 'UH1H_DZ', '[52,[6874.0503,11432.864,0]]', '[[[], []], [[\"ItemSodaPeppsy\"], [5]], [[], []]]', '[[\"motor\",1],[\"elektronika\",1],[\"mala vrtule\",1],[\"velka vrtule\",1]]', '', null);
INSERT INTO `Object_SPAWNS` VALUES ('6367723', 'UH1H_DZ', '[58,[10571.7,2220.3101,0.0015564]]', '[[[], []], [[\"ItemSodaPeppsy\"], [5]], [[], []]]', '[[\"motor\",1],[\"elektronika\",1],[\"mala vrtule\",1],[\"velka vrtule\",1]]', '', null);
INSERT INTO `Object_SPAWNS` VALUES ('27083167', 'UH1H_DZ', '[359,[6377.8799,2757.8899,-0.048767101]]', '[[[], []], [[\"ItemSodaPeppsy\"], [5]], [[], []]]', '[[\"motor\",1],[\"elektronika\",1],[\"mala vrtule\",1],[\"velka vrtule\",1]]', '', null);
INSERT INTO `Object_SPAWNS` VALUES ('16312671', 'hilux1_civil_3_open', '[344,[2045.3989,7267.4165,0]]', '[[[], []], [[\"PartFueltank\", \"PartWheel\"], [1, 1]], [[], []]]', '[[\"palivo\",1],[\"motor\",1],[\"karoserie\",1],[\"wheel_1_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_2_2_steering\",1]]', '', null);
INSERT INTO `Object_SPAWNS` VALUES ('313856', 'hilux1_civil_3_open', '[133,[8310.9902, 3348.3579,0]]', '[[[], []], [[\"PartFueltank\", \"PartWheel\"], [1, 1]], [[], []]]', '[[\"palivo\",1],[\"motor\",1],[\"karoserie\",1],[\"wheel_1_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_2_2_steering\",1]]', '', null);
INSERT INTO `Object_SPAWNS` VALUES ('52631272', 'hilux1_civil_3_open', '[124,[11309.963, 6646.3989,0]]', '[[[], []], [[\"PartFueltank\", \"PartWheel\"], [1, 1]], [[], []]]', '[[\"palivo\",1],[\"motor\",1],[\"karoserie\",1],[\"wheel_1_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_2_2_steering\",1]]', '', null);
INSERT INTO `Object_SPAWNS` VALUES ('62214795', 'hilux1_civil_3_open', '[6,[11240.744, 5370.6128,0]]', '[[[], []], [[\"PartFueltank\", \"PartWheel\"], [1, 1]], [[], []]]', '[[\"palivo\",1],[\"motor\",1],[\"karoserie\",1],[\"wheel_1_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_2_2_steering\",1]]', '', null);
INSERT INTO `Object_SPAWNS` VALUES ('53180164', 'Ikarus_TK_CIV_EP1', '[230,[3762.5764,8736.1709,0]]', '[[[], []], [[\"ItemWatch\", \"ItemSodaPeppsy\"], [1, 3]], [[], []]]', '[[\"palivo\",1],[\"motor\",1],[\"karoserie\",1],[\"wheel_1_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_2_2_steering\",1]]', '', null);
INSERT INTO `Object_SPAWNS` VALUES ('79256439', 'Ikarus', '[279,[10628.433,8037.8188,0]]', '[[[], []], [[\"PartWheel\", \"ItemSodaPeppsy\"], [1, 3]], [[], []]]', '[[\"palivo\",1],[\"motor\",1],[\"karoserie\",1],[\"wheel_1_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_2_2_steering\",1]]', '', null);
INSERT INTO `Object_SPAWNS` VALUES ('36741707', 'Ikarus', '[245,[4580.3203,4515.9282,0]]', '[[[], []], [[\"PartWheel\", \"ItemSodaPeppsy\"], [1, 3]], [[], []]]', '[[\"palivo\",1],[\"motor\",1],[\"karoserie\",1],[\"wheel_1_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_2_2_steering\",1]]', '', null);
INSERT INTO `Object_SPAWNS` VALUES ('45939219', 'Ikarus_TK_CIV_EP1', '[333,[6040.0923,7806.5439,0]]', '[[[], []], [[\"ItemWatch\", \"ItemSodaPeppsy\"], [1, 3]], [[], []]]', '[[\"palivo\",1],[\"motor\",1],[\"karoserie\",1],[\"wheel_1_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_2_2_steering\",1]]', '', null);
INSERT INTO `Object_SPAWNS` VALUES ('19470979', 'Ikarus', '[76,[10314.745, 2147.5374,0]]', '[[[], []], [[\"PartWheel\", \"ItemSodaPeppsy\"], [1, 3]], [[], []]]', '[[\"palivo\",1],[\"motor\",1],[\"karoserie\",1],[\"wheel_1_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_2_2_steering\",1]]', '', null);
INSERT INTO `Object_SPAWNS` VALUES ('59537240', 'Ikarus_TK_CIV_EP1', '[59,[6705.8887, 2991.9358,0]]', '[[[], []], [[\"ItemWatch\", \"ItemSodaPeppsy\"], [1, 3]], [[], []]]', '[[\"palivo\",1],[\"motor\",1],[\"karoserie\",1],[\"wheel_1_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_2_2_steering\",1]]', '', null);
INSERT INTO `Object_SPAWNS` VALUES ('39273268', 'Tractor', '[195,[9681.8213,8947.2354,0]]', '[[[], []], [[\"ItemWire\", \"ItemJerrycan\"], [1, 1]], [[], []]]', '[[\"palivo\",1],[\"motor\",1],[\"karoserie\",1],[\"wheel_1_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_2_2_steering\",1]]', '', null);
INSERT INTO `Object_SPAWNS` VALUES ('17754622', 'Tractor', '[262,[3825.1318,8941.4873,0]]', '[[[], []], [[\"ItemWire\", \"ItemJerrycan\"], [1, 1]], [[], []]]', '[[\"palivo\",1],[\"motor\",1],[\"karoserie\",1],[\"wheel_1_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_2_2_steering\",1]]', '', null);
INSERT INTO `Object_SPAWNS` VALUES ('70953310', 'Tractor', '[19,[11246.52, 7534.7954,0]]', '[[[], []], [[\"ItemWire\", \"ItemJerrycan\"], [1, 1]], [[], []]]', '[[\"palivo\",1],[\"motor\",1],[\"karoserie\",1],[\"wheel_1_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_2_2_steering\",1]]', '', null);
INSERT INTO `Object_SPAWNS` VALUES ('1502689', 'S1203_TK_CIV_EP1', '[19,[11066.828,7915.2275,0]]', '[[[\"Makarov\"], [1]], [[\"FoodCanBakedBeans\"], [3]], [[], []]]', '[[\"palivo\",1],[\"motor\",1],[\"karoserie\",1],[\"wheel_1_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_2_2_steering\",1]]', '', null);
INSERT INTO `Object_SPAWNS` VALUES ('94653519', 'S1203_TK_CIV_EP1', '[352,[12058.555,3577.8667,0]]', '[[[\"Makarov\"], [1]], [[\"FoodCanBakedBeans\"], [3]], [[], []]]', '[[\"palivo\",1],[\"motor\",1],[\"karoserie\",1],[\"wheel_1_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_2_2_steering\",1]]', '', null);
INSERT INTO `Object_SPAWNS` VALUES ('68759530', 'S1203_TK_CIV_EP1', '[218,[11940.854, 8872.8389,0]]', '[[[\"Makarov\"], [1]], [[\"FoodCanBakedBeans\"], [3]], [[], []]]', '[[\"palivo\",1],[\"motor\",1],[\"karoserie\",1],[\"wheel_1_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_2_2_steering\",1]]', '', null);
INSERT INTO `Object_SPAWNS` VALUES ('59837095', 'S1203_TK_CIV_EP1', '[346,[13386.471,6604.0098,0]]', '[[[\"Makarov\"], [1]], [[\"FoodCanBakedBeans\"], [3]], [[], []]]', '[[\"palivo\",1],[\"motor\",1],[\"karoserie\",1],[\"wheel_1_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_2_2_steering\",1]]', '', null);
INSERT INTO `Object_SPAWNS` VALUES ('92906892', 'V3S_Civ', '[178,[13276.482, 6098.4463,0]]', '[[[\"MR43\"], [1]], [[\"PartEngine\"], [1]], [[], []]]', '[[\"palivo\",1],[\"motor\",1],[\"karoserie\",1],[\"wheel_1_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_2_2_steering\",1]]', '', null);
INSERT INTO `Object_SPAWNS` VALUES ('85023176', 'UralCivil', '[338,[1890.9952,12417.333,0]]', '[[[], []], [[\"PartWheel\", \"ItemToolbox\", \"ItemTankTrap\"], [1, 1, 1]], [[], []]]', '[[\"palivo\",1],[\"motor\",1],[\"karoserie\",1],[\"wheel_1_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_2_2_steering\",1]]', '', null);
INSERT INTO `Object_SPAWNS` VALUES ('46395206', 'car_hatchback', '[226,[1975.1283, 9150.0195,0]]', '[[[\"LeeEnfield\"], [1]], [[\"5x_22_LR_17_HMR\"], [3]], [[], []]]', '[[\"palivo\",1],[\"motor\",1],[\"karoserie\",1],[\"wheel_1_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_2_2_steering\",1]]', '', null);
INSERT INTO `Object_SPAWNS` VALUES ('76906508', 'car_hatchback', '[315,[7429.4849,5157.8682,0]]', '[[[\"LeeEnfield\"], [1]], [[\"5x_22_LR_17_HMR\"], [3]], [[], []]]', '[[\"palivo\",1],[\"motor\",1],[\"karoserie\",1],[\"wheel_1_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_2_2_steering\",1]]', '', null);
INSERT INTO `Object_SPAWNS` VALUES ('45346927', 'Fishing_Boat', '[315,[8317.2676,2348.6055,0]]', '[]', '[[\"motor\",1]]', '', null);
INSERT INTO `Object_SPAWNS` VALUES ('96015113', 'Fishing_Boat', '[315,[13222.181,10015.431,0]]', '[]', '[[\"motor\",1]]', '', null);
INSERT INTO `Object_SPAWNS` VALUES ('44034787', 'PBX', '[55,[13454.882, 13731.796,0]]', '[[[], []], [[\"ItemFlashlightRed\"], [1]], [[\"DZ_Backpack_EP1\"], [1]]]', '[[\"motor\",1]]', '', null);
INSERT INTO `Object_SPAWNS` VALUES ('32128600', 'Smallboat_1', '[245,[14417.589,12886.104,0]]', '[]', '[[\"motor\",1]]', '', null);
INSERT INTO `Object_SPAWNS` VALUES ('28538641', 'Smallboat_1', '[268,[13098.13, 8250.8828,0]]', '[]', '[[\"motor\",1]]', '', null);
INSERT INTO `Object_SPAWNS` VALUES ('46307410', 'Volha_2_TK_CIV_EP1', '[205,[9731.1514,8937.7998,0]]', '[[[], []], [[\"ItemSodaPeppsy\", \"FoodCanFrankBeans\"], [3, 3]], [[], []]]', '[[\"palivo\",1],[\"motor\",1],[\"karoserie\",1],[\"wheel_1_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_2_2_steering\",1]]', '', null);
INSERT INTO `Object_SPAWNS` VALUES ('45921132', 'Volha_1_TK_CIV_EP1', '[337,[9715.0352,6522.8286,0]]', '[[[], []], [[\"ItemSodaPeppsy\", \"FoodCanBakedBeans\"], [3, 3]], [[], []]]', '[[\"palivo\",1],[\"motor\",1],[\"karoserie\",1],[\"wheel_1_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_2_2_steering\",1]]', '', null);
INSERT INTO `Object_SPAWNS` VALUES ('90683431', 'Volha_1_TK_CIV_EP1', '[241,[2614.0862,5079.6357,0]]', '[[[], []], [[\"ItemSodaPeppsy\", \"FoodCanBakedBeans\"], [3, 3]], [[], []]]', '[[\"palivo\",1],[\"motor\",1],[\"karoserie\",1],[\"wheel_1_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_2_2_steering\",1]]', '', null);
INSERT INTO `Object_SPAWNS` VALUES ('15653764', 'Volha_2_TK_CIV_EP1', '[18,[10827.634, 2701.5688,0]]', '[[[], []], [[\"ItemSodaPeppsy\", \"FoodCanFrankBeans\"], [3, 3]], [[], []]]', '[[\"palivo\",1],[\"motor\",1],[\"karoserie\",1],[\"wheel_1_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_2_2_steering\",1]]', '', null);
INSERT INTO `Object_SPAWNS` VALUES ('6218531', 'Volha_1_TK_CIV_EP1', '[222,[5165.7231,2375.7642,0]]', '[[[], []], [[\"ItemSodaPeppsy\", \"FoodCanBakedBeans\"], [3, 3]], [[], []]]', '[[\"palivo\",1],[\"motor\",1],[\"karoserie\",1],[\"wheel_1_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_2_2_steering\",1]]', '', null);
INSERT INTO `Object_SPAWNS` VALUES ('84131366', 'Volha_2_TK_CIV_EP1', '[207,[1740.8503,3622.6938,0]]', '[[[], []], [[\"ItemSodaPeppsy\", \"FoodCanFrankBeans\"], [3, 3]], [[], []]]', '[[\"palivo\",1],[\"motor\",1],[\"karoserie\",1],[\"wheel_1_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_2_2_steering\",1]]', '', null);
INSERT INTO `Object_SPAWNS` VALUES ('2001240', 'SUV_DZ', '[266,[9157.8408, 11019.819,0]]', '[[[], []], [[\"Pipebomb\"], [1]], [[], []]]', '[[\"palivo\",1],[\"motor\",1],[\"karoserie\",1],[\"wheel_1_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_2_2_steering\",1]]', '', null);
INSERT INTO `Object_SPAWNS` VALUES ('57612106', 'car_sedan', '[222,[12360.468, 10817.882,0]]', '[[[], []], [[\"ItemFlashlight\", \"ItemMap\"], [1, 1]], [[\"DZ_ALICE_Pack_EP1\"], [1]]]', '[[\"palivo\",1],[\"motor\",1],[\"karoserie\",1],[\"wheel_1_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_2_2_steering\",1]]', '', null);
INSERT INTO `Object_SPAWNS` VALUES ('82056815', 'UH1H_DZ', '[310,[6365.7402,7795.3501,-0.048767101]]', '[[[], []], [[\"ItemSodaPeppsy\"], [5]], [[], []]]', '[[\"motor\",1],[\"elektronika\",1],[\"mala vrtule\",1],[\"velka vrtule\",1]]', '', null);
INSERT INTO `Object_SPAWNS` VALUES ('37447759', 'UH1H_DZ', '[14,[13308.511,3227.0215,0]]', '[[[], []], [[\"ItemSodaPeppsy\"], [5]], [[], []]]', '[[\"motor\",1],[\"elektronika\",1],[\"mala vrtule\",1],[\"velka vrtule\",1]]', '', null);
INSERT INTO `Object_SPAWNS` VALUES ('41068355', 'UH1H_DZ', '[265,[7695.0356,3991.2056,0]]', '[[[], []], [[\"ItemSodaPeppsy\"], [5]], [[], []]]', '[[\"motor\",1],[\"elektronika\",1],[\"mala vrtule\",1],[\"velka vrtule\",1]]', '', null);
INSERT INTO `Object_SPAWNS` VALUES ('92998502', 'UH1H_DZ', '[22,[12009.904,12636.732,0]]', '[[[], []], [[\"ItemSodaPeppsy\"], [5]], [[], []]]', '[[\"motor\",1],[\"elektronika\",1],[\"mala vrtule\",1],[\"velka vrtule\",1]]', '', null);
INSERT INTO `Object_SPAWNS` VALUES ('41787450', 'AH6X_DZ', '[2,[12010.7,12637.2,0]]', '[[[\"Binocular\"],[1]],[[\"TrashJackDaniels\",\"FoodCanFrankBeans\"],[1,1]],[[],[]]]', '[[\"glass1\",1],[\"glass2\",1],[\"glass3\",1],[\"glass4\",1],[\"glass5\",1],[\"NEtrup\",1.1998],[\"motor\",1],[\"elektronika\",1],[\"mala vrtule\",1],[\"velka vrtule\",1],[\"munice\",1.07084],[\"sklo predni P\",1.04818],[\"sklo predni L\",1.11816],[\"glass6\",1.0402]]', '', null);
INSERT INTO `Object_SPAWNS` VALUES ('29941745', 'AH6X_DZ', '[113,[6880.2007,11454.291,0]]', '[[[\"Binocular\"],[1]],[[\"TrashJackDaniels\",\"FoodCanFrankBeans\"],[1,1]],[[],[]]]', '[[\"glass1\",1],[\"glass2\",1],[\"glass3\",1],[\"glass4\",1],[\"glass5\",1],[\"NEtrup\",1.1998],[\"motor\",1],[\"elektronika\",1],[\"mala vrtule\",1],[\"velka vrtule\",1],[\"munice\",1.07084],[\"sklo predni P\",1.04818],[\"sklo predni L\",1.11816],[\"glass6\",1.0402]]', '', null);
INSERT INTO `Object_SPAWNS` VALUES ('24346379', 'Mi17_DZ', '[156,[7660.271,3982.0063,0]]', '[[[],[]],[[\"ItemSodaMtngreen\"],[2]],[[],[]]]', '[[\"glass1\",1],[\"glass2\",1],[\"glass3\",1],[\"glass4\",1],[\"glass5\",1],[\"NEtrup\",1.1998],[\"motor\",1],[\"elektronika\",1],[\"mala vrtule\",1],[\"velka vrtule\",1],[\"munice\",1.07084],[\"sklo predni P\",1.04818],[\"sklo predni L\",1.11816],[\"glass6\",1.0402]]', '', null);
INSERT INTO `Object_SPAWNS` VALUES ('31906663', 'Mi17_DZ', '[-188,[7220.6538,9116.3428,0]]', '[[[],[]],[[\"ItemSodaMtngreen\"],[2]],[[],[]]]', '[[\"glass1\",1],[\"glass2\",1],[\"glass3\",1],[\"glass4\",1],[\"glass5\",1],[\"NEtrup\",1.1998],[\"motor\",1],[\"elektronika\",1],[\"mala vrtule\",1],[\"velka vrtule\",1],[\"munice\",1.07084],[\"sklo predni P\",1.04818],[\"sklo predni L\",1.11816],[\"glass6\",1.0402]]', '', null);
INSERT INTO `Object_SPAWNS` VALUES ('86494184', 'Mi17_DZ', '[4,[13584.044,3199.9648,0]]', '[[[],[]],[[\"ItemSodaMtngreen\"],[2]],[[],[]]]', '[[\"glass1\",1],[\"glass2\",1],[\"glass3\",1],[\"glass4\",1],[\"glass5\",1],[\"NEtrup\",1.1998],[\"motor\",1],[\"elektronika\",1],[\"mala vrtule\",1],[\"velka vrtule\",1],[\"munice\",1.07084],[\"sklo predni P\",1.04818],[\"sklo predni L\",1.11816],[\"glass6\",1.0402]]', '', null);
INSERT INTO `Object_SPAWNS` VALUES ('36750931', 'AN2_DZ', '[252,[4530.52,10785.1,0]]', '[]', '[]', '', null);
INSERT INTO `Object_SPAWNS` VALUES ('24272110', 'BAF_Offroad_D', '[162,[3702.04,6044.3101,0]]', '[[[],[]],[[\"HandGrenade_West\",\"SmokeShell\",\"SmokeShellRed\",\"SmokeShellYellow\",\"SmokeShellGreen\",\"ItemWaterbottle\",\"30Rnd_556x45_Stanag\",\"20Rnd_762x51_DMR\",\"ItemTent\"],[10,1,1,1,1,1,20,10,1]],[[],[]]]', '[[\"glass1\",1],[\"glass2\",1],[\"glass3\",1],[\"motor\",0.8],[\"palivo\",0.8],[\"wheel_1_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_2_2_steering\",1],[\"sklo predni P\",1],[\"sklo predni L\",1],[\"karoserie\",1],[\"wheel_1_4_steering\",1],[\"wheel_2_4_steering\",1],[\"wheel_1_3_steering\",1],[\"wheel_2_3_steering\",1],[\"glass4\",1]]', '', null);
INSERT INTO `Object_SPAWNS` VALUES ('11107760', 'BAF_Offroad_D', '[141,[11953.279,9107.3896,0]]', '[[[],[]],[[\"HandGrenade_West\",\"SmokeShell\",\"SmokeShellRed\",\"SmokeShellYellow\",\"SmokeShellGreen\",\"ItemWaterbottle\",\"30Rnd_556x45_Stanag\",\"20Rnd_762x51_DMR\",\"ItemTent\"],[10,1,1,1,1,1,20,10,1]],[[],[]]]', '[[\"glass1\",1],[\"glass2\",1],[\"glass3\",1],[\"motor\",0.8],[\"palivo\",0.8],[\"wheel_1_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_2_2_steering\",1],[\"sklo predni P\",1],[\"sklo predni L\",1],[\"karoserie\",1],[\"wheel_1_4_steering\",1],[\"wheel_2_4_steering\",1],[\"wheel_1_3_steering\",1],[\"wheel_2_3_steering\",1],[\"glass4\",1]]', '', null);
INSERT INTO `Object_SPAWNS` VALUES ('82722474', 'BAF_Offroad_W', '[71,[3708.5,5999.4199,0]]', '[[[],[]],[[\"HandGrenade_West\",\"SmokeShell\",\"SmokeShellRed\",\"SmokeShellYellow\",\"SmokeShellGreen\",\"ItemWaterbottle\",\"30Rnd_556x45_Stanag\",\"20Rnd_762x51_DMR\",\"ItemTent\"],[10,1,1,1,1,1,20,10,1]],[[],[]]]', '[[\"glass1\",1],[\"glass2\",1],[\"glass3\",1],[\"motor\",0.8],[\"palivo\",0.8],[\"wheel_1_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_2_2_steering\",1],[\"sklo predni P\",1],[\"sklo predni L\",1],[\"karoserie\",1],[\"wheel_1_4_steering\",1],[\"wheel_2_4_steering\",1],[\"wheel_1_3_steering\",1],[\"wheel_2_3_steering\",1],[\"glass4\",1]]', '', null);
INSERT INTO `Object_SPAWNS` VALUES ('80289092', 'BAF_Offroad_W', '[322,[7201.5181,3034.3232,0]]', '[[[],[]],[[\"HandGrenade_West\",\"SmokeShell\",\"SmokeShellRed\",\"SmokeShellYellow\",\"SmokeShellGreen\",\"ItemWaterbottle\",\"30Rnd_556x45_Stanag\",\"20Rnd_762x51_DMR\",\"ItemTent\"],[10,1,1,1,1,1,20,10,1]],[[],[]]]', '[[\"glass1\",1],[\"glass2\",1],[\"glass3\",1],[\"motor\",0.8],[\"palivo\",0.8],[\"wheel_1_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_2_2_steering\",1],[\"sklo predni P\",1],[\"sklo predni L\",1],[\"karoserie\",1],[\"wheel_1_4_steering\",1],[\"wheel_2_4_steering\",1],[\"wheel_1_3_steering\",1],[\"wheel_2_3_steering\",1],[\"glass4\",1]]', '', null);
INSERT INTO `Object_SPAWNS` VALUES ('53278043', 'MH6J_DZ', '[122,[10137.868,12049.376,-6.1035156e-005]]', '[[[],[]],[[\"1Rnd_Smoke_M203\", \"7Rnd_45ACP_1911\", \"30Rnd_556x45_StanagSD\", \"200Rnd_556x45_M249\", \"FoodCanPasta\", \"15Rnd_W1866_Slug\", \"5x_22_LR_17_HMR\", \"15Rnd_9x19_M9SD\", \"17Rnd_9x19_glock17\", \"100Rnd_762x51_M240\", \"6Rnd_45ACP\", \"8Rnd_9x18_Makarov\"],[2,1,1,1,1,1,1,1,1,1,1,1]],[[\"DZ_Backpack_EP1\"],[1]]]', '[[\"motor\",1],[\"elektronika\",1],[\"mala vrtule\",1],[\"velka vrtule\",1]]', '', null);
INSERT INTO `Object_SPAWNS` VALUES ('25522943', 'HMMWV_DZ', '[0,[13441.056,12003.912,4.5776367e-005]]', '[[[\"AK_47_M\"],[1]],[[\"PartWoodPile\", \"ItemBandage\", \"HandGrenade_west\", \"6Rnd_45ACP\", \"ItemEpinephrine\", \"8Rnd_B_Beneli_74Slug\", \"HandChemBlue\", \"8Rnd_B_Beneli_Pellets\", \"PartEngine\", \"17Rnd_9x19_glock17\", \"ItemTent\"],[1,2,1,1,1,1,1,1,1,1,1]],[[\"DZ_CivilBackpack_EP1\"],[1]]]', '[[\"palivo\",1],[\"motor\",1],[\"karoserie\",1],[\"wheel_1_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_2_2_steering\",1]]', '', null);
INSERT INTO `Object_SPAWNS` VALUES ('32124125', 'AN2_DZ', '[32,[12492,12515,0]]', '[]', '[]', '', null);
INSERT INTO `Object_SPAWNS` VALUES ('12466104', 'Pickup_PK_INS', '[12,[4662.13,10436,-3]]', '[[[],[]],[[\"HandGrenade_West\",\"ItemWaterbottle\",\"30Rnd_556x45_Stanag\"],[5,1,6]],[[],[]]]', '[[\"glass1\",1],[\"glass2\",1],[\"glass3\",1],[\"motor\",0.8],[\"palivo\",0.8],[\"wheel_1_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_2_2_steering\",1],[\"karoserie\",1],[\"glass4\",1]]', '', null);
INSERT INTO `Object_SPAWNS` VALUES ('12700771', 'Pickup_PK_INS', '[-24,[7006.14,7717.57,-6]]', '[[[],[]],[[\"HandGrenade_West\",\"ItemWaterbottle\",\"30Rnd_556x45_Stanag\"],[5,1,6]],[[],[]]]', '[[\"glass1\",1],[\"glass2\",1],[\"glass3\",1],[\"motor\",0.8],[\"palivo\",0.8],[\"wheel_1_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_2_2_steering\",1],[\"karoserie\",1],[\"glass4\",1]]', '', null);
INSERT INTO `Object_SPAWNS` VALUES ('36533865', 'Offroad_DSHKM_INS', '[363,[5337.62,8656.55,0]]', '[[[],[]],[[],[]],[[],[]]]', '[[\"glass1\",1],[\"glass2\",1],[\"glass3\",1],[\"motor\",0.8],[\"palivo\",0.8],[\"wheel_1_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_2_2_steering\",1],[\"karoserie\",1],[\"glass4\",1]]', '', null);
INSERT INTO `Object_SPAWNS` VALUES ('16462967', 'Offroad_DSHKM_INS', '[-169,[4625.61,9675.62,0]]', '[[[],[]],[[],[]],[[],[]]]', '[[\"glass1\",1],[\"glass2\",1],[\"glass3\",1],[\"motor\",0.8],[\"palivo\",0.8],[\"wheel_1_1_steering\",1],[\"wheel_1_2_steering\",1],[\"wheel_2_1_steering\",1],[\"wheel_2_2_steering\",1],[\"karoserie\",1],[\"glass4\",1]]', '', null);

-- ----------------------------
-- Table structure for Player_DATA
-- ----------------------------
DROP TABLE IF EXISTS `Player_DATA`;
CREATE TABLE `Player_DATA` (
  `playerID` int(11) NOT NULL DEFAULT '0',
  `playerUID` varchar(45) NOT NULL DEFAULT '0',
  `playerName` varchar(50) NOT NULL DEFAULT 'Null',
  `playerMorality` int(11) NOT NULL DEFAULT '0',
  `playerSex` int(11) NOT NULL DEFAULT '0',
  KEY `playerID` (`playerID`),
  KEY `playerUID` (`playerUID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of Player_DATA
-- ----------------------------
INSERT INTO `Player_DATA` VALUES ('0', '76561198080809662', 'ShootingBlanks', '0', '0');

-- ----------------------------
-- Table structure for Player_LOGIN
-- ----------------------------
DROP TABLE IF EXISTS `Player_LOGIN`;
CREATE TABLE `Player_LOGIN` (
  `LoginID` int(11) NOT NULL AUTO_INCREMENT,
  `PlayerUID` varchar(45) NOT NULL,
  `CharacterID` int(11) NOT NULL DEFAULT '0',
  `datestamp` datetime NOT NULL,
  `Action` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`LoginID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of Player_LOGIN
-- ----------------------------
INSERT INTO `Player_LOGIN` VALUES ('1', '76561198080809662', '1', '2016-03-23 15:32:55', '1');
INSERT INTO `Player_LOGIN` VALUES ('2', '76561198080809662', '1', '2016-03-23 15:33:40', '0');

-- ----------------------------
-- Table structure for Vehicle_GROUPS
-- ----------------------------
DROP TABLE IF EXISTS `Vehicle_GROUPS`;
CREATE TABLE `Vehicle_GROUPS` (
  `ID` int(11) NOT NULL,
  `MaxNum` int(11) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='0 Helicopters\r\n1 Military cars (Landrover W, Landrover D, HMMWV)\r\n2 Armed cars\r\n3 Bikes\r\n4 Trucks\r\n5 Buses\r\n6 Civilian cars\r\n7 Civilian cars high end\r\n8 Civilian cars low end\r\n9 AN-2\r\n10 UH-1H';

-- ----------------------------
-- Records of Vehicle_GROUPS
-- ----------------------------
INSERT INTO `Vehicle_GROUPS` VALUES ('0', '4');
INSERT INTO `Vehicle_GROUPS` VALUES ('1', '3');
INSERT INTO `Vehicle_GROUPS` VALUES ('2', '2');
INSERT INTO `Vehicle_GROUPS` VALUES ('3', '8');
INSERT INTO `Vehicle_GROUPS` VALUES ('4', '2');
INSERT INTO `Vehicle_GROUPS` VALUES ('5', '2');
INSERT INTO `Vehicle_GROUPS` VALUES ('6', '15');
INSERT INTO `Vehicle_GROUPS` VALUES ('9', '1');
INSERT INTO `Vehicle_GROUPS` VALUES ('10', '2');

-- ----------------------------
-- Table structure for Vehicle_HITPOINTS
-- ----------------------------
DROP TABLE IF EXISTS `Vehicle_HITPOINTS`;
CREATE TABLE `Vehicle_HITPOINTS` (
  `ID` int(11) NOT NULL,
  `PartName` varchar(255) CHARACTER SET latin1 NOT NULL,
  `MinDamage` double(20,10) NOT NULL DEFAULT '0.5000000000',
  `MaxDamage` double(20,10) NOT NULL DEFAULT '1.0000000000',
  PRIMARY KEY (`ID`,`PartName`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of Vehicle_HITPOINTS
-- ----------------------------
INSERT INTO `Vehicle_HITPOINTS` VALUES ('1', 'palivo', '0.6000000000', '0.8000000000');
INSERT INTO `Vehicle_HITPOINTS` VALUES ('1', 'motor', '0.6000000000', '0.8000000000');
INSERT INTO `Vehicle_HITPOINTS` VALUES ('1', 'karoserie', '0.6000000000', '1.0000000000');
INSERT INTO `Vehicle_HITPOINTS` VALUES ('1', 'wheel_1_1_steering', '0.6000000000', '1.0000000000');
INSERT INTO `Vehicle_HITPOINTS` VALUES ('1', 'wheel_1_2_steering', '0.6000000000', '1.0000000000');
INSERT INTO `Vehicle_HITPOINTS` VALUES ('1', 'wheel_2_1_steering', '0.6000000000', '1.0000000000');
INSERT INTO `Vehicle_HITPOINTS` VALUES ('1', 'wheel_2_2_steering', '0.6000000000', '1.0000000000');
INSERT INTO `Vehicle_HITPOINTS` VALUES ('2', 'motor', '0.6000000000', '0.8000000000');
INSERT INTO `Vehicle_HITPOINTS` VALUES ('3', 'motor', '0.6000000000', '0.8000000000');
INSERT INTO `Vehicle_HITPOINTS` VALUES ('3', 'elektronika', '0.6000000000', '1.0000000000');
INSERT INTO `Vehicle_HITPOINTS` VALUES ('3', 'mala vrtule', '0.6000000000', '1.0000000000');
INSERT INTO `Vehicle_HITPOINTS` VALUES ('3', 'velka vrtule', '0.6000000000', '1.0000000000');
INSERT INTO `Vehicle_HITPOINTS` VALUES ('4', 'glass1', '0.6000000000', '1.0000000000');
INSERT INTO `Vehicle_HITPOINTS` VALUES ('4', 'glass2', '0.6000000000', '1.0000000000');
INSERT INTO `Vehicle_HITPOINTS` VALUES ('4', 'glass3', '0.6000000000', '1.0000000000');
INSERT INTO `Vehicle_HITPOINTS` VALUES ('4', 'glass4', '0.6000000000', '1.0000000000');
INSERT INTO `Vehicle_HITPOINTS` VALUES ('4', 'glass5', '0.6000000000', '1.0000000000');
INSERT INTO `Vehicle_HITPOINTS` VALUES ('4', 'NEtrup', '0.6000000000', '1.0000000000');
INSERT INTO `Vehicle_HITPOINTS` VALUES ('4', 'motor', '0.6000000000', '0.8000000000');
INSERT INTO `Vehicle_HITPOINTS` VALUES ('4', 'elektronika', '0.6000000000', '1.0000000000');
INSERT INTO `Vehicle_HITPOINTS` VALUES ('4', 'mala vrtule', '0.6000000000', '1.0000000000');
INSERT INTO `Vehicle_HITPOINTS` VALUES ('4', 'velka vrtule', '0.6000000000', '1.0000000000');
INSERT INTO `Vehicle_HITPOINTS` VALUES ('4', 'munice', '0.6000000000', '1.0000000000');
INSERT INTO `Vehicle_HITPOINTS` VALUES ('4', 'sklo predni P', '0.6000000000', '1.0000000000');
INSERT INTO `Vehicle_HITPOINTS` VALUES ('4', 'sklo predni L', '0.6000000000', '1.0000000000');
INSERT INTO `Vehicle_HITPOINTS` VALUES ('4', 'glass6', '0.6000000000', '1.0000000000');
INSERT INTO `Vehicle_HITPOINTS` VALUES ('5', 'glass1', '0.6000000000', '1.0000000000');
INSERT INTO `Vehicle_HITPOINTS` VALUES ('5', 'glass2', '0.6000000000', '1.0000000000');
INSERT INTO `Vehicle_HITPOINTS` VALUES ('5', 'glass3', '0.6000000000', '1.0000000000');
INSERT INTO `Vehicle_HITPOINTS` VALUES ('5', 'motor', '0.6000000000', '0.8000000000');
INSERT INTO `Vehicle_HITPOINTS` VALUES ('5', 'palivo', '0.6000000000', '0.8000000000');
INSERT INTO `Vehicle_HITPOINTS` VALUES ('5', 'wheel_1_1_steering', '0.6000000000', '1.0000000000');
INSERT INTO `Vehicle_HITPOINTS` VALUES ('5', 'wheel_1_2_steering', '0.6000000000', '1.0000000000');
INSERT INTO `Vehicle_HITPOINTS` VALUES ('5', 'wheel_2_1_steering', '0.6000000000', '1.0000000000');
INSERT INTO `Vehicle_HITPOINTS` VALUES ('5', 'wheel_2_2_steering', '0.6000000000', '1.0000000000');
INSERT INTO `Vehicle_HITPOINTS` VALUES ('5', 'sklo predni P', '0.6000000000', '1.0000000000');
INSERT INTO `Vehicle_HITPOINTS` VALUES ('5', 'sklo predni L', '0.6000000000', '1.0000000000');
INSERT INTO `Vehicle_HITPOINTS` VALUES ('5', 'karoserie', '0.6000000000', '1.0000000000');
INSERT INTO `Vehicle_HITPOINTS` VALUES ('5', 'wheel_1_4_steering', '0.6000000000', '1.0000000000');
INSERT INTO `Vehicle_HITPOINTS` VALUES ('5', 'wheel_2_4_steering', '0.6000000000', '1.0000000000');
INSERT INTO `Vehicle_HITPOINTS` VALUES ('5', 'wheel_1_3_steering', '0.6000000000', '1.0000000000');
INSERT INTO `Vehicle_HITPOINTS` VALUES ('5', 'wheel_2_3_steering', '0.6000000000', '1.0000000000');
INSERT INTO `Vehicle_HITPOINTS` VALUES ('5', 'glass4', '0.6000000000', '1.0000000000');
INSERT INTO `Vehicle_HITPOINTS` VALUES ('6', 'glass1', '0.6000000000', '1.0000000000');
INSERT INTO `Vehicle_HITPOINTS` VALUES ('6', 'glass2', '0.6000000000', '1.0000000000');
INSERT INTO `Vehicle_HITPOINTS` VALUES ('6', 'glass3', '0.6000000000', '1.0000000000');
INSERT INTO `Vehicle_HITPOINTS` VALUES ('6', 'motor', '0.6000000000', '0.8000000000');
INSERT INTO `Vehicle_HITPOINTS` VALUES ('6', 'palivo', '0.6000000000', '0.8000000000');
INSERT INTO `Vehicle_HITPOINTS` VALUES ('6', 'wheel_1_1_steering', '0.6000000000', '1.0000000000');
INSERT INTO `Vehicle_HITPOINTS` VALUES ('6', 'wheel_1_2_steering', '0.6000000000', '1.0000000000');
INSERT INTO `Vehicle_HITPOINTS` VALUES ('6', 'wheel_2_1_steering', '0.6000000000', '1.0000000000');
INSERT INTO `Vehicle_HITPOINTS` VALUES ('6', 'wheel_2_2_steering', '0.6000000000', '1.0000000000');
INSERT INTO `Vehicle_HITPOINTS` VALUES ('6', 'karoserie', '0.6000000000', '1.0000000000');
INSERT INTO `Vehicle_HITPOINTS` VALUES ('6', 'glass4', '0.6000000000', '1.0000000000');

-- ----------------------------
-- Table structure for Vehicle_INVENTORY
-- ----------------------------
DROP TABLE IF EXISTS `Vehicle_INVENTORY`;
CREATE TABLE `Vehicle_INVENTORY` (
  `ID` int(11) NOT NULL,
  `Type` enum('Backpack','Magazine','Weapon') CHARACTER SET latin1 NOT NULL DEFAULT 'Magazine',
  `Classname` varchar(255) CHARACTER SET latin1 NOT NULL,
  `MinAmount` tinyint(3) NOT NULL DEFAULT '1',
  `MaxAmount` tinyint(3) NOT NULL DEFAULT '1',
  `Chance` double(20,10) NOT NULL DEFAULT '1.0000000000',
  PRIMARY KEY (`ID`,`Type`,`Classname`),
  KEY `ObjectUID` (`ID`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of Vehicle_INVENTORY
-- ----------------------------
INSERT INTO `Vehicle_INVENTORY` VALUES ('30728533', 'Magazine', '20Rnd_762x51_DMR', '2', '4', '1.0000000000');
INSERT INTO `Vehicle_INVENTORY` VALUES ('30728533', 'Weapon', 'DMR_DZ', '1', '1', '0.0500000000');
INSERT INTO `Vehicle_INVENTORY` VALUES ('26883451', 'Magazine', '20Rnd_762x51_DMR', '1', '3', '1.0000000000');
INSERT INTO `Vehicle_INVENTORY` VALUES ('26883451', 'Magazine', '5x_22_LR_17_HMR', '2', '5', '1.0000000000');
INSERT INTO `Vehicle_INVENTORY` VALUES ('26883451', 'Weapon', 'huntingrifle', '1', '1', '0.8000000000');
INSERT INTO `Vehicle_INVENTORY` VALUES ('42231659', 'Magazine', '30Rnd_556x45_StanagSD', '2', '5', '1.0000000000');
INSERT INTO `Vehicle_INVENTORY` VALUES ('42231659', 'Weapon', 'M4A1_Aim_SD_Camo', '1', '1', '0.2000000000');
INSERT INTO `Vehicle_INVENTORY` VALUES ('30507947', 'Magazine', 'HandGrenade_west', '1', '2', '0.5000000000');
INSERT INTO `Vehicle_INVENTORY` VALUES ('30507947', 'Magazine', '30Rnd_545x39_AK', '2', '4', '1.0000000000');
INSERT INTO `Vehicle_INVENTORY` VALUES ('30507947', 'Weapon', 'AK_74', '1', '1', '0.5000000000');
INSERT INTO `Vehicle_INVENTORY` VALUES ('25844760', 'Magazine', '20Rnd_762x51_DMR', '1', '3', '1.0000000000');
INSERT INTO `Vehicle_INVENTORY` VALUES ('25844760', 'Weapon', 'MeleeMachete', '1', '1', '0.9000000000');
INSERT INTO `Vehicle_INVENTORY` VALUES ('25844760', 'Weapon', 'LeeEnfield', '1', '1', '0.7000000000');
INSERT INTO `Vehicle_INVENTORY` VALUES ('25844760', 'Magazine', '10x_303', '1', '3', '1.0000000000');

-- ----------------------------
-- Table structure for Vehicle_LOCATIONS
-- ----------------------------
DROP TABLE IF EXISTS `Vehicle_LOCATIONS`;
CREATE TABLE `Vehicle_LOCATIONS` (
  `ID` int(11) NOT NULL,
  `Worldspace` varchar(255) CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`ID`,`Worldspace`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='0 ATV\r\n1 Motorcycle\r\n2 Huey\r\n4 Mi-17\r\n3 Little bird\r\n5 AN-2\r\n6 Bike\r\n7 Military car (Landrover, HMMWV, Camo UAZs, Armed pickups)\r\n10 Civilian car (including SUV)\r\n11 Bus\r\n12 Tractor\r\n13 Truck\r\n14 Boat';

-- ----------------------------
-- Records of Vehicle_LOCATIONS
-- ----------------------------
INSERT INTO `Vehicle_LOCATIONS` VALUES ('0', '[126,[6556.34,5621.66,0]]');
INSERT INTO `Vehicle_LOCATIONS` VALUES ('0', '[166,[8316.43,7497.42,0]]');
INSERT INTO `Vehicle_LOCATIONS` VALUES ('0', '[202,[11464.035, 11381.071,0]]');
INSERT INTO `Vehicle_LOCATIONS` VALUES ('0', '[253,[11459.299,11386.546,0]]');
INSERT INTO `Vehicle_LOCATIONS` VALUES ('0', '[284,[8854.9082,2891.5762,0]]');
INSERT INTO `Vehicle_LOCATIONS` VALUES ('0', '[300,[9047.57,4480.17,0]]');
INSERT INTO `Vehicle_LOCATIONS` VALUES ('0', '[335,[8856.8359,2893.7903,0]]');
INSERT INTO `Vehicle_LOCATIONS` VALUES ('0', '[337,[3312.2793,11270.755,0]]');
INSERT INTO `Vehicle_LOCATIONS` VALUES ('0', '[50,[3684.0366, 5999.0117,0]]');
INSERT INTO `Vehicle_LOCATIONS` VALUES ('1', '[151,[6592.686,2906.8245,0]]');
INSERT INTO `Vehicle_LOCATIONS` VALUES ('1', '[213,[9515.67,7222.07,0]]');
INSERT INTO `Vehicle_LOCATIONS` VALUES ('1', '[291,[11945.78,9099.3633,0]]');
INSERT INTO `Vehicle_LOCATIONS` VALUES ('1', '[372,[8762.8516, 11727.877,0]]');
INSERT INTO `Vehicle_LOCATIONS` VALUES ('1', '[52,[8713.4893, 7103.0518,0]]');
INSERT INTO `Vehicle_LOCATIONS` VALUES ('2', '[0,[9837.5,3860.2,0]]');
INSERT INTO `Vehicle_LOCATIONS` VALUES ('2', '[133,[4211.8789,10735.168,0]]');
INSERT INTO `Vehicle_LOCATIONS` VALUES ('2', '[156,[7660.271,3982.0063,0]]');
INSERT INTO `Vehicle_LOCATIONS` VALUES ('2', '[172,[7220.6538,9116.3428,0]]');
INSERT INTO `Vehicle_LOCATIONS` VALUES ('2', '[181,[10153.5,12026.8,0]]');
INSERT INTO `Vehicle_LOCATIONS` VALUES ('2', '[2,[12010.7,12637.2,0]]');
INSERT INTO `Vehicle_LOCATIONS` VALUES ('2', '[240,[4871.19,10176.2,0]]');
INSERT INTO `Vehicle_LOCATIONS` VALUES ('2', '[241,[4811.56,9603.77,0]]');
INSERT INTO `Vehicle_LOCATIONS` VALUES ('2', '[310,[6365.7402,7795.3501,0]]');
INSERT INTO `Vehicle_LOCATIONS` VALUES ('2', '[37,[6366.01,2774.14,0]]');
INSERT INTO `Vehicle_LOCATIONS` VALUES ('2', '[60,[11279.154,4296.0205,0]]');
INSERT INTO `Vehicle_LOCATIONS` VALUES ('2', '[62,[13307,3231.95,0]]');
INSERT INTO `Vehicle_LOCATIONS` VALUES ('2', '[67,[10587.8,2188.25,0]]');
INSERT INTO `Vehicle_LOCATIONS` VALUES ('2', '[72,[6886.53,11437.1,0]]');
INSERT INTO `Vehicle_LOCATIONS` VALUES ('2', '[75,[13614.3,3170.86,0]]');
INSERT INTO `Vehicle_LOCATIONS` VALUES ('2', '[80,[6887.07,11436.8,0]]');
INSERT INTO `Vehicle_LOCATIONS` VALUES ('3', '[0,[9837.5,3860.2,0]]');
INSERT INTO `Vehicle_LOCATIONS` VALUES ('3', '[133,[4211.8789,10735.168,0]]');
INSERT INTO `Vehicle_LOCATIONS` VALUES ('3', '[156,[7660.271,3982.0063,0]]');
INSERT INTO `Vehicle_LOCATIONS` VALUES ('3', '[172,[7220.6538,9116.3428,0]]');
INSERT INTO `Vehicle_LOCATIONS` VALUES ('3', '[181,[10153.5,12026.8,0]]');
INSERT INTO `Vehicle_LOCATIONS` VALUES ('3', '[2,[12010.7,12637.2,0]]');
INSERT INTO `Vehicle_LOCATIONS` VALUES ('3', '[240,[4871.19,10176.2,0]]');
INSERT INTO `Vehicle_LOCATIONS` VALUES ('3', '[241,[4811.56,9603.77,0]]');
INSERT INTO `Vehicle_LOCATIONS` VALUES ('3', '[258,[7209.86,6984.74,0]]');
INSERT INTO `Vehicle_LOCATIONS` VALUES ('3', '[278,[11162.7,2509.88,0]]');
INSERT INTO `Vehicle_LOCATIONS` VALUES ('3', '[310,[6365.7402,7795.3501,0]]');
INSERT INTO `Vehicle_LOCATIONS` VALUES ('3', '[37,[6366.01,2774.14,0]]');
INSERT INTO `Vehicle_LOCATIONS` VALUES ('3', '[60,[11279.154,4296.0205,0]]');
INSERT INTO `Vehicle_LOCATIONS` VALUES ('3', '[62,[13307,3231.95,0]]');
INSERT INTO `Vehicle_LOCATIONS` VALUES ('3', '[67,[10587.8,2188.25,0]]');
INSERT INTO `Vehicle_LOCATIONS` VALUES ('3', '[72,[6886.53,11437.1,0]]');
INSERT INTO `Vehicle_LOCATIONS` VALUES ('3', '[75,[13614.3,3170.86,0]]');
INSERT INTO `Vehicle_LOCATIONS` VALUES ('3', '[80,[6887.07,11436.8,0]]');
INSERT INTO `Vehicle_LOCATIONS` VALUES ('4', '[0,[9837.5,3860.2,0]]');
INSERT INTO `Vehicle_LOCATIONS` VALUES ('4', '[133,[4211.8789,10735.168,0]]');
INSERT INTO `Vehicle_LOCATIONS` VALUES ('4', '[156,[7660.271,3982.0063,0]]');
INSERT INTO `Vehicle_LOCATIONS` VALUES ('4', '[172,[7220.6538,9116.3428,0]]');
INSERT INTO `Vehicle_LOCATIONS` VALUES ('4', '[181,[10153.5,12026.8,0]]');
INSERT INTO `Vehicle_LOCATIONS` VALUES ('4', '[241,[4811.56,9603.77,0]]');
INSERT INTO `Vehicle_LOCATIONS` VALUES ('4', '[310,[6365.7402,7795.3501,0]]');
INSERT INTO `Vehicle_LOCATIONS` VALUES ('4', '[37,[6366.01,2774.14,0]]');
INSERT INTO `Vehicle_LOCATIONS` VALUES ('4', '[62,[13307,3231.95,0]]');
INSERT INTO `Vehicle_LOCATIONS` VALUES ('4', '[67,[10587.8,2188.25,0]]');
INSERT INTO `Vehicle_LOCATIONS` VALUES ('4', '[72,[6886.53,11437.1,0]]');
INSERT INTO `Vehicle_LOCATIONS` VALUES ('4', '[75,[13614.3,3170.86,0]]');
INSERT INTO `Vehicle_LOCATIONS` VALUES ('4', '[80,[6887.07,11436.8,0]]');
INSERT INTO `Vehicle_LOCATIONS` VALUES ('5', '[240,[4586.84,10684.6,0]]');
INSERT INTO `Vehicle_LOCATIONS` VALUES ('5', '[252,[4530.52,10785.1,0]]');
INSERT INTO `Vehicle_LOCATIONS` VALUES ('5', '[32,[12492,12515,0]]');
INSERT INTO `Vehicle_LOCATIONS` VALUES ('6', '[140,[12681.2,9467.42,0]]');
INSERT INTO `Vehicle_LOCATIONS` VALUES ('6', '[155,[12158.999,3468.7563,0]]');
INSERT INTO `Vehicle_LOCATIONS` VALUES ('6', '[155,[8680.75,2445.5315,0]]');
INSERT INTO `Vehicle_LOCATIONS` VALUES ('6', '[179,[3474.3989, 2562.4915,0]]');
INSERT INTO `Vehicle_LOCATIONS` VALUES ('6', '[191,[2782.7134,5285.5342,0]]');
INSERT INTO `Vehicle_LOCATIONS` VALUES ('6', '[201,[8070.6958, 3358.7793,0]]');
INSERT INTO `Vehicle_LOCATIONS` VALUES ('6', '[23,[3203.0916, 3988.6379,0]]');
INSERT INTO `Vehicle_LOCATIONS` VALUES ('6', '[236,[1773.9318,2351.6221,0]]');
INSERT INTO `Vehicle_LOCATIONS` VALUES ('6', '[236,[3699.9189,2474.2119,0]]');
INSERT INTO `Vehicle_LOCATIONS` VALUES ('6', '[250,[11984.01,3835.9231,0]]');
INSERT INTO `Vehicle_LOCATIONS` VALUES ('6', '[255,[10153.068,2219.3547,0]]');
INSERT INTO `Vehicle_LOCATIONS` VALUES ('6', '[316,[7943.5068,6988.1763,0]]');
INSERT INTO `Vehicle_LOCATIONS` VALUES ('6', '[322,[3097.96,7812.64,0]]');
INSERT INTO `Vehicle_LOCATIONS` VALUES ('6', '[35,[8345.7227, 2482.6855,0]]');
INSERT INTO `Vehicle_LOCATIONS` VALUES ('6', '[50,[8040.6777, 7086.5356,0]]');
INSERT INTO `Vehicle_LOCATIONS` VALUES ('6', '[73,[8350.0947, 2480.542,0]]');
INSERT INTO `Vehicle_LOCATIONS` VALUES ('7', '[12,[4662.13,10436,0]]');
INSERT INTO `Vehicle_LOCATIONS` VALUES ('7', '[141,[11953.279,9107.3896,0]]');
INSERT INTO `Vehicle_LOCATIONS` VALUES ('7', '[157,[12235.8,9729.92,0]]');
INSERT INTO `Vehicle_LOCATIONS` VALUES ('7', '[157,[3693.0386, 5969.1489,0]]');
INSERT INTO `Vehicle_LOCATIONS` VALUES ('7', '[183,[4752.58,2535.77,0]]');
INSERT INTO `Vehicle_LOCATIONS` VALUES ('7', '[191,[4625.61,9675.62,0]]');
INSERT INTO `Vehicle_LOCATIONS` VALUES ('7', '[203,[3696.23,6013.07,0]]');
INSERT INTO `Vehicle_LOCATIONS` VALUES ('7', '[216,[4765.67,10260.7,0]]');
INSERT INTO `Vehicle_LOCATIONS` VALUES ('7', '[249,[11823.4,12691.1,0]]');
INSERT INTO `Vehicle_LOCATIONS` VALUES ('7', '[272,[6303.11,7833.36,0]]');
INSERT INTO `Vehicle_LOCATIONS` VALUES ('7', '[317,[3770.08,10237,0]]');
INSERT INTO `Vehicle_LOCATIONS` VALUES ('7', '[337,[6344.92,7772.4,0]]');
INSERT INTO `Vehicle_LOCATIONS` VALUES ('7', '[39,[12143.2,12611.2,0]]');
INSERT INTO `Vehicle_LOCATIONS` VALUES ('7', '[58,[3702.54,10182.1,0]]');
INSERT INTO `Vehicle_LOCATIONS` VALUES ('10', '[0,[6279.4966, 7810.3691,0]]');
INSERT INTO `Vehicle_LOCATIONS` VALUES ('10', '[106,[5265.94,5492.29,0]]');
INSERT INTO `Vehicle_LOCATIONS` VALUES ('10', '[116,[13343.8,12919,0]]');
INSERT INTO `Vehicle_LOCATIONS` VALUES ('10', '[124,[11309.963, 6646.3989,0]]');
INSERT INTO `Vehicle_LOCATIONS` VALUES ('10', '[133,[8310.9902, 3348.3579,0]]');
INSERT INTO `Vehicle_LOCATIONS` VALUES ('10', '[137,[2159.68,7907.71,0]]');
INSERT INTO `Vehicle_LOCATIONS` VALUES ('10', '[160,[11940.6,8868.87,0]]');
INSERT INTO `Vehicle_LOCATIONS` VALUES ('10', '[19,[10828.8,2703.23,0]]');
INSERT INTO `Vehicle_LOCATIONS` VALUES ('10', '[19,[11066.828,7915.2275,0]]');
INSERT INTO `Vehicle_LOCATIONS` VALUES ('10', '[194,[9727.78,8932.72,0]]');
INSERT INTO `Vehicle_LOCATIONS` VALUES ('10', '[207,[1740.8503,3622.6938,0]]');
INSERT INTO `Vehicle_LOCATIONS` VALUES ('10', '[222,[5165.7231,2375.7642,0]]');
INSERT INTO `Vehicle_LOCATIONS` VALUES ('10', '[223,[4817.6572, 2556.5034,0]]');
INSERT INTO `Vehicle_LOCATIONS` VALUES ('10', '[223,[6288.416, 7834.3521,0]]');
INSERT INTO `Vehicle_LOCATIONS` VALUES ('10', '[226,[1975.1283, 9150.0195,0]]');
INSERT INTO `Vehicle_LOCATIONS` VALUES ('10', '[228,[12355.3,10821.6,0]]');
INSERT INTO `Vehicle_LOCATIONS` VALUES ('10', '[229,[6914.04,2487.6,0]]');
INSERT INTO `Vehicle_LOCATIONS` VALUES ('10', '[241,[2614.0862,5079.6357,0]]');
INSERT INTO `Vehicle_LOCATIONS` VALUES ('10', '[266,[9157.8408,11019.819,0]]');
INSERT INTO `Vehicle_LOCATIONS` VALUES ('10', '[274,[11604.3,10636.8,0]]');
INSERT INTO `Vehicle_LOCATIONS` VALUES ('10', '[291,[8125.36,3167.17,0]]');
INSERT INTO `Vehicle_LOCATIONS` VALUES ('10', '[298,[9076.47,8016.35,0]]');
INSERT INTO `Vehicle_LOCATIONS` VALUES ('10', '[316,[7427.61,5155.17,0]]');
INSERT INTO `Vehicle_LOCATIONS` VALUES ('10', '[324,[13388,6603.21,0]]');
INSERT INTO `Vehicle_LOCATIONS` VALUES ('10', '[336,[7006.14,7717.57,0]]');
INSERT INTO `Vehicle_LOCATIONS` VALUES ('10', '[337,[8120.3057,9305.4912,0]]');
INSERT INTO `Vehicle_LOCATIONS` VALUES ('10', '[337,[9715.0352,6522.8286,0]]');
INSERT INTO `Vehicle_LOCATIONS` VALUES ('10', '[339,[11243.3,5376.82,0]]');
INSERT INTO `Vehicle_LOCATIONS` VALUES ('10', '[344,[2045.3989,7267.4165,0]]');
INSERT INTO `Vehicle_LOCATIONS` VALUES ('10', '[352,[12058.555,3577.8667,0]]');
INSERT INTO `Vehicle_LOCATIONS` VALUES ('10', '[353,[12869.565,4450.4077,0]]');
INSERT INTO `Vehicle_LOCATIONS` VALUES ('10', '[363,[5337.62,8656.55,0]]');
INSERT INTO `Vehicle_LOCATIONS` VALUES ('11', '[230,[3762.5764,8736.1709,0]]');
INSERT INTO `Vehicle_LOCATIONS` VALUES ('11', '[245,[4580.3203,4515.9282,0]]');
INSERT INTO `Vehicle_LOCATIONS` VALUES ('11', '[279,[10628.433,8037.8188,0]]');
INSERT INTO `Vehicle_LOCATIONS` VALUES ('11', '[333,[6040.0923,7806.5439,0]]');
INSERT INTO `Vehicle_LOCATIONS` VALUES ('11', '[59,[6705.8887, 2991.9358,0]]');
INSERT INTO `Vehicle_LOCATIONS` VALUES ('11', '[76,[10314.745, 2147.5374,0]]');
INSERT INTO `Vehicle_LOCATIONS` VALUES ('12', '[19,[11246.52, 7534.7954,0]]');
INSERT INTO `Vehicle_LOCATIONS` VALUES ('12', '[195,[9681.8213,8947.2354,0]]');
INSERT INTO `Vehicle_LOCATIONS` VALUES ('12', '[220,[3083.52,9202.18,0]]');
INSERT INTO `Vehicle_LOCATIONS` VALUES ('12', '[262,[3825.1318,8941.4873,0]]');
INSERT INTO `Vehicle_LOCATIONS` VALUES ('12', '[95,[1690.58,5095.92,0]]');
INSERT INTO `Vehicle_LOCATIONS` VALUES ('13', '[178,[13276.482, 6098.4463,0]]');
INSERT INTO `Vehicle_LOCATIONS` VALUES ('13', '[338,[1890.9952,12417.333,0]]');
INSERT INTO `Vehicle_LOCATIONS` VALUES ('14', '[245,[14417.589,12886.104,0]]');
INSERT INTO `Vehicle_LOCATIONS` VALUES ('14', '[268,[13098.13, 8250.8828,0]]');
INSERT INTO `Vehicle_LOCATIONS` VALUES ('14', '[315,[13222.181,10015.431,0]]');
INSERT INTO `Vehicle_LOCATIONS` VALUES ('14', '[315,[8317.2676,2348.6055,0]]');
INSERT INTO `Vehicle_LOCATIONS` VALUES ('14', '[55,[13454.882, 13731.796,0]]');

-- ----------------------------
-- Table structure for Vehicle_SPAWNS
-- ----------------------------
DROP TABLE IF EXISTS `Vehicle_SPAWNS`;
CREATE TABLE `Vehicle_SPAWNS` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Classname` varchar(255) NOT NULL,
  `Chance` double NOT NULL,
  `MaxNum` int(11) NOT NULL DEFAULT '1',
  `Location` int(11) NOT NULL,
  `Inventory` int(11) DEFAULT NULL,
  `Hitpoints` int(11) DEFAULT NULL,
  `MinDamage` double NOT NULL,
  `MaxDamage` double NOT NULL,
  `MinFuel` double NOT NULL,
  `MaxFuel` double NOT NULL,
  `MaxWeapons` int(11) NOT NULL,
  `MaxMagazines` int(11) NOT NULL,
  `MaxBackpacks` int(11) NOT NULL,
  `CleanupTime` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `Classname` (`Classname`) USING HASH
) ENGINE=MyISAM AUTO_INCREMENT=39 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of Vehicle_SPAWNS
-- ----------------------------
INSERT INTO `Vehicle_SPAWNS` VALUES ('1', 'UAZ_Unarmed_TK_EP1', '0.7', '2', '7', null, '1', '0.2', '0.8', '0', '0.8', '1', '3', '0', '300');
INSERT INTO `Vehicle_SPAWNS` VALUES ('2', 'UAZ_Unarmed_UN_EP1', '0.59', '2', '10', null, '1', '0.2', '0.8', '0', '0.8', '1', '0', '0', '300');
INSERT INTO `Vehicle_SPAWNS` VALUES ('3', 'UAZ_RU', '0.59', '1', '7', null, '1', '0.2', '0.8', '0', '0.8', '1', '2', '0', '300');
INSERT INTO `Vehicle_SPAWNS` VALUES ('4', 'UAZ_Unarmed_TK_CIV_EP1', '0.59', '3', '10', null, '1', '0.2', '0.8', '0', '0.8', '0', '0', '0', '300');
INSERT INTO `Vehicle_SPAWNS` VALUES ('5', 'SkodaBlue', '0.68', '2', '10', null, '1', '0.2', '0.8', '0', '0.8', '0', '0', '0', '300');
INSERT INTO `Vehicle_SPAWNS` VALUES ('6', 'Skoda', '0.68', '2', '10', null, '1', '0.2', '0.8', '0', '0.8', '0', '0', '0', '300');
INSERT INTO `Vehicle_SPAWNS` VALUES ('7', 'SkodaGreen', '0.68', '2', '10', null, '1', '0.2', '0.8', '0', '0.8', '0', '0', '0', '300');
INSERT INTO `Vehicle_SPAWNS` VALUES ('8', 'ATV_US_EP1', '0.7', '6', '0', null, '1', '0.2', '0.8', '0', '0.8', '0', '0', '0', '120');
INSERT INTO `Vehicle_SPAWNS` VALUES ('9', 'TT650_Ins', '0.72', '1', '1', null, '2', '0.2', '0.8', '0', '0.8', '0', '0', '0', '120');
INSERT INTO `Vehicle_SPAWNS` VALUES ('10', 'TT650_TK_CIV_EP1', '0.72', '3', '1', null, '2', '0.2', '0.8', '0', '0.8', '0', '0', '0', '120');
INSERT INTO `Vehicle_SPAWNS` VALUES ('11', 'Old_bike_TK_CIV_EP1', '0.64', '8', '6', null, null, '0.2', '0.8', '0', '0', '0', '0', '0', '60');
INSERT INTO `Vehicle_SPAWNS` VALUES ('12', 'hilux1_civil_3_open', '0.59', '3', '10', null, '1', '0.2', '0.8', '0', '0.8', '0', '0', '0', '300');
INSERT INTO `Vehicle_SPAWNS` VALUES ('13', 'Ikarus', '0.59', '2', '11', null, '1', '0.2', '0.8', '0', '0.8', '0', '0', '0', '180');
INSERT INTO `Vehicle_SPAWNS` VALUES ('14', 'Ikarus_TK_CIV_EP1', '0.59', '2', '11', null, '1', '0.2', '0.8', '0', '0.8', '0', '0', '0', '180');
INSERT INTO `Vehicle_SPAWNS` VALUES ('15', 'Tractor', '0.7', '3', '12', null, '1', '0.2', '0.8', '0', '0.8', '0', '0', '0', '60');
INSERT INTO `Vehicle_SPAWNS` VALUES ('16', 'S1203_TK_CIV_EP1', '0.69', '2', '10', null, '1', '0.2', '0.8', '0', '0.8', '0', '0', '0', '300');
INSERT INTO `Vehicle_SPAWNS` VALUES ('17', 'V3S_Civ', '0.66', '2', '13', null, '1', '0.2', '0.8', '0', '0.8', '0', '0', '0', '300');
INSERT INTO `Vehicle_SPAWNS` VALUES ('18', 'UralCivil', '0.59', '2', '13', null, '1', '0.2', '0.8', '0', '0.8', '0', '0', '0', '300');
INSERT INTO `Vehicle_SPAWNS` VALUES ('19', 'car_hatchback', '0.73', '2', '10', null, '1', '0.2', '0.8', '0', '0.8', '0', '0', '0', '300');
INSERT INTO `Vehicle_SPAWNS` VALUES ('20', 'Fishing_Boat', '0.61', '1', '14', null, '2', '0.2', '0.8', '0', '0.8', '0', '0', '0', '300');
INSERT INTO `Vehicle_SPAWNS` VALUES ('21', 'PBX', '0.59', '1', '14', null, '2', '0.2', '0.8', '0', '0.8', '0', '0', '0', '300');
INSERT INTO `Vehicle_SPAWNS` VALUES ('22', 'Smallboat_1', '0.59', '2', '14', null, '2', '0.2', '0.8', '0', '0.8', '0', '0', '0', '300');
INSERT INTO `Vehicle_SPAWNS` VALUES ('23', 'Volha_1_TK_CIV_EP1', '0.71', '3', '10', null, '1', '0.2', '0.8', '0', '0.8', '0', '0', '0', '300');
INSERT INTO `Vehicle_SPAWNS` VALUES ('24', 'Volha_2_TK_CIV_EP1', '0.71', '3', '10', null, '1', '0.2', '0.8', '0', '0.8', '0', '0', '0', '300');
INSERT INTO `Vehicle_SPAWNS` VALUES ('25', 'SUV_DZ', '0.59', '1', '10', null, '1', '0.2', '0.8', '0', '0.8', '0', '0', '0', '300');
INSERT INTO `Vehicle_SPAWNS` VALUES ('26', 'car_sedan', '0.59', '2', '10', null, '1', '0.2', '0.8', '0', '0.8', '0', '0', '0', '300');
INSERT INTO `Vehicle_SPAWNS` VALUES ('27', 'UH1H_DZ', '0.59', '2', '2', null, '3', '0.2', '0.8', '0', '0.8', '0', '0', '0', '900');
INSERT INTO `Vehicle_SPAWNS` VALUES ('28', 'AH6X_DZ', '0.48', '3', '3', null, '4', '0.2', '0.8', '0', '0.8', '0', '0', '0', '900');
INSERT INTO `Vehicle_SPAWNS` VALUES ('29', 'Mi17_DZ', '0.49', '1', '4', null, '4', '0.2', '0.8', '0', '0.8', '0', '0', '0', '900');
INSERT INTO `Vehicle_SPAWNS` VALUES ('30', 'AN2_DZ', '0.6', '1', '5', null, null, '0', '0', '0.1', '0.4', '0', '0', '0', '900');
INSERT INTO `Vehicle_SPAWNS` VALUES ('31', 'BAF_Offroad_D', '0.54', '2', '7', null, '5', '0.2', '0.8', '0', '0.8', '0', '0', '0', '300');
INSERT INTO `Vehicle_SPAWNS` VALUES ('32', 'BAF_Offroad_W', '0.54', '2', '7', null, '5', '0.2', '0.8', '0', '0.8', '0', '0', '0', '300');
INSERT INTO `Vehicle_SPAWNS` VALUES ('33', 'MH6J_DZ', '0.48', '2', '3', null, '3', '0.2', '0.8', '0', '0.8', '0', '0', '0', '900');
INSERT INTO `Vehicle_SPAWNS` VALUES ('34', 'HMMWV_DZ', '0.21', '2', '7', null, '1', '0.2', '0.8', '0', '0.8', '0', '0', '0', '300');
INSERT INTO `Vehicle_SPAWNS` VALUES ('35', 'Pickup_PK_INS', '0.1', '2', '7', null, '6', '0.2', '0.8', '0', '0.8', '0', '0', '0', '300');
INSERT INTO `Vehicle_SPAWNS` VALUES ('36', 'Offroad_DSHKM_INS', '0.07', '1', '7', null, '6', '0.2', '0.8', '0', '0.8', '0', '0', '0', '300');
INSERT INTO `Vehicle_SPAWNS` VALUES ('37', 'AN2_2_DZ', '1', '1', '5', null, null, '0', '0', '0.1', '0.4', '0', '0', '0', '900');
INSERT INTO `Vehicle_SPAWNS` VALUES ('38', 'UH1H_2_DZ', '0.3', '1', '2', null, '3', '0.2', '0.8', '0', '0.8', '0', '0', '0', '900');

-- ----------------------------
-- Table structure for Vehicle_SPAWNS_GROUPS
-- ----------------------------
DROP TABLE IF EXISTS `Vehicle_SPAWNS_GROUPS`;
CREATE TABLE `Vehicle_SPAWNS_GROUPS` (
  `Spawn_ID` int(11) NOT NULL,
  `Group_ID` int(11) NOT NULL,
  PRIMARY KEY (`Spawn_ID`,`Group_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of Vehicle_SPAWNS_GROUPS
-- ----------------------------
INSERT INTO `Vehicle_SPAWNS_GROUPS` VALUES ('2', '6');
INSERT INTO `Vehicle_SPAWNS_GROUPS` VALUES ('4', '6');
INSERT INTO `Vehicle_SPAWNS_GROUPS` VALUES ('5', '6');
INSERT INTO `Vehicle_SPAWNS_GROUPS` VALUES ('6', '6');
INSERT INTO `Vehicle_SPAWNS_GROUPS` VALUES ('7', '6');
INSERT INTO `Vehicle_SPAWNS_GROUPS` VALUES ('12', '6');
INSERT INTO `Vehicle_SPAWNS_GROUPS` VALUES ('13', '5');
INSERT INTO `Vehicle_SPAWNS_GROUPS` VALUES ('14', '5');
INSERT INTO `Vehicle_SPAWNS_GROUPS` VALUES ('16', '6');
INSERT INTO `Vehicle_SPAWNS_GROUPS` VALUES ('17', '4');
INSERT INTO `Vehicle_SPAWNS_GROUPS` VALUES ('18', '4');
INSERT INTO `Vehicle_SPAWNS_GROUPS` VALUES ('19', '6');
INSERT INTO `Vehicle_SPAWNS_GROUPS` VALUES ('23', '6');
INSERT INTO `Vehicle_SPAWNS_GROUPS` VALUES ('24', '6');
INSERT INTO `Vehicle_SPAWNS_GROUPS` VALUES ('26', '6');
INSERT INTO `Vehicle_SPAWNS_GROUPS` VALUES ('27', '0');
INSERT INTO `Vehicle_SPAWNS_GROUPS` VALUES ('27', '10');
INSERT INTO `Vehicle_SPAWNS_GROUPS` VALUES ('28', '0');
INSERT INTO `Vehicle_SPAWNS_GROUPS` VALUES ('29', '0');
INSERT INTO `Vehicle_SPAWNS_GROUPS` VALUES ('30', '9');
INSERT INTO `Vehicle_SPAWNS_GROUPS` VALUES ('31', '1');
INSERT INTO `Vehicle_SPAWNS_GROUPS` VALUES ('32', '1');
INSERT INTO `Vehicle_SPAWNS_GROUPS` VALUES ('33', '0');
INSERT INTO `Vehicle_SPAWNS_GROUPS` VALUES ('34', '1');
INSERT INTO `Vehicle_SPAWNS_GROUPS` VALUES ('35', '2');
INSERT INTO `Vehicle_SPAWNS_GROUPS` VALUES ('36', '2');
INSERT INTO `Vehicle_SPAWNS_GROUPS` VALUES ('37', '9');
INSERT INTO `Vehicle_SPAWNS_GROUPS` VALUES ('38', '0');
INSERT INTO `Vehicle_SPAWNS_GROUPS` VALUES ('38', '10');

-- ----------------------------
-- Procedure structure for pCleanup
-- ----------------------------
DROP PROCEDURE IF EXISTS `pCleanup`;
DELIMITER ;;
CREATE DEFINER=`dayz`@`localhost` PROCEDURE `pCleanup`()
BEGIN 
#Last ran
	update event_scheduler set LastRun = NOW() where System = "pCleanup";

#starts outofbounds cleanup
        CALL pCleanupOOB();
 
#remove damaged objects
        DELETE
                FROM Object_DATA
                WHERE CharacterID != 0 AND Damage = 1;

#remove damaged vehicles older than Vehicle_SPAWNS.CleanupTime
	DELETE FROM Object_DATA
	WHERE CharacterID = 0
		AND Damage = 1
		AND SYSDATE() > DATE(last_updated) + INTERVAL (
			SELECT CleanupTime
			FROM Vehicle_SPAWNS
			WHERE Vehicle_SPAWNS.Classname = Object_DATA.Classname
			LIMIT 1) MINUTE;

#remove empty tents older than seven days
        DELETE
                FROM Object_DATA
                WHERE (Classname like 'TentStorage%' or Classname like 'StashSmall%' or Classname like 'StashMedium%' or Classname like 'DomeTentStorage%')
                        AND DATE(last_updated) < CURDATE() - INTERVAL 7 DAY
                        AND Inventory = '[[[],[]],[[],[]],[[],[]]]';
       
        DELETE
                FROM Object_DATA
                WHERE (Classname like 'TentStorage%' or Classname like 'StashSmall%' or Classname like 'StashMedium%' or Classname like 'DomeTentStorage%')
                        AND DATE(last_updated) < CURDATE() - INTERVAL 7 DAY
                        AND Inventory = '[]';          
 
#remove barbed wire older than two days
        DELETE
            FROM Object_DATA
				WHERE Classname = 'Wire_cat1'
					AND DATE(last_updated) < CURDATE() - INTERVAL 2 DAY;
					                      
#remove Tank Traps older than fifteen days
        DELETE
                FROM Object_DATA
                WHERE Classname = 'Hedgehog_DZ'
                        AND DATE(last_updated) < CURDATE() - INTERVAL 15 DAY;
 
#remove Sandbags older than twenty days
        DELETE
                FROM Object_DATA
                WHERE Classname = 'Sandbag1_DZ'
                        AND DATE(last_updated) < CURDATE() - INTERVAL 20 DAY;
 
#remove Traps older than five days
        DELETE
                FROM Object_DATA
                WHERE (Classname = 'BearTrap_DZ' or Classname = 'TrapBearTrapFlare' or Classname = 'TrapBearTrapSmoke' or Classname = 'Trap_Cans' or Classname = 'TrapTripwireFlare' or Classname = 'TrapTripwireGrenade' or Classname = 'TrapTripwireSmoke')
                        AND DATE(last_updated) < CURDATE() - INTERVAL 5 DAY; 
                        
#remove incomplete fences after 1 Day								
        DELETE
                FROM Object_DATA
                WHERE (Classname = 'WoodenFence_1_foundation')
                        AND DATE(last_updated) < CURDATE() - INTERVAL 1 Day;  
                        
#remove incomplete fences after 3 Dayz								
        DELETE
                FROM Object_DATA
                WHERE (Classname = 'WoodenFence_1_frame' or Classname = 'WoodenFence_quaterpanel' or Classname = 'WoodenFence_halfpanel' or Classname = 'WoodenFence_thirdpanel')
                        AND DATE(last_updated) < CURDATE() - INTERVAL 3 Day; 
                       
#remove dead players from data table
        DELETE
                FROM Character_DATA
                WHERE Alive=0 AND DATE(last_updated) < CURDATE() - INTERVAL 90 Day; 
#Remove Bad Data
				DELETE
								FROM Object_DATA
								WHERE Classname like '%_base';
			
#Remove wire if the owner has died.						
		DELETE
			FROM Object_DATA
			USING Object_DATA, Character_DATA
				WHERE Object_DATA.Classname = 'Wire_cat1'
					AND Object_DATA.CharacterID = Character_DATA.CharacterID
					AND Character_DATA.Alive = 0;
					
#remove Base_Fire_DZ older than 5 days
        DELETE
            FROM Object_DATA
				WHERE Classname = 'Base_Fire_DZ'
					AND DATE(last_updated) < CURDATE() - INTERVAL 5 DAY;
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for pCleanupBase
-- ----------------------------
DROP PROCEDURE IF EXISTS `pCleanupBase`;
DELIMITER ;;
CREATE DEFINER=`dayz`@`%` PROCEDURE `pCleanupBase`()
BEGIN
#Last ran
	update event_scheduler set LastRun = NOW() where System = "pCleanupBase";
	
#Start Maintenance Mode       
	Update
		Object_DATA 
			set Hitpoints = '["Maintenance"]'                    
				WHERE (Classname = 'WoodenFence_1' or Classname = 'WoodenFence_2' or Classname = 'WoodenFence_3' or Classname = 'WoodenFence_4' or Classname = 'WoodenFence_5' or Classname = 'WoodenFence_6' or Classname = 'WoodenFence_7')
				AND DATE(last_updated) < CURDATE() - INTERVAL 7 DAY
 				AND Hitpoints = '[]';
 				
#Check WoodenFence_1_foundation
	update
		Object_DATA
			set Classname = 'WoodenFence_1_foundation'
				where Classname = 'WoodenFence_1_frame'
				AND Hitpoints = '["Maintenance"]'
				AND DATE(last_updated) < CURDATE() - INTERVAL 3 DAY;

#Check WoodenFence_1_frame
	update
		Object_DATA
			set Classname = 'WoodenFence_1_frame'
				where Classname = 'WoodenFence_quaterpanel'
				AND Hitpoints = '["Maintenance"]'
				AND DATE(last_updated) < CURDATE() - INTERVAL 3 DAY;

#Check WoodenFence_halfpanel
	update
		Object_DATA
			set Classname = 'WoodenFence_quaterpanel'
				where Classname = 'WoodenFence_halfpanel'
				AND Hitpoints = '["Maintenance"]'
				AND DATE(last_updated) < CURDATE() - INTERVAL 3 DAY;
				
#Check WoodenFence_thirdpanel
	update
		Object_DATA
			set Classname = 'WoodenFence_halfpanel'
				where Classname = 'WoodenFence_thirdpanel'
				AND Hitpoints = '["Maintenance"]'
				AND DATE(last_updated) < CURDATE() - INTERVAL 3 DAY;
				 
#Check fence 1
	update
		Object_DATA
			set Classname = 'WoodenFence_thirdpanel'
				where Classname = 'WoodenFence_1'
				AND Hitpoints = '["Maintenance"]'
				AND DATE(last_updated) < CURDATE() - INTERVAL 3 DAY;
#Check fence 2
	update
		Object_DATA
			set Classname = 'WoodenFence_1'
				where Classname = 'WoodenFence_2'
				AND Hitpoints = '["Maintenance"]'
				AND DATE(last_updated) < CURDATE() - INTERVAL 3 DAY;	
#Check fence 3
	update
		Object_DATA
			set Classname = 'WoodenFence_2'
				where Classname = 'WoodenFence_3'
				AND Hitpoints = '["Maintenance"]'
				AND DATE(last_updated) < CURDATE() - INTERVAL 3 DAY;					
#Check fence 4
	update
		Object_DATA
			set Classname = 'WoodenFence_3'
				where Classname = 'WoodenFence_4'
				AND Hitpoints = '["Maintenance"]'
				AND DATE(last_updated) < CURDATE() - INTERVAL 3 DAY;					
#Check fence 5
	update
		Object_DATA
			set Classname = 'WoodenFence_4'
				where Classname = 'WoodenFence_5'
				AND Hitpoints = '["Maintenance"]'
				AND DATE(last_updated) < CURDATE() - INTERVAL 3 DAY;					
#Check fence 6
	update
		Object_DATA
			set Classname = 'WoodenFence_5'
				where Classname = 'WoodenFence_6'
				AND Hitpoints = '["Maintenance"]'
				AND DATE(last_updated) < CURDATE() - INTERVAL 3 DAY;					
#Check fence 7
	update
		Object_DATA
			set Classname = 'WoodenFence_6'
				where Classname = 'WoodenFence_7'
				AND Hitpoints = '["Maintenance"]'
				AND DATE(last_updated) < CURDATE() - INTERVAL 3 DAY;	
				
#DayZ_WoodenGates = ["WoodenGate_1","WoodenGate_2","WoodenGate_3","WoodenGate_4"];
#Start Maintenance Mode Gates				
	Update
		Object_DATA 
			set Hitpoints = '["Maintenance"]'                    
				WHERE (Classname = 'WoodenGate_1' or Classname = 'WoodenGate_1' or Classname = 'WoodenGate_1' or Classname = 'WoodenGate_1')
				AND DATE(last_updated) < CURDATE() - INTERVAL 7 DAY
 				AND Hitpoints = '[]';
				
#Check WoodenGate_1
	update
		Object_DATA
			set Classname = 'WoodenGate_1'
				where Classname = 'WoodenGate_foundation'
				AND Hitpoints = '["Maintenance"]'
				AND DATE(last_updated) < CURDATE() - INTERVAL 3 DAY;
				
#Check WoodenGate_2
	update
		Object_DATA
			set Classname = 'WoodenGate_1'
				where Classname = 'WoodenGate_2'
				AND Hitpoints = '["Maintenance"]'
				AND DATE(last_updated) < CURDATE() - INTERVAL 3 DAY;
				
#Check WoodenGate_3
	update
		Object_DATA
			set Classname = 'WoodenGate_2'
				where Classname = 'WoodenGate_3'
				AND Hitpoints = '["Maintenance"]'
				AND DATE(last_updated) < CURDATE() - INTERVAL 3 DAY;
				
#Check WoodenGate_4
	update
		Object_DATA
			set Classname = 'WoodenGate_3'
				where Classname = 'WoodenGate_4'
				AND Hitpoints = '["Maintenance"]'
				AND DATE(last_updated) < CURDATE() - INTERVAL 3 DAY;
				
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for pCleanupOOB
-- ----------------------------
DROP PROCEDURE IF EXISTS `pCleanupOOB`;
DELIMITER ;;
CREATE DEFINER=`dayz`@`localhost` PROCEDURE `pCleanupOOB`()
BEGIN

	DECLARE intLineCount	INT DEFAULT 0;
	DECLARE intDummyCount	INT DEFAULT 0;
	DECLARE intDoLine			INT DEFAULT 0;
	DECLARE intWest				INT DEFAULT 0;
	DECLARE intNorth			INT DEFAULT 0;

	SELECT COUNT(*)
		INTO intLineCount
		FROM Object_DATA;

	SELECT COUNT(*)
		INTO intDummyCount
		FROM Object_DATA
		WHERE Classname = 'dummy';

	WHILE (intLineCount > intDummyCount) DO
	
		SET intDoLine = intLineCount - 1;

		SELECT ObjectUID, Worldspace
			INTO @rsObjectUID, @rsWorldspace
			FROM Object_DATA
			LIMIT intDoLine, 1;

		SELECT REPLACE(@rsWorldspace, '[', '') INTO @rsWorldspace;
		SELECT REPLACE(@rsWorldspace, ']', '') INTO @rsWorldspace;
		SELECT REPLACE(SUBSTRING(SUBSTRING_INDEX(@rsWorldspace, ',', 2), LENGTH(SUBSTRING_INDEX(@rsWorldspace, ',', 2 -1)) + 1), ',', '') INTO @West;
		SELECT REPLACE(SUBSTRING(SUBSTRING_INDEX(@rsWorldspace, ',', 3), LENGTH(SUBSTRING_INDEX(@rsWorldspace, ',', 3 -1)) + 1), ',', '') INTO @North;

		SELECT INSTR(@West, '-') INTO intWest;
		SELECT INSTR(@North, '-') INTO intNorth;

		IF (intNorth = 0) THEN
			SELECT CONVERT(@North, DECIMAL(16,8)) INTO intNorth;
		END IF;

		IF (intWest > 0 OR intNorth > 15360) THEN
			DELETE FROM Object_DATA
				WHERE ObjectUID = @rsObjectUID;
		END IF;
			
		SET intLineCount = intLineCount - 1;

	END WHILE;

END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for pMain
-- ----------------------------
DROP PROCEDURE IF EXISTS `pMain`;
DELIMITER ;;
CREATE DEFINER=`dayz`@`%` PROCEDURE `pMain`(IN `i` INT)
    MODIFIES SQL DATA
BEGIN
# Server instance ID.
#-----------------------------------------------
	DECLARE sInstance VARCHAR(8) DEFAULT i;
#-----------------------------------------------
#Last Ran
	update event_scheduler set LastRun = NOW() where System = "pMain";
#Starts Cleanup
	CALL pCleanupBase(); #comment out to disable base decay
	CALL pCleanup();

	CALL pSpawnVehicles(sInstance);
END
;;
DELIMITER ;

-- ----------------------------
-- Procedure structure for pSpawnVehicles
-- ----------------------------
DROP PROCEDURE IF EXISTS `pSpawnVehicles`;
DELIMITER ;;
CREATE DEFINER=`dayz`@`%` PROCEDURE `pSpawnVehicles`(IN `i` int)
BEGIN
	#---------------------------------------------------------------
	#Change this to affect the maximum number of vehicles on the server.
	DECLARE MaxVehicles INT DEFAULT 80;
	
	#Change this to affect the radius that is checked for existing vehicles when spawning.
	#If set to 0 or negative vehicles will always spawn despite blocking vehicles.
	DECLARE SearchRadius DOUBLE DEFAULT 10;
	#---------------------------------------------------------------
	
	DECLARE ServerInstance INT DEFAULT i;
	DECLARE MaxNumSpawn INT DEFAULT MaxVehicles - countVehicles(ServerInstance);
	
	DROP TEMPORARY TABLE IF EXISTS temp_objects;
	CREATE TEMPORARY TABLE temp_objects AS
	(
		SELECT	CONVERT(SUBSTRING(SUBSTRING_INDEX(@ws, ",", 2), LENGTH(SUBSTRING_INDEX(@ws, ",", 1)) + 2), DECIMAL(10, 5)) AS X,
				CONVERT(SUBSTRING(SUBSTRING_INDEX(@ws, ",", 3), LENGTH(SUBSTRING_INDEX(@ws, ",", 2)) + 2), DECIMAL(10, 5)) AS Y
		FROM Object_DATA
		WHERE CharacterID = 0
			AND Instance = ServerInstance
			AND (@ws := Worldspace) IS NOT NULL
			AND (@ws := REPLACE(@ws, "[", "")) IS NOT NULL
			AND (@ws := REPLACE(@ws, "]", "")) IS NOT NULL
	);
	
	DROP TEMPORARY TABLE IF EXISTS temp_locations;
	CREATE TEMPORARY TABLE temp_locations AS
	(
		SELECT Vehicle_LOCATIONS.ID, temp2.Worldspace
		FROM
		(
			SELECT Worldspace
			FROM
			(
				SELECT	Worldspace,
						CONVERT(SUBSTRING(SUBSTRING_INDEX(@ws, ",", 2), LENGTH(SUBSTRING_INDEX(@ws, ",", 1)) + 2), DECIMAL(10, 5)) AS X,
						CONVERT(SUBSTRING(SUBSTRING_INDEX(@ws, ",", 3), LENGTH(SUBSTRING_INDEX(@ws, ",", 2)) + 2), DECIMAL(10, 5)) AS Y
				FROM (SELECT Worldspace FROM Vehicle_LOCATIONS GROUP BY Worldspace) AS temp
				WHERE (@ws := Worldspace) IS NOT NULL
					AND (@ws := REPLACE(@ws, "[", "")) IS NOT NULL
					AND (@ws := REPLACE(@ws, "]", "")) IS NOT NULL
			) AS temp1
			WHERE
			(
				@distance :=
				(
					SELECT MIN(SQRT((temp_objects.X - temp1.X) * (temp_objects.X - temp1.X) + (temp_objects.Y - temp1.Y) * (temp_objects.Y - temp1.Y)))
					FROM temp_objects
				)
			) IS NULL OR @distance > SearchRadius
		) AS temp2
		JOIN Vehicle_LOCATIONS
			ON Vehicle_LOCATIONS.Worldspace = temp2.Worldspace
	);
	
	DROP TEMPORARY TABLE IF EXISTS temp_spawns;
	CREATE TEMPORARY TABLE temp_spawns AS
	(
		SELECT temp.ID, Classname, Worldspace, Chance, MinFuel, MaxFuel, MinDamage, MaxDamage
		FROM
		(
			SELECT *
			FROM Vehicle_SPAWNS
			WHERE (@numSpawnable := getNumSpawnable(ServerInstance, ID)) IS NOT NULL
				AND @numSpawnable > 0
			ORDER BY RAND()
		) AS temp
		JOIN temp_locations
			ON temp_locations.ID = temp.Location
		ORDER BY RAND()
	);
	
	SET @numSpawned = 0;
	WHILE (@numSpawned < MaxNumSpawn AND (SELECT COUNT(*) FROM temp_spawns) > 0) DO
		SET @spawnid = (SELECT ID FROM temp_spawns LIMIT 1);
		SET @chance = (SELECT Chance FROM temp_spawns LIMIT 1);
		SET @numSpawnable = getNumSpawnable(ServerInstance, @spawnid);
		IF (@numSpawnable > 0 AND RAND() < @chance) THEN
			SET @worldspace = (SELECT Worldspace FROM temp_spawns LIMIT 1);
			INSERT INTO Object_DATA (ObjectUID, Classname, Instance, CharacterID, Worldspace, Inventory, Hitpoints, Fuel, Damage, Datestamp)
			SELECT generateUID(ServerInstance), Classname, ServerInstance, 0, Worldspace,
				randomizeVehicleInventory(Classname),
				randomizeVehicleHitpoints(Classname),
				MinFuel + RAND() * (MaxFuel - MinFuel),
				MinDamage + RAND() * (MaxDamage - MinDamage),
				SYSDATE()
			FROM temp_spawns
			LIMIT 1;
			
			DELETE FROM temp_spawns WHERE Worldspace = @worldspace;
			
			SET @numSpawned = @numSpawned + 1;
		END IF;
		
		SET @numSpawnable = @numSpawnable - 1;
		
		IF (@numSpawnable < 1) THEN
			DELETE FROM temp_spawns WHERE ID = @spawnid;
		END IF;
	END WHILE;
	
	SELECT CONCAT(@numSpawned, " vehicles spawned.");
END
;;
DELIMITER ;

-- ----------------------------
-- Function structure for countVehicles
-- ----------------------------
DROP FUNCTION IF EXISTS `countVehicles`;
DELIMITER ;;
CREATE DEFINER=`dayz`@`%` FUNCTION `countVehicles`(`inst` int) RETURNS int(11)
    READS SQL DATA
BEGIN
	DECLARE count INT DEFAULT 0;
	
	SELECT COUNT(*)
	INTO count
	FROM Object_DATA
	WHERE CharacterID = 0
		AND Instance = inst;
	
	RETURN count;
END
;;
DELIMITER ;

-- ----------------------------
-- Function structure for countVehiclesClass
-- ----------------------------
DROP FUNCTION IF EXISTS `countVehiclesClass`;
DELIMITER ;;
CREATE DEFINER=`dayz`@`%` FUNCTION `countVehiclesClass`(`inst` int,`c` varchar(255)) RETURNS int(11)
    READS SQL DATA
BEGIN
	DECLARE count INT DEFAULT 0;
	
	SELECT COUNT(*)
		INTO count
		FROM Object_DATA
		WHERE Instance = inst
		AND CharacterID = 0
		AND Classname = c;
	
	RETURN count;
END
;;
DELIMITER ;

-- ----------------------------
-- Function structure for countVehiclesGroup
-- ----------------------------
DROP FUNCTION IF EXISTS `countVehiclesGroup`;
DELIMITER ;;
CREATE DEFINER=`dayz`@`%` FUNCTION `countVehiclesGroup`(`inst` int, `groupid` int) RETURNS int(11)
    READS SQL DATA
BEGIN
	DECLARE count INT;
	
	/*SELECT COUNT(*)
		INTO count
		FROM Object_DATA AS obj
		WHERE CharacterID = 0
			AND Instance = instance
		AND t = (SELECT `Group` FROM Vehicle_SPAWNS AS spawn WHERE spawn.Classname = obj.Classname LIMIT 1);*/
	
	SELECT COUNT(*)
	INTO count
	FROM Object_DATA
	WHERE CharacterID = 0
		AND Instance = inst
		AND Classname IN
		(
			SELECT Classname
			FROM Vehicle_SPAWNS
			WHERE ID IN
			(
				SELECT Spawn_ID
				FROM Vehicle_SPAWNS_GROUPS
				WHERE Group_ID = groupid
			)
		);
	
	RETURN count;
END
;;
DELIMITER ;

-- ----------------------------
-- Function structure for generateUID
-- ----------------------------
DROP FUNCTION IF EXISTS `generateUID`;
DELIMITER ;;
CREATE DEFINER=`dayz`@`%` FUNCTION `generateUID`(`inst` int) RETURNS bigint(20)
BEGIN
	DECLARE Min BIGINT DEFAULT 10000000;
	DECLARE Max BIGINT DEFAULT 99999999;
	
	DECLARE UID BIGINT DEFAULT 0;
	
	WHILE (UID = 0) DO
		SET UID = ROUND(Min + RAND() * (Max - Min));
		
		IF (UID IN (SELECT ObjectUID FROM Object_DATA WHERE CharacterID = 0 AND Instance = inst)) THEN
			SET UID = 0;
		END IF;
	END WHILE;
	
	RETURN UID;
END
;;
DELIMITER ;

-- ----------------------------
-- Function structure for getNumSpawnable
-- ----------------------------
DROP FUNCTION IF EXISTS `getNumSpawnable`;
DELIMITER ;;
CREATE DEFINER=`dayz`@`%` FUNCTION `getNumSpawnable`(`inst` int, `spawnid` int) RETURNS int(11)
BEGIN
	DECLARE Class_Max INT DEFAULT (SELECT MaxNum - countVehiclesClass(inst, Classname) FROM Vehicle_SPAWNS WHERE ID = spawnid LIMIT 1);
	DECLARE Group_Max INT DEFAULT
	(
		SELECT MIN(MaxNum - countVehiclesGroup(inst, ID))
		FROM Vehicle_GROUPS
		WHERE ID IN
		(
			SELECT Group_ID
			FROM Vehicle_SPAWNS_GROUPS
			WHERE Spawn_ID = spawnid
		)
	);
	
	RETURN IF(ISNULL(Group_Max), Class_Max, IF(Class_Max < Group_Max, Class_Max, Group_Max));
END
;;
DELIMITER ;

-- ----------------------------
-- Function structure for randomizeVehicleHitpoints
-- ----------------------------
DROP FUNCTION IF EXISTS `randomizeVehicleHitpoints`;
DELIMITER ;;
CREATE DEFINER=`dayz`@`%` FUNCTION `randomizeVehicleHitpoints`(`class` varchar(255)) RETURNS varchar(2000) CHARSET latin1
    READS SQL DATA
BEGIN
	#---------------------------------------------------------------
	#Random number r is generated in the range ]0, 1[.
	#If r + MinDamage is less than Threshold, damage to part is set to MinDamage.
	DECLARE Threshold DOUBLE DEFAULT 0.5;
	#---------------------------------------------------------------
	
	DECLARE Result varchar(2000);
	DECLARE Hitpoints_ID INT DEFAULT (SELECT Hitpoints FROM Vehicle_SPAWNS WHERE Classname = class LIMIT 1);
	
	IF (ISNULL(Hitpoints_ID)) THEN
		RETURN "[]";
	END IF;
	
	SELECT GROUP_CONCAT("[\"", PartName, "\",", TRUNCATE(IF ((@r := MinDamage + RAND() * (MaxDamage - MinDamage)) < Threshold, MinDamage, @r), 4), "]")
		INTO Result
		FROM Vehicle_HITPOINTS
		WHERE ID = Hitpoints_ID;
	
	RETURN CONCAT_WS("", "[", Result, "]");
END
;;
DELIMITER ;

-- ----------------------------
-- Function structure for randomizeVehicleInventory
-- ----------------------------
DROP FUNCTION IF EXISTS `randomizeVehicleInventory`;
DELIMITER ;;
CREATE DEFINER=`dayz`@`%` FUNCTION `randomizeVehicleInventory`(`c` varchar(255)) RETURNS longtext CHARSET latin1
    READS SQL DATA
BEGIN
	DECLARE WeaponClasses		VARCHAR(255);
	DECLARE WeaponAmounts		VARCHAR(255);
	DECLARE MagazineClasses		VARCHAR(255);
	DECLARE MagazineAmounts		VARCHAR(255);
	DECLARE BackpackClasses		VARCHAR(255);
	DECLARE BackpackAmounts		VARCHAR(255);
	
	DECLARE InventoryID INT DEFAULT (SELECT Inventory FROM Vehicle_SPAWNS WHERE Classname = c LIMIT 1);
	
	DECLARE MaxWeapons		INT DEFAULT (SELECT MaxWeapons		FROM Vehicle_SPAWNS WHERE Classname = c LIMIT 1);
	DECLARE MaxMagazines	INT DEFAULT (SELECT MaxMagazines	FROM Vehicle_SPAWNS WHERE Classname = c LIMIT 1);
	DECLARE MaxBackpacks	INT DEFAULT (SELECT MaxBackpacks	FROM Vehicle_SPAWNS WHERE Classname = c LIMIT 1);
	
	IF (ISNULL(InventoryID)) THEN
		RETURN "[]";
	END IF;
	
	#Weapons
	SET @amt := 0;
	SET @sum := 0;
	SELECT	GROUP_CONCAT("\"", Classname, "\""),
			GROUP_CONCAT(IF(@sum > MaxWeapons, MaxWeapons - @sum + @amt, @amt))
	INTO WeaponClasses, WeaponAmounts
	FROM 
	(
		SELECT *
		FROM Vehicle_INVENTORY
		WHERE ID = InventoryID
			AND Type = "Weapon" 
			AND RAND() < Chance
		ORDER BY RAND()
	) AS x
	WHERE (@amt := ROUND(x.MinAmount + RAND() * (x.MaxAmount - x.MinAmount))) IS NOT NULL
		AND (@sum := @sum + @amt) IS NOT NULL
		AND @sum - @amt < MaxWeapons;
	
	#Magazines
	SET @amt := 0;
	SET @sum := 0;
	SELECT	GROUP_CONCAT("\"", Classname, "\""),
			GROUP_CONCAT(IF(@sum > MaxMagazines, MaxMagazines - @sum + @amt, @amt))
	INTO MagazineClasses, MagazineAmounts
	FROM 
	(
		SELECT *
		FROM Vehicle_INVENTORY 
		WHERE ID = InventoryID
			AND Type = "Magazine" 
			AND RAND() < Chance
		ORDER BY RAND()
	) AS x
	WHERE (@amt := ROUND(x.MinAmount + RAND() * (x.MaxAmount - x.MinAmount))) IS NOT NULL
		AND (@sum := @sum + @amt) IS NOT NULL
		AND @sum - @amt < MaxMagazines;
	
	#Backpacks
	SET @amt := 0;
	SET @sum := 0;
	SELECT	GROUP_CONCAT("\"", Classname, "\""),
			GROUP_CONCAT(IF(@sum > MaxBackpacks, MaxBackpacks - @sum + @amt, @amt))
	INTO BackpackClasses, BackpackAmounts
	FROM 
	(
		SELECT *
		FROM Vehicle_INVENTORY 
		WHERE ID = InventoryID
			AND Type = "Backpack" 
			AND RAND() < Chance
		ORDER BY RAND()
	) AS x
	WHERE (@amt := ROUND(x.MinAmount + RAND() * (x.MaxAmount - x.MinAmount))) IS NOT NULL
		AND (@sum := @sum + @amt) IS NOT NULL
		AND @sum - @amt < MaxBackpacks;
	
	#Concatenate all classes and amounts into one string in the format:
	#[[[<backpack classes>],[<weapon amounts>]],[[<magazine classes>],[<magazine amounts>]],[[<backpack classes>],[<backpack amounts>]]]
	RETURN CONCAT_WS
	(
		"",
		"[[[",			WeaponClasses,
		"], [",			WeaponAmounts,
		"]], [[",		MagazineClasses,
		"], [",			MagazineAmounts,
		"]], [[",		BackpackClasses,
		"], [",			BackpackAmounts,
		"]]]"
	);
END
;;
DELIMITER ;

-- ----------------------------
-- Function structure for rndspawn
-- ----------------------------
DROP FUNCTION IF EXISTS `rndspawn`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `rndspawn`(`chance` double) RETURNS tinyint(1)
    DETERMINISTIC
BEGIN

	DECLARE bspawn tinyint(1) DEFAULT 0;

	IF (RAND() <= chance) THEN
		SET bspawn = 1;
	END IF;

	RETURN bspawn;

END
;;
DELIMITER ;

-- ----------------------------
-- Event structure for 3h updates
-- ----------------------------
DROP EVENT IF EXISTS `3h updates`;
DELIMITER ;;
CREATE DEFINER=`dayz`@`%` EVENT `3h updates` ON SCHEDULE EVERY 3 HOUR STARTS '2015-01-26 10:29:45' ON COMPLETION NOT PRESERVE ENABLE DO BEGIN
	update event_scheduler set LastRun = NOW() where System = "3hRespawns";
	
	CALL `pMain`('1337');
	
END
;;
DELIMITER ;
