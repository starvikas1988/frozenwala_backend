<?php defined('BASEPATH') OR exit('No direct script access allowed'); ?>

ERROR - 2025-01-07 16:00:48 --> Query error: MySQL server has gone away - Invalid query: SELECT @@sql_mode AS sql_mode
ERROR - 2025-01-07 16:00:48 --> Severity: error --> Exception: Call to a member function row() on bool /home/u583567323/domains/sianceedu.com/public_html/jee/application/helpers/custom_helper.php 44
ERROR - 2025-01-07 16:00:48 --> Query error: MySQL server has gone away - Invalid query: INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('fbf89074f6cd516aba35dbd65369a1edcbf06a0e', '150.129.64.212', 1736245848, '__ci_last_regenerate|i:1736245825;currency|s:0:\"\";currency_placement|s:0:\"\";currency_code|s:0:\"\";view_date|s:10:\"dd-mm-yyyy\";view_time|s:2:\"12\";decimals|s:1:\"2\";qty_decimals|s:1:\"2\";store_name|s:10:\"SAAS ADMIN\";')
ERROR - 2025-01-07 16:00:48 --> Severity: Warning --> ini_set(): A session is active. You cannot change the session module's ini settings at this time /home/u583567323/domains/sianceedu.com/public_html/jee/system/libraries/Session/Session_driver.php 205
ERROR - 2025-01-07 16:00:48 --> Severity: Warning --> session_write_close(): Failed to write session data using user defined save handler. (session.save_path: /opt/alt/php74/var/lib/php/session) Unknown 0
ERROR - 2025-01-07 16:00:48 --> Query error: MySQL server has gone away - Invalid query: SELECT RELEASE_LOCK('549250c5190dcc912586d76515d2e3c7') AS ci_session_lock
