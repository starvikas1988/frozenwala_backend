<?php defined('BASEPATH') OR exit('No direct script access allowed'); ?>

ERROR - 2024-07-07 18:50:05 --> Could not find the language line "Chalan"
ERROR - 2024-07-07 19:21:53 --> Could not find the language line "Chalan"
ERROR - 2024-07-07 19:28:54 --> Could not find the language line "Chalan"
ERROR - 2024-07-07 19:28:59 --> Could not find the language line "Chalan"
ERROR - 2024-07-07 19:40:29 --> Could not find the language line "Chalan"
ERROR - 2024-07-07 19:46:02 --> Could not find the language line "Chalan"
ERROR - 2024-07-07 19:46:04 --> Could not find the language line "Chalan"
ERROR - 2024-07-07 19:46:06 --> Could not find the language line "Chalan"
ERROR - 2024-07-07 19:46:09 --> Could not find the language line "Chalan"
ERROR - 2024-07-07 19:46:11 --> Could not find the language line "Chalan"
ERROR - 2024-07-07 19:46:20 --> Could not find the language line "Chalan"
ERROR - 2024-07-07 19:48:04 --> Could not find the language line "Chalan"
ERROR - 2024-07-07 19:48:53 --> Could not find the language line "Chalan"
ERROR - 2024-07-07 19:48:55 --> Could not find the language line "Chalan"
ERROR - 2024-07-07 19:49:18 --> Query error: MySQL server has gone away - Invalid query: SELECT `a`.`id`, `a`.`item_image`, `a`.`item_code`, `a`.`item_name`, `e`.`brand_name`, `b`.`category_name`, `c`.`unit_name`, `a`.`stock`, `a`.`alert_qty`, `a`.`sales_price`, `d`.`tax_name`, `a`.`service_bit`, `d`.`tax`, `a`.`status`, `a`.`store_id`, `a`.`sku`, `a`.`hsn`, `a`.`item_group`, CASE WHEN e.brand_name IS NULL THEN '' ELSE e.brand_name END AS brand_name
FROM `db_items` as `a`
LEFT JOIN `db_category` as `b` ON `b`.`id`=`a`.`category_id`
LEFT JOIN `db_units` as `c` ON `c`.`id`=`a`.`unit_id`
LEFT JOIN `db_tax` as `d` ON `d`.`id`=`a`.`tax_id`
LEFT JOIN `db_brands` as `e` ON `e`.`id`=`a`.`brand_id`
WHERE `a`.`store_id` = '2'
AND (`a`.`item_group` is NULL || a.item_group = 'Single')
AND   (
`a`.`id` LIKE '%S%' ESCAPE '!'
OR  `a`.`item_image` LIKE '%S%' ESCAPE '!'
OR  `a`.`item_code` LIKE '%S%' ESCAPE '!'
OR  `a`.`item_name` LIKE '%S%' ESCAPE '!'
OR  `e`.`brand_name` LIKE '%S%' ESCAPE '!'
OR  `b`.`category_name` LIKE '%S%' ESCAPE '!'
OR  `c`.`unit_name` LIKE '%S%' ESCAPE '!'
OR  `a`.`stock` LIKE '%S%' ESCAPE '!'
OR  `a`.`alert_qty` LIKE '%S%' ESCAPE '!'
OR  `a`.`sales_price` LIKE '%S%' ESCAPE '!'
OR  `d`.`tax_name` LIKE '%S%' ESCAPE '!'
OR  `a`.`service_bit` LIKE '%S%' ESCAPE '!'
OR  `d`.`tax` LIKE '%S%' ESCAPE '!'
OR  `a`.`status` LIKE '%S%' ESCAPE '!'
OR  `a`.`store_id` LIKE '%S%' ESCAPE '!'
OR  `a`.`sku` LIKE '%S%' ESCAPE '!'
OR  `a`.`hsn` LIKE '%S%' ESCAPE '!'
OR  `a`.`item_group` LIKE '%S%' ESCAPE '!'
 )
ORDER BY `a`.`id` DESC
 LIMIT 10
ERROR - 2024-07-07 19:49:18 --> Severity: error --> Exception: Call to a member function result() on bool /home/u583567323/domains/sianceedu.com/public_html/jee/application/models/Items_model.php 133
ERROR - 2024-07-07 19:49:18 --> Query error: MySQL server has gone away - Invalid query: UPDATE `ci_sessions` SET `timestamp` = 1720361958
WHERE `id` = '7e06df028444bc640f69a8882890e0a121af4781'
ERROR - 2024-07-07 19:49:18 --> Severity: Warning --> ini_set(): A session is active. You cannot change the session module's ini settings at this time /home/u583567323/domains/sianceedu.com/public_html/jee/system/libraries/Session/Session_driver.php 205
ERROR - 2024-07-07 19:49:18 --> Severity: Warning --> session_write_close(): Failed to write session data using user defined save handler. (session.save_path: /opt/alt/php74/var/lib/php/session) Unknown 0
ERROR - 2024-07-07 19:49:18 --> Query error: MySQL server has gone away - Invalid query: SELECT RELEASE_LOCK('dbe88b40906843a5419bff1c8a5ae202') AS ci_session_lock
ERROR - 2024-07-07 19:49:21 --> Could not find the language line "Chalan"
ERROR - 2024-07-07 19:50:53 --> Could not find the language line "Chalan"
ERROR - 2024-07-07 19:52:06 --> Could not find the language line "Chalan"
ERROR - 2024-07-07 20:14:35 --> Query error: MySQL server has gone away - Invalid query: SELECT @@sql_mode AS sql_mode
ERROR - 2024-07-07 20:14:35 --> Severity: error --> Exception: Call to a member function row() on bool /home/u583567323/domains/sianceedu.com/public_html/jee/application/helpers/custom_helper.php 44
ERROR - 2024-07-07 20:14:35 --> Query error: MySQL server has gone away - Invalid query: INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('66438eb535c6b8b8dcba27a8c03bfc649721a767', '150.129.64.161', 1720363475, '__ci_last_regenerate|i:1720363455;currency|s:0:\"\";currency_placement|s:0:\"\";currency_code|s:0:\"\";view_date|s:10:\"dd-mm-yyyy\";view_time|s:2:\"12\";decimals|s:1:\"2\";qty_decimals|s:1:\"2\";store_name|s:10:\"SAAS ADMIN\";')
ERROR - 2024-07-07 20:14:35 --> Severity: Warning --> ini_set(): A session is active. You cannot change the session module's ini settings at this time /home/u583567323/domains/sianceedu.com/public_html/jee/system/libraries/Session/Session_driver.php 205
ERROR - 2024-07-07 20:14:35 --> Severity: Warning --> session_write_close(): Failed to write session data using user defined save handler. (session.save_path: /opt/alt/php74/var/lib/php/session) Unknown 0
ERROR - 2024-07-07 20:14:35 --> Query error: MySQL server has gone away - Invalid query: SELECT RELEASE_LOCK('dd8213b86f0b950dbcef9dbbc567f822') AS ci_session_lock
ERROR - 2024-07-07 20:14:47 --> Could not find the language line "Chalan"
ERROR - 2024-07-07 20:14:52 --> Could not find the language line "Chalan"
ERROR - 2024-07-07 21:04:45 --> Could not find the language line "Chalan"
ERROR - 2024-07-07 21:04:52 --> Could not find the language line "Chalan"
ERROR - 2024-07-07 21:05:25 --> Could not find the language line "Chalan"
