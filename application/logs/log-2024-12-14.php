<?php defined('BASEPATH') OR exit('No direct script access allowed'); ?>

ERROR - 2024-12-14 14:47:58 --> Could not find the language line "Chalan"
ERROR - 2024-12-14 14:48:02 --> Could not find the language line "Chalan"
ERROR - 2024-12-14 14:48:13 --> Could not find the language line "Chalan"
ERROR - 2024-12-14 16:31:53 --> Could not find the language line "Chalan"
ERROR - 2024-12-14 16:31:57 --> Could not find the language line "Chalan"
ERROR - 2024-12-14 16:32:24 --> Could not find the language line "Chalan"
ERROR - 2024-12-14 16:32:35 --> Could not find the language line "Chalan"
ERROR - 2024-12-14 16:33:14 --> Query error: MySQL server has gone away - Invalid query: SELECT `a`.`id`, `a`.`item_image`, `a`.`item_code`, `a`.`item_name`, `e`.`brand_name`, `b`.`category_name`, `c`.`unit_name`, `a`.`stock`, `a`.`alert_qty`, `a`.`sales_price`, `d`.`tax_name`, `a`.`service_bit`, `d`.`tax`, `a`.`status`, `a`.`store_id`, `a`.`sku`, `a`.`hsn`, `a`.`item_group`, CASE WHEN e.brand_name IS NULL THEN '' ELSE e.brand_name END AS brand_name
FROM `db_items` as `a`
LEFT JOIN `db_category` as `b` ON `b`.`id`=`a`.`category_id`
LEFT JOIN `db_units` as `c` ON `c`.`id`=`a`.`unit_id`
LEFT JOIN `db_tax` as `d` ON `d`.`id`=`a`.`tax_id`
LEFT JOIN `db_brands` as `e` ON `e`.`id`=`a`.`brand_id`
WHERE `a`.`store_id` = '2'
AND (`a`.`item_group` is NULL || a.item_group = 'Single')
AND   (
`a`.`id` LIKE '%MICR%' ESCAPE '!'
OR  `a`.`item_image` LIKE '%MICR%' ESCAPE '!'
OR  `a`.`item_code` LIKE '%MICR%' ESCAPE '!'
OR  `a`.`item_name` LIKE '%MICR%' ESCAPE '!'
OR  `e`.`brand_name` LIKE '%MICR%' ESCAPE '!'
OR  `b`.`category_name` LIKE '%MICR%' ESCAPE '!'
OR  `c`.`unit_name` LIKE '%MICR%' ESCAPE '!'
OR  `a`.`stock` LIKE '%MICR%' ESCAPE '!'
OR  `a`.`alert_qty` LIKE '%MICR%' ESCAPE '!'
OR  `a`.`sales_price` LIKE '%MICR%' ESCAPE '!'
OR  `d`.`tax_name` LIKE '%MICR%' ESCAPE '!'
OR  `a`.`service_bit` LIKE '%MICR%' ESCAPE '!'
OR  `d`.`tax` LIKE '%MICR%' ESCAPE '!'
OR  `a`.`status` LIKE '%MICR%' ESCAPE '!'
OR  `a`.`store_id` LIKE '%MICR%' ESCAPE '!'
OR  `a`.`sku` LIKE '%MICR%' ESCAPE '!'
OR  `a`.`hsn` LIKE '%MICR%' ESCAPE '!'
OR  `a`.`item_group` LIKE '%MICR%' ESCAPE '!'
 )
ORDER BY `a`.`id` DESC
 LIMIT 10
ERROR - 2024-12-14 16:33:14 --> Severity: error --> Exception: Call to a member function result() on bool /home/u583567323/domains/sianceedu.com/public_html/jee/application/models/Items_model.php 133
ERROR - 2024-12-14 16:33:14 --> Query error: MySQL server has gone away - Invalid query: UPDATE `ci_sessions` SET `timestamp` = 1734174194
WHERE `id` = 'c5d7e2a179bfb180d71ccc425604037099ce4477'
ERROR - 2024-12-14 16:33:14 --> Severity: Warning --> ini_set(): A session is active. You cannot change the session module's ini settings at this time /home/u583567323/domains/sianceedu.com/public_html/jee/system/libraries/Session/Session_driver.php 205
ERROR - 2024-12-14 16:33:14 --> Severity: Warning --> session_write_close(): Failed to write session data using user defined save handler. (session.save_path: /opt/alt/php74/var/lib/php/session) Unknown 0
ERROR - 2024-12-14 16:33:14 --> Query error: MySQL server has gone away - Invalid query: SELECT RELEASE_LOCK('2c3b28c9148237daafdbae96b2a53d56') AS ci_session_lock
ERROR - 2024-12-14 16:33:35 --> Could not find the language line "Chalan"
ERROR - 2024-12-14 16:34:33 --> Query error: MySQL server has gone away - Invalid query: SELECT count(*) as tot FROM db_permissions where permissions="items_view" and role_id=2
ERROR - 2024-12-14 16:34:33 --> Severity: error --> Exception: Call to a member function row() on bool /home/u583567323/domains/sianceedu.com/public_html/jee/application/core/MY_Controller.php 199
ERROR - 2024-12-14 16:34:33 --> Query error: MySQL server has gone away - Invalid query: UPDATE `ci_sessions` SET `timestamp` = 1734174273
WHERE `id` = 'c5d7e2a179bfb180d71ccc425604037099ce4477'
ERROR - 2024-12-14 16:34:33 --> Severity: Warning --> ini_set(): A session is active. You cannot change the session module's ini settings at this time /home/u583567323/domains/sianceedu.com/public_html/jee/system/libraries/Session/Session_driver.php 205
ERROR - 2024-12-14 16:34:33 --> Severity: Warning --> session_write_close(): Failed to write session data using user defined save handler. (session.save_path: /opt/alt/php74/var/lib/php/session) Unknown 0
ERROR - 2024-12-14 16:34:33 --> Query error: MySQL server has gone away - Invalid query: SELECT RELEASE_LOCK('2c3b28c9148237daafdbae96b2a53d56') AS ci_session_lock
ERROR - 2024-12-14 16:34:47 --> Could not find the language line "Chalan"
ERROR - 2024-12-14 16:34:55 --> Could not find the language line "Chalan"
ERROR - 2024-12-14 16:35:43 --> Could not find the language line "Chalan"
ERROR - 2024-12-14 17:37:32 --> Could not find the language line "Chalan"
ERROR - 2024-12-14 17:37:37 --> Could not find the language line "Chalan"
ERROR - 2024-12-14 17:38:05 --> Could not find the language line "Chalan"
ERROR - 2024-12-14 18:56:53 --> Could not find the language line "Chalan"
