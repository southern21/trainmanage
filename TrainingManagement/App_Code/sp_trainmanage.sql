﻿use trainmanage
go
---------------------Table---------------------
-- 1 Khoa
--
if object_id('sp_tblKhoa_SelectAll')is not null
	drop proc sp_tblKhoa_SelectAll
go
create procedure sp_tblKhoa_SelectAll
as
begin
	select tk.makhoa, tk.tenkhoa, tk.sodienthoai from tblKhoa as tk
end
go
--
if object_id('sp_tblKhoa_Insert')is not null
	drop proc sp_tblKhoa_Insert
go
create procedure sp_tblKhoa_Insert
@makhoa varchar(50),
@tenkhoa nvarchar(100),
@sodienthoai varchar(11)
as
begin
	insert into tblKhoa
	(
		makhoa,
		tenkhoa,
		sodienthoai
	)
	values
	(
		@makhoa,
		@tenkhoa,
		@sodienthoai
	)
end
go
--
if object_id('sp_tblKhoa_Update')is not null
	drop proc sp_tblKhoa_Update
go
create procedure sp_tblKhoa_Update
@id int,
@makhoa varchar(50),
@tenkhoa nvarchar(100),
@sodienthoai varchar(11)
as
begin
	update tblKhoa
	set 
		makhoa = @makhoa,
		tenkhoa = @tenkhoa,
		sodienthoai = @sodienthoai
	where id = @id
end
go
--
if object_id('sp_tblKhoa_Delete')is not null
	drop proc sp_tblKhoa_Delete
go
create procedure sp_tblKhoa_Delete
@id int
as
begin
	delete from tblKhoa
	where id = @id
end
go
--
--2 Chuc Vu
--
/*
if object_id('sp_tblChucvu_SelectAll')is not null
	drop proc sp_tblChucvu_SelectAll
go
create procedure sp_tblChucvu_SelectAll
as
begin
	select tcv.machucvu, tcv.tenchucvu from tblChucVu as tcv
end
go
--
if object_id('sp_tblChucvu_Insert')is not null
	drop proc sp_tblChucvu_Insert
go
create procedure sp_tblChucVu_Insert
@machucvu varchar(50),
@tenchucvu nvarchar(100)
as
begin
	insert into tblChucVu
	(
		machucvu,
		tenchucvu
	)
	values
	(
		@machucvu,
		@tenchucvu
	)
end
go
--
if object_id('sp_tblChucvu_Update')is not null
	drop proc sp_tblChucvu_Update
go
create procedure sp_tblChucVu_Update
@id int,
@machucvu varchar(50),
@tenchucvu nvarchar(100)
as
begin
	update tblChucVu
	set 
		machucvu = @machucvu,
		tenchucvu = @tenchucvu
	where id = @id
end
go
--
if object_id('sp_tblChucvu_Delete')is not null
	drop proc sp_tblChucvu_Delete
go
create procedure sp_tblChucVu_Delete
@id int
as
begin
	delete from tblChucVu
	where id = @id
end
go
*/
--
--3 nien khoa
--
if object_id('sp_tblNienKhoa_SelectAll')is not null
	drop proc sp_tblNienKhoa_SelectAll
go
create procedure sp_tblNienKhoa_SelectAll
as
begin
	select tnk.manienkhoa, tnk.tennienkhoa, tnk.nambatdau, tnk.namketthuc from tblNienKhoa as tnk
end
go
--
if object_id('sp_tblNienKhoa_SelectID')is not null
	drop proc sp_tblNienKhoa_SelectID
go
create procedure sp_tblNienKhoa_SelectID
@id int
as
begin
	select tnk.manienkhoa, tnk.tennienkhoa, tnk.nambatdau, tnk.namketthuc from tblNienKhoa as tnk
	where id = @id
end
go
--
if object_id('sp_tblNienKhoa_Insert')is not null
	drop proc sp_tblNienKhoa_Insert
go
create procedure sp_tblNienKhoa_Insert
@manienkhoa varchar(50),
@tennienkhoa nvarchar(100),
@nambatdau date,
@namketthuc date
as
begin
	insert into tblNienKhoa
	(
		manienkhoa,
		tennienkhoa,
		nambatdau,
		namketthuc
	)
	values
	(
		@manienkhoa,
		@tennienkhoa,
		@nambatdau,
		@namketthuc
	)
end
go
--
if object_id('sp_tblNienKhoa_Update')is not null
	drop proc sp_tblNienKhoa_Update
go
create procedure sp_tblNienKhoa_Update
@id int,
@manienkhoa varchar(50),
@tennienkhoa nvarchar(100),
@nambatdau date,
@namketthuc date
as
begin
	update tblNienKhoa
	set
		manienkhoa = @manienkhoa,
		tennienkhoa = @tennienkhoa,
		nambatdau = @nambatdau,
		namketthuc = @namketthuc
	where id = @id
end
go
--
if object_id('sp_tblNienKhoa_Delete')is not null
	drop proc sp_tblNienKhoa_Delete
go
create procedure sp_tblNienKhoa_Delete
@id int
as
begin
	delete from tblNienKhoa
	where id = @id
end
go
--
--4 tin chi
--
if object_id('sp_tblTinChi_SelectAll')is not null
	drop proc sp_tblTinChi_SelectAll
go
create procedure sp_tblTinChi_SelectAll
as
begin
	select ttc.matinchi, ttc.sotinchi from tblTinChi as ttc
end
go
--
if object_id('sp_tblTinChi_SelectID')is not null
	drop proc sp_tblTinChi_SelectID
