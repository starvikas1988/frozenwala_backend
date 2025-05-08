<?php defined('BASEPATH') OR exit('No direct script access allowed'); ?>

ERROR - 2024-05-17 10:29:37 --> Could not find the language line "Chalan"
ERROR - 2024-05-17 10:30:02 --> Could not find the language line "Chalan"
ERROR - 2024-05-17 05:04:52 --> 404 Page Not Found: Theme/plugins
ERROR - 2024-05-17 10:35:36 --> Could not find the language line "Chalan"
ERROR - 2024-05-17 10:35:53 --> Could not find the language line "Chalan"
ERROR - 2024-05-17 10:37:02 --> Could not find the language line "Chalan"
ERROR - 2024-05-17 10:40:01 --> Could not find the language line "Chalan"
ERROR - 2024-05-17 10:40:23 --> Could not find the language line "Chalan"
ERROR - 2024-05-17 10:43:41 --> Could not find the language line "Chalan"
ERROR - 2024-05-17 10:43:41 --> Could not find the language line "Chalan"
ERROR - 2024-05-17 10:43:53 --> Could not find the language line "Chalan"
ERROR - 2024-05-17 10:44:03 --> Could not find the language line "Chalan"
ERROR - 2024-05-17 10:44:07 --> Could not find the language line "Chalan"
ERROR - 2024-05-17 10:45:18 --> Could not find the language line "Chalan"
ERROR - 2024-05-17 10:45:28 --> Could not find the language line "Chalan"
ERROR - 2024-05-17 10:45:32 --> Could not find the language line "Chalan"
ERROR - 2024-05-17 12:15:57 --> Query error: MySQL server has gone away - Invalid query: SELECT count(*) as tot FROM db_permissions where permissions="items_view" and role_id=2
ERROR - 2024-05-17 12:15:57 --> Severity: error --> Exception: Call to a member function row() on bool /home/u583567323/domains/sianceedu.com/public_html/jee/application/core/MY_Controller.php 199
ERROR - 2024-05-17 12:15:57 --> Query error: MySQL server has gone away - Invalid query: INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('f8736e9eb1d2121173cfb8b9a0a5055ed9c51335', '150.129.64.7', 1715928357, '__ci_last_regenerate|i:1715928337;currency|s:3:\"₹\";currency_placement|s:4:\"Left\";currency_code|s:3:\"INR\";view_date|s:10:\"dd-mm-yyyy\";view_time|s:2:\"12\";decimals|s:1:\"2\";qty_decimals|s:1:\"2\";store_name|s:15:\"Jee Electronics\";inv_username|s:3:\"Jee\";user_lname|s:11:\"Electronics\";inv_userid|s:1:\"2\";logged_in|b:1;role_id|s:1:\"2\";role_name|s:11:\"Store Admin\";store_id|s:1:\"2\";email|s:13:\"admin@jee.com\";language|s:7:\"English\";language_id|s:1:\"1\";')
ERROR - 2024-05-17 12:15:57 --> Severity: Warning --> ini_set(): A session is active. You cannot change the session module's ini settings at this time /home/u583567323/domains/sianceedu.com/public_html/jee/system/libraries/Session/Session_driver.php 205
ERROR - 2024-05-17 12:15:57 --> Severity: Warning --> session_write_close(): Failed to write session data using user defined save handler. (session.save_path: /opt/alt/php74/var/lib/php/session) Unknown 0
ERROR - 2024-05-17 12:15:57 --> Query error: MySQL server has gone away - Invalid query: SELECT RELEASE_LOCK('63e2ad589cc96878c972cff38bd0b054') AS ci_session_lock
ERROR - 2024-05-17 12:16:03 --> Could not find the language line "Chalan"
ERROR - 2024-05-17 12:16:06 --> Could not find the language line "Chalan"
ERROR - 2024-05-17 12:17:18 --> Could not find the language line "Chalan"
ERROR - 2024-05-17 12:27:29 --> Could not find the language line "Chalan"
ERROR - 2024-05-17 12:37:47 --> Could not find the language line "Chalan"
ERROR - 2024-05-17 12:38:38 --> Could not find the language line "Chalan"
ERROR - 2024-05-17 12:46:11 --> Could not find the language line "Chalan"
ERROR - 2024-05-17 12:46:49 --> Could not find the language line "Chalan"
ERROR - 2024-05-17 12:49:32 --> Could not find the language line "Chalan"
ERROR - 2024-05-17 12:50:05 --> Could not find the language line "Chalan"
ERROR - 2024-05-17 12:50:34 --> Could not find the language line "Chalan"
ERROR - 2024-05-17 12:50:42 --> Could not find the language line "Chalan"
ERROR - 2024-05-17 13:19:09 --> Could not find the language line "Chalan"
ERROR - 2024-05-17 14:21:21 --> Could not find the language line "Chalan"
ERROR - 2024-05-17 14:21:23 --> Could not find the language line "Chalan"
ERROR - 2024-05-17 14:21:28 --> Could not find the language line "Chalan"
ERROR - 2024-05-17 14:21:57 --> Could not find the language line "Chalan"
ERROR - 2024-05-17 14:22:34 --> Could not find the language line "Chalan"
ERROR - 2024-05-17 14:22:57 --> Could not find the language line "Chalan"
ERROR - 2024-05-17 14:24:56 --> Could not find the language line "Chalan"
ERROR - 2024-05-17 14:33:01 --> Could not find the language line "Chalan"
ERROR - 2024-05-17 14:33:13 --> Could not find the language line "Chalan"
ERROR - 2024-05-17 14:33:48 --> Could not find the language line "Chalan"
ERROR - 2024-05-17 14:34:27 --> Query error: MySQL server has gone away - Invalid query: SELECT `a`.`id`, `a`.`item_image`, `a`.`item_code`, `a`.`item_name`, `e`.`brand_name`, `b`.`category_name`, `c`.`unit_name`, `a`.`stock`, `a`.`alert_qty`, `a`.`sales_price`, `d`.`tax_name`, `a`.`service_bit`, `d`.`tax`, `a`.`status`, `a`.`store_id`, `a`.`sku`, `a`.`hsn`, `a`.`item_group`, CASE WHEN e.brand_name IS NULL THEN '' ELSE e.brand_name END AS brand_name
FROM `db_items` as `a`
LEFT JOIN `db_category` as `b` ON `b`.`id`=`a`.`category_id`
LEFT JOIN `db_units` as `c` ON `c`.`id`=`a`.`unit_id`
LEFT JOIN `db_tax` as `d` ON `d`.`id`=`a`.`tax_id`
LEFT JOIN `db_brands` as `e` ON `e`.`id`=`a`.`brand_id`
WHERE `a`.`store_id` = '2'
AND (`a`.`item_group` is NULL || a.item_group = 'Single')
AND   (
`a`.`id` LIKE '%2%' ESCAPE '!'
OR  `a`.`item_image` LIKE '%2%' ESCAPE '!'
OR  `a`.`item_code` LIKE '%2%' ESCAPE '!'
OR  `a`.`item_name` LIKE '%2%' ESCAPE '!'
OR  `e`.`brand_name` LIKE '%2%' ESCAPE '!'
OR  `b`.`category_name` LIKE '%2%' ESCAPE '!'
OR  `c`.`unit_name` LIKE '%2%' ESCAPE '!'
OR  `a`.`stock` LIKE '%2%' ESCAPE '!'
OR  `a`.`alert_qty` LIKE '%2%' ESCAPE '!'
OR  `a`.`sales_price` LIKE '%2%' ESCAPE '!'
OR  `d`.`tax_name` LIKE '%2%' ESCAPE '!'
OR  `a`.`service_bit` LIKE '%2%' ESCAPE '!'
OR  `d`.`tax` LIKE '%2%' ESCAPE '!'
OR  `a`.`status` LIKE '%2%' ESCAPE '!'
OR  `a`.`store_id` LIKE '%2%' ESCAPE '!'
OR  `a`.`sku` LIKE '%2%' ESCAPE '!'
OR  `a`.`hsn` LIKE '%2%' ESCAPE '!'
OR  `a`.`item_group` LIKE '%2%' ESCAPE '!'
 )
