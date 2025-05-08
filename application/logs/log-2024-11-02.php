<?php defined('BASEPATH') OR exit('No direct script access allowed'); ?>

ERROR - 2024-11-02 18:07:22 --> Query error: MySQL server has gone away - Invalid query: SELECT @@sql_mode AS sql_mode
ERROR - 2024-11-02 18:07:22 --> Severity: error --> Exception: Call to a member function row() on bool /home/u583567323/domains/sianceedu.com/public_html/jee/application/helpers/custom_helper.php 44
ERROR - 2024-11-02 18:07:22 --> Query error: MySQL server has gone away - Invalid query: INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES ('498b16be6aa481e085845861e0ff9e93d480762d', '150.129.64.224', 1730551042, '__ci_last_regenerate|i:1730551020;currency|s:0:\"\";currency_placement|s:0:\"\";currency_code|s:0:\"\";view_date|s:10:\"dd-mm-yyyy\";view_time|s:2:\"12\";decimals|s:1:\"2\";qty_decimals|s:1:\"2\";store_name|s:10:\"SAAS ADMIN\";')
ERROR - 2024-11-02 18:07:22 --> Severity: Warning --> ini_set(): A session is active. You cannot change the session module's ini settings at this time /home/u583567323/domains/sianceedu.com/public_html/jee/system/libraries/Session/Session_driver.php 205
ERROR - 2024-11-02 18:07:22 --> Severity: Warning --> session_write_close(): Failed to write session data using user defined save handler. (session.save_path: /opt/alt/php74/var/lib/php/session) Unknown 0
ERROR - 2024-11-02 18:07:22 --> Query error: MySQL server has gone away - Invalid query: SELECT RELEASE_LOCK('08bdf19808fd057e6e631ce349c418b8') AS ci_session_lock
ERROR - 2024-11-02 18:07:26 --> Could not find the language line "Chalan"
ERROR - 2024-11-02 18:07:30 --> Could not find the language line "Chalan"
ERROR - 2024-11-02 18:08:35 --> Query error: MySQL server has gone away - Invalid query: SELECT `a`.`id`, `a`.`item_image`, `a`.`item_code`, `a`.`item_name`, `e`.`brand_name`, `b`.`category_name`, `c`.`unit_name`, `a`.`stock`, `a`.`alert_qty`, `a`.`sales_price`, `d`.`tax_name`, `a`.`service_bit`, `d`.`tax`, `a`.`status`, `a`.`store_id`, `a`.`sku`, `a`.`hsn`, `a`.`item_group`, CASE WHEN e.brand_name IS NULL THEN '' ELSE e.brand_name END AS brand_name
FROM `db_items` as `a`
LEFT JOIN `db_category` as `b` ON `b`.`id`=`a`.`category_id`
LEFT JOIN `db_units` as `c` ON `c`.`id`=`a`.`unit_id`
LEFT JOIN `db_tax` as `d` ON `d`.`id`=`a`.`tax_id`
LEFT JOIN `db_brands` as `e` ON `e`.`id`=`a`.`brand_id`
WHERE `a`.`store_id` = '2'
AND (`a`.`item_group` is NULL || a.item_group = 'Single')
AND   (
`a`.`id` LIKE '%lg%' ESCAPE '!'
OR  `a`.`item_image` LIKE '%lg%' ESCAPE '!'
OR  `a`.`item_code` LIKE '%lg%' ESCAPE '!'
OR  `a`.`item_name` LIKE '%lg%' ESCAPE '!'
OR  `e`.`brand_name` LIKE '%lg%' ESCAPE '!'
OR  `b`.`category_name` LIKE '%lg%' ESCAPE '!'
OR  `c`.`unit_name` LIKE '%lg%' ESCAPE '!'
OR  `a`.`stock` LIKE '%lg%' ESCAPE '!'
OR  `a`.`alert_qty` LIKE '%lg%' ESCAPE '!'
OR  `a`.`sales_price` LIKE '%lg%' ESCAPE '!'
OR  `d`.`tax_name` LIKE '%lg%' ESCAPE '!'
OR  `a`.`service_bit` LIKE '%lg%' ESCAPE '!'
OR  `d`.`tax` LIKE '%lg%' ESCAPE '!'
OR  `a`.`status` LIKE '%lg%' ESCAPE '!'
OR  `a`.`store_id` LIKE '%lg%' ESCAPE '!'
OR  `a`.`sku` LIKE '%lg%' ESCAPE '!'
OR  `a`.`hsn` LIKE '%lg%' ESCAPE '!'
OR  `a`.`item_group` LIKE '%lg%' ESCAPE '!'
 )
ORDER BY `a`.`id` DESC
 LIMIT 10, 10
ERROR - 2024-11-02 18:08:35 --> Severity: error --> Exception: Call to a member function result() on bool /home/u583567323/domains/sianceedu.com/public_html/jee/application/models/Items_model.php 133
ERROR - 2024-11-02 18:08:35 --> Query error: MySQL server has gone away - Invalid query: UPDATE `ci_sessions` SET `timestamp` = 1730551115
WHERE `id` = '35fbbbdc4086392630c3d6e9817e7192e16d6d24'
ERROR - 2024-11-02 18:08:35 --> Severity: Warning --> ini_set(): A session is active. You cannot change the session module's ini settings at this time /home/u583567323/domains/sianceedu.com/public_html/jee/system/libraries/Session/Session_driver.php 205
ERROR - 2024-11-02 18:08:35 --> Severity: Warning --> session_write_close(): Failed to write session data using user defined save handler. (session.save_path: /opt/alt/php74/var/lib/php/session) Unknown 0
ERROR - 2024-11-02 18:08:35 --> Query error: MySQL server has gone away - Invalid query: SELECT RELEASE_LOCK('cd2dcd1f1926c12a6c406efe190887b2') AS ci_session_lock
ERROR - 2024-11-02 18:09:13 --> Could not find the language line "Chalan"
