USE [master]
GO
/****** Object:  Database [DKTQDN]    Script Date: 11/20/2024 5:57:34 PM ******/
CREATE DATABASE [DKTQDN]
GO
ALTER DATABASE [DKTQDN] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DKTQDN].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DKTQDN] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DKTQDN] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DKTQDN] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DKTQDN] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DKTQDN] SET ARITHABORT OFF 
GO
ALTER DATABASE [DKTQDN] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [DKTQDN] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DKTQDN] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DKTQDN] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DKTQDN] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DKTQDN] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DKTQDN] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DKTQDN] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DKTQDN] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DKTQDN] SET  DISABLE_BROKER 
GO
ALTER DATABASE [DKTQDN] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DKTQDN] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DKTQDN] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DKTQDN] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DKTQDN] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DKTQDN] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [DKTQDN] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DKTQDN] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [DKTQDN] SET  MULTI_USER 
GO
ALTER DATABASE [DKTQDN] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DKTQDN] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DKTQDN] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DKTQDN] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [DKTQDN] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [DKTQDN] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [DKTQDN] SET QUERY_STORE = OFF
GO
USE [DKTQDN]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 11/20/2024 5:57:34 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 11/20/2024 5:57:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 11/20/2024 5:57:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 11/20/2024 5:57:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 11/20/2024 5:57:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](450) NOT NULL,
	[ProviderKey] [nvarchar](450) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 11/20/2024 5:57:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 11/20/2024 5:57:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[FirstName] [nvarchar](max) NOT NULL,
	[LastName] [nvarchar](max) NOT NULL,
	[UserName] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[Email] [nvarchar](256) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 11/20/2024 5:57:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTietDangKy]    Script Date: 11/20/2024 5:57:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietDangKy](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[NgayDangKy] [datetime] NULL,
	[idSinhVien] [int] NOT NULL,
	[idChuyenDi] [int] NOT NULL,
	[is_deleted] [int] NULL,
	[created_by] [int] NULL,
	[created_at] [datetime] NULL,
	[updated_by] [int] NULL,
	[updated_at] [datetime] NULL,
 CONSTRAINT [PK_ChiTietDangKy] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChuyenDi]    Script Date: 11/20/2024 5:57:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChuyenDi](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[MaChuyenDi] [varchar](30) NULL,
	[Slot] [int] NULL,
	[NgayThamQuan] [datetime] NULL,
	[TrangThai] [int] NULL,
	[HocKi] [int] NULL,
	[NamHoc] [int] NULL,
	[idGiangVien] [int] NOT NULL,
	[idDoanhNghiep] [int] NOT NULL,
	[idKhoa] [int] NOT NULL,
	[idKhoaHoc] [int] NOT NULL,
	[is_deleted] [int] NULL,
	[created_by] [int] NULL,
	[created_at] [datetime] NULL,
	[updated_by] [int] NULL,
	[updated_at] [datetime] NULL,
 CONSTRAINT [PK_DangKy] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DoanhNghiep]    Script Date: 11/20/2024 5:57:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DoanhNghiep](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[MaDoanhNghiep] [varchar](30) NULL,
	[TenDoanhNghiep] [nvarchar](100) NULL,
	[SoDienThoai] [varchar](10) NULL,
	[DiaChi] [nvarchar](100) NULL,
	[is_deleted] [int] NULL,
	[created_by] [int] NULL,
	[created_at] [datetime] NULL,
	[updated_by] [int] NULL,
	[updated_at] [datetime] NULL,
 CONSTRAINT [PK_tblDoanhNghiep] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GiangVien]    Script Date: 11/20/2024 5:57:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GiangVien](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[MaGiangVien] [varchar](30) NULL,
	[TenGiangVien] [nvarchar](100) NULL,
	[SoDienThoai] [varchar](10) NULL,
	[idKhoa] [int] NOT NULL,
	[is_deleted] [int] NULL,
	[created_by] [int] NULL,
	[created_at] [datetime] NULL,
	[updated_by] [int] NULL,
	[updated_at] [datetime] NULL,
 CONSTRAINT [PK_GiangVien] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Khoa]    Script Date: 11/20/2024 5:57:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Khoa](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[MaKhoa] [varchar](30) NULL,
	[TenKhoa] [nvarchar](100) NULL,
	[SoDienThoai] [varchar](10) NULL,
	[Email] [varchar](100) NULL,
	[is_deleted] [int] NULL,
	[created_by] [int] NULL,
	[created_at] [datetime] NULL,
	[updated_by] [int] NULL,
	[updated_at] [datetime] NULL,
 CONSTRAINT [PK_Khoa] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhoaHoc]    Script Date: 11/20/2024 5:57:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhoaHoc](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[MaKhoaHoc] [varchar](30) NULL,
	[NamBatDau] [int] NULL,
	[NamKetThuc] [int] NULL,
	[is_deleted] [int] NULL,
	[created_by] [int] NULL,
	[created_at] [datetime] NULL,
	[updated_by] [int] NULL,
	[updated_at] [datetime] NULL,
 CONSTRAINT [PK_KhoaHoc] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SinhVien]    Script Date: 11/20/2024 5:57:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SinhVien](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[MaSinhVien] [varchar](30) NULL,
	[TenSinhVien] [nvarchar](100) NULL,
	[SoDienThoai] [varchar](10) NULL,
	[Email] [varchar](100) NULL,
	[idKhoa] [int] NULL,
	[idTaiKhoan] [int] NOT NULL,
	[idKhoaHoc] [int] NOT NULL,
	[is_deleted] [int] NOT NULL,
	[created_by] [int] NULL,
	[created_at] [datetime] NULL,
	[updated_by] [int] NULL,
	[updated_at] [datetime] NULL,
 CONSTRAINT [PK_SinhVien] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TaiKhoan]    Script Date: 11/20/2024 5:57:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaiKhoan](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[TenTaiKhoan] [varchar](100) NULL,
	[MatKhau] [varchar](30) NULL,
	[Quyen] [int] NULL,
	[is_deleted] [int] NULL,
	[created_by] [int] NULL,
	[created_at] [datetime] NULL,
	[updated_by] [int] NULL,
	[updated_at] [datetime] NULL,
 CONSTRAINT [PK_TaiKhoan] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20241115015202_IdentityMigration1', N'6.0.35')
GO
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'040f67c8-45a6-423f-8e5e-087ca38551a7', N'', N'', N'sinhvien20@abc.com', N'SINHVIEN20@ABC.COM', N'sinhvien20@abc.com', N'SINHVIEN20@ABC.COM', 0, N'AQAAAAEAACcQAAAAEH2K8ilmNrSZwu8TNG9td7hIIAPSGO4nl78q10SDfOhlzHmt5zGKXDV/s+KLvntFeQ==', N'EFMLKPEIW7Q637TIGDBF7TD3P5JO74D5', N'8b3b564e-2898-4214-b328-745672283e5f', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'0781b76c-9704-48e1-999c-fa6655b44e14', N'', N'', N'tranthib@example.com', N'TRANTHIB@EXAMPLE.COM', N'tranthib@example.com', N'TRANTHIB@EXAMPLE.COM', 0, N'AQAAAAEAACcQAAAAEDuHO2Ce/0xKdJAGyYZyfvBZFNfv3JPlwZ+BB/aOrElYgLnqll7H6/lo4lnun1x/rw==', N'GEMJ45MWZPTUTZNHK7KYB4JARL3DMTA6', N'f834d55c-c659-4af6-bd11-f89c45dd3835', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'07aa619f-16a0-4a7f-a93b-994df671cbc5', N'', N'', N'sinhvien28@abc.com', N'SINHVIEN28@ABC.COM', N'sinhvien28@abc.com', N'SINHVIEN28@ABC.COM', 0, N'AQAAAAEAACcQAAAAEKr7JXUb+r69DOD0laGgOomU29QuLU+QBUGfykwU6tPd6W/NnCG7OUklvS2eNEIK9A==', N'Z4CL52USOGTWCL3ZMFF335DTU3HABDLV', N'23946d29-4fd4-4ff5-b906-34fbcf4391be', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'08ba8d70-b905-4a48-80d0-4c44dd2e6d8b', N'', N'', N'sinhvien16@abc.com', N'SINHVIEN16@ABC.COM', N'sinhvien16@abc.com', N'SINHVIEN16@ABC.COM', 0, N'AQAAAAEAACcQAAAAEFqlQAiSg1bHRB30ViMooaixRwNLjxihCwjXbK+LUrYqXZ8BlDaGoFuC9FBVHsHx0A==', N'NP23OZ6ER22HUM6UWHRJKFE2ZC5XY5IA', N'ba17c8ff-cc0d-48e5-8a6d-5942929a7849', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'11294a55-082d-40b5-8b0c-a3b5c5e3dd16', N'', N'', N'sinhvien25@abc.com', N'SINHVIEN25@ABC.COM', N'sinhvien25@abc.com', N'SINHVIEN25@ABC.COM', 0, N'AQAAAAEAACcQAAAAEOXLOtDX2y/vAyK+Kz/DaafKI7+3+fpzBYhuRKNGLCELHdSvxmiCOJZd11r56F+VHA==', N'JS4GOIE2NBTPT446Z445WS56CV7PJMDQ', N'2a99ecac-1782-471d-9534-5a1143f94020', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'226b34e4-4456-4e7e-aafd-ffede9a65590', N'', N'', N'sinhvien27@abc.com', N'SINHVIEN27@ABC.COM', N'sinhvien27@abc.com', N'SINHVIEN27@ABC.COM', 0, N'AQAAAAEAACcQAAAAEO7kWHsPykL4x21i3OdZ0KkknKEw3W4iwWi/hONvsGyd9WZufGYwAlN95FpRRPKJjg==', N'MSO4JD7Y35GNSINST3QIZV3OI5AWKODZ', N'd8205fcf-48cd-4cf2-a2e8-2f7cc8cb3967', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'2682c333-adb5-4840-8806-347a5065a3b1', N'', N'', N'sinhvien13@abc.com', N'SINHVIEN13@ABC.COM', N'sinhvien13@abc.com', N'SINHVIEN13@ABC.COM', 0, N'AQAAAAEAACcQAAAAEGYHXpWJhworMS5W7tTMmypFRMStEBRbpUnnk8uOkt1vGEOdj0/wPKHrLWgBQ16nkA==', N'SFDFYDLJU3FI3B65XGMQR3WGE3GTJOX6', N'45c23330-e641-45fb-9fff-125e619fa346', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'445ee7be-6c8d-43aa-8fa4-e8c21a9a5b7e', N'', N'', N'sinhvien10@abc.com', N'SINHVIEN10@ABC.COM', N'sinhvien10@abc.com', N'SINHVIEN10@ABC.COM', 0, N'AQAAAAEAACcQAAAAEBFSknJuVuJ5iFY8vJiBfdNJgaJeWxU0FEBLgUKs7AUtZhzSS1RSrIUZiTOjatUygw==', N'4KQ26CJMUQNTU6UFRBIOFHZZDYPSKUOG', N'334682b2-eba2-4dd0-b063-f5c761bcec3f', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'5e5fc6a2-6b93-47b2-9c44-2b72b8cddf96', N'', N'', N'sinhvien12@abc.com', N'SINHVIEN12@ABC.COM', N'sinhvien12@abc.com', N'SINHVIEN12@ABC.COM', 0, N'AQAAAAEAACcQAAAAEDrvPHwCccEACgo85ptLvssOFL7SmOXhIE21SDxYllS6O/Q0tYjknqNnOwa0AMS/4A==', N'HBDV6OPGQ2JDDBUZGYJKF7PTCJ43J6II', N'338b30c0-0297-49b5-a9c2-8e77f6de300d', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'63fb771f-156b-4323-affb-7cdd960cf628', N'', N'', N'vuthif@example.com', N'VUTHIF@EXAMPLE.COM', N'vuthif@example.com', N'VUTHIF@EXAMPLE.COM', 0, N'AQAAAAEAACcQAAAAEMGsJq+xJaBxq9qxwnQ2vSK+ONj+dG6mBVL+98G/QgvZ4hPu+qzemSl8JylkvpgyrA==', N'2Q7YIQ4WIN63SIUKQFKZ2GO2JS6RA2FR', N'0e47c0f5-0c49-48c3-8b68-304e72486b59', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'6491610b-40c1-4ba2-8c44-03002276147e', N'', N'', N'sinhvien19@abc.com', N'SINHVIEN19@ABC.COM', N'sinhvien19@abc.com', N'SINHVIEN19@ABC.COM', 0, N'AQAAAAEAACcQAAAAEMntBUdAgVelS5nyfWg7AHgCpiFxDfrZlWibpNe6g0anqITPPxcbWhgMLzKLkkyAcw==', N'5Z3PB4IUX42VTTBVV5ISNNW2RO4FMBI7', N'74f8cdf0-4d5d-41c2-8b92-dd9fc3be2a63', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'660b8868-92ea-47c1-8709-5d806ee9bc68', N'', N'', N'sinhvien29@abc.com', N'SINHVIEN29@ABC.COM', N'sinhvien29@abc.com', N'SINHVIEN29@ABC.COM', 0, N'AQAAAAEAACcQAAAAECHKVHcQ7TvOdv9leoSBdWse7pcKKneAFoa6OhV/rQBzch9U+djshFyUN/KT2Oo5xQ==', N'W7OFBPJRYKEDBR5A6CFJTPV5A4KW3RKM', N'ec65d595-73bf-4492-8d89-b484a3b83dd4', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'6bc10392-72c4-4f95-85c3-341b214c9fd5', N'', N'', N'sinhvien3@abc.com', N'SINHVIEN3@ABC.COM', N'sinhvien3@abc.com', N'SINHVIEN3@ABC.COM', 0, N'AQAAAAEAACcQAAAAEJDvZoU5QJgPgH/BZ+IfmSvBnJ2CIPEtFnxrwVBrBAjIYk5eXRCAGAd1F6E4ELpH6Q==', N'S77FRFXXNTPW5V5C2XPFIRYZDZV3PJ6L', N'94347453-adde-4d17-ab37-4b7857e94308', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'6c385fed-2fc3-429c-bae5-b93f07d8cbb0', N'', N'', N'phamthuyd@example.com', N'PHAMTHUYD@EXAMPLE.COM', N'phamthuyd@example.com', N'PHAMTHUYD@EXAMPLE.COM', 0, N'AQAAAAEAACcQAAAAEAD63/M6vsvrstYY5msVs08WUVk+W0RZqiELElMwfoEuGjt1ZBzHTZxsbG5SGcHdcg==', N'PFMXO7ROWSJ4FMZIKGZSOWGZMLF5DNFO', N'a9804554-7ee7-490a-a74b-4a2411189d5e', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'829fa5c1-e667-4612-a1a5-1a6eb0d12501', N'', N'', N'sinhvien8@abc.com', N'SINHVIEN8@ABC.COM', N'sinhvien8@abc.com', N'SINHVIEN8@ABC.COM', 0, N'AQAAAAEAACcQAAAAEBENxRQvQYvGuylPfH9ttmZSxCn5RoVHZI4IUqK7DZlUDI6ITXrI/CVZKVp3qHVu4A==', N'SZQAEIFSNVJW2ZEFNQXHZQEF4ALU5KHN', N'e29ec856-aeb4-4408-970d-ce8ecd7acb22', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'9cb80dd7-6c4c-499e-8d6b-5ff425622d68', N'', N'', N'sinhvien22@abc.com', N'SINHVIEN22@ABC.COM', N'sinhvien22@abc.com', N'SINHVIEN22@ABC.COM', 0, N'AQAAAAEAACcQAAAAEAbwIbUOGL6kMwL2pL7xbgXjpbDyLB/10bBGysZYJoFSsSdTNvy2yxgA2t1T74OGxw==', N'6EK2JCMU7H5W4GYI662MZXDLOLP5HO4E', N'3ca51298-f1b3-40e9-9575-e9fc049ad01a', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'9d3f45ff-f5d6-481e-8e9c-8d269ab01dbe', N'', N'', N'nguyenhoangg@example.com', N'NGUYENHOANGG@EXAMPLE.COM', N'nguyenhoangg@example.com', N'NGUYENHOANGG@EXAMPLE.COM', 0, N'AQAAAAEAACcQAAAAEPMSxPju0KkcZ51GEA7kxlK6BlCMZ2lrcEDS8xePcZzbAXmdt16nTQzWyVDxpSOnTg==', N'HGSG4OZQVYHWCBVG3JX64O2CDESL7BKI', N'6c4ad971-cbe2-4dde-b17f-52b61a61efcc', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'9df4b9ba-08db-4981-ad4c-4ef39b0428b4', N'', N'', N'sinhvien4@abc.com', N'SINHVIEN4@ABC.COM', N'sinhvien4@abc.com', N'SINHVIEN4@ABC.COM', 0, N'AQAAAAEAACcQAAAAEGDSChJm220YHzYLmc/w6hh0RNMbz2Iftrq/y5alRRNtbtTzjeyRxHniyeCQH1l0VQ==', N'7PKREMTSDCAW2D75VWRLSPLMGJRCJXG6', N'2dd77580-61d8-49b4-b706-de2cc3ca1196', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'a98195c5-4258-4ef8-b83a-140bfba4cdba', N'', N'', N'sinhvien21@abc.com', N'SINHVIEN21@ABC.COM', N'sinhvien21@abc.com', N'SINHVIEN21@ABC.COM', 0, N'AQAAAAEAACcQAAAAEDkdoc6Z4SKj4PmD+zftFP0HFZwrHSurBgHAhlkG4nSic1HJjWGRoI6IvepoWaOuEA==', N'LAMEEX7Y5K4KJPZ5WXP4AUWJ2U6JFNBN', N'2dc2d7e9-aba6-4f79-9b3b-d55335816d4e', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'ab143391-2d0f-48cb-baa4-02845f7a276b', N'', N'', N'lyhaij@example.com', N'LYHAIJ@EXAMPLE.COM', N'lyhaij@example.com', N'LYHAIJ@EXAMPLE.COM', 0, N'AQAAAAEAACcQAAAAELoItJzBXx+V4aDtawSqM1LwDgkQH5zn50vSQvHbIrmIESK1ofJTOG++iLWW0EjP8w==', N'U2MCLUJFEVMXEYRVUBR57YRSSCBGRQTR', N'efb85e1c-c755-438b-9f4e-bd4417170633', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'b2f43956-dc21-4633-ba79-5d60aef2bb5c', N'', N'', N'sinhvien26@abc.com', N'SINHVIEN26@ABC.COM', N'sinhvien26@abc.com', N'SINHVIEN26@ABC.COM', 0, N'AQAAAAEAACcQAAAAEEyzIFXZKDhcDEw2iz9VgOMYGv9Y7rDZquIG5ZM/GFT9lMz54FF7ayLlXPBCsXrRag==', N'QNYQUZ2TMR2IOF63WKNU4QZRQA7JIX52', N'd7187728-353c-45fe-87b1-9c3ef450a86b', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'be4b3b83-55ae-48c7-bff8-6b20d1535554', N'', N'', N'hoangvane@example.com', N'HOANGVANE@EXAMPLE.COM', N'hoangvane@example.com', N'HOANGVANE@EXAMPLE.COM', 0, N'AQAAAAEAACcQAAAAEIsUo39du3KIlTZ6O4NvQF2IX9j3aX8flpl6eHXTjAx4VpSQ8Y+eIF1E3/t1Vrf7MQ==', N'J2UC7WQ3APGD4HHDTKRHOYTT6BEWVEYL', N'131a113b-bf4c-439e-8009-e18c5b3c4ee0', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'bf5ddc82-4a57-49a3-884e-f5a6a4e6b0df', N'', N'', N'sinhvien17@abc.com', N'SINHVIEN17@ABC.COM', N'sinhvien17@abc.com', N'SINHVIEN17@ABC.COM', 0, N'AQAAAAEAACcQAAAAEDaZ3nCWHjbQ2zXkOpdWNoD4dxzjdbW1IT1Y9FMt8estGaimS852BrkVdXE5c7EEvw==', N'LI57THEXCKIQO64PCLQGK2IQLHYG3Z7P', N'ed1db051-8439-4ebe-a604-1a4b1520b48d', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'c1a62777-decc-405b-8a2b-485108d859c5', N'', N'', N'sinhvien15@abc.com', N'SINHVIEN15@ABC.COM', N'sinhvien15@abc.com', N'SINHVIEN15@ABC.COM', 0, N'AQAAAAEAACcQAAAAEGCVOV3W88v/njTaOb+poabPvD0fY4qncQARQvK+DLBvNKgcKuHqwS4K16VqC2Ethg==', N'ND4GJUHFPS3FCFH2I2EFZ74OL5J3SULX', N'92d348d5-cecb-494b-b38b-f2269da245b6', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'c7f4f9fe-f2a9-45cb-91a6-e5fab46cdbb6', N'', N'', N'sinhvien2@abc.com', N'SINHVIEN2@ABC.COM', N'sinhvien2@abc.com', N'SINHVIEN2@ABC.COM', 0, N'AQAAAAEAACcQAAAAEHovtC43/rvKr1s8JN780lPLonATqukGjYvBakhPERfnMu2VWvT6YxRzFIY2oSZK0Q==', N'7JJDCQX5EATDSMEXHBE3NCO44GDMU745', N'5d216027-f15b-4f4c-a9df-783bf13c21df', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'ca802541-77b8-4ec7-a013-828801906840', N'', N'', N'sinhvien14@abc.com', N'SINHVIEN14@ABC.COM', N'sinhvien14@abc.com', N'SINHVIEN14@ABC.COM', 0, N'AQAAAAEAACcQAAAAEB5hwQjocB9t/+zw/gIe5KFzZIBnP7GYyyNsYM6o5ukz30sWg9ojbbUBMMVIttQvig==', N'W3DDVJRYQ2EUTOFLAVFNHTJXBFUGDYG2', N'909d1976-f365-4abf-a403-2078d33e681f', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'e23e7258-2aa5-422e-8ed7-a78a2c1720df', N'', N'', N'sinhvien6@abc.com', N'SINHVIEN6@ABC.COM', N'sinhvien6@abc.com', N'SINHVIEN6@ABC.COM', 0, N'AQAAAAEAACcQAAAAENtS9tRb2J/m+NdBAwtgMAgyk4Sn8kyMFvAxwzsVqjjBWznEOR7BySU8IrWJZGabwg==', N'OKNRPB2UZOOHUJEZ6BJ7D5O7NTFWBLJN', N'833b3da4-611b-4782-92b4-ba0bc576ed43', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'e68500c9-81c0-4381-87a0-8f03c9c25d9e', N'', N'', N'phanminhi@example.com', N'PHANMINHI@EXAMPLE.COM', N'phanminhi@example.com', N'PHANMINHI@EXAMPLE.COM', 0, N'AQAAAAEAACcQAAAAEAEtvpfD/ujmPwTWQi/gK9EByUtLZoclpKj6cpzhq+2Qa0/mulSwXdqiBoyQilniZg==', N'R5ZTL5DAFF6HAI3L5QT3NQPBFSPQOEOO', N'0e7b359d-9b06-435c-9333-e1d44666675b', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'e68d1417-98c7-4cb5-b6e8-ce034d81612a', N'', N'', N'dangxuanh@example.com', N'DANGXUANH@EXAMPLE.COM', N'dangxuanh@example.com', N'DANGXUANH@EXAMPLE.COM', 0, N'AQAAAAEAACcQAAAAEBBuL4lwpLpw1rQLPOozQY+Jc099Jlll8Ob9qcOpeg+f59IrCXFmaQS3M0xVCl/GFQ==', N'KS66SWPEWXEP4FG6SVU23W5GIDK4PSMK', N'7b227cd8-2711-484b-835f-909df5ed9936', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'e6a5b797-b621-4cd3-8531-bd81036fe140', N'', N'', N'sinhvien23@abc.com', N'SINHVIEN23@ABC.COM', N'sinhvien23@abc.com', N'SINHVIEN23@ABC.COM', 0, N'AQAAAAEAACcQAAAAEPEJZ1jm4I6Qco72qn4WoMkbAL5tIkcqGJouMPxf0nvsyzaPCRAI/XNc3Ukdk3S3Xg==', N'DY272UCJ4GDDUXG736GFLHRKWMGPJZ2Z', N'1bd865ef-2f48-4971-871a-029696cf5684', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'e6cf91c6-f9f4-4de4-a03b-9d3286d2a00f', N'', N'', N'sinhvien11@abc.com', N'SINHVIEN11@ABC.COM', N'sinhvien11@abc.com', N'SINHVIEN11@ABC.COM', 0, N'AQAAAAEAACcQAAAAENeu8R6Nyr0jEE6rSeYNL/IoUNs9TLAdLzBj4wOtMjA4zEhAgaDrRVYL09bUCkjAFg==', N'ISUTYRB7CWSVPJ7V7IR6RXG7RMWNFNQ6', N'0c0364d9-bdd1-4c57-bc11-261a31077883', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'e9386090-d771-4e02-884a-8045b1b966a5', N'', N'', N'admin@mail.com', N'ADMIN@MAIL.COM', N'admin@mail.com', N'ADMIN@MAIL.COM', 0, N'AQAAAAEAACcQAAAAEP9rwqjtoxMjksipGbPt+KfEThqton026jVKoaNML3l1c3GpI1Oq8941GfYAFb5HOA==', N'LXKHH63UXY6DHKH7KWFQB3BLKAFEBWFJ', N'c27f23b5-44ae-4514-8951-fea29a5c3146', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'f3f3445c-0b11-4d91-8bea-511e6b9a9387', N'', N'', N'sinhvien9@abc.com', N'SINHVIEN9@ABC.COM', N'sinhvien9@abc.com', N'SINHVIEN9@ABC.COM', 0, N'AQAAAAEAACcQAAAAEH2q/lz3C6shPVTDUDRqsMQKnDKPzxeWds+XMZTQhDhzPMkvOrXw2uopxgs1m2wGtg==', N'B4PXIBNV2DG5FEZ4BP6BFTHHIUZJXXMI', N'bc39873a-1f62-437f-b15b-db42d147b8cc', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'f66da871-89cd-4455-b3b8-e8a07b20363e', N'', N'', N'sinhvien5@abc.com', N'SINHVIEN5@ABC.COM', N'sinhvien5@abc.com', N'SINHVIEN5@ABC.COM', 0, N'AQAAAAEAACcQAAAAEEIWyCgUX2SZeGG4i4QGO9NXYLaTxLRwJHskKFWV+F/ogV1DQgzfcCNllYDbuW6eSA==', N'K4LSR2YI6FTJY4I5W4MGRJFVCAN2GBYW', N'1b666822-e08c-47bf-8e37-41ca79f91670', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'f68de7e2-db08-453e-8d34-100e3ece73c1', N'', N'', N'leminhc@example.com', N'LEMINHC@EXAMPLE.COM', N'leminhc@example.com', N'LEMINHC@EXAMPLE.COM', 0, N'AQAAAAEAACcQAAAAEFRQ9REufa6OzJWR8tARI4j4WmK1BVnVjGLQ5b2gLdvgz6prPMRh2sG6q86BQ3NGBg==', N'2S42MQPKZZSE7WLTIXLV5VCC6HZOWAFX', N'8311582f-c2dd-447d-a9f3-480cb2eb401b', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'f8a57aec-2266-4e7d-bd3c-90cb9802fbaf', N'', N'', N'sinhvien24@abc.com', N'SINHVIEN24@ABC.COM', N'sinhvien24@abc.com', N'SINHVIEN24@ABC.COM', 0, N'AQAAAAEAACcQAAAAEJAT1cIieq3+V6EpCSZAHxuKWVX1BITL2P0k15RDxE39TUTnvlVC7R+8LZo2gkT6MQ==', N'K3URKPC5RAT3B4L7FDKGAINLCPPI47UE', N'3fa641ee-14df-48fc-9a3e-5db1613d9dfb', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'fc1676ab-2e89-440a-b6e2-e9ed3a0f74a9', N'', N'', N'sinhvien30@abc.com', N'SINHVIEN30@ABC.COM', N'sinhvien30@abc.com', N'SINHVIEN30@ABC.COM', 0, N'AQAAAAEAACcQAAAAECXKC2Sx3oxLCqoweHmYp/DB1bM/oNXEEcTPmEbWWjhMlHSlC2LAp2qa0DFNS22JVA==', N'IZQW6KQNQHB5Z225CWPAGKSLNKKO3RL3', N'53e9906b-af6d-4ed8-bfec-e5a822cc9b92', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'fc9c1dfb-f88a-4f6e-a68e-a212cd0186cc', N'', N'', N'sinhvien1@abc.com', N'SINHVIEN1@ABC.COM', N'sinhvien1@abc.com', N'SINHVIEN1@ABC.COM', 0, N'AQAAAAEAACcQAAAAEGGPi9nbdWpVw/vitREvQ7vlRwW3G+PH66Zj6ZiYnhOokDZC0Opk25Yr3shuK8BiXg==', N'IEG4UPKMF7TQ5IV757UUULBUPAKWI632', N'8abd0553-a94b-40cb-914c-845c8c14965b', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'fccbd355-344c-4e4e-8745-c0508c8f071a', N'', N'', N'sinhvien18@abc.com', N'SINHVIEN18@ABC.COM', N'sinhvien18@abc.com', N'SINHVIEN18@ABC.COM', 0, N'AQAAAAEAACcQAAAAEHQWZSzbiGKrirWqlS5MyYshd5k/PyT5EBDMaktij4TNsgLEbeu9+tbpEXBQ9vOIzQ==', N'WERIONQSXIA3PE2TGBEMMM7IK5HYQ5ZE', N'1872edd1-46b6-4756-b39e-dea1f800ecca', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'fce9fe54-68c4-4d4d-9765-09e5d016dfcb', N'', N'', N'nguyenvana@example.com', N'NGUYENVANA@EXAMPLE.COM', N'nguyenvana@example.com', N'NGUYENVANA@EXAMPLE.COM', 0, N'AQAAAAEAACcQAAAAEJKcxQZeqHBvXxioEMKg90foVB5fvKKEpleZVmRfug2LXBM3uTvnfhGS+qoDvh7aVg==', N'43RTUC7AGAXR6XWZPAGFK3J2TAJ2NAXK', N'823d3e20-bc42-49c2-be42-c64ae2910a35', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'fe023a0f-15df-437b-9203-b7240d9ef684', N'', N'', N'sinhvien7@abc.com', N'SINHVIEN7@ABC.COM', N'sinhvien7@abc.com', N'SINHVIEN7@ABC.COM', 0, N'AQAAAAEAACcQAAAAEF9qIvnLeKKlezQStrN9wuvfAXXhh/IhvpfXBJEnL6XIsosta8AYy5vf6A6IMSqnGg==', N'D4AZ3UI2JJE6SCWY5SQI2U7HRGXLIFQR', N'ab9a9fab-326b-469e-9291-110ca1f3f2c5', NULL, 0, 0, NULL, 1, 0)
GO
SET IDENTITY_INSERT [dbo].[ChiTietDangKy] ON 

