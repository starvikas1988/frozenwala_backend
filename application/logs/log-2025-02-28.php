<?php defined('BASEPATH') OR exit('No direct script access allowed'); ?>

ERROR - 2025-02-28 12:28:09 --> Query error: MySQL server has gone away - Invalid query: SELECT @@sql_mode AS sql_mode
ERROR - 2025-02-28 12:28:09 --> Severity: error --> Exception: Call to a member function row() on bool /home/u583567323/domains/sianceedu.com/public_html/jee/application/helpers/custom_helper.php 44
ERROR - 2025-02-28 12:28:09 --> Query error: MySQL server has gone away - Invalid query: INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('fe3570b68ce91c453524d8783e07b1f398d09e6d', '150.129.64.191', 1740725889, '__ci_last_regenerate|i:1740725869;currency|s:0:\"\";currency_placement|s:0:\"\";currency_code|s:0:\"\";view_date|s:10:\"dd-mm-yyyy\";view_time|s:2:\"12\";decimals|s:1:\"2\";qty_decimals|s:1:\"2\";store_name|s:10:\"SAAS ADMIN\";')
ERROR - 2025-02-28 12:28:09 --> Severity: Warning --> ini_set(): A session is active. You cannot change the session module's ini settings at this time /home/u583567323/domains/sianceedu.com/public_html/jee/system/libraries/Session/Session_driver.php 205
ERROR - 2025-02-28 12:28:09 --> Severity: Warning --> session_write_close(): Failed to write session data using user defined save handler. (session.save_path: /opt/alt/php74/var/lib/php/session) Unknown 0
ERROR - 2025-02-28 12:28:09 --> Query error: MySQL server has gone away - Invalid query: SELECT RELEASE_LOCK('55e954b8311c745f5a35452d8470b0f9') AS ci_session_lock
ERROR - 2025-02-28 12:28:12 --> Could not find the language line "Chalan"
ERROR - 2025-02-28 12:28:15 --> Could not find the language line "Chalan"
ERROR - 2025-02-28 12:29:34 --> Query error: MySQL server has gone away - Invalid query: SELECT `a`.`id`, `a`.`item_image`, `a`.`item_code`, `a`.`item_name`, `e`.`brand_name`, `b`.`category_name`, `c`.`unit_name`, `a`.`stock`, `a`.`alert_qty`, `a`.`sales_price`, `d`.`tax_name`, `a`.`service_bit`, `d`.`tax`, `a`.`status`, `a`.`store_id`, `a`.`sku`, `a`.`hsn`, `a`.`item_group`, CASE WHEN e.brand_name IS NULL THEN '' ELSE e.brand_name END AS brand_name
FROM `db_items` as `a`
LEFT JOIN `db_category` as `b` ON `b`.`id`=`a`.`category_id`
LEFT JOIN `db_units` as `c` ON `c`.`id`=`a`.`unit_id`
LEFT JOIN `db_tax` as `d` ON `d`.`id`=`a`.`tax_id`
LEFT JOIN `db_brands` as `e` ON `e`.`id`=`a`.`brand_id`
WHERE `a`.`store_id` = '2'
AND (`a`.`item_group` is NULL || a.item_group = 'Single')
AND   (
`a`.`id` LIKE '%SAM%' ESCAPE '!'
OR  `a`.`item_image` LIKE '%SAM%' ESCAPE '!'
OR  `a`.`item_code` LIKE '%SAM%' ESCAPE '!'
OR  `a`.`item_name` LIKE '%SAM%' ESCAPE '!'
OR  `e`.`brand_name` LIKE '%SAM%' ESCAPE '!'
OR  `b`.`category_name` LIKE '%SAM%' ESCAPE '!'
OR  `c`.`unit_name` LIKE '%SAM%' ESCAPE '!'
OR  `a`.`stock` LIKE '%SAM%' ESCAPE '!'
OR  `a`.`alert_qty` LIKE '%SAM%' ESCAPE '!'
OR  `a`.`sales_price` LIKE '%SAM%' ESCAPE '!'
OR  `d`.`tax_name` LIKE '%SAM%' ESCAPE '!'
OR  `a`.`service_bit` LIKE '%SAM%' ESCAPE '!'
OR  `d`.`tax` LIKE '%SAM%' ESCAPE '!'
OR  `a`.`status` LIKE '%SAM%' ESCAPE '!'
OR  `a`.`store_id` LIKE '%SAM%' ESCAPE '!'
OR  `a`.`sku` LIKE '%SAM%' ESCAPE '!'
OR  `a`.`hsn` LIKE '%SAM%' ESCAPE '!'
OR  `a`.`item_group` LIKE '%SAM%' ESCAPE '!'
 )
ORDER BY `a`.`id` DESC
 LIMIT 100
ERROR - 2025-02-28 12:29:34 --> Severity: error --> Exception: Call to a member function result() on bool /home/u583567323/domains/sianceedu.com/public_html/jee/application/models/Items_model.php 133
ERROR - 2025-02-28 12:29:34 --> Query error: MySQL server has gone away - Invalid query: UPDATE `ci_sessions` SET `timestamp` = 1740725974
WHERE `id` = 'd523257fa968f9090135fb78382f622483dc0b08'
ERROR - 2025-02-28 12:29:34 --> Severity: Warning --> ini_set(): A session is active. You cannot change the session module's ini settings at this time /home/u583567323/domains/sianceedu.com/public_html/jee/system/libraries/Session/Session_driver.php 205
ERROR - 2025-02-28 12:29:34 --> Severity: Warning --> session_write_close(): Failed to write session data using user defined save handler. (session.save_path: /opt/alt/php74/var/lib/php/session) Unknown 0
ERROR - 2025-02-28 12:29:34 --> Query error: MySQL server has gone away - Invalid query: SELECT RELEASE_LOCK('329cf0419230ec78ac55916b075e30c1') AS ci_session_lock
ERROR - 2025-02-28 14:36:14 --> Could not find the language line "Chalan"
ERROR - 2025-02-28 14:36:17 --> Could not find the language line "Chalan"
ERROR - 2025-02-28 14:36:41 --> Could not find the language line "Chalan"
ERROR - 2025-02-28 16:59:06 --> Could not find the language line "Chalan"
ERROR - 2025-02-28 16:59:11 --> Could not find the language line "Chalan"
ERROR - 2025-02-28 16:59:42 --> Could not find the language line "Chalan"
