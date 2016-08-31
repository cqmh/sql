--文件服务器存储路径
\\192.168.4.64\scan$\bjxx

--源数据库
doc@192.168.0.67/orcl

--备份数据库
doc@192.168.0.167/orcl

--配置环境变量
set ORACLE_HOME=J:\oracle\product\10.2.0\db_1

--按ETDM导出笔迹数据 FROM ORCL67
SELECT 'J:\oracle\product\10.2.0\db_1\BIN\EXP.EXE doc/doc@192.168.0.67/orcl FILE=BJXX/BJXX_'||ETDM||'.DMP TABLES=(T_KJ_HGKCBJXX) QUERY=''WHERE ETDM='||ETDM||''' >> BJXX/BJXX.LOG'
FROM (select etdm, count(1) CNT from T_KJ_HGKCBJXX group by etdm order by to_number(etdm))

--按ETDM导入笔迹数据 TO ORCL167
SELECT 'J:\oracle\product\10.2.0\db_1\BIN\IMP.EXE doc/doc@192.168.0.167/orcl FILE=BJXX/BJXX_'||ETDM||'.DMP TABLES=(T_KJ_HGKCBJXX) IGNORE=Y >> BJXX/BJXX-IMP.LOG'
FROM (select etdm, count(1) CNT from T_KJ_HGKCBJXX group by etdm order by to_number(etdm))

--按年份导出照片数据 FROM ORCL67
SELECT 'J:\oracle\product\10.2.0\db_1\BIN\EXP.EXE doc/doc@192.168.0.67/orcl FILE=BJXX/PHOTO_'||TO_CHAR(YY, 'YYYY')||'.DMP TABLES=(T_PHOTO) QUERY=''WHERE TRUNC(UPDATETIME,''''YYYY'''')=TO_DATE('''''||TO_CHAR(YY,'YYYY-MM-DD')||''''', ''''YYYY-MM-DD'''')'' >> PHOTO.LOG'
FROM (SELECT TRUNC(UPDATETIME, 'YYYY') YY, COUNT(1) CNT FROM T_PHOTO WHERE UPDATETIME IS NOT NULL GROUP BY TRUNC(UPDATETIME, 'YYYY') ORDER BY 1)

J:\oracle\product\10.2.0\db_1\BIN\EXP.EXE doc/doc@192.168.0.67/orcl FILE=BJXX/PHOTO_NULL.DMP TABLES=(T_PHOTO) QUERY='WHERE UPDATETIME IS NULL' >> PHOTO.LOG

--按年份导入照片数据 TO ORCL167
SELECT 'J:\oracle\product\10.2.0\db_1\BIN\IMP.EXE doc/doc@192.168.0.167/orcl FILE=BJXX/PHOTO_'||TO_CHAR(YY, 'YYYY')||'.DMP TABLES=(T_PHOTO) IGNORE=Y >> PHOTO.LOG'
FROM (SELECT TRUNC(UPDATETIME, 'YYYY') YY, COUNT(1) CNT FROM T_PHOTO WHERE UPDATETIME IS NOT NULL GROUP BY TRUNC(UPDATETIME, 'YYYY') ORDER BY 1)

J:\oracle\product\10.2.0\db_1\BIN\IMP.EXE doc/doc@192.168.0.167/orcl FILE=BJXX/PHOTO_NULL.DMP TABLES=(T_PHOTO) IGNORE=Y >> PHOTO.LOG