INSERT [dbo].[ChiTietDangKy] ([id], [NgayDangKy], [idSinhVien], [idChuyenDi], [is_deleted], [created_by], [created_at], [updated_by], [updated_at]) VALUES (1, CAST(N'2014-10-01T00:00:00.000' AS DateTime), 1, 1, 0, 0, CAST(N'2024-11-18T10:41:37.323' AS DateTime), 0, CAST(N'2024-11-18T10:41:37.323' AS DateTime))
INSERT [dbo].[ChiTietDangKy] ([id], [NgayDangKy], [idSinhVien], [idChuyenDi], [is_deleted], [created_by], [created_at], [updated_by], [updated_at]) VALUES (2, CAST(N'2015-10-02T00:00:00.000' AS DateTime), 2, 2, 0, 0, CAST(N'2024-11-18T10:41:37.323' AS DateTime), 0, CAST(N'2024-11-18T10:41:37.323' AS DateTime))
INSERT [dbo].[ChiTietDangKy] ([id], [NgayDangKy], [idSinhVien], [idChuyenDi], [is_deleted], [created_by], [created_at], [updated_by], [updated_at]) VALUES (3, CAST(N'2016-10-03T00:00:00.000' AS DateTime), 3, 3, 0, 0, CAST(N'2024-11-18T10:41:37.323' AS DateTime), 0, CAST(N'2024-11-18T10:41:37.323' AS DateTime))
INSERT [dbo].[ChiTietDangKy] ([id], [NgayDangKy], [idSinhVien], [idChuyenDi], [is_deleted], [created_by], [created_at], [updated_by], [updated_at]) VALUES (4, CAST(N'2017-10-04T00:00:00.000' AS DateTime), 4, 4, 0, 0, CAST(N'2024-11-18T10:41:37.323' AS DateTime), 0, CAST(N'2024-11-18T10:41:37.323' AS DateTime))
INSERT [dbo].[ChiTietDangKy] ([id], [NgayDangKy], [idSinhVien], [idChuyenDi], [is_deleted], [created_by], [created_at], [updated_by], [updated_at]) VALUES (5, CAST(N'2018-10-05T00:00:00.000' AS DateTime), 5, 5, 0, 0, CAST(N'2024-11-18T10:41:37.323' AS DateTime), 0, CAST(N'2024-11-18T10:41:37.323' AS DateTime))
INSERT [dbo].[ChiTietDangKy] ([id], [NgayDangKy], [idSinhVien], [idChuyenDi], [is_deleted], [created_by], [created_at], [updated_by], [updated_at]) VALUES (6, CAST(N'2019-10-06T00:00:00.000' AS DateTime), 6, 6, 0, 0, CAST(N'2024-11-18T10:41:37.323' AS DateTime), 0, CAST(N'2024-11-18T10:41:37.323' AS DateTime))
INSERT [dbo].[ChiTietDangKy] ([id], [NgayDangKy], [idSinhVien], [idChuyenDi], [is_deleted], [created_by], [created_at], [updated_by], [updated_at]) VALUES (7, CAST(N'2020-10-07T00:00:00.000' AS DateTime), 7, 7, 0, 0, CAST(N'2024-11-18T10:41:37.323' AS DateTime), 0, CAST(N'2024-11-18T10:41:37.323' AS DateTime))
INSERT [dbo].[ChiTietDangKy] ([id], [NgayDangKy], [idSinhVien], [idChuyenDi], [is_deleted], [created_by], [created_at], [updated_by], [updated_at]) VALUES (8, CAST(N'2021-10-08T00:00:00.000' AS DateTime), 8, 8, 0, 0, CAST(N'2024-11-18T10:41:37.323' AS DateTime), 0, CAST(N'2024-11-18T10:41:37.323' AS DateTime))
INSERT [dbo].[ChiTietDangKy] ([id], [NgayDangKy], [idSinhVien], [idChuyenDi], [is_deleted], [created_by], [created_at], [updated_by], [updated_at]) VALUES (9, CAST(N'2022-10-09T00:00:00.000' AS DateTime), 9, 9, 0, 0, CAST(N'2024-11-18T10:41:37.323' AS DateTime), 0, CAST(N'2024-11-18T10:41:37.323' AS DateTime))
INSERT [dbo].[ChiTietDangKy] ([id], [NgayDangKy], [idSinhVien], [idChuyenDi], [is_deleted], [created_by], [created_at], [updated_by], [updated_at]) VALUES (10, CAST(N'2023-10-10T00:00:00.000' AS DateTime), 10, 10, 0, 0, CAST(N'2024-11-18T10:41:37.323' AS DateTime), 0, CAST(N'2024-11-18T10:41:37.323' AS DateTime))
INSERT [dbo].[ChiTietDangKy] ([id], [NgayDangKy], [idSinhVien], [idChuyenDi], [is_deleted], [created_by], [created_at], [updated_by], [updated_at]) VALUES (11, CAST(N'2024-11-20T17:49:52.510' AS DateTime), 11, 1, 0, 0, CAST(N'2024-11-20T17:49:52.510' AS DateTime), 0, CAST(N'2024-11-20T17:49:52.510' AS DateTime))
INSERT [dbo].[ChiTietDangKy] ([id], [NgayDangKy], [idSinhVien], [idChuyenDi], [is_deleted], [created_by], [created_at], [updated_by], [updated_at]) VALUES (12, CAST(N'2024-11-20T17:49:52.727' AS DateTime), 12, 1, 0, 0, CAST(N'2024-11-20T17:49:52.727' AS DateTime), 0, CAST(N'2024-11-20T17:49:52.727' AS DateTime))
INSERT [dbo].[ChiTietDangKy] ([id], [NgayDangKy], [idSinhVien], [idChuyenDi], [is_deleted], [created_by], [created_at], [updated_by], [updated_at]) VALUES (13, CAST(N'2024-11-20T17:49:52.727' AS DateTime), 13, 1, 0, 0, CAST(N'2024-11-20T17:49:52.727' AS DateTime), 0, CAST(N'2024-11-20T17:49:52.727' AS DateTime))
INSERT [dbo].[ChiTietDangKy] ([id], [NgayDangKy], [idSinhVien], [idChuyenDi], [is_deleted], [created_by], [created_at], [updated_by], [updated_at]) VALUES (14, CAST(N'2024-11-20T17:49:52.727' AS DateTime), 14, 1, 0, 0, CAST(N'2024-11-20T17:49:52.727' AS DateTime), 0, CAST(N'2024-11-20T17:49:52.727' AS DateTime))
INSERT [dbo].[ChiTietDangKy] ([id], [NgayDangKy], [idSinhVien], [idChuyenDi], [is_deleted], [created_by], [created_at], [updated_by], [updated_at]) VALUES (15, CAST(N'2024-11-20T17:49:52.727' AS DateTime), 15, 1, 0, 0, CAST(N'2024-11-20T17:49:52.727' AS DateTime), 0, CAST(N'2024-11-20T17:49:52.727' AS DateTime))
INSERT [dbo].[ChiTietDangKy] ([id], [NgayDangKy], [idSinhVien], [idChuyenDi], [is_deleted], [created_by], [created_at], [updated_by], [updated_at]) VALUES (16, CAST(N'2024-11-20T17:49:52.727' AS DateTime), 16, 1, 0, 0, CAST(N'2024-11-20T17:49:52.727' AS DateTime), 0, CAST(N'2024-11-20T17:49:52.727' AS DateTime))
INSERT [dbo].[ChiTietDangKy] ([id], [NgayDangKy], [idSinhVien], [idChuyenDi], [is_deleted], [created_by], [created_at], [updated_by], [updated_at]) VALUES (17, CAST(N'2024-11-20T17:49:52.727' AS DateTime), 17, 1, 0, 0, CAST(N'2024-11-20T17:49:52.727' AS DateTime), 0, CAST(N'2024-11-20T17:49:52.727' AS DateTime))
INSERT [dbo].[ChiTietDangKy] ([id], [NgayDangKy], [idSinhVien], [idChuyenDi], [is_deleted], [created_by], [created_at], [updated_by], [updated_at]) VALUES (18, CAST(N'2024-11-20T17:49:52.727' AS DateTime), 18, 1, 0, 0, CAST(N'2024-11-20T17:49:52.727' AS DateTime), 0, CAST(N'2024-11-20T17:49:52.727' AS DateTime))
INSERT [dbo].[ChiTietDangKy] ([id], [NgayDangKy], [idSinhVien], [idChuyenDi], [is_deleted], [created_by], [created_at], [updated_by], [updated_at]) VALUES (19, CAST(N'2024-11-20T17:49:52.727' AS DateTime), 19, 1, 0, 0, CAST(N'2024-11-20T17:49:52.727' AS DateTime), 0, CAST(N'2024-11-20T17:49:52.727' AS DateTime))
INSERT [dbo].[ChiTietDangKy] ([id], [NgayDangKy], [idSinhVien], [idChuyenDi], [is_deleted], [created_by], [created_at], [updated_by], [updated_at]) VALUES (20, CAST(N'2024-11-20T17:49:52.730' AS DateTime), 20, 1, 0, 0, CAST(N'2024-11-20T17:49:52.730' AS DateTime), 0, CAST(N'2024-11-20T17:49:52.730' AS DateTime))
INSERT [dbo].[ChiTietDangKy] ([id], [NgayDangKy], [idSinhVien], [idChuyenDi], [is_deleted], [created_by], [created_at], [updated_by], [updated_at]) VALUES (21, CAST(N'2024-11-20T17:49:52.730' AS DateTime), 21, 1, 0, 0, CAST(N'2024-11-20T17:49:52.730' AS DateTime), 0, CAST(N'2024-11-20T17:49:52.730' AS DateTime))
INSERT [dbo].[ChiTietDangKy] ([id], [NgayDangKy], [idSinhVien], [idChuyenDi], [is_deleted], [created_by], [created_at], [updated_by], [updated_at]) VALUES (22, CAST(N'2024-11-20T17:49:52.730' AS DateTime), 22, 1, 0, 0, CAST(N'2024-11-20T17:49:52.730' AS DateTime), 0, CAST(N'2024-11-20T17:49:52.730' AS DateTime))
INSERT [dbo].[ChiTietDangKy] ([id], [NgayDangKy], [idSinhVien], [idChuyenDi], [is_deleted], [created_by], [created_at], [updated_by], [updated_at]) VALUES (23, CAST(N'2024-11-20T17:49:52.730' AS DateTime), 23, 1, 0, 0, CAST(N'2024-11-20T17:49:52.730' AS DateTime), 0, CAST(N'2024-11-20T17:49:52.730' AS DateTime))
INSERT [dbo].[ChiTietDangKy] ([id], [NgayDangKy], [idSinhVien], [idChuyenDi], [is_deleted], [created_by], [created_at], [updated_by], [updated_at]) VALUES (24, CAST(N'2024-11-20T17:49:52.730' AS DateTime), 24, 1, 0, 0, CAST(N'2024-11-20T17:49:52.730' AS DateTime), 0, CAST(N'2024-11-20T17:49:52.730' AS DateTime))
INSERT [dbo].[ChiTietDangKy] ([id], [NgayDangKy], [idSinhVien], [idChuyenDi], [is_deleted], [created_by], [created_at], [updated_by], [updated_at]) VALUES (25, CAST(N'2024-11-20T17:49:52.730' AS DateTime), 25, 1, 0, 0, CAST(N'2024-11-20T17:49:52.730' AS DateTime), 0, CAST(N'2024-11-20T17:49:52.730' AS DateTime))
INSERT [dbo].[ChiTietDangKy] ([id], [NgayDangKy], [idSinhVien], [idChuyenDi], [is_deleted], [created_by], [created_at], [updated_by], [updated_at]) VALUES (26, CAST(N'2024-11-20T17:49:52.730' AS DateTime), 26, 1, 0, 0, CAST(N'2024-11-20T17:49:52.730' AS DateTime), 0, CAST(N'2024-11-20T17:49:52.730' AS DateTime))
INSERT [dbo].[ChiTietDangKy] ([id], [NgayDangKy], [idSinhVien], [idChuyenDi], [is_deleted], [created_by], [created_at], [updated_by], [updated_at]) VALUES (27, CAST(N'2024-11-20T17:49:52.730' AS DateTime), 27, 1, 0, 0, CAST(N'2024-11-20T17:49:52.730' AS DateTime), 0, CAST(N'2024-11-20T17:49:52.730' AS DateTime))
INSERT [dbo].[ChiTietDangKy] ([id], [NgayDangKy], [idSinhVien], [idChuyenDi], [is_deleted], [created_by], [created_at], [updated_by], [updated_at]) VALUES (28, CAST(N'2024-11-20T17:49:52.730' AS DateTime), 28, 1, 0, 0, CAST(N'2024-11-20T17:49:52.730' AS DateTime), 0, CAST(N'2024-11-20T17:49:52.730' AS DateTime))
INSERT [dbo].[ChiTietDangKy] ([id], [NgayDangKy], [idSinhVien], [idChuyenDi], [is_deleted], [created_by], [created_at], [updated_by], [updated_at]) VALUES (29, CAST(N'2024-11-20T17:49:52.730' AS DateTime), 29, 1, 0, 0, CAST(N'2024-11-20T17:49:52.730' AS DateTime), 0, CAST(N'2024-11-20T17:49:52.730' AS DateTime))
INSERT [dbo].[ChiTietDangKy] ([id], [NgayDangKy], [idSinhVien], [idChuyenDi], [is_deleted], [created_by], [created_at], [updated_by], [updated_at]) VALUES (30, CAST(N'2024-11-20T17:49:52.730' AS DateTime), 30, 1, 0, 0, CAST(N'2024-11-20T17:49:52.730' AS DateTime), 0, CAST(N'2024-11-20T17:49:52.730' AS DateTime))
INSERT [dbo].[ChiTietDangKy] ([id], [NgayDangKy], [idSinhVien], [idChuyenDi], [is_deleted], [created_by], [created_at], [updated_by], [updated_at]) VALUES (31, CAST(N'2024-11-20T17:49:52.730' AS DateTime), 31, 1, 0, 0, CAST(N'2024-11-20T17:49:52.730' AS DateTime), 0, CAST(N'2024-11-20T17:49:52.730' AS DateTime))
INSERT [dbo].[ChiTietDangKy] ([id], [NgayDangKy], [idSinhVien], [idChuyenDi], [is_deleted], [created_by], [created_at], [updated_by], [updated_at]) VALUES (32, CAST(N'2024-11-20T17:49:52.730' AS DateTime), 32, 1, 0, 0, CAST(N'2024-11-20T17:49:52.730' AS DateTime), 0, CAST(N'2024-11-20T17:49:52.730' AS DateTime))
INSERT [dbo].[ChiTietDangKy] ([id], [NgayDangKy], [idSinhVien], [idChuyenDi], [is_deleted], [created_by], [created_at], [updated_by], [updated_at]) VALUES (33, CAST(N'2024-11-20T17:49:52.730' AS DateTime), 33, 1, 0, 0, CAST(N'2024-11-20T17:49:52.730' AS DateTime), 0, CAST(N'2024-11-20T17:49:52.730' AS DateTime))
INSERT [dbo].[ChiTietDangKy] ([id], [NgayDangKy], [idSinhVien], [idChuyenDi], [is_deleted], [created_by], [created_at], [updated_by], [updated_at]) VALUES (34, CAST(N'2024-11-20T17:49:52.730' AS DateTime), 34, 1, 0, 0, CAST(N'2024-11-20T17:49:52.730' AS DateTime), 0, CAST(N'2024-11-20T17:49:52.730' AS DateTime))
INSERT [dbo].[ChiTietDangKy] ([id], [NgayDangKy], [idSinhVien], [idChuyenDi], [is_deleted], [created_by], [created_at], [updated_by], [updated_at]) VALUES (35, CAST(N'2024-11-20T17:49:52.730' AS DateTime), 35, 1, 0, 0, CAST(N'2024-11-20T17:49:52.730' AS DateTime), 0, CAST(N'2024-11-20T17:49:52.730' AS DateTime))
INSERT [dbo].[ChiTietDangKy] ([id], [NgayDangKy], [idSinhVien], [idChuyenDi], [is_deleted], [created_by], [created_at], [updated_by], [updated_at]) VALUES (36, CAST(N'2024-11-20T17:49:52.730' AS DateTime), 36, 1, 0, 0, CAST(N'2024-11-20T17:49:52.730' AS DateTime), 0, CAST(N'2024-11-20T17:49:52.730' AS DateTime))
INSERT [dbo].[ChiTietDangKy] ([id], [NgayDangKy], [idSinhVien], [idChuyenDi], [is_deleted], [created_by], [created_at], [updated_by], [updated_at]) VALUES (37, CAST(N'2024-11-20T17:49:52.730' AS DateTime), 37, 1, 0, 0, CAST(N'2024-11-20T17:49:52.730' AS DateTime), 0, CAST(N'2024-11-20T17:49:52.730' AS DateTime))
INSERT [dbo].[ChiTietDangKy] ([id], [NgayDangKy], [idSinhVien], [idChuyenDi], [is_deleted], [created_by], [created_at], [updated_by], [updated_at]) VALUES (38, CAST(N'2024-11-20T17:49:52.730' AS DateTime), 38, 1, 0, 0, CAST(N'2024-11-20T17:49:52.730' AS DateTime), 0, CAST(N'2024-11-20T17:49:52.730' AS DateTime))
INSERT [dbo].[ChiTietDangKy] ([id], [NgayDangKy], [idSinhVien], [idChuyenDi], [is_deleted], [created_by], [created_at], [updated_by], [updated_at]) VALUES (39, CAST(N'2024-11-20T17:49:52.730' AS DateTime), 39, 1, 0, 0, CAST(N'2024-11-20T17:49:52.730' AS DateTime), 0, CAST(N'2024-11-20T17:49:52.730' AS DateTime))
INSERT [dbo].[ChiTietDangKy] ([id], [NgayDangKy], [idSinhVien], [idChuyenDi], [is_deleted], [created_by], [created_at], [updated_by], [updated_at]) VALUES (40, CAST(N'2024-11-20T17:49:52.730' AS DateTime), 40, 1, 0, 0, CAST(N'2024-11-20T17:49:52.730' AS DateTime), 0, CAST(N'2024-11-20T17:49:52.730' AS DateTime))
SET IDENTITY_INSERT [dbo].[ChiTietDangKy] OFF
GO
SET IDENTITY_INSERT [dbo].[ChuyenDi] ON 

