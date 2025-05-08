<?php defined('BASEPATH') OR exit('No direct script access allowed'); ?>

ERROR - 2025-01-10 16:40:38 --> Could not find the language line "Chalan"
ERROR - 2025-01-10 16:40:49 --> Could not find the language line "Chalan"
ERROR - 2025-01-10 16:41:52 --> Query error: MySQL server has gone away - Invalid query: SELECT `warehouse_id`
FROM `db_userswarehouses`
WHERE `user_id` = '2'
ERROR - 2025-01-10 16:41:52 --> Severity: error --> Exception: Call to a member function result() on bool /home/u583567323/domains/sianceedu.com/public_html/jee/application/helpers/custom_helper.php 874
ERROR - 2025-01-10 16:41:52 --> Query error: MySQL server has gone away - Invalid query: UPDATE `ci_sessions` SET `timestamp` = 1736507512
WHERE `id` = 'feb7bf73767109690cb270b2dbf0a0b8cd4974a7'
ERROR - 2025-01-10 16:41:52 --> Severity: Warning --> ini_set(): A session is active. You cannot change the session module's ini settings at this time /home/u583567323/domains/sianceedu.com/public_html/jee/system/libraries/Session/Session_driver.php 205
ERROR - 2025-01-10 16:41:52 --> Severity: Warning --> session_write_close(): Failed to write session data using user defined save handler. (session.save_path: /opt/alt/php74/var/lib/php/session) Unknown 0
ERROR - 2025-01-10 16:41:52 --> Query error: MySQL server has gone away - Invalid query: SELECT RELEASE_LOCK('a24570e850ab230e89cb5036d9254a52') AS ci_session_lock
