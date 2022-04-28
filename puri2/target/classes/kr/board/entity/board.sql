drop table board;

create table board(
	idx number not null,
	memId varchar2(50) not null,
	title varchar2(100) not null,
	content varchar2(2000) not null,
	writer varchar2(30) not null,
	indate date default sysdate,
	count number default 0,
	primary key(idx)
);

create sequence board_idx;

insert into board(idx, title, content, writer) values(board_idx.nextval, '스프링 게시판', '스프링 게시판', '관리자');
insert into board(idx, title, content, writer) values(board_idx.nextval, '스프링 게시판', '스프링 게시판', '김노현');

select * from board;

create table mem_tbl(
   memId varchar2(50) not null,
   memPwd varchar2(50) not null,
   memName varchar2(50) not null,
   primary key(memId)
);

insert into mem_tbl values('smhrd01', 'smhrd01', '관리자');
insert into mem_tbl values('smhrd02', 'smhrd02', '김노현');
insert into mem_tbl values('smhrd03', 'smhrd03', '신다홍');