INSERT [dbo].[ChuyenDi] ([id], [MaChuyenDi], [Slot], [NgayThamQuan], [TrangThai], [HocKi], [NamHoc], [idGiangVien], [idDoanhNghiep], [idKhoa], [idKhoaHoc], [is_deleted], [created_by], [created_at], [updated_by], [updated_at]) VALUES (1, N'DK01', 40, CAST(N'2014-11-01T00:00:00.000' AS DateTime), 0, 1, 2022, 1, 1, 1, 1, 0, 0, CAST(N'2024-11-20T00:00:00.000' AS DateTime), 0, CAST(N'2024-11-20T00:00:00.000' AS DateTime))
INSERT [dbo].[ChuyenDi] ([id], [MaChuyenDi], [Slot], [NgayThamQuan], [TrangThai], [HocKi], [NamHoc], [idGiangVien], [idDoanhNghiep], [idKhoa], [idKhoaHoc], [is_deleted], [created_by], [created_at], [updated_by], [updated_at]) VALUES (2, N'DK02', 25, CAST(N'2015-11-02T00:00:00.000' AS DateTime), 0, 2, 2015, 2, 2, 2, 2, 0, 0, CAST(N'2024-11-18T10:41:37.310' AS DateTime), 0, CAST(N'2024-11-18T10:41:37.310' AS DateTime))
INSERT [dbo].[ChuyenDi] ([id], [MaChuyenDi], [Slot], [NgayThamQuan], [TrangThai], [HocKi], [NamHoc], [idGiangVien], [idDoanhNghiep], [idKhoa], [idKhoaHoc], [is_deleted], [created_by], [created_at], [updated_by], [updated_at]) VALUES (3, N'DK03', 20, CAST(N'2016-11-03T00:00:00.000' AS DateTime), 0, 3, 2016, 3, 3, 3, 3, 0, 0, CAST(N'2024-11-18T10:41:37.310' AS DateTime), 0, CAST(N'2024-11-18T10:41:37.310' AS DateTime))
INSERT [dbo].[ChuyenDi] ([id], [MaChuyenDi], [Slot], [NgayThamQuan], [TrangThai], [HocKi], [NamHoc], [idGiangVien], [idDoanhNghiep], [idKhoa], [idKhoaHoc], [is_deleted], [created_by], [created_at], [updated_by], [updated_at]) VALUES (4, N'DK04', 35, CAST(N'2017-11-04T00:00:00.000' AS DateTime), 0, 1, 2017, 4, 4, 4, 4, 0, 0, CAST(N'2024-11-18T10:41:37.310' AS DateTime), 0, CAST(N'2024-11-18T10:41:37.310' AS DateTime))
INSERT [dbo].[ChuyenDi] ([id], [MaChuyenDi], [Slot], [NgayThamQuan], [TrangThai], [HocKi], [NamHoc], [idGiangVien], [idDoanhNghiep], [idKhoa], [idKhoaHoc], [is_deleted], [created_by], [created_at], [updated_by], [updated_at]) VALUES (5, N'DK05', 40, CAST(N'2018-11-05T00:00:00.000' AS DateTime), 0, 2, 2018, 5, 5, 5, 5, 0, 0, CAST(N'2024-11-18T10:41:37.310' AS DateTime), 0, CAST(N'2024-11-18T10:41:37.310' AS DateTime))
INSERT [dbo].[ChuyenDi] ([id], [MaChuyenDi], [Slot], [NgayThamQuan], [TrangThai], [HocKi], [NamHoc], [idGiangVien], [idDoanhNghiep], [idKhoa], [idKhoaHoc], [is_deleted], [created_by], [created_at], [updated_by], [updated_at]) VALUES (6, N'DK06', 15, CAST(N'2019-11-06T00:00:00.000' AS DateTime), 0, 3, 2019, 6, 6, 6, 6, 0, 0, CAST(N'2024-11-18T10:41:37.310' AS DateTime), 0, CAST(N'2024-11-18T10:41:37.310' AS DateTime))
INSERT [dbo].[ChuyenDi] ([id], [MaChuyenDi], [Slot], [NgayThamQuan], [TrangThai], [HocKi], [NamHoc], [idGiangVien], [idDoanhNghiep], [idKhoa], [idKhoaHoc], [is_deleted], [created_by], [created_at], [updated_by], [updated_at]) VALUES (7, N'DK07', 30, CAST(N'2020-11-07T00:00:00.000' AS DateTime), 0, 1, 2020, 7, 7, 7, 7, 0, 0, CAST(N'2024-11-18T10:41:37.310' AS DateTime), 0, CAST(N'2024-11-18T10:41:37.310' AS DateTime))
INSERT [dbo].[ChuyenDi] ([id], [MaChuyenDi], [Slot], [NgayThamQuan], [TrangThai], [HocKi], [NamHoc], [idGiangVien], [idDoanhNghiep], [idKhoa], [idKhoaHoc], [is_deleted], [created_by], [created_at], [updated_by], [updated_at]) VALUES (8, N'DK08', 25, CAST(N'2021-11-08T00:00:00.000' AS DateTime), 0, 2, 2021, 8, 8, 8, 8, 0, 0, CAST(N'2024-11-18T10:41:37.310' AS DateTime), 0, CAST(N'2024-11-18T10:41:37.310' AS DateTime))
INSERT [dbo].[ChuyenDi] ([id], [MaChuyenDi], [Slot], [NgayThamQuan], [TrangThai], [HocKi], [NamHoc], [idGiangVien], [idDoanhNghiep], [idKhoa], [idKhoaHoc], [is_deleted], [created_by], [created_at], [updated_by], [updated_at]) VALUES (9, N'DK09', 20, CAST(N'2022-11-09T00:00:00.000' AS DateTime), 0, 3, 2022, 9, 9, 9, 9, 0, 0, CAST(N'2024-11-18T10:41:37.310' AS DateTime), 0, CAST(N'2024-11-18T10:41:37.310' AS DateTime))
INSERT [dbo].[ChuyenDi] ([id], [MaChuyenDi], [Slot], [NgayThamQuan], [TrangThai], [HocKi], [NamHoc], [idGiangVien], [idDoanhNghiep], [idKhoa], [idKhoaHoc], [is_deleted], [created_by], [created_at], [updated_by], [updated_at]) VALUES (10, N'DK10', 35, CAST(N'2023-11-10T00:00:00.000' AS DateTime), 0, 1, 2023, 10, 10, 10, 10, 0, 0, CAST(N'2024-11-18T10:41:37.310' AS DateTime), 0, CAST(N'2024-11-18T10:41:37.310' AS DateTime))
SET IDENTITY_INSERT [dbo].[ChuyenDi] OFF
GO
SET IDENTITY_INSERT [dbo].[DoanhNghiep] ON 

