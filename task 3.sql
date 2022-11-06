show databases;
use movie;
desc user;
create table user(id int primary key,firstname varchar(100),lastname varchar(100),age int,salary int);
insert into user values(id=1,firstname="balaji",lastname="naik",age=20,salary=60000);
insert into user values(id=2,firstname="lekhya",lastname="lanka",age=20,salary=50000);
insert into user values(id=3,firstname="nithin",lastname="ponnapati",age=20,salary=60000);
insert into user values(id=4,firstname="micheal",lastname="banavath",age=20,salary=40000);
insert into user values(id=5,firstname="hemanth",lastname="bhukya",age=20,salary=43000);
insert into user values(id=6,firstname="prathap",lastname="pediredla",age=20,salary=67000);
create table movie(
  movieid int primary key,
  movieName varchar(100),
  hero varchar(100),
  heroin varchar(100),
  ticketPrice int,
  movieRating int,
  id int foreign key(id) references user(id) unique
  );
insert into movie value(moveid=1, movieName="ekvillan", hero="kalyan",heroin="lekhya",ticketPrice=100,movieRating=9,id=1);
insert into movie value(moveid=1, movieName="ekvillan", hero="kalyan",heroin="lekhya",ticketPrice=100,movieRating=9,id=2);
insert into movie value(moveid=1, movieName="ekvillan", hero="kalyan",heroin="lekhya",ticketPrice=100,movieRating=9,id=4);
insert into movie value(moveid=2, movieName="seetharamam", hero="pavan",heroin="tulasi",ticketPrice=100,movieRating=4,id=2);
insert into movie value(moveid=2, movieName="seetharamam", hero="pavan",heroin="tulasi",ticketPrice=100,movieRating=4,id=3);
insert into movie value(moveid=2, movieName="seetharamam", hero="pavan",heroin="tulasi",ticketPrice=100,movieRating=4,id=5);
insert into movie value(moveid=3, movieName="predator", hero="venkat",heroin="prasanthi",ticketPrice=300,movieRating=4,id=3);
insert into movie value(moveid=4, movieName="sanam teri kasam",hero="varun",heroin="sharadda",ticketPrice=230,movieRating=8,id=4);
insert into movie value(moveid=5, movieName="prince", hero="kalyan",heroin="lekhya",ticketPrice=500,movieRating=9,id=5);
insert into movie value(moveid=6, movieName="varsham", hero="rajesh",heroin="kavya",ticketPrice=200,movieRating=7,id=6);
insert into movie value(moveid=6, movieName="varsham", hero="rajesh",heroin="kavya",ticketPrice=200,movieRating=7,id=1);
insert into movie value(moveid=4, movieName="sanam teri kasam",hero="varun",heroin="sharadda",ticketPrice=230,movieRating=8,id=2);
select * from movie where id=1;
select * from movie where (id=1 and ticketPrice>150); 
select * from movie where (id=2 and ticketPrice>150); 
select * from movie where (id=1 and rating<5); 
select * from movie where(id=1 and count(herion)>1)
select avg(amount) from movies;
select sum(amount) from movies;

