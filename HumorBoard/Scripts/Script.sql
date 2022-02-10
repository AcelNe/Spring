create table members(
	memid varchar(20) not null unique,
	mempw varchar(50) not null,
	mem_nickname varchar(30),
	tel varchar(20) not null,
	state varchar(5) not null default '0'
);

create table managers(
	num int not null auto_increment primary key,
	manid varchar(20) not null unique,
	manpw varchar(50) not null,
	man_nickname varchar(30),
	grade varchar(10) default '게시판 관리자'
);

insert into managers(manid, manpw, man_nickname,grade) values('admin','asdf','최고관리자','최고관리자');

create table board_cate(
	num int auto_increment primary key,
	cate varchar(10) unique
);

insert into board_cate(cate) values
	('공지'),('자유'),('회원');

create table board(
	num int auto_increment primary key,
	title varchar(50) not null,
	contents varchar(200),
	writer varchar(30) not null,
	dt datetime not null,
	views int default 0,
	cate varchar(10) not null,
	foreign key(cate) references board_cate(cate)
);

insert into board(title, contents, writer, dt, cate) values
	('자유게시판 1번글','컨텐츠는 내용입니다. \n 줄바꿈이 가능하면 좋겠다','aaa1','2022-02-10 10:23:22', '자유');