@ECHO OFF
ECHO STARTING SERVER...
START .\expansion\beta\arma2oaserver.exe -mod=Expansion\beta;Expansion\beta\expansion;ca;@hive;@dayz -name=cfgdayz -config=cfgdayz\server.cfg -cfg=cfgdayz\basic.cfg -profiles=cfgdayz -enableHT
EXIT