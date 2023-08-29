create database potfolyo character set 'utf8mb4';

	create table kont (
		id_kont int not null, 
		non varchar(60) not null,
		siyati varchar(70) not null,
		imel varchar(100) not null,
		telefon int not null,
		primary key(id_kont, imel));



create table pwoje (
		id_pwoje int,
		tit varchar(100) not null,
		slug varchar(70) not null,
		dat_kreye date default '2023-01-01',
		deskrepsyon text not null, 
		foto varchar(255) not null,
		kat_pwoje char(4),
		primary key(kat_pwoje),
		constraint fk_pwoje foreign key(id_pwoje) references kont(id_kont));


	create table kategori(
		id_kat char(4),
		non varchar(50) not null,
		constraint fk_kateg foreign key(id_kat) references pwoje(kat_pwoje));