INSERT [dbo].[DoanhNghiep] ([id], [MaDoanhNghiep], [TenDoanhNghiep], [SoDienThoai], [DiaChi], [is_deleted], [created_by], [created_at], [updated_by], [updated_at]) VALUES (1, N'DN01', N'Công ty Công nghệ ABC', N'0281234560', N'123 Đường Số 1, Quận 9, TP.HCM', 0, 0, CAST(N'2024-11-18T10:41:37.257' AS DateTime), 0, CAST(N'2024-11-18T10:41:37.257' AS DateTime))
INSERT [dbo].[DoanhNghiep] ([id], [MaDoanhNghiep], [TenDoanhNghiep], [SoDienThoai], [DiaChi], [is_deleted], [created_by], [created_at], [updated_by], [updated_at]) VALUES (2, N'DN02', N'Tập đoàn XYZ', N'0281234561', N'456 Đường Số 2, Quận Thủ Đức, TP.HCM', 0, 0, CAST(N'2024-11-18T10:41:37.257' AS DateTime), 0, CAST(N'2024-11-18T10:41:37.257' AS DateTime))
INSERT [dbo].[DoanhNghiep] ([id], [MaDoanhNghiep], [TenDoanhNghiep], [SoDienThoai], [DiaChi], [is_deleted], [created_by], [created_at], [updated_by], [updated_at]) VALUES (3, N'DN03', N'Công ty Điện tử Điện lạnh', N'0281234562', N'789 Đường Số 3, Quận 7, TP.HCM', 0, 0, CAST(N'2024-11-18T10:41:37.257' AS DateTime), 0, CAST(N'2024-11-18T10:41:37.257' AS DateTime))
INSERT [dbo].[DoanhNghiep] ([id], [MaDoanhNghiep], [TenDoanhNghiep], [SoDienThoai], [DiaChi], [is_deleted], [created_by], [created_at], [updated_by], [updated_at]) VALUES (4, N'DN04', N'Công ty Cơ khí Công nghiệp', N'0281234563', N'101 Đường Số 4, Quận 12, TP.HCM', 0, 0, CAST(N'2024-11-18T10:41:37.257' AS DateTime), 0, CAST(N'2024-11-18T10:41:37.257' AS DateTime))
INSERT [dbo].[DoanhNghiep] ([id], [MaDoanhNghiep], [TenDoanhNghiep], [SoDienThoai], [DiaChi], [is_deleted], [created_by], [created_at], [updated_by], [updated_at]) VALUES (5, N'DN05', N'Công ty Thực phẩm An Toàn', N'0281234564', N'202 Đường Số 5, Quận Bình Tân, TP.HCM', 0, 0, CAST(N'2024-11-18T10:41:37.257' AS DateTime), 0, CAST(N'2024-11-18T10:41:37.257' AS DateTime))
INSERT [dbo].[DoanhNghiep] ([id], [MaDoanhNghiep], [TenDoanhNghiep], [SoDienThoai], [DiaChi], [is_deleted], [created_by], [created_at], [updated_by], [updated_at]) VALUES (6, N'DN06', N'Tập đoàn Xây dựng Việt Nam', N'0281234565', N'303 Đường Số 6, Quận 10, TP.HCM', 0, 0, CAST(N'2024-11-18T10:41:37.257' AS DateTime), 0, CAST(N'2024-11-18T10:41:37.257' AS DateTime))
INSERT [dbo].[DoanhNghiep] ([id], [MaDoanhNghiep], [TenDoanhNghiep], [SoDienThoai], [DiaChi], [is_deleted], [created_by], [created_at], [updated_by], [updated_at]) VALUES (7, N'DN07', N'Công ty Sản xuất Thiết bị Y tế', N'0281234566', N'404 Đường Số 7, Quận Gò Vấp, TP.HCM', 0, 0, CAST(N'2024-11-18T10:41:37.257' AS DateTime), 0, CAST(N'2024-11-18T10:41:37.257' AS DateTime))
INSERT [dbo].[DoanhNghiep] ([id], [MaDoanhNghiep], [TenDoanhNghiep], [SoDienThoai], [DiaChi], [is_deleted], [created_by], [created_at], [updated_by], [updated_at]) VALUES (8, N'DN08', N'Công ty Phần mềm Giải pháp', N'0281234567', N'505 Đường Số 8, Quận 5, TP.HCM', 0, 0, CAST(N'2024-11-18T10:41:37.257' AS DateTime), 0, CAST(N'2024-11-18T10:41:37.257' AS DateTime))
INSERT [dbo].[DoanhNghiep] ([id], [MaDoanhNghiep], [TenDoanhNghiep], [SoDienThoai], [DiaChi], [is_deleted], [created_by], [created_at], [updated_by], [updated_at]) VALUES (9, N'DN09', N'Công ty Nông sản Việt', N'0281234568', N'606 Đường Số 9, Quận 8, TP.HCM', 0, 0, CAST(N'2024-11-18T10:41:37.257' AS DateTime), 0, CAST(N'2024-11-18T10:41:37.257' AS DateTime))
INSERT [dbo].[DoanhNghiep] ([id], [MaDoanhNghiep], [TenDoanhNghiep], [SoDienThoai], [DiaChi], [is_deleted], [created_by], [created_at], [updated_by], [updated_at]) VALUES (10, N'DN10', N'Tập đoàn Thời trang Toàn Cầu', N'0281234569', N'707 Đường Số 10, Quận Tân Bình, TP.HCM', 0, 0, CAST(N'2024-11-18T10:41:37.257' AS DateTime), 0, CAST(N'2024-11-18T10:41:37.257' AS DateTime))
SET IDENTITY_INSERT [dbo].[DoanhNghiep] OFF
GO
SET IDENTITY_INSERT [dbo].[GiangVien] ON 

