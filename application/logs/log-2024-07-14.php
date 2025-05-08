<?php defined('BASEPATH') OR exit('No direct script access allowed'); ?>

ERROR - 2024-07-14 00:25:26 --> Could not find the language line "Chalan"
ERROR - 2024-07-14 11:16:41 --> Could not find the language line "Chalan"
ERROR - 2024-07-14 11:16:46 --> Could not find the language line "Chalan"
ERROR - 2024-07-14 11:17:14 --> Could not find the language line "Chalan"
ERROR - 2024-07-14 11:17:50 --> Could not find the language line "Chalan"
ERROR - 2024-07-14 11:18:44 --> Could not find the language line "Chalan"
ERROR - 2024-07-14 11:18:53 --> Could not find the language line "Chalan"
ERROR - 2024-07-14 11:32:56 --> Could not find the language line "Chalan"
ERROR - 2024-07-14 12:04:14 --> Could not find the language line "Chalan"
ERROR - 2024-07-14 12:04:18 --> Could not find the language line "Chalan"
ERROR - 2024-07-14 12:06:49 --> Could not find the language line "Chalan"
ERROR - 2024-07-14 12:08:10 --> Could not find the language line "Chalan"
ERROR - 2024-07-14 12:08:21 --> Could not find the language line "Chalan"
ERROR - 2024-07-14 12:10:35 --> Could not find the language line "Chalan"
ERROR - 2024-07-14 12:12:25 --> Could not find the language line "Chalan"
ERROR - 2024-07-14 12:12:46 --> Could not find the language line "Chalan"
ERROR - 2024-07-14 12:13:18 --> Could not find the language line "Chalan"
ERROR - 2024-07-14 12:13:26 --> Could not find the language line "Chalan"
ERROR - 2024-07-14 12:13:47 --> Could not find the language line "Chalan"
ERROR - 2024-07-14 12:14:00 --> Could not find the language line "Chalan"
ERROR - 2024-07-14 12:14:25 --> Could not find the language line "Chalan"
ERROR - 2024-07-14 12:14:37 --> Could not find the language line "Chalan"
ERROR - 2024-07-14 12:15:08 --> Could not find the language line "Chalan"
ERROR - 2024-07-14 12:15:15 --> Could not find the language line "Chalan"
ERROR - 2024-07-14 12:16:01 --> Could not find the language line "Chalan"
ERROR - 2024-07-14 12:16:07 --> Could not find the language line "Chalan"
ERROR - 2024-07-14 12:16:34 --> Could not find the language line "Chalan"
ERROR - 2024-07-14 12:16:40 --> Could not find the language line "Chalan"
ERROR - 2024-07-14 12:17:07 --> Could not find the language line "Chalan"
ERROR - 2024-07-14 12:25:07 --> Could not find the language line "Chalan"
ERROR - 2024-07-14 13:57:48 --> Could not find the language line "Chalan"
ERROR - 2024-07-14 13:57:53 --> Could not find the language line "Chalan"
ERROR - 2024-07-14 13:59:14 --> Query error: MySQL server has gone away - Invalid query: SELECT `a`.`id`, `a`.`item_image`, `a`.`item_code`, `a`.`item_name`, `e`.`brand_name`, `b`.`category_name`, `c`.`unit_name`, `a`.`stock`, `a`.`alert_qty`, `a`.`sales_price`, `d`.`tax_name`, `a`.`service_bit`, `d`.`tax`, `a`.`status`, `a`.`store_id`, `a`.`sku`, `a`.`hsn`, `a`.`item_group`, CASE WHEN e.brand_name IS NULL THEN '' ELSE e.brand_name END AS brand_name
FROM `db_items` as `a`
LEFT JOIN `db_category` as `b` ON `b`.`id`=`a`.`category_id`
LEFT JOIN `db_units` as `c` ON `c`.`id`=`a`.`unit_id`
LEFT JOIN `db_tax` as `d` ON `d`.`id`=`a`.`tax_id`
LEFT JOIN `db_brands` as `e` ON `e`.`id`=`a`.`brand_id`
WHERE `a`.`store_id` = '2'
AND (`a`.`item_group` is NULL || a.item_group = 'Single')
AND   (
`a`.`id` LIKE '%u%' ESCAPE '!'
OR  `a`.`item_image` LIKE '%u%' ESCAPE '!'
OR  `a`.`item_code` LIKE '%u%' ESCAPE '!'
OR  `a`.`item_name` LIKE '%u%' ESCAPE '!'
OR  `e`.`brand_name` LIKE '%u%' ESCAPE '!'
OR  `b`.`category_name` LIKE '%u%' ESCAPE '!'
OR  `c`.`unit_name` LIKE '%u%' ESCAPE '!'
OR  `a`.`stock` LIKE '%u%' ESCAPE '!'
OR  `a`.`alert_qty` LIKE '%u%' ESCAPE '!'
OR  `a`.`sales_price` LIKE '%u%' ESCAPE '!'
OR  `d`.`tax_name` LIKE '%u%' ESCAPE '!'
OR  `a`.`service_bit` LIKE '%u%' ESCAPE '!'
OR  `d`.`tax` LIKE '%u%' ESCAPE '!'
OR  `a`.`status` LIKE '%u%' ESCAPE '!'
OR  `a`.`store_id` LIKE '%u%' ESCAPE '!'
OR  `a`.`sku` LIKE '%u%' ESCAPE '!'
OR  `a`.`hsn` LIKE '%u%' ESCAPE '!'
OR  `a`.`item_group` LIKE '%u%' ESCAPE '!'
 )
