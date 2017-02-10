# DayZ 1.8.8 with db fix
 # [EN]
All who have this error:
Database: [Error] Error 1146 (Table 'hivemind.Object_DATA' doesn't exist) in MySQLQuery SQL: 'SELECT COUNT(*) FROM `Object_DATA` WHERE `Instance` = 1337 AND `ObjectUID` <> 0 AND `CharacterID` <> 0 AND `Datestamp` < DATE_SUB(CURRENT_TIMESTAMP, INTERVAL 6 DAY) AND ( (`Inventory` IS NULL) OR (`Inventory` = '[]') )'
Database: [Error] Error 1146 (Table 'hivemind.Object_DATA' doesn't exist) in MySQLQuery SQL: 'SELECT `ObjectID`, `Classname`, `CharacterID`, `Worldspace`, `Inventory`, `Hitpoints`, `Fuel`, `Damage` FROM `Object_DATA` WHERE `Instance`=1337 AND `Classname` IS NOT NULL'

 Can use this server build.
 
 This server master build have a little fix in database for using with remote Linux servers.
 
 Server ready to work.


# Installation server

1. Download Arma 2+ Arma 2:OA and mod DayZ
2. Download and install MS Net. freamwork 4.5 and Visual
3. Download server-master, copy to split folder, make Ubuntu/Windows DataBase server
4. Create user hivemind with password hivemind-dayz
5. Upload the SQL file Linux or Windows to your server
6. Or u use remote server edit File HiveExt in folder cfgdayz and in line "host" change "127.0.0.1" to remote ip server. 
7. Change settings in server.cfg and in folder BattlEye/BEserver.cfg
8. Start "start_server"

 # [RU]
 
  #Проект в скором времени будет развиваться в своем направлении не зависимо от других сборок.
  
 У всех кого при запуске сервера из под Windows с БД на Linux появляеться ошибка 1146, которая означает, что в бд не найдена таблица.
 
 Можете использовать эту сборку сервера, она подходит как и Windows-Windows так, и Windows-Linux.
 
 Сервер полностью готов для работы с установки.
 
 Установка сервера:
 1. Иметь Arma2 arma2:OA и DAyZ Mod в одной папке(пример D:\arma2) чем короче путь тем лучше и объязательно на английском языке во избежание ошибок.
 2.Установить NET Framework 4.5 и MS Visual
  - Скачать https://www.microsoft.com/en-us/download/details.aspx?id=30679 2012 Update 4
  https://www.microsoft.com/en-us/download/details.aspx?id=40784 2013 Update 2
  https://www.microsoft.com/en-us/download/details.aspx?id=48145 2015 Update 3
 Или же установить Visual Studio community edition: https://www.visualstudio.com/en-us/products/visual-studio-community-vs.aspx
 3. Создаем пользывателя под названием hivemind с паролем hivemind-dayz и БД с таким же названием.
 4. Импортировать готовый SQL файл с папки SQL.
 5. Установить настройки времени и подключение к БД в файле HiveExt.ini.
 6. Изменить настройки под себя в файле server.cfg, установить максимальный пинг и РКон пароль в файле Battleye\BEServer.cfg.
 7. Стартуем сервер бат файлом под названием "Start_server.bat"