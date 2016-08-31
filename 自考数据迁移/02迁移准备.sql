--创建BLOB表空间
CREATE BIGFILE TABLESPACE BIGIMAGE
  DATAFILE 'BIGIMAGE.DBF' SIZE 100G AUTOEXTEND ON NEXT 1G;

--创建用户表空间
CREATE BIGFILE TABLESPACE ZKDATA
  DATAFILE 'ZKDATA.DBF' SIZE 100G AUTOEXTEND ON NEXT 1G;

--创建用户
CREATE USER DOC IDENTIFIED BY doc DEFAULT TABLESPACE ZKDATA;
GRANT DBA TO DOC;

--修改回滚段
ALTER DATABASE DATAFILE 'D:\APP\CQKSY_ADMIN\ORADATA\ORCL\UNDOTBS01.DBF' RESIZE 2G;

--修改临时表空间
ALTER DATABASE TEMPFILE 'D:\APP\CQKSY_ADMIN\ORADATA\ORCL\TEMP01.DBF' RESIZE 5G;
ALTER DATABASE TEMPFILE 'D:\APP\CQKSY_ADMIN\ORADATA\ORCL\TEMP01.DBF' AUTOEXTEND ON NEXT 100M MAXSIZE UNLIMITED;

--生成笔迹、照片数据表，并存储到BLOB表空间
-- Create table
create table T_KJ_HGKCBJXX
(
  zkzh     VARCHAR2(12) not null,
  etdm     VARCHAR2(32) not null,
  qxdm     VARCHAR2(32) not null,
  kcdm     VARCHAR2(32) not null,
  kddm     VARCHAR2(32),
  kcbh     VARCHAR2(32),
  kczw     VARCHAR2(32),
  cj       NUMBER,
  hgsj     DATE,
  bjimage  BLOB,
  bjstat   VARCHAR2(32),
  lastbj   VARCHAR2(32),
  pic_type VARCHAR2(32),
  id       VARCHAR2(32) not null,
  oldkcdm  VARCHAR2(32)
)
tablespace BIGIMAGE
-- Add comments to the columns 
-- Create/Recreate primary, unique and foreign key constraints 
alter table T_KJ_HGKCBJXX
  add primary key (ID)
  using index 
  tablespace BIGIMAGE
-- Create/Recreate indexes 
create index etdm on T_KJ_HGKCBJXX (ETDM)
  tablespace BIGIMAGE
create index kcdm on T_KJ_HGKCBJXX (KCDM)
  tablespace BIGIMAGE
create index zkzh on T_KJ_HGKCBJXX (ZKZH)
  tablespace BIGIMAGE

-- Create table
create table T_PHOTO
(
  zkzh       VARCHAR2(12) not null,
  photo      BLOB,
  czydm      VARCHAR2(255),
  updatetime DATE,
  qxdm       VARCHAR2(255)
)
tablespace BIGIMAGE

CREATE TABLE T_PHOTO (
  ZKZH VARCHAR2(12) NOT NULL ENABLE, 
  PHOTO BLOB, 
  CZYDM VARCHAR2(255), 
  UPDATETIME DATE, 
  QXDM VARCHAR2(255))  
  TABLESPACE BIGIMAGE 
  LOB (PHOTO) STORE AS  (
    TABLESPACE BIGIMAGE 
    ENABLE STORAGE IN ROW 
    CHUNK 8192 
    )

-- Create/Recreate primary, unique and foreign key constraints 
alter table T_PHOTO
  add primary key (ZKZH)
  using index 
  tablespace BIGIMAGE
