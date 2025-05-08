<?php defined('BASEPATH') OR exit('No direct script access allowed'); ?>

ERROR - 2024-07-05 10:48:17 --> Query error: MySQL server has gone away - Invalid query: SELECT @@sql_mode AS sql_mode
ERROR - 2024-07-05 10:48:17 --> Severity: error --> Exception: Call to a member function row() on bool /home/u583567323/domains/sianceedu.com/public_html/jee/application/helpers/custom_helper.php 44
ERROR - 2024-07-05 10:48:17 --> Query error: MySQL server has gone away - Invalid query: UPDATE `ci_sessions` SET `timestamp` = 1720156697
WHERE `id` = 'd4163b2ff8da0a6e66b93345c63c843799d61573'
ERROR - 2024-07-05 10:48:17 --> Severity: Warning --> ini_set(): A session is active. You cannot change the session module's ini settings at this time /home/u583567323/domains/sianceedu.com/public_html/jee/system/libraries/Session/Session_driver.php 205
ERROR - 2024-07-05 10:48:17 --> Severity: Warning --> session_write_close(): Failed to write session data using user defined save handler. (session.save_path: /opt/alt/php74/var/lib/php/session) Unknown 0
ERROR - 2024-07-05 10:48:17 --> Query error: MySQL server has gone away - Invalid query: SELECT RELEASE_LOCK('04d289ea69ca48caada7b85e572f39d6') AS ci_session_lock
ERROR - 2024-07-05 11:01:36 --> Could not find the language line "Chalan"
ERROR - 2024-07-05 11:01:39 --> Could not find the language line "Chalan"
ERROR - 2024-07-05 11:11:41 --> Query error: MySQL server has gone away - Invalid query: SELECT `a`.`id`, `a`.`item_image`, `a`.`item_code`, `a`.`item_name`, `e`.`brand_name`, `b`.`category_name`, `c`.`unit_name`, `a`.`stock`, `a`.`alert_qty`, `a`.`sales_price`, `d`.`tax_name`, `a`.`service_bit`, `d`.`tax`, `a`.`status`, `a`.`store_id`, `a`.`sku`, `a`.`hsn`, `a`.`item_group`, CASE WHEN e.brand_name IS NULL THEN '' ELSE e.brand_name END AS brand_name
FROM `db_items` as `a`
LEFT JOIN `db_category` as `b` ON `b`.`id`=`a`.`category_id`
LEFT JOIN `db_units` as `c` ON `c`.`id`=`a`.`unit_id`
LEFT JOIN `db_tax` as `d` ON `d`.`id`=`a`.`tax_id`
LEFT JOIN `db_brands` as `e` ON `e`.`id`=`a`.`brand_id`
WHERE `a`.`store_id` = '2'
AND (`a`.`item_group` is NULL || a.item_group = 'Single')
AND   (
`a`.`id` LIKE '%h%' ESCAPE '!'
OR  `a`.`item_image` LIKE '%h%' ESCAPE '!'
OR  `a`.`item_code` LIKE '%h%' ESCAPE '!'
OR  `a`.`item_name` LIKE '%h%' ESCAPE '!'
OR  `e`.`brand_name` LIKE '%h%' ESCAPE '!'
OR  `b`.`category_name` LIKE '%h%' ESCAPE '!'
OR  `c`.`unit_name` LIKE '%h%' ESCAPE '!'
OR  `a`.`stock` LIKE '%h%' ESCAPE '!'
OR  `a`.`alert_qty` LIKE '%h%' ESCAPE '!'
OR  `a`.`sales_price` LIKE '%h%' ESCAPE '!'
OR  `d`.`tax_name` LIKE '%h%' ESCAPE '!'
OR  `a`.`service_bit` LIKE '%h%' ESCAPE '!'
OR  `d`.`tax` LIKE '%h%' ESCAPE '!'
OR  `a`.`status` LIKE '%h%' ESCAPE '!'
OR  `a`.`store_id` LIKE '%h%' ESCAPE '!'
OR  `a`.`sku` LIKE '%h%' ESCAPE '!'
OR  `a`.`hsn` LIKE '%h%' ESCAPE '!'
OR  `a`.`item_group` LIKE '%h%' ESCAPE '!'
 )
ORDER BY `a`.`id` DESC
 LIMIT 10
