create table Sim
(
	ID char(2) not null primary key,
	SoSim varchar(10) not null,
	MangID char(2) not null foreign key references Mang(MangID),
	NgayKichHoat date not null,
	NgayHetHan date not null,
);
create table Mang
(
	MangID char(2) not null primary key,
	TenMang nvarchar(30) not null,
);
insert into Sim(ID,SoSim,MangID,NgayKichHoat,NgayHetHan)
values  ('1','0837274827','2','20220908','20241112'),
		('2','0372847294','2','20001002','20300203');
insert into Mang(MangID,TenMang)
values  ('1','Vinaphone'),
		('2','Viettel');