INSERT [dbo].[GiangVien] ([id], [MaGiangVien], [TenGiangVien], [SoDienThoai], [idKhoa], [is_deleted], [created_by], [created_at], [updated_by], [updated_at]) VALUES (1, N'GV01', N'Nguyễn Văn A', N'0912345671', 1, 0, 1, CAST(N'2024-11-18T10:41:37.273' AS DateTime), 1, CAST(N'2024-11-18T10:41:37.273' AS DateTime))
INSERT [dbo].[GiangVien] ([id], [MaGiangVien], [TenGiangVien], [SoDienThoai], [idKhoa], [is_deleted], [created_by], [created_at], [updated_by], [updated_at]) VALUES (2, N'GV02', N'Nguyễn Văn B', N'0912345672', 2, 0, 1, CAST(N'2024-11-18T10:41:37.273' AS DateTime), 1, CAST(N'2024-11-18T10:41:37.273' AS DateTime))
INSERT [dbo].[GiangVien] ([id], [MaGiangVien], [TenGiangVien], [SoDienThoai], [idKhoa], [is_deleted], [created_by], [created_at], [updated_by], [updated_at]) VALUES (3, N'GV03', N'Nguyễn Văn C', N'0912345673', 3, 0, 1, CAST(N'2024-11-18T10:41:37.273' AS DateTime), 1, CAST(N'2024-11-18T10:41:37.273' AS DateTime))
INSERT [dbo].[GiangVien] ([id], [MaGiangVien], [TenGiangVien], [SoDienThoai], [idKhoa], [is_deleted], [created_by], [created_at], [updated_by], [updated_at]) VALUES (4, N'GV04', N'Nguyễn Văn D', N'0912345674', 4, 0, 1, CAST(N'2024-11-18T10:41:37.273' AS DateTime), 1, CAST(N'2024-11-18T10:41:37.273' AS DateTime))
INSERT [dbo].[GiangVien] ([id], [MaGiangVien], [TenGiangVien], [SoDienThoai], [idKhoa], [is_deleted], [created_by], [created_at], [updated_by], [updated_at]) VALUES (5, N'GV05', N'Nguyễn Văn E', N'0912345675', 5, 0, 1, CAST(N'2024-11-18T10:41:37.273' AS DateTime), 1, CAST(N'2024-11-18T10:41:37.273' AS DateTime))
INSERT [dbo].[GiangVien] ([id], [MaGiangVien], [TenGiangVien], [SoDienThoai], [idKhoa], [is_deleted], [created_by], [created_at], [updated_by], [updated_at]) VALUES (6, N'GV06', N'Nguyễn Văn F', N'0912345676', 6, 0, 1, CAST(N'2024-11-18T10:41:37.273' AS DateTime), 1, CAST(N'2024-11-18T10:41:37.273' AS DateTime))
INSERT [dbo].[GiangVien] ([id], [MaGiangVien], [TenGiangVien], [SoDienThoai], [idKhoa], [is_deleted], [created_by], [created_at], [updated_by], [updated_at]) VALUES (7, N'GV07', N'Nguyễn Văn G', N'0912345677', 7, 0, 1, CAST(N'2024-11-18T10:41:37.273' AS DateTime), 1, CAST(N'2024-11-18T10:41:37.273' AS DateTime))
INSERT [dbo].[GiangVien] ([id], [MaGiangVien], [TenGiangVien], [SoDienThoai], [idKhoa], [is_deleted], [created_by], [created_at], [updated_by], [updated_at]) VALUES (8, N'GV08', N'Nguyễn Văn H', N'0912345678', 8, 0, 1, CAST(N'2024-11-18T10:41:37.273' AS DateTime), 1, CAST(N'2024-11-18T10:41:37.273' AS DateTime))
INSERT [dbo].[GiangVien] ([id], [MaGiangVien], [TenGiangVien], [SoDienThoai], [idKhoa], [is_deleted], [created_by], [created_at], [updated_by], [updated_at]) VALUES (9, N'GV09', N'Nguyễn Văn I', N'0912345679', 9, 0, 1, CAST(N'2024-11-18T10:41:37.273' AS DateTime), 1, CAST(N'2024-11-18T10:41:37.273' AS DateTime))
INSERT [dbo].[GiangVien] ([id], [MaGiangVien], [TenGiangVien], [SoDienThoai], [idKhoa], [is_deleted], [created_by], [created_at], [updated_by], [updated_at]) VALUES (10, N'GV10', N'Nguyễn Văn J', N'0912345680', 10, 0, 1, CAST(N'2024-11-18T10:41:37.273' AS DateTime), 1, CAST(N'2024-11-18T10:41:37.273' AS DateTime))
SET IDENTITY_INSERT [dbo].[GiangVien] OFF
GO
SET IDENTITY_INSERT [dbo].[Khoa] ON 

