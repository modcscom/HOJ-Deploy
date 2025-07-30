-- MySQL dump 10.13  Distrib 8.0.27, for Linux (x86_64)
--
-- Host: localhost    Database: nacos
-- ------------------------------------------------------
-- Server version	8.0.27

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `config_info`
--

DROP TABLE IF EXISTS `config_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `config_info` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT 'id',
  `data_id` varchar(255) COLLATE utf8_bin NOT NULL COMMENT 'data_id',
  `group_id` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `content` longtext COLLATE utf8_bin NOT NULL COMMENT 'content',
  `md5` varchar(32) COLLATE utf8_bin DEFAULT NULL COMMENT 'md5',
  `gmt_create` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gmt_modified` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
  `src_user` text COLLATE utf8_bin COMMENT 'source user',
  `src_ip` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT 'source ip',
  `app_name` varchar(128) COLLATE utf8_bin DEFAULT NULL,
  `tenant_id` varchar(128) COLLATE utf8_bin DEFAULT '' COMMENT '租户字段',
  `c_desc` varchar(256) COLLATE utf8_bin DEFAULT NULL,
  `c_use` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `effect` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `type` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `c_schema` text COLLATE utf8_bin,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_configinfo_datagrouptenant` (`data_id`,`group_id`,`tenant_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin COMMENT='config_info';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config_info`
--

LOCK TABLES `config_info` WRITE;
/*!40000 ALTER TABLE `config_info` DISABLE KEYS */;
INSERT INTO `config_info` VALUES (1,'hoj-prod.yml','DEFAULT_GROUP','hoj:\n  jwt:\n    # 加密秘钥\n    secret: hoj-secret-init\n    # token有效时长，1天，单位秒\n    expire: 86400\n    checkRefreshExpire: 43200\n    header: token\n  judge:\n    # 调用判题服务器的token\n    token: bae646e1aac045a7aaeeae4b8b8a6052\n  db:\n    host: 172.20.0.3\n    port: 3306\n    public-host: 172.20.0.3\n    public-port: 3306\n    name: hoj\n    username: root\n    password: hoj123456\n  redis:\n    host: 172.20.0.2\n    port: 6379\n    password: hoj123456','59f8bdd20ec3afed140918510ba6bc67','2021-05-18 11:29:38','2025-07-30 01:20:03','root','172.20.0.5','','',NULL,NULL,NULL,'yaml',NULL),(2,'hoj-dev.yml','DEFAULT_GROUP','hoj:\r\n  jwt:\r\n    # 加密秘钥\r\n    secret: hoj-secret-init\r\n    # token默认为24小时 86400s\r\n    expire: 86400\r\n    checkRefreshExpire: 43200\r\n    header: token\r\n  judge:\r\n    # 调用判题服务器的token\r\n    token: hoj-judge-token-init\r\n  db:\r\n    host: 127.0.0.1\r\n    public-host: 127.0.0.1\r\n    port: 3306\r\n    name: hoj\r\n    username: root\r\n    password: hoj123456\r\n  mail:\r\n    ssl: true\r\n    username: your_email_username\r\n    password: your_email_password\r\n    host: smtp.qq.com\r\n    port: 465\r\n    background-img: https://cdn.jsdelivr.net/gh/HimitZH/CDN/images/HCODE.png\r\n  redis:\r\n    host: 127.0.0.1\r\n    port: 6379\r\n    password: hoj123456\r\n  web-config:\r\n    base-url: your_web_url\r\n    name: Hcode Online Judge\r\n    short-name: HOJ\r\n    description: Hcode Online Judge\r\n    register: true\r\n    footer:\r\n      record:\r\n        name: 2020-2021\r\n        url: your_record_url\r\n      project:\r\n        name: HOJ\r\n        url: https://gitee.com/himitzh0730/hoj\r\n  hdu:\r\n    account:\r\n      username: \r\n      password: \r\n  cf:\r\n    account:\r\n      username: \r\n      password: \r\n  poj:\r\n    account:\r\n      username: \r\n      password: \r\n  atcoder:\r\n    account:\r\n      username: \r\n      password: \r\n  spoj:\r\n    account:\r\n      username: \r\n      password: \r\n  switch:\r\n    judge:\r\n      public: true\r\n      group: true\r\n      contest: true\r\n      hide-non-contest-code: false\r\n      submit-interval: 8\r\n    discussion:\r\n      public: true\r\n      group: true\r\n      ac-initial-value: 10\r\n      create-daily: 5\r\n    comment:\r\n      contest: true\r\n      ac-initial-value: 10\r\n    group:\r\n      ac-initial-value: 20\r\n      create-daily: 2\r\n      create-total: 5','efe68f135e2908a791259b91c88a17c9','2022-06-06 03:35:55','2022-06-06 03:35:55',NULL,'14.211.16.41','','','hoj开发配置','','','yaml',''),(4,'hoj-web.yml','DEFAULT_GROUP','baseUrl: http://172.20.0.5\ndescription: null\nemailBGImg: https://cdn.jsdelivr.net/gh/HimitZH/CDN/images/HCODE.png\nemailHost: smtp.qq.com\nemailPassword: your_email_password\nemailPort: 465\nemailSsl: true\nemailUsername: your_email_username\nname: Hcode Online Judge\nprojectName: HOJ\nprojectUrl: https://gitee.com/himitzh0730/hoj\nrecordName: null\nrecordUrl: null\nregister: true\nshortName: HOJ\n','f6dab535911905082973f92ad4f6cabd','2025-07-29 20:50:45','2025-07-29 20:50:45','root','172.20.0.5','','',NULL,NULL,NULL,'yaml',NULL);
/*!40000 ALTER TABLE `config_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `config_info_aggr`
--

