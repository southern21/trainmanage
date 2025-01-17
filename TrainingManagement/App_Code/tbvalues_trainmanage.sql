﻿use trainmanage
go
--1
SET Identity_Insert tblKhoa OFF
DBCC CHECKIDENT (tblKhoa, RESEED, 1);
insert into tblKhoa values('K01',N'Công nghệ thông tin và truyền thông','0292113114')
insert into tblKhoa values('K02',N'Đại cương','0292113113')
insert into tblKhoa values('K03',N'Tự nhiên','0292113112')
insert into tblKhoa values('K04',N'Công nghệ','0292113111')
insert into tblKhoa values('K05',N'Môi trường','0292113115')
insert into tblKhoa values('K06',N'Kinh tế','0292113116')
insert into tblKhoa values('K07',N'Luật','0292113117')
insert into tblKhoa values('K08',N'Nông nghiệp','0292113118')
insert into tblKhoa values('K09',N'Khoa học','0292113119')
--2
SET Identity_Insert tblChucVu OFF
DBCC CHECKIDENT (tblChucVu, RESEED, 1);
insert into tblChucVu values('CV1',N'Trường Khoa')
insert into tblChucVu values('CV2',N'Phó Khoa')
insert into tblChucVu values('CV3',N'Giảng Viên')
insert into tblChucVu values('CV4',N'Bảo Vệ')
insert into tblChucVu values('CV5',N'Nhân Viên')

--3
SET Identity_Insert tblNienKhoa OFF
DBCC CHECKIDENT (tblNienKhoa, RESEED, 1);
insert into tblNienKhoa values('NK1',N'K38','2012','2015')
insert into tblNienKhoa values('NK2',N'K39','2013','2016')
insert into tblNienKhoa values('NK3',N'K40','2014','2017')
insert into tblNienKhoa values('NK4',N'K41','2015','2018')
insert into tblNienKhoa values('NK5',N'K42','2016','2019')
insert into tblNienKhoa values('NK6',N'K43','2017','2020')
insert into tblNienKhoa values('NK7',N'K44','2018','2021')
--4
SET Identity_Insert tblTinChi OFF
DBCC CHECKIDENT (tblTinChi, RESEED, 1);
insert into tblTinChi values('TC1','1')
insert into tblTinChi values('TC2','2')
insert into tblTinChi values('TC3','3')
insert into tblTinChi values('TC4','4')
insert into tblTinChi values('TC5','5')
insert into tblTinChi values('TC6','6')
--5
SET Identity_Insert tblHocKy OFF
DBCC CHECKIDENT (tblHocKy, RESEED, 1);
insert into tblHocKy values('HK1',N'Học kỳ 1')
insert into tblHocKy values('HK2',N'Học kỳ 2')
insert into tblHocKy values('HK3',N'Học kỳ 3')
insert into tblHocKy values('HK4',N'Học kỳ 4')
insert into tblHocKy values('HK5',N'Học kỳ 5')
insert into tblHocKy values('HK6',N'Học kỳ 6')
insert into tblHocKy values('HK7',N'Học kỳ 7')
insert into tblHocKy values('HK8',N'Học kỳ 8')
--6
SET Identity_Insert tblTrangThai OFF
DBCC CHECKIDENT (tblTrangThai, RESEED, 1);
insert into tblTrangThai values('TT1',N'Có ý thích')
insert into tblTrangThai values('TT2',N'Đăng ký')
insert into tblTrangThai values('TT3',N'Tạm hoãn')
insert into tblTrangThai values('TT4',N'Chưa ghi danh')
--7
SET Identity_Insert tblChuongTrinh OFF
DBCC CHECKIDENT (tblChuongTrinh, RESEED, 1);
insert into tblChuongTrinh values('2','CT1','23')
insert into tblChuongTrinh values('2','CT2','24')
insert into tblChuongTrinh values('2','CT3','25')
insert into tblChuongTrinh values('2','CT4','26')
insert into tblChuongTrinh values('2','CT5','27')
insert into tblChuongTrinh values('2','CT6','28')
insert into tblChuongTrinh values('2','CT7','29')
insert into tblChuongTrinh values('2','CT8','30')

