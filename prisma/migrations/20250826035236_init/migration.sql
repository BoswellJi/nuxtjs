-- CreateTable
CREATE TABLE `authz_menu` (
    `menu_id` BIGINT NOT NULL AUTO_INCREMENT,
    `menu_type` INTEGER NOT NULL DEFAULT 0,
    `menu_key` VARCHAR(50) NOT NULL DEFAULT '',
    `menu_name` VARCHAR(50) NOT NULL DEFAULT '',
    `menu_sort` INTEGER NOT NULL DEFAULT 0,
    `last_menu_id` BIGINT NOT NULL DEFAULT 0,
    `remark` VARCHAR(500) NOT NULL DEFAULT '',
    `valid` INTEGER NOT NULL DEFAULT 1,
    `create_user_id` BIGINT NOT NULL DEFAULT 0,
    `create_user` VARCHAR(20) NOT NULL DEFAULT '',
    `update_user_id` BIGINT NOT NULL DEFAULT 0,
    `update_user` VARCHAR(20) NOT NULL DEFAULT '',
    `create_time` DATETIME(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
    `update_time` DATETIME(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),

    PRIMARY KEY (`menu_id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `authz_operate_log` (
    `id` BIGINT NOT NULL AUTO_INCREMENT,
    `operate_module` INTEGER NOT NULL DEFAULT 0,
    `operate_type` INTEGER NOT NULL DEFAULT 0,
    `operate_type_name` VARCHAR(20) NOT NULL DEFAULT '',
    `operate_content` VARCHAR(500) NOT NULL DEFAULT '',
    `create_user_id` BIGINT NOT NULL DEFAULT 0,
    `create_user` VARCHAR(20) NOT NULL DEFAULT '',
    `create_time` DATETIME(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `authz_role` (
    `role_id` BIGINT NOT NULL AUTO_INCREMENT,
    `role_name` VARCHAR(50) NOT NULL DEFAULT '',
    `valid` INTEGER NOT NULL DEFAULT 1,
    `create_user_id` BIGINT NOT NULL DEFAULT 0,
    `create_user` VARCHAR(20) NOT NULL DEFAULT '',
    `update_user_id` BIGINT NOT NULL DEFAULT 0,
    `update_user` VARCHAR(20) NOT NULL DEFAULT '',
    `create_time` DATETIME(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
    `update_time` DATETIME(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
    `role_type` VARCHAR(10) NOT NULL DEFAULT 'A',

    PRIMARY KEY (`role_id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `authz_role_menu_relation` (
    `id` BIGINT NOT NULL AUTO_INCREMENT,
    `role_id` BIGINT NOT NULL DEFAULT 0,
    `menu_id` BIGINT NOT NULL DEFAULT 0,
    `valid` INTEGER NOT NULL DEFAULT 1,
    `create_user_id` BIGINT NOT NULL DEFAULT 0,
    `create_user` VARCHAR(20) NOT NULL DEFAULT '',
    `update_user_id` BIGINT NOT NULL DEFAULT 0,
    `update_user` VARCHAR(20) NOT NULL DEFAULT '',
    `create_time` DATETIME(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
    `update_time` DATETIME(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `authz_user_role_relation` (
    `id` BIGINT NOT NULL AUTO_INCREMENT,
    `role_id` BIGINT NOT NULL DEFAULT 0,
    `user_id` BIGINT NOT NULL DEFAULT 0,
    `valid` INTEGER NOT NULL DEFAULT 1,
    `create_user_id` BIGINT NOT NULL DEFAULT 0,
    `create_user` VARCHAR(20) NOT NULL DEFAULT '',
    `update_user_id` BIGINT NOT NULL DEFAULT 0,
    `update_user` VARCHAR(20) NOT NULL DEFAULT '',
    `create_time` DATETIME(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
    `update_time` DATETIME(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
    `group_leader` INTEGER NOT NULL DEFAULT 0,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `cust_account_info` (
    `id` BIGINT NOT NULL AUTO_INCREMENT,
    `cust_id` BIGINT NOT NULL,
    `payment_way_id` VARCHAR(10) NOT NULL DEFAULT '',
    `payment_way_name` VARCHAR(50) NOT NULL DEFAULT '',
    `account_type` INTEGER NOT NULL DEFAULT 0,
    `account_name` VARCHAR(100) NOT NULL DEFAULT '',
    `account_no` VARCHAR(50) NOT NULL DEFAULT '',
    `bank_name` VARCHAR(50) NOT NULL DEFAULT '',
    `bank_branch_id` INTEGER NOT NULL DEFAULT 0,
    `bank_branch_name` VARCHAR(50) NOT NULL DEFAULT '',
    `bank_country_id` INTEGER NOT NULL DEFAULT 0,
    `bank_country_name` VARCHAR(30) NOT NULL DEFAULT '',
    `bank_province_id` INTEGER NOT NULL DEFAULT 0,
    `bank_province_name` VARCHAR(30) NOT NULL DEFAULT '',
    `bank_city_id` INTEGER NOT NULL DEFAULT 0,
    `bank_city_name` VARCHAR(30) NOT NULL DEFAULT '',
    `bank_address` VARCHAR(100) NOT NULL DEFAULT '',
    `currency_code` VARCHAR(10) NOT NULL DEFAULT '',
    `currency_name` VARCHAR(20) NOT NULL DEFAULT '',
    `cost_bearing_id` VARCHAR(10) NOT NULL DEFAULT '',
    `cost_bearing_name` VARCHAR(50) NOT NULL DEFAULT '',
    `swift_code` VARCHAR(50) NOT NULL DEFAULT '',
    `receive_account_type_id` VARCHAR(10) NOT NULL DEFAULT '',
    `receive_account_type_name` VARCHAR(30) NOT NULL DEFAULT '',
    `business_register_code` VARCHAR(50) NOT NULL DEFAULT '',
    `liquidation_code` VARCHAR(50) NOT NULL DEFAULT '',
    `create_time` DATETIME(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
    `update_time` DATETIME(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `cust_base_info` (
    `cust_id` BIGINT NOT NULL AUTO_INCREMENT,
    `biz_line_code` VARCHAR(10) NOT NULL DEFAULT '',
    `biz_line_name` VARCHAR(30) NOT NULL DEFAULT '',
    `cust_name` VARCHAR(60) NOT NULL DEFAULT '',
    `cust_alias` VARCHAR(60) NOT NULL DEFAULT '',
    `credit_code` VARCHAR(60) NOT NULL DEFAULT '',
    `cust_grade_id` INTEGER NOT NULL DEFAULT 0,
    `cust_grade_name` VARCHAR(20) NOT NULL DEFAULT '',
    `cust_type_id` VARCHAR(10) NOT NULL DEFAULT '',
    `cust_type_name` VARCHAR(30) NOT NULL DEFAULT '',
    `country_id` INTEGER NOT NULL DEFAULT 0,
    `country_name` VARCHAR(30) NOT NULL DEFAULT '',
    `province_id` INTEGER NOT NULL DEFAULT 0,
    `province_name` VARCHAR(30) NOT NULL DEFAULT '',
    `city_id` INTEGER NOT NULL DEFAULT 0,
    `city_name` VARCHAR(30) NOT NULL DEFAULT '',
    `address` VARCHAR(100) NOT NULL DEFAULT '',
    `business_main` VARCHAR(200) NOT NULL DEFAULT '',
    `business_scope` VARCHAR(500) NOT NULL DEFAULT '',
    `valid` INTEGER NOT NULL DEFAULT 1,
    `create_user_id` BIGINT NOT NULL DEFAULT 0,
    `create_user` VARCHAR(20) NOT NULL DEFAULT '',
    `update_user_id` BIGINT NOT NULL DEFAULT 0,
    `update_user` VARCHAR(20) NOT NULL DEFAULT '',
    `create_time` DATETIME(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
    `update_time` DATETIME(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
    `cust_no` VARCHAR(60) NOT NULL DEFAULT '',
    `merchant_serial_no` VARCHAR(100) NOT NULL DEFAULT '',
    `old_merchant_serial_no` VARCHAR(100) NOT NULL DEFAULT '',
    `official_link` VARCHAR(100) NOT NULL DEFAULT '',
    `supplier_serial_no` VARCHAR(100) NOT NULL DEFAULT '',
    `dist_agency_id` BIGINT NOT NULL DEFAULT 0,
    `golden_key_sync_flag` INTEGER NOT NULL DEFAULT 0,
    `golden_key_sync_time` DATETIME(0) NOT NULL DEFAULT '1900-01-01 00:00:00',
    `dist_sync_flag` INTEGER NOT NULL DEFAULT 0,
    `dist_sync_time` DATETIME(0) NOT NULL DEFAULT '1900-01-01 00:00:00',

    PRIMARY KEY (`cust_id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `cust_cont_info` (
    `id` BIGINT NOT NULL AUTO_INCREMENT,
    `cust_id` BIGINT NOT NULL,
    `cont_name` VARCHAR(20) NOT NULL DEFAULT '',
    `mobile` VARCHAR(50) NOT NULL DEFAULT '',
    `email` VARCHAR(20) NOT NULL DEFAULT '',
    `sex` INTEGER NOT NULL DEFAULT 0,
    `resp_id` VARCHAR(30) NOT NULL DEFAULT '',
    `resp_name` VARCHAR(30) NOT NULL DEFAULT '',
    `valid` INTEGER NOT NULL DEFAULT 1,
    `create_time` DATETIME(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
    `update_time` DATETIME(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
    `phone` VARCHAR(50) NOT NULL DEFAULT '',

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `cust_dist_info` (
    `id` BIGINT NOT NULL AUTO_INCREMENT,
    `cust_id` BIGINT NOT NULL,
    `tc_manager_name` VARCHAR(30) NOT NULL DEFAULT '',
    `tc_manager_email` VARCHAR(50) NOT NULL DEFAULT '',
    `dist_cooperate_model` VARCHAR(10) NOT NULL DEFAULT '1',
    `dist_member_system` VARCHAR(10) NOT NULL DEFAULT '1',
    `dist_order_from_id` VARCHAR(50) NOT NULL DEFAULT '',
    `dist_cooperate_type_ids` VARCHAR(100) NOT NULL DEFAULT '',
    `dist_cooperate_begin_date` VARCHAR(20) NOT NULL DEFAULT '',
    `dist_cooperate_end_date` VARCHAR(20) NOT NULL DEFAULT '',
    `dist_rp_type` VARCHAR(10) NOT NULL DEFAULT '',
    `dist_channels_ids` VARCHAR(100) NOT NULL DEFAULT '',
    `dist_info_call_type` VARCHAR(10) NOT NULL DEFAULT '',
    `dist_product_type` INTEGER NOT NULL DEFAULT 1,
    `create_time` DATETIME(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
    `update_time` DATETIME(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
    `tc_manager_job_number` VARCHAR(50) NOT NULL DEFAULT '',

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `cust_dist_relation` (
    `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
    `cust_id` BIGINT NOT NULL DEFAULT 0,
    `cust_name` VARCHAR(60) NOT NULL DEFAULT '',
    `dist_order_from_id` VARCHAR(20) NOT NULL DEFAULT '0',
    `create_time` DATETIME(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `cust_follow_record` (
    `id` BIGINT NOT NULL AUTO_INCREMENT,
    `cust_id` BIGINT UNSIGNED NOT NULL DEFAULT 0,
    `strategy_name` VARCHAR(50) NOT NULL DEFAULT '',
    `begin_date` VARCHAR(30) NOT NULL DEFAULT '',
    `end_date` VARCHAR(30) NOT NULL DEFAULT '',
    `remark` VARCHAR(500) NOT NULL DEFAULT '',
    `valid` INTEGER NOT NULL DEFAULT 1,
    `create_user_id` BIGINT NOT NULL DEFAULT 0,
    `create_user` VARCHAR(20) NOT NULL DEFAULT '',
    `update_user_id` BIGINT NOT NULL DEFAULT 0,
    `update_user` VARCHAR(20) NOT NULL DEFAULT '',
    `create_time` DATETIME(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
    `update_time` DATETIME(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `cust_operate_log` (
    `id` BIGINT NOT NULL AUTO_INCREMENT,
    `cust_id` BIGINT NOT NULL,
    `operate_module` INTEGER NOT NULL DEFAULT 1,
    `operate_type` INTEGER NOT NULL DEFAULT 1,
    `operate_type_desc` VARCHAR(50) NOT NULL DEFAULT '',
    `operate_content` VARCHAR(1000) NOT NULL DEFAULT '',
    `create_user_id` BIGINT NOT NULL DEFAULT 0,
    `create_user` VARCHAR(20) NOT NULL DEFAULT '',
    `create_time` DATETIME(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
    `operate_title` VARCHAR(200) NOT NULL DEFAULT '',

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `cust_qual_info` (
    `id` BIGINT NOT NULL AUTO_INCREMENT,
    `cust_id` BIGINT NOT NULL,
    `qual_type_id` VARCHAR(50) NOT NULL DEFAULT '',
    `qual_type_name` VARCHAR(50) NOT NULL DEFAULT '',
    `qual_begin_date` VARCHAR(20) NOT NULL DEFAULT '',
    `qual_end_date` VARCHAR(20) NOT NULL DEFAULT '',
    `att_url` VARCHAR(100) NOT NULL DEFAULT '',
    `att_file_type` VARCHAR(20) NOT NULL DEFAULT '',
    `valid` INTEGER NOT NULL DEFAULT 1,
    `create_time` DATETIME(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
    `update_time` DATETIME(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
    `att_id` VARCHAR(50) NOT NULL DEFAULT '',

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `cust_sign_info` (
    `id` BIGINT NOT NULL AUTO_INCREMENT,
    `cust_id` BIGINT NOT NULL,
    `collab_brand` VARCHAR(20) NOT NULL DEFAULT '',
    `sign_subject_id` VARCHAR(20) NOT NULL DEFAULT '',
    `sign_subject_name` VARCHAR(50) NOT NULL DEFAULT '',
    `sign_project` VARCHAR(100) NOT NULL DEFAULT '',
    `sign_tax_rate` VARCHAR(20) NOT NULL DEFAULT '',
    `sign_is_direct` INTEGER NOT NULL DEFAULT 0,
    `sign_required_cont` INTEGER NOT NULL DEFAULT 0,
    `create_time` DATETIME(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
    `update_time` DATETIME(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
    `sign_project_id` VARCHAR(50) NOT NULL DEFAULT '',

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `cust_visit` (
    `visit_id` BIGINT NOT NULL AUTO_INCREMENT,
    `cust_id` BIGINT NOT NULL DEFAULT 0,
    `visit_type` INTEGER NOT NULL DEFAULT 1,
    `visit_model` INTEGER NOT NULL DEFAULT 1,
    `contacts` VARCHAR(30) NOT NULL DEFAULT '',
    `mobile` VARCHAR(30) NOT NULL DEFAULT '',
    `plan_visit_time` VARCHAR(30) NOT NULL DEFAULT '',
    `remind_time` VARCHAR(30) NOT NULL DEFAULT '',
    `visit_info` VARCHAR(2000) NOT NULL DEFAULT '',
    `valid` INTEGER NOT NULL DEFAULT 1,
    `create_user_id` BIGINT NOT NULL DEFAULT 0,
    `create_user` VARCHAR(20) NOT NULL DEFAULT '',
    `update_user_id` BIGINT NOT NULL DEFAULT 0,
    `update_user` VARCHAR(20) NOT NULL DEFAULT '',
    `create_time` DATETIME(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
    `update_time` DATETIME(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
    `visit_time` VARCHAR(30) NOT NULL DEFAULT '',
    `follow_info` VARCHAR(2000) NOT NULL DEFAULT '',
    `next_follow_time` VARCHAR(30) NOT NULL DEFAULT '',
    `next_remind_time` VARCHAR(30) NOT NULL DEFAULT '',
    `image_urls` VARCHAR(300) NOT NULL DEFAULT '',
    `att_urls` VARCHAR(300) NOT NULL DEFAULT '',
    `flag` INTEGER NOT NULL DEFAULT 0,

    PRIMARY KEY (`visit_id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `cust_visit_comment` (
    `id` BIGINT NOT NULL AUTO_INCREMENT,
    `visit_id` BIGINT NOT NULL DEFAULT 0,
    `cust_id` BIGINT NOT NULL DEFAULT 0,
    `comment` VARCHAR(2000) NOT NULL DEFAULT '',
    `valid` INTEGER NOT NULL DEFAULT 1,
    `create_user_id` BIGINT NOT NULL DEFAULT 0,
    `create_user` VARCHAR(20) NOT NULL DEFAULT '',
    `create_time` DATETIME(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `cust_visit_todo` (
    `id` BIGINT NOT NULL AUTO_INCREMENT,
    `visit_id` BIGINT NOT NULL DEFAULT 0,
    `todo_desc` VARCHAR(500) NOT NULL DEFAULT '',
    `follower` VARCHAR(20) NOT NULL DEFAULT '',
    `follow_time` VARCHAR(20) NOT NULL DEFAULT '',
    `todo_conclusion` VARCHAR(500) NOT NULL DEFAULT '',
    `flag` INTEGER NOT NULL DEFAULT 0,
    `create_user_id` BIGINT NOT NULL DEFAULT 0,
    `create_user` VARCHAR(20) NOT NULL DEFAULT '',
    `create_time` DATETIME(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
    `update_user_id` BIGINT NOT NULL DEFAULT 0,
    `update_user` VARCHAR(20) NOT NULL DEFAULT '',
    `update_time` DATETIME(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `enterprise_base_info` (
    `id` BIGINT NOT NULL AUTO_INCREMENT,
    `enterprise_name` VARCHAR(80) NOT NULL DEFAULT '',
    `enterprise_id` BIGINT NOT NULL DEFAULT 0,
    `relation_project_ids` VARCHAR(500) NOT NULL DEFAULT '',
    `relation_cust_nos` VARCHAR(500) NOT NULL DEFAULT '',
    `remark` TEXT NULL,
    `create_user` VARCHAR(20) NOT NULL DEFAULT '',
    `create_user_id` BIGINT NOT NULL DEFAULT 0,
    `update_user` VARCHAR(20) NOT NULL DEFAULT '',
    `update_user_id` BIGINT NOT NULL DEFAULT 0,
    `create_time` DATETIME(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
    `update_time` DATETIME(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
    `biz_line_code` VARCHAR(10) NOT NULL DEFAULT '',
    `biz_line_name` VARCHAR(30) NOT NULL DEFAULT '',

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `enterprise_cust_relation` (
    `id` BIGINT NOT NULL AUTO_INCREMENT,
    `enterprise_name` VARCHAR(80) NOT NULL DEFAULT '',
    `enterprise_id` BIGINT NOT NULL DEFAULT 0,
    `cust_no` VARCHAR(20) NOT NULL DEFAULT '',
    `cust_name` VARCHAR(80) NOT NULL DEFAULT '',
    `create_user` VARCHAR(20) NOT NULL DEFAULT '',
    `create_user_id` BIGINT NOT NULL DEFAULT 0,
    `update_user` VARCHAR(20) NOT NULL DEFAULT '',
    `update_user_id` BIGINT NOT NULL DEFAULT 0,
    `create_time` DATETIME(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
    `update_time` DATETIME(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
    `deleted` INTEGER NOT NULL DEFAULT 0,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `enterprise_info` (
    `id` BIGINT NOT NULL AUTO_INCREMENT,
    `enterprise_name` VARCHAR(80) NOT NULL DEFAULT '',
    `enterprise_id` BIGINT NOT NULL DEFAULT 0,
    `biz_line_code` VARCHAR(10) NOT NULL DEFAULT '',
    `biz_line_name` VARCHAR(30) NOT NULL DEFAULT '',
    `remark` TEXT NULL,
    `create_user` VARCHAR(20) NOT NULL DEFAULT '',
    `create_user_id` BIGINT NOT NULL DEFAULT 0,
    `update_user` VARCHAR(20) NOT NULL DEFAULT '',
    `update_user_id` BIGINT NOT NULL DEFAULT 0,
    `create_time` DATETIME(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
    `update_time` DATETIME(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `enterprise_project_relation` (
    `id` BIGINT NOT NULL AUTO_INCREMENT,
    `enterprise_name` VARCHAR(80) NOT NULL DEFAULT '',
    `enterprise_id` BIGINT NOT NULL DEFAULT 0,
    `project_id` VARCHAR(20) NOT NULL DEFAULT '',
    `project_name` VARCHAR(80) NOT NULL DEFAULT '',
    `create_user` VARCHAR(20) NOT NULL DEFAULT '',
    `create_user_id` BIGINT NOT NULL DEFAULT 0,
    `update_user` VARCHAR(20) NOT NULL DEFAULT '',
    `update_user_id` BIGINT NOT NULL DEFAULT 0,
    `create_time` DATETIME(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
    `update_time` DATETIME(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
    `deleted` INTEGER NOT NULL DEFAULT 0,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `oplog` (
    `id` BIGINT NOT NULL AUTO_INCREMENT,
    `create_time` DATETIME(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
    `create_by` VARCHAR(255) NOT NULL DEFAULT '',
    `deleted_millis` BIGINT NOT NULL DEFAULT 0,
    `update_time` DATETIME(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
    `update_by` VARCHAR(255) NOT NULL DEFAULT '',
    `operator` VARCHAR(255) NOT NULL DEFAULT '',
    `operator_user_id` BIGINT NOT NULL DEFAULT 0,
    `content` TEXT NULL,
    `op_type` VARCHAR(255) NOT NULL DEFAULT '',
    `category` VARCHAR(255) NOT NULL DEFAULT '',
    `target_desc` VARCHAR(255) NOT NULL DEFAULT '',
    `target_id` BIGINT NOT NULL DEFAULT 0,

    INDEX `category`(`category`),
    INDEX `create_time`(`create_time`),
    INDEX `op_type`(`op_type`),
    INDEX `operator_user_id`(`operator_user_id`),
    INDEX `target_id`(`target_id`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `sys_role` (
    `id` BIGINT NOT NULL AUTO_INCREMENT,
    `create_time` DATETIME(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
    `create_by` VARCHAR(255) NOT NULL DEFAULT '',
    `deleted_millis` BIGINT NOT NULL DEFAULT 0,
    `update_time` DATETIME(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
    `update_by` VARCHAR(255) NOT NULL DEFAULT '',
    `code` VARCHAR(255) NOT NULL DEFAULT '',
    `description` VARCHAR(255) NOT NULL DEFAULT '',
    `name` VARCHAR(255) NOT NULL DEFAULT '',

    UNIQUE INDEX `code`(`code`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `sys_user` (
    `id` BIGINT NOT NULL AUTO_INCREMENT,
    `create_time` DATETIME(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
    `create_by` VARCHAR(255) NOT NULL DEFAULT '',
    `deleted_millis` BIGINT NOT NULL DEFAULT 0,
    `update_time` DATETIME(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
    `update_by` VARCHAR(255) NOT NULL DEFAULT '',
    `dept_id` BIGINT NOT NULL DEFAULT 0,
    `dept_name` VARCHAR(255) NOT NULL DEFAULT '',
    `email` VARCHAR(255) NOT NULL DEFAULT '',
    `employed` BOOLEAN NOT NULL DEFAULT true,
    `enable` BOOLEAN NOT NULL DEFAULT true,
    `job_description` VARCHAR(500) NOT NULL DEFAULT '',
    `job_number` VARCHAR(255) NOT NULL DEFAULT '',
    `last_login_time` DATETIME(0) NOT NULL DEFAULT '1970-01-01 00:00:00',
    `name` VARCHAR(255) NOT NULL DEFAULT '',
    `oa_user_id` BIGINT NOT NULL DEFAULT 0,
    `phone` VARCHAR(255) NOT NULL DEFAULT '',
    `role_id` BIGINT NOT NULL DEFAULT 0,
    `business_line` INTEGER NOT NULL DEFAULT 1,

    UNIQUE INDEX `job_number`(`job_number`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `task` (
    `id` BIGINT NOT NULL AUTO_INCREMENT,
    `create_time` DATETIME(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
    `create_by` VARCHAR(255) NOT NULL DEFAULT '',
    `deleted_millis` BIGINT NOT NULL DEFAULT 0,
    `update_time` DATETIME(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
    `update_by` VARCHAR(255) NOT NULL DEFAULT '',
    `type` VARCHAR(20) NOT NULL DEFAULT '',
    `publish_state` VARCHAR(20) NOT NULL DEFAULT '',
    `publish_time` DATETIME(0) NOT NULL DEFAULT '1970-01-01 00:00:00',
    `content` TEXT NULL,
    `title` VARCHAR(255) NOT NULL DEFAULT '',
    `priority` TEXT NULL,
    `finish_rate` INTEGER NOT NULL DEFAULT 0,
    `require_finish_time` DATETIME(0) NOT NULL DEFAULT '1970-01-01 00:00:00',
    `reply_template` TEXT NULL,

    INDEX `create_time`(`create_time`),
    INDEX `priority`(`priority`(100)),
    INDEX `require_finish_time`(`require_finish_time`),
    INDEX `title`(`title`),
    INDEX `type`(`type`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `task_accept_roles_mapping` (
    `task_id` BIGINT NOT NULL DEFAULT 0,
    `sys_role_id` BIGINT NOT NULL DEFAULT 0,

    PRIMARY KEY (`task_id`, `sys_role_id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `user_task` (
    `id` BIGINT NOT NULL AUTO_INCREMENT,
    `create_time` DATETIME(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
    `create_by` VARCHAR(255) NOT NULL DEFAULT '',
    `deleted_millis` BIGINT NOT NULL DEFAULT 0,
    `update_time` DATETIME(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
    `update_by` VARCHAR(255) NOT NULL DEFAULT '',
    `task_id` BIGINT NOT NULL DEFAULT 0,
    `user_id` BIGINT NOT NULL DEFAULT 0,
    `finish_state` VARCHAR(20) NOT NULL DEFAULT '',
    `finish_time` DATETIME(0) NOT NULL DEFAULT '1970-01-01 00:00:00',
    `text_reply` TEXT NULL,
    `read_flag` BIT(1) NOT NULL DEFAULT b'0',
    `last_urging_time` BIGINT NOT NULL DEFAULT 0,

    INDEX `create_time`(`create_time`),
    INDEX `finish_state`(`finish_state`),
    INDEX `user_id`(`user_id`),
    UNIQUE INDEX `task_id`(`task_id`, `user_id`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `user_task_urging_record` (
    `id` BIGINT NOT NULL AUTO_INCREMENT,
    `record_id` VARCHAR(64) NOT NULL DEFAULT '',
    `task_id` BIGINT NOT NULL DEFAULT 0,
    `user_task_id` BIGINT NOT NULL DEFAULT 0,
    `urging_user_id` VARCHAR(32) NOT NULL DEFAULT '',
    `urging_user_name` VARCHAR(32) NOT NULL DEFAULT '',
    `urging_type` VARCHAR(32) NOT NULL DEFAULT '',
    `urging_status` INTEGER NOT NULL DEFAULT 0,
    `urging_time` BIGINT NOT NULL DEFAULT 0,
    `trigger_time` BIGINT NOT NULL DEFAULT 0,
    `init_time` BIGINT NOT NULL DEFAULT 0,
    `job_id` VARCHAR(64) NOT NULL DEFAULT '"0"',

    UNIQUE INDEX `user_task_urging_record_unique`(`record_id`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
