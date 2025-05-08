<?php defined('BASEPATH') OR exit('No direct script access allowed'); ?>

ERROR - 2025-01-02 13:31:31 --> Could not find the language line "Chalan"
ERROR - 2025-01-02 13:31:35 --> Could not find the language line "Chalan"
ERROR - 2025-01-02 13:32:08 --> Could not find the language line "Chalan"
ERROR - 2025-01-02 13:32:20 --> Could not find the language line "Chalan"
ERROR - 2025-01-02 13:32:45 --> Query error: MySQL server has gone away - Invalid query: SELECT `a`.`id`, `a`.`item_image`, `a`.`item_code`, `a`.`item_name`, `e`.`brand_name`, `b`.`category_name`, `c`.`unit_name`, `a`.`stock`, `a`.`alert_qty`, `a`.`sales_price`, `d`.`tax_name`, `a`.`service_bit`, `d`.`tax`, `a`.`status`, `a`.`store_id`, `a`.`sku`, `a`.`hsn`, `a`.`item_group`, CASE WHEN e.brand_name IS NULL THEN '' ELSE e.brand_name END AS brand_name
FROM `db_items` as `a`
LEFT JOIN `db_category` as `b` ON `b`.`id`=`a`.`category_id`
LEFT JOIN `db_units` as `c` ON `c`.`id`=`a`.`unit_id`
LEFT JOIN `db_tax` as `d` ON `d`.`id`=`a`.`tax_id`
LEFT JOIN `db_brands` as `e` ON `e`.`id`=`a`.`brand_id`
WHERE `a`.`store_id` = '2'
AND (`a`.`item_group` is NULL || a.item_group = 'Single')
AND   (
`a`.`id` LIKE '%ha%' ESCAPE '!'
OR  `a`.`item_image` LIKE '%ha%' ESCAPE '!'
OR  `a`.`item_code` LIKE '%ha%' ESCAPE '!'
OR  `a`.`item_name` LIKE '%ha%' ESCAPE '!'
OR  `e`.`brand_name` LIKE '%ha%' ESCAPE '!'
OR  `b`.`category_name` LIKE '%ha%' ESCAPE '!'
OR  `c`.`unit_name` LIKE '%ha%' ESCAPE '!'
OR  `a`.`stock` LIKE '%ha%' ESCAPE '!'
OR  `a`.`alert_qty` LIKE '%ha%' ESCAPE '!'
OR  `a`.`sales_price` LIKE '%ha%' ESCAPE '!'
OR  `d`.`tax_name` LIKE '%ha%' ESCAPE '!'
OR  `a`.`service_bit` LIKE '%ha%' ESCAPE '!'
OR  `d`.`tax` LIKE '%ha%' ESCAPE '!'
OR  `a`.`status` LIKE '%ha%' ESCAPE '!'
OR  `a`.`store_id` LIKE '%ha%' ESCAPE '!'
OR  `a`.`sku` LIKE '%ha%' ESCAPE '!'
OR  `a`.`hsn` LIKE '%ha%' ESCAPE '!'
OR  `a`.`item_group` LIKE '%ha%' ESCAPE '!'
 )
ORDER BY `a`.`id` DESC
 LIMIT 10
ERROR - 2025-01-02 13:32:45 --> Severity: error --> Exception: Call to a member function result() on bool /home/u583567323/domains/sianceedu.com/public_html/jee/application/models/Items_model.php 133
ERROR - 2025-01-02 13:32:45 --> Query error: MySQL server has gone away - Invalid query: UPDATE `ci_sessions` SET `timestamp` = 1735804965
WHERE `id` = 'a68d003bbdcb55c7d6a5b2cc3a812a6bff460cc9'
ERROR - 2025-01-02 13:32:45 --> Severity: Warning --> ini_set(): A session is active. You cannot change the session module's ini settings at this time /home/u583567323/domains/sianceedu.com/public_html/jee/system/libraries/Session/Session_driver.php 205
ERROR - 2025-01-02 13:32:45 --> Severity: Warning --> session_write_close(): Failed to write session data using user defined save handler. (session.save_path: /opt/alt/php74/var/lib/php/session) Unknown 0
ERROR - 2025-01-02 13:32:45 --> Query error: MySQL server has gone away - Invalid query: SELECT RELEASE_LOCK('a55164fd86fe13126176bc2506573e95') AS ci_session_lock
ERROR - 2025-01-02 13:33:16 --> Could not find the language line "Chalan"
ERROR - 2025-01-02 16:39:02 --> Could not find the language line "Chalan"
ERROR - 2025-01-02 16:39:05 --> Could not find the language line "Chalan"
ERROR - 2025-01-02 16:39:37 --> Could not find the language line "Chalan"
ERROR - 2025-01-02 18:44:58 --> Could not find the language line "Chalan"
ERROR - 2025-01-02 18:45:01 --> Could not find the language line "Chalan"
ERROR - 2025-01-02 18:45:37 --> Could not find the language line "Chalan"
ERROR - 2025-01-02 18:53:48 --> Could not find the language line "Chalan"
ERROR - 2025-01-02 18:53:54 --> Could not find the language line "Chalan"
ERROR - 2025-01-02 18:53:55 --> Could not find the language line "Chalan"
ERROR - 2025-01-02 18:54:16 --> Could not find the language line "Chalan"
