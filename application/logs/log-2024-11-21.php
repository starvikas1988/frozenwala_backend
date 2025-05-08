<?php defined('BASEPATH') OR exit('No direct script access allowed'); ?>

ERROR - 2024-11-21 14:32:23 --> Could not find the language line "Chalan"
ERROR - 2024-11-21 14:32:34 --> Could not find the language line "Chalan"
ERROR - 2024-11-21 14:33:02 --> Could not find the language line "Chalan"
ERROR - 2024-11-21 14:33:12 --> Could not find the language line "Chalan"
ERROR - 2024-11-21 14:33:15 --> Could not find the language line "Chalan"
ERROR - 2024-11-21 14:33:16 --> Could not find the language line "Chalan"
ERROR - 2024-11-21 15:11:46 --> Query error: MySQL server has gone away - Invalid query: SELECT @@sql_mode AS sql_mode
ERROR - 2024-11-21 15:11:46 --> Severity: error --> Exception: Call to a member function row() on bool /home/u583567323/domains/sianceedu.com/public_html/jee/application/helpers/custom_helper.php 44
ERROR - 2024-11-21 15:11:46 --> Query error: MySQL server has gone away - Invalid query: INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('ebde2c1e072da759c56a7310d94c9e05b9f7ca9e', '150.129.64.224', 1732182106, '__ci_last_regenerate|i:1732182086;currency|s:0:\"\";currency_placement|s:0:\"\";currency_code|s:0:\"\";view_date|s:10:\"dd-mm-yyyy\";view_time|s:2:\"12\";decimals|s:1:\"2\";qty_decimals|s:1:\"2\";store_name|s:10:\"SAAS ADMIN\";')
ERROR - 2024-11-21 15:11:46 --> Severity: Warning --> ini_set(): A session is active. You cannot change the session module's ini settings at this time /home/u583567323/domains/sianceedu.com/public_html/jee/system/libraries/Session/Session_driver.php 205
ERROR - 2024-11-21 15:11:46 --> Severity: Warning --> session_write_close(): Failed to write session data using user defined save handler. (session.save_path: /opt/alt/php74/var/lib/php/session) Unknown 0
ERROR - 2024-11-21 15:11:46 --> Query error: MySQL server has gone away - Invalid query: SELECT RELEASE_LOCK('b330b457c0752276206939a9a134c39c') AS ci_session_lock
ERROR - 2024-11-21 15:11:52 --> Could not find the language line "Chalan"
ERROR - 2024-11-21 15:11:55 --> Could not find the language line "Chalan"
ERROR - 2024-11-21 15:15:21 --> Query error: MySQL server has gone away - Invalid query: SELECT `a`.`id`, `a`.`item_image`, `a`.`item_code`, `a`.`item_name`, `e`.`brand_name`, `b`.`category_name`, `c`.`unit_name`, `a`.`stock`, `a`.`alert_qty`, `a`.`sales_price`, `d`.`tax_name`, `a`.`service_bit`, `d`.`tax`, `a`.`status`, `a`.`store_id`, `a`.`sku`, `a`.`hsn`, `a`.`item_group`, CASE WHEN e.brand_name IS NULL THEN '' ELSE e.brand_name END AS brand_name
FROM `db_items` as `a`
LEFT JOIN `db_category` as `b` ON `b`.`id`=`a`.`category_id`
LEFT JOIN `db_units` as `c` ON `c`.`id`=`a`.`unit_id`
LEFT JOIN `db_tax` as `d` ON `d`.`id`=`a`.`tax_id`
LEFT JOIN `db_brands` as `e` ON `e`.`id`=`a`.`brand_id`
WHERE `a`.`store_id` = '2'
AND (`a`.`item_group` is NULL || a.item_group = 'Single')
AND   (
`a`.`id` LIKE '%b%' ESCAPE '!'
OR  `a`.`item_image` LIKE '%b%' ESCAPE '!'
OR  `a`.`item_code` LIKE '%b%' ESCAPE '!'
OR  `a`.`item_name` LIKE '%b%' ESCAPE '!'
OR  `e`.`brand_name` LIKE '%b%' ESCAPE '!'
OR  `b`.`category_name` LIKE '%b%' ESCAPE '!'
OR  `c`.`unit_name` LIKE '%b%' ESCAPE '!'
OR  `a`.`stock` LIKE '%b%' ESCAPE '!'
OR  `a`.`alert_qty` LIKE '%b%' ESCAPE '!'
OR  `a`.`sales_price` LIKE '%b%' ESCAPE '!'
OR  `d`.`tax_name` LIKE '%b%' ESCAPE '!'
OR  `a`.`service_bit` LIKE '%b%' ESCAPE '!'
OR  `d`.`tax` LIKE '%b%' ESCAPE '!'
OR  `a`.`status` LIKE '%b%' ESCAPE '!'
OR  `a`.`store_id` LIKE '%b%' ESCAPE '!'
OR  `a`.`sku` LIKE '%b%' ESCAPE '!'
OR  `a`.`hsn` LIKE '%b%' ESCAPE '!'
OR  `a`.`item_group` LIKE '%b%' ESCAPE '!'
 )
ORDER BY `a`.`id` DESC
 LIMIT 10
ERROR - 2024-11-21 15:15:21 --> Severity: error --> Exception: Call to a member function result() on bool /home/u583567323/domains/sianceedu.com/public_html/jee/application/models/Items_model.php 133
ERROR - 2024-11-21 15:15:21 --> Query error: MySQL server has gone away - Invalid query: UPDATE `ci_sessions` SET `timestamp` = 1732182321
WHERE `id` = '431cafdb5b71d000729039d47f07651d0d053511'
ERROR - 2024-11-21 15:15:21 --> Severity: Warning --> ini_set(): A session is active. You cannot change the session module's ini settings at this time /home/u583567323/domains/sianceedu.com/public_html/jee/system/libraries/Session/Session_driver.php 205
ERROR - 2024-11-21 15:15:21 --> Severity: Warning --> session_write_close(): Failed to write session data using user defined save handler. (session.save_path: /opt/alt/php74/var/lib/php/session) Unknown 0
ERROR - 2024-11-21 15:15:21 --> Query error: MySQL server has gone away - Invalid query: SELECT RELEASE_LOCK('7b9dc28cb5937d334f626957c7ed6f63') AS ci_session_lock
ERROR - 2024-11-21 19:36:00 --> Could not find the language line "Chalan"
ERROR - 2024-11-21 19:36:03 --> Could not find the language line "Chalan"
