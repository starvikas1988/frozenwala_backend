<?php defined('BASEPATH') OR exit('No direct script access allowed'); ?>

ERROR - 2024-11-11 16:32:59 --> Query error: MySQL server has gone away - Invalid query: SELECT @@sql_mode AS sql_mode
ERROR - 2024-11-11 16:32:59 --> Severity: error --> Exception: Call to a member function row() on bool /home/u583567323/domains/sianceedu.com/public_html/jee/application/helpers/custom_helper.php 44
ERROR - 2024-11-11 16:32:59 --> Query error: MySQL server has gone away - Invalid query: INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('b2c7f55afaa69ec189e6fdc7c4b983174a0cb6d7', '150.129.64.224', 1731322979, '__ci_last_regenerate|i:1731322956;currency|s:0:\"\";currency_placement|s:0:\"\";currency_code|s:0:\"\";view_date|s:10:\"dd-mm-yyyy\";view_time|s:2:\"12\";decimals|s:1:\"2\";qty_decimals|s:1:\"2\";store_name|s:10:\"SAAS ADMIN\";')
ERROR - 2024-11-11 16:32:59 --> Severity: Warning --> ini_set(): A session is active. You cannot change the session module's ini settings at this time /home/u583567323/domains/sianceedu.com/public_html/jee/system/libraries/Session/Session_driver.php 205
ERROR - 2024-11-11 16:32:59 --> Severity: Warning --> session_write_close(): Failed to write session data using user defined save handler. (session.save_path: /opt/alt/php74/var/lib/php/session) Unknown 0
ERROR - 2024-11-11 16:32:59 --> Query error: MySQL server has gone away - Invalid query: SELECT RELEASE_LOCK('e0e3de5525caad786ffc7850268af526') AS ci_session_lock
ERROR - 2024-11-11 16:33:33 --> Could not find the language line "Chalan"
ERROR - 2024-11-11 16:33:38 --> Could not find the language line "Chalan"
ERROR - 2024-11-11 16:36:15 --> Query error: MySQL server has gone away - Invalid query: SELECT `a`.`id`, `a`.`item_image`, `a`.`item_code`, `a`.`item_name`, `e`.`brand_name`, `b`.`category_name`, `c`.`unit_name`, `a`.`stock`, `a`.`alert_qty`, `a`.`sales_price`, `d`.`tax_name`, `a`.`service_bit`, `d`.`tax`, `a`.`status`, `a`.`store_id`, `a`.`sku`, `a`.`hsn`, `a`.`item_group`, CASE WHEN e.brand_name IS NULL THEN '' ELSE e.brand_name END AS brand_name
FROM `db_items` as `a`
LEFT JOIN `db_category` as `b` ON `b`.`id`=`a`.`category_id`
LEFT JOIN `db_units` as `c` ON `c`.`id`=`a`.`unit_id`
LEFT JOIN `db_tax` as `d` ON `d`.`id`=`a`.`tax_id`
LEFT JOIN `db_brands` as `e` ON `e`.`id`=`a`.`brand_id`
WHERE `a`.`store_id` = '2'
AND (`a`.`item_group` is NULL || a.item_group = 'Single')
AND   (
`a`.`id` LIKE '%car%' ESCAPE '!'
OR  `a`.`item_image` LIKE '%car%' ESCAPE '!'
OR  `a`.`item_code` LIKE '%car%' ESCAPE '!'
OR  `a`.`item_name` LIKE '%car%' ESCAPE '!'
OR  `e`.`brand_name` LIKE '%car%' ESCAPE '!'
OR  `b`.`category_name` LIKE '%car%' ESCAPE '!'
OR  `c`.`unit_name` LIKE '%car%' ESCAPE '!'
OR  `a`.`stock` LIKE '%car%' ESCAPE '!'
OR  `a`.`alert_qty` LIKE '%car%' ESCAPE '!'
OR  `a`.`sales_price` LIKE '%car%' ESCAPE '!'
OR  `d`.`tax_name` LIKE '%car%' ESCAPE '!'
OR  `a`.`service_bit` LIKE '%car%' ESCAPE '!'
OR  `d`.`tax` LIKE '%car%' ESCAPE '!'
OR  `a`.`status` LIKE '%car%' ESCAPE '!'
OR  `a`.`store_id` LIKE '%car%' ESCAPE '!'
OR  `a`.`sku` LIKE '%car%' ESCAPE '!'
OR  `a`.`hsn` LIKE '%car%' ESCAPE '!'
OR  `a`.`item_group` LIKE '%car%' ESCAPE '!'
 )
ORDER BY `a`.`id` DESC
 LIMIT 10, 10