ORDER BY `a`.`id` DESC
 LIMIT 10
ERROR - 2024-07-14 13:59:14 --> Severity: error --> Exception: Call to a member function result() on bool /home/u583567323/domains/sianceedu.com/public_html/jee/application/models/Items_model.php 133
ERROR - 2024-07-14 13:59:14 --> Query error: MySQL server has gone away - Invalid query: UPDATE `ci_sessions` SET `timestamp` = 1720945754
WHERE `id` = '376497d11b11bc424d3bb105d06dcea174d70237'
ERROR - 2024-07-14 13:59:14 --> Severity: Warning --> ini_set(): A session is active. You cannot change the session module's ini settings at this time /home/u583567323/domains/sianceedu.com/public_html/jee/system/libraries/Session/Session_driver.php 205
ERROR - 2024-07-14 13:59:14 --> Severity: Warning --> session_write_close(): Failed to write session data using user defined save handler. (session.save_path: /opt/alt/php74/var/lib/php/session) Unknown 0
ERROR - 2024-07-14 13:59:14 --> Query error: MySQL server has gone away - Invalid query: SELECT RELEASE_LOCK('5b67f08f75d5dd9993e008f6549d983a') AS ci_session_lock
ERROR - 2024-07-14 13:59:50 --> Could not find the language line "Chalan"
ERROR - 2024-07-14 14:31:46 --> Could not find the language line "Chalan"
ERROR - 2024-07-14 14:31:50 --> Could not find the language line "Chalan"
ERROR - 2024-07-14 14:32:07 --> Could not find the language line "Chalan"
ERROR - 2024-07-14 14:38:01 --> Query error: MySQL server has gone away - Invalid query: SELECT @@sql_mode AS sql_mode
ERROR - 2024-07-14 14:38:01 --> Severity: error --> Exception: Call to a member function row() on bool /home/u583567323/domains/sianceedu.com/public_html/jee/application/helpers/custom_helper.php 44
ERROR - 2024-07-14 14:38:01 --> Query error: MySQL server has gone away - Invalid query: INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('affb8cd8e55c11d97c22320bd79653dc55237aba', '150.129.64.161', 1720948081, '__ci_last_regenerate|i:1720948058;currency|s:3:\"₹\";currency_placement|s:4:\"Left\";currency_code|s:3:\"INR\";view_date|s:10:\"dd-mm-yyyy\";view_time|s:2:\"12\";decimals|s:1:\"2\";qty_decimals|s:1:\"2\";store_name|s:15:\"Jee Electronics\";inv_username|s:3:\"Jee\";user_lname|s:11:\"Electronics\";inv_userid|s:1:\"2\";logged_in|b:1;role_id|s:1:\"2\";role_name|s:11:\"Store Admin\";store_id|s:1:\"2\";email|s:13:\"admin@jee.com\";language|s:7:\"English\";language_id|s:1:\"1\";')
ERROR - 2024-07-14 14:38:01 --> Severity: Warning --> ini_set(): A session is active. You cannot change the session module's ini settings at this time /home/u583567323/domains/sianceedu.com/public_html/jee/system/libraries/Session/Session_driver.php 205
ERROR - 2024-07-14 14:38:01 --> Severity: Warning --> session_write_close(): Failed to write session data using user defined save handler. (session.save_path: /opt/alt/php74/var/lib/php/session) Unknown 0
ERROR - 2024-07-14 14:38:01 --> Query error: MySQL server has gone away - Invalid query: SELECT RELEASE_LOCK('cf8e88ae717e09b4dfe397be41ddd2e4') AS ci_session_lock
ERROR - 2024-07-14 14:40:51 --> Could not find the language line "Chalan"
ERROR - 2024-07-14 18:21:58 --> Could not find the language line "Chalan"
ERROR - 2024-07-14 18:22:04 --> Could not find the language line "Chalan"
ERROR - 2024-07-14 19:58:58 --> Could not find the language line "Chalan"
ERROR - 2024-07-14 19:59:15 --> Could not find the language line "Chalan"
ERROR - 2024-07-14 19:59:24 --> Could not find the language line "Chalan"
ERROR - 2024-07-14 19:59:43 --> Could not find the language line "Chalan"
ERROR - 2024-07-14 20:29:46 --> Could not find the language line "Chalan"
ERROR - 2024-07-14 20:30:02 --> Could not find the language line "Chalan"
