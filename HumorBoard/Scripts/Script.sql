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