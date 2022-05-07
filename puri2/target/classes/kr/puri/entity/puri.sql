select * from plant;

insert into member values('a','a',',a','a',1);
commit;

truncate table q_answer;

alter table member modify(age number(10));

alter table question rename column q_1 to a_1;
alter table question rename column q_2 to a_2;
alter table question rename column q_3 to a_3;
alter table question rename column q_4 to a_4;
alter table question rename column q_5 to a_5;
alter table question rename column q_6 to a_6;
alter table question rename column q_7 to a_7;

select * from question;
select * from q_answer;

alter table q_answer add plant_name3 varchar2(50) not null;

select plant_name, plant_group, plant_level, plant_flower, plant_size, plant_water, plant_sun, plant_temp, plant_feature, plant_mean, plant_img
from plant , (select a.plant_name1, a.plant_name2, a.plant_name3
			from (SELECT * FROM (SELECT *FROM QUESTION where id=#{} ORDER BY question_seq DESC) WHERE ROWNUM= 1) q, q_answer a
			where q.a_1=a.a_1 and q.a_2=a.a_2 and q.a_3=a.a_3 and q.a_4=a.a_4 and q.a_5=a.a_5 and q.a_6=a.a_6 and q.a_7=a.a_7) a
where plant_name = a.plant_name1 or plant_name = a.plant_name2 or plant_name = a.plant_name3

-- select * from QUESTION where id=1 order by question_seq desc rownum 1;
select plant_name, plant_group, plant_level, plant_flower, plant_size, plant_water, plant_sun, plant_temp, plant_feature, plant_mean, plant_img
from plant , (select a.plant_name1, a.plant_name2, a.plant_name3
			from (SELECT * FROM (SELECT *FROM QUESTION where id=1 ORDER BY question_seq DESC) WHERE ROWNUM= 1) q, q_answer a
			where q.a_1=a.a_1 and q.a_2=a.a_2 and q.a_3=a.a_3 and q.a_4=a.a_4 and q.a_5=a.a_5 and q.a_6=a.a_6 and q.a_7=a.a_7) a
where plant_name IN (a.plant_name1 , a.plant_name2 , a.plant_name3) 


select plant_name, plant_group, plant_level, plant_flower, plant_size, plant_water, plant_sun, plant_temp, plant_feature, plant_mean, plant_img
from plant , (select a.plant_name1, a.plant_name2, a.plant_name3
			from (SELECT * FROM (SELECT *FROM QUESTION ORDER BY question_seq DESC) WHERE ROWNUM= 1) q, q_answer a
			where q.a_1=a.a_1 and q.a_2=a.a_2 and q.a_3=a.a_3 and q.a_4=a.a_4 and q.a_5=a.a_5 and q.a_6=a.a_6 and q.a_7=a.a_7 ) a
where plant_name IN (a.plant_name1 , a.plant_name2 , a.plant_name3) 