ERROR - 2024-11-11 16:36:15 --> Severity: error --> Exception: Call to a member function result() on bool /home/u583567323/domains/sianceedu.com/public_html/jee/application/models/Items_model.php 133
ERROR - 2024-11-11 16:36:15 --> Query error: MySQL server has gone away - Invalid query: UPDATE `ci_sessions` SET `timestamp` = 1731323175
WHERE `id` = 'b01c8673c194b080947543f00a319c504a433a1c'
ERROR - 2024-11-11 16:36:15 --> Severity: Warning --> ini_set(): A session is active. You cannot change the session module's ini settings at this time /home/u583567323/domains/sianceedu.com/public_html/jee/system/libraries/Session/Session_driver.php 205
ERROR - 2024-11-11 16:36:15 --> Severity: Warning --> session_write_close(): Failed to write session data using user defined save handler. (session.save_path: /opt/alt/php74/var/lib/php/session) Unknown 0
ERROR - 2024-11-11 16:36:15 --> Query error: MySQL server has gone away - Invalid query: SELECT RELEASE_LOCK('cda7caeb94948e98945d25f0ecf7a31c') AS ci_session_lock
ERROR - 2024-11-11 16:37:24 --> Could not find the language line "Chalan"
ERROR - 2024-11-11 16:37:36 --> Could not find the language line "Chalan"
ERROR - 2024-11-11 16:38:11 --> Could not find the language line "Chalan"
ERROR - 2024-11-11 16:38:15 --> Could not find the language line "Chalan"
ERROR - 2024-11-11 16:38:41 --> Query error: MySQL server has gone away - Invalid query: SELECT `a`.`id`, `a`.`item_image`, `a`.`item_code`, `a`.`item_name`, `e`.`brand_name`, `b`.`category_name`, `c`.`unit_name`, `a`.`stock`, `a`.`alert_qty`, `a`.`sales_price`, `d`.`tax_name`, `a`.`service_bit`, `d`.`tax`, `a`.`status`, `a`.`store_id`, `a`.`sku`, `a`.`hsn`, `a`.`item_group`, CASE WHEN e.brand_name IS NULL THEN '' ELSE e.brand_name END AS brand_name
FROM `db_items` as `a`
LEFT JOIN `db_category` as `b` ON `b`.`id`=`a`.`category_id`
LEFT JOIN `db_units` as `c` ON `c`.`id`=`a`.`unit_id`
LEFT JOIN `db_tax` as `d` ON `d`.`id`=`a`.`tax_id`
LEFT JOIN `db_brands` as `e` ON `e`.`id`=`a`.`brand_id`
WHERE `a`.`store_id` = '2'
AND (`a`.`item_group` is NULL || a.item_group = 'Single')
AND   (
`a`.`id` LIKE '%c%' ESCAPE '!'
OR  `a`.`item_image` LIKE '%c%' ESCAPE '!'
OR  `a`.`item_code` LIKE '%c%' ESCAPE '!'
OR  `a`.`item_name` LIKE '%c%' ESCAPE '!'
OR  `e`.`brand_name` LIKE '%c%' ESCAPE '!'
OR  `b`.`category_name` LIKE '%c%' ESCAPE '!'
OR  `c`.`unit_name` LIKE '%c%' ESCAPE '!'
OR  `a`.`stock` LIKE '%c%' ESCAPE '!'
OR  `a`.`alert_qty` LIKE '%c%' ESCAPE '!'
OR  `a`.`sales_price` LIKE '%c%' ESCAPE '!'
OR  `d`.`tax_name` LIKE '%c%' ESCAPE '!'
OR  `a`.`service_bit` LIKE '%c%' ESCAPE '!'
OR  `d`.`tax` LIKE '%c%' ESCAPE '!'
OR  `a`.`status` LIKE '%c%' ESCAPE '!'
OR  `a`.`store_id` LIKE '%c%' ESCAPE '!'
OR  `a`.`sku` LIKE '%c%' ESCAPE '!'
OR  `a`.`hsn` LIKE '%c%' ESCAPE '!'
OR  `a`.`item_group` LIKE '%c%' ESCAPE '!'
 )
ORDER BY `a`.`id` DESC
 LIMIT 10
ERROR - 2024-11-11 16:38:41 --> Severity: error --> Exception: Call to a member function result() on bool /home/u583567323/domains/sianceedu.com/public_html/jee/application/models/Items_model.php 133
ERROR - 2024-11-11 16:38:41 --> Query error: MySQL server has gone away - Invalid query: UPDATE `ci_sessions` SET `timestamp` = 1731323321
WHERE `id` = 'b01c8673c194b080947543f00a319c504a433a1c'
ERROR - 2024-11-11 16:38:41 --> Severity: Warning --> ini_set(): A session is active. You cannot change the session module's ini settings at this time /home/u583567323/domains/sianceedu.com/public_html/jee/system/libraries/Session/Session_driver.php 205
ERROR - 2024-11-11 16:38:41 --> Severity: Warning --> session_write_close(): Failed to write session data using user defined save handler. (session.save_path: /opt/alt/php74/var/lib/php/session) Unknown 0
ERROR - 2024-11-11 16:38:41 --> Query error: MySQL server has gone away - Invalid query: SELECT RELEASE_LOCK('cda7caeb94948e98945d25f0ecf7a31c') AS ci_session_lock
ERROR - 2024-11-11 16:59:05 --> Could not find the language line "Chalan"
ERROR - 2024-11-11 16:59:17 --> Could not find the language line "Chalan"