go
create procedure sp_tblTinChi_SelectID
@id int
as
begin
	select ttc.matinchi, ttc.sotinchi from tblTinChi as ttc
	where id = @id
end
go
--
if object_id('sp_tblTinChi_Insert')is not null
	drop proc sp_tblTinChi_Insert
go
create procedure sp_tblTinChi_Insert
@matinchi varchar(50),
@sotinchi varchar(2)
as
begin
	insert into tblTinChi
	(
		matinchi,
		sotinchi
	)
	values
	(
		@matinchi,
		@sotinchi
	)
end
go
--
if object_id('sp_tblTinChi_Update')is not null
	drop proc sp_tblTinChi_Update
go
create procedure sp_tblTinChi_Update
@id int,
@matinchi varchar(50),
@sotinchi varchar(2)
as
begin
	update tblTinChi
	set
		matinchi = @matinchi,
		sotinchi = @sotinchi
	where id = @id
end
go
--
if object_id('sp_tblTinChi_Delete')is not null
	drop proc sp_tblTinChi_Delete
go
create procedure sp_tblTinChi_Delete
@id int
as
begin
	delete from tblTinChi
	where id = @id
end
go
--
--5 hoc ky
--
if object_id('sp_tblHocKy_SelectAll')is not null
	drop proc sp_tblHocKy_SelectAll
go
create procedure sp_tblHocKy_SelectAll
as
begin
	select thk.mahocky, thk.tenhocky from tblHocKy as thk
end
go
--
if object_id('sp_tblHocKy_SelectID')is not null
	drop proc sp_tblHocKy_SelectID
go
create procedure sp_tblHocKy_SelectID
@id int
as
begin
	select thk.mahocky, thk.tenhocky from tblHocKy as thk
	where id = @id
end
go
--
if object_id('sp_tblHocKy_Insert')is not null
	drop proc sp_tblHocKy_Insert
go
create procedure sp_tblHocKy_Insert
@mahocky varchar(50),
@tenhocky nvarchar(100)
as
begin
	insert into tblHocKy
	(
		mahocky,
		tenhocky
	)
	values
	(
		@mahocky,
		@tenhocky
	)
end
go
--
if object_id('sp_tblHocKy_Update')is not null
	drop proc sp_tblHocKy_Update
go
create procedure sp_tblHocKy_Update
@id int,
@mahocky varchar(50),
@tenhocky nvarchar(100)
as
begin
	update tblHocKy
	set
		mahocky = @mahocky,
		tenhocky = @tenhocky
	where id = @id
end
go
---
if object_id('sp_tblHocKy_Delete')is not null
	drop proc sp_tblHocKy_Delete
go
create procedure sp_tblHocKy_Delete
@id int
as
begin
	delete from tblHocKy
	where id = @id
end
go
--
--6 chuong trinh dao tao
--
if object_id('sp_tblChuongTrinhDaoTao_SelectAll')is not null
	drop proc sp_tblChuongTrinhDaoTao_SelectAll
go
create procedure sp_tblChuongTrinhDaoTao_SelectAll
as
begin
	select tctdt.machuongtrinh, tctdt.tenchuongtrinh from tblChuongTrinhDaoTao as tctdt
end
go
--
if object_id('sp_tblChuongTrinhDaoTao_SelectID')is not null
	drop proc sp_tblChuongTrinhDaoTao_SelectID
go
create procedure sp_tblChuongTrinhDaoTao_SelectID
@id int
as
begin
	select tctdt.machuongtrinh, tctdt.tenchuongtrinh from tblChuongTrinhDaoTao as tctdt
	where id = @id
end
go
--
if object_id('sp_tblChuongTrinhDaoTao_Insert')is not null
	drop proc sp_tblChuongTrinhDaoTao_Insert
go
create procedure sp_tblChuongTrinhDaoTao_Insert
@machuongtrinh varchar(50),
@tenchuongtrinh nvarchar(100)
as
begin
	insert into tblChuongTrinhDaoTao
	(
		machuongtrinh,
		tenchuongtrinh
	)
	values
	(
		@machuongtrinh,
		@tenchuongtrinh
	)
end
go
--
if object_id('sp_tblChuongTrinhDaoTao_Update')is not null
	drop proc sp_tblChuongTrinhDaoTao_Update
go
create procedure sp_tblChuongTrinhDaoTao_Update
@id int,
@machuongtrinh varchar(50),
@tenchuongtrinh nvarchar(100)
as
begin
	update tblChuongTrinhDaoTao
	set
		machuongtrinh = @machuongtrinh,
		tenchuongtrinh = @tenchuongtrinh
	where id = @id
end
go
--
if object_id('sp_tblChuongTrinhDaoTao_Delete')is not null
	drop proc sp_tblChuongTrinhDaoTao_Delete
go
create procedure sp_tblChuongTrinhDaoTao_Delete
@id int
as
begin
	delete from tblChuongTrinhDaoTao
	where id = @id
end
go
--
--7 Trang Thai
--
if object_id('sp_tblTrangThai_SelectAll')is not null
	drop proc sp_tblTrangThai_SelectAll
go
create procedure sp_tblTrangThai_SelectAll
as
begin
	select ttt.matrangthai, ttt.tentrangthai from tblTrangThai as ttt
end
go
--
if object_id('sp_tblTrangThai_SelectID')is not null
	drop proc sp_tblTrangThai_SelectID
