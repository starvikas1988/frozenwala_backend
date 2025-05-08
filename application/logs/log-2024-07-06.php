<?php defined('BASEPATH') OR exit('No direct script access allowed'); ?>

ERROR - 2024-07-06 13:45:12 --> Could not find the language line "Chalan"
ERROR - 2024-07-06 13:45:18 --> Could not find the language line "Chalan"
ERROR - 2024-07-06 13:56:57 --> Could not find the language line "Chalan"
ERROR - 2024-07-06 13:59:45 --> Could not find the language line "Chalan"
ERROR - 2024-07-06 13:59:51 --> Could not find the language line "Chalan"
ERROR - 2024-07-06 13:59:55 --> Could not find the language line "Chalan"
ERROR - 2024-07-06 13:59:57 --> Could not find the language line "Chalan"
ERROR - 2024-07-06 14:00:03 --> Could not find the language line "Chalan"
ERROR - 2024-07-06 14:00:09 --> Could not find the language line "Chalan"
ERROR - 2024-07-06 14:01:32 --> Query error: MySQL server has gone away - Invalid query: SELECT count(*) as tot_rec
FROM `db_items`
WHERE `id` = '318'
AND `store_id` = '2'
ERROR - 2024-07-06 14:01:32 --> Severity: error --> Exception: Call to a member function row() on bool /home/u583567323/domains/sianceedu.com/public_html/jee/application/helpers/custom_helper.php 933
ERROR - 2024-07-06 14:01:32 --> Query error: MySQL server has gone away - Invalid query: UPDATE `ci_sessions` SET `timestamp` = 1720254692
WHERE `id` = 'a2395cfd109df231553d98998de0721892c19314'
ERROR - 2024-07-06 14:01:32 --> Severity: Warning --> ini_set(): A session is active. You cannot change the session module's ini settings at this time /home/u583567323/domains/sianceedu.com/public_html/jee/system/libraries/Session/Session_driver.php 205
ERROR - 2024-07-06 14:01:32 --> Severity: Warning --> session_write_close(): Failed to write session data using user defined save handler. (session.save_path: /opt/alt/php74/var/lib/php/session) Unknown 0
ERROR - 2024-07-06 14:01:32 --> Query error: MySQL server has gone away - Invalid query: SELECT RELEASE_LOCK('6594a09011c729680c1bf6abd5abe5db') AS ci_session_lock
ERROR - 2024-07-06 14:01:34 --> Could not find the language line "Chalan"
ERROR - 2024-07-06 14:01:36 --> Could not find the language line "Chalan"
ERROR - 2024-07-06 14:01:39 --> Could not find the language line "Chalan"
ERROR - 2024-07-06 14:01:41 --> Could not find the language line "Chalan"
ERROR - 2024-07-06 14:01:46 --> Could not find the language line "Chalan"
ERROR - 2024-07-06 14:01:51 --> Could not find the language line "Chalan"
ERROR - 2024-07-06 14:01:54 --> Could not find the language line "Chalan"
ERROR - 2024-07-06 14:01:57 --> Could not find the language line "Chalan"
ERROR - 2024-07-06 14:02:01 --> Could not find the language line "Chalan"
ERROR - 2024-07-06 14:02:10 --> Could not find the language line "Chalan"
ERROR - 2024-07-06 14:02:12 --> Could not find the language line "Chalan"
ERROR - 2024-07-06 14:02:44 --> Could not find the language line "Chalan"
ERROR - 2024-07-06 14:27:11 --> Could not find the language line "Chalan"
ERROR - 2024-07-06 14:27:46 --> Could not find the language line "Chalan"
ERROR - 2024-07-06 14:28:03 --> Could not find the language line "Chalan"
ERROR - 2024-07-06 14:28:09 --> Could not find the language line "Chalan"
ERROR - 2024-07-06 14:28:10 --> Could not find the language line "Chalan"
ERROR - 2024-07-06 14:28:11 --> Could not find the language line "Chalan"
ERROR - 2024-07-06 14:28:13 --> Could not find the language line "Chalan"
ERROR - 2024-07-06 14:28:14 --> Could not find the language line "Chalan"
ERROR - 2024-07-06 14:28:15 --> Could not find the language line "Chalan"
ERROR - 2024-07-06 14:28:18 --> Could not find the language line "Chalan"
ERROR - 2024-07-06 14:28:25 --> Could not find the language line "Chalan"
ERROR - 2024-07-06 14:28:26 --> Could not find the language line "Chalan"
ERROR - 2024-07-06 14:28:27 --> Could not find the language line "Chalan"
ERROR - 2024-07-06 14:28:28 --> Could not find the language line "Chalan"
ERROR - 2024-07-06 14:28:30 --> Could not find the language line "Chalan"
ERROR - 2024-07-06 14:31:42 --> Could not find the language line "Chalan"
ERROR - 2024-07-06 14:31:58 --> Could not find the language line "Chalan"
ERROR - 2024-07-06 14:32:09 --> Could not find the language line "Chalan"
ERROR - 2024-07-06 15:41:30 --> Could not find the language line "Chalan"
ERROR - 2024-07-06 15:41:35 --> Could not find the language line "Chalan"
ERROR - 2024-07-06 15:41:54 --> Could not find the language line "Chalan"
ERROR - 2024-07-06 15:42:05 --> Could not find the language line "Chalan"
ERROR - 2024-07-06 15:42:09 --> Could not find the language line "Chalan"
ERROR - 2024-07-06 15:42:41 --> Query error: MySQL server has gone away - Invalid query: SELECT `a`.`id`, `a`.`item_image`, `a`.`item_code`, `a`.`item_name`, `e`.`brand_name`, `b`.`category_name`, `c`.`unit_name`, `a`.`stock`, `a`.`alert_qty`, `a`.`sales_price`, `d`.`tax_name`, `a`.`service_bit`, `d`.`tax`, `a`.`status`, `a`.`store_id`, `a`.`sku`, `a`.`hsn`, `a`.`item_group`, CASE WHEN e.brand_name IS NULL THEN '' ELSE e.brand_name END AS brand_name
FROM `db_items` as `a`
LEFT JOIN `db_category` as `b` ON `b`.`id`=`a`.`category_id`
LEFT JOIN `db_units` as `c` ON `c`.`id`=`a`.`unit_id`
LEFT JOIN `db_tax` as `d` ON `d`.`id`=`a`.`tax_id`
LEFT JOIN `db_brands` as `e` ON `e`.`id`=`a`.`brand_id`
WHERE `a`.`store_id` = '2'
AND (`a`.`item_group` is NULL || a.item_group = 'Single')
AND   (
`a`.`id` LIKE '%VOLTAS%' ESCAPE '!'
OR  `a`.`item_image` LIKE '%VOLTAS%' ESCAPE '!'
OR  `a`.`item_code` LIKE '%VOLTAS%' ESCAPE '!'
OR  `a`.`item_name` LIKE '%VOLTAS%' ESCAPE '!'
OR  `e`.`brand_name` LIKE '%VOLTAS%' ESCAPE '!'
OR  `b`.`category_name` LIKE '%VOLTAS%' ESCAPE '!'
OR  `c`.`unit_name` LIKE '%VOLTAS%' ESCAPE '!'
OR  `a`.`stock` LIKE '%VOLTAS%' ESCAPE '!'
OR  `a`.`alert_qty` LIKE '%VOLTAS%' ESCAPE '!'
OR  `a`.`sales_price` LIKE '%VOLTAS%' ESCAPE '!'
OR  `d`.`tax_name` LIKE '%VOLTAS%' ESCAPE '!'
OR  `a`.`service_bit` LIKE '%VOLTAS%' ESCAPE '!'
OR  `d`.`tax` LIKE '%VOLTAS%' ESCAPE '!'
OR  `a`.`status` LIKE '%VOLTAS%' ESCAPE '!'
OR  `a`.`store_id` LIKE '%VOLTAS%' ESCAPE '!'
OR  `a`.`sku` LIKE '%VOLTAS%' ESCAPE '!'
OR  `a`.`hsn` LIKE '%VOLTAS%' ESCAPE '!'
OR  `a`.`item_group` LIKE '%VOLTAS%' ESCAPE '!'
 )
