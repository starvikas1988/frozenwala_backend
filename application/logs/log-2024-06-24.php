<?php defined('BASEPATH') OR exit('No direct script access allowed'); ?>

ERROR - 2024-06-24 11:26:17 --> Could not find the language line "Chalan"
ERROR - 2024-06-24 11:26:21 --> Could not find the language line "Chalan"
ERROR - 2024-06-24 11:26:47 --> Could not find the language line "Chalan"
ERROR - 2024-06-24 11:27:30 --> Could not find the language line "Chalan"
ERROR - 2024-06-24 11:27:37 --> Could not find the language line "Chalan"
ERROR - 2024-06-24 12:49:32 --> Query error: MySQL server has gone away - Invalid query: SELECT `a`.`id`, `a`.`item_image`, `a`.`item_code`, `a`.`item_name`, `e`.`brand_name`, `b`.`category_name`, `c`.`unit_name`, `a`.`stock`, `a`.`alert_qty`, `a`.`sales_price`, `d`.`tax_name`, `a`.`service_bit`, `d`.`tax`, `a`.`status`, `a`.`store_id`, `a`.`sku`, `a`.`hsn`, `a`.`item_group`, CASE WHEN e.brand_name IS NULL THEN '' ELSE e.brand_name END AS brand_name
FROM `db_items` as `a`
LEFT JOIN `db_category` as `b` ON `b`.`id`=`a`.`category_id`
LEFT JOIN `db_units` as `c` ON `c`.`id`=`a`.`unit_id`
LEFT JOIN `db_tax` as `d` ON `d`.`id`=`a`.`tax_id`
LEFT JOIN `db_brands` as `e` ON `e`.`id`=`a`.`brand_id`
WHERE `a`.`store_id` = '2'
AND (`a`.`item_group` is NULL || a.item_group = 'Single')
AND   (
`a`.`id` LIKE '%washiGng %' ESCAPE '!'
OR  `a`.`item_image` LIKE '%washiGng %' ESCAPE '!'
OR  `a`.`item_code` LIKE '%washiGng %' ESCAPE '!'
OR  `a`.`item_name` LIKE '%washiGng %' ESCAPE '!'
OR  `e`.`brand_name` LIKE '%washiGng %' ESCAPE '!'
OR  `b`.`category_name` LIKE '%washiGng %' ESCAPE '!'
OR  `c`.`unit_name` LIKE '%washiGng %' ESCAPE '!'
OR  `a`.`stock` LIKE '%washiGng %' ESCAPE '!'
OR  `a`.`alert_qty` LIKE '%washiGng %' ESCAPE '!'
OR  `a`.`sales_price` LIKE '%washiGng %' ESCAPE '!'
OR  `d`.`tax_name` LIKE '%washiGng %' ESCAPE '!'
OR  `a`.`service_bit` LIKE '%washiGng %' ESCAPE '!'
OR  `d`.`tax` LIKE '%washiGng %' ESCAPE '!'
OR  `a`.`status` LIKE '%washiGng %' ESCAPE '!'
OR  `a`.`store_id` LIKE '%washiGng %' ESCAPE '!'
OR  `a`.`sku` LIKE '%washiGng %' ESCAPE '!'
OR  `a`.`hsn` LIKE '%washiGng %' ESCAPE '!'
OR  `a`.`item_group` LIKE '%washiGng %' ESCAPE '!'
 )
ORDER BY `a`.`id` DESC
 LIMIT 10