go
create procedure sp_tblTrangThai_SelectID
@id int
as
begin
	select ttt.matrangthai, ttt.tentrangthai from tblTrangThai as ttt
	where id = @id
end
go
--
if object_id('sp_tblTrangThai_ViewSinhVien')is not null
	drop proc sp_tblTrangThai_ViewSinhVien
go
create procedure sp_tblTrangThai_ViewSinhVien
as
begin
	select a.masinhvien, a.tensinhvien, c.tenlop, b.tentrangthai 
	from tblSinhVien a
		inner join tblTrangThai b on a.idtrangthai = b.id
		inner join tblLop c on a.idlop = c.id
	order by a.id
end
go
--
if object_id('sp_tblTrangThai_Insert')is not null
	drop proc sp_tblTrangThai_Insert
go
create procedure sp_tblTrangThai_Insert
@matrangthai varchar(50),
@tentrangthai nvarchar(100)
as
begin
	insert into tblTrangThai
	(
		matrangthai,
		tentrangthai
	)
	values
	(
		@matrangthai,
		@tentrangthai
	)
end
go
--
if object_id('sp_tblTrangThai_Update')is not null
	drop proc sp_tblTrangThai_Update
go
create procedure sp_tblTrangThai_Update
@id int,
@matrangthai varchar(50),
@tentrangthai nvarchar(100)
as
begin
	update tblTrangThai
	set
		matrangthai = @matrangthai,
		tentrangthai = @tentrangthai
	where id = @id
end
go
--
if object_id('sp_tblTrangThai_Delete')is not null
	drop proc sp_tblTrangThai_Delete
go
create procedure sp_tblTrangThai_Delete
@id int
as
begin
	delete from tblTrangThai
	where id = @id
end
go
--
--8 Lop
--
if object_id('sp_tblLop_SelectAll')is not null
	drop proc sp_tblLop_SelectAll
go
create procedure sp_tblLop_SelectAll
as
begin
	select tl.idkhoa, tl.idnienkhoa, tl.malop, tl.tenlop, tl.siso from tblLop as tl
end
go
--
if object_id('sp_tblLop_SelectID')is not null
	drop proc sp_tblLop_SelectID
go
create procedure sp_tblLop_SelectID
@id int
as
begin
	select tl.idkhoa, tl.idnienkhoa, tl.malop, tl.tenlop, tl.siso from tblLop as tl
	where id = @id
end
go
--
if object_id('sp_tblLop_View')is not null
	drop proc sp_tblLop_View
go
create procedure sp_tblLop_View
as
begin
	select a.malop, a.tenlop, a.siso, b.tenkhoa, c.tennienkhoa
	from tblLop as a
		inner join tblKhoa b on a.idkhoa = b.id
		inner join tblNienKhoa c on a.idnienkhoa = c.id
end
go
--
if object_id('sp_tblLop_ViewYear')is not null
	drop proc sp_tblLop_ViewYear
go
create procedure sp_tblLop_ViewYear
as
begin
	select a.malop, a.tenlop, a.siso, b.tenkhoa, c.tennienkhoa, c.nambatdau, c.namketthuc
	from tblLop as a
		inner join tblKhoa b on a.idkhoa = b.id
		inner join tblNienKhoa c on a.idnienkhoa = c.id
end
go
--
if object_id('sp_tblLop_Insert')is not null
	drop proc sp_tblLop_Insert
go
create procedure sp_tblLop_Insert
@idkhoa int,
@idnienkhoa int,
@malop varchar(50),
@tenlop nvarchar(100),
@siso int
as
begin
	insert into tblLop
	(
		idkhoa,
		idnienkhoa,
		malop,
		tenlop,
		siso
	)
	values
	(
		@idkhoa,
		@idnienkhoa,
		@malop,
		@tenlop,
		@siso
	)
end
go
--
if object_id('sp_tblLop_Update')is not null
	drop proc sp_tblLop_Update
go
create procedure sp_tblLop_Update
@id int,
@idkhoa int,
@idnienkhoa int,
@malop varchar(50),
@tenlop nvarchar(100),
@siso int
as
begin
	update tblLop
	set
		idkhoa = @idkhoa,
		idnienkhoa = @idnienkhoa,
		malop = @malop,
		tenlop = @tenlop,
		siso = @siso
	where id = @id
end
go
--
if object_id('sp_tblLop_Delete')is not null
	drop proc sp_tblLop_Delete
go
create procedure sp_tblLop_Delete
@id int
as
begin
	delete from tblLop
	where id = @id
end
go
--
--9 Mon hoc
--
if object_id('sp_tblMonHoc_SelectAll')is not null
	drop proc sp_tblMonHoc_SelectAll
go
create procedure sp_tblMonHoc_SelectAll
as
begin
	select tmh.idchuongtrinh, tmh.idhocky, tmh.idtinchi, tmh.mamonhoc, tmh.tenmonhoc from tblMonHoc as tmh
end
go
--
if object_id('sp_tblMonHoc_SelectID')is not null
	drop proc sp_tblMonHoc_SelectID
go
create procedure sp_tblMonHoc_SelectID
@id int
as
begin
	select tmh.idchuongtrinh, tmh.idhocky, tmh.idtinchi, tmh.mamonhoc, tmh.tenmonhoc from tblMonHoc as tmh
	where id = @id
end
go
--
if object_id('sp_tblMonHoc_View')is not null
	drop proc sp_tblMonHoc_view
