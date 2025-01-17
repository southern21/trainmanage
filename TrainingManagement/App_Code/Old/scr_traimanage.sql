Create database trainmanage
On
(NAME = 'trainmanage_data', FILENAME = 'C:\Databases\trainmanagedata.mdf',
 SIZE = 10, MAXSIZE = 50, FILEGROWTH = 5)
Log on
(NAME = 'trainmanage_log', FILENAME = 'C:\Databases\trainmanagelog.mdf',
 SIZE = 5MB, MAXSIZE = 25MB, FILEGROWTH = 5MB)
Go

--drop Database trainmanage

use trainmanage
GO
/****** Object:  Table [dbo].[tblChucVu]    Script Date: 6/1/2017 8:55:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblChucVu](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[machucvu] [varchar](50) NULL,
	[tenchucvu] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblChuongTrinhDaoTao]    Script Date: 6/1/2017 8:55:43 PM ******/
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
/****** Object:  Table [dbo].[tblGIANG_VIEN]    Script Date: 6/1/2017 8:55:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblGIANG_VIEN](
	[MaGV] [nvarchar](10) NOT NULL,
	[TenGV] [nvarchar](30) NULL,
	[GioiTinh] [nvarchar](10) NULL,
	[Phone] [nvarchar](15) NULL,
	[Email] [nvarchar](20) NULL,
	[PhanLoaiGV] [nvarchar](20) NULL,
	[Anh] [bit] NULL,
 CONSTRAINT [PK_tblGIANG_VIEN] PRIMARY KEY CLUSTERED 
(
	[MaGV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblGiaoVien]    Script Date: 6/1/2017 8:55:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblGiaoVien](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[idchucvu] [int] NOT NULL,
	[magiaovien] [varchar](50) NULL,
	[tengiaovien] [nvarchar](100) NULL,
	[namsinh] [date] NULL,
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
/****** Object:  Table [dbo].[tblHocKy]    Script Date: 6/1/2017 8:55:43 PM ******/
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
/****** Object:  Table [dbo].[tblKET_QUA]    Script Date: 6/1/2017 8:55:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblKET_QUA](
	[MaSV] [nvarchar](10) NOT NULL,
	[HoTen] [nvarchar](50) NULL,
	[MaLop] [nvarchar](10) NULL,
	[MaMon] [nvarchar](10) NULL,
	[DiemTB] [float] NULL,
	[DiemThiLan1] [float] NULL,
	[DiemThiLan2] [float] NULL,
	[DiemTongKet] [float] NULL,
	[HanhKiem] [nvarchar](20) NULL,
	[HocKi] [int] NULL,
	[GhiChu] [nvarchar](50) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblKET_QUA2]    Script Date: 6/1/2017 8:55:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblKET_QUA2](
	[MaSV] [nvarchar](10) NULL,
	[HoTen] [nvarchar](50) NULL,
	[MaLop] [nvarchar](10) NULL,
	[TenMon] [nvarchar](50) NULL,
	[DiemThiLai] [nvarchar](50) NULL,
	[HocKi] [nvarchar](50) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblKET_QUA3]    Script Date: 6/1/2017 8:55:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblKET_QUA3](
	[MaSV] [nvarchar](10) NULL,
	[HoTen] [nvarchar](50) NULL,
	[MaLop] [nvarchar](5) NULL,
	[TenMon] [nvarchar](50) NULL,
	[DiemHocLai] [float] NULL,
	[HocKi] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblKHOA]    Script Date: 6/1/2017 8:55:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblKHOA](
	[MaKhoa] [nvarchar](10) NOT NULL,
	[TenKhoa] [nvarchar](50) NULL,
 CONSTRAINT [PK_tblKHOA] PRIMARY KEY CLUSTERED 
(
	[MaKhoa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblLOGIN]    Script Date: 6/1/2017 8:55:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblLOGIN](
	[TenDN] [nvarchar](50) NOT NULL,
	[MatKhau] [nvarchar](50) NOT NULL,
	[HoTen] [nvarchar](50) NULL,
	[GioiTinh] [nvarchar](50) NULL,
	[Phone] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[Quyen] [nvarchar](50) NULL,
 CONSTRAINT [PK_tblLOGIN] PRIMARY KEY CLUSTERED 
(
	[TenDN] ASC,
	[MatKhau] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblLOP]    Script Date: 6/1/2017 8:55:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblLOP](
	[MaKhoa] [nvarchar](10) NULL,
	[MaLop] [nvarchar](10) NOT NULL,
	[TenLop] [nvarchar](50) NULL,
 CONSTRAINT [PK_tblLOP] PRIMARY KEY CLUSTERED 
(
	[MaLop] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblMON]    Script Date: 6/1/2017 8:55:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblMON](
	[MaMon] [nvarchar](10) NOT NULL,
	[TenMon] [nvarchar](50) NOT NULL,
	[SoDVHT] [int] NULL,
	[MaGV] [nvarchar](10) NULL,
	[HocKi] [nvarchar](10) NULL,
	[MaKhoa] [nchar](10) NULL,
 CONSTRAINT [PK_tblMON_1] PRIMARY KEY CLUSTERED 
(
	[MaMon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblNienKhoa]    Script Date: 6/1/2017 8:55:43 PM ******/
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
	[nambatdau] [date] NULL,
	[namketthuc] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblSINH_VIEN]    Script Date: 6/1/2017 8:55:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblSINH_VIEN](
	[MaSv] [nvarchar](10) NOT NULL,
	[HoTen] [nvarchar](50) NULL,
	[NgaySinh] [nvarchar](10) NULL,
	[GioiTinh] [nvarchar](5) NULL,
	[DiaChi] [nvarchar](50) NULL,
	[MaLop] [nvarchar](10) NULL,
 CONSTRAINT [PK_tblSINH_VIEN] PRIMARY KEY CLUSTERED 
(
	[MaSv] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblTaiKhoan]    Script Date: 6/1/2017 8:55:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblTaiKhoan](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[tentaikhoan] [nvarchar](100) NULL,
	[matkhau] [nvarchar](100) NULL,
	[nhom] [nvarchar](100) NULL,
	[hoten] [nvarchar](100) NULL,
	[namsinh] [date] NULL,
	[gioitinh] [nvarchar](3) NULL,
	[noisinh] [nvarchar](100) NULL,
	[diachi] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblTinChi]    Script Date: 6/1/2017 8:55:43 PM ******/
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
/****** Object:  Table [dbo].[tblTrangThai]    Script Date: 6/1/2017 8:55:43 PM ******/
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
INSERT [dbo].[tblGIANG_VIEN] ([MaGV], [TenGV], [GioiTinh], [Phone], [Email], [PhanLoaiGV], [Anh]) VALUES (N'CH13      ', N'Nguyên Văn Nam                ', N'Nam       ', N'0979  05 206', N'Quocvanict@gmail.com', N'Cơ Hữu              ', NULL)
INSERT [dbo].[tblGIANG_VIEN] ([MaGV], [TenGV], [GioiTinh], [Phone], [Email], [PhanLoaiGV], [Anh]) VALUES (N'CH3       ', N'Ngô Văn Bình                  ', N'Nam', N'0125 563 231', N'                    ', N'Cơ Hữu', NULL)
INSERT [dbo].[tblGIANG_VIEN] ([MaGV], [TenGV], [GioiTinh], [Phone], [Email], [PhanLoaiGV], [Anh]) VALUES (N'CH4       ', N'Nguyễn Thị Lan', N'Nữ', N'0979  05 676', N'                    ', N'Cơ Hữu', NULL)
INSERT [dbo].[tblGIANG_VIEN] ([MaGV], [TenGV], [GioiTinh], [Phone], [Email], [PhanLoaiGV], [Anh]) VALUES (N'CH5       ', N'Lê Văn Pha', N'Nam', N'0943 423 122', N'                    ', N'', NULL)
INSERT [dbo].[tblGIANG_VIEN] ([MaGV], [TenGV], [GioiTinh], [Phone], [Email], [PhanLoaiGV], [Anh]) VALUES (N'CH6       ', N'Đỗ Thị Mai', N'Nữ', N'0123 342 321', N'                    ', N'                    ', NULL)
INSERT [dbo].[tblGIANG_VIEN] ([MaGV], [TenGV], [GioiTinh], [Phone], [Email], [PhanLoaiGV], [Anh]) VALUES (N'CH7       ', N'Phạm Văn Hoàng', N'Nam', N'0989 842 313', N'                    ', N'Cơ hữu              ', NULL)
INSERT [dbo].[tblGIANG_VIEN] ([MaGV], [TenGV], [GioiTinh], [Phone], [Email], [PhanLoaiGV], [Anh]) VALUES (N'CH8       ', N'Đỗ Thị Mơ', N'Nữ', N'0129 842 398', N'                    ', N'Thỉnh giảng', NULL)
INSERT [dbo].[tblGIANG_VIEN] ([MaGV], [TenGV], [GioiTinh], [Phone], [Email], [PhanLoaiGV], [Anh]) VALUES (N'CH9       ', N'Hoàng Thị Hà', N'Nữ', N'0988  23 239', N'                    ', N'Thỉnh giảng', NULL)
INSERT [dbo].[tblKET_QUA] ([MaSV], [HoTen], [MaLop], [MaMon], [DiemTB], [DiemThiLan1], [DiemThiLan2], [DiemTongKet], [HanhKiem], [HocKi], [GhiChu]) VALUES (N'T01', N'Phạm Văn Châu', N'08T2', N'Pascal', 7, 7, NULL, 7, N'Tốt', 1, NULL)
INSERT [dbo].[tblKET_QUA] ([MaSV], [HoTen], [MaLop], [MaMon], [DiemTB], [DiemThiLan1], [DiemThiLan2], [DiemTongKet], [HanhKiem], [HocKi], [GhiChu]) VALUES (N'T02', N'Vũ Khắc Chung', N'08T2', N'Pascal', 6, 5, NULL, 5.3, N'Khá ', 1, N'')
INSERT [dbo].[tblKET_QUA] ([MaSV], [HoTen], [MaLop], [MaMon], [DiemTB], [DiemThiLan1], [DiemThiLan2], [DiemTongKet], [HanhKiem], [HocKi], [GhiChu]) VALUES (N'T03', N'Lý Trung Đức', N'08T2', N'Pascal', 2, 1, NULL, 1.3, N'Trung bình', 1, N'Thi lại')
INSERT [dbo].[tblKET_QUA] ([MaSV], [HoTen], [MaLop], [MaMon], [DiemTB], [DiemThiLan1], [DiemThiLan2], [DiemTongKet], [HanhKiem], [HocKi], [GhiChu]) VALUES (N'T04', N'Nguyễn Thị Thu Hiền', N'08T2', N'Pascal', 5, 5, NULL, 5, N'Khá', 1, NULL)
INSERT [dbo].[tblKET_QUA] ([MaSV], [HoTen], [MaLop], [MaMon], [DiemTB], [DiemThiLan1], [DiemThiLan2], [DiemTongKet], [HanhKiem], [HocKi], [GhiChu]) VALUES (N'T05', N'Trần Minh Đoàn', N'08T2', N'Pascal', 7, 7, NULL, 7, N'Khá', 1, N'')
INSERT [dbo].[tblKET_QUA] ([MaSV], [HoTen], [MaLop], [MaMon], [DiemTB], [DiemThiLan1], [DiemThiLan2], [DiemTongKet], [HanhKiem], [HocKi], [GhiChu]) VALUES (N'T06', N'Đoàn Minh Hiếu', N'08T2', N'Pascal', 6, 6, NULL, 6, N'Tốt', 1, N'')
INSERT [dbo].[tblKET_QUA] ([MaSV], [HoTen], [MaLop], [MaMon], [DiemTB], [DiemThiLan1], [DiemThiLan2], [DiemTongKet], [HanhKiem], [HocKi], [GhiChu]) VALUES (N'TC01', N'Đặng Minh Hùng', N'TCNH1', N'CNMLN', 8, 6, NULL, 6.6, N'Tốt', 1, N'')
INSERT [dbo].[tblKET_QUA] ([MaSV], [HoTen], [MaLop], [MaMon], [DiemTB], [DiemThiLan1], [DiemThiLan2], [DiemTongKet], [HanhKiem], [HocKi], [GhiChu]) VALUES (N'TC02', N'Vũ Đức Dũng', N'TCNH1', N'CNMLN', 8, 7, NULL, 7.3, N'Tốt', 1, N'')
INSERT [dbo].[tblKET_QUA] ([MaSV], [HoTen], [MaLop], [MaMon], [DiemTB], [DiemThiLan1], [DiemThiLan2], [DiemTongKet], [HanhKiem], [HocKi], [GhiChu]) VALUES (N'TC03', N'Lê Thị Ngọc Bích', N'TCNH1', N'CNMLN', 8, 9, NULL, 8.7, N'Tốt', 1, N'')
INSERT [dbo].[tblKET_QUA] ([MaSV], [HoTen], [MaLop], [MaMon], [DiemTB], [DiemThiLan1], [DiemThiLan2], [DiemTongKet], [HanhKiem], [HocKi], [GhiChu]) VALUES (N'TC04', N'Nguyễn Văn Đạo', N'TCNH1', N'CNMLN', 7, 9, NULL, 8.4, N'Tốt', 1, N'')
INSERT [dbo].[tblKET_QUA] ([MaSV], [HoTen], [MaLop], [MaMon], [DiemTB], [DiemThiLan1], [DiemThiLan2], [DiemTongKet], [HanhKiem], [HocKi], [GhiChu]) VALUES (N'TC05', N'Nguyễn Thị Nhung', N'TCNH1', N'CNMLN', 7, 4, NULL, 4.9, N'Tốt', 1, N'')
INSERT [dbo].[tblKET_QUA] ([MaSV], [HoTen], [MaLop], [MaMon], [DiemTB], [DiemThiLan1], [DiemThiLan2], [DiemTongKet], [HanhKiem], [HocKi], [GhiChu]) VALUES (N'TC06', N'Đặng Thế Hưởng', N'TCNH1', N'CNMLN', 9, 5, NULL, 6.2, N'Tốt', 1, N'')
INSERT [dbo].[tblKET_QUA2] ([MaSV], [HoTen], [MaLop], [TenMon], [DiemThiLai], [HocKi]) VALUES (N'TC03', N'Lý Trung Đức     ', N'08T2', N'Pascal', N'6    ', N'1')
INSERT [dbo].[tblKET_QUA3] ([MaSV], [HoTen], [MaLop], [TenMon], [DiemHocLai], [HocKi]) VALUES (N'2', N'', N'08T2', N'a', 0, 1)
INSERT [dbo].[tblKET_QUA3] ([MaSV], [HoTen], [MaLop], [TenMon], [DiemHocLai], [HocKi]) VALUES (N'2', N'', N'08T2', N'a', 0, 1)
INSERT [dbo].[tblKET_QUA3] ([MaSV], [HoTen], [MaLop], [TenMon], [DiemHocLai], [HocKi]) VALUES (N'TC03', N'Lý Trung Đức     ', N'08T2', N'Pascal', 1, 1)
INSERT [dbo].[tblKHOA] ([MaKhoa], [TenKhoa]) VALUES (N'CNTT      ', N'Công nghệ thông tin             ')
INSERT [dbo].[tblKHOA] ([MaKhoa], [TenKhoa]) VALUES (N'D', N'Điện-điện tử')
INSERT [dbo].[tblKHOA] ([MaKhoa], [TenKhoa]) VALUES (N'K', N'Kế toán')
INSERT [dbo].[tblKHOA] ([MaKhoa], [TenKhoa]) VALUES (N'KT', N'Kiến trúc   ')
INSERT [dbo].[tblKHOA] ([MaKhoa], [TenKhoa]) VALUES (N'TCNH', N'Tài Chính Ngân Hàng')
INSERT [dbo].[tblLOGIN] ([TenDN], [MatKhau], [HoTen], [GioiTinh], [Phone], [Email], [Quyen]) VALUES (N'doanminhhieu', N'1234', N'Đoàn Minh Hiếu', N'Nam', N'0124 242 312', N'', N'Member')
INSERT [dbo].[tblLOGIN] ([TenDN], [MatKhau], [HoTen], [GioiTinh], [Phone], [Email], [Quyen]) VALUES (N'nguyenthinhung', N'123', N'Nguyễn Thị Nhung', N'Nữ', N'0124 532 445', N'', N'Member')
INSERT [dbo].[tblLOGIN] ([TenDN], [MatKhau], [HoTen], [GioiTinh], [Phone], [Email], [Quyen]) VALUES (N'phanxuanha', N'123', N'Hoàng Đình Khiếu', N'Nam', N'         ', N'', N'Admin')
INSERT [dbo].[tblLOGIN] ([TenDN], [MatKhau], [HoTen], [GioiTinh], [Phone], [Email], [Quyen]) VALUES (N'tranminhdoan', N'123', N'Trần Minh Đoàn', N'Nam', N'         ', N'', N'Member')
INSERT [dbo].[tblLOGIN] ([TenDN], [MatKhau], [HoTen], [GioiTinh], [Phone], [Email], [Quyen]) VALUES (N'vuducdung', N'123', N'Vũ Đức Dũng', N'Nam', NULL, NULL, N'Member')
INSERT [dbo].[tblLOGIN] ([TenDN], [MatKhau], [HoTen], [GioiTinh], [Phone], [Email], [Quyen]) VALUES (N'Vukhacchung', N'123', N'Vũ Khắc Chung', N'Nam', N'0973  53 216', N'dinhkhieu@gmail.com', N'Member')
INSERT [dbo].[tblLOP] ([MaKhoa], [MaLop], [TenLop]) VALUES (N'CNTT      ', N'06CT1', N'06CT1')
INSERT [dbo].[tblLOP] ([MaKhoa], [MaLop], [TenLop]) VALUES (N'CNTT      ', N'07CT1', N'07CT1')
INSERT [dbo].[tblLOP] ([MaKhoa], [MaLop], [TenLop]) VALUES (N'CNTT      ', N'07T1', N'07T1')
INSERT [dbo].[tblLOP] ([MaKhoa], [MaLop], [TenLop]) VALUES (N'K', N'08K1', N'08K1')
INSERT [dbo].[tblLOP] ([MaKhoa], [MaLop], [TenLop]) VALUES (N'K', N'08K2', N'08K2')
INSERT [dbo].[tblLOP] ([MaKhoa], [MaLop], [TenLop]) VALUES (N'CNTT      ', N'08T1', N'08T1')
INSERT [dbo].[tblLOP] ([MaKhoa], [MaLop], [TenLop]) VALUES (N'CNTT      ', N'08T2', N'08T2')
INSERT [dbo].[tblLOP] ([MaKhoa], [MaLop], [TenLop]) VALUES (N'D', N'D1', N'D1')
INSERT [dbo].[tblLOP] ([MaKhoa], [MaLop], [TenLop]) VALUES (N'TCNH', N'TCNH1', N'TCNH1')
INSERT [dbo].[tblMON] ([MaMon], [TenMon], [SoDVHT], [MaGV], [HocKi], [MaKhoa]) VALUES (N'CNMLN', N'Chủ nghĩa MLNin', 90, N'CH7', N'1', N'K         ')
INSERT [dbo].[tblMON] ([MaMon], [TenMon], [SoDVHT], [MaGV], [HocKi], [MaKhoa]) VALUES (N'CSDL', N'Cơ Sở Dữ Liệu', 45, N'CH9', N'2', N'CNTT      ')
INSERT [dbo].[tblMON] ([MaMon], [TenMon], [SoDVHT], [MaGV], [HocKi], [MaKhoa]) VALUES (N'Pascal', N'Pascal', 45, N'CH4', N'1', N'CNTT      ')
INSERT [dbo].[tblMON] ([MaMon], [TenMon], [SoDVHT], [MaGV], [HocKi], [MaKhoa]) VALUES (N'PPT', N'Phương Pháp tính ', 45, N'CH3', N'2', N'CNTT      ')
INSERT [dbo].[tblMON] ([MaMon], [TenMon], [SoDVHT], [MaGV], [HocKi], [MaKhoa]) VALUES (N'TCTT', N'Tài chính tiền tệ', 45, N'CH5', N'2', N'K         ')
INSERT [dbo].[tblSINH_VIEN] ([MaSv], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'T01', N'Phạm Văn Châu', N'06/09/1991', N'Nam', N'Bắc Giang', N'08T2')
INSERT [dbo].[tblSINH_VIEN] ([MaSv], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'T02', N'Vũ Khắc Chung', N'05/02/1980', N'Nam', N'Bắc Giang', N'08T2')
INSERT [dbo].[tblSINH_VIEN] ([MaSv], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'T03', N'Lý Trung Đức', N'19/01/1991', N'Nam', N'Hà Tây', N'08T2')
INSERT [dbo].[tblSINH_VIEN] ([MaSv], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'T04', N'Nguyễn Thị Thu Hiền', N'19/01/1991', N'Nữ', N'Hà Tây', N'08T2')
INSERT [dbo].[tblSINH_VIEN] ([MaSv], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'T05', N'Trần Minh Đoàn', N'24/02/1991', N'Nam', N'Hà Tĩnh', N'08T2')
INSERT [dbo].[tblSINH_VIEN] ([MaSv], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'T06', N'Nguyen van c', N'26/03/1997', N'Nam', N'drtfhtd', N'08T2')
INSERT [dbo].[tblSINH_VIEN] ([MaSv], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'T07', N'Nguyen van A', N'26/03/1997', N'Nam', N'drtfhtd', N'08T2')
INSERT [dbo].[tblSINH_VIEN] ([MaSv], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'TC01', N'Đặng Minh Hùng', N'21/03/1991', N'Nam', N'Bến Tre', N'TCNH1')
INSERT [dbo].[tblSINH_VIEN] ([MaSv], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'TC02', N'Vũ Đức Dũng', N'12/05/1991', N'Nam', N'Bình Phước', N'TCNH1')
INSERT [dbo].[tblSINH_VIEN] ([MaSv], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'TC03', N'Lê Thị Ngọc Bích', N'11/01/1991', N'Nữ', N'Bến Tre', N'TCNH1')
INSERT [dbo].[tblSINH_VIEN] ([MaSv], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'TC04', N'Nguyễn Văn Đạo', N'18/04/1991', N'Nam', N'Thành Phố Hồ Chí Minh', N'TCNH1')
INSERT [dbo].[tblSINH_VIEN] ([MaSv], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'TC05', N'Nguyễn Thị Nhung', N'11/08/1991', N'Nam', N'Thành Phố Hồ Chí Minh', N'TCNH1')
INSERT [dbo].[tblSINH_VIEN] ([MaSv], [HoTen], [NgaySinh], [GioiTinh], [DiaChi], [MaLop]) VALUES (N'TC06', N'Đặng Thế Hưởng', N'23/12/1991', N'Nam', N'Thành Phố Hồ Chí Minh', N'TCNH1')
SET ANSI_PADDING ON

