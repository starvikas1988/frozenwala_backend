<?php defined('BASEPATH') OR exit('No direct script access allowed'); ?>

ERROR - 2024-10-12 16:31:38 --> Query error: MySQL server has gone away - Invalid query: DELETE FROM `ci_sessions`
WHERE `timestamp` <= 1728723698
ERROR - 2024-10-12 16:31:38 --> Query error: MySQL server has gone away - Invalid query: DELETE FROM `ci_sessions`
WHERE `id` = '78fbc142a6472bb9162f9351876ff410cdd9ab0d'
ERROR - 2024-10-12 16:31:38 --> Severity: Warning --> ini_set(): A session is active. You cannot change the session module's ini settings at this time /home/u583567323/domains/sianceedu.com/public_html/jee/system/libraries/Session/Session_driver.php 205
ERROR - 2024-10-12 16:31:38 --> Severity: Warning --> session_destroy(): Session object destruction failed /home/u583567323/domains/sianceedu.com/public_html/jee/system/libraries/Session/Session.php 702
ERROR - 2024-10-12 16:31:38 --> Query error: MySQL server has gone away - Invalid query: SELECT RELEASE_LOCK('dead696dda07d06faf6873fd375c47cc') AS ci_session_lock
ERROR - 2024-10-12 16:31:38 --> Severity: error --> Exception: Call to a member function row() on bool /home/u583567323/domains/sianceedu.com/public_html/jee/system/libraries/Session/drivers/Session_database_driver.php 425
ERROR - 2024-10-12 16:31:43 --> Could not find the language line "Chalan"
ERROR - 2024-10-12 16:31:49 --> Could not find the language line "Chalan"
ERROR - 2024-10-12 16:32:55 --> Could not find the language line "Chalan"
ERROR - 2024-10-12 16:35:22 --> Could not find the language line "Chalan"
ERROR - 2024-10-12 16:36:59 --> Could not find the language line "Chalan"
ERROR - 2024-10-12 16:37:22 --> Could not find the language line "Chalan"
ERROR - 2024-10-12 16:37:26 --> Could not find the language line "Chalan"
ERROR - 2024-10-12 16:38:36 --> Could not find the language line "Chalan"
ERROR - 2024-10-12 16:39:20 --> Could not find the language line "Chalan"
ERROR - 2024-10-12 16:39:22 --> Could not find the language line "Chalan"
ERROR - 2024-10-12 16:47:26 --> Could not find the language line "Chalan"
ERROR - 2024-10-12 16:47:32 --> Could not find the language line "Chalan"
ERROR - 2024-10-12 16:54:48 --> Could not find the language line "Chalan"
ERROR - 2024-10-12 18:06:59 --> Could not find the language line "Chalan"
ERROR - 2024-10-12 18:07:15 --> Could not find the language line "Chalan"
ERROR - 2024-10-12 18:07:35 --> Could not find the language line "Chalan"
ERROR - 2024-10-12 18:08:32 --> Could not find the language line "Chalan"
ERROR - 2024-10-12 18:08:50 --> Could not find the language line "Chalan"
ERROR - 2024-10-12 18:09:25 --> Could not find the language line "Chalan"
ERROR - 2024-10-12 18:09:32 --> Could not find the language line "Chalan"
ERROR - 2024-10-12 18:10:43 --> Query error: MySQL server has gone away - Invalid query: SELECT `a`.`id`, `a`.`item_image`, `a`.`item_code`, `a`.`item_name`, `e`.`brand_name`, `b`.`category_name`, `c`.`unit_name`, `a`.`stock`, `a`.`alert_qty`, `a`.`sales_price`, `d`.`tax_name`, `a`.`service_bit`, `d`.`tax`, `a`.`status`, `a`.`store_id`, `a`.`sku`, `a`.`hsn`, `a`.`item_group`, CASE WHEN e.brand_name IS NULL THEN '' ELSE e.brand_name END AS brand_name
FROM `db_items` as `a`
LEFT JOIN `db_category` as `b` ON `b`.`id`=`a`.`category_id`
LEFT JOIN `db_units` as `c` ON `c`.`id`=`a`.`unit_id`
LEFT JOIN `db_tax` as `d` ON `d`.`id`=`a`.`tax_id`
LEFT JOIN `db_brands` as `e` ON `e`.`id`=`a`.`brand_id`
WHERE `a`.`store_id` = '2'
AND (`a`.`item_group` is NULL || a.item_group = 'Single')
AND   (
`a`.`id` LIKE '%GODREJ%' ESCAPE '!'
OR  `a`.`item_image` LIKE '%GODREJ%' ESCAPE '!'
OR  `a`.`item_code` LIKE '%GODREJ%' ESCAPE '!'
OR  `a`.`item_name` LIKE '%GODREJ%' ESCAPE '!'
OR  `e`.`brand_name` LIKE '%GODREJ%' ESCAPE '!'
OR  `b`.`category_name` LIKE '%GODREJ%' ESCAPE '!'
OR  `c`.`unit_name` LIKE '%GODREJ%' ESCAPE '!'
OR  `a`.`stock` LIKE '%GODREJ%' ESCAPE '!'
OR  `a`.`alert_qty` LIKE '%GODREJ%' ESCAPE '!'
OR  `a`.`sales_price` LIKE '%GODREJ%' ESCAPE '!'
OR  `d`.`tax_name` LIKE '%GODREJ%' ESCAPE '!'
OR  `a`.`service_bit` LIKE '%GODREJ%' ESCAPE '!'
OR  `d`.`tax` LIKE '%GODREJ%' ESCAPE '!'
OR  `a`.`status` LIKE '%GODREJ%' ESCAPE '!'
OR  `a`.`store_id` LIKE '%GODREJ%' ESCAPE '!'
OR  `a`.`sku` LIKE '%GODREJ%' ESCAPE '!'
OR  `a`.`hsn` LIKE '%GODREJ%' ESCAPE '!'
OR  `a`.`item_group` LIKE '%GODREJ%' ESCAPE '!'
 )
ORDER BY `a`.`id` DESC
 LIMIT 10
ERROR - 2024-10-12 18:10:43 --> Severity: error --> Exception: Call to a member function result() on bool /home/u583567323/domains/sianceedu.com/public_html/jee/application/models/Items_model.php 133
ERROR - 2024-10-12 18:10:43 --> Query error: MySQL server has gone away - Invalid query: UPDATE `ci_sessions` SET `timestamp` = 1728736843
WHERE `id` = 'fd03c26a09e9e37ffde8ba646f00a7fb7a662832'
ERROR - 2024-10-12 18:10:43 --> Severity: Warning --> ini_set(): A session is active. You cannot change the session module's ini settings at this time /home/u583567323/domains/sianceedu.com/public_html/jee/system/libraries/Session/Session_driver.php 205
ERROR - 2024-10-12 18:10:43 --> Severity: Warning --> session_write_close(): Failed to write session data using user defined save handler. (session.save_path: /opt/alt/php74/var/lib/php/session) Unknown 0
ERROR - 2024-10-12 18:10:43 --> Query error: MySQL server has gone away - Invalid query: SELECT RELEASE_LOCK('cbbbe19bf054eadbab85b7e00610a307') AS ci_session_lock
