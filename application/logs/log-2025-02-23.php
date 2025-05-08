<?php defined('BASEPATH') OR exit('No direct script access allowed'); ?>

ERROR - 2025-02-23 12:24:03 --> Could not find the language line "Chalan"
ERROR - 2025-02-23 12:24:12 --> Could not find the language line "Chalan"
ERROR - 2025-02-23 16:03:13 --> Could not find the language line "Chalan"
ERROR - 2025-02-23 16:03:16 --> Could not find the language line "Chalan"
ERROR - 2025-02-23 16:03:41 --> Could not find the language line "Chalan"
ERROR - 2025-02-23 16:03:47 --> Could not find the language line "Chalan"
ERROR - 2025-02-23 16:04:27 --> Query error: MySQL server has gone away - Invalid query: SELECT `a`.`id`, `a`.`item_image`, `a`.`item_code`, `a`.`item_name`, `e`.`brand_name`, `b`.`category_name`, `c`.`unit_name`, `a`.`stock`, `a`.`alert_qty`, `a`.`sales_price`, `d`.`tax_name`, `a`.`service_bit`, `d`.`tax`, `a`.`status`, `a`.`store_id`, `a`.`sku`, `a`.`hsn`, `a`.`item_group`, CASE WHEN e.brand_name IS NULL THEN '' ELSE e.brand_name END AS brand_name
FROM `db_items` as `a`
LEFT JOIN `db_category` as `b` ON `b`.`id`=`a`.`category_id`
LEFT JOIN `db_units` as `c` ON `c`.`id`=`a`.`unit_id`
LEFT JOIN `db_tax` as `d` ON `d`.`id`=`a`.`tax_id`
LEFT JOIN `db_brands` as `e` ON `e`.`id`=`a`.`brand_id`
WHERE `a`.`store_id` = '2'
AND (`a`.`item_group` is NULL || a.item_group = 'Single')
AND   (
`a`.`id` LIKE '%USHA%' ESCAPE '!'
OR  `a`.`item_image` LIKE '%USHA%' ESCAPE '!'
OR  `a`.`item_code` LIKE '%USHA%' ESCAPE '!'
OR  `a`.`item_name` LIKE '%USHA%' ESCAPE '!'
OR  `e`.`brand_name` LIKE '%USHA%' ESCAPE '!'
OR  `b`.`category_name` LIKE '%USHA%' ESCAPE '!'
OR  `c`.`unit_name` LIKE '%USHA%' ESCAPE '!'
OR  `a`.`stock` LIKE '%USHA%' ESCAPE '!'
OR  `a`.`alert_qty` LIKE '%USHA%' ESCAPE '!'
OR  `a`.`sales_price` LIKE '%USHA%' ESCAPE '!'
OR  `d`.`tax_name` LIKE '%USHA%' ESCAPE '!'
OR  `a`.`service_bit` LIKE '%USHA%' ESCAPE '!'
OR  `d`.`tax` LIKE '%USHA%' ESCAPE '!'
OR  `a`.`status` LIKE '%USHA%' ESCAPE '!'
OR  `a`.`store_id` LIKE '%USHA%' ESCAPE '!'
OR  `a`.`sku` LIKE '%USHA%' ESCAPE '!'
OR  `a`.`hsn` LIKE '%USHA%' ESCAPE '!'
OR  `a`.`item_group` LIKE '%USHA%' ESCAPE '!'
 )
ORDER BY `a`.`id` DESC
 LIMIT 20, 10