ERROR - 2024-06-24 12:49:32 --> Severity: error --> Exception: Call to a member function result() on bool /home/u583567323/domains/sianceedu.com/public_html/jee/application/models/Items_model.php 133
ERROR - 2024-06-24 12:49:32 --> Query error: MySQL server has gone away - Invalid query: UPDATE `ci_sessions` SET `timestamp` = 1719213572
WHERE `id` = '07a97cae706cfb1868f51b2286f6cdbc9a96bbb9'
ERROR - 2024-06-24 12:49:32 --> Severity: Warning --> ini_set(): A session is active. You cannot change the session module's ini settings at this time /home/u583567323/domains/sianceedu.com/public_html/jee/system/libraries/Session/Session_driver.php 205
ERROR - 2024-06-24 12:49:32 --> Severity: Warning --> session_write_close(): Failed to write session data using user defined save handler. (session.save_path: /opt/alt/php74/var/lib/php/session) Unknown 0
ERROR - 2024-06-24 12:49:32 --> Query error: MySQL server has gone away - Invalid query: SELECT RELEASE_LOCK('e995bde7474bb77e08b312b4c83d2324') AS ci_session_lock
ERROR - 2024-06-24 13:03:40 --> Could not find the language line "Chalan"
ERROR - 2024-06-24 13:17:13 --> Could not find the language line "Chalan"
ERROR - 2024-06-24 13:17:31 --> Could not find the language line "Chalan"
ERROR - 2024-06-24 13:18:00 --> Severity: Warning --> count(): Parameter must be an array or an object that implements Countable /home/u583567323/domains/sianceedu.com/public_html/jee/application/models/Sales_model.php 362
ERROR - 2024-06-24 13:18:00 --> Severity: Warning --> implode(): Invalid arguments passed /home/u583567323/domains/sianceedu.com/public_html/jee/application/models/Sales_model.php 362
ERROR - 2024-06-24 13:18:00 --> Could not find the language line "Chalan"
ERROR - 2024-06-24 13:18:00 --> Could not find the language line "shop_details"
ERROR - 2024-06-24 13:18:00 --> Could not find the language line "from_wallet"
ERROR - 2024-06-24 13:18:34 --> Could not find the language line "Chalan"
ERROR - 2024-06-24 16:52:37 --> Could not find the language line "Chalan"
ERROR - 2024-06-24 16:52:42 --> Could not find the language line "Chalan"
ERROR - 2024-06-24 16:52:56 --> Could not find the language line "Chalan"
ERROR - 2024-06-24 16:53:14 --> Could not find the language line "Chalan"
ERROR - 2024-06-24 16:53:42 --> Could not find the language line "Chalan"
ERROR - 2024-06-24 16:54:15 --> Could not find the language line "Chalan"
ERROR - 2024-06-24 16:56:19 --> Could not find the language line "Chalan"
ERROR - 2024-06-24 16:56:36 --> Could not find the language line "Chalan"
ERROR - 2024-06-24 16:56:46 --> Could not find the language line "Chalan"
ERROR - 2024-06-24 17:03:12 --> Could not find the language line "Chalan"
ERROR - 2024-06-24 17:05:03 --> Could not find the language line "Chalan"
ERROR - 2024-06-24 17:05:16 --> Could not find the language line "Chalan"
ERROR - 2024-06-24 17:06:52 --> Could not find the language line "Chalan"
ERROR - 2024-06-24 17:08:07 --> Could not find the language line "Chalan"
ERROR - 2024-06-24 17:25:29 --> Could not find the language line "Chalan"
ERROR - 2024-06-24 17:25:35 --> Could not find the language line "Chalan"
ERROR - 2024-06-24 17:25:48 --> Could not find the language line "Chalan"
ERROR - 2024-06-24 17:57:15 --> Could not find the language line "Chalan"
ERROR - 2024-06-24 17:57:25 --> Could not find the language line "Chalan"
ERROR - 2024-06-24 17:57:56 --> Could not find the language line "Chalan"
ERROR - 2024-06-24 17:58:05 --> Could not find the language line "Chalan"
ERROR - 2024-06-24 17:58:49 --> Could not find the language line "Chalan"
ERROR - 2024-06-24 17:58:54 --> Could not find the language line "Chalan"
ERROR - 2024-06-24 18:00:02 --> Could not find the language line "Chalan"
ERROR - 2024-06-24 18:00:07 --> Could not find the language line "Chalan"
ERROR - 2024-06-24 18:00:23 --> Could not find the language line "Chalan"
ERROR - 2024-06-24 18:00:28 --> Could not find the language line "Chalan"
ERROR - 2024-06-24 18:01:07 --> Query error: MySQL server has gone away - Invalid query: SELECT `a`.`id`, `a`.`item_image`, `a`.`item_code`, `a`.`item_name`, `e`.`brand_name`, `b`.`category_name`, `c`.`unit_name`, `a`.`stock`, `a`.`alert_qty`, `a`.`sales_price`, `d`.`tax_name`, `a`.`service_bit`, `d`.`tax`, `a`.`status`, `a`.`store_id`, `a`.`sku`, `a`.`hsn`, `a`.`item_group`, CASE WHEN e.brand_name IS NULL THEN '' ELSE e.brand_name END AS brand_name
FROM `db_items` as `a`
LEFT JOIN `db_category` as `b` ON `b`.`id`=`a`.`category_id`
LEFT JOIN `db_units` as `c` ON `c`.`id`=`a`.`unit_id`
LEFT JOIN `db_tax` as `d` ON `d`.`id`=`a`.`tax_id`
LEFT JOIN `db_brands` as `e` ON `e`.`id`=`a`.`brand_id`
WHERE `a`.`store_id` = '2'
AND (`a`.`item_group` is NULL || a.item_group = 'Single')
AND   (
`a`.`id` LIKE '%GODREJ RD EDGEPRO 210D TAF MN WN %' ESCAPE '!'
OR  `a`.`item_image` LIKE '%GODREJ RD EDGEPRO 210D TAF MN WN %' ESCAPE '!'
OR  `a`.`item_code` LIKE '%GODREJ RD EDGEPRO 210D TAF MN WN %' ESCAPE '!'
OR  `a`.`item_name` LIKE '%GODREJ RD EDGEPRO 210D TAF MN WN %' ESCAPE '!'
OR  `e`.`brand_name` LIKE '%GODREJ RD EDGEPRO 210D TAF MN WN %' ESCAPE '!'
OR  `b`.`category_name` LIKE '%GODREJ RD EDGEPRO 210D TAF MN WN %' ESCAPE '!'
OR  `c`.`unit_name` LIKE '%GODREJ RD EDGEPRO 210D TAF MN WN %' ESCAPE '!'
OR  `a`.`stock` LIKE '%GODREJ RD EDGEPRO 210D TAF MN WN %' ESCAPE '!'
OR  `a`.`alert_qty` LIKE '%GODREJ RD EDGEPRO 210D TAF MN WN %' ESCAPE '!'
OR  `a`.`sales_price` LIKE '%GODREJ RD EDGEPRO 210D TAF MN WN %' ESCAPE '!'
OR  `d`.`tax_name` LIKE '%GODREJ RD EDGEPRO 210D TAF MN WN %' ESCAPE '!'
OR  `a`.`service_bit` LIKE '%GODREJ RD EDGEPRO 210D TAF MN WN %' ESCAPE '!'
OR  `d`.`tax` LIKE '%GODREJ RD EDGEPRO 210D TAF MN WN %' ESCAPE '!'
OR  `a`.`status` LIKE '%GODREJ RD EDGEPRO 210D TAF MN WN %' ESCAPE '!'
OR  `a`.`store_id` LIKE '%GODREJ RD EDGEPRO 210D TAF MN WN %' ESCAPE '!'
OR  `a`.`sku` LIKE '%GODREJ RD EDGEPRO 210D TAF MN WN %' ESCAPE '!'
OR  `a`.`hsn` LIKE '%GODREJ RD EDGEPRO 210D TAF MN WN %' ESCAPE '!'
OR  `a`.`item_group` LIKE '%GODREJ RD EDGEPRO 210D TAF MN WN %' ESCAPE '!'
 )