--8
SET Identity_Insert tblNhom OFF
DBCC CHECKIDENT (tblNhom, RESEED, 1);
insert into tblNhom values(N'N01',N'Admin')
insert into tblNhom values(N'N02',N'Manager')
insert into tblNhom values(N'N03',N'Teacher')
insert into tblNhom values(N'N04',N'Student')
--9
SET Identity_Insert tblLop OFF
DBCC CHECKIDENT (tblLop, RESEED, 1);
insert into tblLop values('1','1','L01',N'Liên thông 1','25')
insert into tblLop values('1','1','L02',N'Liên thông 2','24')
insert into tblLop values('1','2','L03',N'Liên thông 3','26')
insert into tblLop values('1','2','L04',N'Liên thông 4','26')
insert into tblLop values('1','3','L05',N'Liên thông 5','27')
insert into tblLop values('1','3','L06',N'Liên thông 6','27')
insert into tblLop values('1','4','L07',N'Liên thông 7','28')
insert into tblLop values('1','5','L08',N'Liên thông 8','29')
insert into tblLop values('1','6','L09',N'Liên thông 9','29')
--10
SET Identity_Insert tblMonHoc OFF
DBCC CHECKIDENT (tblMonHoc, RESEED, 1);
insert into tblMonHoc values('1','1','3','MH1',N'Lập trình ứng dụng Java')
insert into tblMonHoc values('2','1','3','MH2',N'Lập trình ứng dụng Windows')
insert into tblMonHoc values('2','2','3','MH3',N'Lập trình ứng dụng Android')
insert into tblMonHoc values('6','2','3','MH4',N'Lập trình ứng dụng macOS')
insert into tblMonHoc values('7','3','3','MH5',N'Lập trình mạng')
insert into tblMonHoc values('2','3','3','MH6',N'Lập trình web')
insert into tblMonHoc values('4','4','3','MH7',N'Hệ quản trị cơ sở dữ liệu')
insert into tblMonHoc values('3','5','3','MH8',N'Quản trị mạng')
insert into tblMonHoc values('5','6','3','MH9',N'Phân tích hệ thống thông tin')
--
--11
SET Identity_Insert tblTaiKhoan OFF
DBCC CHECKIDENT (tblTaiKhoan, RESEED, 1);
insert into tblTaiKhoan values('1','qt',N'12345678',N'Hùng','1994' ,N'Nam' ,N'Cần Thơ' ,N'ctu123@gmail.com' ,N'01655123456')
insert into tblTaiKhoan values('2','ql',N'12345678',N'Phát' ,'1994' ,N'Nam' ,N'Cần Thơ' ,N'ctu456@gmail.com' ,N'01655123111')
insert into tblTaiKhoan values('3','gv1',N'12345678',N'Giang','1990' ,N'Nữ' ,N'An Giang' ,N'ctu789@gmail.com' ,N'0903111222')
insert into tblTaiKhoan values('3','gv2',N'12345678',N'Hiếu','1991' ,N'Nữ' ,N'Cà Mau' ,N'khongcomail@gmail.com' ,N'0908333999' )
insert into tblTaiKhoan values('3','gv3',N'12345678',N'Khoa','1989' ,N'Nam' ,N'Vĩnh Long' ,N'khongco123mail@gmail.com' ,N'0908333111' )
insert into tblTaiKhoan values('3','gv4',N'12345678',N'Tâm','2000' ,N'Nữ' ,N'Sóc Trăng' ,N'khongcomailhaha@gmail.com' ,N'0909456789' )
insert into tblTaiKhoan values('3','gv5',N'12345678',N'Quý','1988' ,N'Nam' ,N'Bạc Liêu' ,N'maillagi123@gmail.com' ,N'0909999999' )
insert into tblTaiKhoan values('3','gv6',N'12345678',N'Khánh','1975' ,N'Nữ' ,N'Kiên Giang' ,N'hellomail111@gmail.com' ,N'0908111000' )
insert into tblTaiKhoan values('3','gv7',N'12345678',N'Cường','1991' ,N'Nữ' ,N'Cà Mau' ,N'khongcomail@gmail.com' ,N'0908333444' )
insert into tblTaiKhoan values('3','gv8',N'12345678',N'Hưng','1991' ,N'Nam' ,N'Trà Vinh' ,N'khongcomail9999@gmail.com' ,N'0903000111' )
insert into tblTaiKhoan values('4','sv1',N'12345678',N'Huy','1999' ,N'Nam' ,N'Trà Vinh' ,N'khongcomail1999@gmail.com' ,N'0903000222' )
insert into tblTaiKhoan values('4','sv2',N'12345678',N'Phi','1991' ,N'Nam' ,N'Hậu Giang' ,N'nhucdauthietcho@gmail.com' ,N'0903123987' )
insert into tblTaiKhoan values('4','sv3',N'12345678',N'Kiet','1999' ,N'Nam' ,N'Hồ Chí Minh' ,N'khongcomail1999@gmail.com' ,N'0903000222' )
insert into tblTaiKhoan values('4','sv4',N'12345678',N'Tai','1991' ,N'Nam' ,N'Thái Nguyên' ,N'nhucdauthietcho@gmail.com' ,N'0903123987' )
insert into tblTaiKhoan values('4','sv5',N'12345678',N'Binh','1999' ,N'Nam' ,N'Lâm Đồng' ,N'khongcomail1999@gmail.com' ,N'0903000222' )
insert into tblTaiKhoan values('4','sv6',N'12345678',N'Nguyet','1991' ,N'Nữ' ,N'Vĩnh Phúc' ,N'nhucdauthietcho@gmail.com' ,N'0903123987' )
--
--12
SET Identity_Insert tblQuanTri OFF
DBCC CHECKIDENT (tblQuanTri, RESEED, 1);
insert into tblQuanTri values('1', '1')
insert into tblQuanTri values('2', '2')
--13
SET Identity_Insert tblSinhVien OFF
DBCC CHECKIDENT (tblSinhVien, RESEED, 1);
insert into tblSinhVien values('1','11','1')
insert into tblSinhVien values('2','16','2')
insert into tblSinhVien values('3','12','2')
insert into tblSinhVien values('4','13','2')
insert into tblSinhVien values('5','14','2')
insert into tblSinhVien values('6','15','2')

