<?php defined('BASEPATH') OR exit('No direct script access allowed'); ?>

ERROR - 2024-12-11 12:47:18 --> Could not find the language line "Chalan"
ERROR - 2024-12-11 12:47:22 --> Could not find the language line "Chalan"
ERROR - 2024-12-11 12:48:15 --> Could not find the language line "Chalan"
ERROR - 2024-12-11 12:48:45 --> Could not find the language line "Chalan"
ERROR - 2024-12-11 12:53:22 --> Query error: MySQL server has gone away - Invalid query: SELECT `a`.`id`, `a`.`item_image`, `a`.`item_code`, `a`.`item_name`, `e`.`brand_name`, `b`.`category_name`, `c`.`unit_name`, `a`.`stock`, `a`.`alert_qty`, `a`.`sales_price`, `d`.`tax_name`, `a`.`service_bit`, `d`.`tax`, `a`.`status`, `a`.`store_id`, `a`.`sku`, `a`.`hsn`, `a`.`item_group`, CASE WHEN e.brand_name IS NULL THEN '' ELSE e.brand_name END AS brand_name
FROM `db_items` as `a`
LEFT JOIN `db_category` as `b` ON `b`.`id`=`a`.`category_id`
LEFT JOIN `db_units` as `c` ON `c`.`id`=`a`.`unit_id`
LEFT JOIN `db_tax` as `d` ON `d`.`id`=`a`.`tax_id`
LEFT JOIN `db_brands` as `e` ON `e`.`id`=`a`.`brand_id`
WHERE `a`.`store_id` = '2'
AND (`a`.`item_group` is NULL || a.item_group = 'Single')
AND   (
`a`.`id` LIKE '%KH%' ESCAPE '!'
OR  `a`.`item_image` LIKE '%KH%' ESCAPE '!'
OR  `a`.`item_code` LIKE '%KH%' ESCAPE '!'
OR  `a`.`item_name` LIKE '%KH%' ESCAPE '!'
OR  `e`.`brand_name` LIKE '%KH%' ESCAPE '!'
OR  `b`.`category_name` LIKE '%KH%' ESCAPE '!'
OR  `c`.`unit_name` LIKE '%KH%' ESCAPE '!'
OR  `a`.`stock` LIKE '%KH%' ESCAPE '!'
OR  `a`.`alert_qty` LIKE '%KH%' ESCAPE '!'
OR  `a`.`sales_price` LIKE '%KH%' ESCAPE '!'
OR  `d`.`tax_name` LIKE '%KH%' ESCAPE '!'
OR  `a`.`service_bit` LIKE '%KH%' ESCAPE '!'
OR  `d`.`tax` LIKE '%KH%' ESCAPE '!'
OR  `a`.`status` LIKE '%KH%' ESCAPE '!'
OR  `a`.`store_id` LIKE '%KH%' ESCAPE '!'
OR  `a`.`sku` LIKE '%KH%' ESCAPE '!'
OR  `a`.`hsn` LIKE '%KH%' ESCAPE '!'
OR  `a`.`item_group` LIKE '%KH%' ESCAPE '!'
 )
ORDER BY `a`.`id` DESC
 LIMIT 10
ERROR - 2024-12-11 12:53:22 --> Severity: error --> Exception: Call to a member function result() on bool /home/u583567323/domains/sianceedu.com/public_html/jee/application/models/Items_model.php 133
ERROR - 2024-12-11 12:53:22 --> Query error: MySQL server has gone away - Invalid query: UPDATE `ci_sessions` SET `timestamp` = 1733901802
WHERE `id` = '2888054cba67b796af427d48ddcb08ca0f1c50fd'
ERROR - 2024-12-11 12:53:22 --> Severity: Warning --> ini_set(): A session is active. You cannot change the session module's ini settings at this time /home/u583567323/domains/sianceedu.com/public_html/jee/system/libraries/Session/Session_driver.php 205
ERROR - 2024-12-11 12:53:22 --> Severity: Warning --> session_write_close(): Failed to write session data using user defined save handler. (session.save_path: /opt/alt/php74/var/lib/php/session) Unknown 0
ERROR - 2024-12-11 12:53:22 --> Query error: MySQL server has gone away - Invalid query: SELECT RELEASE_LOCK('4dae3a207bf843f4ff1c5be301ca3c34') AS ci_session_lock
ERROR - 2024-12-11 12:57:53 --> Could not find the language line "Chalan"
ERROR - 2024-12-11 12:58:03 --> Could not find the language line "Chalan"
ERROR - 2024-12-11 12:58:23 --> Could not find the language line "Chalan"
