select * from member;

insert into member values('a','a',',a','a',1);
commit;

truncate table question;

alter table member modify(age number(10));

alter table q_answer rename column question_7 to a_7;

select * from q_answer;

alter table q_answer add plant_name3 varchar2(50) not null;