go
create procedure sp_tblMonHoc_View
as
begin
	select a.mamonhoc, a.tenmonhoc, b.tenchuongtrinh, c.tenhocky, d.sotinchi
	from tblMonHoc a
		inner join tblChuongTrinhDaoTao b on a.idchuongtrinh = b.id
		inner join tblHocKy c on a.idhocky = c.id
		inner join tblTinChi d on a.idtinchi = d.id
	order by a.id
end
go
--
if object_id('sp_tblMonHoc_Insert')is not null
	drop proc sp_tblMonHoc_Insert
go
create procedure sp_tblMonHoc_Insert
@idchuongtrinh int,
@idhocky int,
@idtinchi int,
@mamonhoc varchar(50),
@tenmonhoc nvarchar(100)
as
begin
	insert into tblMonHoc
	(
		idchuongtrinh,
		idhocky,
		idtinchi,
		mamonhoc,
		tenmonhoc
	)
	values
	(
		@idchuongtrinh,
		@idhocky,
		@idtinchi,
		@mamonhoc,
		@tenmonhoc
	)
end
go
--
if object_id('sp_tblMonHoc_Update')is not null
	drop proc sp_tblMonHoc_Update
go
create procedure sp_tblMonHoc_Update
@id int,
@idchuongtrinh int,
@idhocky int,
@idtinchi int,
@mamonhoc varchar(50),
@tenmonhoc nvarchar(100)
as
begin
	update tblMonHoc
	set
		idchuongtrinh = @idchuongtrinh,
		idhocky = @idhocky,
		idtinchi = @idtinchi,
		mamonhoc = @mamonhoc,
		tenmonhoc = @tenmonhoc
	where id = @id
end
go
--
if object_id('sp_tblMonHoc_Delete')is not null
	drop proc sp_tblMonHoc_Delete
go
create procedure sp_tblMonHoc_Delete
@id int
as
begin
	delete from tblMonHoc
	where id = @id
end
go
--
/*
--10 Giao Vien
--
if object_id('sp_tblGiaoVien_SelectAll')is not null
	drop proc sp_tblGiaoVien_SelectAll
go
create procedure sp_tblGiaoVien_SelectAll
as
begin
	select tgv.idchucvu, tgv.idkhoa, tgv.idmonhoc, tgv.magiaovien, tgv.tengiaovien, tgv.namsinh, tgv.gioitinh, tgv.noisinh, tgv.diachi from tblGiaoVien as tgv
end
go
--
if object_id('sp_tblGiaoVien_SelectID')is not null
	drop proc sp_tblGiaoVien_SelectID
go
create procedure sp_tblGiaoVien_SelectID
@id int
as
begin
	select tgv.idchucvu, tgv.idkhoa, tgv.idmonhoc, tgv.magiaovien, tgv.tengiaovien, tgv.namsinh, tgv.gioitinh, tgv.noisinh, tgv.diachi from tblGiaoVien as tgv
	where id = @id
end
go
--
if object_id('sp_tblGiaoVien_Insert')is not null
	drop proc sp_tblGiaoVien_Insert
go
create procedure sp_tblGiaoVien_Insert
@idchucvu int,
@idkhoa int,
@idmonhoc int,
@magiaovien varchar(50),
@tengiaovien nvarchar(100),
@namsinh date,
@gioitinh nvarchar(3),
@noisinh nvarchar(100),
@diachi nvarchar(100)
as
begin
	insert into tblGiaoVien
	(
		idchucvu,
		idkhoa,
		idmonhoc,
		magiaovien,
		tengiaovien,
		namsinh,
		gioitinh,
		noisinh,
		diachi
	)
	values
	(
		@idchucvu,
		@idkhoa,
		@idmonhoc,
		@magiaovien,
		@tengiaovien,
		@namsinh,
		@gioitinh,
		@noisinh,
		@diachi
	)
end
go
--
if object_id('sp_tblGiaoVien_Update')is not null
	drop proc sp_tblGiaoVien_Update
go
create procedure sp_tblGiaoVien_Update
@id int,
@idchucvu int,
@idkhoa int,
@idmonhoc int,
@magiaovien varchar(50),
@tengiaovien nvarchar(100),
@namsinh date,
@gioitinh nvarchar(3),
@noisinh nvarchar(100),
@diachi nvarchar(100)
as
begin
	update tblGiaoVien
	set
		idchucvu = @idchucvu,
		idkhoa = @idkhoa,
		idmonhoc = @idmonhoc,
		magiaovien = @magiaovien,
		tengiaovien = @tengiaovien,
		namsinh = @namsinh,
		gioitinh = @gioitinh,
		noisinh = @noisinh,
		diachi = @diachi
	where id = @id
end
go
--
if object_id('sp_tblGiaoVien_Delete')is not null
	drop proc sp_tblGiaoVien_Delete
go
create procedure sp_tblGiaoVien_Delete
@id int
as
begin
	delete from tblGiaoVien
	where id = @id
end
go
*/
--
--11 Sinh vien
--
if object_id('sp_tblSinhVien_SelectAll')is not null
	drop proc sp_tblSinhVien_SelectAll
go
create procedure sp_tblSinhVien_SelectAll
as
begin
	select tsv.idlop, tsv.idtrangthai, tsv.masinhvien, tsv.tensinhvien, tsv.namsinh, tsv.gioitinh, tsv.noisinh, tsv.diachi from tblSinhVien as tsv
end
go
--
if object_id('sp_tblSinhVien_SelectID')is not null
	drop proc sp_tblSinhVien_SelectID
