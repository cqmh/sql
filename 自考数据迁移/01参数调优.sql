--processes 150 -> 1500
alter system set processes=1500 scope=spfile;

--cursors 300 -> 3000
alter system set open_cursors=3000 scope=both;

--查看字符集
select userenv('language') from dual;

--DB重启
>shutdown immediate
>startup

