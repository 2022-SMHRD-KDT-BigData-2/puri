select * from member;

insert into member values('a','a',',a','a',1);
commit;

truncate table member;

alter table member modify(age number(10));