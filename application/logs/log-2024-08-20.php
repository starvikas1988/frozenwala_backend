<?php defined('BASEPATH') OR exit('No direct script access allowed'); ?>

ERROR - 2024-08-20 11:17:09 --> Could not find the language line "Chalan"
ERROR - 2024-08-20 11:17:16 --> Could not find the language line "Chalan"
ERROR - 2024-08-20 05:48:15 --> 404 Page Not Found: Theme/plugins
ERROR - 2024-08-20 11:19:57 --> Could not find the language line "Chalan"
ERROR - 2024-08-20 11:20:02 --> Could not find the language line "Chalan"
ERROR - 2024-08-20 11:20:10 --> Could not find the language line "Chalan"
ERROR - 2024-08-20 11:20:34 --> Could not find the language line "Chalan"
ERROR - 2024-08-20 11:20:38 --> Could not find the language line "Chalan"
ERROR - 2024-08-20 11:22:49 --> Could not find the language line "Chalan"
ERROR - 2024-08-20 11:22:58 --> Could not find the language line "Chalan"
ERROR - 2024-08-20 11:23:19 --> Could not find the language line "Chalan"
ERROR - 2024-08-20 11:23:36 --> Could not find the language line "Chalan"
ERROR - 2024-08-20 11:23:59 --> Could not find the language line "Chalan"
ERROR - 2024-08-20 17:02:08 --> Could not find the language line "Chalan"
ERROR - 2024-08-20 17:02:13 --> Could not find the language line "Chalan"
ERROR - 2024-08-20 17:04:05 --> Query error: MySQL server has gone away - Invalid query: SELECT `a`.`id`, `a`.`item_image`, `a`.`item_code`, `a`.`item_name`, `e`.`brand_name`, `b`.`category_name`, `c`.`unit_name`, `a`.`stock`, `a`.`alert_qty`, `a`.`sales_price`, `d`.`tax_name`, `a`.`service_bit`, `d`.`tax`, `a`.`status`, `a`.`store_id`, `a`.`sku`, `a`.`hsn`, `a`.`item_group`, CASE WHEN e.brand_name IS NULL THEN '' ELSE e.brand_name END AS brand_name
FROM `db_items` as `a`
LEFT JOIN `db_category` as `b` ON `b`.`id`=`a`.`category_id`
LEFT JOIN `db_units` as `c` ON `c`.`id`=`a`.`unit_id`
LEFT JOIN `db_tax` as `d` ON `d`.`id`=`a`.`tax_id`
LEFT JOIN `db_brands` as `e` ON `e`.`id`=`a`.`brand_id`
WHERE `a`.`store_id` = '2'
AND (`a`.`item_group` is NULL || a.item_group = 'Single')
AND   (
`a`.`id` LIKE '%PHI%' ESCAPE '!'
OR  `a`.`item_image` LIKE '%PHI%' ESCAPE '!'
OR  `a`.`item_code` LIKE '%PHI%' ESCAPE '!'
OR  `a`.`item_name` LIKE '%PHI%' ESCAPE '!'
OR  `e`.`brand_name` LIKE '%PHI%' ESCAPE '!'
OR  `b`.`category_name` LIKE '%PHI%' ESCAPE '!'
OR  `c`.`unit_name` LIKE '%PHI%' ESCAPE '!'
OR  `a`.`stock` LIKE '%PHI%' ESCAPE '!'
OR  `a`.`alert_qty` LIKE '%PHI%' ESCAPE '!'
OR  `a`.`sales_price` LIKE '%PHI%' ESCAPE '!'
OR  `d`.`tax_name` LIKE '%PHI%' ESCAPE '!'
OR  `a`.`service_bit` LIKE '%PHI%' ESCAPE '!'
OR  `d`.`tax` LIKE '%PHI%' ESCAPE '!'
OR  `a`.`status` LIKE '%PHI%' ESCAPE '!'
OR  `a`.`store_id` LIKE '%PHI%' ESCAPE '!'
OR  `a`.`sku` LIKE '%PHI%' ESCAPE '!'
OR  `a`.`hsn` LIKE '%PHI%' ESCAPE '!'
OR  `a`.`item_group` LIKE '%PHI%' ESCAPE '!'
 )
ORDER BY `a`.`id` DESC
 LIMIT 10, 10
