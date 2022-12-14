USE [master]
GO
/****** Object:  Database [ProjectPRJ]    Script Date: 8/23/2022 9:04:18 AM ******/
CREATE DATABASE [ProjectPRJ]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ProjectPRJ', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER2014\MSSQL\DATA\ProjectPRJ.mdf' , SIZE = 3264KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'ProjectPRJ_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER2014\MSSQL\DATA\ProjectPRJ_log.ldf' , SIZE = 816KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [ProjectPRJ] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ProjectPRJ].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ProjectPRJ] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ProjectPRJ] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ProjectPRJ] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ProjectPRJ] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ProjectPRJ] SET ARITHABORT OFF 
GO
ALTER DATABASE [ProjectPRJ] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [ProjectPRJ] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ProjectPRJ] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ProjectPRJ] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ProjectPRJ] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ProjectPRJ] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ProjectPRJ] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ProjectPRJ] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ProjectPRJ] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ProjectPRJ] SET  ENABLE_BROKER 
GO
ALTER DATABASE [ProjectPRJ] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ProjectPRJ] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ProjectPRJ] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ProjectPRJ] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ProjectPRJ] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ProjectPRJ] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ProjectPRJ] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ProjectPRJ] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [ProjectPRJ] SET  MULTI_USER 
GO
ALTER DATABASE [ProjectPRJ] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ProjectPRJ] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ProjectPRJ] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ProjectPRJ] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [ProjectPRJ] SET DELAYED_DURABILITY = DISABLED 
GO
USE [ProjectPRJ]
GO
/****** Object:  Table [dbo].[Employee]    Script Date: 8/23/2022 9:04:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee](
	[eid] [int] NOT NULL,
	[ename] [nvarchar](150) NOT NULL,
	[Position] [nvarchar](150) NOT NULL,
	[salary_per_day] [float] NOT NULL,
 CONSTRAINT [PK_Employees] PRIMARY KEY CLUSTERED 
(
	[eid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Festival]    Script Date: 8/23/2022 9:04:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Festival](
	[fid] [int] NOT NULL,
	[date] [date] NULL,
	[name] [nvarchar](150) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Leave]    Script Date: 8/23/2022 9:04:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Leave](
	[lid] [int] NOT NULL,
	[eid] [int] NOT NULL,
	[date] [date] NOT NULL,
	[reason] [nvarchar](150) NOT NULL,
	[isallow] [bit] NOT NULL,
 CONSTRAINT [PK_Leave] PRIMARY KEY CLUSTERED 
(
	[lid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OvertimeRegister]    Script Date: 8/23/2022 9:04:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OvertimeRegister](
	[oid] [int] NOT NULL,
	[eid] [int] NOT NULL,
	[date] [date] NULL,
	[hours] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TimeSheet]    Script Date: 8/23/2022 9:04:18 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TimeSheet](
	[tid] [int] NOT NULL,
	[eid] [int] NOT NULL,
	[checkin] [datetime] NOT NULL,
	[checkout] [datetime] NULL,
 CONSTRAINT [PK_TimeSheet] PRIMARY KEY CLUSTERED 
(
	[tid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Employee] ([eid], [ename], [Position], [salary_per_day]) VALUES (1, N'Nguyễn Văn An', N'Quản lý', 500)
INSERT [dbo].[Employee] ([eid], [ename], [Position], [salary_per_day]) VALUES (2, N'Nguyễn Thị Bình', N'Kế toán', 400)
INSERT [dbo].[Employee] ([eid], [ename], [Position], [salary_per_day]) VALUES (3, N'Lê Văn Cường', N'Nhân viên', 400)
INSERT [dbo].[Employee] ([eid], [ename], [Position], [salary_per_day]) VALUES (4, N'Trần Văn Dũng', N'Nhân viên', 300)
INSERT [dbo].[Employee] ([eid], [ename], [Position], [salary_per_day]) VALUES (5, N'Hoàng Thị Yến', N'Nhân viên', 300)
GO
INSERT [dbo].[Festival] ([fid], [date], [name]) VALUES (1, CAST(N'2022-09-02' AS Date), N'quoc khanh')
INSERT [dbo].[Festival] ([fid], [date], [name]) VALUES (2, CAST(N'2022-09-01' AS Date), N'quoc khanh')
GO
INSERT [dbo].[Leave] ([lid], [eid], [date], [reason], [isallow]) VALUES (1, 1, CAST(N'2022-08-06' AS Date), N'con om', 1)
INSERT [dbo].[Leave] ([lid], [eid], [date], [reason], [isallow]) VALUES (2, 1, CAST(N'2022-08-22' AS Date), N'dau bung', 1)
INSERT [dbo].[Leave] ([lid], [eid], [date], [reason], [isallow]) VALUES (3, 1, CAST(N'2022-08-30' AS Date), N'dau om', 0)
INSERT [dbo].[Leave] ([lid], [eid], [date], [reason], [isallow]) VALUES (4, 2, CAST(N'2022-08-03' AS Date), N'met', 0)
INSERT [dbo].[Leave] ([lid], [eid], [date], [reason], [isallow]) VALUES (5, 2, CAST(N'2022-08-23' AS Date), N'me om', 1)
INSERT [dbo].[Leave] ([lid], [eid], [date], [reason], [isallow]) VALUES (6, 3, CAST(N'2022-08-31' AS Date), N'met', 0)
INSERT [dbo].[Leave] ([lid], [eid], [date], [reason], [isallow]) VALUES (7, 4, CAST(N'2022-08-11' AS Date), N'covid', 1)
INSERT [dbo].[Leave] ([lid], [eid], [date], [reason], [isallow]) VALUES (8, 4, CAST(N'2022-08-12' AS Date), N'covid', 1)
INSERT [dbo].[Leave] ([lid], [eid], [date], [reason], [isallow]) VALUES (9, 4, CAST(N'2022-08-13' AS Date), N'covdi', 1)
INSERT [dbo].[Leave] ([lid], [eid], [date], [reason], [isallow]) VALUES (10, 5, CAST(N'2022-08-01' AS Date), N'dau thang', 1)
GO
INSERT [dbo].[OvertimeRegister] ([oid], [eid], [date], [hours]) VALUES (1, 1, CAST(N'2022-08-23' AS Date), 3)
INSERT [dbo].[OvertimeRegister] ([oid], [eid], [date], [hours]) VALUES (2, 1, CAST(N'2022-08-15' AS Date), 3)
INSERT [dbo].[OvertimeRegister] ([oid], [eid], [date], [hours]) VALUES (3, 2, CAST(N'2022-08-30' AS Date), 2)
INSERT [dbo].[OvertimeRegister] ([oid], [eid], [date], [hours]) VALUES (4, 3, CAST(N'2022-08-16' AS Date), 3)
INSERT [dbo].[OvertimeRegister] ([oid], [eid], [date], [hours]) VALUES (5, 2, CAST(N'2022-08-04' AS Date), 2)
INSERT [dbo].[OvertimeRegister] ([oid], [eid], [date], [hours]) VALUES (6, 2, CAST(N'2022-08-05' AS Date), 3)
INSERT [dbo].[OvertimeRegister] ([oid], [eid], [date], [hours]) VALUES (7, 4, CAST(N'2022-08-20' AS Date), 3)
INSERT [dbo].[OvertimeRegister] ([oid], [eid], [date], [hours]) VALUES (8, 5, CAST(N'2022-08-25' AS Date), 4)
GO
INSERT [dbo].[TimeSheet] ([tid], [eid], [checkin], [checkout]) VALUES (1, 1, CAST(N'2022-08-01T08:00:00.000' AS DateTime), CAST(N'2022-08-01T16:00:00.000' AS DateTime))
INSERT [dbo].[TimeSheet] ([tid], [eid], [checkin], [checkout]) VALUES (2, 1, CAST(N'2022-08-02T08:00:00.000' AS DateTime), CAST(N'2022-08-02T17:00:00.000' AS DateTime))
INSERT [dbo].[TimeSheet] ([tid], [eid], [checkin], [checkout]) VALUES (3, 1, CAST(N'2022-08-03T08:00:00.000' AS DateTime), CAST(N'2022-08-03T17:00:00.000' AS DateTime))
INSERT [dbo].[TimeSheet] ([tid], [eid], [checkin], [checkout]) VALUES (4, 1, CAST(N'2022-08-04T08:00:00.000' AS DateTime), CAST(N'2022-08-04T17:00:00.000' AS DateTime))
INSERT [dbo].[TimeSheet] ([tid], [eid], [checkin], [checkout]) VALUES (5, 1, CAST(N'2022-08-05T08:00:00.000' AS DateTime), CAST(N'2022-08-05T17:00:00.000' AS DateTime))
INSERT [dbo].[TimeSheet] ([tid], [eid], [checkin], [checkout]) VALUES (7, 1, CAST(N'2022-08-08T08:00:00.000' AS DateTime), CAST(N'2022-08-08T17:00:00.000' AS DateTime))
INSERT [dbo].[TimeSheet] ([tid], [eid], [checkin], [checkout]) VALUES (8, 1, CAST(N'2022-08-09T08:00:00.000' AS DateTime), CAST(N'2022-08-09T17:00:00.000' AS DateTime))
INSERT [dbo].[TimeSheet] ([tid], [eid], [checkin], [checkout]) VALUES (9, 1, CAST(N'2022-08-10T08:00:00.000' AS DateTime), CAST(N'2022-08-10T17:00:00.000' AS DateTime))
INSERT [dbo].[TimeSheet] ([tid], [eid], [checkin], [checkout]) VALUES (10, 1, CAST(N'2022-08-11T08:00:00.000' AS DateTime), CAST(N'2022-08-11T16:00:00.000' AS DateTime))
INSERT [dbo].[TimeSheet] ([tid], [eid], [checkin], [checkout]) VALUES (11, 1, CAST(N'2022-08-12T08:00:00.000' AS DateTime), CAST(N'2022-08-12T17:00:00.000' AS DateTime))
INSERT [dbo].[TimeSheet] ([tid], [eid], [checkin], [checkout]) VALUES (12, 1, CAST(N'2022-08-13T08:00:00.000' AS DateTime), CAST(N'2022-08-13T17:00:00.000' AS DateTime))
INSERT [dbo].[TimeSheet] ([tid], [eid], [checkin], [checkout]) VALUES (13, 1, CAST(N'2022-08-15T08:00:00.000' AS DateTime), CAST(N'2022-08-15T17:00:00.000' AS DateTime))
INSERT [dbo].[TimeSheet] ([tid], [eid], [checkin], [checkout]) VALUES (14, 1, CAST(N'2022-08-16T08:00:00.000' AS DateTime), CAST(N'2022-08-16T17:00:00.000' AS DateTime))
INSERT [dbo].[TimeSheet] ([tid], [eid], [checkin], [checkout]) VALUES (15, 1, CAST(N'2022-08-17T08:00:00.000' AS DateTime), CAST(N'2022-08-17T17:00:00.000' AS DateTime))
INSERT [dbo].[TimeSheet] ([tid], [eid], [checkin], [checkout]) VALUES (16, 1, CAST(N'2022-08-18T08:00:00.000' AS DateTime), CAST(N'2022-08-18T17:00:00.000' AS DateTime))
INSERT [dbo].[TimeSheet] ([tid], [eid], [checkin], [checkout]) VALUES (17, 1, CAST(N'2022-08-19T08:00:00.000' AS DateTime), CAST(N'2022-08-19T16:00:00.000' AS DateTime))
INSERT [dbo].[TimeSheet] ([tid], [eid], [checkin], [checkout]) VALUES (18, 1, CAST(N'2022-08-20T08:00:00.000' AS DateTime), CAST(N'2022-08-20T17:00:00.000' AS DateTime))
INSERT [dbo].[TimeSheet] ([tid], [eid], [checkin], [checkout]) VALUES (20, 1, CAST(N'2022-08-23T08:00:00.000' AS DateTime), CAST(N'2022-08-23T17:00:00.000' AS DateTime))
INSERT [dbo].[TimeSheet] ([tid], [eid], [checkin], [checkout]) VALUES (21, 1, CAST(N'2022-08-24T08:00:00.000' AS DateTime), CAST(N'2022-08-24T17:00:00.000' AS DateTime))
INSERT [dbo].[TimeSheet] ([tid], [eid], [checkin], [checkout]) VALUES (22, 1, CAST(N'2022-08-25T08:00:00.000' AS DateTime), CAST(N'2022-08-25T16:00:00.000' AS DateTime))
INSERT [dbo].[TimeSheet] ([tid], [eid], [checkin], [checkout]) VALUES (23, 1, CAST(N'2022-08-26T08:00:00.000' AS DateTime), CAST(N'2022-08-26T15:00:00.000' AS DateTime))
INSERT [dbo].[TimeSheet] ([tid], [eid], [checkin], [checkout]) VALUES (24, 1, CAST(N'2022-08-27T08:00:00.000' AS DateTime), CAST(N'2022-08-27T17:00:00.000' AS DateTime))
INSERT [dbo].[TimeSheet] ([tid], [eid], [checkin], [checkout]) VALUES (25, 1, CAST(N'2022-08-29T08:00:00.000' AS DateTime), CAST(N'2022-08-29T17:00:00.000' AS DateTime))
INSERT [dbo].[TimeSheet] ([tid], [eid], [checkin], [checkout]) VALUES (27, 1, CAST(N'2022-08-31T08:00:00.000' AS DateTime), CAST(N'2022-08-31T17:00:00.000' AS DateTime))
INSERT [dbo].[TimeSheet] ([tid], [eid], [checkin], [checkout]) VALUES (28, 2, CAST(N'2022-08-01T08:00:00.000' AS DateTime), CAST(N'2022-08-01T17:00:00.000' AS DateTime))
INSERT [dbo].[TimeSheet] ([tid], [eid], [checkin], [checkout]) VALUES (29, 2, CAST(N'2022-08-02T08:00:00.000' AS DateTime), CAST(N'2022-08-02T17:00:00.000' AS DateTime))
INSERT [dbo].[TimeSheet] ([tid], [eid], [checkin], [checkout]) VALUES (31, 2, CAST(N'2022-08-04T08:00:00.000' AS DateTime), CAST(N'2022-08-04T17:00:00.000' AS DateTime))
INSERT [dbo].[TimeSheet] ([tid], [eid], [checkin], [checkout]) VALUES (32, 2, CAST(N'2022-08-05T08:00:00.000' AS DateTime), CAST(N'2022-08-05T17:00:00.000' AS DateTime))
INSERT [dbo].[TimeSheet] ([tid], [eid], [checkin], [checkout]) VALUES (33, 2, CAST(N'2022-08-06T08:00:00.000' AS DateTime), CAST(N'2022-08-06T17:00:00.000' AS DateTime))
INSERT [dbo].[TimeSheet] ([tid], [eid], [checkin], [checkout]) VALUES (34, 2, CAST(N'2022-08-08T08:00:00.000' AS DateTime), CAST(N'2022-08-08T17:00:00.000' AS DateTime))
INSERT [dbo].[TimeSheet] ([tid], [eid], [checkin], [checkout]) VALUES (35, 2, CAST(N'2022-08-09T08:00:00.000' AS DateTime), CAST(N'2022-08-09T17:00:00.000' AS DateTime))
INSERT [dbo].[TimeSheet] ([tid], [eid], [checkin], [checkout]) VALUES (36, 2, CAST(N'2022-08-10T08:00:00.000' AS DateTime), CAST(N'2022-08-10T17:00:00.000' AS DateTime))
INSERT [dbo].[TimeSheet] ([tid], [eid], [checkin], [checkout]) VALUES (37, 2, CAST(N'2022-08-11T08:00:00.000' AS DateTime), CAST(N'2022-08-11T17:00:00.000' AS DateTime))
INSERT [dbo].[TimeSheet] ([tid], [eid], [checkin], [checkout]) VALUES (38, 2, CAST(N'2022-08-12T08:00:00.000' AS DateTime), CAST(N'2022-08-12T17:00:00.000' AS DateTime))
INSERT [dbo].[TimeSheet] ([tid], [eid], [checkin], [checkout]) VALUES (39, 2, CAST(N'2022-08-13T08:00:00.000' AS DateTime), CAST(N'2022-08-13T17:00:00.000' AS DateTime))
INSERT [dbo].[TimeSheet] ([tid], [eid], [checkin], [checkout]) VALUES (40, 2, CAST(N'2022-08-15T08:00:00.000' AS DateTime), CAST(N'2022-08-15T17:00:00.000' AS DateTime))
INSERT [dbo].[TimeSheet] ([tid], [eid], [checkin], [checkout]) VALUES (41, 2, CAST(N'2022-08-16T08:00:00.000' AS DateTime), CAST(N'2022-08-16T17:00:00.000' AS DateTime))
INSERT [dbo].[TimeSheet] ([tid], [eid], [checkin], [checkout]) VALUES (42, 2, CAST(N'2022-08-17T08:00:00.000' AS DateTime), CAST(N'2022-08-17T17:00:00.000' AS DateTime))
INSERT [dbo].[TimeSheet] ([tid], [eid], [checkin], [checkout]) VALUES (43, 2, CAST(N'2022-08-18T08:00:00.000' AS DateTime), CAST(N'2022-08-18T17:00:00.000' AS DateTime))
INSERT [dbo].[TimeSheet] ([tid], [eid], [checkin], [checkout]) VALUES (44, 2, CAST(N'2022-08-19T08:00:00.000' AS DateTime), CAST(N'2022-08-19T17:00:00.000' AS DateTime))
INSERT [dbo].[TimeSheet] ([tid], [eid], [checkin], [checkout]) VALUES (45, 2, CAST(N'2022-08-20T08:00:00.000' AS DateTime), CAST(N'2022-08-20T17:00:00.000' AS DateTime))
INSERT [dbo].[TimeSheet] ([tid], [eid], [checkin], [checkout]) VALUES (46, 2, CAST(N'2022-08-22T08:00:00.000' AS DateTime), CAST(N'2022-08-22T17:00:00.000' AS DateTime))
INSERT [dbo].[TimeSheet] ([tid], [eid], [checkin], [checkout]) VALUES (48, 2, CAST(N'2022-08-24T08:00:00.000' AS DateTime), CAST(N'2022-08-24T17:00:00.000' AS DateTime))
INSERT [dbo].[TimeSheet] ([tid], [eid], [checkin], [checkout]) VALUES (49, 2, CAST(N'2022-08-25T08:00:00.000' AS DateTime), CAST(N'2022-08-25T17:00:00.000' AS DateTime))
INSERT [dbo].[TimeSheet] ([tid], [eid], [checkin], [checkout]) VALUES (50, 2, CAST(N'2022-08-26T08:00:00.000' AS DateTime), CAST(N'2022-08-26T17:00:00.000' AS DateTime))
INSERT [dbo].[TimeSheet] ([tid], [eid], [checkin], [checkout]) VALUES (51, 2, CAST(N'2022-08-27T08:00:00.000' AS DateTime), CAST(N'2022-08-27T17:00:00.000' AS DateTime))
INSERT [dbo].[TimeSheet] ([tid], [eid], [checkin], [checkout]) VALUES (52, 2, CAST(N'2022-08-29T08:00:00.000' AS DateTime), CAST(N'2022-08-29T17:00:00.000' AS DateTime))
INSERT [dbo].[TimeSheet] ([tid], [eid], [checkin], [checkout]) VALUES (53, 2, CAST(N'2022-08-30T08:00:00.000' AS DateTime), CAST(N'2022-08-30T17:00:00.000' AS DateTime))
INSERT [dbo].[TimeSheet] ([tid], [eid], [checkin], [checkout]) VALUES (54, 2, CAST(N'2022-08-31T08:00:00.000' AS DateTime), CAST(N'2022-08-31T17:00:00.000' AS DateTime))
INSERT [dbo].[TimeSheet] ([tid], [eid], [checkin], [checkout]) VALUES (55, 3, CAST(N'2022-08-01T08:00:00.000' AS DateTime), CAST(N'2022-08-01T17:00:00.000' AS DateTime))
INSERT [dbo].[TimeSheet] ([tid], [eid], [checkin], [checkout]) VALUES (56, 3, CAST(N'2022-08-02T08:00:00.000' AS DateTime), CAST(N'2022-08-02T17:00:00.000' AS DateTime))
INSERT [dbo].[TimeSheet] ([tid], [eid], [checkin], [checkout]) VALUES (57, 3, CAST(N'2022-08-03T08:00:00.000' AS DateTime), CAST(N'2022-08-03T17:00:00.000' AS DateTime))
INSERT [dbo].[TimeSheet] ([tid], [eid], [checkin], [checkout]) VALUES (58, 3, CAST(N'2022-08-04T08:00:00.000' AS DateTime), CAST(N'2022-08-04T17:00:00.000' AS DateTime))
INSERT [dbo].[TimeSheet] ([tid], [eid], [checkin], [checkout]) VALUES (59, 3, CAST(N'2022-08-05T08:00:00.000' AS DateTime), CAST(N'2022-08-05T17:00:00.000' AS DateTime))
INSERT [dbo].[TimeSheet] ([tid], [eid], [checkin], [checkout]) VALUES (60, 3, CAST(N'2022-08-06T08:00:00.000' AS DateTime), CAST(N'2022-08-06T17:00:00.000' AS DateTime))
INSERT [dbo].[TimeSheet] ([tid], [eid], [checkin], [checkout]) VALUES (61, 3, CAST(N'2022-08-08T08:00:00.000' AS DateTime), CAST(N'2022-08-08T17:00:00.000' AS DateTime))
INSERT [dbo].[TimeSheet] ([tid], [eid], [checkin], [checkout]) VALUES (62, 3, CAST(N'2022-08-09T08:00:00.000' AS DateTime), CAST(N'2022-08-09T17:00:00.000' AS DateTime))
INSERT [dbo].[TimeSheet] ([tid], [eid], [checkin], [checkout]) VALUES (63, 3, CAST(N'2022-08-10T08:00:00.000' AS DateTime), CAST(N'2022-08-10T16:00:00.000' AS DateTime))
INSERT [dbo].[TimeSheet] ([tid], [eid], [checkin], [checkout]) VALUES (64, 3, CAST(N'2022-08-11T08:00:00.000' AS DateTime), CAST(N'2022-08-11T17:00:00.000' AS DateTime))
INSERT [dbo].[TimeSheet] ([tid], [eid], [checkin], [checkout]) VALUES (65, 3, CAST(N'2022-08-12T08:00:00.000' AS DateTime), CAST(N'2022-08-12T16:00:00.000' AS DateTime))
INSERT [dbo].[TimeSheet] ([tid], [eid], [checkin], [checkout]) VALUES (66, 3, CAST(N'2022-08-13T08:00:00.000' AS DateTime), CAST(N'2022-08-13T17:00:00.000' AS DateTime))
INSERT [dbo].[TimeSheet] ([tid], [eid], [checkin], [checkout]) VALUES (67, 3, CAST(N'2022-08-15T08:00:00.000' AS DateTime), CAST(N'2022-08-15T17:00:00.000' AS DateTime))
INSERT [dbo].[TimeSheet] ([tid], [eid], [checkin], [checkout]) VALUES (68, 3, CAST(N'2022-08-16T08:00:00.000' AS DateTime), CAST(N'2022-08-16T17:00:00.000' AS DateTime))
INSERT [dbo].[TimeSheet] ([tid], [eid], [checkin], [checkout]) VALUES (69, 3, CAST(N'2022-08-17T08:00:00.000' AS DateTime), CAST(N'2022-08-17T17:00:00.000' AS DateTime))
INSERT [dbo].[TimeSheet] ([tid], [eid], [checkin], [checkout]) VALUES (70, 3, CAST(N'2022-08-18T08:00:00.000' AS DateTime), CAST(N'2022-08-18T17:00:00.000' AS DateTime))
INSERT [dbo].[TimeSheet] ([tid], [eid], [checkin], [checkout]) VALUES (71, 3, CAST(N'2022-08-19T08:00:00.000' AS DateTime), CAST(N'2022-08-19T17:00:00.000' AS DateTime))
INSERT [dbo].[TimeSheet] ([tid], [eid], [checkin], [checkout]) VALUES (72, 3, CAST(N'2022-08-20T08:00:00.000' AS DateTime), CAST(N'2022-08-20T17:00:00.000' AS DateTime))
INSERT [dbo].[TimeSheet] ([tid], [eid], [checkin], [checkout]) VALUES (73, 3, CAST(N'2022-08-22T08:00:00.000' AS DateTime), CAST(N'2022-08-22T17:00:00.000' AS DateTime))
INSERT [dbo].[TimeSheet] ([tid], [eid], [checkin], [checkout]) VALUES (74, 3, CAST(N'2022-08-23T08:00:00.000' AS DateTime), CAST(N'2022-08-23T17:00:00.000' AS DateTime))
INSERT [dbo].[TimeSheet] ([tid], [eid], [checkin], [checkout]) VALUES (75, 3, CAST(N'2022-08-24T08:00:00.000' AS DateTime), CAST(N'2022-08-24T17:00:00.000' AS DateTime))
INSERT [dbo].[TimeSheet] ([tid], [eid], [checkin], [checkout]) VALUES (76, 3, CAST(N'2022-08-25T08:00:00.000' AS DateTime), CAST(N'2022-08-25T17:00:00.000' AS DateTime))
INSERT [dbo].[TimeSheet] ([tid], [eid], [checkin], [checkout]) VALUES (77, 3, CAST(N'2022-08-26T08:00:00.000' AS DateTime), CAST(N'2022-08-26T17:00:00.000' AS DateTime))
INSERT [dbo].[TimeSheet] ([tid], [eid], [checkin], [checkout]) VALUES (78, 3, CAST(N'2022-08-27T08:00:00.000' AS DateTime), CAST(N'2022-08-27T17:00:00.000' AS DateTime))
INSERT [dbo].[TimeSheet] ([tid], [eid], [checkin], [checkout]) VALUES (79, 3, CAST(N'2022-08-29T08:00:00.000' AS DateTime), CAST(N'2022-08-29T17:00:00.000' AS DateTime))
INSERT [dbo].[TimeSheet] ([tid], [eid], [checkin], [checkout]) VALUES (80, 3, CAST(N'2022-08-30T08:00:00.000' AS DateTime), CAST(N'2022-08-30T17:00:00.000' AS DateTime))
INSERT [dbo].[TimeSheet] ([tid], [eid], [checkin], [checkout]) VALUES (82, 4, CAST(N'2022-08-01T08:00:00.000' AS DateTime), CAST(N'2022-08-01T17:00:00.000' AS DateTime))
INSERT [dbo].[TimeSheet] ([tid], [eid], [checkin], [checkout]) VALUES (83, 4, CAST(N'2022-08-02T08:00:00.000' AS DateTime), CAST(N'2022-08-02T17:00:00.000' AS DateTime))
INSERT [dbo].[TimeSheet] ([tid], [eid], [checkin], [checkout]) VALUES (84, 4, CAST(N'2022-08-03T08:00:00.000' AS DateTime), CAST(N'2022-08-03T17:00:00.000' AS DateTime))
INSERT [dbo].[TimeSheet] ([tid], [eid], [checkin], [checkout]) VALUES (85, 4, CAST(N'2022-08-04T08:00:00.000' AS DateTime), CAST(N'2022-08-04T17:00:00.000' AS DateTime))
INSERT [dbo].[TimeSheet] ([tid], [eid], [checkin], [checkout]) VALUES (86, 4, CAST(N'2022-08-05T08:00:00.000' AS DateTime), CAST(N'2022-08-05T17:00:00.000' AS DateTime))
INSERT [dbo].[TimeSheet] ([tid], [eid], [checkin], [checkout]) VALUES (87, 4, CAST(N'2022-08-06T08:00:00.000' AS DateTime), CAST(N'2022-08-06T17:00:00.000' AS DateTime))
INSERT [dbo].[TimeSheet] ([tid], [eid], [checkin], [checkout]) VALUES (88, 4, CAST(N'2022-08-08T08:00:00.000' AS DateTime), CAST(N'2022-08-08T17:00:00.000' AS DateTime))
INSERT [dbo].[TimeSheet] ([tid], [eid], [checkin], [checkout]) VALUES (89, 4, CAST(N'2022-08-09T08:00:00.000' AS DateTime), CAST(N'2022-08-09T17:00:00.000' AS DateTime))
INSERT [dbo].[TimeSheet] ([tid], [eid], [checkin], [checkout]) VALUES (90, 4, CAST(N'2022-08-10T08:00:00.000' AS DateTime), CAST(N'2022-08-10T17:00:00.000' AS DateTime))
INSERT [dbo].[TimeSheet] ([tid], [eid], [checkin], [checkout]) VALUES (94, 4, CAST(N'2022-08-15T08:00:00.000' AS DateTime), CAST(N'2022-08-15T17:00:00.000' AS DateTime))
INSERT [dbo].[TimeSheet] ([tid], [eid], [checkin], [checkout]) VALUES (95, 4, CAST(N'2022-08-16T08:00:00.000' AS DateTime), CAST(N'2022-08-16T17:00:00.000' AS DateTime))
INSERT [dbo].[TimeSheet] ([tid], [eid], [checkin], [checkout]) VALUES (96, 4, CAST(N'2022-08-17T08:00:00.000' AS DateTime), CAST(N'2022-08-17T15:00:00.000' AS DateTime))
INSERT [dbo].[TimeSheet] ([tid], [eid], [checkin], [checkout]) VALUES (97, 4, CAST(N'2022-08-18T08:00:00.000' AS DateTime), CAST(N'2022-08-18T17:00:00.000' AS DateTime))
INSERT [dbo].[TimeSheet] ([tid], [eid], [checkin], [checkout]) VALUES (98, 4, CAST(N'2022-08-19T08:00:00.000' AS DateTime), CAST(N'2022-08-19T17:00:00.000' AS DateTime))
INSERT [dbo].[TimeSheet] ([tid], [eid], [checkin], [checkout]) VALUES (99, 4, CAST(N'2022-08-20T08:00:00.000' AS DateTime), CAST(N'2022-08-20T16:00:00.000' AS DateTime))
INSERT [dbo].[TimeSheet] ([tid], [eid], [checkin], [checkout]) VALUES (100, 4, CAST(N'2022-08-22T08:00:00.000' AS DateTime), CAST(N'2022-08-22T16:00:00.000' AS DateTime))
INSERT [dbo].[TimeSheet] ([tid], [eid], [checkin], [checkout]) VALUES (101, 4, CAST(N'2022-08-23T08:00:00.000' AS DateTime), CAST(N'2022-08-23T17:00:00.000' AS DateTime))
INSERT [dbo].[TimeSheet] ([tid], [eid], [checkin], [checkout]) VALUES (102, 4, CAST(N'2022-08-24T08:00:00.000' AS DateTime), CAST(N'2022-08-24T16:00:00.000' AS DateTime))
INSERT [dbo].[TimeSheet] ([tid], [eid], [checkin], [checkout]) VALUES (103, 4, CAST(N'2022-08-25T08:00:00.000' AS DateTime), CAST(N'2022-08-25T17:00:00.000' AS DateTime))
INSERT [dbo].[TimeSheet] ([tid], [eid], [checkin], [checkout]) VALUES (104, 4, CAST(N'2022-08-26T08:00:00.000' AS DateTime), CAST(N'2022-08-26T16:00:00.000' AS DateTime))
INSERT [dbo].[TimeSheet] ([tid], [eid], [checkin], [checkout]) VALUES (105, 4, CAST(N'2022-08-27T08:00:00.000' AS DateTime), CAST(N'2022-08-27T17:00:00.000' AS DateTime))
INSERT [dbo].[TimeSheet] ([tid], [eid], [checkin], [checkout]) VALUES (106, 4, CAST(N'2022-08-29T08:00:00.000' AS DateTime), CAST(N'2022-08-29T16:00:00.000' AS DateTime))
INSERT [dbo].[TimeSheet] ([tid], [eid], [checkin], [checkout]) VALUES (107, 4, CAST(N'2022-08-30T08:00:00.000' AS DateTime), CAST(N'2022-08-30T17:00:00.000' AS DateTime))
INSERT [dbo].[TimeSheet] ([tid], [eid], [checkin], [checkout]) VALUES (108, 4, CAST(N'2022-08-31T08:00:00.000' AS DateTime), CAST(N'2022-08-31T17:00:00.000' AS DateTime))
INSERT [dbo].[TimeSheet] ([tid], [eid], [checkin], [checkout]) VALUES (110, 5, CAST(N'2022-08-02T08:00:00.000' AS DateTime), CAST(N'2022-08-02T17:00:00.000' AS DateTime))
GO
INSERT [dbo].[TimeSheet] ([tid], [eid], [checkin], [checkout]) VALUES (111, 5, CAST(N'2022-08-03T08:00:00.000' AS DateTime), CAST(N'2022-08-03T17:00:00.000' AS DateTime))
INSERT [dbo].[TimeSheet] ([tid], [eid], [checkin], [checkout]) VALUES (112, 5, CAST(N'2022-08-04T08:00:00.000' AS DateTime), CAST(N'2022-08-04T17:00:00.000' AS DateTime))
INSERT [dbo].[TimeSheet] ([tid], [eid], [checkin], [checkout]) VALUES (113, 5, CAST(N'2022-08-05T08:00:00.000' AS DateTime), CAST(N'2022-08-05T17:00:00.000' AS DateTime))
INSERT [dbo].[TimeSheet] ([tid], [eid], [checkin], [checkout]) VALUES (114, 5, CAST(N'2022-08-06T08:00:00.000' AS DateTime), CAST(N'2022-08-06T17:00:00.000' AS DateTime))
INSERT [dbo].[TimeSheet] ([tid], [eid], [checkin], [checkout]) VALUES (115, 5, CAST(N'2022-08-08T08:00:00.000' AS DateTime), CAST(N'2022-08-08T17:00:00.000' AS DateTime))
INSERT [dbo].[TimeSheet] ([tid], [eid], [checkin], [checkout]) VALUES (116, 5, CAST(N'2022-08-09T08:00:00.000' AS DateTime), CAST(N'2022-08-09T16:00:00.000' AS DateTime))
INSERT [dbo].[TimeSheet] ([tid], [eid], [checkin], [checkout]) VALUES (117, 5, CAST(N'2022-08-10T08:00:00.000' AS DateTime), CAST(N'2022-08-10T17:00:00.000' AS DateTime))
INSERT [dbo].[TimeSheet] ([tid], [eid], [checkin], [checkout]) VALUES (118, 5, CAST(N'2022-08-11T08:00:00.000' AS DateTime), CAST(N'2022-08-11T17:00:00.000' AS DateTime))
INSERT [dbo].[TimeSheet] ([tid], [eid], [checkin], [checkout]) VALUES (119, 5, CAST(N'2022-08-12T08:00:00.000' AS DateTime), CAST(N'2022-08-12T17:00:00.000' AS DateTime))
INSERT [dbo].[TimeSheet] ([tid], [eid], [checkin], [checkout]) VALUES (120, 5, CAST(N'2022-08-13T08:00:00.000' AS DateTime), CAST(N'2022-08-13T17:00:00.000' AS DateTime))
INSERT [dbo].[TimeSheet] ([tid], [eid], [checkin], [checkout]) VALUES (121, 5, CAST(N'2022-08-15T08:00:00.000' AS DateTime), CAST(N'2022-08-15T17:00:00.000' AS DateTime))
INSERT [dbo].[TimeSheet] ([tid], [eid], [checkin], [checkout]) VALUES (122, 5, CAST(N'2022-08-16T08:00:00.000' AS DateTime), CAST(N'2022-08-16T15:00:00.000' AS DateTime))
INSERT [dbo].[TimeSheet] ([tid], [eid], [checkin], [checkout]) VALUES (123, 5, CAST(N'2022-08-17T08:00:00.000' AS DateTime), CAST(N'2022-08-17T17:00:00.000' AS DateTime))
INSERT [dbo].[TimeSheet] ([tid], [eid], [checkin], [checkout]) VALUES (124, 5, CAST(N'2022-08-18T08:00:00.000' AS DateTime), CAST(N'2022-08-18T16:00:00.000' AS DateTime))
INSERT [dbo].[TimeSheet] ([tid], [eid], [checkin], [checkout]) VALUES (126, 5, CAST(N'2022-08-20T08:00:00.000' AS DateTime), CAST(N'2022-08-20T17:00:00.000' AS DateTime))
INSERT [dbo].[TimeSheet] ([tid], [eid], [checkin], [checkout]) VALUES (127, 5, CAST(N'2022-08-22T08:00:00.000' AS DateTime), CAST(N'2022-08-22T17:00:00.000' AS DateTime))
INSERT [dbo].[TimeSheet] ([tid], [eid], [checkin], [checkout]) VALUES (128, 5, CAST(N'2022-08-23T08:00:00.000' AS DateTime), CAST(N'2022-08-23T17:00:00.000' AS DateTime))
INSERT [dbo].[TimeSheet] ([tid], [eid], [checkin], [checkout]) VALUES (129, 5, CAST(N'2022-08-24T08:00:00.000' AS DateTime), CAST(N'2022-08-24T17:00:00.000' AS DateTime))
INSERT [dbo].[TimeSheet] ([tid], [eid], [checkin], [checkout]) VALUES (130, 5, CAST(N'2022-08-25T08:00:00.000' AS DateTime), CAST(N'2022-08-25T17:00:00.000' AS DateTime))
INSERT [dbo].[TimeSheet] ([tid], [eid], [checkin], [checkout]) VALUES (131, 5, CAST(N'2022-08-26T08:00:00.000' AS DateTime), CAST(N'2022-08-26T17:00:00.000' AS DateTime))
INSERT [dbo].[TimeSheet] ([tid], [eid], [checkin], [checkout]) VALUES (132, 5, CAST(N'2022-08-27T08:00:00.000' AS DateTime), CAST(N'2022-08-27T17:00:00.000' AS DateTime))
INSERT [dbo].[TimeSheet] ([tid], [eid], [checkin], [checkout]) VALUES (133, 5, CAST(N'2022-08-29T08:00:00.000' AS DateTime), CAST(N'2022-08-29T17:00:00.000' AS DateTime))
INSERT [dbo].[TimeSheet] ([tid], [eid], [checkin], [checkout]) VALUES (134, 5, CAST(N'2022-08-30T08:00:00.000' AS DateTime), CAST(N'2022-08-30T16:00:00.000' AS DateTime))
INSERT [dbo].[TimeSheet] ([tid], [eid], [checkin], [checkout]) VALUES (135, 5, CAST(N'2022-08-31T08:00:00.000' AS DateTime), CAST(N'2022-08-31T16:00:00.000' AS DateTime))
INSERT [dbo].[TimeSheet] ([tid], [eid], [checkin], [checkout]) VALUES (1235, 5, CAST(N'2022-08-19T08:00:00.000' AS DateTime), CAST(N'2022-08-19T17:00:00.000' AS DateTime))
GO
ALTER TABLE [dbo].[Leave]  WITH CHECK ADD  CONSTRAINT [FK_Leave_Employees] FOREIGN KEY([eid])
REFERENCES [dbo].[Employee] ([eid])
GO
ALTER TABLE [dbo].[Leave] CHECK CONSTRAINT [FK_Leave_Employees]
GO
ALTER TABLE [dbo].[OvertimeRegister]  WITH CHECK ADD  CONSTRAINT [FK_OvertimeRegister_Employees] FOREIGN KEY([eid])
REFERENCES [dbo].[Employee] ([eid])
GO
ALTER TABLE [dbo].[OvertimeRegister] CHECK CONSTRAINT [FK_OvertimeRegister_Employees]
GO
ALTER TABLE [dbo].[TimeSheet]  WITH CHECK ADD  CONSTRAINT [FK_TimeSheet_Employees] FOREIGN KEY([eid])
REFERENCES [dbo].[Employee] ([eid])
GO
ALTER TABLE [dbo].[TimeSheet] CHECK CONSTRAINT [FK_TimeSheet_Employees]
GO
USE [master]
GO
ALTER DATABASE [ProjectPRJ] SET  READ_WRITE 
GO
