<?php defined('BASEPATH') OR exit('No direct script access allowed'); ?>

ERROR - 2025-02-21 13:28:40 --> Could not find the language line "Chalan"
ERROR - 2025-02-21 13:28:47 --> Could not find the language line "Chalan"
ERROR - 2025-02-21 13:29:02 --> Could not find the language line "Chalan"
ERROR - 2025-02-21 13:29:52 --> Query error: MySQL server has gone away - Invalid query: SELECT `a`.`id`, `a`.`item_image`, `a`.`item_code`, `a`.`item_name`, `e`.`brand_name`, `b`.`category_name`, `c`.`unit_name`, `a`.`stock`, `a`.`alert_qty`, `a`.`sales_price`, `d`.`tax_name`, `a`.`service_bit`, `d`.`tax`, `a`.`status`, `a`.`store_id`, `a`.`sku`, `a`.`hsn`, `a`.`item_group`, CASE WHEN e.brand_name IS NULL THEN '' ELSE e.brand_name END AS brand_name
FROM `db_items` as `a`
LEFT JOIN `db_category` as `b` ON `b`.`id`=`a`.`category_id`
LEFT JOIN `db_units` as `c` ON `c`.`id`=`a`.`unit_id`
LEFT JOIN `db_tax` as `d` ON `d`.`id`=`a`.`tax_id`
LEFT JOIN `db_brands` as `e` ON `e`.`id`=`a`.`brand_id`
WHERE `a`.`store_id` = '2'
AND (`a`.`item_group` is NULL || a.item_group = 'Single')
AND   (
`a`.`id` LIKE '%blu%' ESCAPE '!'
OR  `a`.`item_image` LIKE '%blu%' ESCAPE '!'
OR  `a`.`item_code` LIKE '%blu%' ESCAPE '!'
OR  `a`.`item_name` LIKE '%blu%' ESCAPE '!'
OR  `e`.`brand_name` LIKE '%blu%' ESCAPE '!'
OR  `b`.`category_name` LIKE '%blu%' ESCAPE '!'
OR  `c`.`unit_name` LIKE '%blu%' ESCAPE '!'
OR  `a`.`stock` LIKE '%blu%' ESCAPE '!'
OR  `a`.`alert_qty` LIKE '%blu%' ESCAPE '!'
OR  `a`.`sales_price` LIKE '%blu%' ESCAPE '!'
OR  `d`.`tax_name` LIKE '%blu%' ESCAPE '!'
OR  `a`.`service_bit` LIKE '%blu%' ESCAPE '!'
OR  `d`.`tax` LIKE '%blu%' ESCAPE '!'
OR  `a`.`status` LIKE '%blu%' ESCAPE '!'
OR  `a`.`store_id` LIKE '%blu%' ESCAPE '!'
OR  `a`.`sku` LIKE '%blu%' ESCAPE '!'
OR  `a`.`hsn` LIKE '%blu%' ESCAPE '!'
OR  `a`.`item_group` LIKE '%blu%' ESCAPE '!'
 )
ORDER BY `a`.`id` DESC
 LIMIT 10, 10
ERROR - 2025-02-21 13:29:52 --> Severity: error --> Exception: Call to a member function result() on bool /home/u583567323/domains/sianceedu.com/public_html/jee/application/models/Items_model.php 133
ERROR - 2025-02-21 13:29:52 --> Query error: MySQL server has gone away - Invalid query: UPDATE `ci_sessions` SET `timestamp` = 1740124792
WHERE `id` = 'd33c24c6048b2b04316781bd3603ca86f7e5645a'
ERROR - 2025-02-21 13:29:52 --> Severity: Warning --> ini_set(): A session is active. You cannot change the session module's ini settings at this time /home/u583567323/domains/sianceedu.com/public_html/jee/system/libraries/Session/Session_driver.php 205
ERROR - 2025-02-21 13:29:52 --> Severity: Warning --> session_write_close(): Failed to write session data using user defined save handler. (session.save_path: /opt/alt/php74/var/lib/php/session) Unknown 0
ERROR - 2025-02-21 13:29:52 --> Query error: MySQL server has gone away - Invalid query: SELECT RELEASE_LOCK('830350246d337439ddd4aa839f163fed') AS ci_session_lock
ERROR - 2025-02-21 18:49:37 --> Could not find the language line "Chalan"
ERROR - 2025-02-21 18:49:50 --> Could not find the language line "Chalan"