go
create procedure sp_tblSinhVien_SelectID
@id int
as
begin
	select tsv.idlop, tsv.idtrangthai, tsv.masinhvien, tsv.tensinhvien, tsv.namsinh, tsv.gioitinh, tsv.noisinh, tsv.diachi from tblSinhVien as tsv
	where id = @id
end
go
--
if object_id('sp_tblSinhVien_View')is not null
	drop proc sp_tblSinhVien_View
go
create procedure sp_tblSinhVien_View
as
begin
	select a.masinhvien, a.tensinhvien, b.tenlop, c.tentrangthai, a.namsinh, a.gioitinh, a.noisinh, a.diachi
	from tblSinhVien a
		inner join tblLop b on a.idlop = b.id
		inner join tblTrangThai c on a.idtrangthai = c.id
	order by a.id
end
go
--
if object_id('sp_tblSinhVien_Insert')is not null
	drop proc sp_tblSinhVien_Insert
go
create procedure sp_tblSinhVien_Insert
@idlop int,
@idtrangthai int,
@masinhvien varchar(50),
@tensinhvien nvarchar(100),
@namsinh date,
@gioitinh nvarchar(3),
@noisinh nvarchar(100),
@diachi nvarchar(100)
as
begin
	insert into tblSinhVien
	(
		idlop,
		idtrangthai,
		masinhvien,
		tensinhvien,
		namsinh,
		gioitinh,
		noisinh,
		diachi
	)
	values
	(
		@idlop,
		@idtrangthai,
		@masinhvien,
		@tensinhvien,
		@namsinh,
		@gioitinh,
		@noisinh,
		@diachi
	)
end
go
--
if object_id('sp_tblSinhVien_Update')is not null
	drop proc sp_tblSinhVien_Update
go
create procedure sp_tblSinhVien_Update
@id int,
@idlop int,
@idtrangthai int,
@masinhvien varchar(50),
@tensinhvien nvarchar(100),
@namsinh date,
@gioitinh nvarchar(3),
@noisinh nvarchar(100),
@diachi nvarchar(100)
as
begin
	update tblSinhVien
	set
		idlop = @idlop,
		idtrangthai = @idtrangthai,
		masinhvien = @masinhvien,
		tensinhvien = @tensinhvien,
		namsinh = @namsinh,
		gioitinh = @gioitinh,
		noisinh = @noisinh,
		diachi = @diachi
	where id = @id
end
go
--
if object_id('sp_tblSinhVien_Delete')is not null
	drop proc sp_tblSinhVien_Delete
go
create procedure sp_tblSinhVien_Delete
@id int
as
begin
	delete from tblSinhVien
	where id = @id
end
go
--
--12 Ket qua
--
if object_id('sp_tblKetQua_SelectAll')is not null
	drop proc sp_tblKetQua_SelectAll
go
create procedure sp_tblKetQua_SelectAll
as
begin
	select tkq.idsinhvien, tkq.idmonhoc, tkq.diemtrungbinh, tkq.diemthilan1, tkq.diemthilan2, tkq.diemtongket, tkq.hanhkiem, tkq.ghichu from tblKetQua as tkq
end
go
--
if object_id('sp_tblKetQua_SelectID')is not null
	drop proc sp_tblKetQua_SelectID
go
create procedure sp_tblKetQua_SelectID
@id int
as
begin
	select tkq.idsinhvien, tkq.idmonhoc, tkq.diemtrungbinh, tkq.diemthilan1, tkq.diemthilan2, tkq.diemtongket, tkq.hanhkiem, tkq.ghichu from tblKetQua as tkq
	where id = @id
end
go
--
if object_id('sp_tblKetQua_View')is not null
	drop proc sp_tblKetQua_View
go
create procedure sp_tblKetQua_View
as
begin
	select a.masinhvien, a.tensinhvien, b.tenlop, d.tenmonhoc, e.tenchuongtrinh, f.tenhocky,c.diemthilan1, c.diemthilan2, c.diemtongket, c.diemtrungbinh
	from tblSinhVien a
		inner join tblLop b on a.idlop = b.id
		inner join tblKetQua c on a.id = c.idsinhvien
		inner join tblMonHoc d on c.idmonhoc = d.id
		inner join tblChuongTrinhDaoTao e on d.idchuongtrinh = e.id
		inner join tblHocKy f on d.idhocky = f.id
	order by a.id asc
end
go
--
if object_id('sp_tblKetQua_MonHocSinhVien')is not null
	drop proc sp_tblKetQua_MonHocSinhVien
go
create procedure sp_tblKetQua_MonHocSinhVien
as
begin
	select a.masinhvien, a.tensinhvien, b.tenlop, d.tenmonhoc, e.tenchuongtrinh, c.diemthilan1, c.diemthilan2, c.diemtongket, c.diemtrungbinh
	from tblSinhVien a
		inner join tblLop b on a.idlop = b.id
		inner join tblKetQua c on a.id = c.idsinhvien
		inner join tblMonHoc d on c.idmonhoc = d.id
		inner join tblChuongTrinhDaoTao e on d.idchuongtrinh = e.id
	order by a.id
end
go
--
if object_id('sp_tblKetQua_BangtotNghiepSinhVien')is not null
	drop proc sp_tblKetQua_BangtotNghiepSinhVien
