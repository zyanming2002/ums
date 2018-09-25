SET SESSION FOREIGN_KEY_CHECKS=0;

/* Drop Indexes */

DROP INDEX sys_user_company_id ON sys_user;
DROP INDEX sys_user_del_flag ON sys_user;
DROP INDEX sys_user_login_name ON sys_user;
DROP INDEX sys_user_office_id ON sys_user;
DROP INDEX sys_user_update_date ON sys_user;



/* Drop Tables */

DROP TABLE IF EXISTS sys_user;
DROP TABLE IF EXISTS test_student;




/* Create Tables */

CREATE TABLE sys_user
(
	-- 编号
	id varchar(64) BINARY NOT NULL COMMENT '编号',
	-- 归属公司
	company_id varchar(64) BINARY NOT NULL COMMENT '归属公司',
	-- 归属部门
	office_id varchar(64) BINARY NOT NULL COMMENT '归属部门',
	-- 登录名
	login_name varchar(100) BINARY NOT NULL COMMENT '登录名',
	-- 密码
	password varchar(100) BINARY NOT NULL COMMENT '密码',
	-- 工号
	no varchar(100) BINARY COMMENT '工号',
	-- 姓名
	name varchar(100) BINARY NOT NULL COMMENT '姓名',
	-- 邮箱
	email varchar(200) BINARY COMMENT '邮箱',
	-- 电话
	phone varchar(200) BINARY COMMENT '电话',
	-- 手机
	mobile varchar(200) BINARY COMMENT '手机',
	-- 用户类型
	user_type char BINARY COMMENT '用户类型',
	-- 用户头像
	photo varchar(1000) BINARY COMMENT '用户头像',
	-- 最后登陆IP
	login_ip varchar(100) BINARY COMMENT '最后登陆IP',
	-- 最后登陆时间
	login_date datetime COMMENT '最后登陆时间',
	-- 是否可登录
	login_flag varchar(64) BINARY COMMENT '是否可登录',
	-- 创建者
	create_by varchar(64) BINARY NOT NULL COMMENT '创建者',
	-- 创建时间
	create_date datetime NOT NULL COMMENT '创建时间',
	-- 更新者
	update_by varchar(64) BINARY NOT NULL COMMENT '更新者',
	-- 更新时间
	update_date datetime NOT NULL COMMENT '更新时间',
	-- 备注信息
	remarks varchar(255) BINARY COMMENT '备注信息',
	-- 删除标记
	del_flag char BINARY DEFAULT '0' NOT NULL COMMENT '删除标记',
	PRIMARY KEY (id)
) DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;


CREATE TABLE test_student
(
	-- ID
	id varchar(64) NOT NULL COMMENT 'ID',
	-- 学号
	cardno varchar(10) COMMENT '学号',
	-- 姓名
	name varchar(10) COMMENT '姓名',
	PRIMARY KEY (id)
) DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;



/* Create Indexes */

CREATE INDEX sys_user_company_id USING BTREE ON sys_user (company_id ASC);
CREATE INDEX sys_user_del_flag USING BTREE ON sys_user (del_flag ASC);
CREATE INDEX sys_user_login_name USING BTREE ON sys_user (login_name ASC);
CREATE INDEX sys_user_office_id USING BTREE ON sys_user (office_id ASC);
CREATE INDEX sys_user_update_date USING BTREE ON sys_user (update_date ASC);



