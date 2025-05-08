<?php defined('BASEPATH') OR exit('No direct script access allowed'); ?>

ERROR - 2024-07-10 10:47:31 --> Query error: MySQL server has gone away - Invalid query: UPDATE `ci_sessions` SET `timestamp` = 1720588651, `data` = '__ci_last_regenerate|i:1720588630;currency|s:0:\"\";currency_placement|s:0:\"\";currency_code|s:0:\"\";view_date|s:10:\"dd-mm-yyyy\";view_time|s:2:\"12\";decimals|s:1:\"2\";qty_decimals|s:1:\"2\";store_name|s:10:\"SAAS ADMIN\";'
WHERE `id` = '331799eb3ef10994608bfab1cacbc4ba2170f55c'
ERROR - 2024-07-10 10:47:31 --> Query error: MySQL server has gone away - Invalid query: SELECT RELEASE_LOCK('5ca0cd5cf38358b89f28385245626fed') AS ci_session_lock
ERROR - 2024-07-10 10:47:37 --> Could not find the language line "Chalan"
ERROR - 2024-07-10 10:47:42 --> Could not find the language line "Chalan"
ERROR - 2024-07-10 10:47:56 --> Could not find the language line "Chalan"
ERROR - 2024-07-10 10:48:10 --> Could not find the language line "Chalan"
ERROR - 2024-07-10 11:35:21 --> Could not find the language line "Chalan"
ERROR - 2024-07-10 11:37:55 --> Could not find the language line "Chalan"
ERROR - 2024-07-10 11:38:15 --> Could not find the language line "Chalan"
ERROR - 2024-07-10 11:44:18 --> Could not find the language line "Chalan"
ERROR - 2024-07-10 11:44:49 --> Could not find the language line "Chalan"
ERROR - 2024-07-10 12:01:00 --> Could not find the language line "Chalan"
ERROR - 2024-07-10 14:47:18 --> Could not find the language line "Chalan"
ERROR - 2024-07-10 14:47:21 --> Could not find the language line "Chalan"
ERROR - 2024-07-10 19:08:11 --> Could not find the language line "Chalan"
ERROR - 2024-07-10 19:08:33 --> Could not find the language line "Chalan"
ERROR - 2024-07-10 19:21:06 --> Query error: MySQL server has gone away - Invalid query: SELECT @@sql_mode AS sql_mode
ERROR - 2024-07-10 19:21:06 --> Severity: error --> Exception: Call to a member function row() on bool /home/u583567323/domains/sianceedu.com/public_html/jee/application/helpers/custom_helper.php 44
ERROR - 2024-07-10 19:21:06 --> Query error: MySQL server has gone away - Invalid query: UPDATE `ci_sessions` SET `timestamp` = 1720619466
WHERE `id` = '9847b4206919aabeca33608344a22789cb72b4aa'
ERROR - 2024-07-10 19:21:06 --> Severity: Warning --> ini_set(): A session is active. You cannot change the session module's ini settings at this time /home/u583567323/domains/sianceedu.com/public_html/jee/system/libraries/Session/Session_driver.php 205
ERROR - 2024-07-10 19:21:06 --> Severity: Warning --> session_write_close(): Failed to write session data using user defined save handler. (session.save_path: /opt/alt/php74/var/lib/php/session) Unknown 0
ERROR - 2024-07-10 19:21:06 --> Query error: MySQL server has gone away - Invalid query: SELECT RELEASE_LOCK('474512eec5e246953d325f37daa8092f') AS ci_session_lock
ERROR - 2024-07-10 19:21:14 --> Could not find the language line "Chalan"
ERROR - 2024-07-10 19:21:22 --> Could not find the language line "Chalan"
ERROR - 2024-07-10 19:22:17 --> Could not find the language line "Chalan"
ERROR - 2024-07-10 19:22:28 --> Could not find the language line "Chalan"
ERROR - 2024-07-10 19:22:28 --> Could not find the language line "Chalan"
ERROR - 2024-07-10 19:22:33 --> Could not find the language line "Chalan"
ERROR - 2024-07-10 19:22:47 --> Could not find the language line "Chalan"
ERROR - 2024-07-10 19:23:04 --> Could not find the language line "Chalan"
ERROR - 2024-07-10 19:50:03 --> Query error: MySQL server has gone away - Invalid query: SELECT count(*) as tot FROM db_permissions where permissions="sales_gst_report" and role_id=2
ERROR - 2024-07-10 19:50:03 --> Severity: error --> Exception: Call to a member function row() on bool /home/u583567323/domains/sianceedu.com/public_html/jee/application/core/MY_Controller.php 199
ERROR - 2024-07-10 19:50:03 --> Query error: MySQL server has gone away - Invalid query: UPDATE `ci_sessions` SET `timestamp` = 1720621203
WHERE `id` = '18889d2aa51a0ac5145478e34ac0b5e7c5c7b7fe'
ERROR - 2024-07-10 19:50:03 --> Severity: Warning --> ini_set(): A session is active. You cannot change the session module's ini settings at this time /home/u583567323/domains/sianceedu.com/public_html/jee/system/libraries/Session/Session_driver.php 205
ERROR - 2024-07-10 19:50:03 --> Severity: Warning --> session_write_close(): Failed to write session data using user defined save handler. (session.save_path: /opt/alt/php74/var/lib/php/session) Unknown 0
ERROR - 2024-07-10 19:50:03 --> Query error: MySQL server has gone away - Invalid query: SELECT RELEASE_LOCK('73c9a76b45c2e00d52076474ed6fdb7f') AS ci_session_lock
ERROR - 2024-07-10 20:01:11 --> Could not find the language line "Chalan"
ERROR - 2024-07-10 20:01:21 --> Could not find the language line "Chalan"
ERROR - 2024-07-10 20:09:51 --> Could not find the language line "Chalan"
ERROR - 2024-07-10 20:09:58 --> Could not find the language line "Chalan"
ERROR - 2024-07-10 20:10:43 --> Could not find the language line "Chalan"
ERROR - 2024-07-10 20:11:07 --> Query error: MySQL server has gone away - Invalid query: SELECT `a`.`sales_price`, `a`.`item_code`, `a`.`purchase_price`, `a`.`item_name`, `a`.`tax_type`, `a`.`store_id`, `a`.`id` as `item_id`, `a`.`item_group`, `d`.`category_name`, `c`.`brand_name`, `b`.`tax_name`
FROM (`db_items` as `a`, `db_tax` as `b`)
LEFT JOIN `db_brands` as `c` ON `c`.`id`=`a`.`brand_id`
LEFT JOIN `db_category` as `d` ON `d`.`id`=`a`.`category_id`
WHERE `a`.`store_id` = '2'
AND `a`.`store_id` = '2'
AND `b`.`id` = `a`.`tax_id`
AND `a`.`service_bit` =0
ERROR - 2024-07-10 20:11:07 --> Severity: error --> Exception: Call to a member function num_rows() on bool /home/u583567323/domains/sianceedu.com/public_html/jee/application/models/Reports_model.php 737
ERROR - 2024-07-10 20:11:07 --> Query error: MySQL server has gone away - Invalid query: UPDATE `ci_sessions` SET `timestamp` = 1720622467
WHERE `id` = '51723675063582d4efbc633faf1b2589d153a963'
ERROR - 2024-07-10 20:11:07 --> Severity: Warning --> ini_set(): A session is active. You cannot change the session module's ini settings at this time /home/u583567323/domains/sianceedu.com/public_html/jee/system/libraries/Session/Session_driver.php 205
ERROR - 2024-07-10 20:11:07 --> Severity: Warning --> session_write_close(): Failed to write session data using user defined save handler. (session.save_path: /opt/alt/php74/var/lib/php/session) Unknown 0
ERROR - 2024-07-10 20:11:07 --> Query error: MySQL server has gone away - Invalid query: SELECT RELEASE_LOCK('5473f5879b8d1fed98e8f0fbbe04cb77') AS ci_session_lock
ERROR - 2024-07-10 20:11:42 --> Could not find the language line "Chalan"
ERROR - 2024-07-10 20:11:51 --> Could not find the language line "Chalan"
ERROR - 2024-07-10 20:16:00 --> Could not find the language line "Chalan"
ERROR - 2024-07-10 20:16:07 --> Could not find the language line "Chalan"
ERROR - 2024-07-10 22:42:13 --> Could not find the language line "Chalan"
ERROR - 2024-07-10 22:42:30 --> Could not find the language line "Chalan"
ERROR - 2024-07-10 22:43:04 --> Could not find the language line "Chalan"
ERROR - 2024-07-10 22:43:45 --> Could not find the language line "Chalan"
ERROR - 2024-07-10 22:44:02 --> Could not find the language line "Chalan"
ERROR - 2024-07-10 22:44:05 --> Could not find the language line "Chalan"
ERROR - 2024-07-10 22:44:16 --> Could not find the language line "Chalan"
ERROR - 2024-07-10 22:44:41 --> Could not find the language line "Chalan"
ERROR - 2024-07-10 22:45:14 --> Could not find the language line "Chalan"
ERROR - 2024-07-10 22:45:16 --> Could not find the language line "Chalan"
ERROR - 2024-07-10 22:45:19 --> Could not find the language line "Chalan"
ERROR - 2024-07-10 22:45:20 --> Could not find the language line "Chalan"
ERROR - 2024-07-10 22:46:18 --> Could not find the language line "Chalan"
