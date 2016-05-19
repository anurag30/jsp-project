/*  creating database */

create database mydb;

/* use that database*/

use mydb;

/* creating tables */

create table login (uname varchar(20) primary key,pass varchar(20),type varchar(20));


create table books (bookid int primary key AUTO_INCREMENT,bookname varchar(30),bookpage int ,author varchar(20),edition int);


create table review (bookid int,bookname varchar(20),review varchar(100),name varchar(20) ,foreign key (bookid) references books(bookid));


insert into login values('admin',MD5('admin'),'admin');

insert into login values('master',MD5('master'),'admin');

insert into login values('ram',MD5('ram'),'user');

insert into books values (1,'java',500,'katy',6);

insert into books values (2,'C',600,'yashwant',5);

insert into review values(1,'java','good book','admin');
