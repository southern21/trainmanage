﻿Create database trainmanage
On
(NAME = 'trainmanage_data', FILENAME = 'C:\Databases\trainmanagedata.mdf',
 SIZE = 10, MAXSIZE = 50, FILEGROWTH = 5)
Log on
(NAME = 'trainmanage_log', FILENAME = 'C:\Databases\trainmanagelog.mdf',
 SIZE = 5MB, MAXSIZE = 25MB, FILEGROWTH = 5MB)
Go

--drop Database trainmanage

use trainmanage
go
--1
create table tblKhoa(
id int primary key  identity(1,1) not null,
makhoa varchar(50) unique,
tenkhoa nvarchar(100),
sodienthoai varchar(11)
)
go
--2
create table tblChucVu(
id int primary key identity(1,1) not null,
machucvu varchar(50) unique,
tenchucvu nvarchar(100)
)
go
--3
create table tblNienKhoa(
id int primary key identity(1,1) not null,
manienkhoa varchar(50) unique,
tennienkhoa nvarchar(100),
nambatdau date default getdate(),
namketthuc date default getdate()
)
go
--4
create table tblTinChi(
id int primary key identity(1,1) not null,
matinchi varchar(50) unique,
sotinchi varchar(2)
)
go
--5
create table tblHocKy(
id int primary key identity(1,1) not null,
mahocky varchar(50) unique,
tenhocky nvarchar(100)
)
go
--6
create table tblTrangThai(
id int primary key identity(1,1) not null,
matrangthai varchar(50) unique,
tentrangthai nvarchar(100)
)
go
--7
create table tblChuongTrinhDaoTao(
id int primary key identity(1,1) not null,
machuongtrinh varchar(50) unique,
tenchuongtrinh nvarchar(100)
)
go
--8
create table tblTaiKhoan(
id int primary key identity(1,1) not null, 
tentaikhoan nvarchar(100) unique, 
matkhau nvarchar(100), 
nhom nvarchar(100),
hoten nvarchar(100),
namsinh date default getdate(),
gioitinh nvarchar(3),
noisinh nvarchar(100),
diachi nvarchar(100),
)
go
--9
create table tblLop(
id int primary key identity(1,1) not null,
idkhoa int not null foreign key references tblKhoa(id) on update cascade on delete cascade,
idnienkhoa int not null foreign key references tblNienKhoa(id) on update cascade on delete cascade,
malop varchar(50) unique,
tenlop nvarchar(100),
siso int
)
go
--10
create table tblGiaoVien(
id int primary key identity(1,1) not null,
idchucvu int not null foreign key references tblChucVu(id) on update cascade on delete cascade,
magiaovien varchar(50) unique,
tengiaovien nvarchar(100),
namsinh date default getdate(),
gioitinh nvarchar(3),
noisinh nvarchar(100),
diachi nvarchar(100)
)
go
--11
create table tblSinhVien(
id int primary key identity(1,1) not null,
idlop int not null foreign key references tblLop(id) on update cascade on delete cascade,
idtrangthai int not null foreign key references tblTrangThai(id) on update cascade on delete cascade,
masinhvien varchar(50) unique,
tensinhvien nvarchar(100),
namsinh date default getdate(),
gioitinh nvarchar(3),
noisinh nvarchar(100),
diachi nvarchar(100)
)
go
--12
create table tblMonHoc(
id int primary key identity(1,1) not null,
idchuongtrinh int foreign key references tblChuongTrinhDaoTao(id) on update cascade on delete cascade,
idgiaovien int foreign key references tblGiaoVien(id) on update cascade on delete cascade,
idhocky int foreign key references tblHocKy(id) on update cascade on delete cascade,
idkhoa int foreign key references tblKhoa(id) on update cascade on delete cascade,
idtinchi int foreign key references tblTinChi(id) on update cascade on delete cascade, 
mamonhoc varchar(50) unique,
tenmonhoc nvarchar(100)
)
go
--13
create table tblKetQua(
id int primary key identity(1,1) not null,
idsinhvien int foreign key references tblSinhVien(id) on update cascade on delete cascade,
idlop int foreign key references tblLop(id) on update cascade on delete cascade,
idmonhoc int foreign key references tblMonhoc(id) on update cascade on delete cascade,
idhocky int foreign key references tblHocKy(id) on update cascade on delete cascade,
hoten nvarchar(100),
diemtrungbinh float,
diemthilan1 float,
diemthilan2 float,
diemtongket float,
hanhkiem nvarchar(100),
ghichu nvarchar(100)
)
go
--1
insert into tblTinChi values('TC1','1')
insert into tblTinChi values('TC2','2')
insert into tblTinChi values('TC3','3')
insert into tblTinChi values('TC4','4')
insert into tblTinChi values('TC5','5')
insert into tblTinChi values('TC6','6')
--2
insert into tblChucVu values('CV1',N'Trường Khoa')
insert into tblChucVu values('CV2',N'Phó Khoa')
insert into tblChucVu values('CV3',N'Giảng Viên')
insert into tblChucVu values('CV4',N'Bảo Vệ')
insert into tblChucVu values('CV5',N'Nhân Viên')
--3
insert into tblHocKy values('HK1',N'Học kỳ 1')
insert into tblHocKy values('HK2',N'Học kỳ 2')
insert into tblHocKy values('HK3',N'Học kỳ 3')
insert into tblHocKy values('HK4',N'Học kỳ 4')
insert into tblHocKy values('HK5',N'Học kỳ 5')
insert into tblHocKy values('HK6',N'Học kỳ 6')
insert into tblHocKy values('HK7',N'Học kỳ 7')
insert into tblHocKy values('HK8',N'Học kỳ 8')
--4
insert into tblKhoa values('K01',N'Công nghệ thông tin và truyền thông','0292113114')
insert into tblKhoa values('K02',N'Đại cương','0292113113')
insert into tblKhoa values('K03',N'Tự nhiên','0292113112')
insert into tblKhoa values('K04',N'Công nghệ','0292113111')
insert into tblKhoa values('K05',N'Môi trường','0292113115')
insert into tblKhoa values('K06',N'Kinh tế','0292113116')
insert into tblKhoa values('K07',N'Luật','0292113117')
insert into tblKhoa values('K08',N'Nông nghiệp','0292113118')
insert into tblKhoa values('K09',N'Khoa học','0292113119')
--5
insert into tblTrangThai values('TT1',N'Có ý thích')
insert into tblTrangThai values('TT2',N'Đăng ký')
insert into tblTrangThai values('TT3',N'Tạm hoãn')
insert into tblTrangThai values('TT4',N'Chưa ghi danh')
--6
insert into tblNienKhoa values('NK1',N'K38','2012','2015')
insert into tblNienKhoa values('NK2',N'K39','2013','2016')
insert into tblNienKhoa values('NK3',N'K40','2014','2017')
insert into tblNienKhoa values('NK4',N'K41','2015','2018')
insert into tblNienKhoa values('NK5',N'K42','2016','2019')
insert into tblNienKhoa values('NK6',N'K43','2017','2020')
insert into tblNienKhoa values('NK7',N'K44','2018','2021')
--7
insert into tblLop values('L01','K01','K38',N'Liên thông 1','25')
insert into tblLop values('L02','K01','K38',N'Liên thông 2','2')
insert into tblLop values('L03','K01','K39',N'Liên thông 3','26')
insert into tblLop values('L04','K01','K39',N'Liên thông 4','26')
insert into tblLop values('L05','K01','K40',N'Liên thông 5','27')
insert into tblLop values('L06','K01','K40',N'Liên thông 6','27')
insert into tblLop values('L07','K01','K41',N'Liên thông 7','28')
insert into tblLop values('L08','K01','K42',N'Liên thông 8','29')
insert into tblLop values('L09','K01','K42',N'Liên thông 9','29')
--8
insert into tblChuongTrinhDaoTao values('CT1','23')
insert into tblChuongTrinhDaoTao values('CT2','24')
insert into tblChuongTrinhDaoTao values('CT3','25')
insert into tblChuongTrinhDaoTao values('CT4','26')
insert into tblChuongTrinhDaoTao values('CT5','27')
insert into tblChuongTrinhDaoTao values('CT6','28')
insert into tblChuongTrinhDaoTao values('CT7','29')
insert into tblChuongTrinhDaoTao values('CT8','30')
--9
insert into tblGiaoVien values('GV1','CV2',N'Nguyễn Văn A','1980',N'Nam',N'Cần Thơ',N'Cần Thơ')
insert into tblGiaoVien values('GV2','CV2',N'Trần Thị B','1979',N'Nữ',N'An Giang',N'Cần Thơ')
insert into tblGiaoVien values('GV3','CV2',N'Võ Văn C','1981',N'Nam',N'Kiên Giang',N'Cần Thơ')
insert into tblGiaoVien values('GV4','CV2',N'Hứa Vỹ D','1977',N'Nam',N'Tiền Giang',N'Cần Thơ')
insert into tblGiaoVien values('GV5','CV2',N'Đỗ Huy E','1982',N'Nam',N'Hậu Giang',N'Cần Thơ')
insert into tblGiaoVien values('GV6','CV2',N'Trịnh Xuân F','1983',N'Nữ',N'Bạc Liêu',N'Cần Thơ')
insert into tblGiaoVien values('GV7','CV2',N'Cao Kim G','1984',N'Nữ',N'Cà Mau',N'Cần Thơ')
insert into tblGiaoVien values('GV7','CV2',N'Tô Thanh H','1985',N'Nam',N'Đồng Tháp',N'Cần Thơ')
insert into tblGiaoVien values('GV8','CV2',N'Định Diệp I','1986',N'Nữ',N'Vĩnh Long',N'Cần Thơ')
--10
insert into tblSinhVien values('SV1','L01','TT2',N'Phạm Thị J','1992',N'Nữ',N'Cần Thơ',N'Cần Thơ')
insert into tblSinhVien values('SV2','L01','TT2',N'Lê Văn L','1993',N'Nam',N'Bạc Liêu',N'Bạc Liêu')
insert into tblSinhVien values('SV3','L01','TT2',N'Huỳnh Tấn O','1991',N'Nam',N'Hậu Giang',N'Hậu Giang')
insert into tblSinhVien values('SV4','L01','TT2',N'Vũ Lại Y','1993',N'Nữ',N'Kiên Giang',N'Kiên Giang')
insert into tblSinhVien values('SV5','L01','TT2',N'Dương Chí Q','1994',N'Nam',N'Tiền Giang',N'Tiền Giang')
insert into tblSinhVien values('SV6','L05','TT2',N'Lý Chí X','1995',N'Nam',N'An Giang',N'An Giang')
insert into tblSinhVien values('SV7','L05','TT2',N'Ngô Tùng M','1995',N'Nam',N'Cà Mau',N'Cà Mau')
insert into tblSinhVien values('SV8','L01','TT2',N'Hồ Quý S','1990',N'Nữ',N'Vĩnh Long',N'Vĩnh Long')
insert into tblSinhVien values('SV9','L01','TT2',N'Đặng Bá N','1990',N'Nam',N'Cần Thơ',N'Cần Thơ')
insert into tblSinhVien values('SV10','L01','TT2',N'Hoàng Kim P','1990',N'Nữ',N'Đồng Tháp',N'Đồng Tháp')
--11
insert into tblMonHoc values('MH1','GV1','HK1','K01','TC3','CT1',N'Lập trình ứng dụng Java')
insert into tblMonHoc values('MH2','GV2','HK1','K01','TC3','CT1',N'Lập trình ứng dụng Windows')
insert into tblMonHoc values('MH3','GV3','HK2','K01','TC3','CT2',N'Lập trình ứng dụng Android')
insert into tblMonHoc values('MH4','GV4','HK2','K01','TC3','CT6',N'Lập trình ứng dụng macOS')
insert into tblMonHoc values('MH5','GV5','HK3','K01','TC3','CT7',N'Lập trình mạng')
insert into tblMonHoc values('MH6','GV6','HK3','K01','TC3','CT2',N'Lập trình web')
insert into tblMonHoc values('MH7','GV7','HK3','K01','TC3','CT4',N'Hệ quản trị cơ sở dữ liệu')
insert into tblMonHoc values('MH8','GV8','HK4','K01','TC3','CT3',N'Quản trị mạng')
insert into tblMonHoc values('MH9','GV1','HK4','K01','TC3','CT4',N'Phân tích hệ thống thông tin')
--12
insert into tblKetQua values()
insert into tblKetQua values()
insert into tblKetQua values()
insert into tblKetQua values()
insert into tblKetQua values()
insert into tblKetQua values()
insert into tblKetQua values()
insert into tblKetQua values()
insert into tblKetQua values()
insert into tblKetQua values()
--13
insert into tblTaiKhoan values('1','gv1',N'12345678',N'Giáo viên',N'','',N'',N'Tiền Giang',N'Tiền Giang')
insert into tblTaiKhoan values('2','gv2',N'12345678',N'Giáo viên',N'','',N'',N'Cần Thơ',N'Cần Thơ')
insert into tblTaiKhoan values('3','gv3',N'12345678',N'Giáo viên',N'','',N'',N'Cà Mau',N'Cà Mau')
insert into tblTaiKhoan values('4','qt1',N'12345678',N'Quản trị viên',N'','',N'',N'An Giang',N'An Giang')
insert into tblTaiKhoan values('5','qt2',N'12345678',N'Quản trị viên',N'','',N'',N'Kiên Giang',N'Kiên Giang')
insert into tblTaiKhoan values('6','qt3',N'12345678',N'Quản trị viên',N'','',N'',N'Hậu Giang',N'Hậu Giang')
insert into tblTaiKhoan values('7','ql1',N'12345678',N'Quán lý chương trình đào tạo viên',N'','',N'',N'Vĩnh Long',N'Vĩnh Long')
insert into tblTaiKhoan values('8','ql2',N'12345678',N'Quán lý chương trình đào tạo viên',N'','',N'',N'Bạc Liêu',N'Bạc Liêu')
insert into tblTaiKhoan values('9','qt',N'12345678',N'Quản trị viên',N'','',N'',N'Sóc Trăng',N'Sóc Trăng')
insert into tblTaiKhoan values('10','gv',N'12345678',N'Giáo viên',N'','',N'',N'Bến Tre',N'Bến Tre')
insert into tblTaiKhoan values('11','ql',N'12345678',N'Quán lý chương trình đào tạo viên',N'','',N'',N'Đồng Tháp',N'Đồng Tháp')