ERROR - 2024-07-05 11:11:41 --> Severity: error --> Exception: Call to a member function result() on bool /home/u583567323/domains/sianceedu.com/public_html/jee/application/models/Items_model.php 133
ERROR - 2024-07-05 11:11:41 --> Query error: MySQL server has gone away - Invalid query: UPDATE `ci_sessions` SET `timestamp` = 1720158101
WHERE `id` = 'db49071d2fbbe5e6cbb9fbe411c98a67896a2d20'
ERROR - 2024-07-05 11:11:41 --> Severity: Warning --> ini_set(): A session is active. You cannot change the session module's ini settings at this time /home/u583567323/domains/sianceedu.com/public_html/jee/system/libraries/Session/Session_driver.php 205
ERROR - 2024-07-05 11:11:41 --> Severity: Warning --> session_write_close(): Failed to write session data using user defined save handler. (session.save_path: /opt/alt/php74/var/lib/php/session) Unknown 0
ERROR - 2024-07-05 11:11:41 --> Query error: MySQL server has gone away - Invalid query: SELECT RELEASE_LOCK('6e766c906dac5ec5e598ba091616f995') AS ci_session_lock
ERROR - 2024-07-05 11:12:58 --> Could not find the language line "Chalan"
ERROR - 2024-07-05 11:41:21 --> Could not find the language line "Chalan"
ERROR - 2024-07-05 18:34:34 --> Could not find the language line "Chalan"
ERROR - 2024-07-05 18:34:41 --> Could not find the language line "Chalan"
ERROR - 2024-07-05 18:35:02 --> Could not find the language line "Chalan"
ERROR - 2024-07-05 18:46:06 --> Could not find the language line "Chalan"
ERROR - 2024-07-05 18:46:12 --> Could not find the language line "Chalan"
ERROR - 2024-07-05 18:46:30 --> Could not find the language line "Chalan"
ERROR - 2024-07-05 18:46:32 --> Could not find the language line "Chalan"
ERROR - 2024-07-05 18:46:39 --> Could not find the language line "Chalan"
ERROR - 2024-07-05 18:46:41 --> Could not find the language line "Chalan"
ERROR - 2024-07-05 18:46:49 --> Could not find the language line "Chalan"
ERROR - 2024-07-05 18:46:51 --> Could not find the language line "Chalan"
ERROR - 2024-07-05 18:47:02 --> Could not find the language line "Chalan"
ERROR - 2024-07-05 18:47:10 --> Could not find the language line "Chalan"
ERROR - 2024-07-05 18:47:12 --> Could not find the language line "Chalan"
ERROR - 2024-07-05 18:47:38 --> Could not find the language line "Chalan"
ERROR - 2024-07-05 18:47:42 --> Could not find the language line "Chalan"
ERROR - 2024-07-05 18:47:55 --> Could not find the language line "Chalan"
ERROR - 2024-07-05 18:48:08 --> Could not find the language line "Chalan"
ERROR - 2024-07-05 18:48:27 --> Could not find the language line "Chalan"
ERROR - 2024-07-05 18:48:31 --> Could not find the language line "Chalan"
ERROR - 2024-07-05 18:49:16 --> Could not find the language line "Chalan"
ERROR - 2024-07-05 18:49:23 --> Could not find the language line "Chalan"
ERROR - 2024-07-05 18:49:29 --> Could not find the language line "Chalan"
ERROR - 2024-07-05 18:50:00 --> Could not find the language line "Chalan"
ERROR - 2024-07-05 18:50:05 --> Could not find the language line "Chalan"
ERROR - 2024-07-05 18:50:24 --> Could not find the language line "Chalan"
ERROR - 2024-07-05 18:50:28 --> Could not find the language line "Chalan"
ERROR - 2024-07-05 18:50:59 --> Could not find the language line "Chalan"
ERROR - 2024-07-05 18:51:03 --> Could not find the language line "Chalan"
ERROR - 2024-07-05 18:51:06 --> Could not find the language line "Chalan"
ERROR - 2024-07-05 18:51:13 --> Could not find the language line "Chalan"
ERROR - 2024-07-05 18:51:50 --> Could not find the language line "Chalan"
ERROR - 2024-07-05 18:51:53 --> Could not find the language line "Chalan"
ERROR - 2024-07-05 18:52:06 --> Could not find the language line "Chalan"
ERROR - 2024-07-05 18:52:09 --> Could not find the language line "Chalan"
ERROR - 2024-07-05 18:53:49 --> Could not find the language line "Chalan"
ERROR - 2024-07-05 18:53:50 --> Could not find the language line "Chalan"
ERROR - 2024-07-05 19:02:25 --> Could not find the language line "Chalan"
ERROR - 2024-07-05 19:02:27 --> Could not find the language line "Chalan"
ERROR - 2024-07-05 19:02:31 --> Could not find the language line "Chalan"
ERROR - 2024-07-05 19:02:36 --> Could not find the language line "Chalan"
ERROR - 2024-07-05 19:02:39 --> Could not find the language line "Chalan"
ERROR - 2024-07-05 19:02:42 --> Could not find the language line "Chalan"
ERROR - 2024-07-05 19:19:32 --> Could not find the language line "Chalan"
ERROR - 2024-07-05 19:19:34 --> Could not find the language line "Chalan"
ERROR - 2024-07-05 19:21:12 --> Query error: MySQL server has gone away - Invalid query: SELECT count(*) as tot FROM db_permissions where permissions="items_view" and role_id=2
ERROR - 2024-07-05 19:21:12 --> Severity: error --> Exception: Call to a member function row() on bool /home/u583567323/domains/sianceedu.com/public_html/jee/application/core/MY_Controller.php 199
ERROR - 2024-07-05 19:21:12 --> Query error: MySQL server has gone away - Invalid query: UPDATE `ci_sessions` SET `timestamp` = 1720187472
WHERE `id` = 'fb480e6999a4c9b761f1b61f267acd7421478b01'
ERROR - 2024-07-05 19:21:12 --> Severity: Warning --> ini_set(): A session is active. You cannot change the session module's ini settings at this time /home/u583567323/domains/sianceedu.com/public_html/jee/system/libraries/Session/Session_driver.php 205
ERROR - 2024-07-05 19:21:12 --> Severity: Warning --> session_write_close(): Failed to write session data using user defined save handler. (session.save_path: /opt/alt/php74/var/lib/php/session) Unknown 0
ERROR - 2024-07-05 19:21:12 --> Query error: MySQL server has gone away - Invalid query: SELECT RELEASE_LOCK('b5f55ada0addb8992728cc0eafc957f8') AS ci_session_lock
ERROR - 2024-07-05 19:26:40 --> Query error: MySQL server has gone away - Invalid query: SELECT `a`.`id`, `a`.`item_image`, `a`.`item_code`, `a`.`item_name`, `e`.`brand_name`, `b`.`category_name`, `c`.`unit_name`, `a`.`stock`, `a`.`alert_qty`, `a`.`sales_price`, `d`.`tax_name`, `a`.`service_bit`, `d`.`tax`, `a`.`status`, `a`.`store_id`, `a`.`sku`, `a`.`hsn`, `a`.`item_group`, CASE WHEN e.brand_name IS NULL THEN '' ELSE e.brand_name END AS brand_name
FROM `db_items` as `a`
LEFT JOIN `db_category` as `b` ON `b`.`id`=`a`.`category_id`
LEFT JOIN `db_units` as `c` ON `c`.`id`=`a`.`unit_id`
LEFT JOIN `db_tax` as `d` ON `d`.`id`=`a`.`tax_id`
LEFT JOIN `db_brands` as `e` ON `e`.`id`=`a`.`brand_id`
WHERE `a`.`store_id` = '2'
AND (`a`.`item_group` is NULL || a.item_group = 'Single')
AND   (
`a`.`id` LIKE '%M%' ESCAPE '!'
OR  `a`.`item_image` LIKE '%M%' ESCAPE '!'
OR  `a`.`item_code` LIKE '%M%' ESCAPE '!'
OR  `a`.`item_name` LIKE '%M%' ESCAPE '!'
OR  `e`.`brand_name` LIKE '%M%' ESCAPE '!'
OR  `b`.`category_name` LIKE '%M%' ESCAPE '!'
OR  `c`.`unit_name` LIKE '%M%' ESCAPE '!'
OR  `a`.`stock` LIKE '%M%' ESCAPE '!'
OR  `a`.`alert_qty` LIKE '%M%' ESCAPE '!'
OR  `a`.`sales_price` LIKE '%M%' ESCAPE '!'
OR  `d`.`tax_name` LIKE '%M%' ESCAPE '!'
OR  `a`.`service_bit` LIKE '%M%' ESCAPE '!'
OR  `d`.`tax` LIKE '%M%' ESCAPE '!'
OR  `a`.`status` LIKE '%M%' ESCAPE '!'
OR  `a`.`store_id` LIKE '%M%' ESCAPE '!'
OR  `a`.`sku` LIKE '%M%' ESCAPE '!'
OR  `a`.`hsn` LIKE '%M%' ESCAPE '!'
OR  `a`.`item_group` LIKE '%M%' ESCAPE '!'
 )
ORDER BY `a`.`id` DESC
 LIMIT 10
ERROR - 2024-07-05 19:26:40 --> Severity: error --> Exception: Call to a member function result() on bool /home/u583567323/domains/sianceedu.com/public_html/jee/application/models/Items_model.php 133
ERROR - 2024-07-05 19:26:40 --> Query error: MySQL server has gone away - Invalid query: UPDATE `ci_sessions` SET `timestamp` = 1720187800
WHERE `id` = '5237bac8deeb094e3f189b0f255db15b9054dbd0'
ERROR - 2024-07-05 19:26:40 --> Severity: Warning --> ini_set(): A session is active. You cannot change the session module's ini settings at this time /home/u583567323/domains/sianceedu.com/public_html/jee/system/libraries/Session/Session_driver.php 205
ERROR - 2024-07-05 19:26:40 --> Severity: Warning --> session_write_close(): Failed to write session data using user defined save handler. (session.save_path: /opt/alt/php74/var/lib/php/session) Unknown 0
ERROR - 2024-07-05 19:26:40 --> Query error: MySQL server has gone away - Invalid query: SELECT RELEASE_LOCK('331d2bd991857753f301f2163976f309') AS ci_session_lock
