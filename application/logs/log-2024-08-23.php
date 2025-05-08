<?php defined('BASEPATH') OR exit('No direct script access allowed'); ?>

ERROR - 2024-08-23 11:44:23 --> Could not find the language line "Chalan"
ERROR - 2024-08-23 11:44:29 --> Could not find the language line "Chalan"
ERROR - 2024-08-23 11:45:28 --> Query error: MySQL server has gone away - Invalid query: SELECT `a`.`id`, `a`.`item_image`, `a`.`item_code`, `a`.`item_name`, `e`.`brand_name`, `b`.`category_name`, `c`.`unit_name`, `a`.`stock`, `a`.`alert_qty`, `a`.`sales_price`, `d`.`tax_name`, `a`.`service_bit`, `d`.`tax`, `a`.`status`, `a`.`store_id`, `a`.`sku`, `a`.`hsn`, `a`.`item_group`, CASE WHEN e.brand_name IS NULL THEN '' ELSE e.brand_name END AS brand_name
FROM `db_items` as `a`
LEFT JOIN `db_category` as `b` ON `b`.`id`=`a`.`category_id`
LEFT JOIN `db_units` as `c` ON `c`.`id`=`a`.`unit_id`
LEFT JOIN `db_tax` as `d` ON `d`.`id`=`a`.`tax_id`
LEFT JOIN `db_brands` as `e` ON `e`.`id`=`a`.`brand_id`
WHERE `a`.`store_id` = '2'
AND (`a`.`item_group` is NULL || a.item_group = 'Single')
AND   (
`a`.`id` LIKE '%p%' ESCAPE '!'
OR  `a`.`item_image` LIKE '%p%' ESCAPE '!'
OR  `a`.`item_code` LIKE '%p%' ESCAPE '!'
OR  `a`.`item_name` LIKE '%p%' ESCAPE '!'
OR  `e`.`brand_name` LIKE '%p%' ESCAPE '!'
OR  `b`.`category_name` LIKE '%p%' ESCAPE '!'
OR  `c`.`unit_name` LIKE '%p%' ESCAPE '!'
OR  `a`.`stock` LIKE '%p%' ESCAPE '!'
OR  `a`.`alert_qty` LIKE '%p%' ESCAPE '!'
OR  `a`.`sales_price` LIKE '%p%' ESCAPE '!'
OR  `d`.`tax_name` LIKE '%p%' ESCAPE '!'
OR  `a`.`service_bit` LIKE '%p%' ESCAPE '!'
OR  `d`.`tax` LIKE '%p%' ESCAPE '!'
OR  `a`.`status` LIKE '%p%' ESCAPE '!'
OR  `a`.`store_id` LIKE '%p%' ESCAPE '!'
OR  `a`.`sku` LIKE '%p%' ESCAPE '!'
OR  `a`.`hsn` LIKE '%p%' ESCAPE '!'
OR  `a`.`item_group` LIKE '%p%' ESCAPE '!'
 )
ORDER BY `a`.`id` DESC
 LIMIT 10
