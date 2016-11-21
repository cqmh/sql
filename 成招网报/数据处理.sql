--delete from t_jtbmdwhd where qxdm='3126'
--delete from BM_HDSZ_ZY where qxdm='3126'

311302 1001
select * from t_threshold where id='3121'
update t_threshold set maxno=500 where id='3121'

select * from t_threshold where id='3113'
update t_threshold set maxno=1500 where id='3113'


select * from t_jtbmdwhd where qxdm='3113'
select * from BM_HDSZ_ZY where qxdm='3113' and lsh > '00998'

select * from bm_sfzh  where qxdm='3104' and cjyh like '0422%'
'0422'

select * from t_student_assist_info 

select * from bm_sfzh where bmd='310507' and sfzh not in (select sfzh from t_student_info) order by qxdm, bmd, sfzh

select * from t_student_info where sfzh not in (select sfzh from bm_sfzh)

select xm, sfzh from bm_sfzh where sfzh like '500239198707168%'

SELECT ASCII(substring('50010119941008152x', 18, 1))
50010119941008152x
select * from t_student_baseinfo where ASCII(substring(sfzh, 18, 1))=120

select * from t_student_baseinfo where sfzh='520221199106284087'

update t_student_baseinfo set sfzh=upper(sfzh) where sfzh in (select sfzh from t_student_baseinfo where ASCII(substring(sfzh, 18, 1))=120)
update t_student_assist_info set sfzh=upper(sfzh) where sfzh in (select sfzh from t_student_baseinfo where ASCII(substring(sfzh, 18, 1))=120)
update t_society_student_photo set sfzh=upper(sfzh) where sfzh in (select sfzh from t_student_baseinfo where ASCII(substring(sfzh, 18, 1))=120)
update t_zyk_temp set sfzh=upper(sfzh) where sfzh in (select sfzh from t_student_baseinfo where ASCII(substring(sfzh, 18, 1))=120)
update t_PayFeeOrder set idCardNumber=upper(idCardNumber) where idCardNumber in (select sfzh from t_student_baseinfo where ASCII(substring(sfzh, 18, 1))=120)

select * from t_student_baseinfo where sfzh like '500230199509034384%'
select * from t_student_assist_info where sfzh like '500230199509034384%'
update t_student_baseinfo set sfzh='50022519840118473X' where sfzh = '50022519840118473x'
update t_student_assist_info set sfzh='50022519840118473X' where sfzh = '50022519840118473x'
update t_society_student_photo set sfzh='50022519840118473X' where sfzh = '50022519840118473x'
update t_zyk_temp set sfzh='50022519840118473X' where sfzh = '50022519840118473x'
update t_PayFeeOrder set idCardNumber='50022519840118473X' where idCardNumber = '50022519840118473x'


select * from t_student_baseinfo where sfzh like '500233199808080064%'
select xm, sfzh from bm_sfzh where sfzh like '500233199808080064%' and sfzh not in (select sfzh from t_student_info)