INSERT [dbo].[Khoa] ([id], [MaKhoa], [TenKhoa], [SoDienThoai], [Email], [is_deleted], [created_by], [created_at], [updated_by], [updated_at]) VALUES (1, N'CNTT', N'Khoa Công nghệ Thông tin', N'0281234567', N'cntt@tdc.edu.vn', 0, 0, CAST(N'2024-11-18T10:41:37.247' AS DateTime), 0, CAST(N'2024-11-18T10:41:37.247' AS DateTime))
INSERT [dbo].[Khoa] ([id], [MaKhoa], [TenKhoa], [SoDienThoai], [Email], [is_deleted], [created_by], [created_at], [updated_by], [updated_at]) VALUES (2, N'QTKD', N'Khoa Quản trị Kinh doanh', N'0281234568', N'qtkd@tdc.edu.vn', 0, 0, CAST(N'2024-11-18T10:41:37.247' AS DateTime), 0, CAST(N'2024-11-18T10:41:37.247' AS DateTime))
INSERT [dbo].[Khoa] ([id], [MaKhoa], [TenKhoa], [SoDienThoai], [Email], [is_deleted], [created_by], [created_at], [updated_by], [updated_at]) VALUES (3, N'CK', N'Khoa Cơ khí', N'0281234569', N'ck@tdc.edu.vn', 0, 0, CAST(N'2024-11-18T10:41:37.247' AS DateTime), 0, CAST(N'2024-11-18T10:41:37.247' AS DateTime))
INSERT [dbo].[Khoa] ([id], [MaKhoa], [TenKhoa], [SoDienThoai], [Email], [is_deleted], [created_by], [created_at], [updated_by], [updated_at]) VALUES (4, N'DD', N'Khoa Điện - Điện tử', N'0281234570', N'dd@tdc.edu.vn', 0, 0, CAST(N'2024-11-18T10:41:37.247' AS DateTime), 0, CAST(N'2024-11-18T10:41:37.247' AS DateTime))
INSERT [dbo].[Khoa] ([id], [MaKhoa], [TenKhoa], [SoDienThoai], [Email], [is_deleted], [created_by], [created_at], [updated_by], [updated_at]) VALUES (5, N'NL', N'Khoa Nông Lâm', N'0281234571', N'nl@tdc.edu.vn', 0, 0, CAST(N'2024-11-18T10:41:37.247' AS DateTime), 0, CAST(N'2024-11-18T10:41:37.247' AS DateTime))
INSERT [dbo].[Khoa] ([id], [MaKhoa], [TenKhoa], [SoDienThoai], [Email], [is_deleted], [created_by], [created_at], [updated_by], [updated_at]) VALUES (6, N'LT', N'Khoa Lữ hành - Nhà hàng - Khách sạn', N'0281234572', N'lt@tdc.edu.vn', 0, 0, CAST(N'2024-11-18T10:41:37.247' AS DateTime), 0, CAST(N'2024-11-18T10:41:37.247' AS DateTime))
INSERT [dbo].[Khoa] ([id], [MaKhoa], [TenKhoa], [SoDienThoai], [Email], [is_deleted], [created_by], [created_at], [updated_by], [updated_at]) VALUES (7, N'XD', N'Khoa Xây dựng', N'0281234573', N'xd@tdc.edu.vn', 0, 0, CAST(N'2024-11-18T10:41:37.247' AS DateTime), 0, CAST(N'2024-11-18T10:41:37.247' AS DateTime))
INSERT [dbo].[Khoa] ([id], [MaKhoa], [TenKhoa], [SoDienThoai], [Email], [is_deleted], [created_by], [created_at], [updated_by], [updated_at]) VALUES (8, N'YH', N'Khoa Y học', N'0281234574', N'yh@tdc.edu.vn', 0, 0, CAST(N'2024-11-18T10:41:37.247' AS DateTime), 0, CAST(N'2024-11-18T10:41:37.247' AS DateTime))
INSERT [dbo].[Khoa] ([id], [MaKhoa], [TenKhoa], [SoDienThoai], [Email], [is_deleted], [created_by], [created_at], [updated_by], [updated_at]) VALUES (9, N'TK', N'Khoa Thiết kế', N'0281234575', N'tk@tdc.edu.vn', 0, 0, CAST(N'2024-11-18T10:41:37.247' AS DateTime), 0, CAST(N'2024-11-18T10:41:37.247' AS DateTime))
INSERT [dbo].[Khoa] ([id], [MaKhoa], [TenKhoa], [SoDienThoai], [Email], [is_deleted], [created_by], [created_at], [updated_by], [updated_at]) VALUES (10, N'SP', N'Khoa Sư phạm', N'0281234576', N'sp@tdc.edu.vn', 0, 0, CAST(N'2024-11-18T10:41:37.247' AS DateTime), 0, CAST(N'2024-11-18T10:41:37.247' AS DateTime))
--INSERT [dbo].[Khoa] ([id], [MaKhoa], [TenKhoa], [SoDienThoai], [Email], [is_deleted], [created_by], [created_at], [updated_by], [updated_at]) VALUES (11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Khoa] OFF
GO
SET IDENTITY_INSERT [dbo].[KhoaHoc] ON 

INSERT [dbo].[KhoaHoc] ([id], [MaKhoaHoc], [NamBatDau], [NamKetThuc], [is_deleted], [created_by], [created_at], [updated_by], [updated_at]) VALUES (1, N'KH01', 2014, 2017, 0, 0, CAST(N'2024-11-18T10:41:37.237' AS DateTime), 0, CAST(N'2024-11-18T10:41:37.237' AS DateTime))
INSERT [dbo].[KhoaHoc] ([id], [MaKhoaHoc], [NamBatDau], [NamKetThuc], [is_deleted], [created_by], [created_at], [updated_by], [updated_at]) VALUES (2, N'KH02', 2015, 2018, 0, 0, CAST(N'2024-11-18T10:41:37.237' AS DateTime), 0, CAST(N'2024-11-18T10:41:37.237' AS DateTime))
INSERT [dbo].[KhoaHoc] ([id], [MaKhoaHoc], [NamBatDau], [NamKetThuc], [is_deleted], [created_by], [created_at], [updated_by], [updated_at]) VALUES (3, N'KH03', 2016, 2019, 0, 0, CAST(N'2024-11-18T10:41:37.237' AS DateTime), 0, CAST(N'2024-11-18T10:41:37.237' AS DateTime))
INSERT [dbo].[KhoaHoc] ([id], [MaKhoaHoc], [NamBatDau], [NamKetThuc], [is_deleted], [created_by], [created_at], [updated_by], [updated_at]) VALUES (4, N'KH04', 2017, 2020, 0, 0, CAST(N'2024-11-18T10:41:37.237' AS DateTime), 0, CAST(N'2024-11-18T10:41:37.237' AS DateTime))
INSERT [dbo].[KhoaHoc] ([id], [MaKhoaHoc], [NamBatDau], [NamKetThuc], [is_deleted], [created_by], [created_at], [updated_by], [updated_at]) VALUES (5, N'KH05', 2018, 2021, 0, 0, CAST(N'2024-11-18T10:41:37.237' AS DateTime), 0, CAST(N'2024-11-18T10:41:37.237' AS DateTime))
INSERT [dbo].[KhoaHoc] ([id], [MaKhoaHoc], [NamBatDau], [NamKetThuc], [is_deleted], [created_by], [created_at], [updated_by], [updated_at]) VALUES (6, N'KH06', 2019, 2022, 0, 0, CAST(N'2024-11-18T10:41:37.237' AS DateTime), 0, CAST(N'2024-11-18T10:41:37.237' AS DateTime))
INSERT [dbo].[KhoaHoc] ([id], [MaKhoaHoc], [NamBatDau], [NamKetThuc], [is_deleted], [created_by], [created_at], [updated_by], [updated_at]) VALUES (7, N'KH07', 2020, 2023, 0, 0, CAST(N'2024-11-18T10:41:37.237' AS DateTime), 0, CAST(N'2024-11-18T10:41:37.237' AS DateTime))
INSERT [dbo].[KhoaHoc] ([id], [MaKhoaHoc], [NamBatDau], [NamKetThuc], [is_deleted], [created_by], [created_at], [updated_by], [updated_at]) VALUES (8, N'KH08', 2021, 2024, 0, 0, CAST(N'2024-11-18T10:41:37.237' AS DateTime), 0, CAST(N'2024-11-18T10:41:37.237' AS DateTime))
INSERT [dbo].[KhoaHoc] ([id], [MaKhoaHoc], [NamBatDau], [NamKetThuc], [is_deleted], [created_by], [created_at], [updated_by], [updated_at]) VALUES (9, N'KH09', 2022, 2025, 0, 0, CAST(N'2024-11-18T10:41:37.237' AS DateTime), 0, CAST(N'2024-11-18T10:41:37.237' AS DateTime))
INSERT [dbo].[KhoaHoc] ([id], [MaKhoaHoc], [NamBatDau], [NamKetThuc], [is_deleted], [created_by], [created_at], [updated_by], [updated_at]) VALUES (10, N'KH10', 2023, 2026, 0, 0, CAST(N'2024-11-18T10:41:37.237' AS DateTime), 0, CAST(N'2024-11-18T10:41:37.237' AS DateTime))
INSERT [dbo].[KhoaHoc] ([id], [MaKhoaHoc], [NamBatDau], [NamKetThuc], [is_deleted], [created_by], [created_at], [updated_by], [updated_at]) VALUES (11, N'KH11', 2024, 2027, 0, 0, CAST(N'2024-11-18T10:41:37.237' AS DateTime), 0, CAST(N'2024-11-18T10:41:37.237' AS DateTime))
SET IDENTITY_INSERT [dbo].[KhoaHoc] OFF
GO
SET IDENTITY_INSERT [dbo].[SinhVien] ON 