ORDER BY `a`.`id` DESC
 LIMIT 10
ERROR - 2024-05-17 14:34:27 --> Severity: error --> Exception: Call to a member function result() on bool /home/u583567323/domains/sianceedu.com/public_html/jee/application/models/Items_model.php 133
ERROR - 2024-05-17 14:34:27 --> Query error: MySQL server has gone away - Invalid query: UPDATE `ci_sessions` SET `timestamp` = 1715936667
WHERE `id` = '8573197d35775ff4ad9f23ea93f95f91ad41211b'
ERROR - 2024-05-17 14:34:27 --> Severity: Warning --> ini_set(): A session is active. You cannot change the session module's ini settings at this time /home/u583567323/domains/sianceedu.com/public_html/jee/system/libraries/Session/Session_driver.php 205
ERROR - 2024-05-17 14:34:27 --> Severity: Warning --> session_write_close(): Failed to write session data using user defined save handler. (session.save_path: /opt/alt/php74/var/lib/php/session) Unknown 0
ERROR - 2024-05-17 14:34:27 --> Query error: MySQL server has gone away - Invalid query: SELECT RELEASE_LOCK('99c1d83a53b3242410f857e71b20c88e') AS ci_session_lock
ERROR - 2024-05-17 16:11:51 --> Could not find the language line "Chalan"
ERROR - 2024-05-17 10:47:07 --> 404 Page Not Found: Theme/plugins
ERROR - 2024-05-17 16:21:58 --> Severity: Warning --> count(): Parameter must be an array or an object that implements Countable /home/u583567323/domains/sianceedu.com/public_html/jee/application/models/Sales_model.php 362
ERROR - 2024-05-17 16:21:58 --> Severity: Warning --> implode(): Invalid arguments passed /home/u583567323/domains/sianceedu.com/public_html/jee/application/models/Sales_model.php 362
ERROR - 2024-05-17 16:22:01 --> Could not find the language line "Chalan"
ERROR - 2024-05-17 16:22:01 --> Could not find the language line "shop_details"
ERROR - 2024-05-17 16:22:01 --> Could not find the language line "from_wallet"
ERROR - 2024-05-17 16:22:24 --> Could not find the language line "Chalan"
ERROR - 2024-05-17 16:22:48 --> Severity: Warning --> count(): Parameter must be an array or an object that implements Countable /home/u583567323/domains/sianceedu.com/public_html/jee/application/models/Sales_model.php 362
ERROR - 2024-05-17 16:22:48 --> Severity: Warning --> implode(): Invalid arguments passed /home/u583567323/domains/sianceedu.com/public_html/jee/application/models/Sales_model.php 362
ERROR - 2024-05-17 16:22:48 --> Could not find the language line "Chalan"
ERROR - 2024-05-17 16:22:48 --> Could not find the language line "shop_details"
ERROR - 2024-05-17 16:22:48 --> Could not find the language line "from_wallet"
ERROR - 2024-05-17 17:10:10 --> Could not find the language line "Chalan"
ERROR - 2024-05-17 17:30:05 --> Could not find the language line "Chalan"
ERROR - 2024-05-17 17:33:31 --> Could not find the language line "Chalan"
ERROR - 2024-05-17 17:35:03 --> Could not find the language line "Chalan"
ERROR - 2024-05-17 17:35:27 --> Could not find the language line "Chalan"
ERROR - 2024-05-17 17:35:43 --> Could not find the language line "Chalan"
ERROR - 2024-05-17 17:36:54 --> Could not find the language line "Chalan"
ERROR - 2024-05-17 17:38:59 --> Could not find the language line "Chalan"
ERROR - 2024-05-17 17:54:41 --> Could not find the language line "Chalan"
ERROR - 2024-05-17 17:54:53 --> Could not find the language line "Chalan"
ERROR - 2024-05-17 22:43:52 --> Could not find the language line "Chalan"
ERROR - 2024-05-17 22:44:04 --> Could not find the language line "Chalan"
