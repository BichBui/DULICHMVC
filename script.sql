USE [DULICH]
GO
/****** Object:  Table [dbo].[Tours]    Script Date: 11/19/2020 04:31:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tours](
	[tour_id] [int] IDENTITY(1,1) NOT NULL,
	[tour_ten] [nvarchar](max) NULL,
	[tour_mota] [nvarchar](max) NULL,
	[loai_id] [int] NULL,
 CONSTRAINT [PK_Tours] PRIMARY KEY CLUSTERED 
(
	[tour_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Tours] ON
INSERT [dbo].[Tours] ([tour_id], [tour_ten], [tour_mota], [loai_id]) VALUES (1, N'Vòng quanh TPHCM', N'Đi vòng vòng', 1)
INSERT [dbo].[Tours] ([tour_id], [tour_ten], [tour_mota], [loai_id]) VALUES (2, N'Vòng quanh Hà Nội', N'Đi vòng vòng', 1)
INSERT [dbo].[Tours] ([tour_id], [tour_ten], [tour_mota], [loai_id]) VALUES (3, N'Chuyến đi Tây Đô', N'Sinh hoạt văn hóa', 1)
INSERT [dbo].[Tours] ([tour_id], [tour_ten], [tour_mota], [loai_id]) VALUES (4, N'Thăm vườn dâu thủy canh Đà Lạt', N'Thăm và ăn dâu tươi', 3)
INSERT [dbo].[Tours] ([tour_id], [tour_ten], [tour_mota], [loai_id]) VALUES (5, N'Tham gia lễ hội Cồng chiêng Tây Nguyên', N'Sinh hoạt văn hóa', 2)
SET IDENTITY_INSERT [dbo].[Tours] OFF
/****** Object:  Table [dbo].[Tour_nhanvien]    Script Date: 11/19/2020 04:31:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tour_nhanvien](
	[nv_id] [int] IDENTITY(1,1) NOT NULL,
	[nv_ten] [nvarchar](max) NULL,
	[nv_sdt] [nvarchar](max) NULL,
	[nv_ngaysinh] [datetime2](7) NOT NULL,
	[nv_email] [nvarchar](max) NULL,
	[nv_nhiemvu] [nvarchar](max) NULL,
 CONSTRAINT [PK_Tour_nhanvien] PRIMARY KEY CLUSTERED 
(
	[nv_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Tour_nhanvien] ON
INSERT [dbo].[Tour_nhanvien] ([nv_id], [nv_ten], [nv_sdt], [nv_ngaysinh], [nv_email], [nv_nhiemvu]) VALUES (1, N'Nguyễn Thị Băng Châu', N'0868342129', CAST(0x07000000000061230B AS DateTime2), N'chaunguyen@gmail.com', N'Hướng dẫn viên')
INSERT [dbo].[Tour_nhanvien] ([nv_id], [nv_ten], [nv_sdt], [nv_ngaysinh], [nv_email], [nv_nhiemvu]) VALUES (2, N'Bùi Thị Bích', NULL, CAST(0x070000000000B3220B AS DateTime2), N'bichbui@gmail.com', N'Hướng dẫn viên')
INSERT [dbo].[Tour_nhanvien] ([nv_id], [nv_ten], [nv_sdt], [nv_ngaysinh], [nv_email], [nv_nhiemvu]) VALUES (3, N'Cao Phương Dung', NULL, CAST(0x070000000000E0230B AS DateTime2), N'dungcao@gmail.com', N'Hướng dẫn viên')
INSERT [dbo].[Tour_nhanvien] ([nv_id], [nv_ten], [nv_sdt], [nv_ngaysinh], [nv_email], [nv_nhiemvu]) VALUES (4, N'Diên Hoài Dương', NULL, CAST(0x0700000000009A220B AS DateTime2), N'duongdien@gmail.com', N'Lái xe')
SET IDENTITY_INSERT [dbo].[Tour_nhanvien] OFF
/****** Object:  Table [dbo].[Tour_nguoidi]    Script Date: 11/19/2020 04:31:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tour_nguoidi](
	[nguoidi_id] [int] IDENTITY(1,1) NOT NULL,
	[doan_id] [int] NOT NULL,
	[nguoidi_dsnhanvien] [nvarchar](max) NULL,
	[nguoidi_dskhach] [nvarchar](max) NULL,
 CONSTRAINT [PK_Tour_nguoidi] PRIMARY KEY CLUSTERED 
(
	[nguoidi_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Tour_nguoidi] ON
INSERT [dbo].[Tour_nguoidi] ([nguoidi_id], [doan_id], [nguoidi_dsnhanvien], [nguoidi_dskhach]) VALUES (1, 1, N'[''Nguyễn Thị Băng Châu'',''Bùi Thị Bích'']', N'[''Khách 1'',''Khách 2'']')
INSERT [dbo].[Tour_nguoidi] ([nguoidi_id], [doan_id], [nguoidi_dsnhanvien], [nguoidi_dskhach]) VALUES (2, 3, N'[''Cao Phương Dung'',''Diên Hoài Dương'']', N'[''Khách 3'',''Khách 4'']')
INSERT [dbo].[Tour_nguoidi] ([nguoidi_id], [doan_id], [nguoidi_dsnhanvien], [nguoidi_dskhach]) VALUES (3, 4, N'[''Nguyễn Thị Băng Châu'',''Bùi Thị Bích'']', N'[''Khách 1'',''Khách 2'']')
INSERT [dbo].[Tour_nguoidi] ([nguoidi_id], [doan_id], [nguoidi_dsnhanvien], [nguoidi_dskhach]) VALUES (4, 6, N'[''Cao Phương Dung'',''Diên Hoài Dương'']', N'[''Khách 1'',''Khách 2'']')
INSERT [dbo].[Tour_nguoidi] ([nguoidi_id], [doan_id], [nguoidi_dsnhanvien], [nguoidi_dskhach]) VALUES (5, 7, N'[''Nguyễn Thị Băng Châu'',''Bùi Thị Bích'']', N'[''Khách 1'',''Khách 2'']')
INSERT [dbo].[Tour_nguoidi] ([nguoidi_id], [doan_id], [nguoidi_dsnhanvien], [nguoidi_dskhach]) VALUES (6, 8, N'[''Cao Phương Dung'',''Diên Hoài Dương'']', N'[''Khách 1'',''Khách 2'']')
INSERT [dbo].[Tour_nguoidi] ([nguoidi_id], [doan_id], [nguoidi_dsnhanvien], [nguoidi_dskhach]) VALUES (7, 9, N'[''Nguyễn Thị Băng Châu'',''Bùi Thị Bích'']', N'[''Khách 1'',''Khách 2'']')
INSERT [dbo].[Tour_nguoidi] ([nguoidi_id], [doan_id], [nguoidi_dsnhanvien], [nguoidi_dskhach]) VALUES (8, 10, N'[''Cao Phương Dung'',''Diên Hoài Dương'']', N'[''Khách 1'',''Khách 2'']')
INSERT [dbo].[Tour_nguoidi] ([nguoidi_id], [doan_id], [nguoidi_dsnhanvien], [nguoidi_dskhach]) VALUES (9, 11, N'[''Nguyễn Thị Băng Châu'',''Bùi Thị Bích'']', N'[''Khách 1'',''Khách 2'']')
SET IDENTITY_INSERT [dbo].[Tour_nguoidi] OFF
/****** Object:  Table [dbo].[Tour_loaichiphi]    Script Date: 11/19/2020 04:31:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tour_loaichiphi](
	[cp_id] [int] IDENTITY(1,1) NOT NULL,
	[cp_ten] [nvarchar](max) NULL,
	[cp_mota] [nvarchar](max) NULL,
 CONSTRAINT [PK_Tour_loaichiphi] PRIMARY KEY CLUSTERED 
(
	[cp_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Tour_loaichiphi] ON
INSERT [dbo].[Tour_loaichiphi] ([cp_id], [cp_ten], [cp_mota]) VALUES (1, N'Ăn uống', N'Chi phí ăn uống')
INSERT [dbo].[Tour_loaichiphi] ([cp_id], [cp_ten], [cp_mota]) VALUES (2, N'Đi lại', N'Xăng, xe')
INSERT [dbo].[Tour_loaichiphi] ([cp_id], [cp_ten], [cp_mota]) VALUES (3, N'Nơi ở', N'Phòng  trọ, khách sạn, homestay')
INSERT [dbo].[Tour_loaichiphi] ([cp_id], [cp_ten], [cp_mota]) VALUES (4, N'Phí tham quan', N'Vé vào cổng, vé trò chơi')
SET IDENTITY_INSERT [dbo].[Tour_loaichiphi] OFF
/****** Object:  Table [dbo].[Tour_loai]    Script Date: 11/19/2020 04:31:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tour_loai](
	[loai_id] [int] IDENTITY(1,1) NOT NULL,
	[loai_ten] [nvarchar](max) NULL,
	[loai_mota] [nvarchar](max) NULL,
 CONSTRAINT [PK_Tour_loai] PRIMARY KEY CLUSTERED 
(
	[loai_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Tour_loai] ON
INSERT [dbo].[Tour_loai] ([loai_id], [loai_ten], [loai_mota]) VALUES (1, N'Du lịch tham quan', N'Đi thăm thú')
INSERT [dbo].[Tour_loai] ([loai_id], [loai_ten], [loai_mota]) VALUES (2, N'Du lịch văn hóa', N'Sinh hoạt văn hóa')
INSERT [dbo].[Tour_loai] ([loai_id], [loai_ten], [loai_mota]) VALUES (3, N'Du lịch sinh thái', N'Sinh hoạt sinh thái')
SET IDENTITY_INSERT [dbo].[Tour_loai] OFF
/****** Object:  Table [dbo].[Tour_khachhang]    Script Date: 11/19/2020 04:31:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tour_khachhang](
	[kh_id] [int] IDENTITY(1,1) NOT NULL,
	[kh_ten] [nvarchar](max) NULL,
	[kh_sdt] [nvarchar](max) NULL,
	[kh_ngaysinh] [datetime2](7) NOT NULL,
	[kh_email] [nvarchar](max) NULL,
	[kh_cmnd] [nvarchar](max) NULL,
 CONSTRAINT [PK_Tour_khachhang] PRIMARY KEY CLUSTERED 
(
	[kh_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Tour_khachhang] ON
INSERT [dbo].[Tour_khachhang] ([kh_id], [kh_ten], [kh_sdt], [kh_ngaysinh], [kh_email], [kh_cmnd]) VALUES (2, N'Khách 1', N'0167858757', CAST(0x070000000000B3220B AS DateTime2), N'khach1@gmail.com', N'251094199')
INSERT [dbo].[Tour_khachhang] ([kh_id], [kh_ten], [kh_sdt], [kh_ngaysinh], [kh_email], [kh_cmnd]) VALUES (3, N'Khách 2', N'0167858757', CAST(0x070000000000B3220B AS DateTime2), N'khach1@gmail.com', N'251094199')
INSERT [dbo].[Tour_khachhang] ([kh_id], [kh_ten], [kh_sdt], [kh_ngaysinh], [kh_email], [kh_cmnd]) VALUES (4, N'Khách 3', N'0167858757', CAST(0x070000000000B3220B AS DateTime2), N'khach1@gmail.com', N'251094199')
INSERT [dbo].[Tour_khachhang] ([kh_id], [kh_ten], [kh_sdt], [kh_ngaysinh], [kh_email], [kh_cmnd]) VALUES (5, N'Khách 4', N'0167858757', CAST(0x070000000000B3220B AS DateTime2), N'khach1@gmail.com', N'251094199')
INSERT [dbo].[Tour_khachhang] ([kh_id], [kh_ten], [kh_sdt], [kh_ngaysinh], [kh_email], [kh_cmnd]) VALUES (6, N'Khách 5', N'0167858757', CAST(0x070000000000B3220B AS DateTime2), N'khach1@gmail.com', N'251094199')
INSERT [dbo].[Tour_khachhang] ([kh_id], [kh_ten], [kh_sdt], [kh_ngaysinh], [kh_email], [kh_cmnd]) VALUES (7, N'Khách 6', N'0167858757', CAST(0x070000000000B3220B AS DateTime2), N'khach1@gmail.com', N'251094199')
INSERT [dbo].[Tour_khachhang] ([kh_id], [kh_ten], [kh_sdt], [kh_ngaysinh], [kh_email], [kh_cmnd]) VALUES (8, N'Khách 7', N'0167858757', CAST(0x070000000000B3220B AS DateTime2), N'khach1@gmail.com', N'251094199')
INSERT [dbo].[Tour_khachhang] ([kh_id], [kh_ten], [kh_sdt], [kh_ngaysinh], [kh_email], [kh_cmnd]) VALUES (9, N'Khách 8', N'0167858757', CAST(0x070000000000B3220B AS DateTime2), N'khach1@gmail.com', N'251094199')
INSERT [dbo].[Tour_khachhang] ([kh_id], [kh_ten], [kh_sdt], [kh_ngaysinh], [kh_email], [kh_cmnd]) VALUES (10, N'Khách 9', N'0167858757', CAST(0x070000000000B3220B AS DateTime2), N'khach1@gmail.com', N'251094199')
INSERT [dbo].[Tour_khachhang] ([kh_id], [kh_ten], [kh_sdt], [kh_ngaysinh], [kh_email], [kh_cmnd]) VALUES (11, N'Khách 10', N'0167858757', CAST(0x070000000000B3220B AS DateTime2), N'khach1@gmail.com', N'251094199')
INSERT [dbo].[Tour_khachhang] ([kh_id], [kh_ten], [kh_sdt], [kh_ngaysinh], [kh_email], [kh_cmnd]) VALUES (12, N'Khách 11', N'0167858757', CAST(0x070000000000B3220B AS DateTime2), N'khach1@gmail.com', N'251094199')
INSERT [dbo].[Tour_khachhang] ([kh_id], [kh_ten], [kh_sdt], [kh_ngaysinh], [kh_email], [kh_cmnd]) VALUES (13, N'Khách 12', N'0167858757', CAST(0x070000000000B3220B AS DateTime2), N'khach1@gmail.com', N'251094199')
INSERT [dbo].[Tour_khachhang] ([kh_id], [kh_ten], [kh_sdt], [kh_ngaysinh], [kh_email], [kh_cmnd]) VALUES (14, N'Khách 13', N'0167858757', CAST(0x070000000000B3220B AS DateTime2), N'khach1@gmail.com', N'251094199')
INSERT [dbo].[Tour_khachhang] ([kh_id], [kh_ten], [kh_sdt], [kh_ngaysinh], [kh_email], [kh_cmnd]) VALUES (15, N'Khách 14', N'0167858757', CAST(0x070000000000B3220B AS DateTime2), N'khach1@gmail.com', N'251094199')
INSERT [dbo].[Tour_khachhang] ([kh_id], [kh_ten], [kh_sdt], [kh_ngaysinh], [kh_email], [kh_cmnd]) VALUES (16, N'Khách 15', N'0167858757', CAST(0x070000000000B3220B AS DateTime2), N'khach1@gmail.com', N'251094199')
INSERT [dbo].[Tour_khachhang] ([kh_id], [kh_ten], [kh_sdt], [kh_ngaysinh], [kh_email], [kh_cmnd]) VALUES (17, N'Khách 16', N'0167858757', CAST(0x070000000000B3220B AS DateTime2), N'khach1@gmail.com', N'251094199')
INSERT [dbo].[Tour_khachhang] ([kh_id], [kh_ten], [kh_sdt], [kh_ngaysinh], [kh_email], [kh_cmnd]) VALUES (18, N'Khách 17', N'0167858757', CAST(0x070000000000B3220B AS DateTime2), N'khach1@gmail.com', N'251094199')
INSERT [dbo].[Tour_khachhang] ([kh_id], [kh_ten], [kh_sdt], [kh_ngaysinh], [kh_email], [kh_cmnd]) VALUES (19, N'Khách 18', N'0167858757', CAST(0x070000000000B3220B AS DateTime2), N'khach1@gmail.com', N'251094199')
INSERT [dbo].[Tour_khachhang] ([kh_id], [kh_ten], [kh_sdt], [kh_ngaysinh], [kh_email], [kh_cmnd]) VALUES (20, N'Khách 19', N'0167858757', CAST(0x070000000000B3220B AS DateTime2), N'khach1@gmail.com', N'251094199')
SET IDENTITY_INSERT [dbo].[Tour_khachhang] OFF
/****** Object:  Table [dbo].[Tour_gia]    Script Date: 11/19/2020 04:31:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tour_gia](
	[gia_id] [int] IDENTITY(1,1) NOT NULL,
	[gia_sotien] [float] NOT NULL,
	[tour_id] [int] NOT NULL,
	[gia_tungay] [datetime2](7) NOT NULL,
	[gia_denngay] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_Tour_gia] PRIMARY KEY CLUSTERED 
(
	[gia_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Tour_gia] ON
INSERT [dbo].[Tour_gia] ([gia_id], [gia_sotien], [tour_id], [gia_tungay], [gia_denngay]) VALUES (1, 1000000, 1, CAST(0x070000000000C1410B AS DateTime2), CAST(0x070000000000D3410B AS DateTime2))
INSERT [dbo].[Tour_gia] ([gia_id], [gia_sotien], [tour_id], [gia_tungay], [gia_denngay]) VALUES (2, 1500000, 1, CAST(0x070000000000D4410B AS DateTime2), CAST(0x070000000000DE410B AS DateTime2))
INSERT [dbo].[Tour_gia] ([gia_id], [gia_sotien], [tour_id], [gia_tungay], [gia_denngay]) VALUES (3, 1000000, 2, CAST(0x070000000000C1410B AS DateTime2), CAST(0x070000000000D3410B AS DateTime2))
INSERT [dbo].[Tour_gia] ([gia_id], [gia_sotien], [tour_id], [gia_tungay], [gia_denngay]) VALUES (4, 700000, 4, CAST(0x070000000000C1410B AS DateTime2), CAST(0x070000000000DE410B AS DateTime2))
INSERT [dbo].[Tour_gia] ([gia_id], [gia_sotien], [tour_id], [gia_tungay], [gia_denngay]) VALUES (5, 4000000, 3, CAST(0x070000000000C1410B AS DateTime2), CAST(0x070000000000D3410B AS DateTime2))
INSERT [dbo].[Tour_gia] ([gia_id], [gia_sotien], [tour_id], [gia_tungay], [gia_denngay]) VALUES (6, 5000000, 3, CAST(0x070000000000D4410B AS DateTime2), CAST(0x070000000000DE410B AS DateTime2))
INSERT [dbo].[Tour_gia] ([gia_id], [gia_sotien], [tour_id], [gia_tungay], [gia_denngay]) VALUES (7, 700000, 5, CAST(0x070000000000C1410B AS DateTime2), CAST(0x070000000000DE410B AS DateTime2))
SET IDENTITY_INSERT [dbo].[Tour_gia] OFF
/****** Object:  Table [dbo].[Tour_doan]    Script Date: 11/19/2020 04:31:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tour_doan](
	[doan_id] [int] IDENTITY(1,1) NOT NULL,
	[tour_id] [int] NOT NULL,
	[gia_id] [int] NOT NULL,
	[doan_name] [nvarchar](max) NULL,
	[doan_ngaydi] [datetime2](7) NOT NULL,
	[doan_ngayve] [datetime2](7) NOT NULL,
	[doan_chitietchuongtrinh] [nvarchar](max) NULL,
 CONSTRAINT [PK_Tour_doan] PRIMARY KEY CLUSTERED 
(
	[doan_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Tour_doan] ON
INSERT [dbo].[Tour_doan] ([doan_id], [tour_id], [gia_id], [doan_name], [doan_ngaydi], [doan_ngayve], [doan_chitietchuongtrinh]) VALUES (1, 1, 1, N'Đoàn đại học Sài Gòn', CAST(0x070000000000CB410B AS DateTime2), CAST(0x070000000000CB410B AS DateTime2), NULL)
INSERT [dbo].[Tour_doan] ([doan_id], [tour_id], [gia_id], [doan_name], [doan_ngaydi], [doan_ngayve], [doan_chitietchuongtrinh]) VALUES (3, 1, 2, N'Đoàn đại học Sư phạm', CAST(0x070000000000D4410B AS DateTime2), CAST(0x070000000000D4410B AS DateTime2), NULL)
INSERT [dbo].[Tour_doan] ([doan_id], [tour_id], [gia_id], [doan_name], [doan_ngaydi], [doan_ngayve], [doan_chitietchuongtrinh]) VALUES (4, 2, 3, N'Đoàn đại học Bách khoa', CAST(0x070000000000CE410B AS DateTime2), CAST(0x070000000000CE410B AS DateTime2), NULL)
INSERT [dbo].[Tour_doan] ([doan_id], [tour_id], [gia_id], [doan_name], [doan_ngaydi], [doan_ngayve], [doan_chitietchuongtrinh]) VALUES (6, 2, 3, N'Đoàn đại học Tự nhiên', CAST(0x070000000000CC410B AS DateTime2), CAST(0x070000000000CC410B AS DateTime2), NULL)
INSERT [dbo].[Tour_doan] ([doan_id], [tour_id], [gia_id], [doan_name], [doan_ngaydi], [doan_ngayve], [doan_chitietchuongtrinh]) VALUES (7, 4, 4, N'Đoàn đại học Công nghiệp', CAST(0x070000000000D0410B AS DateTime2), CAST(0x070000000000D0410B AS DateTime2), NULL)
INSERT [dbo].[Tour_doan] ([doan_id], [tour_id], [gia_id], [doan_name], [doan_ngaydi], [doan_ngayve], [doan_chitietchuongtrinh]) VALUES (8, 3, 5, N'Đoàn đại học Tôn Đức Thắng', CAST(0x070000000000C7410B AS DateTime2), CAST(0x070000000000CA410B AS DateTime2), NULL)
INSERT [dbo].[Tour_doan] ([doan_id], [tour_id], [gia_id], [doan_name], [doan_ngaydi], [doan_ngayve], [doan_chitietchuongtrinh]) VALUES (9, 3, 5, N'Đoàn đại học Văn Lang', CAST(0x070000000000CB410B AS DateTime2), CAST(0x070000000000CE410B AS DateTime2), NULL)
INSERT [dbo].[Tour_doan] ([doan_id], [tour_id], [gia_id], [doan_name], [doan_ngaydi], [doan_ngayve], [doan_chitietchuongtrinh]) VALUES (10, 3, 6, N'Đoàn đại học Mở TPHCM', CAST(0x070000000000D4410B AS DateTime2), CAST(0x070000000000D7410B AS DateTime2), NULL)
INSERT [dbo].[Tour_doan] ([doan_id], [tour_id], [gia_id], [doan_name], [doan_ngaydi], [doan_ngayve], [doan_chitietchuongtrinh]) VALUES (11, 5, 7, N'Đoàn đại học Tài chính', CAST(0x070000000000CE410B AS DateTime2), CAST(0x070000000000CE410B AS DateTime2), N'')
SET IDENTITY_INSERT [dbo].[Tour_doan] OFF
/****** Object:  Table [dbo].[Tour_diadiem]    Script Date: 11/19/2020 04:31:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tour_diadiem](
	[dd_id] [int] IDENTITY(1,1) NOT NULL,
	[dd_thanhpho] [nvarchar](max) NULL,
	[dd_ten] [nvarchar](max) NULL,
	[dd_mota] [nvarchar](max) NULL,
 CONSTRAINT [PK_Tour_diadiem] PRIMARY KEY CLUSTERED 
(
	[dd_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Tour_diadiem] ON
INSERT [dbo].[Tour_diadiem] ([dd_id], [dd_thanhpho], [dd_ten], [dd_mota]) VALUES (1, N'TPHCM', N'Nhà thờ Đức Bà', N'Nhà thờ')
INSERT [dbo].[Tour_diadiem] ([dd_id], [dd_thanhpho], [dd_ten], [dd_mota]) VALUES (2, N'TPHCM', N'Công viên Ánh sáng', N'Quận 9')
INSERT [dbo].[Tour_diadiem] ([dd_id], [dd_thanhpho], [dd_ten], [dd_mota]) VALUES (3, N'TPHCM', N'Đầm Sen', N'Công viên nước')
INSERT [dbo].[Tour_diadiem] ([dd_id], [dd_thanhpho], [dd_ten], [dd_mota]) VALUES (4, N'TPHCM', N'Thảo cầm viên', N'Sở Thú')
INSERT [dbo].[Tour_diadiem] ([dd_id], [dd_thanhpho], [dd_ten], [dd_mota]) VALUES (5, N'Hà Nội', N'Lăng Chủ tịch Hồ Chí Minh', N'Lăng Bác')
INSERT [dbo].[Tour_diadiem] ([dd_id], [dd_thanhpho], [dd_ten], [dd_mota]) VALUES (6, N'Hà Nội', N'Cầu Thê Húc', N'Cầu')
INSERT [dbo].[Tour_diadiem] ([dd_id], [dd_thanhpho], [dd_ten], [dd_mota]) VALUES (7, N'Hà Nội', N'Hồ Gươm', N'Hồ Hoàn Kiếm')
INSERT [dbo].[Tour_diadiem] ([dd_id], [dd_thanhpho], [dd_ten], [dd_mota]) VALUES (8, N'Đà Lạt', N'Vườn dâu thủy canh', N'Dâu tươi trồng cách thủy')
INSERT [dbo].[Tour_diadiem] ([dd_id], [dd_thanhpho], [dd_ten], [dd_mota]) VALUES (9, N'Cần Thơ', N'Chợ nổi Cái Răng', N'Chợ trên sông')
INSERT [dbo].[Tour_diadiem] ([dd_id], [dd_thanhpho], [dd_ten], [dd_mota]) VALUES (10, N'Cần Thơ', N'Vườn trái cây 9 Hồng', N'Ăn trái cây')
INSERT [dbo].[Tour_diadiem] ([dd_id], [dd_thanhpho], [dd_ten], [dd_mota]) VALUES (11, N'Cần Thơ', N'Vườn cò Bằng Lăng', N'Đất lành chim đậu')
INSERT [dbo].[Tour_diadiem] ([dd_id], [dd_thanhpho], [dd_ten], [dd_mota]) VALUES (12, N'Cần Thơ', N'Bến Ninh Kiều', N'Cần Thơ có bến Ninh Kiều')
INSERT [dbo].[Tour_diadiem] ([dd_id], [dd_thanhpho], [dd_ten], [dd_mota]) VALUES (13, N'Cần Thơ', N'Chợ đêm Cần Thơ', N'Mua hàng lưu niệm')
INSERT [dbo].[Tour_diadiem] ([dd_id], [dd_thanhpho], [dd_ten], [dd_mota]) VALUES (14, N'Cần Thơ', N'Làng du lịch Mỹ Khánh', N'Địa điểm không thể bỏ qua')
INSERT [dbo].[Tour_diadiem] ([dd_id], [dd_thanhpho], [dd_ten], [dd_mota]) VALUES (15, N'Đà Lạt', N'Nhà Rông Tây Nguyên', N'Nhà truyền thống Tây nguyên')
SET IDENTITY_INSERT [dbo].[Tour_diadiem] OFF
/****** Object:  Table [dbo].[Tour_chitiet]    Script Date: 11/19/2020 04:31:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tour_chitiet](
	[ct_id] [int] IDENTITY(1,1) NOT NULL,
	[tour_id] [int] NOT NULL,
	[dd_id] [int] NOT NULL,
	[ct_thutu] [int] NOT NULL,
 CONSTRAINT [PK_Tour_chitiet] PRIMARY KEY CLUSTERED 
(
	[ct_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Tour_chitiet] ON
INSERT [dbo].[Tour_chitiet] ([ct_id], [tour_id], [dd_id], [ct_thutu]) VALUES (1, 1, 1, 1)
INSERT [dbo].[Tour_chitiet] ([ct_id], [tour_id], [dd_id], [ct_thutu]) VALUES (2, 1, 2, 2)
INSERT [dbo].[Tour_chitiet] ([ct_id], [tour_id], [dd_id], [ct_thutu]) VALUES (3, 1, 3, 3)
INSERT [dbo].[Tour_chitiet] ([ct_id], [tour_id], [dd_id], [ct_thutu]) VALUES (4, 1, 4, 4)
INSERT [dbo].[Tour_chitiet] ([ct_id], [tour_id], [dd_id], [ct_thutu]) VALUES (5, 2, 5, 1)
INSERT [dbo].[Tour_chitiet] ([ct_id], [tour_id], [dd_id], [ct_thutu]) VALUES (6, 2, 6, 2)
INSERT [dbo].[Tour_chitiet] ([ct_id], [tour_id], [dd_id], [ct_thutu]) VALUES (7, 2, 7, 3)
INSERT [dbo].[Tour_chitiet] ([ct_id], [tour_id], [dd_id], [ct_thutu]) VALUES (8, 4, 8, 1)
INSERT [dbo].[Tour_chitiet] ([ct_id], [tour_id], [dd_id], [ct_thutu]) VALUES (9, 3, 9, 1)
INSERT [dbo].[Tour_chitiet] ([ct_id], [tour_id], [dd_id], [ct_thutu]) VALUES (10, 3, 10, 2)
INSERT [dbo].[Tour_chitiet] ([ct_id], [tour_id], [dd_id], [ct_thutu]) VALUES (11, 3, 11, 3)
INSERT [dbo].[Tour_chitiet] ([ct_id], [tour_id], [dd_id], [ct_thutu]) VALUES (12, 3, 12, 4)
INSERT [dbo].[Tour_chitiet] ([ct_id], [tour_id], [dd_id], [ct_thutu]) VALUES (13, 3, 13, 5)
INSERT [dbo].[Tour_chitiet] ([ct_id], [tour_id], [dd_id], [ct_thutu]) VALUES (14, 3, 14, 6)
INSERT [dbo].[Tour_chitiet] ([ct_id], [tour_id], [dd_id], [ct_thutu]) VALUES (15, 5, 15, 1)
SET IDENTITY_INSERT [dbo].[Tour_chitiet] OFF
/****** Object:  Table [dbo].[Tour_chiphi]    Script Date: 11/19/2020 04:31:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tour_chiphi](
	[chiphi_id] [int] IDENTITY(1,1) NOT NULL,
	[doan_id] [int] NOT NULL,
	[chiphi_total] [float] NOT NULL,
	[chiphi_chitiet] [nvarchar](max) NULL,
 CONSTRAINT [PK_Tour_chiphi] PRIMARY KEY CLUSTERED 
(
	[chiphi_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Tour_chiphi] ON
INSERT [dbo].[Tour_chiphi] ([chiphi_id], [doan_id], [chiphi_total], [chiphi_chitiet]) VALUES (1, 1, 15000000, NULL)
INSERT [dbo].[Tour_chiphi] ([chiphi_id], [doan_id], [chiphi_total], [chiphi_chitiet]) VALUES (2, 3, 20000000, NULL)
INSERT [dbo].[Tour_chiphi] ([chiphi_id], [doan_id], [chiphi_total], [chiphi_chitiet]) VALUES (3, 4, 15000000, NULL)
INSERT [dbo].[Tour_chiphi] ([chiphi_id], [doan_id], [chiphi_total], [chiphi_chitiet]) VALUES (4, 6, 20000000, NULL)
INSERT [dbo].[Tour_chiphi] ([chiphi_id], [doan_id], [chiphi_total], [chiphi_chitiet]) VALUES (5, 7, 10000000, NULL)
INSERT [dbo].[Tour_chiphi] ([chiphi_id], [doan_id], [chiphi_total], [chiphi_chitiet]) VALUES (6, 8, 60000000, NULL)
INSERT [dbo].[Tour_chiphi] ([chiphi_id], [doan_id], [chiphi_total], [chiphi_chitiet]) VALUES (7, 9, 60000000, NULL)
INSERT [dbo].[Tour_chiphi] ([chiphi_id], [doan_id], [chiphi_total], [chiphi_chitiet]) VALUES (8, 10, 80000000, NULL)
INSERT [dbo].[Tour_chiphi] ([chiphi_id], [doan_id], [chiphi_total], [chiphi_chitiet]) VALUES (9, 11, 10000000, NULL)
SET IDENTITY_INSERT [dbo].[Tour_chiphi] OFF
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 11/19/2020 04:31:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20201118181840_create', N'3.1.10')