ORDER BY `a`.`id` DESC
 LIMIT 10
ERROR - 2024-07-06 15:42:41 --> Severity: error --> Exception: Call to a member function result() on bool /home/u583567323/domains/sianceedu.com/public_html/jee/application/models/Items_model.php 133
ERROR - 2024-07-06 15:42:41 --> Query error: MySQL server has gone away - Invalid query: UPDATE `ci_sessions` SET `timestamp` = 1720260761
WHERE `id` = 'dd9a4c41e07b74e6bd253b574a4106d605cfe595'
ERROR - 2024-07-06 15:42:41 --> Severity: Warning --> ini_set(): A session is active. You cannot change the session module's ini settings at this time /home/u583567323/domains/sianceedu.com/public_html/jee/system/libraries/Session/Session_driver.php 205
ERROR - 2024-07-06 15:42:41 --> Severity: Warning --> session_write_close(): Failed to write session data using user defined save handler. (session.save_path: /opt/alt/php74/var/lib/php/session) Unknown 0
ERROR - 2024-07-06 15:42:41 --> Query error: MySQL server has gone away - Invalid query: SELECT RELEASE_LOCK('92471606ef7dfb7419adb2acc26c0b9a') AS ci_session_lock
ERROR - 2024-07-06 15:44:52 --> Could not find the language line "Chalan"
ERROR - 2024-07-06 15:45:08 --> Could not find the language line "Chalan"
ERROR - 2024-07-06 15:51:36 --> Could not find the language line "Chalan"
ERROR - 2024-07-06 15:52:01 --> Could not find the language line "Chalan"
ERROR - 2024-07-06 10:25:09 --> 404 Page Not Found: Theme/plugins
ERROR - 2024-07-06 15:56:06 --> Severity: Warning --> count(): Parameter must be an array or an object that implements Countable /home/u583567323/domains/sianceedu.com/public_html/jee/application/models/Sales_model.php 362
ERROR - 2024-07-06 15:56:06 --> Could not find the language line "Chalan"
ERROR - 2024-07-06 15:56:06 --> Could not find the language line "shop_details"
ERROR - 2024-07-06 15:56:06 --> Could not find the language line "from_wallet"
ERROR - 2024-07-06 15:56:10 --> Could not find the language line "Chalan"
ERROR - 2024-07-06 15:57:12 --> Severity: Warning --> count(): Parameter must be an array or an object that implements Countable /home/u583567323/domains/sianceedu.com/public_html/jee/application/models/Sales_model.php 362
ERROR - 2024-07-06 15:57:21 --> Could not find the language line "Chalan"
ERROR - 2024-07-06 15:57:21 --> Could not find the language line "shop_details"
ERROR - 2024-07-06 15:57:21 --> Could not find the language line "from_wallet"
ERROR - 2024-07-06 16:04:13 --> Could not find the language line "Chalan"
ERROR - 2024-07-06 16:04:43 --> Could not find the language line "Chalan"
ERROR - 2024-07-06 16:20:10 --> Could not find the language line "Chalan"
ERROR - 2024-07-06 16:21:30 --> Query error: MySQL server has gone away - Invalid query: SELECT count(*) as tot_rec
FROM `db_sales`
WHERE `id` = '77'
AND `store_id` = '2'
ERROR - 2024-07-06 16:21:30 --> Severity: error --> Exception: Call to a member function row() on bool /home/u583567323/domains/sianceedu.com/public_html/jee/application/helpers/custom_helper.php 933
ERROR - 2024-07-06 16:21:30 --> Query error: MySQL server has gone away - Invalid query: UPDATE `ci_sessions` SET `timestamp` = 1720263090
WHERE `id` = 'deb610971391b4c415e56794f1795b699d92e86f'
ERROR - 2024-07-06 16:21:30 --> Severity: Warning --> ini_set(): A session is active. You cannot change the session module's ini settings at this time /home/u583567323/domains/sianceedu.com/public_html/jee/system/libraries/Session/Session_driver.php 205
ERROR - 2024-07-06 16:21:30 --> Severity: Warning --> session_write_close(): Failed to write session data using user defined save handler. (session.save_path: /opt/alt/php74/var/lib/php/session) Unknown 0
ERROR - 2024-07-06 16:21:30 --> Query error: MySQL server has gone away - Invalid query: SELECT RELEASE_LOCK('19a4ed17da95db715ddcc38194d7a92e') AS ci_session_lock
ERROR - 2024-07-06 18:08:17 --> Could not find the language line "Chalan"
ERROR - 2024-07-06 18:08:32 --> Could not find the language line "Chalan"
ERROR - 2024-07-06 18:08:49 --> Could not find the language line "Chalan"
ERROR - 2024-07-06 18:09:57 --> Could not find the language line "Chalan"
ERROR - 2024-07-06 18:11:15 --> Could not find the language line "Chalan"
ERROR - 2024-07-06 18:14:16 --> Could not find the language line "Chalan"
ERROR - 2024-07-06 18:15:32 --> Could not find the language line "Chalan"
ERROR - 2024-07-06 18:28:55 --> Could not find the language line "Chalan"
ERROR - 2024-07-06 18:31:07 --> Could not find the language line "Chalan"
ERROR - 2024-07-06 18:36:34 --> Could not find the language line "Chalan"
ERROR - 2024-07-06 18:37:59 --> Could not find the language line "Chalan"
ERROR - 2024-07-06 18:38:05 --> Could not find the language line "Chalan"
ERROR - 2024-07-06 19:43:26 --> Could not find the language line "Chalan"
ERROR - 2024-07-06 19:44:14 --> Could not find the language line "Chalan"
ERROR - 2024-07-06 19:50:58 --> Could not find the language line "Chalan"
ERROR - 2024-07-06 19:52:42 --> Query error: MySQL server has gone away - Invalid query: select * from db_customers where mobile='7584856244' and store_id=2
ERROR - 2024-07-06 19:52:42 --> Severity: error --> Exception: Call to a member function num_rows() on bool /home/u583567323/domains/sianceedu.com/public_html/jee/application/models/Customers_model.php 156
ERROR - 2024-07-06 19:52:42 --> Query error: MySQL server has gone away - Invalid query: UPDATE `ci_sessions` SET `timestamp` = 1720275762
WHERE `id` = 'b0c7d6c73ca2afa15acaee0226e665d7ed520fc5'
ERROR - 2024-07-06 19:52:42 --> Severity: Warning --> ini_set(): A session is active. You cannot change the session module's ini settings at this time /home/u583567323/domains/sianceedu.com/public_html/jee/system/libraries/Session/Session_driver.php 205
ERROR - 2024-07-06 19:52:42 --> Severity: Warning --> session_write_close(): Failed to write session data using user defined save handler. (session.save_path: /opt/alt/php74/var/lib/php/session) Unknown 0
ERROR - 2024-07-06 19:52:42 --> Query error: MySQL server has gone away - Invalid query: SELECT RELEASE_LOCK('d13d4752701be1ea24832781f9ab435b') AS ci_session_lock
ERROR - 2024-07-06 14:23:00 --> 404 Page Not Found: Theme/plugins
ERROR - 2024-07-06 19:54:30 --> Severity: Warning --> count(): Parameter must be an array or an object that implements Countable /home/u583567323/domains/sianceedu.com/public_html/jee/application/models/Sales_model.php 362
ERROR - 2024-07-06 19:54:30 --> Could not find the language line "Chalan"
ERROR - 2024-07-06 19:54:30 --> Could not find the language line "shop_details"
ERROR - 2024-07-06 19:54:30 --> Could not find the language line "from_wallet"
ERROR - 2024-07-06 19:54:34 --> Could not find the language line "Chalan"
ERROR - 2024-07-06 19:54:41 --> Severity: Warning --> count(): Parameter must be an array or an object that implements Countable /home/u583567323/domains/sianceedu.com/public_html/jee/application/models/Sales_model.php 362
ERROR - 2024-07-06 19:54:41 --> Could not find the language line "Chalan"
ERROR - 2024-07-06 19:54:41 --> Could not find the language line "shop_details"
ERROR - 2024-07-06 19:54:41 --> Could not find the language line "from_wallet"
