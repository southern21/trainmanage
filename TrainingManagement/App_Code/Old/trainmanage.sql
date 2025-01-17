USE [trainmanage]
GO
/****** Object:  StoredProcedure [dbo].[sp_tblChuongTrinhDaoTao_Delete]    Script Date: 15/06/2017 11:15:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_tblChuongTrinhDaoTao_Delete]
@id int
as
begin
	delete from tblChuongTrinhDaoTao
	where id = @id
end

GO
/****** Object:  StoredProcedure [dbo].[sp_tblChuongTrinhDaoTao_Insert]    Script Date: 15/06/2017 11:15:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_tblChuongTrinhDaoTao_Insert]
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

GO
/****** Object:  StoredProcedure [dbo].[sp_tblChuongTrinhDaoTao_SelectAll]    Script Date: 15/06/2017 11:15:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_tblChuongTrinhDaoTao_SelectAll]
as
begin
	select tctdt.machuongtrinh, tctdt.tenchuongtrinh from tblChuongTrinhDaoTao as tctdt
end

GO
/****** Object:  StoredProcedure [dbo].[sp_tblChuongTrinhDaoTao_Update]    Script Date: 15/06/2017 11:15:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_tblChuongTrinhDaoTao_Update]
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

GO
/****** Object:  StoredProcedure [dbo].[sp_tblHocKy_Delete]    Script Date: 15/06/2017 11:15:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_tblHocKy_Delete]
@id int
as
begin
	delete from tblHocKy
	where id = @id
end

GO
/****** Object:  StoredProcedure [dbo].[sp_tblHocKy_Insert]    Script Date: 15/06/2017 11:15:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_tblHocKy_Insert]
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

GO
/****** Object:  StoredProcedure [dbo].[sp_tblHocKy_SelectAll]    Script Date: 15/06/2017 11:15:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_tblHocKy_SelectAll]
as
begin
	select thk.mahocky, thk.tenhocky from tblHocKy as thk
end

GO
/****** Object:  StoredProcedure [dbo].[sp_tblHocKy_Update]    Script Date: 15/06/2017 11:15:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_tblHocKy_Update]
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

GO
/****** Object:  StoredProcedure [dbo].[sp_tblKetQua_Delete]    Script Date: 15/06/2017 11:15:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_tblKetQua_Delete]
@id int
as
begin
	delete from tblKetQua
	where id = @id
end

GO
/****** Object:  StoredProcedure [dbo].[sp_tblKetQua_Insert]    Script Date: 15/06/2017 11:15:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_tblKetQua_Insert]
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

GO
/****** Object:  StoredProcedure [dbo].[sp_tblKetQua_SelectAll]    Script Date: 15/06/2017 11:15:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_tblKetQua_SelectAll]
as
begin
	select tkq.idsinhvien, tkq.idmonhoc, tkq.diemtrungbinh, tkq.diemthilan1, tkq.diemthilan2, tkq.diemtongket, tkq.hanhkiem, tkq.ghichu from tblKetQua as tkq
end

GO
/****** Object:  StoredProcedure [dbo].[sp_tblKetQua_SelectID]    Script Date: 15/06/2017 11:15:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_tblKetQua_SelectID]
@id int
as
begin
	select tkq.idsinhvien, tkq.idmonhoc, tkq.diemtrungbinh, tkq.diemthilan1, tkq.diemthilan2, tkq.diemtongket, tkq.hanhkiem, tkq.ghichu from tblKetQua as tkq
	where id = @id
end

GO
/****** Object:  StoredProcedure [dbo].[sp_tblKetQua_Update]    Script Date: 15/06/2017 11:15:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_tblKetQua_Update]
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

GO
/****** Object:  StoredProcedure [dbo].[sp_tblKhoa_Delete]    Script Date: 15/06/2017 11:15:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_tblKhoa_Delete]
@id int
as
begin
	delete from tblKhoa
	where id = @id
end

GO
/****** Object:  StoredProcedure [dbo].[sp_tblKhoa_Insert]    Script Date: 15/06/2017 11:15:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_tblKhoa_Insert]
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

GO
/****** Object:  StoredProcedure [dbo].[sp_tblKhoa_SelectAll]    Script Date: 15/06/2017 11:15:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_tblKhoa_SelectAll]
as
begin
	select tk.makhoa, tk.tenkhoa, tk.sodienthoai from tblKhoa as tk
end

GO
/****** Object:  StoredProcedure [dbo].[sp_tblKhoa_Update]    Script Date: 15/06/2017 11:15:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_tblKhoa_Update]
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

GO
/****** Object:  StoredProcedure [dbo].[sp_tblLop_Delete]    Script Date: 15/06/2017 11:15:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_tblLop_Delete]
@id int
as
begin
	delete from tblLop
	where id = @id
end

GO
/****** Object:  StoredProcedure [dbo].[sp_tblLop_Insert]    Script Date: 15/06/2017 11:15:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_tblLop_Insert]
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

GO
/****** Object:  StoredProcedure [dbo].[sp_tblLop_SelectAll]    Script Date: 15/06/2017 11:15:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_tblLop_SelectAll]
as
begin
	select tl.idkhoa, tl.idnienkhoa, tl.malop, tl.tenlop, tl.siso from tblLop as tl
end

GO
/****** Object:  StoredProcedure [dbo].[sp_tblLop_SelectID]    Script Date: 15/06/2017 11:15:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_tblLop_SelectID]
@id int
as
begin
	select tl.idkhoa, tl.idnienkhoa, tl.malop, tl.tenlop, tl.siso from tblLop as tl
	where id = @id
end

GO
/****** Object:  StoredProcedure [dbo].[sp_tblLop_Update]    Script Date: 15/06/2017 11:15:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_tblLop_Update]
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

GO
/****** Object:  StoredProcedure [dbo].[sp_tblMonHoc_Delete]    Script Date: 15/06/2017 11:15:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_tblMonHoc_Delete]
@id int
as
begin
	delete from tblMonHoc
	where id = @id
end

GO
/****** Object:  StoredProcedure [dbo].[sp_tblMonHoc_Insert]    Script Date: 15/06/2017 11:15:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_tblMonHoc_Insert]
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

GO
/****** Object:  StoredProcedure [dbo].[sp_tblMonHoc_SelectAll]    Script Date: 15/06/2017 11:15:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_tblMonHoc_SelectAll]
as
begin
	select tmh.idchuongtrinh, tmh.idhocky, tmh.idtinchi, tmh.mamonhoc, tmh.tenmonhoc from tblMonHoc as tmh
end

GO
/****** Object:  StoredProcedure [dbo].[sp_tblMonHoc_SelectID]    Script Date: 15/06/2017 11:15:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_tblMonHoc_SelectID]
@id int
as
begin
	select tmh.idchuongtrinh, tmh.idhocky, tmh.idtinchi, tmh.mamonhoc, tmh.tenmonhoc from tblMonHoc as tmh
	where id = @id
end

GO
/****** Object:  StoredProcedure [dbo].[sp_tblMonHoc_Update]    Script Date: 15/06/2017 11:15:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_tblMonHoc_Update]
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

GO
/****** Object:  StoredProcedure [dbo].[sp_tblNienKhoa_Delete]    Script Date: 15/06/2017 11:15:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_tblNienKhoa_Delete]
@id int
as
begin
	delete from tblNienKhoa
	where id = @id
end

GO
/****** Object:  StoredProcedure [dbo].[sp_tblNienKhoa_Insert]    Script Date: 15/06/2017 11:15:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_tblNienKhoa_Insert]
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

GO
/****** Object:  StoredProcedure [dbo].[sp_tblNienKhoa_SelectAll]    Script Date: 15/06/2017 11:15:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_tblNienKhoa_SelectAll]
as
begin
	select tnk.manienkhoa, tnk.tennienkhoa, tnk.nambatdau, tnk.namketthuc from tblNienKhoa as tnk
end

GO
/****** Object:  StoredProcedure [dbo].[sp_tblNienKhoa_Update]    Script Date: 15/06/2017 11:15:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_tblNienKhoa_Update]
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

GO
/****** Object:  StoredProcedure [dbo].[sp_tblSinhVien_Delete]    Script Date: 15/06/2017 11:15:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_tblSinhVien_Delete]
@id int
as
begin
	delete from tblSinhVien
	where id = @id
end

GO
/****** Object:  StoredProcedure [dbo].[sp_tblSinhVien_Insert]    Script Date: 15/06/2017 11:15:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_tblSinhVien_Insert]
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

GO
/****** Object:  StoredProcedure [dbo].[sp_tblSinhVien_SelectAll]    Script Date: 15/06/2017 11:15:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_tblSinhVien_SelectAll]
as
begin
	select tsv.idlop, tsv.idtrangthai, tsv.masinhvien, tsv.tensinhvien, tsv.namsinh, tsv.gioitinh, tsv.noisinh, tsv.diachi from tblSinhVien as tsv
end

GO
/****** Object:  StoredProcedure [dbo].[sp_tblSinhVien_SelectID]    Script Date: 15/06/2017 11:15:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_tblSinhVien_SelectID]
@id int
as
begin
	select tsv.idlop, tsv.idtrangthai, tsv.masinhvien, tsv.tensinhvien, tsv.namsinh, tsv.gioitinh, tsv.noisinh, tsv.diachi from tblSinhVien as tsv
	where id = @id
end

GO
/****** Object:  StoredProcedure [dbo].[sp_tblSinhVien_Update]    Script Date: 15/06/2017 11:15:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_tblSinhVien_Update]
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

GO
/****** Object:  StoredProcedure [dbo].[sp_tblTaiKhoan_Check]    Script Date: 15/06/2017 11:15:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_tblTaiKhoan_Check]
@tentaikhoan nvarchar(100),
@matkhau nvarchar(100),
@nhom nvarchar(100)
as
begin
	select tentaikhoan, matkhau, nhom from tblTaiKhoan
	where tentaikhoan = @tentaikhoan and matkhau = @matkhau
end

GO
/****** Object:  StoredProcedure [dbo].[sp_tblTaiKhoan_Delete]    Script Date: 15/06/2017 11:15:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_tblTaiKhoan_Delete]
@id int
as
begin
	delete from tblTaiKhoan
	where id = @id
end

GO
/****** Object:  StoredProcedure [dbo].[sp_tblTaiKhoan_Insert]    Script Date: 15/06/2017 11:15:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_tblTaiKhoan_Insert]
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

GO
/****** Object:  StoredProcedure [dbo].[sp_tblTaiKhoan_SelectAll]    Script Date: 15/06/2017 11:15:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_tblTaiKhoan_SelectAll]
as
begin
	select ttk.tentaikhoan, ttk.matkhau, ttk.nhom from tblTaiKhoan as ttk
end

GO
/****** Object:  StoredProcedure [dbo].[sp_tblTaiKhoan_SelectID]    Script Date: 15/06/2017 11:15:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_tblTaiKhoan_SelectID]
@id int
as
begin
	select ttk.tentaikhoan, ttk.matkhau, ttk.nhom from tblTaiKhoan as ttk
	where id = @id
end

GO
/****** Object:  StoredProcedure [dbo].[sp_tblTaiKhoan_Update]    Script Date: 15/06/2017 11:15:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_tblTaiKhoan_Update]
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

GO
/****** Object:  StoredProcedure [dbo].[sp_tblThongTin_Delete]    Script Date: 15/06/2017 11:15:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_tblThongTin_Delete]
@id int
as
begin
	delete from tblThongTin
	where id = @id
end

GO
/****** Object:  StoredProcedure [dbo].[sp_tblThongTin_Insert]    Script Date: 15/06/2017 11:15:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_tblThongTin_Insert]
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

GO
/****** Object:  StoredProcedure [dbo].[sp_tblThongTin_SelectAll]    Script Date: 15/06/2017 11:15:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_tblThongTin_SelectAll]
as
begin
	select ttt.hoten, ttt.chucvu, ttt.namsinh, ttt.gioitinh, ttt.diachi from tblThongTin as ttt
end

GO
/****** Object:  StoredProcedure [dbo].[sp_tblThongTin_SelectID]    Script Date: 15/06/2017 11:15:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_tblThongTin_SelectID]
@id int
as
begin
	select ttt.hoten, ttt.chucvu, ttt.namsinh, ttt.gioitinh, ttt.diachi from tblThongTin as ttt
	where id = @id
end

GO
/****** Object:  StoredProcedure [dbo].[sp_tblThongTin_Update]    Script Date: 15/06/2017 11:15:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_tblThongTin_Update]
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

GO
/****** Object:  StoredProcedure [dbo].[sp_tblTinChi_Delete]    Script Date: 15/06/2017 11:15:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_tblTinChi_Delete]
@id int
as
begin
	delete from tblTinChi
	where id = @id
end

GO
/****** Object:  StoredProcedure [dbo].[sp_tblTinChi_Insert]    Script Date: 15/06/2017 11:15:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_tblTinChi_Insert]
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

GO
/****** Object:  StoredProcedure [dbo].[sp_tblTinChi_SelectAll]    Script Date: 15/06/2017 11:15:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_tblTinChi_SelectAll]
as
begin
	select ttc.matinchi, ttc.sotinchi from tblTinChi as ttc
end

GO
/****** Object:  StoredProcedure [dbo].[sp_tblTinChi_Update]    Script Date: 15/06/2017 11:15:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_tblTinChi_Update]
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

GO
/****** Object:  StoredProcedure [dbo].[sp_tblTrangThai_Delete]    Script Date: 15/06/2017 11:15:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_tblTrangThai_Delete]
@id int
as
begin
	delete from tblTrangThai
	where id = @id
end

GO
/****** Object:  StoredProcedure [dbo].[sp_tblTrangThai_Insert]    Script Date: 15/06/2017 11:15:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_tblTrangThai_Insert]
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

GO
/****** Object:  StoredProcedure [dbo].[sp_tblTrangThai_SelectAll]    Script Date: 15/06/2017 11:15:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_tblTrangThai_SelectAll]
as
begin
	select ttt.matrangthai, ttt.tentrangthai from tblTrangThai as ttt
end

GO
/****** Object:  StoredProcedure [dbo].[sp_tblTrangThai_Update]    Script Date: 15/06/2017 11:15:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_tblTrangThai_Update]
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

GO
/****** Object:  Table [dbo].[tblChuongTrinhDaoTao]    Script Date: 15/06/2017 11:15:55 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblChuongTrinhDaoTao](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[machuongtrinh] [varchar](50) NULL,
	[tenchuongtrinh] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblHocKy]    Script Date: 15/06/2017 11:15:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblHocKy](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[mahocky] [varchar](50) NULL,
	[tenhocky] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblKetQua]    Script Date: 15/06/2017 11:15:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblKetQua](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[idsinhvien] [int] NOT NULL,
	[idmonhoc] [int] NOT NULL,
	[diemtrungbinh] [float] NULL,
	[diemthilan1] [float] NULL,
	[diemthilan2] [float] NULL,
	[diemtongket] [float] NULL,
	[hanhkiem] [nvarchar](100) NULL,
	[ghichu] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblKhoa]    Script Date: 15/06/2017 11:15:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblKhoa](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[makhoa] [varchar](50) NULL,
	[tenkhoa] [nvarchar](100) NULL,
	[sodienthoai] [varchar](11) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblLop]    Script Date: 15/06/2017 11:15:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblLop](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[idkhoa] [int] NOT NULL,
	[idnienkhoa] [int] NOT NULL,
	[malop] [varchar](50) NULL,
	[tenlop] [nvarchar](100) NULL,
	[siso] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblMonHoc]    Script Date: 15/06/2017 11:15:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblMonHoc](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[idchuongtrinh] [int] NULL,
	[idhocky] [int] NULL,
	[idtinchi] [int] NULL,
	[mamonhoc] [varchar](50) NULL,
	[tenmonhoc] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblNienKhoa]    Script Date: 15/06/2017 11:15:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblNienKhoa](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[manienkhoa] [varchar](50) NULL,
	[tennienkhoa] [nvarchar](100) NULL,
	[nambatdau] [date] NULL DEFAULT (getdate()),
	[namketthuc] [date] NULL DEFAULT (getdate()),
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblSinhVien]    Script Date: 15/06/2017 11:15:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblSinhVien](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[idlop] [int] NOT NULL,
	[idtrangthai] [int] NOT NULL,
	[masinhvien] [varchar](50) NULL,
	[tensinhvien] [nvarchar](100) NULL,
	[namsinh] [date] NULL DEFAULT (getdate()),
	[gioitinh] [nvarchar](3) NULL,
	[noisinh] [nvarchar](100) NULL,
	[diachi] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblTaiKhoan]    Script Date: 15/06/2017 11:15:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblTaiKhoan](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[tentaikhoan] [nvarchar](100) NULL,
	[matkhau] [nvarchar](100) NULL,
	[nhom] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblThongTin]    Script Date: 15/06/2017 11:15:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblThongTin](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[idTaiKhoan] [int] NOT NULL,
	[hoten] [nvarchar](100) NULL,
	[chucvu] [nvarchar](100) NULL,
	[namsinh] [date] NULL DEFAULT (getdate()),
	[gioitinh] [nvarchar](3) NULL,
	[diachi] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblTinChi]    Script Date: 15/06/2017 11:15:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblTinChi](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[matinchi] [varchar](50) NULL,
	[sotinchi] [varchar](2) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblTrangThai]    Script Date: 15/06/2017 11:15:56 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblTrangThai](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[matrangthai] [varchar](50) NULL,
	[tentrangthai] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[tblChuongTrinhDaoTao] ON 

INSERT [dbo].[tblChuongTrinhDaoTao] ([id], [machuongtrinh], [tenchuongtrinh]) VALUES (0, N'CT1', N'23')
INSERT [dbo].[tblChuongTrinhDaoTao] ([id], [machuongtrinh], [tenchuongtrinh]) VALUES (1, N'CT2', N'24')
INSERT [dbo].[tblChuongTrinhDaoTao] ([id], [machuongtrinh], [tenchuongtrinh]) VALUES (2, N'CT3', N'25')
INSERT [dbo].[tblChuongTrinhDaoTao] ([id], [machuongtrinh], [tenchuongtrinh]) VALUES (3, N'CT4', N'26')
INSERT [dbo].[tblChuongTrinhDaoTao] ([id], [machuongtrinh], [tenchuongtrinh]) VALUES (4, N'CT5', N'27')
INSERT [dbo].[tblChuongTrinhDaoTao] ([id], [machuongtrinh], [tenchuongtrinh]) VALUES (5, N'CT6', N'28')
INSERT [dbo].[tblChuongTrinhDaoTao] ([id], [machuongtrinh], [tenchuongtrinh]) VALUES (6, N'CT7', N'29')
INSERT [dbo].[tblChuongTrinhDaoTao] ([id], [machuongtrinh], [tenchuongtrinh]) VALUES (7, N'CT8', N'30')
SET IDENTITY_INSERT [dbo].[tblChuongTrinhDaoTao] OFF
SET IDENTITY_INSERT [dbo].[tblHocKy] ON 

INSERT [dbo].[tblHocKy] ([id], [mahocky], [tenhocky]) VALUES (0, N'HK1', N'Học kỳ 1')
INSERT [dbo].[tblHocKy] ([id], [mahocky], [tenhocky]) VALUES (1, N'HK2', N'Học kỳ 2')
INSERT [dbo].[tblHocKy] ([id], [mahocky], [tenhocky]) VALUES (2, N'HK3', N'Học kỳ 3')
INSERT [dbo].[tblHocKy] ([id], [mahocky], [tenhocky]) VALUES (3, N'HK4', N'Học kỳ 4')
INSERT [dbo].[tblHocKy] ([id], [mahocky], [tenhocky]) VALUES (4, N'HK5', N'Học kỳ 5')
INSERT [dbo].[tblHocKy] ([id], [mahocky], [tenhocky]) VALUES (5, N'HK6', N'Học kỳ 6')
INSERT [dbo].[tblHocKy] ([id], [mahocky], [tenhocky]) VALUES (6, N'HK7', N'Học kỳ 7')
INSERT [dbo].[tblHocKy] ([id], [mahocky], [tenhocky]) VALUES (7, N'HK8', N'Học kỳ 8')
SET IDENTITY_INSERT [dbo].[tblHocKy] OFF
SET IDENTITY_INSERT [dbo].[tblKetQua] ON 

INSERT [dbo].[tblKetQua] ([id], [idsinhvien], [idmonhoc], [diemtrungbinh], [diemthilan1], [diemthilan2], [diemtongket], [hanhkiem], [ghichu]) VALUES (0, 0, 6, 10, 3, 7, 1,5, N'Khá', N'')
INSERT [dbo].[tblKetQua] ([id], [idsinhvien], [idmonhoc], [diemtrungbinh], [diemthilan1], [diemthilan2], [diemtongket], [hanhkiem], [ghichu]) VALUES (1, 1, 1, 7,2, 7, 0, 2,9, N'T?t', N'')
INSERT [dbo].[tblKetQua] ([id], [idsinhvien], [idmonhoc], [diemtrungbinh], [diemthilan1], [diemthilan2], [diemtongket], [hanhkiem], [ghichu]) VALUES (2, 2, 2, 8,3, 8, 0, 3, N'T?t', N'')
INSERT [dbo].[tblKetQua] ([id], [idsinhvien], [idmonhoc], [diemtrungbinh], [diemthilan1], [diemthilan2], [diemtongket], [hanhkiem], [ghichu]) VALUES (3, 3, 3, 7,5, 9, 0, 2,5, N'T?t', N'')
INSERT [dbo].[tblKetQua] ([id], [idsinhvien], [idmonhoc], [diemtrungbinh], [diemthilan1], [diemthilan2], [diemtongket], [hanhkiem], [ghichu]) VALUES (4, 4, 4, 7,7, 10, 0, 3,1, N'T?t', N'')
INSERT [dbo].[tblKetQua] ([id], [idsinhvien], [idmonhoc], [diemtrungbinh], [diemthilan1], [diemthilan2], [diemtongket], [hanhkiem], [ghichu]) VALUES (5, 5, 5, 6,9, 6, 0, 2,8, N'T?t', N'')
INSERT [dbo].[tblKetQua] ([id], [idsinhvien], [idmonhoc], [diemtrungbinh], [diemthilan1], [diemthilan2], [diemtongket], [hanhkiem], [ghichu]) VALUES (6, 6, 6, 5,3, 7, 0, 2,7, N'T?t', N'')
INSERT [dbo].[tblKetQua] ([id], [idsinhvien], [idmonhoc], [diemtrungbinh], [diemthilan1], [diemthilan2], [diemtongket], [hanhkiem], [ghichu]) VALUES (7, 7, 8, 5,6, 5, 0, 2, N'Khá', N'')
INSERT [dbo].[tblKetQua] ([id], [idsinhvien], [idmonhoc], [diemtrungbinh], [diemthilan1], [diemthilan2], [diemtongket], [hanhkiem], [ghichu]) VALUES (8, 8, 8, 8,9, 6, 0, 2,6, N'T?t', N'')
INSERT [dbo].[tblKetQua] ([id], [idsinhvien], [idmonhoc], [diemtrungbinh], [diemthilan1], [diemthilan2], [diemtongket], [hanhkiem], [ghichu]) VALUES (9, 9, 7, 9,2, 3, 8, 1,8, N'Khá', N'')
SET IDENTITY_INSERT [dbo].[tblKetQua] OFF
SET IDENTITY_INSERT [dbo].[tblKhoa] ON 

INSERT [dbo].[tblKhoa] ([id], [makhoa], [tenkhoa], [sodienthoai]) VALUES (0, N'K01', N'Công nghệ thông tin và truyền thông', N'0292113114')
INSERT [dbo].[tblKhoa] ([id], [makhoa], [tenkhoa], [sodienthoai]) VALUES (1, N'K02', N'Đại cương', N'0292113113')
INSERT [dbo].[tblKhoa] ([id], [makhoa], [tenkhoa], [sodienthoai]) VALUES (2, N'K03', N'Tự nhiên', N'0292113112')
INSERT [dbo].[tblKhoa] ([id], [makhoa], [tenkhoa], [sodienthoai]) VALUES (3, N'K04', N'Công nghệ', N'0292113111')
INSERT [dbo].[tblKhoa] ([id], [makhoa], [tenkhoa], [sodienthoai]) VALUES (4, N'K05', N'Môi trường', N'0292113115')
INSERT [dbo].[tblKhoa] ([id], [makhoa], [tenkhoa], [sodienthoai]) VALUES (5, N'K06', N'Kinh tế', N'0292113116')
INSERT [dbo].[tblKhoa] ([id], [makhoa], [tenkhoa], [sodienthoai]) VALUES (6, N'K07', N'Luật', N'0292113117')
INSERT [dbo].[tblKhoa] ([id], [makhoa], [tenkhoa], [sodienthoai]) VALUES (7, N'K08', N'Nông nghiệp', N'0292113118')
INSERT [dbo].[tblKhoa] ([id], [makhoa], [tenkhoa], [sodienthoai]) VALUES (8, N'K09', N'Khoa học', N'0292113119')
SET IDENTITY_INSERT [dbo].[tblKhoa] OFF
SET IDENTITY_INSERT [dbo].[tblLop] ON 

INSERT [dbo].[tblLop] ([id], [idkhoa], [idnienkhoa], [malop], [tenlop], [siso]) VALUES (0, 1, 1, N'L01', N'Liên thông 1', 25)
INSERT [dbo].[tblLop] ([id], [idkhoa], [idnienkhoa], [malop], [tenlop], [siso]) VALUES (1, 1, 1, N'L02', N'Liên thông 2', 24)
INSERT [dbo].[tblLop] ([id], [idkhoa], [idnienkhoa], [malop], [tenlop], [siso]) VALUES (2, 1, 2, N'L03', N'Liên thông 3', 26)
INSERT [dbo].[tblLop] ([id], [idkhoa], [idnienkhoa], [malop], [tenlop], [siso]) VALUES (3, 1, 2, N'L04', N'Liên thông 4', 26)
INSERT [dbo].[tblLop] ([id], [idkhoa], [idnienkhoa], [malop], [tenlop], [siso]) VALUES (4, 1, 3, N'L05', N'Liên thông 5', 27)
INSERT [dbo].[tblLop] ([id], [idkhoa], [idnienkhoa], [malop], [tenlop], [siso]) VALUES (5, 1, 3, N'L06', N'Liên thông 6', 27)
INSERT [dbo].[tblLop] ([id], [idkhoa], [idnienkhoa], [malop], [tenlop], [siso]) VALUES (6, 1, 4, N'L07', N'Liên thông 7', 28)
INSERT [dbo].[tblLop] ([id], [idkhoa], [idnienkhoa], [malop], [tenlop], [siso]) VALUES (7, 1, 5, N'L08', N'Liên thông 8', 29)
INSERT [dbo].[tblLop] ([id], [idkhoa], [idnienkhoa], [malop], [tenlop], [siso]) VALUES (8, 1, 6, N'L09', N'Liên thông 9', 29)
SET IDENTITY_INSERT [dbo].[tblLop] OFF
SET IDENTITY_INSERT [dbo].[tblMonHoc] ON 

INSERT [dbo].[tblMonHoc] ([id], [idchuongtrinh], [idhocky], [idtinchi], [mamonhoc], [tenmonhoc]) VALUES (0, 1, 1, 3, N'MH1', N'Lập trình ứng dụng Java')
INSERT [dbo].[tblMonHoc] ([id], [idchuongtrinh], [idhocky], [idtinchi], [mamonhoc], [tenmonhoc]) VALUES (1, 1, 1, 3, N'MH2', N'Lập trình ứng dụng Windows')
INSERT [dbo].[tblMonHoc] ([id], [idchuongtrinh], [idhocky], [idtinchi], [mamonhoc], [tenmonhoc]) VALUES (2, 2, 2, 3, N'MH3', N'Lập trình ứng dụng Android')
INSERT [dbo].[tblMonHoc] ([id], [idchuongtrinh], [idhocky], [idtinchi], [mamonhoc], [tenmonhoc]) VALUES (3, 6, 2, 3, N'MH4', N'Lập trình ứng dụng macOS')
INSERT [dbo].[tblMonHoc] ([id], [idchuongtrinh], [idhocky], [idtinchi], [mamonhoc], [tenmonhoc]) VALUES (4, 7, 3, 3, N'MH5', N'Lập trình mạng')
INSERT [dbo].[tblMonHoc] ([id], [idchuongtrinh], [idhocky], [idtinchi], [mamonhoc], [tenmonhoc]) VALUES (5, 2, 3, 3, N'MH6', N'Lập trình web')
INSERT [dbo].[tblMonHoc] ([id], [idchuongtrinh], [idhocky], [idtinchi], [mamonhoc], [tenmonhoc]) VALUES (6, 4, 4, 3, N'MH7', N'Hệ quản trị cơ sở dữ liệu')
INSERT [dbo].[tblMonHoc] ([id], [idchuongtrinh], [idhocky], [idtinchi], [mamonhoc], [tenmonhoc]) VALUES (7, 3, 5, 3, N'MH8', N'Quản trị mạng')
INSERT [dbo].[tblMonHoc] ([id], [idchuongtrinh], [idhocky], [idtinchi], [mamonhoc], [tenmonhoc]) VALUES (8, 5, 6, 3, N'MH9', N'Phân tích hệ thống thông tin')
SET IDENTITY_INSERT [dbo].[tblMonHoc] OFF
SET IDENTITY_INSERT [dbo].[tblNienKhoa] ON 

INSERT [dbo].[tblNienKhoa] ([id], [manienkhoa], [tennienkhoa], [nambatdau], [namketthuc]) VALUES (0, N'NK1', N'K38', CAST(N'2012-01-01' AS Date), CAST(N'2015-01-01' AS Date))
INSERT [dbo].[tblNienKhoa] ([id], [manienkhoa], [tennienkhoa], [nambatdau], [namketthuc]) VALUES (1, N'NK2', N'K39', CAST(N'2013-01-01' AS Date), CAST(N'2016-01-01' AS Date))
INSERT [dbo].[tblNienKhoa] ([id], [manienkhoa], [tennienkhoa], [nambatdau], [namketthuc]) VALUES (2, N'NK3', N'K40', CAST(N'2014-01-01' AS Date), CAST(N'2017-01-01' AS Date))
INSERT [dbo].[tblNienKhoa] ([id], [manienkhoa], [tennienkhoa], [nambatdau], [namketthuc]) VALUES (3, N'NK4', N'K41', CAST(N'2015-01-01' AS Date), CAST(N'2018-01-01' AS Date))
INSERT [dbo].[tblNienKhoa] ([id], [manienkhoa], [tennienkhoa], [nambatdau], [namketthuc]) VALUES (4, N'NK5', N'K42', CAST(N'2016-01-01' AS Date), CAST(N'2019-01-01' AS Date))
INSERT [dbo].[tblNienKhoa] ([id], [manienkhoa], [tennienkhoa], [nambatdau], [namketthuc]) VALUES (5, N'NK6', N'K43', CAST(N'2017-01-01' AS Date), CAST(N'2020-01-01' AS Date))
INSERT [dbo].[tblNienKhoa] ([id], [manienkhoa], [tennienkhoa], [nambatdau], [namketthuc]) VALUES (6, N'NK7', N'K44', CAST(N'2018-01-01' AS Date), CAST(N'2021-01-01' AS Date))
SET IDENTITY_INSERT [dbo].[tblNienKhoa] OFF
SET IDENTITY_INSERT [dbo].[tblSinhVien] ON 

INSERT [dbo].[tblSinhVien] ([id], [idlop], [idtrangthai], [masinhvien], [tensinhvien], [namsinh], [gioitinh], [noisinh], [diachi]) VALUES (0, 1, 2, N'SV1', N'Phạm Thị J', CAST(N'1992-01-01' AS Date), N'Nữ', N'Cần Thơ', N'Cần Thơ')
INSERT [dbo].[tblSinhVien] ([id], [idlop], [idtrangthai], [masinhvien], [tensinhvien], [namsinh], [gioitinh], [noisinh], [diachi]) VALUES (1, 1, 2, N'SV2', N'Lê Văn L', CAST(N'1993-01-01' AS Date), N'Nam', N'Bạc Liêu', N'Bạc Liêu')
INSERT [dbo].[tblSinhVien] ([id], [idlop], [idtrangthai], [masinhvien], [tensinhvien], [namsinh], [gioitinh], [noisinh], [diachi]) VALUES (2, 2, 2, N'SV3', N'Huỳnh Tấn O', CAST(N'1991-01-01' AS Date), N'Nam', N'Hậu Giang', N'Hậu Giang')
INSERT [dbo].[tblSinhVien] ([id], [idlop], [idtrangthai], [masinhvien], [tensinhvien], [namsinh], [gioitinh], [noisinh], [diachi]) VALUES (3, 3, 2, N'SV4', N'Vũ Lại Y', CAST(N'1993-01-01' AS Date), N'Nữ', N'Kiên Giang', N'Kiên Giang')
INSERT [dbo].[tblSinhVien] ([id], [idlop], [idtrangthai], [masinhvien], [tensinhvien], [namsinh], [gioitinh], [noisinh], [diachi]) VALUES (4, 7, 2, N'SV5', N'Dương Chí Q', CAST(N'1994-01-01' AS Date), N'Nam', N'Tiền Giang', N'Tiền Giang')
INSERT [dbo].[tblSinhVien] ([id], [idlop], [idtrangthai], [masinhvien], [tensinhvien], [namsinh], [gioitinh], [noisinh], [diachi]) VALUES (5, 8, 2, N'SV6', N'Lý Chí X', CAST(N'1995-01-01' AS Date), N'Nam', N'An Giang', N'An Giang')
INSERT [dbo].[tblSinhVien] ([id], [idlop], [idtrangthai], [masinhvien], [tensinhvien], [namsinh], [gioitinh], [noisinh], [diachi]) VALUES (6, 4, 2, N'SV7', N'Ngô Tùng M', CAST(N'1995-01-01' AS Date), N'Nam', N'Cà Mau', N'Cà Mau')
INSERT [dbo].[tblSinhVien] ([id], [idlop], [idtrangthai], [masinhvien], [tensinhvien], [namsinh], [gioitinh], [noisinh], [diachi]) VALUES (7, 5, 2, N'SV8', N'Hồ Quý S', CAST(N'1990-01-01' AS Date), N'Nữ', N'Vĩnh Long', N'Vĩnh Long')
INSERT [dbo].[tblSinhVien] ([id], [idlop], [idtrangthai], [masinhvien], [tensinhvien], [namsinh], [gioitinh], [noisinh], [diachi]) VALUES (8, 2, 2, N'SV9', N'Đặng Bá N', CAST(N'1990-01-01' AS Date), N'Nam', N'Cần Thơ', N'Cần Thơ')
INSERT [dbo].[tblSinhVien] ([id], [idlop], [idtrangthai], [masinhvien], [tensinhvien], [namsinh], [gioitinh], [noisinh], [diachi]) VALUES (9, 6, 2, N'SV10', N'Hoàng Kim P', CAST(N'1990-01-01' AS Date), N'Nữ', N'Đồng Tháp', N'Đồng Tháp')
SET IDENTITY_INSERT [dbo].[tblSinhVien] OFF
SET IDENTITY_INSERT [dbo].[tblTaiKhoan] ON 

INSERT [dbo].[tblTaiKhoan] ([id], [tentaikhoan], [matkhau], [nhom]) VALUES (0, N'quantri', N'12345678', N'Quản trị viên')
INSERT [dbo].[tblTaiKhoan] ([id], [tentaikhoan], [matkhau], [nhom]) VALUES (1, N'quanly', N'12345678', N'Quản lý chương trình đào tạo viên')
INSERT [dbo].[tblTaiKhoan] ([id], [tentaikhoan], [matkhau], [nhom]) VALUES (2, N'gv1', N'12345678', N'Giáo viên')
INSERT [dbo].[tblTaiKhoan] ([id], [tentaikhoan], [matkhau], [nhom]) VALUES (3, N'gv2', N'12345678', N'Giáo viên')
INSERT [dbo].[tblTaiKhoan] ([id], [tentaikhoan], [matkhau], [nhom]) VALUES (4, N'gv3', N'12345678', N'Giáo viên')
INSERT [dbo].[tblTaiKhoan] ([id], [tentaikhoan], [matkhau], [nhom]) VALUES (5, N'gv4', N'12345678', N'Giáo viên')
INSERT [dbo].[tblTaiKhoan] ([id], [tentaikhoan], [matkhau], [nhom]) VALUES (6, N'gv5', N'12345678', N'Giáo viên')
INSERT [dbo].[tblTaiKhoan] ([id], [tentaikhoan], [matkhau], [nhom]) VALUES (7, N'gv6', N'12345678', N'Giáo viên')
INSERT [dbo].[tblTaiKhoan] ([id], [tentaikhoan], [matkhau], [nhom]) VALUES (8, N'gv7', N'12345678', N'Giáo viên')
INSERT [dbo].[tblTaiKhoan] ([id], [tentaikhoan], [matkhau], [nhom]) VALUES (9, N'gv8', N'12345678', N'Giáo viên')
SET IDENTITY_INSERT [dbo].[tblTaiKhoan] OFF
SET IDENTITY_INSERT [dbo].[tblThongTin] ON 

INSERT [dbo].[tblThongTin] ([id], [idTaiKhoan], [hoten], [chucvu], [namsinh], [gioitinh], [diachi]) VALUES (0, 0, N'Hùng', N'Quản trị viên', CAST(N'1993-01-01' AS Date), N'Nữ', N'Tiền Giang')
INSERT [dbo].[tblThongTin] ([id], [idTaiKhoan], [hoten], [chucvu], [namsinh], [gioitinh], [diachi]) VALUES (1, 1, N'Phát', N'Quản lý chương trình đào tạo viên', CAST(N'1994-01-01' AS Date), N'Nam', N'Cần Thơ')
INSERT [dbo].[tblThongTin] ([id], [idTaiKhoan], [hoten], [chucvu], [namsinh], [gioitinh], [diachi]) VALUES (2, 2, N'Giang', N'Giáo viên', CAST(N'1985-01-01' AS Date), N'Nam', N'Bến Tre')
INSERT [dbo].[tblThongTin] ([id], [idTaiKhoan], [hoten], [chucvu], [namsinh], [gioitinh], [diachi]) VALUES (3, 3, N'Hiếu', N'Giáo viên', CAST(N'1994-01-01' AS Date), N'Nam', N'Cà Mau')
INSERT [dbo].[tblThongTin] ([id], [idTaiKhoan], [hoten], [chucvu], [namsinh], [gioitinh], [diachi]) VALUES (4, 4, N'Khoa', N'Giáo viên', CAST(N'1994-01-01' AS Date), N'Nam', N'An Giang')
INSERT [dbo].[tblThongTin] ([id], [idTaiKhoan], [hoten], [chucvu], [namsinh], [gioitinh], [diachi]) VALUES (5, 5, N'Tâm', N'Giáo viên', CAST(N'1983-01-01' AS Date), N'Nam', N'Kiên Giang')
INSERT [dbo].[tblThongTin] ([id], [idTaiKhoan], [hoten], [chucvu], [namsinh], [gioitinh], [diachi]) VALUES (6, 6, N'Thiên', N'Giáo viên', CAST(N'1993-01-01' AS Date), N'Nam', N'Hậu Giang')
INSERT [dbo].[tblThongTin] ([id], [idTaiKhoan], [hoten], [chucvu], [namsinh], [gioitinh], [diachi]) VALUES (7, 7, N'Khánh', N'Giáo viên', CAST(N'1990-01-01' AS Date), N'Nữ', N'Vĩnh Long')
INSERT [dbo].[tblThongTin] ([id], [idTaiKhoan], [hoten], [chucvu], [namsinh], [gioitinh], [diachi]) VALUES (8, 8, N'Cường', N'Giáo viên', CAST(N'1991-01-01' AS Date), N'Nam', N'Bạc Liêu')
INSERT [dbo].[tblThongTin] ([id], [idTaiKhoan], [hoten], [chucvu], [namsinh], [gioitinh], [diachi]) VALUES (9, 9, N'Hưng', N'Giáo viên', CAST(N'1992-01-01' AS Date), N'Nam', N'Sóc Trăng')
SET IDENTITY_INSERT [dbo].[tblThongTin] OFF
SET IDENTITY_INSERT [dbo].[tblTinChi] ON 

INSERT [dbo].[tblTinChi] ([id], [matinchi], [sotinchi]) VALUES (0, N'TC1', N'1')
INSERT [dbo].[tblTinChi] ([id], [matinchi], [sotinchi]) VALUES (1, N'TC2', N'2')
INSERT [dbo].[tblTinChi] ([id], [matinchi], [sotinchi]) VALUES (2, N'TC3', N'3')
INSERT [dbo].[tblTinChi] ([id], [matinchi], [sotinchi]) VALUES (3, N'TC4', N'4')
INSERT [dbo].[tblTinChi] ([id], [matinchi], [sotinchi]) VALUES (4, N'TC5', N'5')
INSERT [dbo].[tblTinChi] ([id], [matinchi], [sotinchi]) VALUES (5, N'TC6', N'6')
SET IDENTITY_INSERT [dbo].[tblTinChi] OFF
SET IDENTITY_INSERT [dbo].[tblTrangThai] ON 

INSERT [dbo].[tblTrangThai] ([id], [matrangthai], [tentrangthai]) VALUES (0, N'TT1', N'Có ý thích')
INSERT [dbo].[tblTrangThai] ([id], [matrangthai], [tentrangthai]) VALUES (1, N'TT2', N'Đăng ký')
INSERT [dbo].[tblTrangThai] ([id], [matrangthai], [tentrangthai]) VALUES (2, N'TT3', N'Tạm hoãn')
INSERT [dbo].[tblTrangThai] ([id], [matrangthai], [tentrangthai]) VALUES (3, N'TT4', N'Chưa ghi danh')
SET IDENTITY_INSERT [dbo].[tblTrangThai] OFF
SET ANSI_PADDING ON

GO
/****** Object:  Index [UQ__tblChuon__81CD2FAE432611E2]    Script Date: 15/06/2017 11:15:56 AM ******/
ALTER TABLE [dbo].[tblChuongTrinhDaoTao] ADD UNIQUE NONCLUSTERED 
(
	[machuongtrinh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UQ__tblHocKy__99CED6854B1C1C5D]    Script Date: 15/06/2017 11:15:56 AM ******/
ALTER TABLE [dbo].[tblHocKy] ADD UNIQUE NONCLUSTERED 
(
	[mahocky] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UQ__tblKhoa__30B016834DA0F38D]    Script Date: 15/06/2017 11:15:56 AM ******/
ALTER TABLE [dbo].[tblKhoa] ADD UNIQUE NONCLUSTERED 
(
	[makhoa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UQ__tblLop__15F456FC7360A533]    Script Date: 15/06/2017 11:15:56 AM ******/
ALTER TABLE [dbo].[tblLop] ADD UNIQUE NONCLUSTERED 
(
	[malop] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UQ__tblMonHo__A2CD2A181A668149]    Script Date: 15/06/2017 11:15:56 AM ******/
ALTER TABLE [dbo].[tblMonHoc] ADD UNIQUE NONCLUSTERED 
(
	[mamonhoc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UQ__tblNienK__26044C83DDF0535A]    Script Date: 15/06/2017 11:15:56 AM ******/
ALTER TABLE [dbo].[tblNienKhoa] ADD UNIQUE NONCLUSTERED 
(
	[manienkhoa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UQ__tblSinhV__0C8D703928B570C0]    Script Date: 15/06/2017 11:15:56 AM ******/
ALTER TABLE [dbo].[tblSinhVien] ADD UNIQUE NONCLUSTERED 
(
	[masinhvien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UQ__tblTaiKh__8ADCB8A792EA42E2]    Script Date: 15/06/2017 11:15:56 AM ******/
ALTER TABLE [dbo].[tblTaiKhoan] ADD UNIQUE NONCLUSTERED 
(
	[tentaikhoan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UQ__tblTinCh__9F8BCAE67D50B61C]    Script Date: 15/06/2017 11:15:56 AM ******/
ALTER TABLE [dbo].[tblTinChi] ADD UNIQUE NONCLUSTERED 
(
	[matinchi] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UQ__tblTrang__DA24FECCEE32E7BF]    Script Date: 15/06/2017 11:15:56 AM ******/
ALTER TABLE [dbo].[tblTrangThai] ADD UNIQUE NONCLUSTERED 
(
	[matrangthai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[tblKetQua]  WITH CHECK ADD FOREIGN KEY([idmonhoc])
REFERENCES [dbo].[tblMonHoc] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tblKetQua]  WITH CHECK ADD FOREIGN KEY([idsinhvien])
REFERENCES [dbo].[tblSinhVien] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tblLop]  WITH CHECK ADD FOREIGN KEY([idkhoa])
REFERENCES [dbo].[tblKhoa] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tblLop]  WITH CHECK ADD FOREIGN KEY([idnienkhoa])
REFERENCES [dbo].[tblNienKhoa] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tblMonHoc]  WITH CHECK ADD FOREIGN KEY([idchuongtrinh])
REFERENCES [dbo].[tblChuongTrinhDaoTao] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tblMonHoc]  WITH CHECK ADD FOREIGN KEY([idhocky])
REFERENCES [dbo].[tblHocKy] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tblMonHoc]  WITH CHECK ADD FOREIGN KEY([idtinchi])
REFERENCES [dbo].[tblTinChi] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tblSinhVien]  WITH CHECK ADD FOREIGN KEY([idlop])
REFERENCES [dbo].[tblLop] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tblSinhVien]  WITH CHECK ADD FOREIGN KEY([idtrangthai])
REFERENCES [dbo].[tblTrangThai] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tblThongTin]  WITH CHECK ADD FOREIGN KEY([idTaiKhoan])
REFERENCES [dbo].[tblTaiKhoan] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
