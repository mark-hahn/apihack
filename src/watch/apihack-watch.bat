title "watch apihack"

call "cmd /c start client-watch.bat"

set APIHACK_PORT=8080

rem use utf-8 encoding in console output:
chcp 65001

node dev-mode.js ^
--project_directory ".."					 ^
--watch     		"['../**.coffee']" 		 ^
--main-file 		"srvr/apihack.coffee" 	 ^
--coffee-script 	C:\Users\Administrator\Documents\GitHub\apihack\node_modules\coffee-script\bin\coffee

pause