go
create procedure sp_tblKetQua_BangtotNghiepSinhVien
as
begin
	select a.masinhvien, a.tensinhvien, b.tenlop, a.namsinh, a.gioitinh, a.noisinh, a.diachi, d.tenmonhoc, c.diemthilan1, c.diemthilan2, c.diemtongket, c.diemtrungbinh ,c.hanhkiem
	from tblSinhVien a
		inner join tblLop b on a.idlop = b.id
		inner join tblKetQua c on a.id = c.idsinhvien
		inner join tblMonHoc d on c.idmonhoc = d.id
		inner join tblChuongTrinhDaoTao e on d.idchuongtrinh = e.id
	order by a.id
end
go
--
if object_id('sp_tblKetQua_Insert')is not null
	drop proc sp_tblKetQua_Insert
go
create procedure sp_tblKetQua_Insert
@idsinhvien int,
@idmonhoc int,
@diemtrungbinh float,
@diemthilan1 float,
@diemthilan2 float,
@diemtongket float,
@hanhkiem nvarchar(100),
@ghichu nvarchar(100)
as
begin
	insert into tblKetQua
	(
		idsinhvien,
		idmonhoc,
		diemtrungbinh,
		diemthilan1,
		diemthilan2,
		diemtongket,
		hanhkiem,
		ghichu
	)
	values
	(
		@idsinhvien,
		@idmonhoc,
		@diemtrungbinh,
		@diemthilan1,
		@diemthilan2,
		@diemtongket,
		@hanhkiem,
		@ghichu
	)
end
go
--
if object_id('sp_tblKetQua_Update')is not null
	drop proc sp_tblKetQua_Update
go
create procedure sp_tblKetQua_Update
@id int,
@idsinhvien int,
@idmonhoc int,
@diemtrungbinh float,
@diemthilan1 float,
@diemthilan2 float,
@diemtongket float,
@hanhkiem nvarchar(100),
@ghichu nvarchar(100)
as
begin
	update tblKetQua
	set
		idsinhvien = @idsinhvien,
		idmonhoc = @idmonhoc,
		diemtrungbinh = @diemtrungbinh,
		diemthilan1 = @diemthilan1,
		diemthilan2 = @diemthilan2,
		diemtongket = @diemtongket,
		hanhkiem = @hanhkiem,
		ghichu = @ghichu
	where id = @id
end
go
--
if object_id('sp_tblKetQua_Delete')is not null
	drop proc sp_tblKetQua_Delete
go
create procedure sp_tblKetQua_Delete
@id int
as
begin
	delete from tblKetQua
	where id = @id
end
go
--
--13 Tai Khoan
--
if object_id('sp_tblTaiKhoan_SelectAll')is not null
	drop proc sp_tblTaiKhoan_SelectAll
go
create procedure sp_tblTaiKhoan_SelectAll
as
begin
	select ttk.tentaikhoan, ttk.matkhau, ttk.nhom from tblTaiKhoan as ttk
end
go
--
if object_id('sp_tblTaiKhoan_SelectID')is not null
	drop proc sp_tblTaiKhoan_SelectID
go
create procedure sp_tblTaiKhoan_SelectID
@id int
as
begin
	select ttk.tentaikhoan, ttk.matkhau, ttk.nhom from tblTaiKhoan as ttk
	where id = @id
end
go
--
if object_id('sp_tblTaiKhoan_Insert')is not null
	drop proc sp_tblTaiKhoan_Insert
go
create procedure sp_tblTaiKhoan_Insert
@tentaikhoan nvarchar(100),
@matkhau nvarchar(100),
@nhom nvarchar(100)
as
begin
	insert into tblTaiKhoan
	(
		tentaikhoan,
		matkhau,
		nhom
	)
	values
	(
		@tentaikhoan,
		@matkhau,
		@nhom
	)
end
go
--
if object_id('sp_tblTaiKhoan_Update')is not null
	drop proc sp_tblTaiKhoan_Update
go
create procedure sp_tblTaiKhoan_Update
@id int,
@tentaikhoan nvarchar(100),
@matkhau nvarchar(100),
@nhom nvarchar(100)
as
begin
	update tblTaiKhoan
	set
		tentaikhoan = @tentaikhoan,
		matkhau = @matkhau,
		nhom = @nhom
	where id = @id
end
go
--
if object_id('sp_tblTaiKhoan_Delete')is not null
	drop proc sp_tblTaiKhoan_Delete
go
create procedure sp_tblTaiKhoan_Delete
@id int
as
begin
	delete from tblTaiKhoan
	where id = @id
end
go
--- 
if object_id('sp_tblTaiKhoan_Check')is not null
	drop proc sp_tblTaiKhoan_Check
go
create procedure sp_tblTaiKhoan_Check
@tentaikhoan nvarchar(100),
@matkhau nvarchar(100)
as
begin
	select count(*)
	from tblTaiKhoan
	where @tentaikhoan = @tentaikhoan and @matkhau = matkhau
end
go
--
--13 Thong Tin
--
if object_id('sp_tblThongTin_SelectAll')is not null
	drop proc sp_tblThongTin_SelectAll
go
create procedure sp_tblThongTin_SelectAll
as
begin
	select ttt.hoten, ttt.chucvu, ttt.namsinh, ttt.gioitinh, ttt.diachi from tblThongTin as ttt
end
go
--
if object_id('sp_tblThongTin_SelectID')is not null
	drop proc sp_tblThongTin_SelectID
go
create procedure sp_tblThongTin_SelectID
@id int
as
begin
	select ttt.hoten, ttt.chucvu, ttt.namsinh, ttt.gioitinh, ttt.diachi from tblThongTin as ttt
	where id = @id
end
go
--
if object_id('sp_tblThongTin_View')is not null
	drop proc sp_tblThongTin_View