INSERT [dbo].[SinhVien] ([id], [MaSinhVien], [TenSinhVien], [SoDienThoai], [Email], [idKhoa], [idTaiKhoan], [idKhoaHoc], [is_deleted], [created_by], [created_at], [updated_by], [updated_at]) VALUES (1, N'SV001', N'Nguyễn Văn A', N'0123456789', N'nguyenvana@example.com', 1, 1, 1, 0, 0, CAST(N'2024-11-18T10:41:37.290' AS DateTime), 0, CAST(N'2024-11-18T10:41:37.290' AS DateTime))
INSERT [dbo].[SinhVien] ([id], [MaSinhVien], [TenSinhVien], [SoDienThoai], [Email], [idKhoa], [idTaiKhoan], [idKhoaHoc], [is_deleted], [created_by], [created_at], [updated_by], [updated_at]) VALUES (2, N'SV002', N'Trần Thị B', N'0987654321', N'tranthib@example.com', 2, 2, 2, 0, 0, CAST(N'2024-11-18T10:41:37.290' AS DateTime), 0, CAST(N'2024-11-18T10:41:37.290' AS DateTime))
INSERT [dbo].[SinhVien] ([id], [MaSinhVien], [TenSinhVien], [SoDienThoai], [Email], [idKhoa], [idTaiKhoan], [idKhoaHoc], [is_deleted], [created_by], [created_at], [updated_by], [updated_at]) VALUES (3, N'SV003', N'Lê Minh C', N'0912345678', N'leminhc@example.com', 3, 3, 3, 0, 0, CAST(N'2024-11-18T10:41:37.290' AS DateTime), 0, CAST(N'2024-11-18T10:41:37.290' AS DateTime))
INSERT [dbo].[SinhVien] ([id], [MaSinhVien], [TenSinhVien], [SoDienThoai], [Email], [idKhoa], [idTaiKhoan], [idKhoaHoc], [is_deleted], [created_by], [created_at], [updated_by], [updated_at]) VALUES (4, N'SV004', N'Phạm Thùy D', N'0901234567', N'phamthuyd@example.com', 4, 4, 4, 0, 0, CAST(N'2024-11-18T10:41:37.290' AS DateTime), 0, CAST(N'2024-11-18T10:41:37.290' AS DateTime))
INSERT [dbo].[SinhVien] ([id], [MaSinhVien], [TenSinhVien], [SoDienThoai], [Email], [idKhoa], [idTaiKhoan], [idKhoaHoc], [is_deleted], [created_by], [created_at], [updated_by], [updated_at]) VALUES (5, N'SV005', N'Hoàng Văn E', N'0934567890', N'hoangvane@example.com', 5, 5, 5, 0, 0, CAST(N'2024-11-18T10:41:37.290' AS DateTime), 0, CAST(N'2024-11-18T10:41:37.290' AS DateTime))
INSERT [dbo].[SinhVien] ([id], [MaSinhVien], [TenSinhVien], [SoDienThoai], [Email], [idKhoa], [idTaiKhoan], [idKhoaHoc], [is_deleted], [created_by], [created_at], [updated_by], [updated_at]) VALUES (6, N'SV006', N'Vũ Thị F', N'0908765432', N'vuthif@example.com', 6, 6, 6, 0, 0, CAST(N'2024-11-18T10:41:37.290' AS DateTime), 0, CAST(N'2024-11-18T10:41:37.290' AS DateTime))
INSERT [dbo].[SinhVien] ([id], [MaSinhVien], [TenSinhVien], [SoDienThoai], [Email], [idKhoa], [idTaiKhoan], [idKhoaHoc], [is_deleted], [created_by], [created_at], [updated_by], [updated_at]) VALUES (7, N'SV007', N'Nguyễn Hoàng G', N'0976543210', N'nguyenhoangg@example.com', 7, 7, 7, 0, 0, CAST(N'2024-11-18T10:41:37.290' AS DateTime), 0, CAST(N'2024-11-18T10:41:37.290' AS DateTime))
INSERT [dbo].[SinhVien] ([id], [MaSinhVien], [TenSinhVien], [SoDienThoai], [Email], [idKhoa], [idTaiKhoan], [idKhoaHoc], [is_deleted], [created_by], [created_at], [updated_by], [updated_at]) VALUES (8, N'SV008', N'Đặng Xuân H', N'0923456789', N'dangxuanh@example.com', 8, 8, 8, 0, 0, CAST(N'2024-11-18T10:41:37.290' AS DateTime), 0, CAST(N'2024-11-18T10:41:37.290' AS DateTime))
INSERT [dbo].[SinhVien] ([id], [MaSinhVien], [TenSinhVien], [SoDienThoai], [Email], [idKhoa], [idTaiKhoan], [idKhoaHoc], [is_deleted], [created_by], [created_at], [updated_by], [updated_at]) VALUES (9, N'SV009', N'Phan Minh I', N'0912340987', N'phanminhi@example.com', 9, 9, 9, 0, 0, CAST(N'2024-11-18T10:41:37.290' AS DateTime), 0, CAST(N'2024-11-18T10:41:37.290' AS DateTime))
INSERT [dbo].[SinhVien] ([id], [MaSinhVien], [TenSinhVien], [SoDienThoai], [Email], [idKhoa], [idTaiKhoan], [idKhoaHoc], [is_deleted], [created_by], [created_at], [updated_by], [updated_at]) VALUES (10, N'SV010', N'Lý Hải J', N'0967890123', N'lyhaij@example.com', 10, 10, 10, 0, 0, CAST(N'2024-11-18T10:41:37.290' AS DateTime), 0, CAST(N'2024-11-18T10:41:37.290' AS DateTime))
INSERT [dbo].[SinhVien] ([id], [MaSinhVien], [TenSinhVien], [SoDienThoai], [Email], [idKhoa], [idTaiKhoan], [idKhoaHoc], [is_deleted], [created_by], [created_at], [updated_by], [updated_at]) VALUES (11, N'SV01', N'Sinh Viên 1', N'0123456701', N'sinhvien1@abc.com', 1, 1, 1, 0, 0, CAST(N'2024-11-20T17:45:45.457' AS DateTime), 0, CAST(N'2024-11-20T17:45:45.457' AS DateTime))
INSERT [dbo].[SinhVien] ([id], [MaSinhVien], [TenSinhVien], [SoDienThoai], [Email], [idKhoa], [idTaiKhoan], [idKhoaHoc], [is_deleted], [created_by], [created_at], [updated_by], [updated_at]) VALUES (12, N'SV02', N'Sinh Viên 2', N'0123456702', N'sinhvien2@abc.com', 1, 1, 1, 0, 0, CAST(N'2024-11-20T17:45:45.457' AS DateTime), 0, CAST(N'2024-11-20T17:45:45.457' AS DateTime))
INSERT [dbo].[SinhVien] ([id], [MaSinhVien], [TenSinhVien], [SoDienThoai], [Email], [idKhoa], [idTaiKhoan], [idKhoaHoc], [is_deleted], [created_by], [created_at], [updated_by], [updated_at]) VALUES (13, N'SV03', N'Sinh Viên 3', N'0123456703', N'sinhvien3@abc.com', 1, 1, 1, 0, 0, CAST(N'2024-11-20T17:45:45.457' AS DateTime), 0, CAST(N'2024-11-20T17:45:45.457' AS DateTime))
INSERT [dbo].[SinhVien] ([id], [MaSinhVien], [TenSinhVien], [SoDienThoai], [Email], [idKhoa], [idTaiKhoan], [idKhoaHoc], [is_deleted], [created_by], [created_at], [updated_by], [updated_at]) VALUES (14, N'SV04', N'Sinh Viên 4', N'0123456704', N'sinhvien4@abc.com', 1, 1, 1, 0, 0, CAST(N'2024-11-20T17:45:45.457' AS DateTime), 0, CAST(N'2024-11-20T17:45:45.457' AS DateTime))
INSERT [dbo].[SinhVien] ([id], [MaSinhVien], [TenSinhVien], [SoDienThoai], [Email], [idKhoa], [idTaiKhoan], [idKhoaHoc], [is_deleted], [created_by], [created_at], [updated_by], [updated_at]) VALUES (15, N'SV05', N'Sinh Viên 5', N'0123456705', N'sinhvien5@abc.com', 1, 1, 1, 0, 0, CAST(N'2024-11-20T17:45:45.457' AS DateTime), 0, CAST(N'2024-11-20T17:45:45.457' AS DateTime))
INSERT [dbo].[SinhVien] ([id], [MaSinhVien], [TenSinhVien], [SoDienThoai], [Email], [idKhoa], [idTaiKhoan], [idKhoaHoc], [is_deleted], [created_by], [created_at], [updated_by], [updated_at]) VALUES (16, N'SV06', N'Sinh Viên 6', N'0123456706', N'sinhvien6@abc.com', 1, 1, 1, 0, 0, CAST(N'2024-11-20T17:45:45.457' AS DateTime), 0, CAST(N'2024-11-20T17:45:45.457' AS DateTime))
INSERT [dbo].[SinhVien] ([id], [MaSinhVien], [TenSinhVien], [SoDienThoai], [Email], [idKhoa], [idTaiKhoan], [idKhoaHoc], [is_deleted], [created_by], [created_at], [updated_by], [updated_at]) VALUES (17, N'SV07', N'Sinh Viên 7', N'0123456707', N'sinhvien7@abc.com', 1, 1, 1, 0, 0, CAST(N'2024-11-20T17:45:45.457' AS DateTime), 0, CAST(N'2024-11-20T17:45:45.457' AS DateTime))
INSERT [dbo].[SinhVien] ([id], [MaSinhVien], [TenSinhVien], [SoDienThoai], [Email], [idKhoa], [idTaiKhoan], [idKhoaHoc], [is_deleted], [created_by], [created_at], [updated_by], [updated_at]) VALUES (18, N'SV08', N'Sinh Viên 8', N'0123456708', N'sinhvien8@abc.com', 1, 1, 1, 0, 0, CAST(N'2024-11-20T17:45:45.460' AS DateTime), 0, CAST(N'2024-11-20T17:45:45.460' AS DateTime))
INSERT [dbo].[SinhVien] ([id], [MaSinhVien], [TenSinhVien], [SoDienThoai], [Email], [idKhoa], [idTaiKhoan], [idKhoaHoc], [is_deleted], [created_by], [created_at], [updated_by], [updated_at]) VALUES (19, N'SV09', N'Sinh Viên 9', N'0123456709', N'sinhvien9@abc.com', 1, 1, 1, 0, 0, CAST(N'2024-11-20T17:45:45.460' AS DateTime), 0, CAST(N'2024-11-20T17:45:45.460' AS DateTime))
INSERT [dbo].[SinhVien] ([id], [MaSinhVien], [TenSinhVien], [SoDienThoai], [Email], [idKhoa], [idTaiKhoan], [idKhoaHoc], [is_deleted], [created_by], [created_at], [updated_by], [updated_at]) VALUES (20, N'SV010', N'Sinh Viên 10', N'0123456710', N'sinhvien10@abc.com', 1, 1, 1, 0, 0, CAST(N'2024-11-20T17:45:45.460' AS DateTime), 0, CAST(N'2024-11-20T17:45:45.460' AS DateTime))
INSERT [dbo].[SinhVien] ([id], [MaSinhVien], [TenSinhVien], [SoDienThoai], [Email], [idKhoa], [idTaiKhoan], [idKhoaHoc], [is_deleted], [created_by], [created_at], [updated_by], [updated_at]) VALUES (21, N'SV011', N'Sinh Viên 11', N'0123456711', N'sinhvien11@abc.com', 1, 1, 1, 0, 0, CAST(N'2024-11-20T17:45:45.460' AS DateTime), 0, CAST(N'2024-11-20T17:45:45.460' AS DateTime))
INSERT [dbo].[SinhVien] ([id], [MaSinhVien], [TenSinhVien], [SoDienThoai], [Email], [idKhoa], [idTaiKhoan], [idKhoaHoc], [is_deleted], [created_by], [created_at], [updated_by], [updated_at]) VALUES (22, N'SV012', N'Sinh Viên 12', N'0123456712', N'sinhvien12@abc.com', 1, 1, 1, 0, 0, CAST(N'2024-11-20T17:45:45.460' AS DateTime), 0, CAST(N'2024-11-20T17:45:45.460' AS DateTime))
INSERT [dbo].[SinhVien] ([id], [MaSinhVien], [TenSinhVien], [SoDienThoai], [Email], [idKhoa], [idTaiKhoan], [idKhoaHoc], [is_deleted], [created_by], [created_at], [updated_by], [updated_at]) VALUES (23, N'SV013', N'Sinh Viên 13', N'0123456713', N'sinhvien13@abc.com', 1, 1, 1, 0, 0, CAST(N'2024-11-20T17:45:45.460' AS DateTime), 0, CAST(N'2024-11-20T17:45:45.460' AS DateTime))
INSERT [dbo].[SinhVien] ([id], [MaSinhVien], [TenSinhVien], [SoDienThoai], [Email], [idKhoa], [idTaiKhoan], [idKhoaHoc], [is_deleted], [created_by], [created_at], [updated_by], [updated_at]) VALUES (24, N'SV014', N'Sinh Viên 14', N'0123456714', N'sinhvien14@abc.com', 1, 1, 1, 0, 0, CAST(N'2024-11-20T17:45:45.460' AS DateTime), 0, CAST(N'2024-11-20T17:45:45.460' AS DateTime))
INSERT [dbo].[SinhVien] ([id], [MaSinhVien], [TenSinhVien], [SoDienThoai], [Email], [idKhoa], [idTaiKhoan], [idKhoaHoc], [is_deleted], [created_by], [created_at], [updated_by], [updated_at]) VALUES (25, N'SV015', N'Sinh Viên 15', N'0123456715', N'sinhvien15@abc.com', 1, 1, 1, 0, 0, CAST(N'2024-11-20T17:45:45.460' AS DateTime), 0, CAST(N'2024-11-20T17:45:45.460' AS DateTime))
INSERT [dbo].[SinhVien] ([id], [MaSinhVien], [TenSinhVien], [SoDienThoai], [Email], [idKhoa], [idTaiKhoan], [idKhoaHoc], [is_deleted], [created_by], [created_at], [updated_by], [updated_at]) VALUES (26, N'SV016', N'Sinh Viên 16', N'0123456716', N'sinhvien16@abc.com', 1, 1, 1, 0, 0, CAST(N'2024-11-20T17:45:45.460' AS DateTime), 0, CAST(N'2024-11-20T17:45:45.460' AS DateTime))
INSERT [dbo].[SinhVien] ([id], [MaSinhVien], [TenSinhVien], [SoDienThoai], [Email], [idKhoa], [idTaiKhoan], [idKhoaHoc], [is_deleted], [created_by], [created_at], [updated_by], [updated_at]) VALUES (27, N'SV017', N'Sinh Viên 17', N'0123456717', N'sinhvien17@abc.com', 1, 1, 1, 0, 0, CAST(N'2024-11-20T17:45:45.460' AS DateTime), 0, CAST(N'2024-11-20T17:45:45.460' AS DateTime))
INSERT [dbo].[SinhVien] ([id], [MaSinhVien], [TenSinhVien], [SoDienThoai], [Email], [idKhoa], [idTaiKhoan], [idKhoaHoc], [is_deleted], [created_by], [created_at], [updated_by], [updated_at]) VALUES (28, N'SV018', N'Sinh Viên 18', N'0123456718', N'sinhvien18@abc.com', 1, 1, 1, 0, 0, CAST(N'2024-11-20T17:45:45.460' AS DateTime), 0, CAST(N'2024-11-20T17:45:45.460' AS DateTime))
INSERT [dbo].[SinhVien] ([id], [MaSinhVien], [TenSinhVien], [SoDienThoai], [Email], [idKhoa], [idTaiKhoan], [idKhoaHoc], [is_deleted], [created_by], [created_at], [updated_by], [updated_at]) VALUES (29, N'SV019', N'Sinh Viên 19', N'0123456719', N'sinhvien19@abc.com', 1, 1, 1, 0, 0, CAST(N'2024-11-20T17:45:45.460' AS DateTime), 0, CAST(N'2024-11-20T17:45:45.460' AS DateTime))
INSERT [dbo].[SinhVien] ([id], [MaSinhVien], [TenSinhVien], [SoDienThoai], [Email], [idKhoa], [idTaiKhoan], [idKhoaHoc], [is_deleted], [created_by], [created_at], [updated_by], [updated_at]) VALUES (30, N'SV020', N'Sinh Viên 20', N'0123456720', N'sinhvien20@abc.com', 1, 1, 1, 0, 0, CAST(N'2024-11-20T17:45:45.460' AS DateTime), 0, CAST(N'2024-11-20T17:45:45.460' AS DateTime))
INSERT [dbo].[SinhVien] ([id], [MaSinhVien], [TenSinhVien], [SoDienThoai], [Email], [idKhoa], [idTaiKhoan], [idKhoaHoc], [is_deleted], [created_by], [created_at], [updated_by], [updated_at]) VALUES (31, N'SV021', N'Sinh Viên 21', N'0123456721', N'sinhvien21@abc.com', 1, 1, 1, 0, 0, CAST(N'2024-11-20T17:45:45.460' AS DateTime), 0, CAST(N'2024-11-20T17:45:45.460' AS DateTime))
INSERT [dbo].[SinhVien] ([id], [MaSinhVien], [TenSinhVien], [SoDienThoai], [Email], [idKhoa], [idTaiKhoan], [idKhoaHoc], [is_deleted], [created_by], [created_at], [updated_by], [updated_at]) VALUES (32, N'SV022', N'Sinh Viên 22', N'0123456722', N'sinhvien22@abc.com', 1, 1, 1, 0, 0, CAST(N'2024-11-20T17:45:45.460' AS DateTime), 0, CAST(N'2024-11-20T17:45:45.460' AS DateTime))
INSERT [dbo].[SinhVien] ([id], [MaSinhVien], [TenSinhVien], [SoDienThoai], [Email], [idKhoa], [idTaiKhoan], [idKhoaHoc], [is_deleted], [created_by], [created_at], [updated_by], [updated_at]) VALUES (33, N'SV023', N'Sinh Viên 23', N'0123456723', N'sinhvien23@abc.com', 1, 1, 1, 0, 0, CAST(N'2024-11-20T17:45:45.460' AS DateTime), 0, CAST(N'2024-11-20T17:45:45.460' AS DateTime))
INSERT [dbo].[SinhVien] ([id], [MaSinhVien], [TenSinhVien], [SoDienThoai], [Email], [idKhoa], [idTaiKhoan], [idKhoaHoc], [is_deleted], [created_by], [created_at], [updated_by], [updated_at]) VALUES (34, N'SV024', N'Sinh Viên 24', N'0123456724', N'sinhvien24@abc.com', 1, 1, 1, 0, 0, CAST(N'2024-11-20T17:45:45.460' AS DateTime), 0, CAST(N'2024-11-20T17:45:45.460' AS DateTime))
INSERT [dbo].[SinhVien] ([id], [MaSinhVien], [TenSinhVien], [SoDienThoai], [Email], [idKhoa], [idTaiKhoan], [idKhoaHoc], [is_deleted], [created_by], [created_at], [updated_by], [updated_at]) VALUES (35, N'SV025', N'Sinh Viên 25', N'0123456725', N'sinhvien25@abc.com', 1, 1, 1, 0, 0, CAST(N'2024-11-20T17:45:45.460' AS DateTime), 0, CAST(N'2024-11-20T17:45:45.460' AS DateTime))
INSERT [dbo].[SinhVien] ([id], [MaSinhVien], [TenSinhVien], [SoDienThoai], [Email], [idKhoa], [idTaiKhoan], [idKhoaHoc], [is_deleted], [created_by], [created_at], [updated_by], [updated_at]) VALUES (36, N'SV026', N'Sinh Viên 26', N'0123456726', N'sinhvien26@abc.com', 1, 1, 1, 0, 0, CAST(N'2024-11-20T17:45:45.460' AS DateTime), 0, CAST(N'2024-11-20T17:45:45.460' AS DateTime))
INSERT [dbo].[SinhVien] ([id], [MaSinhVien], [TenSinhVien], [SoDienThoai], [Email], [idKhoa], [idTaiKhoan], [idKhoaHoc], [is_deleted], [created_by], [created_at], [updated_by], [updated_at]) VALUES (37, N'SV027', N'Sinh Viên 27', N'0123456727', N'sinhvien27@abc.com', 1, 1, 1, 0, 0, CAST(N'2024-11-20T17:45:45.460' AS DateTime), 0, CAST(N'2024-11-20T17:45:45.460' AS DateTime))
INSERT [dbo].[SinhVien] ([id], [MaSinhVien], [TenSinhVien], [SoDienThoai], [Email], [idKhoa], [idTaiKhoan], [idKhoaHoc], [is_deleted], [created_by], [created_at], [updated_by], [updated_at]) VALUES (38, N'SV028', N'Sinh Viên 28', N'0123456728', N'sinhvien28@abc.com', 1, 1, 1, 0, 0, CAST(N'2024-11-20T17:45:45.460' AS DateTime), 0, CAST(N'2024-11-20T17:45:45.460' AS DateTime))
INSERT [dbo].[SinhVien] ([id], [MaSinhVien], [TenSinhVien], [SoDienThoai], [Email], [idKhoa], [idTaiKhoan], [idKhoaHoc], [is_deleted], [created_by], [created_at], [updated_by], [updated_at]) VALUES (39, N'SV029', N'Sinh Viên 29', N'0123456729', N'sinhvien29@abc.com', 1, 1, 1, 0, 0, CAST(N'2024-11-20T17:45:45.460' AS DateTime), 0, CAST(N'2024-11-20T17:45:45.460' AS DateTime))
INSERT [dbo].[SinhVien] ([id], [MaSinhVien], [TenSinhVien], [SoDienThoai], [Email], [idKhoa], [idTaiKhoan], [idKhoaHoc], [is_deleted], [created_by], [created_at], [updated_by], [updated_at]) VALUES (40, N'SV030', N'Sinh Viên 30', N'0123456730', N'sinhvien30@abc.com', 1, 1, 1, 0, 0, CAST(N'2024-11-20T17:45:45.460' AS DateTime), 0, CAST(N'2024-11-20T17:45:45.460' AS DateTime))
SET IDENTITY_INSERT [dbo].[SinhVien] OFF
GO
SET IDENTITY_INSERT [dbo].[TaiKhoan] ON 