delete from bm_sfzh where sfzh like '511324199519031918%'
delete from bm_sfzh where sfzh like '500233199808080064%'
delete from bm_sfzh where sfzh like '500233199911285682%'
delete from bm_sfzh where sfzh like '500242199706207518%'
delete from bm_sfzh where sfzh like '500230199906186218%'
delete from bm_sfzh where sfzh like '500233199911285682%'
delete from bm_sfzh where sfzh like '511323199512150217%'
delete from bm_sfzh where sfzh like '500101199712158254%'
delete from bm_sfzh where sfzh like '522426199611100853%'
delete from bm_sfzh where sfzh like '510923199708046915%'
delete from bm_sfzh where sfzh like '500109200003092324%'
delete from bm_sfzh where sfzh like '522423199706286014%'
delete from bm_sfzh where sfzh like '500384199809022830%'
delete from bm_sfzh where sfzh like '522224199606155071%'
delete from bm_sfzh where sfzh like '510502200004018715%'
update t_student_baseinfo set yxdz='1614248166@qq.com' where sfzh='500230199509034384' and yxdz='164248166@qq.com'
delete from bm_sfzh where sfzh like '500243199904050669%'
delete from bm_sfzh where sfzh like '500227199905227315%'
delete from bm_sfzh where sfzh like '500109199808287561%'
delete from bm_sfzh where sfzh like '500109199907088621%'
delete from bm_sfzh where sfzh like '500226199903080026%'
delete from bm_sfzh where sfzh like '500230199808304401%'
delete from bm_sfzh where sfzh like '500228199506303735%'
delete from bm_sfzh where sfzh like '500102199307047098%'
delete from bm_sfzh where sfzh like '51302119940917255X%'
delete from bm_sfzh where sfzh like '500239198707168%'
delete from bm_sfzh where sfzh like '51222219731222%'
delete from bm_sfzh where sfzh like '50038419990906005X%'
delete from bm_sfzh where sfzh like '512301197208277%'
delete from bm_sfzh where sfzh like '50010219990302%'
delete from bm_sfzh where sfzh like '510230196604174%'
delete from bm_sfzh where sfzh like '511203197910102%'
delete from bm_sfzh where sfzh like '500107198806226%'
delete from bm_sfzh where sfzh like '500228199001221%'
delete from bm_sfzh where sfzh like '50038419860417%'
delete from bm_sfzh where sfzh like '513721200109151%'
delete from bm_sfzh where sfzh like '500235200104131%'
delete from bm_sfzh where sfzh like '51021719540729%'
delete from bm_sfzh where sfzh like '5001111985121%'
delete from bm_sfzh where sfzh like '13068419870718038X%'
delete from bm_sfzh where sfzh like '500384199805116%'
delete from bm_sfzh where sfzh like '51021419750628%'
delete from bm_sfzh where sfzh like '510602197810106%'
delete from bm_sfzh where sfzh like '50010919840702%'
delete from bm_sfzh where sfzh like '500382198602195%'
delete from bm_sfzh where sfzh like '500102199212268%'
delete from bm_sfzh where sfzh like '51082419911003163X%'
delete from bm_sfzh where sfzh like '510229197103065%'
delete from bm_sfzh where sfzh like '511381198909117%'
delete from bm_sfzh where sfzh like '510214195810132%'
delete from bm_sfzh where sfzh like '510214195410142%'
delete from bm_sfzh where sfzh like '511623199304084%'
delete from bm_sfzh where sfzh like '51162319910223115X'
delete from bm_sfzh where xm = '罗兰'
delete from bm_sfzh where xm = '王飞嫣'
delete from bm_sfzh where xm = '余丽娟'
delete from bm_sfzh where xm = '徐垚'
delete from bm_sfzh where xm = '陈中利'
delete from bm_sfzh where xm = '李文刚'
delete from bm_sfzh where xm = '杨广'
delete from bm_sfzh where xm = '张良琴'
delete from bm_sfzh where xm = '魏海洋'
delete from bm_sfzh where xm = '任和雷'
delete from bm_sfzh where sfzh = '500101198609107000' or xm = '张德清'
delete from bm_sfzh where sfzh = '500101198609107000' or xm = '虎淋'
delete from bm_sfzh where sfzh = '500101198609107000' or xm = '谭孝平'


select * from t_student_info where jtdw='310421'
select * from t_zyk where qxdm='3104' and yxdm='12759'
select * from td_yhyx where yxmc='重庆工程职业技术学院'
zslbdm

select * from t_student_info a, t_zyk b where a.jtdw='310421' and b.yxdm='12759' and a.ksh=b.ksh

--3131、3110号段清理
select * from t_jtbmdwhd where qxdm='3110'
select * from BM_HDSZ_ZY where qxdm='3110'

delete from t_jtbmdwhd where qxdm='3110'
delete from BM_HDSZ_ZY where qxdm='3110'

--璧山号段清理
select * from t_jtbmdwhd where qxdm='3121'
select * from BM_HDSZ_ZY where qxdm='3121'

delete from t_jtbmdwhd where qxdm='3121'
delete from BM_HDSZ_ZY where qxdm='3121'

--武隆号段清理
select * from t_jtbmdwhd where qxdm='3126'
select * from BM_HDSZ_ZY where qxdm='3126'

delete from t_jtbmdwhd where qxdm='3126'
delete from BM_HDSZ_ZY where qxdm='3126'

--2016-08-26

--yxdm14139
--北京社会管理职业学院（院校代码yxdm14139）  这个学校取消今年的招生 ，可能涉及到要删除这2张表的这个学校的数据：td_yhyx和t_yhzy  。数据库内的数据删除后可能网页上的数据没有同步，要重新生成js文件。

select * into td_yhyx_14139 from td_yhyx where yxdm=14139
select * into t_yhzy_14139 from t_yhzy where yxdm=14139
select * from t_yhzy_14139
select * from td_yhyx_14139

delete from td_yhyx where yxdm=14139
delete from t_yhzy where yxdm=14139

select * from T_ZSB_KDSD
