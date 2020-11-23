create database users;
alter database users modify name="Users";
sp_renameDB 'User','users'
use users;
create table [user](
id int primary key ,
[name] varchar(30),
email varchar(40),
gender int 
)
create table gender(
id int primary key,
gender varchar(20)
);
insert into gender values(1,'male');
insert into gender values(2,'female');
insert into gender values(3,'unknown');


insert into [user] values(1,'issam','boutissantea5@gmail.com',1);
insert into [user] values(2,'issam','boutissantea5@gmail.com',3);

delete [user] where id=2;

alter table [user] add constraint pk_user_gender 
foreign key (gender) References gender(id);

insert into [user] values(2,'issam','boutissantea5@gmail.com',null);

alter table [user] add constraint df_user_gender
default 3 for gender;

insert into [user](id,[name],email) values(3,'issam','boutissantea5@gmail.com');



update [user] set gender=3 where id=2;
update [user] set gender=1;

