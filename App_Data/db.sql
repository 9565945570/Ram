USE [master]
GO
/****** Object:  Database [evillage]    Script Date: 02/04/2024 16:01:39 ******/
CREATE DATABASE [evillage] ON  PRIMARY 
( NAME = N'evillage', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\evillage.mdf' , SIZE = 2048KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'evillage_log', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\evillage_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [evillage] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [evillage].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [evillage] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [evillage] SET ANSI_NULLS OFF
GO
ALTER DATABASE [evillage] SET ANSI_PADDING OFF
GO
ALTER DATABASE [evillage] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [evillage] SET ARITHABORT OFF
GO
ALTER DATABASE [evillage] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [evillage] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [evillage] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [evillage] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [evillage] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [evillage] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [evillage] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [evillage] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [evillage] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [evillage] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [evillage] SET  DISABLE_BROKER
GO
ALTER DATABASE [evillage] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [evillage] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [evillage] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [evillage] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [evillage] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [evillage] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [evillage] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [evillage] SET  READ_WRITE
GO
ALTER DATABASE [evillage] SET RECOVERY SIMPLE
GO
ALTER DATABASE [evillage] SET  MULTI_USER
GO
ALTER DATABASE [evillage] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [evillage] SET DB_CHAINING OFF
GO
USE [evillage]
GO
/****** Object:  Table [dbo].[tbl_service]    Script Date: 02/04/2024 16:01:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_service](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Service] [varchar](200) NULL,
 CONSTRAINT [PK_tbl_service] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_service] ON
INSERT [dbo].[tbl_service] ([Id], [Service]) VALUES (1, NULL)
INSERT [dbo].[tbl_service] ([Id], [Service]) VALUES (2, NULL)
SET IDENTITY_INSERT [dbo].[tbl_service] OFF
/****** Object:  Table [dbo].[tbl_register1]    Script Date: 02/04/2024 16:01:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_register1](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[Fname] [varchar](50) NULL,
	[Gender] [varchar](50) NULL,
	[Email] [varchar](50) NOT NULL,
	[Profile] [varchar](max) NULL,
	[Mob] [varchar](50) NULL,
	[PinCode] [varchar](50) NULL,
	[Password] [varchar](50) NULL,
	[Cpassword] [varchar](50) NULL,
	[Address] [varchar](250) NULL,
 CONSTRAINT [PK_tbl_register1] PRIMARY KEY CLUSTERED 
(
	[Email] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_register1] ON
INSERT [dbo].[tbl_register1] ([Id], [Name], [Fname], [Gender], [Email], [Profile], [Mob], [PinCode], [Password], [Cpassword], [Address]) VALUES (8, N'Abhinandan', N'Sitaram', N'Male', N'Abhi@gmail.com', N'abhi4.PNG', N'987654321', N'224157', N'1234567', N'1234567', N'Lucknow')
INSERT [dbo].[tbl_register1] ([Id], [Name], [Fname], [Gender], [Email], [Profile], [Mob], [PinCode], [Password], [Cpassword], [Address]) VALUES (11, N'Ankesh', N'Ashok', N'Male', N'ankesh12@gmail.com', N'lko1.jpg', N'923456788', N'224157', NULL, NULL, N'Azamgarh')
INSERT [dbo].[tbl_register1] ([Id], [Name], [Fname], [Gender], [Email], [Profile], [Mob], [PinCode], [Password], [Cpassword], [Address]) VALUES (10, N'Ankur', N'Pal', N'Male', N'Ankur@gmail.com', N'wallpaper-4106667.jpg', N'898765432', N'123456', N'Abcdef', N'abcdef', N'Basti')
INSERT [dbo].[tbl_register1] ([Id], [Name], [Fname], [Gender], [Email], [Profile], [Mob], [PinCode], [Password], [Cpassword], [Address]) VALUES (12, N'Atul', N'RamDeen', N'Male', N'atul@gmail.com', N'lko6.jpg', N'781234567', N'224171', N'zxcvbnm', N'zxcvbnm', N'Ayodhya')
SET IDENTITY_INSERT [dbo].[tbl_register1] OFF
/****** Object:  Table [dbo].[tbl_photo]    Script Date: 02/04/2024 16:01:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_photo](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Profile] [varchar](max) NULL,
	[Title] [varchar](200) NOT NULL,
	[Paragraph] [varchar](200) NULL,
	[Update] [varchar](200) NULL,
 CONSTRAINT [PK_tbl_photo] PRIMARY KEY CLUSTERED 
(
	[Title] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_photo] ON
INSERT [dbo].[tbl_photo] ([Id], [Profile], [Title], [Paragraph], [Update]) VALUES (17, N'lko5.jpg', N'Ankesh', N'jdfheilrugfuiewr', N'5 min ago upadte')
INSERT [dbo].[tbl_photo] ([Id], [Profile], [Title], [Paragraph], [Update]) VALUES (16, N'abhi4.PNG', N'wertyui', N'wertyuip', N'ertghyjk')
SET IDENTITY_INSERT [dbo].[tbl_photo] OFF
/****** Object:  Table [dbo].[tbl_msg]    Script Date: 02/04/2024 16:01:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_msg](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Message] [varchar](200) NULL,
 CONSTRAINT [PK_tbl_msg] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[tbl_msg] ON
INSERT [dbo].[tbl_msg] ([Id], [Message]) VALUES (1, N'Hello gys')
INSERT [dbo].[tbl_msg] ([Id], [Message]) VALUES (2, N'uhuhh')
INSERT [dbo].[tbl_msg] ([Id], [Message]) VALUES (3, N'Hello gys')
INSERT [dbo].[tbl_msg] ([Id], [Message]) VALUES (4, N'ham hai')
INSERT [dbo].[tbl_msg] ([Id], [Message]) VALUES (5, N'gdghd')
INSERT [dbo].[tbl_msg] ([Id], [Message]) VALUES (6, N'ytfytf')
INSERT [dbo].[tbl_msg] ([Id], [Message]) VALUES (7, N'ytfytfasd')
INSERT [dbo].[tbl_msg] ([Id], [Message]) VALUES (8, N'd')
SET IDENTITY_INSERT [dbo].[tbl_msg] OFF
/****** Object:  Table [dbo].[tbl_login1]    Script Date: 02/04/2024 16:01:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_login1](
	[UserId] [varchar](50) NOT NULL,
	[Password] [varchar](50) NULL,
 CONSTRAINT [PK_tbl_login1] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[tbl_login1] ([UserId], [Password]) VALUES (N'Abhi@123', N'123')
/****** Object:  Table [dbo].[tbl_dwnload]    Script Date: 02/04/2024 16:01:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_dwnload](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Download] [varchar](250) NULL,
 CONSTRAINT [PK_tbl_dwnload] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_contact1]    Script Date: 02/04/2024 16:01:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_contact1](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [varchar](50) NOT NULL,
	[Mobile] [varchar](50) NULL,
	[Address] [varchar](200) NULL,
	[Query] [varchar](200) NULL,
 CONSTRAINT [PK_tbl_contact1] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