ERROR - 2024-08-23 11:45:28 --> Severity: error --> Exception: Call to a member function result() on bool /home/u583567323/domains/sianceedu.com/public_html/jee/application/models/Items_model.php 133
ERROR - 2024-08-23 11:45:28 --> Query error: MySQL server has gone away - Invalid query: UPDATE `ci_sessions` SET `timestamp` = 1724393728
WHERE `id` = '78d47a04236e2c86f29891ac97eb747b8c6e0e8c'
ERROR - 2024-08-23 11:45:28 --> Severity: Warning --> ini_set(): A session is active. You cannot change the session module's ini settings at this time /home/u583567323/domains/sianceedu.com/public_html/jee/system/libraries/Session/Session_driver.php 205
ERROR - 2024-08-23 11:45:28 --> Severity: Warning --> session_write_close(): Failed to write session data using user defined save handler. (session.save_path: /opt/alt/php74/var/lib/php/session) Unknown 0
ERROR - 2024-08-23 11:45:28 --> Query error: MySQL server has gone away - Invalid query: SELECT RELEASE_LOCK('6b0f938a18eedb253f75780295b25787') AS ci_session_lock
ERROR - 2024-08-23 11:46:28 --> Could not find the language line "Chalan"
ERROR - 2024-08-23 11:46:39 --> Could not find the language line "Chalan"
ERROR - 2024-08-23 11:46:47 --> Could not find the language line "Chalan"
ERROR - 2024-08-23 11:47:04 --> Could not find the language line "Chalan"
ERROR - 2024-08-23 11:47:06 --> Could not find the language line "Chalan"
ERROR - 2024-08-23 11:47:52 --> Could not find the language line "Chalan"
ERROR - 2024-08-23 11:48:19 --> Could not find the language line "Chalan"
ERROR - 2024-08-23 11:48:26 --> Could not find the language line "Chalan"
ERROR - 2024-08-23 11:49:16 --> Query error: MySQL server has gone away - Invalid query: SELECT count(*) as tot_rec
FROM `db_items`
WHERE `id` = '320'
AND `store_id` = '2'
ERROR - 2024-08-23 11:49:16 --> Severity: error --> Exception: Call to a member function row() on bool /home/u583567323/domains/sianceedu.com/public_html/jee/application/helpers/custom_helper.php 933
ERROR - 2024-08-23 11:49:16 --> Query error: MySQL server has gone away - Invalid query: UPDATE `ci_sessions` SET `timestamp` = 1724393956
WHERE `id` = '78d47a04236e2c86f29891ac97eb747b8c6e0e8c'
ERROR - 2024-08-23 11:49:16 --> Severity: Warning --> ini_set(): A session is active. You cannot change the session module's ini settings at this time /home/u583567323/domains/sianceedu.com/public_html/jee/system/libraries/Session/Session_driver.php 205
ERROR - 2024-08-23 11:49:16 --> Severity: Warning --> session_write_close(): Failed to write session data using user defined save handler. (session.save_path: /opt/alt/php74/var/lib/php/session) Unknown 0
ERROR - 2024-08-23 11:49:16 --> Query error: MySQL server has gone away - Invalid query: SELECT RELEASE_LOCK('6b0f938a18eedb253f75780295b25787') AS ci_session_lock
ERROR - 2024-08-23 11:49:18 --> Could not find the language line "Chalan"
ERROR - 2024-08-23 14:52:36 --> Could not find the language line "Chalan"
ERROR - 2024-08-23 14:52:47 --> Could not find the language line "Chalan"
ERROR - 2024-08-23 14:54:01 --> Could not find the language line "Chalan"
ERROR - 2024-08-23 14:56:00 --> Could not find the language line "Chalan"
ERROR - 2024-08-23 14:56:05 --> Could not find the language line "Chalan"
ERROR - 2024-08-23 14:56:21 --> Could not find the language line "Chalan"
ERROR - 2024-08-23 14:57:26 --> Could not find the language line "Chalan"
ERROR - 2024-08-23 14:57:30 --> Could not find the language line "Chalan"
ERROR - 2024-08-23 14:58:46 --> Could not find the language line "Chalan"
ERROR - 2024-08-23 14:58:52 --> Could not find the language line "Chalan"
ERROR - 2024-08-23 15:10:09 --> Could not find the language line "Chalan"
ERROR - 2024-08-23 15:10:14 --> Could not find the language line "Chalan"
ERROR - 2024-08-23 15:10:33 --> Could not find the language line "Chalan"
ERROR - 2024-08-23 15:11:34 --> Could not find the language line "Chalan"
ERROR - 2024-08-23 15:12:29 --> Could not find the language line "Chalan"
ERROR - 2024-08-23 15:12:47 --> Could not find the language line "Chalan"
ERROR - 2024-08-23 15:12:56 --> Could not find the language line "Chalan"
ERROR - 2024-08-23 15:13:17 --> Could not find the language line "Chalan"
ERROR - 2024-08-23 15:13:39 --> Could not find the language line "Chalan"
ERROR - 2024-08-23 15:16:46 --> Could not find the language line "Chalan"
ERROR - 2024-08-23 15:39:25 --> Could not find the language line "Chalan"
ERROR - 2024-08-23 15:43:45 --> Severity: Warning --> count(): Parameter must be an array or an object that implements Countable /home/u583567323/domains/sianceedu.com/public_html/jee/application/models/Sales_model.php 362
ERROR - 2024-08-23 15:43:45 --> Could not find the language line "Chalan"
ERROR - 2024-08-23 15:43:46 --> Could not find the language line "shop_details"
ERROR - 2024-08-23 15:43:46 --> Could not find the language line "from_wallet"
ERROR - 2024-08-23 15:43:51 --> Could not find the language line "Chalan"
ERROR - 2024-08-23 15:44:03 --> Severity: Warning --> count(): Parameter must be an array or an object that implements Countable /home/u583567323/domains/sianceedu.com/public_html/jee/application/models/Sales_model.php 362
ERROR - 2024-08-23 15:44:03 --> Could not find the language line "Chalan"
ERROR - 2024-08-23 15:44:03 --> Could not find the language line "shop_details"
ERROR - 2024-08-23 15:44:03 --> Could not find the language line "from_wallet"
ERROR - 2024-08-23 15:49:31 --> Could not find the language line "Chalan"
ERROR - 2024-08-23 15:49:40 --> Could not find the language line "Chalan"
ERROR - 2024-08-23 15:50:38 --> Could not find the language line "Chalan"
ERROR - 2024-08-23 15:50:58 --> Could not find the language line "Chalan"
ERROR - 2024-08-23 15:51:09 --> Could not find the language line "Chalan"
ERROR - 2024-08-23 15:52:05 --> Could not find the language line "Chalan"
ERROR - 2024-08-23 15:52:16 --> Could not find the language line "Chalan"
ERROR - 2024-08-23 15:52:35 --> Could not find the language line "Chalan"
ERROR - 2024-08-23 15:52:40 --> Could not find the language line "Chalan"
ERROR - 2024-08-23 15:53:20 --> Could not find the language line "Chalan"
ERROR - 2024-08-23 15:53:26 --> Could not find the language line "Chalan"
ERROR - 2024-08-23 15:53:37 --> Could not find the language line "Chalan"
ERROR - 2024-08-23 15:53:45 --> Could not find the language line "Chalan"
