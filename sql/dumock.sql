CREATE DATABASE DUMOCK;

##系统信息表
create table DUMOCK_D_SYSTEM(
  ID bigint(20) not null AUTO_INCREMENT PRIMARY KEY COMMENT '主键，id',
  NAME VARCHAR(20) NOT NULL COMMENT '名称',
  DESCRIPTION VARCHAR(400) COMMENT '描述',
  CREATE_TIME DATETIME NOT NULL COMMENT '修改时间',
  UPDATE_TIME DATETIME NOT NULL COMMENT '修改时间'
);

##接口相关表
###facade信息表
create table DUMOCK_D_FACADE(
  ID bigint(20) not null AUTO_INCREMENT PRIMARY KEY COMMENT '主键，id',
  SYSTEM_ID bigint(20) not null COMMENT '系统ID，facade所属系统',
  NAME VARCHAR(100) NOT NULl COMMENT '名称',
  DESCRIPTION VARCHAR(400) COMMENT '描述',
  VERSION VARCHAR(100) NOT NULL COMMENT '版本号',
  CREATE_TIME DATETIME NOT NULL COMMENT '修改时间',
  UPDATE_TIME DATETIME NOT NULL COMMENT '修改时间'
);


###method信息表
CREATE TABLE DUMOCK_D_METHOD (
  ID bigint(20) not null AUTO_INCREMENT PRIMARY KEY COMMENT '主键，id',
  FACADE_ID bigint(20) not null COMMENT 'facadeId，对应所属facade',
  DESCRIPTION VARCHAR(400) COMMENT '描述',
  PARAM_TYPE TEXT COMMENT '请求参数类型',
  RETURN_TYPE TEXT COMMENT '返回类型',
  PARAM_JSON_DATA TEXT COMMENT '请求参数类型',
  RETURN_JSON_DATA TEXT COMMENT '返回参数数据',
  CREATE_TIME DATETIME NOT NULL COMMENT '修改时间',
  UPDATE_TIME DATETIME NOT NULL COMMENT '修改时间'
);

##方法控制表
CREATE TABLE DUMOCK_D_METHOD_CONTROLLER(
  ID bigint(20) not null AUTO_INCREMENT PRIMARY KEY COMMENT '主键，id',
  METHOD_ID bigint(20) not null COMMENT '方法ID',
  USER_NAME VARCHAR(100) not null COMMENT '用户名',
  IS_MOCK VARCHAR(10) NOT NULL COMMENT '是否MOCK',
  IS_TIME_OUT VARCHAR(10) NOT NULL COMMENT '是否超时',
  TIME_OUT_LENGTH INTEGER NOT NULL COMMENT '超时时间' DEFAULT 3000,
  CREATE_TIME DATETIME NOT NULL COMMENT '修改时间',
  UPDATE_TIME DATETIME NOT NULL COMMENT '修改时间'
);