go
create procedure sp_tblThongTin_View

as
begin
	select b.tentaikhoan,a.hoten, a.chucvu, a.namsinh, a.gioitinh, a.diachi
	from tblThongTin a
		inner join tblTaiKhoan b on a.idtaikhoan = b.id
	order by b.id
end
go
--
if object_id('sp_tblThongTin_Insert')is not null
	drop proc sp_tblThongTin_Insert
go
create procedure sp_tblThongTin_Insert
@hoten nvarchar(100),
@chucvu nvarchar(100),
@namsinh date,
@gioitinh nvarchar(3),
@diachi nvarchar(100)
as
begin
	insert into tblThongTin
	(
		hoten,
		chucvu,
		namsinh,
		gioitinh,
		diachi
	)
	values
	(
		@hoten,
		@chucvu,
		@namsinh,
		@gioitinh,
		@diachi
	)
end
go
--
if object_id('sp_tblThongTin_Update')is not null
	drop proc sp_tblThongTin_Update
go
create procedure sp_tblThongTin_Update
@id int,
@hoten nvarchar(100),
@chucvu nvarchar(100),
@namsinh date,
@gioitinh nvarchar(3),
@diachi nvarchar(100)
as
begin
	update tblThongTin
	set
		hoten = @hoten,
		chucvu = @chucvu,
		namsinh = @namsinh,
		gioitinh = @gioitinh,
		diachi = @diachi
	where id = @id
end
go
--
if object_id('sp_tblThongTin_Delete')is not null
	drop proc sp_tblThongTin_Delete
go
create procedure sp_tblThongTin_Delete
@id int
as
begin
	delete from tblThongTin
	where id = @id
end
go
--- 
---------------------Search---------------------
--
if object_id('sp_tblMonHoc_FindDanhSachSinhVien')is not null
	drop proc sp_tblMonHoc_FindDanhSachSinhVien
go
create procedure sp_tblMonHoc_FindDanhSachSinhVien
@keyword varchar(10)
as
begin
	set @keyword = Ltrim(Rtrim(@keyword))
	select a.mamonhoc, a.tenmonhoc, c.masinhvien, c.tensinhvien 
	from tblMonHoc a
		inner join tblKetQua b on a.id = b.idmonhoc
		inner join tblSinhVien c on a.id = b.idsinhvien
	where a.mamonhoc like '%' + @keyword + '%'
end
go
--
if object_id('sp_tblSinhVien_FindKetQuaMonHocSinhVienID')is not null
	drop proc sp_tblSinhVien_FindKetQuaMonHocSinhVienID
go
create procedure sp_tblSinhVien_FindKetQuaMonHocSinhVienID
@keyword varchar(10)
as
begin
	set @keyword = Ltrim(Rtrim(@keyword))
	select distinct a.masinhvien, a.tensinhvien, b.tenlop, d.tenmonhoc, e.tenchuongtrinh, c.diemthilan1, c.diemthilan2, c.diemtongket, c.diemtrungbinh
	from tblSinhVien a
		inner join tblLop b on a.idlop = b.id
		inner join tblKetQua c on a.id = c.idsinhvien
		inner join tblMonHoc d on c.idmonhoc = d.id
		inner join tblChuongTrinhDaoTao e on d.idchuongtrinh = e.id
	where a.masinhvien like '%' + @keyword + '%'
end
go
--
if object_id('sp_tblSinhVien_FindKetQuaMonHocSinhVienName')is not null
	drop proc sp_tblSinhVien_FindKetQuaMonHocSinhVienName
go
create procedure sp_tblSinhVien_FindKetQuaMonHocSinhVienName
@keyword varchar(10)
as
begin
	set @keyword = Ltrim(Rtrim(@keyword))
	select distinct a.masinhvien, a.tensinhvien, b.tenlop, d.tenmonhoc, e.tenchuongtrinh, c.diemthilan1, c.diemthilan2, c.diemtongket, c.diemtrungbinh
	from tblSinhVien a
		inner join tblLop b on a.idlop = b.id
		inner join tblKetQua c on a.id = c.idsinhvien
		inner join tblMonHoc d on c.idmonhoc = d.id
		inner join tblChuongTrinhDaoTao e on d.idchuongtrinh = e.id
	where a.tensinhvien like '%' + @keyword + '%'
end
go
--
if object_id('sp_tblChuongTrinhDaoTao_FindDanhSachMonHocID')is not null
	drop proc sp_tblChuongTrinhDaoTao_FindDanhSachMonHocID
go
create procedure sp_tblChuongTrinhDaoTao_FindDanhSachMonHocID
@keyword varchar(10)
as
begin
	set @keyword = Ltrim(Rtrim(@keyword))
	select a.machuongtrinh, a.tenchuongtrinh, b.tenmonhoc
	from tblChuongTrinhDaoTao a
		inner join tblMonHoc b on a.id = b.idchuongtrinh
	where a.machuongtrinh like '%' + @keyword + '%'
end
go
--
if object_id('sp_tblChuongTrinhDaoTao_FindDanhSachMonHocName')is not null
	drop proc sp_tblChuongTrinhDaoTao_FindDanhSachMonHocName
go
create procedure sp_tblChuongTrinhDaoTao_FindDanhSachMonHocName
@keyword varchar(10)
as
begin
	set @keyword = Ltrim(Rtrim(@keyword))
	select a.machuongtrinh, a.tenchuongtrinh, b.tenmonhoc
	from tblChuongTrinhDaoTao a
		inner join tblMonHoc b on a.id = b.idchuongtrinh
	where a.tenchuongtrinh like '%' + @keyword + '%'
