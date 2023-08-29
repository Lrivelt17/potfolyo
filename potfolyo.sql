create database potfolyo character set 'utf8mb4';

	create table kont (
		id_kont int, 
		non varchar(60) not null,
		siyati varchar(70) not null,
		imel varchar(100) not null,
		telefon int not null,
		primary key(id_kont, imel));

insert into kont values(
100, 'Pyewo','Derival','derivalp12@hotmail.com', 36789045),
(101,'Neri', 'Pyè','neri10@yahoo.fr',4002747),
(102,'Karen', 'Jozèf', 'josepk2@gamil.com', 32456789),
(103,'keri','luisen','kluisen@hotmail.com', 34897645),
(104, 'Maksi','Rejis', 'maksirej56@gmail.com', 39098213);

create table pwoje (
		id_pwoje int,
		tit varchar(100),
		slug varchar(70),
		dat_kreye date,
		deskrepsyon text, 
		foto varchar(255),
		kat_pwoje char(4),
		primary key(kat_pwoje),
		constraint fk_pwoje foreign key(id_pwoje) references kont(id_kont));
insert into pwoje values(
100, 'Boutik','','2020-09-19','','','A001'),
(102,'logo','','2018-07-04','','','A002'),
(100,'laptop','','2019-01-02','','','A003'),
(103,'shopify','','2023-09-29','','A004');


	create table kategori(
		id_kat char(4),
		non varchar(50),
		constraint fk_kateg foreign key(id_kat) references pwoje(kat_pwoje));

insert into kategori values(
'A002','design'),
('A002','food');