INSERT [dbo].[TaiKhoan] ([id], [TenTaiKhoan], [MatKhau], [Quyen], [is_deleted], [created_by], [created_at], [updated_by], [updated_at]) VALUES (1, N'admin', N'123456', 0, 0, 0, CAST(N'2024-11-18T10:41:37.227' AS DateTime), 0, CAST(N'2024-11-18T10:41:37.227' AS DateTime))
INSERT [dbo].[TaiKhoan] ([id], [TenTaiKhoan], [MatKhau], [Quyen], [is_deleted], [created_by], [created_at], [updated_by], [updated_at]) VALUES (2, N'user2', N'123456', 1, 0, 0, CAST(N'2024-11-18T10:41:37.227' AS DateTime), 0, CAST(N'2024-11-18T10:41:37.227' AS DateTime))
INSERT [dbo].[TaiKhoan] ([id], [TenTaiKhoan], [MatKhau], [Quyen], [is_deleted], [created_by], [created_at], [updated_by], [updated_at]) VALUES (3, N'user3', N'123456', 1, 0, 0, CAST(N'2024-11-18T10:41:37.227' AS DateTime), 0, CAST(N'2024-11-18T10:41:37.227' AS DateTime))
INSERT [dbo].[TaiKhoan] ([id], [TenTaiKhoan], [MatKhau], [Quyen], [is_deleted], [created_by], [created_at], [updated_by], [updated_at]) VALUES (4, N'user4', N'123456', 1, 0, 0, CAST(N'2024-11-18T10:41:37.227' AS DateTime), 0, CAST(N'2024-11-18T10:41:37.227' AS DateTime))
INSERT [dbo].[TaiKhoan] ([id], [TenTaiKhoan], [MatKhau], [Quyen], [is_deleted], [created_by], [created_at], [updated_by], [updated_at]) VALUES (5, N'user5', N'123456', 1, 0, 0, CAST(N'2024-11-18T10:41:37.227' AS DateTime), 0, CAST(N'2024-11-18T10:41:37.227' AS DateTime))
INSERT [dbo].[TaiKhoan] ([id], [TenTaiKhoan], [MatKhau], [Quyen], [is_deleted], [created_by], [created_at], [updated_by], [updated_at]) VALUES (6, N'user6', N'123456', 1, 0, 0, CAST(N'2024-11-18T10:41:37.227' AS DateTime), 0, CAST(N'2024-11-18T10:41:37.227' AS DateTime))
INSERT [dbo].[TaiKhoan] ([id], [TenTaiKhoan], [MatKhau], [Quyen], [is_deleted], [created_by], [created_at], [updated_by], [updated_at]) VALUES (7, N'user7', N'123456', 1, 0, 0, CAST(N'2024-11-18T10:41:37.227' AS DateTime), 0, CAST(N'2024-11-18T10:41:37.227' AS DateTime))
INSERT [dbo].[TaiKhoan] ([id], [TenTaiKhoan], [MatKhau], [Quyen], [is_deleted], [created_by], [created_at], [updated_by], [updated_at]) VALUES (8, N'user8', N'123456', 1, 0, 0, CAST(N'2024-11-18T10:41:37.227' AS DateTime), 0, CAST(N'2024-11-18T10:41:37.227' AS DateTime))
INSERT [dbo].[TaiKhoan] ([id], [TenTaiKhoan], [MatKhau], [Quyen], [is_deleted], [created_by], [created_at], [updated_by], [updated_at]) VALUES (9, N'user9', N'123456', 1, 0, 0, CAST(N'2024-11-18T10:41:37.227' AS DateTime), 0, CAST(N'2024-11-18T10:41:37.227' AS DateTime))
INSERT [dbo].[TaiKhoan] ([id], [TenTaiKhoan], [MatKhau], [Quyen], [is_deleted], [created_by], [created_at], [updated_by], [updated_at]) VALUES (10, N'user1', N'123456', 1, 0, 0, CAST(N'2024-11-18T10:41:37.227' AS DateTime), 0, CAST(N'2024-11-18T10:41:37.227' AS DateTime))
SET IDENTITY_INSERT [dbo].[TaiKhoan] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetRoleClaims_RoleId]    Script Date: 11/20/2024 5:57:34 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetRoleClaims_RoleId] ON [dbo].[AspNetRoleClaims]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 11/20/2024 5:57:34 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[NormalizedName] ASC
)
WHERE ([NormalizedName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserClaims_UserId]    Script Date: 11/20/2024 5:57:34 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserClaims_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserLogins_UserId]    Script Date: 11/20/2024 5:57:34 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserLogins_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserRoles_RoleId]    Script Date: 11/20/2024 5:57:34 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserRoles_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [EmailIndex]    Script Date: 11/20/2024 5:57:34 PM ******/
CREATE NONCLUSTERED INDEX [EmailIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 11/20/2024 5:57:34 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedUserName] ASC
)
WHERE ([NormalizedUserName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[ChiTietDangKy]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietDangKy_ChuyenDi] FOREIGN KEY([idChuyenDi])
REFERENCES [dbo].[ChuyenDi] ([id])
GO
ALTER TABLE [dbo].[ChiTietDangKy] CHECK CONSTRAINT [FK_ChiTietDangKy_ChuyenDi]
GO
ALTER TABLE [dbo].[ChiTietDangKy]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietDangKy_SinhVien] FOREIGN KEY([idSinhVien])
REFERENCES [dbo].[SinhVien] ([id])
GO
ALTER TABLE [dbo].[ChiTietDangKy] CHECK CONSTRAINT [FK_ChiTietDangKy_SinhVien]
GO
ALTER TABLE [dbo].[ChuyenDi]  WITH CHECK ADD  CONSTRAINT [FK_ChuyenDi_DoanhNghiep] FOREIGN KEY([idDoanhNghiep])
REFERENCES [dbo].[DoanhNghiep] ([id])
GO
ALTER TABLE [dbo].[ChuyenDi] CHECK CONSTRAINT [FK_ChuyenDi_DoanhNghiep]
GO
ALTER TABLE [dbo].[ChuyenDi]  WITH CHECK ADD  CONSTRAINT [FK_ChuyenDi_GiangVien] FOREIGN KEY([idGiangVien])
REFERENCES [dbo].[GiangVien] ([id])
GO
ALTER TABLE [dbo].[ChuyenDi] CHECK CONSTRAINT [FK_ChuyenDi_GiangVien]
GO
ALTER TABLE [dbo].[ChuyenDi]  WITH CHECK ADD  CONSTRAINT [FK_ChuyenDi_Khoa] FOREIGN KEY([idKhoa])
REFERENCES [dbo].[Khoa] ([id])
GO
ALTER TABLE [dbo].[ChuyenDi] CHECK CONSTRAINT [FK_ChuyenDi_Khoa]
GO
ALTER TABLE [dbo].[ChuyenDi]  WITH CHECK ADD  CONSTRAINT [FK_ChuyenDi_KhoaHoc] FOREIGN KEY([idKhoaHoc])
REFERENCES [dbo].[KhoaHoc] ([id])
GO
ALTER TABLE [dbo].[ChuyenDi] CHECK CONSTRAINT [FK_ChuyenDi_KhoaHoc]
GO
ALTER TABLE [dbo].[GiangVien]  WITH CHECK ADD  CONSTRAINT [FK_GiangVien_Khoa] FOREIGN KEY([idKhoa])
REFERENCES [dbo].[Khoa] ([id])
GO
ALTER TABLE [dbo].[GiangVien] CHECK CONSTRAINT [FK_GiangVien_Khoa]
GO
ALTER TABLE [dbo].[SinhVien]  WITH CHECK ADD  CONSTRAINT [FK_SinhVien_Khoa] FOREIGN KEY([idKhoa])
REFERENCES [dbo].[Khoa] ([id])
GO
ALTER TABLE [dbo].[SinhVien] CHECK CONSTRAINT [FK_SinhVien_Khoa]
GO
ALTER TABLE [dbo].[SinhVien]  WITH CHECK ADD  CONSTRAINT [FK_SinhVien_KhoaHoc] FOREIGN KEY([idKhoaHoc])
REFERENCES [dbo].[KhoaHoc] ([id])
GO
ALTER TABLE [dbo].[SinhVien] CHECK CONSTRAINT [FK_SinhVien_KhoaHoc]
GO
ALTER TABLE [dbo].[SinhVien]  WITH CHECK ADD  CONSTRAINT [FK_SinhVien_TaiKhoan] FOREIGN KEY([idTaiKhoan])
REFERENCES [dbo].[TaiKhoan] ([id])
GO
ALTER TABLE [dbo].[SinhVien] CHECK CONSTRAINT [FK_SinhVien_TaiKhoan]
GO
USE [master]
GO
ALTER DATABASE [DKTQDN] SET  READ_WRITE 
GO