end
go
--
if object_id('sp_tblTaiKhoan_FindUserID')is not null
	drop proc sp_tblTaiKhoan_FindUserID
go
create procedure sp_tblTaiKhoan_FindUserID
@keyword varchar(10)
as
begin
	set @keyword = Ltrim(Rtrim(@keyword))
	select b.tentaikhoan, a.hoten, a.chucvu, a.namsinh, a.gioitinh, a.diachi
	from tblThongTin a
		inner join tblTaiKhoan b on a.idtaiKhoan = b.id
	where tentaikhoan like '%' + @keyword + '%'
end
go
--
if object_id('sp_tblTaiKhoan_FindUserName')is not null
	drop proc sp_tblTaiKhoan_FindUserName
go
create procedure sp_tblTaiKhoan_FindUserName
@keyword varchar(10)
as
begin
	set @keyword = Ltrim(Rtrim(@keyword))
	select b.tentaikhoan, a.hoten, a.chucvu, a.namsinh, a.gioitinh, a.diachi
	from tblThongTin a
		inner join tblTaiKhoan b on a.idtaiKhoan = b.id
	where a.hoten like '%' + @keyword + '%'
end
go
--
if object_id('sp_tblSinhVien_FindID')is not null
	drop proc sp_tblSinhVien_FindID
go
create procedure sp_tblSinhVien_FindID
@keyword varchar(10)
as
begin
	set @keyword = Ltrim(Rtrim(@keyword))
	select a.masinhvien, a.tensinhvien, b.tenlop, c.tentrangthai, a.namsinh, a.gioitinh, a.noisinh, a.diachi
	from tblSinhVien a
		inner join tblLop b on a.idlop = b.id
		inner join tblTrangThai c on a.idtrangthai = c.id
	where masinhvien like '%' + @keyword + '%'
end
go
--
if object_id('sp_tblSinhVien_FindName')is not null
	drop proc sp_tblSinhVien_FindName
go
create procedure sp_tblSinhVien_FindName
@keyword nvarchar(50)
as
begin
	set @keyword = Ltrim(Rtrim(@keyword))
	select a.masinhvien, a.tensinhvien, b.tenlop, c.tentrangthai, a.namsinh, a.gioitinh, a.noisinh, a.diachi
	from tblSinhVien a
		inner join tblLop b on a.idlop = b.id
		inner join tblTrangThai c on a.idtrangthai = c.id
	where tensinhvien like '%' + @keyword + '%'
end
go
--Check Web
--
if object_id('sp_checkAccountGroup')is not null
	drop proc sp_checkAccountGroup
go
create procedure sp_checkAccountGroup
@username nvarchar(100),
@passuser nvarchar(100)
as
begin
	declare @nhom nvarchar(15)
	set @nhom = (select nhom from tblTaiKhoan where tentaikhoan=@username and matkhau=@passuser)
	if(@nhom = N'Quản Trị Viên')
		return 0;
	else if(@nhom = N'Quản Lý Viên')
		return 1;
	else if(@nhom = N'Giảng Viên')
		return 2;
	else
		return 3;
end
--
if object_id('sp_login')is not null
	drop proc sp_login
go
create procedure sp_login
@username nvarchar(100),
@pass nvarchar(100)
as
begin
declare @id int;
set @id = (select id from tblTaiKhoan where tentaikhoan=@username and matkhau=@pass)
if(isnull(@id,0)>0)
return @id;
else
return -1;
end
--
if object_id('sp_getSinhVienID')is not null
	drop proc sp_getSinhVienID
go
create proc sp_getSinhVienID
@username nvarchar(100)
as
begin
declare @id int;
set @id = (select id from tblTaiKhoan where tentaikhoan=@username)
if(isnull(@id,0)>0)
return @id;
else
return -1;
end
--
if object_id('sp_getGiaoVienID')is not null
	drop proc sp_getGiaoVienID
go
create proc sp_getGiaoVienID
@username nvarchar(100)
as
begin
declare @id int;
set @id = (select id from tblTaiKhoan where tentaikhoan=@username)
if(isnull(@id,0)>0)
return @id;
else
return -1;
end
--
if object_id('sp_getQuanLyVienID')is not null
	drop proc sp_getQuanLyVienID
go
create proc sp_getQuanLyVienID
@username nvarchar(100)
as
begin
declare @id int;
set @id = (select id from tblTaiKhoan where tentaikhoan=@username)
if(isnull(@id,0)>0)
return @id;
else
return -1;
end
--
if object_id('sp_LoginSV')is not null
	drop proc sp_LoginSV
go
create proc sp_LoginSV
@username nvarchar(50),
@password nvarchar(10)
as
begin
Select tentaikhoan, matkhau 
from tblTaiKhoan 
Where tentaikhoan = @username AND matkhau = @password 
end
go

--change pass
if object_id('sp_changePassword')is not null
	drop proc sp_changePassword
go
create proc st_changePassword
@tentaikhoan nvarchar(100),
@passcu nvarchar(100),
@passmoi nvarchar(100)
as
begin
	declare @pass nvarchar(100);
	set @pass = (select matkhau from tblTaiKhoan where tentaikhoan=@tentaikhoan)
	if(@pass = @passcu)
	begin
		update tblTaiKhoan set matkhau = @passmoi where tentaikhoan = @tentaikhoan;
		return @@rowcount;
	end
	else
		return -1;
end