ORDER BY `a`.`id` DESC
 LIMIT 10
ERROR - 2024-06-24 18:01:07 --> Severity: error --> Exception: Call to a member function result() on bool /home/u583567323/domains/sianceedu.com/public_html/jee/application/models/Items_model.php 133
ERROR - 2024-06-24 18:01:07 --> Query error: MySQL server has gone away - Invalid query: UPDATE `ci_sessions` SET `timestamp` = 1719232267
WHERE `id` = '4c916303d0c84e72befff5badccee11d90ac06e7'
ERROR - 2024-06-24 18:01:07 --> Severity: Warning --> ini_set(): A session is active. You cannot change the session module's ini settings at this time /home/u583567323/domains/sianceedu.com/public_html/jee/system/libraries/Session/Session_driver.php 205
ERROR - 2024-06-24 18:01:07 --> Severity: Warning --> session_write_close(): Failed to write session data using user defined save handler. (session.save_path: /opt/alt/php74/var/lib/php/session) Unknown 0
ERROR - 2024-06-24 18:01:07 --> Query error: MySQL server has gone away - Invalid query: SELECT RELEASE_LOCK('deeaa8f4d069e9c15b64d55828b3f4fe') AS ci_session_lock
ERROR - 2024-06-24 18:01:24 --> Could not find the language line "Chalan"
ERROR - 2024-06-24 18:01:30 --> Could not find the language line "Chalan"
ERROR - 2024-06-24 18:01:49 --> Could not find the language line "Chalan"
ERROR - 2024-06-24 18:01:54 --> Could not find the language line "Chalan"
ERROR - 2024-06-24 18:02:37 --> Could not find the language line "Chalan"
ERROR - 2024-06-24 18:02:43 --> Could not find the language line "Chalan"
ERROR - 2024-06-24 18:03:01 --> Could not find the language line "Chalan"
ERROR - 2024-06-24 18:03:07 --> Could not find the language line "Chalan"
ERROR - 2024-06-24 18:04:38 --> Could not find the language line "Chalan"
ERROR - 2024-06-24 18:05:03 --> Could not find the language line "Chalan"
ERROR - 2024-06-24 18:05:20 --> Could not find the language line "Chalan"
ERROR - 2024-06-24 18:05:25 --> Could not find the language line "Chalan"
ERROR - 2024-06-24 18:06:14 --> Could not find the language line "Chalan"
ERROR - 2024-06-24 18:06:20 --> Could not find the language line "Chalan"
ERROR - 2024-06-24 18:07:00 --> Could not find the language line "Chalan"
ERROR - 2024-06-24 18:07:06 --> Could not find the language line "Chalan"
ERROR - 2024-06-24 18:07:42 --> Could not find the language line "Chalan"
ERROR - 2024-06-24 18:07:49 --> Could not find the language line "Chalan"
ERROR - 2024-06-24 18:08:11 --> Could not find the language line "Chalan"
ERROR - 2024-06-24 18:08:20 --> Could not find the language line "Chalan"
ERROR - 2024-06-24 18:09:43 --> Could not find the language line "Chalan"
ERROR - 2024-06-24 18:10:23 --> Could not find the language line "Chalan"
ERROR - 2024-06-24 18:11:00 --> Could not find the language line "Chalan"
ERROR - 2024-06-24 18:11:50 --> Could not find the language line "Chalan"
ERROR - 2024-06-24 18:13:09 --> Could not find the language line "Chalan"
ERROR - 2024-06-24 18:24:52 --> Could not find the language line "Chalan"
ERROR - 2024-06-24 18:24:57 --> Could not find the language line "Chalan"
ERROR - 2024-06-24 18:25:13 --> Could not find the language line "Chalan"
ERROR - 2024-06-24 18:25:18 --> Could not find the language line "Chalan"
ERROR - 2024-06-24 18:26:03 --> Could not find the language line "Chalan"
ERROR - 2024-06-24 18:26:08 --> Could not find the language line "Chalan"
ERROR - 2024-06-24 18:27:38 --> Could not find the language line "Chalan"
ERROR - 2024-06-24 18:27:43 --> Could not find the language line "Chalan"
ERROR - 2024-06-24 18:28:00 --> Could not find the language line "Chalan"
ERROR - 2024-06-24 18:28:04 --> Could not find the language line "Chalan"
ERROR - 2024-06-24 18:29:19 --> Could not find the language line "Chalan"
ERROR - 2024-06-24 18:29:25 --> Could not find the language line "Chalan"
ERROR - 2024-06-24 18:30:05 --> Could not find the language line "Chalan"
ERROR - 2024-06-24 18:30:16 --> Could not find the language line "Chalan"
ERROR - 2024-06-24 18:30:26 --> Could not find the language line "Chalan"
ERROR - 2024-06-24 18:30:28 --> Could not find the language line "Chalan"
ERROR - 2024-06-24 18:31:31 --> Could not find the language line "Chalan"
ERROR - 2024-06-24 19:09:01 --> Could not find the language line "Chalan"
ERROR - 2024-06-24 19:11:49 --> Could not find the language line "Chalan"
ERROR - 2024-06-24 19:21:47 --> Could not find the language line "Chalan"
ERROR - 2024-06-24 19:31:21 --> Could not find the language line "Chalan"
ERROR - 2024-06-24 14:02:04 --> 404 Page Not Found: Theme/plugins
ERROR - 2024-06-24 19:32:47 --> Could not find the language line "Chalan"
ERROR - 2024-06-24 19:32:55 --> Could not find the language line "Chalan"
ERROR - 2024-06-24 19:33:04 --> Could not find the language line "Chalan"
ERROR - 2024-06-24 19:34:12 --> Could not find the language line "Chalan"
