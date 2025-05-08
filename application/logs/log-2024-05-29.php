<?php defined('BASEPATH') OR exit('No direct script access allowed'); ?>

ERROR - 2024-05-29 11:26:41 --> Could not find the language line "Chalan"
ERROR - 2024-05-29 11:27:14 --> Could not find the language line "Chalan"
ERROR - 2024-05-29 12:19:03 --> Could not find the language line "Chalan"
ERROR - 2024-05-29 12:20:37 --> Could not find the language line "Chalan"
ERROR - 2024-05-29 12:24:49 --> Could not find the language line "Chalan"
ERROR - 2024-05-29 12:25:03 --> Could not find the language line "Chalan"
ERROR - 2024-05-29 12:27:57 --> Could not find the language line "Chalan"
ERROR - 2024-05-29 12:29:23 --> Could not find the language line "Chalan"
ERROR - 2024-05-29 14:09:40 --> Query error: MySQL server has gone away - Invalid query: SELECT `a`.`id`, `a`.`item_image`, `a`.`item_code`, `a`.`item_name`, `e`.`brand_name`, `b`.`category_name`, `c`.`unit_name`, `a`.`stock`, `a`.`alert_qty`, `a`.`sales_price`, `d`.`tax_name`, `a`.`service_bit`, `d`.`tax`, `a`.`status`, `a`.`store_id`, `a`.`sku`, `a`.`hsn`, `a`.`item_group`, CASE WHEN e.brand_name IS NULL THEN '' ELSE e.brand_name END AS brand_name
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
ERROR - 2024-05-29 14:09:40 --> Severity: error --> Exception: Call to a member function result() on bool /home/u583567323/domains/sianceedu.com/public_html/jee/application/models/Items_model.php 133
ERROR - 2024-05-29 14:09:40 --> Query error: MySQL server has gone away - Invalid query: UPDATE `ci_sessions` SET `timestamp` = 1716971980
WHERE `id` = 'ac1b40e3c67b342d6c48248881797c70d527bc9a'
ERROR - 2024-05-29 14:09:40 --> Severity: Warning --> ini_set(): A session is active. You cannot change the session module's ini settings at this time /home/u583567323/domains/sianceedu.com/public_html/jee/system/libraries/Session/Session_driver.php 205
ERROR - 2024-05-29 14:09:40 --> Severity: Warning --> session_write_close(): Failed to write session data using user defined save handler. (session.save_path: /opt/alt/php74/var/lib/php/session) Unknown 0
ERROR - 2024-05-29 14:09:40 --> Query error: MySQL server has gone away - Invalid query: SELECT RELEASE_LOCK('e4ef6dd0766a5c23c5b8ae4fa2e502b7') AS ci_session_lock
ERROR - 2024-05-29 14:11:23 --> Could not find the language line "Chalan"
ERROR - 2024-05-29 14:12:44 --> Query error: MySQL server has gone away - Invalid query: SELECT count(*) as tot FROM db_permissions where permissions="items_view" and role_id=2
ERROR - 2024-05-29 14:12:44 --> Severity: error --> Exception: Call to a member function row() on bool /home/u583567323/domains/sianceedu.com/public_html/jee/application/core/MY_Controller.php 199
ERROR - 2024-05-29 14:12:44 --> Query error: MySQL server has gone away - Invalid query: UPDATE `ci_sessions` SET `timestamp` = 1716972164
WHERE `id` = '5c197b53056f4ae116413b7b4626911c7154ed38'
ERROR - 2024-05-29 14:12:44 --> Severity: Warning --> ini_set(): A session is active. You cannot change the session module's ini settings at this time /home/u583567323/domains/sianceedu.com/public_html/jee/system/libraries/Session/Session_driver.php 205
ERROR - 2024-05-29 14:12:44 --> Severity: Warning --> session_write_close(): Failed to write session data using user defined save handler. (session.save_path: /opt/alt/php74/var/lib/php/session) Unknown 0
ERROR - 2024-05-29 14:12:44 --> Query error: MySQL server has gone away - Invalid query: SELECT RELEASE_LOCK('d738cc49f7634ac5cdda5f0be91dd9c3') AS ci_session_lock
ERROR - 2024-05-29 14:12:48 --> Could not find the language line "Chalan"
ERROR - 2024-05-29 14:13:04 --> Could not find the language line "Chalan"
ERROR - 2024-05-29 23:59:42 --> Could not find the language line "Chalan"
