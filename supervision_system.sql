/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50554
Source Host           : localhost:3306
Source Database       : supervision_system

Target Server Type    : MYSQL
Target Server Version : 50554
File Encoding         : 65001

Date: 2018-06-04 10:57:13
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for course
-- ----------------------------
DROP TABLE IF EXISTS `course`;
CREATE TABLE `course` (
  `id` varchar(36) NOT NULL,
  `createBy` varchar(255) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `updateBy` varchar(255) DEFAULT NULL,
  `updateDate` datetime DEFAULT NULL,
  `version` int(11) NOT NULL,
  `classes` int(11) NOT NULL,
  `courseCode` varchar(255) DEFAULT NULL,
  `courseName` varchar(255) DEFAULT NULL,
  `courseNode` int(11) NOT NULL,
  `courseNum` int(11) NOT NULL,
  `courseRoom` varchar(255) DEFAULT NULL,
  `endWeek` int(11) NOT NULL,
  `grade` int(11) NOT NULL,
  `major` varchar(255) DEFAULT NULL,
  `oddEven` varchar(255) DEFAULT NULL,
  `startWeek` int(11) NOT NULL,
  `semster_id` varchar(36) DEFAULT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  `courseDate` varchar(36) NOT NULL,
  `isDelete` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_5vrc7jl0i0wj0rermycwojb6t` (`semster_id`),
  KEY `FK_jax62ol4cjynpgdfcc8mhoewo` (`user_id`),
  CONSTRAINT `FK_5vrc7jl0i0wj0rermycwojb6t` FOREIGN KEY (`semster_id`) REFERENCES `semester` (`id`),
  CONSTRAINT `FK_jax62ol4cjynpgdfcc8mhoewo` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of course
-- ----------------------------
INSERT INTO `course` VALUES ('0027420a-287c-47db-bdcf-30a9a2e6f56a', '小马', '2018-06-02 21:46:43', null, null, '1', '1', '123456789', '设计模式', '1', '1', '慎思楼', '1', '14', '化学工程与工艺', '全周', '1', '2', '92605ad1-cb78-4ec1-8dcf-b7ee278db959', '星期一', '0');
INSERT INTO `course` VALUES ('1', null, null, '小马', '2018-06-02 20:48:37', '4', '3', '1234563', '编译原理', '3', '2', '慎思楼中101', '18', '14', '计算机科学与技术', '全周', '1', '1', '3', '星期一', '0');
INSERT INTO `course` VALUES ('2', null, null, null, null, '0', '1', '1234562', '操作系统', '1', '2', '慎思楼中101', '18', '1', '计算机科学与技术', '0', '1', '1', '8', '星期五', '0');
INSERT INTO `course` VALUES ('3', null, null, null, null, '0', '1', '1234561', '数据结构', '1', '2', '慎思楼中101', '18', '1', '计算机科学与技术', '0', '1', '1', '8', '星期三', '1');
INSERT INTO `course` VALUES ('4', null, null, null, null, '0', '1', '123567', 'java', '1', '2', '慎思楼中101', '0', '1', '计算机科学与技术', '0', '1', '1', '8', '星期四', '1');
INSERT INTO `course` VALUES ('510d213f-6e76-4c08-86d5-de2650abeda0', '小马', '2018-06-03 18:39:43', null, null, '1', '2', '1', '计算机导论', '2', '3', '慎思楼 中101', '16', '15', '软件工程', '全周', '1', '1', '8', '星期一', '0');
INSERT INTO `course` VALUES ('63950f36-c5f9-4cdc-9648-290738116745', '小马', '2018-06-03 13:58:39', '小马', '2018-06-03 18:38:52', '2', '2', '1', '计算机导论', '2', '3', '慎思楼 中101', '16', '15', '软件工程', '全周', '1', '2', '8', '星期一', '0');
INSERT INTO `course` VALUES ('67902ba0-6d08-4e40-95b8-41a25b763762', '小马', '2018-06-03 18:39:43', null, null, '1', '3', '2', 'Linux', '1', '2', '博学楼 102', '16', '16', '统计学', '单周', '1', '2', '9', '星期五', '0');
INSERT INTO `course` VALUES ('71df6d06-3f6b-4d46-b851-884273c2ed4b', '小马', '2018-06-03 13:58:39', null, null, '1', '3', '2', 'Linux', '1', '2', '博学楼 102', '16', '16', '统计学', '单周', '1', '2', '9', '星期五', '0');
INSERT INTO `course` VALUES ('8bc8400b-32af-4e59-9a6f-ce4bed23963a', '小马', '2018-06-02 21:44:13', null, null, '1', '1', '12347893', '设计模式', '1', '1', '慎思楼', '1', '14', '化学工程与工艺', '全周', '1', '2', '11', '星期一', '0');
INSERT INTO `course` VALUES ('ed34a84b-acea-44b9-b4a9-89c703ac6498', 'admin', '2018-05-18 15:47:36', null, null, '1', '2', '1234569', '深入理解java虚拟机', '4', '2', '慎思楼 北101', '1', '14', '软件工程', '单周', '1', '1', '9', '星期二', '0');
INSERT INTO `course` VALUES ('f614d5f7-c911-420d-984d-e8cd1c02cdb0', '小马', '2018-06-03 17:12:40', null, null, '1', '2', '342224', '大话设计模式', '1', '2', '慎思楼中101', '18', '15', '视觉传达设计', '全周', '1', '1', '10', '星期日', '0');

-- ----------------------------
-- Table structure for course_comment
-- ----------------------------
DROP TABLE IF EXISTS `course_comment`;
CREATE TABLE `course_comment` (
  `id` varchar(36) NOT NULL,
  `createBy` varchar(255) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `updateBy` varchar(255) DEFAULT NULL,
  `updateDate` datetime DEFAULT NULL,
  `version` int(11) NOT NULL,
  `comment` longtext,
  `proposal` longtext,
  `state` int(11) NOT NULL,
  `courseRecord_id` varchar(36) DEFAULT NULL,
  `recordTime` varchar(255) DEFAULT NULL,
  `remark` varchar(1500) DEFAULT NULL,
  `isEdit` int(11) NOT NULL,
  `presentCount` int(11) DEFAULT NULL,
  `score` float DEFAULT NULL,
  `totalCount` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_mwotddfknvumggqrgxni5wmvs` (`courseRecord_id`),
  CONSTRAINT `FK_mwotddfknvumggqrgxni5wmvs` FOREIGN KEY (`courseRecord_id`) REFERENCES `course_record` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of course_comment
-- ----------------------------
INSERT INTO `course_comment` VALUES ('025b1be7-bc1e-4199-b27c-a8c0b09b1ccc', '2', '2018-05-29 09:00:54', '2', '2018-05-29 09:00:54', '0', '11', '11', '1', 'eef8ffa7-89a1-43c6-be46-d02130e28619', null, null, '0', null, null, null);
INSERT INTO `course_comment` VALUES ('3890b1ad-64b1-4fef-a3b7-afec34c4dd43', '3', '2018-05-29 08:55:06', '3', '2018-05-29 08:55:06', '0', '11', '11', '0', '4932a502-74bc-413d-8666-ea74cd923896', null, null, '0', null, null, null);
INSERT INTO `course_comment` VALUES ('55a0665d-f260-4cfa-a588-e76310dcfb5b', '2', '2018-05-30 13:38:05', '2', '2018-05-30 13:38:05', '0', null, null, '0', '33721b90-6744-4e6e-9d2b-43f24d4a72f9', '2018-05-30', null, '0', null, null, null);
INSERT INTO `course_comment` VALUES ('566bbc5b-29e7-4678-9dbf-9962e2bdbeb0', '2', '2018-06-04 10:12:51', '2', '2018-06-04 10:12:51', '0', null, null, '0', '977a71ba-0047-4680-add9-e88cb7fc2a0d', '2018-06-04', null, '0', null, null, null);
INSERT INTO `course_comment` VALUES ('64b03cdf-d486-4838-8009-ae76347f80cd', '3', '2018-05-29 08:56:01', '3', '2018-05-29 08:56:01', '0', '1', '23', '1', 'e90662a3-c6ca-4a5c-99fb-f9478693ca75', null, null, '0', null, null, null);
INSERT INTO `course_comment` VALUES ('7845e5dc-e787-4a67-8c4f-feb25afed2f1', '2', '2018-05-29 19:55:47', '2', '2018-05-29 19:55:47', '0', '12', '12', '1', '059a264c-e443-40d2-b639-9b5e00695780', null, null, '1', null, null, null);
INSERT INTO `course_comment` VALUES ('83e14396-a5b3-452b-a5ca-112a19db15f7', '2', '2018-06-03 17:15:01', '2', '2018-06-03 17:15:01', '0', '100', '100', '2', '61efb155-4691-4448-ae51-5f62dffd07da', '2018-06-03', null, '1', '100', '100', '100');
INSERT INTO `course_comment` VALUES ('8b59e826-da47-4481-9f42-e6e59d0496c7', '2', '2018-06-01 14:42:44', '2', '2018-06-01 14:42:44', '0', null, null, '0', 'dfcb639b-c95d-4cfb-a73d-a6b28e6c1363', '2018-06-01', null, '0', null, null, null);
INSERT INTO `course_comment` VALUES ('a7db7821-3bf1-42ed-b294-6d19251d5147', '2', '2018-04-24 15:56:40', '2', '2018-04-24 15:56:40', '0', null, null, '1', '7b2c8afe-a22b-4a29-8925-253fc75c3271', null, null, '0', null, null, null);
INSERT INTO `course_comment` VALUES ('ad6a813d-6458-4308-ad7f-0281dd9fda4c', '3', '2018-06-03 17:14:59', '3', '2018-06-03 17:14:59', '0', 'hao', 'hao', '2', '61efb155-4691-4448-ae51-5f62dffd07da', '2018-06-03', null, '1', '100', '12', '100');
INSERT INTO `course_comment` VALUES ('ce7ed8df-6fba-4acc-b929-18e975d90c26', '2', '2018-04-24 15:56:38', '2', '2018-04-24 15:56:38', '0', null, null, '2', '7ef0b55b-f8b6-48f5-abec-12dccd4853d7', null, null, '0', null, null, null);
INSERT INTO `course_comment` VALUES ('d6b70fd2-493d-4b65-b0b9-9e2fda097ff2', '2', '2018-04-21 16:24:41', '2', '2018-04-21 16:24:41', '0', '不错 不错', '很好  !!!!!', '0', '448135d1-d429-4874-a735-939ccc1ec906', null, null, '0', null, null, null);
INSERT INTO `course_comment` VALUES ('d918b8f0-85a5-40fa-992d-d80f525e37f2', '2', '2018-05-29 09:06:26', '2', '2018-05-29 09:06:26', '0', 'rvg', 'vgg', '1', '4932a502-74bc-413d-8666-ea74cd923896', null, null, '0', null, null, null);
INSERT INTO `course_comment` VALUES ('dc027409-a6ab-45f0-90a5-4feabfcee8a1', '2', '2018-04-24 16:02:23', '2', '2018-04-24 16:02:23', '0', null, null, '2', 'e188527c-e52e-4ca0-b613-a1514bfb204f', null, null, '0', null, null, null);
INSERT INTO `course_comment` VALUES ('e7317518-fd07-49f0-92f3-f221e7f5a665', '2', '2018-06-04 10:14:48', '2', '2018-06-04 10:14:48', '0', null, null, '0', 'c42c1e2c-bfbd-4ad0-a9a7-b207d9c18a97', '2018-06-04', null, '0', null, null, null);

-- ----------------------------
-- Table structure for course_record
-- ----------------------------
DROP TABLE IF EXISTS `course_record`;
CREATE TABLE `course_record` (
  `id` varchar(36) NOT NULL,
  `createBy` varchar(255) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `updateBy` varchar(255) DEFAULT NULL,
  `updateDate` datetime DEFAULT NULL,
  `version` int(11) NOT NULL,
  `recordCount` int(11) NOT NULL,
  `course_id` varchar(36) DEFAULT NULL,
  `recordTime` varchar(255) DEFAULT NULL,
  `checkedCount` int(11) NOT NULL,
  `state` int(11) NOT NULL,
  `presentCount` int(11) DEFAULT NULL,
  `score` float DEFAULT NULL,
  `totalCount` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_cdrlskq6vifn4ijqb1moiyvtk` (`course_id`),
  CONSTRAINT `FK_cdrlskq6vifn4ijqb1moiyvtk` FOREIGN KEY (`course_id`) REFERENCES `course` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of course_record
-- ----------------------------
INSERT INTO `course_record` VALUES ('059a264c-e443-40d2-b639-9b5e00695780', null, null, null, null, '0', '1', 'ed34a84b-acea-44b9-b4a9-89c703ac6498', '2018-05-29', '0', '0', '11', '11', '11');
INSERT INTO `course_record` VALUES ('33721b90-6744-4e6e-9d2b-43f24d4a72f9', null, '2018-05-30 13:38:05', null, null, '0', '1', '3', '2018-05-30', '0', '0', '11', '11', '11');
INSERT INTO `course_record` VALUES ('448135d1-d429-4874-a735-939ccc1ec906', null, null, null, null, '0', '0', '1', '2018-05-23', '0', '1', '11', '11', '11');
INSERT INTO `course_record` VALUES ('4932a502-74bc-413d-8666-ea74cd923896', null, null, null, null, '0', '2', '1', '2018-05-29', '0', '0', '11', '11', '11');
INSERT INTO `course_record` VALUES ('61efb155-4691-4448-ae51-5f62dffd07da', null, '2018-06-03 17:14:59', null, null, '0', '2', 'f614d5f7-c911-420d-984d-e8cd1c02cdb0', '2018-06-03', '1', '1', '100', '56', '100');
INSERT INTO `course_record` VALUES ('7b2c8afe-a22b-4a29-8925-253fc75c3271', null, null, null, null, '0', '0', '4', '2018-05-23', '0', '1', '11', '11', '11');
INSERT INTO `course_record` VALUES ('7ef0b55b-f8b6-48f5-abec-12dccd4853d7', null, null, null, null, '0', '0', '2', '2018-05-23', '0', '0', '11', '11', '11');
INSERT INTO `course_record` VALUES ('977a71ba-0047-4680-add9-e88cb7fc2a0d', null, '2018-06-04 10:12:51', null, null, '0', '1', '0027420a-287c-47db-bdcf-30a9a2e6f56a', '2018-06-04', '0', '0', null, null, null);
INSERT INTO `course_record` VALUES ('c42c1e2c-bfbd-4ad0-a9a7-b207d9c18a97', null, '2018-06-04 10:14:48', null, null, '0', '1', '1', '2018-06-04', '0', '0', null, null, null);
INSERT INTO `course_record` VALUES ('dfcb639b-c95d-4cfb-a73d-a6b28e6c1363', null, '2018-06-01 14:42:44', null, null, '0', '1', '2', '2018-06-01', '0', '0', '11', '11', '11');
INSERT INTO `course_record` VALUES ('e188527c-e52e-4ca0-b613-a1514bfb204f', null, null, null, null, '0', '0', '3', '2018-05-23', '0', '0', '11', '11', '11');
INSERT INTO `course_record` VALUES ('e90662a3-c6ca-4a5c-99fb-f9478693ca75', null, null, null, null, '0', '1', '2', '2018-05-29', '0', '0', '11', '11', '11');
INSERT INTO `course_record` VALUES ('eef8ffa7-89a1-43c6-be46-d02130e28619', null, null, null, null, '0', '1', '4', '2018-05-29', '0', '0', '11', '11', '11');

-- ----------------------------
-- Table structure for department
-- ----------------------------
DROP TABLE IF EXISTS `department`;
CREATE TABLE `department` (
  `id` varchar(36) NOT NULL,
  `createBy` varchar(255) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `updateBy` varchar(255) DEFAULT NULL,
  `updateDate` datetime DEFAULT NULL,
  `version` int(11) NOT NULL,
  `departmentName` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of department
-- ----------------------------
INSERT INTO `department` VALUES ('1', null, null, null, null, '0', '信息工程学院');
INSERT INTO `department` VALUES ('2', null, null, null, null, '0', '机电');

-- ----------------------------
-- Table structure for major_dic
-- ----------------------------
DROP TABLE IF EXISTS `major_dic`;
CREATE TABLE `major_dic` (
  `id` varchar(36) NOT NULL,
  `createBy` varchar(255) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `updateBy` varchar(255) DEFAULT NULL,
  `updateDate` datetime DEFAULT NULL,
  `version` int(11) NOT NULL,
  `majorName` varchar(60) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of major_dic
-- ----------------------------
INSERT INTO `major_dic` VALUES ('006993e2-1ae8-4bd0-bcb0-2bf7da3ece2e', null, '2018-05-24 21:09:38', null, null, '0', '化学工程与工艺');
INSERT INTO `major_dic` VALUES ('03617dde-3777-4df8-96f5-762804fe2aac', null, '2018-05-24 21:09:38', null, null, '0', '视觉传达设计');
INSERT INTO `major_dic` VALUES ('0a7492b1-cb0f-431c-bcfe-feafd40c4505', null, '2018-05-24 21:09:38', null, null, '0', '物理学');
INSERT INTO `major_dic` VALUES ('0abfcf00-91ff-43ca-bf19-3cb80c7ed7fc', null, '2018-05-24 21:09:38', null, null, '0', '英语');
INSERT INTO `major_dic` VALUES ('11a912a7-c362-4068-8d1d-6299b1f60cf9', null, '2018-05-24 21:09:38', null, null, '0', '计算机科学与技术');
INSERT INTO `major_dic` VALUES ('1c104bf6-3231-4ed4-bda2-d30eb044c329', null, '2018-05-24 21:09:27', null, null, '0', '金融工程');
INSERT INTO `major_dic` VALUES ('1e4df0e1-dc53-475f-9167-74dca6bb9bea', null, '2018-05-24 21:09:38', null, null, '0', '动画');
INSERT INTO `major_dic` VALUES ('1e9fded0-507c-44a2-9b80-578f5e65836c', null, '2018-05-24 21:09:38', null, null, '0', '应用化学');
INSERT INTO `major_dic` VALUES ('2955657a-c600-4dad-8179-b762cbf38922', null, '2018-05-24 21:09:38', null, null, '0', '公共事业管理');
INSERT INTO `major_dic` VALUES ('2bce76a7-eeca-4ab6-9729-e27ef3ccd5c0', null, '2018-05-24 21:09:38', null, null, '0', '旅游管理');
INSERT INTO `major_dic` VALUES ('3f06bbb5-4aa2-4b55-a471-93b72976a720', null, '2018-05-24 21:09:37', null, null, '0', '教育技术学');
INSERT INTO `major_dic` VALUES ('4ff8b05d-8ebe-4c35-a27e-b063cb4d94aa', null, '2018-05-24 21:09:38', null, null, '0', '无机非金属材料工程');
INSERT INTO `major_dic` VALUES ('53dd69f3-2b61-4956-9da7-f848412451a4', null, '2018-05-24 21:09:37', null, null, '0', '学前教育');
INSERT INTO `major_dic` VALUES ('5d97bd9b-f5dd-4cb6-a5fe-150b902f448e', null, '2018-05-24 21:09:26', null, null, '0', '软件工程');
INSERT INTO `major_dic` VALUES ('5f16431c-cc32-45ec-b51f-b267de24372d', null, '2018-05-24 21:09:38', null, null, '0', '环境设计');
INSERT INTO `major_dic` VALUES ('601d2f5e-0956-4536-98b9-130e1e999f7f', null, '2018-05-24 21:09:38', null, null, '0', '统计学');
INSERT INTO `major_dic` VALUES ('641a1277-df86-434e-8144-3d15f6f3abc5', null, '2018-05-24 21:09:38', null, null, '0', '商务英语');
INSERT INTO `major_dic` VALUES ('66f2c513-59d0-4be0-959e-5042a4981bd6', null, '2018-05-24 21:09:38', null, null, '0', '机械设计制造及其自动化');
INSERT INTO `major_dic` VALUES ('7ee67157-3d48-4933-88cf-2999d6764dce', null, '2018-05-24 21:09:38', null, null, '0', '酒店管理');
INSERT INTO `major_dic` VALUES ('814eb057-ddab-4bb4-a451-70a755c3ac7c', null, '2018-05-24 21:09:37', null, null, '0', '汉语言文学');
INSERT INTO `major_dic` VALUES ('857ee61a-b8a0-4571-bfe7-065f69bde3e3', null, '2018-05-24 21:09:38', null, null, '0', '网络工程');
INSERT INTO `major_dic` VALUES ('9e29675e-3c9b-4d36-a1a0-41182b1d15b4', null, '2018-05-24 21:09:38', null, null, '0', '电子科学与技术');
INSERT INTO `major_dic` VALUES ('a60b49d9-8e31-4a94-8235-924e835f0869', null, '2018-05-24 21:09:38', null, null, '0', '广告学');
INSERT INTO `major_dic` VALUES ('a87b365c-f535-4078-b429-c5a9bdcccfc8', null, '2018-05-24 21:09:38', null, null, '0', '电子信息工程');
INSERT INTO `major_dic` VALUES ('b683c9ec-b6ef-4b4c-a1cd-c0fbb1a0e128', null, '2018-05-24 21:09:37', null, null, '0', '体育教育');
INSERT INTO `major_dic` VALUES ('be195c81-3280-41fd-b6e9-f1a549bd5eca', null, '2018-05-24 21:09:38', null, null, '0', '生物工程');
INSERT INTO `major_dic` VALUES ('bffb6f18-a8a7-419f-9cd2-4f91153dfbaf', null, '2018-05-24 21:09:38', null, null, '0', '电子商务');
INSERT INTO `major_dic` VALUES ('c0245769-bde4-4ea0-8f26-e314bb97953b', null, '2018-05-24 21:09:38', null, null, '0', '电气工程及其自动化');
INSERT INTO `major_dic` VALUES ('c75c5bf4-f00f-46d5-b407-d74bc8956be9', null, '2018-05-24 21:09:38', null, null, '0', '数学与应用数学');
INSERT INTO `major_dic` VALUES ('cf33500c-41cf-48c4-bd56-1fbda393bb00', null, '2018-05-24 21:09:38', null, null, '0', '市场营销');
INSERT INTO `major_dic` VALUES ('dac17a34-1ca0-4c54-be3f-0131c9db5465', null, '2018-05-24 21:09:37', null, null, '0', '法学');
INSERT INTO `major_dic` VALUES ('dae494dd-5ecc-47e2-bc2d-0e7642db6a56', null, '2018-05-24 21:09:38', null, null, '0', '历史学');
INSERT INTO `major_dic` VALUES ('db550b52-2751-4b87-9d41-c6780afb1f3a', null, '2018-05-24 21:09:38', null, null, '0', '美术学');
INSERT INTO `major_dic` VALUES ('e8fce103-9033-45a3-91ee-db840ccc386d', null, '2018-05-24 21:09:37', null, null, '0', '国际经济与贸易');
INSERT INTO `major_dic` VALUES ('ef50d6d5-1ab1-4b8f-9d06-ef26a5aec4a0', null, '2018-05-24 21:09:38', null, null, '0', '信息与计算科学');
INSERT INTO `major_dic` VALUES ('f2637c76-b015-4473-beab-1053f7c0f307', null, '2018-05-24 21:09:38', null, null, '0', '财务管理');
INSERT INTO `major_dic` VALUES ('fe323532-a40a-4d59-a3e8-83e3e7927a7c', null, '2018-05-24 21:09:38', null, null, '0', '微电子科学与工程');
INSERT INTO `major_dic` VALUES ('ffebbcc3-94ce-44ff-b2d7-47e60db7108c', null, '2018-05-24 21:09:38', null, null, '0', '应用心理学');

-- ----------------------------
-- Table structure for menu
-- ----------------------------
DROP TABLE IF EXISTS `menu`;
CREATE TABLE `menu` (
  `id` varchar(36) NOT NULL DEFAULT '',
  `createBy` varchar(255) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `updateBy` varchar(255) DEFAULT NULL,
  `updateDate` datetime DEFAULT NULL,
  `version` int(11) NOT NULL,
  `enable` char(1) NOT NULL,
  `menuKey` varchar(255) NOT NULL,
  `menuName` varchar(255) NOT NULL,
  `menuUrl` varchar(255) NOT NULL,
  `sequence` int(11) NOT NULL,
  `parent_id` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_98a0njtu1xt51ul6g3v0ptj8b` (`parent_id`),
  CONSTRAINT `FK_98a0njtu1xt51ul6g3v0ptj8b` FOREIGN KEY (`parent_id`) REFERENCES `menu` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of menu
-- ----------------------------
INSERT INTO `menu` VALUES ('1', null, null, null, null, '0', 'Y', 'ROLE_ADMIN', '用户管理', '#', '1', null);
INSERT INTO `menu` VALUES ('2', null, null, null, null, '0', 'Y', 'ROLE_ADMIN', '审核管理', '#', '3', null);
INSERT INTO `menu` VALUES ('3', null, null, null, null, '0', 'Y', 'ROLE_ADMIN', '课表管理', '#', '2', null);
INSERT INTO `menu` VALUES ('4', null, null, null, null, '0', 'Y', 'ROLE_ADMIN', '任务管理', '#', '4', null);
INSERT INTO `menu` VALUES ('5', null, null, null, null, '0', 'Y', 'ROLE_ADMIN', '分析管理', '#', '5', null);
INSERT INTO `menu` VALUES ('6', null, null, null, null, '0', 'Y', 'ROLE_SUPERVISOR', '听课管理', '#', '6', null);
INSERT INTO `menu` VALUES ('7', null, null, null, null, '0', 'Y', 'ROLE_SUPERVISOR', '听课记录', '#', '7', null);
INSERT INTO `menu` VALUES ('8', null, null, null, null, '0', 'Y', 'ROLE_TEACHER', '听课记录', '#', '8', null);
INSERT INTO `menu` VALUES ('9', null, null, null, null, '0', 'Y', 'ROLE_ADMIN', '用户列表', '/user/userManage', '9', '1');
INSERT INTO `menu` VALUES ('10', null, null, null, null, '0', 'Y', 'ROLE_ADMIN', '添加用户', '/user/addUserView', '10', '1');
INSERT INTO `menu` VALUES ('11', null, null, null, null, '0', 'Y', 'ROLE_ADMIN', '课程列表', '/course/courseListPage', '11', '3');
INSERT INTO `menu` VALUES ('12', null, null, null, null, '0', 'Y', 'ROLE_ADMIN', '任务列表', '/task/taskManager', '12', '4');
INSERT INTO `menu` VALUES ('13', null, null, null, null, '0', 'Y', 'ROLE_ADMIN', '未审核', '/check/uncheckedPage', '13', '2');
INSERT INTO `menu` VALUES ('14', null, null, null, null, '0', 'Y', 'ROLE_ADMIN', '已审核', '/check/checkedPage', '14', '2');
INSERT INTO `menu` VALUES ('15', null, null, null, null, '0', 'Y', 'ROLE_ADMIN', '在线分析', '/analysis/dataAnalysis', '15', '5');
INSERT INTO `menu` VALUES ('16', null, null, null, null, '0', 'Y', 'ROLE_TEACHER', '听课记录', '/courseRecord/courseRecordList', '16', '8');
INSERT INTO `menu` VALUES ('17', null, null, null, null, '0', 'Y', 'ROLE_ADMIN', '添加课程', '/course/addCoursePage', '17', '3');
INSERT INTO `menu` VALUES ('18', null, null, null, null, '0', 'Y', 'ROLE_SUPERVISOR', '选择课程', '/courseComment/selectCourse', '18', '6');
INSERT INTO `menu` VALUES ('19', null, null, null, null, '0', 'Y', 'ROLE_SUPERVISOR', '填写记录', '/courseComment/writeCourseComment', '19', '6');
INSERT INTO `menu` VALUES ('20', null, null, null, null, '0', 'Y', 'ROLE_SUPERVISOR', '已审核', '/courseComment/commentChecked', '22', '7');
INSERT INTO `menu` VALUES ('21', null, null, null, null, '0', 'Y', 'ROLE_SUPERVISOR', '待审核', '/courseComment/commentChecking', '20', '7');
INSERT INTO `menu` VALUES ('22', null, null, null, null, '0', 'Y', 'ROLE_SUPERVISOR', '未通过', '/courseComment/commentUnThrough', '21', '7');

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `id` varchar(36) NOT NULL,
  `createBy` varchar(255) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `updateBy` varchar(255) DEFAULT NULL,
  `updateDate` datetime DEFAULT NULL,
  `version` int(11) NOT NULL,
  `code` varchar(255) NOT NULL,
  `enable` char(1) NOT NULL,
  `remark` longtext,
  `roleName` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES ('1', null, null, null, null, '0', 'ROLE_ADMIN', 'Y', null, '管理员');
INSERT INTO `role` VALUES ('2', null, null, null, null, '0', 'ROLE_SUPERVISOR', 'Y', null, '督导员');
INSERT INTO `role` VALUES ('3', null, null, null, null, '0', 'ROLE_TEACHER', 'Y', null, '一般教师');

-- ----------------------------
-- Table structure for role_menu
-- ----------------------------
DROP TABLE IF EXISTS `role_menu`;
CREATE TABLE `role_menu` (
  `menu_id` varchar(36) NOT NULL,
  `role_id` varchar(36) NOT NULL,
  PRIMARY KEY (`role_id`,`menu_id`),
  KEY `FK_7rxvs31cvfu9c37qxnag4ris8` (`menu_id`),
  CONSTRAINT `FK_7rxvs31cvfu9c37qxnag4ris8` FOREIGN KEY (`menu_id`) REFERENCES `menu` (`id`),
  CONSTRAINT `FK_r6o1lqlask5jahtkqv3w8sbeh` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of role_menu
-- ----------------------------
INSERT INTO `role_menu` VALUES ('1', '1');
INSERT INTO `role_menu` VALUES ('10', '1');
INSERT INTO `role_menu` VALUES ('11', '1');
INSERT INTO `role_menu` VALUES ('12', '1');
INSERT INTO `role_menu` VALUES ('13', '1');
INSERT INTO `role_menu` VALUES ('14', '1');
INSERT INTO `role_menu` VALUES ('15', '1');
INSERT INTO `role_menu` VALUES ('16', '3');
INSERT INTO `role_menu` VALUES ('17', '1');
INSERT INTO `role_menu` VALUES ('18', '2');
INSERT INTO `role_menu` VALUES ('19', '2');
INSERT INTO `role_menu` VALUES ('2', '1');
INSERT INTO `role_menu` VALUES ('20', '2');
INSERT INTO `role_menu` VALUES ('21', '2');
INSERT INTO `role_menu` VALUES ('22', '2');
INSERT INTO `role_menu` VALUES ('3', '1');
INSERT INTO `role_menu` VALUES ('4', '1');
INSERT INTO `role_menu` VALUES ('5', '1');
INSERT INTO `role_menu` VALUES ('6', '2');
INSERT INTO `role_menu` VALUES ('7', '2');
INSERT INTO `role_menu` VALUES ('8', '3');
INSERT INTO `role_menu` VALUES ('9', '1');

-- ----------------------------
-- Table structure for semester
-- ----------------------------
DROP TABLE IF EXISTS `semester`;
CREATE TABLE `semester` (
  `id` varchar(36) NOT NULL,
  `createBy` varchar(255) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `updateBy` varchar(255) DEFAULT NULL,
  `updateDate` datetime DEFAULT NULL,
  `version` int(11) NOT NULL,
  `endYear` varchar(50) DEFAULT NULL,
  `semesterNum` int(11) NOT NULL,
  `startYear` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of semester
-- ----------------------------
INSERT INTO `semester` VALUES ('1', null, null, null, null, '0', '2018', '2', '2017');
INSERT INTO `semester` VALUES ('2', null, null, null, null, '0', '2018', '1', '2017');
INSERT INTO `semester` VALUES ('975b6e15-b85f-4d56-8883-3f372fcbf546', 'admin', '2018-05-24 15:39:19', null, null, '1', '2019', '2', '2018');

-- ----------------------------
-- Table structure for task
-- ----------------------------
DROP TABLE IF EXISTS `task`;
CREATE TABLE `task` (
  `id` varchar(36) NOT NULL,
  `createBy` varchar(255) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `updateBy` varchar(255) DEFAULT NULL,
  `updateDate` datetime DEFAULT NULL,
  `version` int(11) NOT NULL,
  `courseTimes` int(11) NOT NULL,
  `finishTimes` int(11) NOT NULL,
  `semster_id` varchar(36) DEFAULT NULL,
  `user_id` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_72iili46nes8nemfusmvjd5et` (`semster_id`),
  KEY `FK_4fmjedju7b35tb5cr71n3ntb0` (`user_id`),
  CONSTRAINT `FK_4fmjedju7b35tb5cr71n3ntb0` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  CONSTRAINT `FK_72iili46nes8nemfusmvjd5et` FOREIGN KEY (`semster_id`) REFERENCES `semester` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of task
-- ----------------------------
INSERT INTO `task` VALUES ('8f48a930-2b64-44a3-9e17-9bd3e5e43ef7', 'test1', '2018-05-21 22:43:57', null, null, '1', '12', '1', '1', '2');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` varchar(36) NOT NULL,
  `createBy` varchar(255) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `updateBy` varchar(255) DEFAULT NULL,
  `updateDate` datetime DEFAULT NULL,
  `version` int(11) NOT NULL,
  `academicTitle` int(11) NOT NULL,
  `birthday` date DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `genner` int(11) NOT NULL,
  `passWord` varchar(255) NOT NULL,
  `phoneNumber` varchar(255) DEFAULT NULL,
  `qq` varchar(255) DEFAULT NULL,
  `userName` varchar(255) NOT NULL,
  `department_id` varchar(36) DEFAULT NULL,
  `remark` varchar(500) DEFAULT NULL,
  `isDelete` int(11) NOT NULL,
  `nickName` varchar(255) DEFAULT NULL,
  `userCode` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_tb5gq05t7xhddh2idsdy8ddd` (`department_id`),
  CONSTRAINT `FK_tb5gq05t7xhddh2idsdy8ddd` FOREIGN KEY (`department_id`) REFERENCES `department` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('02b7e15c-a0ce-4f48-bd73-9d0a24eb2a8d', '1', '2018-04-24 22:07:28', '1', '2018-04-24 22:07:28', '0', '0', '2018-04-24', '123', '1', '202cb962ac59075b964b07152d234b70', '123', '123', '1234', '1', '', '0', '小马', '123');
INSERT INTO `user` VALUES ('1', null, null, null, null, '0', '0', null, '1446869554@qq.com', '0', '202cb962ac59075b964b07152d234b70', '18969800129', null, 'admin', '1', null, '0', '小马', '1234');
INSERT INTO `user` VALUES ('10', null, null, null, null, '0', '0', null, null, '0', '202cb962ac59075b964b07152d234b70', '12345679', null, '测试3', '1', null, '0', '小马', '321');
INSERT INTO `user` VALUES ('11', null, null, null, null, '0', '0', null, null, '0', '202cb962ac59075b964b07152d234b70', '12345679', null, '测试4', '1', null, '0', '小马', '22');
INSERT INTO `user` VALUES ('18cfe477-6417-4ccb-87c5-5d80d110430c', '1', '2018-06-02 20:28:14', '1', '2018-06-03 16:38:32', '0', '1', '2018-06-13', '1446869554@qq.com', '1', '81dc9bdb52d04dc20036dbd8313ed055', '18969800129', '18969800129', '15034083', '1', '', '0', '马仁壮', '15034083');
INSERT INTO `user` VALUES ('2', null, null, null, null, '0', '0', null, '1446869554@qq.com', '0', '202cb962ac59075b964b07152d234b70', '18969800129', null, 'test1', '1', null, '0', '小马', '11');
INSERT INTO `user` VALUES ('3', null, null, null, null, '0', '0', null, '1446869554@qq.com', '0', '202cb962ac59075b964b07152d234b70', '18969800129', null, 'test2', '1', null, '0', '小马', '44');
INSERT INTO `user` VALUES ('4', null, null, null, null, '0', '0', null, null, '0', '202cb962ac59075b964b07152d234b70', '12345679', null, 'test3', '1', null, '0', '小马', '55');
INSERT INTO `user` VALUES ('5', null, null, null, null, '0', '0', null, null, '0', '202cb962ac59075b964b07152d234b70', '12345679', null, 'test4', '1', null, '0', '小马', '6');
INSERT INTO `user` VALUES ('55ec3b54-034f-4dc7-ad85-ab22e7b5204c', '1', '2018-04-18 10:55:50', '1', '2018-04-18 10:56:44', '0', '1', null, '123', '1', '202cb962ac59075b964b07152d234b70', '123', '123', '小马', '1', '', '0', '小马', '77');
INSERT INTO `user` VALUES ('6', null, null, null, null, '0', '0', null, null, '0', '202cb962ac59075b964b07152d234b70', '12345679', null, '王五', '1', null, '0', '小马', '78');
INSERT INTO `user` VALUES ('671f5f10-dbb4-48e8-befc-bb1062039e4d', '1', '2018-06-02 20:25:05', '1', '2018-06-02 20:33:54', '0', '1', '2018-05-27', '1446869554@qq.com', '1', '81dc9bdb52d04dc20036dbd8313ed055', '18969800129', '18969800129', '15034083', '1', '123', '1', '马仁壮', '150340831');
INSERT INTO `user` VALUES ('7', null, null, null, null, '0', '0', null, null, '0', '202cb962ac59075b964b07152d234b70', '12345679', null, '赵六', '1', null, '1', '小马', '654');
INSERT INTO `user` VALUES ('8', null, null, null, null, '0', '0', null, null, '0', '202cb962ac59075b964b07152d234b70', '12345679', null, '测试1', '1', null, '0', '小马', '346');
INSERT INTO `user` VALUES ('9', null, null, null, null, '0', '1', null, null, '0', '202cb962ac59075b964b07152d234b70', '12345679', null, '测试2', '1', null, '0', '小马', '267');
INSERT INTO `user` VALUES ('92605ad1-cb78-4ec1-8dcf-b7ee278db959', null, null, null, null, '0', '1', null, '123', '1', '202cb962ac59075b964b07152d234b70', '123', '123', '1234', '2', '', '1', '小马', '53');
INSERT INTO `user` VALUES ('95be8daf-3d08-4fc4-8692-4bad5cefb750', '1', '2018-04-24 21:36:24', '1', '2018-04-24 21:36:24', '0', '1', null, '123', '0', 'e10adc3949ba59abbe56e057f20f883e', '123', '123', '123', '1', '', '0', '小马', '88');

-- ----------------------------
-- Table structure for user_role
-- ----------------------------
DROP TABLE IF EXISTS `user_role`;
CREATE TABLE `user_role` (
  `user_id` varchar(36) NOT NULL,
  `role_id` varchar(36) NOT NULL,
  KEY `FK_it77eq964jhfqtu54081ebtio` (`role_id`),
  KEY `FK_apcc8lxk2xnug8377fatvbn04` (`user_id`),
  CONSTRAINT `FK_apcc8lxk2xnug8377fatvbn04` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  CONSTRAINT `FK_it77eq964jhfqtu54081ebtio` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_role
-- ----------------------------
INSERT INTO `user_role` VALUES ('1', '1');
INSERT INTO `user_role` VALUES ('2', '2');
INSERT INTO `user_role` VALUES ('3', '2');
INSERT INTO `user_role` VALUES ('4', '2');
INSERT INTO `user_role` VALUES ('5', '2');
INSERT INTO `user_role` VALUES ('6', '3');
INSERT INTO `user_role` VALUES ('7', '3');
INSERT INTO `user_role` VALUES ('8', '3');
INSERT INTO `user_role` VALUES ('9', '3');
INSERT INTO `user_role` VALUES ('10', '3');
INSERT INTO `user_role` VALUES ('11', '3');
INSERT INTO `user_role` VALUES ('92605ad1-cb78-4ec1-8dcf-b7ee278db959', '2');
INSERT INTO `user_role` VALUES ('55ec3b54-034f-4dc7-ad85-ab22e7b5204c', '2');
INSERT INTO `user_role` VALUES ('95be8daf-3d08-4fc4-8692-4bad5cefb750', '1');
INSERT INTO `user_role` VALUES ('02b7e15c-a0ce-4f48-bd73-9d0a24eb2a8d', '1');
INSERT INTO `user_role` VALUES ('671f5f10-dbb4-48e8-befc-bb1062039e4d', '2');
INSERT INTO `user_role` VALUES ('18cfe477-6417-4ccb-87c5-5d80d110430c', '2');