DROP TABLE IF EXISTS `config_info_aggr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `config_info_aggr` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT 'id',
  `data_id` varchar(255) COLLATE utf8_bin NOT NULL COMMENT 'data_id',
  `group_id` varchar(255) COLLATE utf8_bin NOT NULL COMMENT 'group_id',
  `datum_id` varchar(255) COLLATE utf8_bin NOT NULL COMMENT 'datum_id',
  `content` longtext COLLATE utf8_bin NOT NULL COMMENT '内容',
  `gmt_modified` datetime NOT NULL COMMENT '修改时间',
  `app_name` varchar(128) COLLATE utf8_bin DEFAULT NULL,
  `tenant_id` varchar(128) COLLATE utf8_bin DEFAULT '' COMMENT '租户字段',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_configinfoaggr_datagrouptenantdatum` (`data_id`,`group_id`,`tenant_id`,`datum_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin COMMENT='增加租户字段';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config_info_aggr`
--

LOCK TABLES `config_info_aggr` WRITE;
/*!40000 ALTER TABLE `config_info_aggr` DISABLE KEYS */;
/*!40000 ALTER TABLE `config_info_aggr` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `config_info_beta`
--

DROP TABLE IF EXISTS `config_info_beta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `config_info_beta` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT 'id',
  `data_id` varchar(255) COLLATE utf8_bin NOT NULL COMMENT 'data_id',
  `group_id` varchar(128) COLLATE utf8_bin NOT NULL COMMENT 'group_id',
  `app_name` varchar(128) COLLATE utf8_bin DEFAULT NULL COMMENT 'app_name',
  `content` longtext COLLATE utf8_bin NOT NULL COMMENT 'content',
  `beta_ips` varchar(1024) COLLATE utf8_bin DEFAULT NULL COMMENT 'betaIps',
  `md5` varchar(32) COLLATE utf8_bin DEFAULT NULL COMMENT 'md5',
  `gmt_create` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gmt_modified` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
  `src_user` text COLLATE utf8_bin COMMENT 'source user',
  `src_ip` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT 'source ip',
  `tenant_id` varchar(128) COLLATE utf8_bin DEFAULT '' COMMENT '租户字段',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_configinfobeta_datagrouptenant` (`data_id`,`group_id`,`tenant_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin COMMENT='config_info_beta';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config_info_beta`
--

LOCK TABLES `config_info_beta` WRITE;
/*!40000 ALTER TABLE `config_info_beta` DISABLE KEYS */;
/*!40000 ALTER TABLE `config_info_beta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `config_info_tag`
--

DROP TABLE IF EXISTS `config_info_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `config_info_tag` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT 'id',
  `data_id` varchar(255) COLLATE utf8_bin NOT NULL COMMENT 'data_id',
  `group_id` varchar(128) COLLATE utf8_bin NOT NULL COMMENT 'group_id',
  `tenant_id` varchar(128) COLLATE utf8_bin DEFAULT '' COMMENT 'tenant_id',
  `tag_id` varchar(128) COLLATE utf8_bin NOT NULL COMMENT 'tag_id',
  `app_name` varchar(128) COLLATE utf8_bin DEFAULT NULL COMMENT 'app_name',
  `content` longtext COLLATE utf8_bin NOT NULL COMMENT 'content',
  `md5` varchar(32) COLLATE utf8_bin DEFAULT NULL COMMENT 'md5',
  `gmt_create` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gmt_modified` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
  `src_user` text COLLATE utf8_bin COMMENT 'source user',
  `src_ip` varchar(50) COLLATE utf8_bin DEFAULT NULL COMMENT 'source ip',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_configinfotag_datagrouptenanttag` (`data_id`,`group_id`,`tenant_id`,`tag_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin COMMENT='config_info_tag';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config_info_tag`
--

LOCK TABLES `config_info_tag` WRITE;
/*!40000 ALTER TABLE `config_info_tag` DISABLE KEYS */;
/*!40000 ALTER TABLE `config_info_tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `config_tags_relation`
--

DROP TABLE IF EXISTS `config_tags_relation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `config_tags_relation` (
  `id` bigint NOT NULL COMMENT 'id',
  `tag_name` varchar(128) COLLATE utf8_bin NOT NULL COMMENT 'tag_name',
  `tag_type` varchar(64) COLLATE utf8_bin DEFAULT NULL COMMENT 'tag_type',
  `data_id` varchar(255) COLLATE utf8_bin NOT NULL COMMENT 'data_id',
  `group_id` varchar(128) COLLATE utf8_bin NOT NULL COMMENT 'group_id',
  `tenant_id` varchar(128) COLLATE utf8_bin DEFAULT '' COMMENT 'tenant_id',
  `nid` bigint NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`nid`),
  UNIQUE KEY `uk_configtagrelation_configidtag` (`id`,`tag_name`,`tag_type`),
  KEY `idx_tenant_id` (`tenant_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin COMMENT='config_tag_relation';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config_tags_relation`
--

LOCK TABLES `config_tags_relation` WRITE;
/*!40000 ALTER TABLE `config_tags_relation` DISABLE KEYS */;
/*!40000 ALTER TABLE `config_tags_relation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `group_capacity`
--

DROP TABLE IF EXISTS `group_capacity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `group_capacity` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `group_id` varchar(128) COLLATE utf8_bin NOT NULL DEFAULT '' COMMENT 'Group ID，空字符表示整个集群',
  `quota` int unsigned NOT NULL DEFAULT '0' COMMENT '配额，0表示使用默认值',
  `usage` int unsigned NOT NULL DEFAULT '0' COMMENT '使用量',
  `max_size` int unsigned NOT NULL DEFAULT '0' COMMENT '单个配置大小上限，单位为字节，0表示使用默认值',
  `max_aggr_count` int unsigned NOT NULL DEFAULT '0' COMMENT '聚合子配置最大个数，，0表示使用默认值',
  `max_aggr_size` int unsigned NOT NULL DEFAULT '0' COMMENT '单个聚合数据的子配置大小上限，单位为字节，0表示使用默认值',
  `max_history_count` int unsigned NOT NULL DEFAULT '0' COMMENT '最大变更历史数量',
  `gmt_create` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gmt_modified` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_group_id` (`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin COMMENT='集群、各Group容量信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `group_capacity`
--

LOCK TABLES `group_capacity` WRITE;
/*!40000 ALTER TABLE `group_capacity` DISABLE KEYS */;
/*!40000 ALTER TABLE `group_capacity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `his_config_info`
--

DROP TABLE IF EXISTS `his_config_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `his_config_info` (
  `id` bigint unsigned NOT NULL,
  `nid` bigint unsigned NOT NULL AUTO_INCREMENT,
  `data_id` varchar(255) COLLATE utf8_bin NOT NULL,
  `group_id` varchar(128) COLLATE utf8_bin NOT NULL,
  `app_name` varchar(128) COLLATE utf8_bin DEFAULT NULL COMMENT 'app_name',
  `content` longtext COLLATE utf8_bin NOT NULL,
  `md5` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `gmt_create` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `gmt_modified` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `src_user` text COLLATE utf8_bin,
  `src_ip` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `op_type` char(10) COLLATE utf8_bin DEFAULT NULL,
  `tenant_id` varchar(128) COLLATE utf8_bin DEFAULT '' COMMENT '租户字段',
  PRIMARY KEY (`nid`),
  KEY `idx_gmt_create` (`gmt_create`),
  KEY `idx_gmt_modified` (`gmt_modified`),
  KEY `idx_did` (`data_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin COMMENT='多租户改造';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `his_config_info`
--

LOCK TABLES `his_config_info` WRITE;
/*!40000 ALTER TABLE `his_config_info` DISABLE KEYS */;
INSERT INTO `his_config_info` VALUES (1,1,'hoj-prod.yml','DEFAULT_GROUP','','hoj:\n  jwt:\n    # 加密秘钥\n    secret: hoj-secret-init\n    # token默认为24小时 86400s\n    expire: 86400\n    checkRefreshExpire: 43200\n    header: token\n  judge:\n    # 调用判题服务器的token\n    token: hoj-judge-token-init\n  db:\n    host: 172.20.0.3\n    public-host: 172.20.0.3\n    port: 3306\n    name: hoj\n    username: root\n    password: hoj123456\n  mail:\n    ssl: true\n    username: your_email_username\n    password: your_email_password\n    host: smtp.qq.com\n    port: 465\n    background-img: https://cdn.jsdelivr.net/gh/HimitZH/CDN/images/HCODE.png\n  redis:\n    host: 172.20.0.2\n    port: 6379\n    password: hoj123456\n  web-config:\n    base-url: your_web_url\n    name: Hcode Online Judge\n    short-name: HOJ\n    description: Hcode Online Judge\n    register: true\n    footer:\n      record:\n        name: 2020-2021\n        url: your_record_url\n      project:\n        name: HOJ\n        url: https://gitee.com/himitzh0730/hoj\n  hdu:\n    account:\n      username: \n      password: \n  cf:\n    account:\n      username: \n      password: \n  poj:\n    account:\n      username: \n      password: \n  atcoder:\n    account:\n      username: \n      password: \n  spoj:\n    account:\n      username: \n      password: \n  switch:\n    judge:\n      public: true\n      group: true\n      contest: true\n      hide-non-contest-code: false\n      submit-interval: 8\n    discussion:\n      public: true\n      group: true\n      ac-initial-value: 10\n      create-daily: 5\n    comment:\n      contest: true\n      ac-initial-value: 10\n    group:\n      ac-initial-value: 20\n      create-daily: 2\n      create-total: 5','11e994dc89522e140d7e3a6c0d08262a','2025-07-30 09:50:44','2025-07-29 20:50:44','root','172.20.0.5','U',''),(0,2,'hoj-web.yml','DEFAULT_GROUP','','baseUrl: http://172.20.0.5\ndescription: null\nemailBGImg: https://cdn.jsdelivr.net/gh/HimitZH/CDN/images/HCODE.png\nemailHost: smtp.qq.com\nemailPassword: your_email_password\nemailPort: 465\nemailSsl: true\nemailUsername: your_email_username\nname: Hcode Online Judge\nprojectName: HOJ\nprojectUrl: https://gitee.com/himitzh0730/hoj\nrecordName: null\nrecordUrl: null\nregister: true\nshortName: HOJ\n','f6dab535911905082973f92ad4f6cabd','2025-07-30 09:50:44','2025-07-29 20:50:45','root','172.20.0.5','I',''),(1,3,'hoj-prod.yml','DEFAULT_GROUP','','hoj:\n  jwt:\n    # 加密秘钥\n    secret: hoj-secret-init\n    # token有效时长，1天，单位秒\n    expire: 86400\n    checkRefreshExpire: 43200\n    header: token\n  judge:\n    # 调用判题服务器的token\n    token: d199b18a7cc14794a62012c234a23788\n  db:\n    host: 172.20.0.3\n    port: 3306\n    public-host: 172.20.0.3\n    public-port: 3306\n    name: hoj\n    username: root\n    password: hoj123456\n  redis:\n    host: 172.20.0.2\n    port: 6379\n    password: hoj123456','50cd3d3342b69cc7d9d365d8c1e96cac','2025-07-30 12:34:19','2025-07-29 23:34:18','root','172.20.0.5','U',''),(1,4,'hoj-prod.yml','DEFAULT_GROUP','','hoj:\n  jwt:\n    # 加密秘钥\n    secret: hoj-secret-init\n    # token有效时长，1天，单位秒\n    expire: 86400\n    checkRefreshExpire: 43200\n    header: token\n  judge:\n    # 调用判题服务器的token\n    token: f1bd14fc2fcb4e74b2e12b38712aedbd\n  db:\n    host: 172.20.0.3\n    port: 3306\n    public-host: 172.20.0.3\n    public-port: 3306\n    name: hoj\n    username: root\n    password: hoj123456\n  redis:\n    host: 172.20.0.2\n    port: 6379\n    password: hoj123456','ac83a02808021d155ff4a89d542da193','2025-07-30 13:01:30','2025-07-30 00:01:30','root','172.20.0.5','U',''),(1,5,'hoj-prod.yml','DEFAULT_GROUP','','hoj:\n  jwt:\n    # 加密秘钥\n    secret: hoj-secret-init\n    # token有效时长，1天，单位秒\n    expire: 86400\n    checkRefreshExpire: 43200\n    header: token\n  judge:\n    # 调用判题服务器的token\n    token: 154a473fc4b045a3a7a6cd5a6ee955b6\n  db:\n    host: 172.20.0.3\n    port: 3306\n    public-host: 172.20.0.3\n    public-port: 3306\n    name: hoj\n    username: root\n    password: hoj123456\n  redis:\n    host: 172.20.0.2\n    port: 6379\n    password: hoj123456','9eded0a2fd3d126edd3092db5f04c74a','2025-07-30 13:08:11','2025-07-30 00:08:11','root','172.20.0.5','U',''),(1,6,'hoj-prod.yml','DEFAULT_GROUP','','hoj:\n  jwt:\n    # 加密秘钥\n    secret: hoj-secret-init\n    # token有效时长，1天，单位秒\n    expire: 86400\n    checkRefreshExpire: 43200\n    header: token\n  judge:\n    # 调用判题服务器的token\n    token: 201ed9c8a69249b7bd68611d5fa8a01e\n  db:\n    host: 172.20.0.3\n    port: 3306\n    public-host: 172.20.0.3\n    public-port: 3306\n    name: hoj\n    username: root\n    password: hoj123456\n  redis:\n    host: 172.20.0.2\n    port: 6379\n    password: hoj123456','b879969f9b02d0bc869135727b34379d','2025-07-30 13:19:17','2025-07-30 00:19:17','root','172.20.0.5','U',''),(1,7,'hoj-prod.yml','DEFAULT_GROUP','','hoj:\n  jwt:\n    # 加密秘钥\n    secret: hoj-secret-init\n    # token有效时长，1天，单位秒\n    expire: 86400\n    checkRefreshExpire: 43200\n    header: token\n  judge:\n    # 调用判题服务器的token\n    token: ddf104a3eae14ffdb0426c1526fca58c\n  db:\n    host: 172.20.0.3\n    port: 3306\n    public-host: 172.20.0.3\n    public-port: 3306\n    name: hoj\n    username: root\n    password: hoj123456\n  redis:\n    host: 172.20.0.2\n    port: 6379\n    password: hoj123456','45f31705792dc927621c3740df624da2','2025-07-30 14:20:03','2025-07-30 01:20:03','root','172.20.0.5','U','');
/*!40000 ALTER TABLE `his_config_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permissions`
--

DROP TABLE IF EXISTS `permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `permissions` (
  `role` varchar(50) NOT NULL,
  `resource` varchar(255) NOT NULL,
  `action` varchar(8) NOT NULL,
  UNIQUE KEY `uk_role_permission` (`role`,`resource`,`action`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permissions`
--

LOCK TABLES `permissions` WRITE;
/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `username` varchar(50) NOT NULL,
  `role` varchar(50) NOT NULL,
  UNIQUE KEY `idx_user_role` (`username`,`role`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES ('root','ROLE_ADMIN');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tenant_capacity`
--

DROP TABLE IF EXISTS `tenant_capacity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tenant_capacity` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `tenant_id` varchar(128) COLLATE utf8_bin NOT NULL DEFAULT '' COMMENT 'Tenant ID',
  `quota` int unsigned NOT NULL DEFAULT '0' COMMENT '配额，0表示使用默认值',
  `usage` int unsigned NOT NULL DEFAULT '0' COMMENT '使用量',
  `max_size` int unsigned NOT NULL DEFAULT '0' COMMENT '单个配置大小上限，单位为字节，0表示使用默认值',
  `max_aggr_count` int unsigned NOT NULL DEFAULT '0' COMMENT '聚合子配置最大个数',
  `max_aggr_size` int unsigned NOT NULL DEFAULT '0' COMMENT '单个聚合数据的子配置大小上限，单位为字节，0表示使用默认值',
  `max_history_count` int unsigned NOT NULL DEFAULT '0' COMMENT '最大变更历史数量',
  `gmt_create` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gmt_modified` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_tenant_id` (`tenant_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin COMMENT='租户容量信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tenant_capacity`
--

LOCK TABLES `tenant_capacity` WRITE;
/*!40000 ALTER TABLE `tenant_capacity` DISABLE KEYS */;
/*!40000 ALTER TABLE `tenant_capacity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tenant_info`
--

DROP TABLE IF EXISTS `tenant_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tenant_info` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT 'id',
  `kp` varchar(128) COLLATE utf8_bin NOT NULL COMMENT 'kp',
  `tenant_id` varchar(128) COLLATE utf8_bin DEFAULT '' COMMENT 'tenant_id',
  `tenant_name` varchar(128) COLLATE utf8_bin DEFAULT '' COMMENT 'tenant_name',
  `tenant_desc` varchar(256) COLLATE utf8_bin DEFAULT NULL COMMENT 'tenant_desc',
  `create_source` varchar(32) COLLATE utf8_bin DEFAULT NULL COMMENT 'create_source',
  `gmt_create` bigint NOT NULL COMMENT '创建时间',
  `gmt_modified` bigint NOT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_tenant_info_kptenantid` (`kp`,`tenant_id`),
  KEY `idx_tenant_id` (`tenant_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin COMMENT='tenant_info';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tenant_info`
--

LOCK TABLES `tenant_info` WRITE;
/*!40000 ALTER TABLE `tenant_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `tenant_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `username` varchar(50) NOT NULL,
  `password` varchar(500) NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES ('root','$2a$04$78CE5vhh3Q131mTBHklgWuUNz133b/t/23H3Nkq/W5Kofgs.qEOK6',1);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-07-30 14:43:15
