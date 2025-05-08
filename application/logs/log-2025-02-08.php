<?php defined('BASEPATH') OR exit('No direct script access allowed'); ?>

ERROR - 2025-02-08 19:11:57 --> Could not find the language line "Chalan"
ERROR - 2025-02-08 19:12:05 --> Could not find the language line "Chalan"
ERROR - 2025-02-08 19:13:36 --> Query error: MySQL server has gone away - Invalid query: SELECT `a`.`id`, `a`.`item_image`, `a`.`item_code`, `a`.`item_name`, `e`.`brand_name`, `b`.`category_name`, `c`.`unit_name`, `a`.`stock`, `a`.`alert_qty`, `a`.`sales_price`, `d`.`tax_name`, `a`.`service_bit`, `d`.`tax`, `a`.`status`, `a`.`store_id`, `a`.`sku`, `a`.`hsn`, `a`.`item_group`, CASE WHEN e.brand_name IS NULL THEN '' ELSE e.brand_name END AS brand_name
FROM `db_items` as `a`
LEFT JOIN `db_category` as `b` ON `b`.`id`=`a`.`category_id`
LEFT JOIN `db_units` as `c` ON `c`.`id`=`a`.`unit_id`
LEFT JOIN `db_tax` as `d` ON `d`.`id`=`a`.`tax_id`
LEFT JOIN `db_brands` as `e` ON `e`.`id`=`a`.`brand_id`
WHERE `a`.`store_id` = '2'
AND (`a`.`item_group` is NULL || a.item_group = 'Single')
AND   (
`a`.`id` LIKE '%L%' ESCAPE '!'
OR  `a`.`item_image` LIKE '%L%' ESCAPE '!'
OR  `a`.`item_code` LIKE '%L%' ESCAPE '!'
OR  `a`.`item_name` LIKE '%L%' ESCAPE '!'
OR  `e`.`brand_name` LIKE '%L%' ESCAPE '!'
OR  `b`.`category_name` LIKE '%L%' ESCAPE '!'
OR  `c`.`unit_name` LIKE '%L%' ESCAPE '!'
OR  `a`.`stock` LIKE '%L%' ESCAPE '!'
OR  `a`.`alert_qty` LIKE '%L%' ESCAPE '!'
OR  `a`.`sales_price` LIKE '%L%' ESCAPE '!'
OR  `d`.`tax_name` LIKE '%L%' ESCAPE '!'
OR  `a`.`service_bit` LIKE '%L%' ESCAPE '!'
OR  `d`.`tax` LIKE '%L%' ESCAPE '!'
OR  `a`.`status` LIKE '%L%' ESCAPE '!'
OR  `a`.`store_id` LIKE '%L%' ESCAPE '!'
OR  `a`.`sku` LIKE '%L%' ESCAPE '!'
OR  `a`.`hsn` LIKE '%L%' ESCAPE '!'
OR  `a`.`item_group` LIKE '%L%' ESCAPE '!'
 )
ORDER BY `a`.`id` DESC
 LIMIT 10
ERROR - 2025-02-08 19:13:36 --> Severity: error --> Exception: Call to a member function result() on bool /home/u583567323/domains/sianceedu.com/public_html/jee/application/models/Items_model.php 133
ERROR - 2025-02-08 19:13:36 --> Query error: MySQL server has gone away - Invalid query: UPDATE `ci_sessions` SET `timestamp` = 1739022216
WHERE `id` = 'abd58572ce7f236d04073a41656542a7a1f6041c'
ERROR - 2025-02-08 19:13:36 --> Severity: Warning --> ini_set(): A session is active. You cannot change the session module's ini settings at this time /home/u583567323/domains/sianceedu.com/public_html/jee/system/libraries/Session/Session_driver.php 205
ERROR - 2025-02-08 19:13:36 --> Severity: Warning --> session_write_close(): Failed to write session data using user defined save handler. (session.save_path: /opt/alt/php74/var/lib/php/session) Unknown 0
ERROR - 2025-02-08 19:13:36 --> Query error: MySQL server has gone away - Invalid query: SELECT RELEASE_LOCK('d49274d00d60a776f33b6864bc968f2f') AS ci_session_lock
ERROR - 2025-02-08 19:14:55 --> Could not find the language line "Chalan"
ERROR - 2025-02-08 19:19:35 --> Could not find the language line "Chalan"
ERROR - 2025-02-08 19:21:29 --> Could not find the language line "Chalan"
