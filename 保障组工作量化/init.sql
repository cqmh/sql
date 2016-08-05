--任务表
create table TMP_RW
(
  rwbh VARCHAR2(5),
  rwmc VARCHAR2(100),
  gzlb VARCHAR2(20),
  zyx  VARCHAR2(10),
  sc   NUMBER(10,6),
  scxs NUMBER(10,6),
  zlqz NUMBER(10,6),
  fzr  VARCHAR2(20)
);

--任务明细表
create table TMP_GRINFO
(
  grbh VARCHAR2(5),
  xm   VARCHAR2(20),
  fwlb VARCHAR2(5),
  jb   NUMBER(2),
  yjf  NUMBER
);

--个人情况表
create table TMP_GRINFO
(
  grbh VARCHAR2(5),
  xm   VARCHAR2(20),
  fwlb VARCHAR2(5),
  jb   NUMBER(2),
  yjf  NUMBER
);

--工作类别系数表
create table TMP_GZLB
(
  gzlb VARCHAR2(20),
  val  NUMBER(10,6)
);

--重要性系数表
create table TMP_ZYX
(
  zyx VARCHAR2(10),
  val NUMBER(10,6)
);