ERROR - 2025-02-23 16:04:27 --> Severity: error --> Exception: Call to a member function result() on bool /home/u583567323/domains/sianceedu.com/public_html/jee/application/models/Items_model.php 133
ERROR - 2025-02-23 16:04:27 --> Query error: MySQL server has gone away - Invalid query: UPDATE `ci_sessions` SET `timestamp` = 1740306867
WHERE `id` = '7134dee15602659ab0a668d4a8150cbff40c4220'
ERROR - 2025-02-23 16:04:27 --> Severity: Warning --> ini_set(): A session is active. You cannot change the session module's ini settings at this time /home/u583567323/domains/sianceedu.com/public_html/jee/system/libraries/Session/Session_driver.php 205
ERROR - 2025-02-23 16:04:27 --> Severity: Warning --> session_write_close(): Failed to write session data using user defined save handler. (session.save_path: /opt/alt/php74/var/lib/php/session) Unknown 0
ERROR - 2025-02-23 16:04:27 --> Query error: MySQL server has gone away - Invalid query: SELECT RELEASE_LOCK('139c07010523b00847c9bb52aa9e1a28') AS ci_session_lock
ERROR - 2025-02-23 16:04:44 --> Could not find the language line "Chalan"
ERROR - 2025-02-23 18:24:15 --> Could not find the language line "Chalan"
ERROR - 2025-02-23 18:24:24 --> Could not find the language line "Chalan"
ERROR - 2025-02-23 18:24:33 --> Could not find the language line "Chalan"
ERROR - 2025-02-23 19:56:12 --> Could not find the language line "Chalan"
ERROR - 2025-02-23 19:56:17 --> Could not find the language line "Chalan"
ERROR - 2025-02-23 19:56:36 --> Could not find the language line "Chalan"
ERROR - 2025-02-23 19:56:39 --> Could not find the language line "Chalan"
ERROR - 2025-02-23 19:57:24 --> Query error: MySQL server has gone away - Invalid query: SELECT `a`.`id`, `a`.`item_image`, `a`.`item_code`, `a`.`item_name`, `e`.`brand_name`, `b`.`category_name`, `c`.`unit_name`, `a`.`stock`, `a`.`alert_qty`, `a`.`sales_price`, `d`.`tax_name`, `a`.`service_bit`, `d`.`tax`, `a`.`status`, `a`.`store_id`, `a`.`sku`, `a`.`hsn`, `a`.`item_group`, CASE WHEN e.brand_name IS NULL THEN '' ELSE e.brand_name END AS brand_name
FROM `db_items` as `a`
LEFT JOIN `db_category` as `b` ON `b`.`id`=`a`.`category_id`
LEFT JOIN `db_units` as `c` ON `c`.`id`=`a`.`unit_id`
LEFT JOIN `db_tax` as `d` ON `d`.`id`=`a`.`tax_id`
LEFT JOIN `db_brands` as `e` ON `e`.`id`=`a`.`brand_id`
WHERE `a`.`store_id` = '2'
AND (`a`.`item_group` is NULL || a.item_group = 'Single')
AND   (
`a`.`id` LIKE '%CAR%' ESCAPE '!'
OR  `a`.`item_image` LIKE '%CAR%' ESCAPE '!'
OR  `a`.`item_code` LIKE '%CAR%' ESCAPE '!'
OR  `a`.`item_name` LIKE '%CAR%' ESCAPE '!'
OR  `e`.`brand_name` LIKE '%CAR%' ESCAPE '!'
OR  `b`.`category_name` LIKE '%CAR%' ESCAPE '!'
OR  `c`.`unit_name` LIKE '%CAR%' ESCAPE '!'
OR  `a`.`stock` LIKE '%CAR%' ESCAPE '!'
OR  `a`.`alert_qty` LIKE '%CAR%' ESCAPE '!'
OR  `a`.`sales_price` LIKE '%CAR%' ESCAPE '!'
OR  `d`.`tax_name` LIKE '%CAR%' ESCAPE '!'
OR  `a`.`service_bit` LIKE '%CAR%' ESCAPE '!'
OR  `d`.`tax` LIKE '%CAR%' ESCAPE '!'
OR  `a`.`status` LIKE '%CAR%' ESCAPE '!'
OR  `a`.`store_id` LIKE '%CAR%' ESCAPE '!'
OR  `a`.`sku` LIKE '%CAR%' ESCAPE '!'
OR  `a`.`hsn` LIKE '%CAR%' ESCAPE '!'
OR  `a`.`item_group` LIKE '%CAR%' ESCAPE '!'
 )
ORDER BY `a`.`id` DESC
 LIMIT 50
ERROR - 2025-02-23 19:57:24 --> Severity: error --> Exception: Call to a member function result() on bool /home/u583567323/domains/sianceedu.com/public_html/jee/application/models/Items_model.php 133
ERROR - 2025-02-23 19:57:24 --> Query error: MySQL server has gone away - Invalid query: UPDATE `ci_sessions` SET `timestamp` = 1740320844
WHERE `id` = '3630dc969916ce66b90da00226571c70d9d12dbd'
ERROR - 2025-02-23 19:57:24 --> Severity: Warning --> ini_set(): A session is active. You cannot change the session module's ini settings at this time /home/u583567323/domains/sianceedu.com/public_html/jee/system/libraries/Session/Session_driver.php 205
ERROR - 2025-02-23 19:57:24 --> Severity: Warning --> session_write_close(): Failed to write session data using user defined save handler. (session.save_path: /opt/alt/php74/var/lib/php/session) Unknown 0
ERROR - 2025-02-23 19:57:24 --> Query error: MySQL server has gone away - Invalid query: SELECT RELEASE_LOCK('f8688fa862b8a0ea200378f1dc4a42c9') AS ci_session_lock
ERROR - 2025-02-23 20:16:56 --> Could not find the language line "Chalan"
ERROR - 2025-02-23 20:17:03 --> Could not find the language line "Chalan"
ERROR - 2025-02-23 20:17:26 --> Could not find the language line "Chalan"
ERROR - 2025-02-23 20:18:08 --> Could not find the language line "Chalan"
ERROR - 2025-02-23 20:18:20 --> Could not find the language line "Chalan"
ERROR - 2025-02-23 20:18:43 --> Could not find the language line "Chalan"
