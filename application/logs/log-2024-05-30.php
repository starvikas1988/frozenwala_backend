<?php defined('BASEPATH') OR exit('No direct script access allowed'); ?>

ERROR - 2024-05-30 00:00:12 --> Could not find the language line "Chalan"
ERROR - 2024-05-30 00:02:20 --> Could not find the language line "Chalan"
ERROR - 2024-05-30 11:35:43 --> Could not find the language line "Chalan"
ERROR - 2024-05-30 11:35:48 --> Could not find the language line "Chalan"
ERROR - 2024-05-30 11:36:00 --> Could not find the language line "Chalan"
ERROR - 2024-05-30 11:36:14 --> Severity: Warning --> count(): Parameter must be an array or an object that implements Countable /home/u583567323/domains/sianceedu.com/public_html/jee/application/models/Sales_model.php 362
ERROR - 2024-05-30 11:36:14 --> Could not find the language line "Chalan"
ERROR - 2024-05-30 11:36:14 --> Could not find the language line "shop_details"
ERROR - 2024-05-30 11:36:14 --> Could not find the language line "from_wallet"
ERROR - 2024-05-30 11:37:24 --> Query error: MySQL server has gone away - Invalid query: SELECT @@sql_mode AS sql_mode
ERROR - 2024-05-30 11:37:24 --> Severity: error --> Exception: Call to a member function row() on bool /home/u583567323/domains/sianceedu.com/public_html/jee/application/helpers/custom_helper.php 44
ERROR - 2024-05-30 11:37:24 --> Query error: MySQL server has gone away - Invalid query: UPDATE `ci_sessions` SET `timestamp` = 1717049244
WHERE `id` = 'fd5e352de8c71006a1b03f0603c208e2d26a010f'
ERROR - 2024-05-30 11:37:24 --> Severity: Warning --> ini_set(): A session is active. You cannot change the session module's ini settings at this time /home/u583567323/domains/sianceedu.com/public_html/jee/system/libraries/Session/Session_driver.php 205
ERROR - 2024-05-30 11:37:24 --> Severity: Warning --> session_write_close(): Failed to write session data using user defined save handler. (session.save_path: /opt/alt/php74/var/lib/php/session) Unknown 0
ERROR - 2024-05-30 11:37:24 --> Query error: MySQL server has gone away - Invalid query: SELECT RELEASE_LOCK('c907a6ced99574234dd5db1a80d92e6d') AS ci_session_lock
ERROR - 2024-05-30 11:37:29 --> Could not find the language line "Chalan"
ERROR - 2024-05-30 11:37:35 --> Could not find the language line "Chalan"
ERROR - 2024-05-30 11:38:36 --> Could not find the language line "Chalan"
ERROR - 2024-05-30 16:21:52 --> Could not find the language line "Chalan"
ERROR - 2024-05-30 16:26:12 --> Could not find the language line "Chalan"
ERROR - 2024-05-30 16:27:38 --> Could not find the language line "Chalan"
ERROR - 2024-05-30 10:59:24 --> 404 Page Not Found: Theme/plugins
ERROR - 2024-05-30 16:34:07 --> Could not find the language line "Chalan"
ERROR - 2024-05-30 11:04:18 --> 404 Page Not Found: Uploads/sig.jpeg
ERROR - 2024-05-30 16:36:40 --> Could not find the language line "Chalan"
ERROR - 2024-05-30 16:36:51 --> Could not find the language line "Chalan"
ERROR - 2024-05-30 17:08:44 --> Query error: MySQL server has gone away - Invalid query: SELECT `a`.`id`, `a`.`item_image`, `a`.`item_code`, `a`.`item_name`, `e`.`brand_name`, `b`.`category_name`, `c`.`unit_name`, `a`.`stock`, `a`.`alert_qty`, `a`.`sales_price`, `d`.`tax_name`, `a`.`service_bit`, `d`.`tax`, `a`.`status`, `a`.`store_id`, `a`.`sku`, `a`.`hsn`, `a`.`item_group`, CASE WHEN e.brand_name IS NULL THEN '' ELSE e.brand_name END AS brand_name
FROM `db_items` as `a`
LEFT JOIN `db_category` as `b` ON `b`.`id`=`a`.`category_id`
LEFT JOIN `db_units` as `c` ON `c`.`id`=`a`.`unit_id`
LEFT JOIN `db_tax` as `d` ON `d`.`id`=`a`.`tax_id`
LEFT JOIN `db_brands` as `e` ON `e`.`id`=`a`.`brand_id`
WHERE `a`.`store_id` = '2'
AND (`a`.`item_group` is NULL || a.item_group = 'Single')
AND   (
`a`.`id` LIKE '%1%' ESCAPE '!'
OR  `a`.`item_image` LIKE '%1%' ESCAPE '!'
OR  `a`.`item_code` LIKE '%1%' ESCAPE '!'
OR  `a`.`item_name` LIKE '%1%' ESCAPE '!'
OR  `e`.`brand_name` LIKE '%1%' ESCAPE '!'
OR  `b`.`category_name` LIKE '%1%' ESCAPE '!'
OR  `c`.`unit_name` LIKE '%1%' ESCAPE '!'
OR  `a`.`stock` LIKE '%1%' ESCAPE '!'
OR  `a`.`alert_qty` LIKE '%1%' ESCAPE '!'
OR  `a`.`sales_price` LIKE '%1%' ESCAPE '!'
OR  `d`.`tax_name` LIKE '%1%' ESCAPE '!'
OR  `a`.`service_bit` LIKE '%1%' ESCAPE '!'
OR  `d`.`tax` LIKE '%1%' ESCAPE '!'
OR  `a`.`status` LIKE '%1%' ESCAPE '!'
OR  `a`.`store_id` LIKE '%1%' ESCAPE '!'
OR  `a`.`sku` LIKE '%1%' ESCAPE '!'
OR  `a`.`hsn` LIKE '%1%' ESCAPE '!'
OR  `a`.`item_group` LIKE '%1%' ESCAPE '!'
 )
ORDER BY `a`.`id` DESC
 LIMIT 10
ERROR - 2024-05-30 17:08:44 --> Severity: error --> Exception: Call to a member function result() on bool /home/u583567323/domains/sianceedu.com/public_html/jee/application/models/Items_model.php 133
ERROR - 2024-05-30 17:08:44 --> Query error: MySQL server has gone away - Invalid query: UPDATE `ci_sessions` SET `timestamp` = 1717069124
WHERE `id` = 'f415d080b8957258cf1757e085564b08d5b39338'
ERROR - 2024-05-30 17:08:44 --> Severity: Warning --> ini_set(): A session is active. You cannot change the session module's ini settings at this time /home/u583567323/domains/sianceedu.com/public_html/jee/system/libraries/Session/Session_driver.php 205
ERROR - 2024-05-30 17:08:44 --> Severity: Warning --> session_write_close(): Failed to write session data using user defined save handler. (session.save_path: /opt/alt/php74/var/lib/php/session) Unknown 0
ERROR - 2024-05-30 17:08:44 --> Query error: MySQL server has gone away - Invalid query: SELECT RELEASE_LOCK('102bf0ab9370315a62e61a18a30c538b') AS ci_session_lock