ERROR - 2024-08-20 17:04:05 --> Severity: error --> Exception: Call to a member function result() on bool /home/u583567323/domains/sianceedu.com/public_html/jee/application/models/Items_model.php 133
ERROR - 2024-08-20 17:04:05 --> Query error: MySQL server has gone away - Invalid query: UPDATE `ci_sessions` SET `timestamp` = 1724153645
WHERE `id` = 'cf3ddf8c56a9d31fc6a150bfbd08836751fe645c'
ERROR - 2024-08-20 17:04:05 --> Severity: Warning --> ini_set(): A session is active. You cannot change the session module's ini settings at this time /home/u583567323/domains/sianceedu.com/public_html/jee/system/libraries/Session/Session_driver.php 205
ERROR - 2024-08-20 17:04:05 --> Severity: Warning --> session_write_close(): Failed to write session data using user defined save handler. (session.save_path: /opt/alt/php74/var/lib/php/session) Unknown 0
ERROR - 2024-08-20 17:04:05 --> Query error: MySQL server has gone away - Invalid query: SELECT RELEASE_LOCK('7ddc9f6b66e838e20e14e088d1546f3a') AS ci_session_lock
ERROR - 2024-08-20 17:04:53 --> Could not find the language line "Chalan"
ERROR - 2024-08-20 17:07:16 --> Could not find the language line "Chalan"
ERROR - 2024-08-20 17:07:20 --> Could not find the language line "Chalan"
ERROR - 2024-08-20 17:07:39 --> Could not find the language line "Chalan"
ERROR - 2024-08-20 17:07:46 --> Could not find the language line "Chalan"
ERROR - 2024-08-20 17:07:57 --> Could not find the language line "Chalan"
ERROR - 2024-08-20 17:08:01 --> Could not find the language line "Chalan"
ERROR - 2024-08-20 17:08:10 --> Could not find the language line "Chalan"
ERROR - 2024-08-20 17:08:32 --> Could not find the language line "Chalan"
ERROR - 2024-08-20 17:09:05 --> Could not find the language line "Chalan"
ERROR - 2024-08-20 17:09:11 --> Could not find the language line "Chalan"
ERROR - 2024-08-20 17:09:37 --> Could not find the language line "Chalan"
ERROR - 2024-08-20 17:10:11 --> Could not find the language line "Chalan"
ERROR - 2024-08-20 17:10:16 --> Could not find the language line "Chalan"
ERROR - 2024-08-20 17:13:47 --> Could not find the language line "Chalan"
ERROR - 2024-08-20 11:45:21 --> 404 Page Not Found: Theme/plugins
ERROR - 2024-08-20 17:15:52 --> Could not find the language line "Chalan"
ERROR - 2024-08-20 17:15:54 --> Could not find the language line "Chalan"
ERROR - 2024-08-20 17:16:04 --> Could not find the language line "Chalan"
ERROR - 2024-08-20 17:16:14 --> Could not find the language line "Chalan"
ERROR - 2024-08-20 17:18:09 --> Could not find the language line "Chalan"
ERROR - 2024-08-20 17:30:56 --> Could not find the language line "Chalan"
ERROR - 2024-08-20 17:35:27 --> Could not find the language line "Chalan"
ERROR - 2024-08-20 17:36:54 --> Could not find the language line "Chalan"
ERROR - 2024-08-20 17:37:11 --> Could not find the language line "Chalan"
ERROR - 2024-08-20 17:37:34 --> Could not find the language line "Chalan"
ERROR - 2024-08-20 17:37:42 --> Could not find the language line "Chalan"
ERROR - 2024-08-20 17:39:30 --> Could not find the language line "Chalan"
ERROR - 2024-08-20 17:39:39 --> Could not find the language line "Chalan"
ERROR - 2024-08-20 17:39:50 --> Could not find the language line "Chalan"
ERROR - 2024-08-20 17:40:11 --> Could not find the language line "Chalan"
ERROR - 2024-08-20 17:40:19 --> Could not find the language line "Chalan"
ERROR - 2024-08-20 17:41:29 --> Could not find the language line "Chalan"
ERROR - 2024-08-20 17:41:33 --> Could not find the language line "Chalan"
ERROR - 2024-08-20 17:49:54 --> Could not find the language line "Chalan"
