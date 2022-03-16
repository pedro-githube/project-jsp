create database data_base;
use data_base;

create table users(
	id int auto_increment primary key,
	name varchar(200) not null,
	telephone varchar(20),
	address varchar(200) not null
);

insert into users (name, telephone, address) values ('Bob brown','289-8700', 'Clifton St');
insert into users (name, telephone, address) values ('Alan Michael','144-0246', 'Gates St');
insert into users (name, telephone, address) values ('Tony Ken','646-7028', 'Griffin Ave');
insert into users (name, telephone, address) values ('Maria Milie','222-1583', 'Sichel St');
insert into users (name, telephone, address) values ('Richard Milies','952-3559', 'W Ave 30');
insert into users (name, telephone, address) values ('Janet Jackson','186-9292', 'St Andrews Pl');
insert into users (name, telephone, address) values ('Rey Charles','534-7433', 'Gramercy Pl');
insert into users (name, telephone, address) values ('Rays Mendes','529-1491', 'Park Bob Kennedy');
insert into users (name, telephone, address) values ('Jeniffer Annys','786-9641', 'Van Ness Ave');
insert into users (name, telephone, address) values ('Tom Brady','425-4017', 'Two Tree Ave');
insert into users (name, telephone, address) values ('Joana Darc','211-5377', 'Pomona St');
insert into users (name, telephone, address) values ('Kendall Muller','574-7789', 'Granada St');
insert into users (name, telephone, address) values ('Michael Jordan','557-3158', 'Roseview Ave');
insert into users (name, telephone, address) values ('Will Jonson','348-1008', 'Loosmore St');

select * from users;

