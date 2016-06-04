# DayZ 1.8.7 with db fix
All who have this error:
Database: [Error] Error 1146 (Table 'hivemind.Object_DATA' doesn't exist) in MySQLQuery SQL: 'SELECT COUNT(*) FROM `Object_DATA` WHERE `Instance` = 1337 AND `ObjectUID` <> 0 AND `CharacterID` <> 0 AND `Datestamp` < DATE_SUB(CURRENT_TIMESTAMP, INTERVAL 6 DAY) AND ( (`Inventory` IS NULL) OR (`Inventory` = '[]') )'
Database: [Error] Error 1146 (Table 'hivemind.Object_DATA' doesn't exist) in MySQLQuery SQL: 'SELECT `ObjectID`, `Classname`, `CharacterID`, `Worldspace`, `Inventory`, `Hitpoints`, `Fuel`, `Damage` FROM `Object_DATA` WHERE `Instance`=1337 AND `Classname` IS NOT NULL'

 Can use this server build.
 
 This server master build have a little fix in database for using with remote Linux servers.
 
 Сервер имеющий маленький фикс базы данных для работы с удалёнными серверами Линукс.
 
 Server ready to work.
 
 Сервер готовый к работе.

# Installation server

1. Download Arma 2+ Arma 2:OA and mod DayZ
2. Download and install MS Net. freamwork 4.5 and Visual
3. Download server-master, copy to split folder, make Ubuntu/Windows DataBase server
4. Create user hivemind with password hivemind-dayz
5. Upload the SQL file Linux or Windows to your server
6. Or u use remote server edit File HiveExt in folder cfgdayz and in line "host" change "127.0.0.1" to remote ip server. 
7. Change settings in server.cfg and in folder BattlEye/BEserver.cfg
8. Start "start_server"
