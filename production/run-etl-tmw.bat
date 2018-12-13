::RUNNING ETL-TMW

::TYPE LOCATION OF ETL_UI PROJECT
::set etl_ui_loc=YOUR_ETL_UI_LOCATON

::TYPE PATH OF etl-app-tmw-1.0.0.jar
::set etl_app_jar_path=YOUR_ETL-APP-TMW-1.0.0.jar_PATH

::OR USE DEFAULTS AND MOVE DOWNLOADED ETL-UI TO C:\etl-tmw\
::AND MOVE etl-app-tmw-1.0.0.jar FROM ETL-APP\production TO TO C:\etl-tmw\

::DEFAULTS
set etl_ui_loc=C:\etl-tmw\etl-ui
set etl_app_jar_path=C:\etl-tmw\etl-app-tmw-1.0.0.jar

mysql --host=127.0.0.1 --port=3306 --user=root --password=Test123. -e"CREATE DATABASE IF NOT EXISTS etlapp;ALTER DATABASE etlapp CHARACTER SET utf8 COLLATE utf8_unicode_ci;SET NAMES 'UTF8';SET CHARSET 'UTF8';"

start cmd /k npm start --prefix %etl_ui_loc%
start cmd /k java -jar %etl_app_jar_path%