GO
/****** Object:  Index [UQ__tblChucV__38D26069630F69FC]    Script Date: 6/1/2017 8:55:43 PM ******/
ALTER TABLE [dbo].[tblChucVu] ADD UNIQUE NONCLUSTERED 
(
	[machucvu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UQ__tblChuon__81CD2FAE754265D1]    Script Date: 6/1/2017 8:55:43 PM ******/
ALTER TABLE [dbo].[tblChuongTrinhDaoTao] ADD UNIQUE NONCLUSTERED 
(
	[machuongtrinh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UQ__tblGiaoV__B6DF23B8E1FBA810]    Script Date: 6/1/2017 8:55:43 PM ******/
ALTER TABLE [dbo].[tblGiaoVien] ADD UNIQUE NONCLUSTERED 
(
	[magiaovien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UQ__tblHocKy__99CED685E5E2F6DE]    Script Date: 6/1/2017 8:55:43 PM ******/
ALTER TABLE [dbo].[tblHocKy] ADD UNIQUE NONCLUSTERED 
(
	[mahocky] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UQ__tblNienK__26044C836A4E2059]    Script Date: 6/1/2017 8:55:43 PM ******/
ALTER TABLE [dbo].[tblNienKhoa] ADD UNIQUE NONCLUSTERED 
(
	[manienkhoa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UQ__tblTaiKh__8ADCB8A724870100]    Script Date: 6/1/2017 8:55:43 PM ******/
ALTER TABLE [dbo].[tblTaiKhoan] ADD UNIQUE NONCLUSTERED 
(
	[tentaikhoan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UQ__tblTinCh__9F8BCAE6A3672A19]    Script Date: 6/1/2017 8:55:43 PM ******/
ALTER TABLE [dbo].[tblTinChi] ADD UNIQUE NONCLUSTERED 
(
	[matinchi] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UQ__tblTrang__DA24FECCF853EE21]    Script Date: 6/1/2017 8:55:43 PM ******/
ALTER TABLE [dbo].[tblTrangThai] ADD UNIQUE NONCLUSTERED 
(
	[matrangthai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[tblGiaoVien] ADD  DEFAULT (getdate()) FOR [namsinh]
GO
ALTER TABLE [dbo].[tblNienKhoa] ADD  DEFAULT (getdate()) FOR [nambatdau]
GO
ALTER TABLE [dbo].[tblNienKhoa] ADD  DEFAULT (getdate()) FOR [namketthuc]
GO
ALTER TABLE [dbo].[tblTaiKhoan] ADD  DEFAULT (getdate()) FOR [namsinh]
GO
ALTER TABLE [dbo].[tblGiaoVien]  WITH CHECK ADD FOREIGN KEY([idchucvu])
REFERENCES [dbo].[tblChucVu] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tblKET_QUA]  WITH CHECK ADD  CONSTRAINT [FK_tblKET_QUA_tblMON] FOREIGN KEY([MaMon])
REFERENCES [dbo].[tblMON] ([MaMon])
GO
ALTER TABLE [dbo].[tblKET_QUA] CHECK CONSTRAINT [FK_tblKET_QUA_tblMON]
GO
ALTER TABLE [dbo].[tblKET_QUA]  WITH CHECK ADD  CONSTRAINT [FK_tblKET_QUA_tblSINH_VIEN] FOREIGN KEY([MaSV])
REFERENCES [dbo].[tblSINH_VIEN] ([MaSv])
GO
ALTER TABLE [dbo].[tblKET_QUA] CHECK CONSTRAINT [FK_tblKET_QUA_tblSINH_VIEN]
GO
ALTER TABLE [dbo].[tblLOP]  WITH CHECK ADD  CONSTRAINT [FK_tblLOP_tblKHOA] FOREIGN KEY([MaKhoa])
REFERENCES [dbo].[tblKHOA] ([MaKhoa])
GO
ALTER TABLE [dbo].[tblLOP] CHECK CONSTRAINT [FK_tblLOP_tblKHOA]
GO
ALTER TABLE [dbo].[tblMON]  WITH CHECK ADD  CONSTRAINT [FK_tblMON_tblGIANG_VIEN] FOREIGN KEY([MaGV])
REFERENCES [dbo].[tblGIANG_VIEN] ([MaGV])
GO
ALTER TABLE [dbo].[tblMON] CHECK CONSTRAINT [FK_tblMON_tblGIANG_VIEN]
GO
ALTER TABLE [dbo].[tblSINH_VIEN]  WITH CHECK ADD  CONSTRAINT [FK_tblSINH_VIEN_tblLOP] FOREIGN KEY([MaLop])
REFERENCES [dbo].[tblLOP] ([MaLop])
GO
ALTER TABLE [dbo].[tblSINH_VIEN] CHECK CONSTRAINT [FK_tblSINH_VIEN_tblLOP]
GO