--14
SET Identity_Insert tblGiaoVien OFF
DBCC CHECKIDENT (tblGiaoVien, RESEED, 1);
insert into tblGiaoVien values('1','1','1','1','3')
insert into tblGiaoVien values('2','1', '1','1', '4')
insert into tblGiaoVien values('3','1', '1', '2', '10')
insert into tblGiaoVien values('3','2', '1', '3', '5')
insert into tblGiaoVien values('3','3', '1', '5', '6')
insert into tblGiaoVien values('3','6', '1', '6', '7')
insert into tblGiaoVien values('3','4', '1', '2', '8')
insert into tblGiaoVien values('3','4', '1', '5', '9')
--15
SET Identity_Insert tblKetQua OFF
DBCC CHECKIDENT (tblKetQua, RESEED, 1);
insert into tblKetQua values('1','1','7.2','7','0','2.9',N'Tốt','')
insert into tblKetQua values('2','2','8.3','8','0','3.0',N'Tốt','')
insert into tblKetQua values('3','3','7.5','9','0','2.5',N'Tốt','')
insert into tblKetQua values('4','4','7.7','10','0','3.1',N'Tốt','')
insert into tblKetQua values('5','5','6.9','6','0','2.8',N'Tốt','')
insert into tblKetQua values('6','8','10','3','7','1.5',N'Khá','')
--insert into tblKetQua values('6','6','5.3','7','0','2.7',N'Tốt','')
--insert into tblKetQua values('7','8','5.6','5','0','2.0',N'Khá','')
--insert into tblKetQua values('8','8','8.9','6','0','2.6',N'Tốt','')
--insert into tblKetQua values('9','7','9.2','3','8','1.8',N'Khá','')
--16
--SET Identity_Insert tblDangNhap OFF
--DBCC CHECKIDENT (tblDangNhap, RESEED, 1);
--insert into tblDangNhap values(''
----17
--SET Identity_Insert tblBanTin OFF
--DBCC CHECKIDENT (tblBanTin, RESEED, 1);




