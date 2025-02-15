-- --------------------------------------------------------
-- Хост:                         127.0.0.1
-- Версия сервера:               10.6.4-MariaDB - mariadb.org binary distribution
-- Операционная система:         Win64
-- HeidiSQL Версия:              11.3.0.6295
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- Дамп структуры для таблица acore_characters.guild_bank_eventlog
DROP TABLE IF EXISTS `guild_bank_eventlog`;
CREATE TABLE IF NOT EXISTS `guild_bank_eventlog` (
  `guildid` INT unsigned NOT NULL DEFAULT 0 COMMENT 'Guild Identificator',
  `LogGuid` INT unsigned NOT NULL DEFAULT 0 COMMENT 'Log record identificator - auxiliary column',
  `TabId` TINYINT unsigned NOT NULL DEFAULT 0 COMMENT 'Guild bank TabId',
  `EventType` TINYINT unsigned NOT NULL DEFAULT 0 COMMENT 'Event type',
  `PlayerGuid` INT unsigned NOT NULL DEFAULT 0,
  `ItemOrMoney` INT unsigned NOT NULL DEFAULT 0,
  `ItemStackCount` SMALLINT unsigned NOT NULL DEFAULT 0,
  `DestTabId` TINYINT unsigned NOT NULL DEFAULT 0 COMMENT 'Destination Tab Id',
  `TimeStamp` INT unsigned NOT NULL DEFAULT 0 COMMENT 'Event UNIX time',
  PRIMARY KEY (`guildid`,`LogGuid`,`TabId`),
  KEY `guildid_key` (`guildid`),
  KEY `Idx_PlayerGuid` (`PlayerGuid`),
  KEY `Idx_LogGuid` (`LogGuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Дамп данных таблицы acore_characters.guild_bank_eventlog: ~0 rows (приблизительно)
DELETE FROM `guild_bank_eventlog`;
/*!40000 ALTER TABLE `guild_bank_eventlog` DISABLE KEYS */;
/*!40000 ALTER TABLE `guild_bank_eventlog` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
