USE [master]
GO
/****** Object:  Database [JuliocomercialDb]    Script Date: 17/08/2018 16:07:06 ******/
CREATE DATABASE [JuliocomercialDb]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'JuliocomercialDb', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\JuliocomercialDb.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'JuliocomercialDb_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\JuliocomercialDb_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [JuliocomercialDb] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [JuliocomercialDb].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [JuliocomercialDb] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [JuliocomercialDb] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [JuliocomercialDb] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [JuliocomercialDb] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [JuliocomercialDb] SET ARITHABORT OFF 
GO
ALTER DATABASE [JuliocomercialDb] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [JuliocomercialDb] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [JuliocomercialDb] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [JuliocomercialDb] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [JuliocomercialDb] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [JuliocomercialDb] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [JuliocomercialDb] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [JuliocomercialDb] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [JuliocomercialDb] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [JuliocomercialDb] SET  DISABLE_BROKER 
GO
ALTER DATABASE [JuliocomercialDb] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [JuliocomercialDb] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [JuliocomercialDb] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [JuliocomercialDb] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [JuliocomercialDb] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [JuliocomercialDb] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [JuliocomercialDb] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [JuliocomercialDb] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [JuliocomercialDb] SET  MULTI_USER 
GO
ALTER DATABASE [JuliocomercialDb] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [JuliocomercialDb] SET DB_CHAINING OFF 
GO
ALTER DATABASE [JuliocomercialDb] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [JuliocomercialDb] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [JuliocomercialDb] SET DELAYED_DURABILITY = DISABLED 
GO
USE [JuliocomercialDb]
GO
/****** Object:  Table [dbo].[Clientes]    Script Date: 17/08/2018 16:07:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Clientes](
	[ClienteID] [int] NULL,
	[Nombre] [varchar](50) NULL,
	[Direccion] [varchar](50) NULL,
	[Telefono] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Deudores]    Script Date: 17/08/2018 16:07:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Deudores](
	[Deudoresid] [int] NULL,
	[clientesid] [int] NULL,
	[Itenid] [int] NULL,
	[mora] [varchar](50) NULL,
	[plazo] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Itens]    Script Date: 17/08/2018 16:07:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Itens](
	[Itensid] [int] NULL,
	[nombre] [varchar](50) NULL,
	[cantidad] [varchar](50) NULL,
	[precio] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Clientes] ([ClienteID], [Nombre], [Direccion], [Telefono]) VALUES (1, N'Julio Angel', N'C/sanchez km 50 ', N'809-342-0988')
INSERT [dbo].[Clientes] ([ClienteID], [Nombre], [Direccion], [Telefono]) VALUES (2, N'Robert Lopez', N'C/lepordo Navarro #200', N'809-957-4434')
INSERT [dbo].[Clientes] ([ClienteID], [Nombre], [Direccion], [Telefono]) VALUES (3, N'Luis Volquez', N'C/eduardo Brito #68', N'809-793-7057')
INSERT [dbo].[Clientes] ([ClienteID], [Nombre], [Direccion], [Telefono]) VALUES (4, N'Reinaldo Rijo', N'C/el Sol #56', N'829-567-0123')
INSERT [dbo].[Clientes] ([ClienteID], [Nombre], [Direccion], [Telefono]) VALUES (5, N'Josaidy Sanchez', N'Av. Lope de vega #56', N'809-667-4562')
INSERT [dbo].[Clientes] ([ClienteID], [Nombre], [Direccion], [Telefono]) VALUES (6, N'Jason Romero', N'Av. Frank Pratss', N'809-234-6789')
INSERT [dbo].[Clientes] ([ClienteID], [Nombre], [Direccion], [Telefono]) VALUES (7, N'Olga Santos ', N'Av. Juan Pablo Duarte #509', N'809-654-2347')
INSERT [dbo].[Clientes] ([ClienteID], [Nombre], [Direccion], [Telefono]) VALUES (8, N'Ramona Reyes ', N'C/sanchez km22 ', N'809-689-0987')
INSERT [dbo].[Clientes] ([ClienteID], [Nombre], [Direccion], [Telefono]) VALUES (9, N'Cesar Baez', N'C/juan Molla #4566', N'829-201-7456')
INSERT [dbo].[Clientes] ([ClienteID], [Nombre], [Direccion], [Telefono]) VALUES (10, N'Welinton Valenzuela', N'C/san Antonio #14', N'809-957-4427')
INSERT [dbo].[Deudores] ([Deudoresid], [clientesid], [Itenid], [mora], [plazo]) VALUES (1, 1, 1, N'2,000', N'04/05/2018')
INSERT [dbo].[Deudores] ([Deudoresid], [clientesid], [Itenid], [mora], [plazo]) VALUES (2, 2, 2, N'300', N'09/01/2019')
INSERT [dbo].[Deudores] ([Deudoresid], [clientesid], [Itenid], [mora], [plazo]) VALUES (3, 3, 3, N'700', N'01/01/2011')
INSERT [dbo].[Deudores] ([Deudoresid], [clientesid], [Itenid], [mora], [plazo]) VALUES (4, 4, 4, N'2,600', N'02/05//2017')
INSERT [dbo].[Deudores] ([Deudoresid], [clientesid], [Itenid], [mora], [plazo]) VALUES (5, 5, 5, N'500', N'01/03/2016')
INSERT [dbo].[Deudores] ([Deudoresid], [clientesid], [Itenid], [mora], [plazo]) VALUES (6, 6, 6, N'100', N'04/06/2018')
INSERT [dbo].[Deudores] ([Deudoresid], [clientesid], [Itenid], [mora], [plazo]) VALUES (7, 7, 7, N'800', N'03/03/1993')
INSERT [dbo].[Deudores] ([Deudoresid], [clientesid], [Itenid], [mora], [plazo]) VALUES (8, 8, 8, N'500', N'03/09/2018')
INSERT [dbo].[Deudores] ([Deudoresid], [clientesid], [Itenid], [mora], [plazo]) VALUES (9, 9, 9, N'1,200', N'05/08/2018')
INSERT [dbo].[Deudores] ([Deudoresid], [clientesid], [Itenid], [mora], [plazo]) VALUES (10, 10, 10, N'5,000', N'08/08/2011')
INSERT [dbo].[Itens] ([Itensid], [nombre], [cantidad], [precio]) VALUES (1, N'Nevera', N'1', N'17,000')
INSERT [dbo].[Itens] ([Itensid], [nombre], [cantidad], [precio]) VALUES (2, N'Lavadora', N'2', N'14,000')
INSERT [dbo].[Itens] ([Itensid], [nombre], [cantidad], [precio]) VALUES (3, N'Radio', N'3', N'12,000')
INSERT [dbo].[Itens] ([Itensid], [nombre], [cantidad], [precio]) VALUES (4, N'Estufa', N'4', N'32,000')
INSERT [dbo].[Itens] ([Itensid], [nombre], [cantidad], [precio]) VALUES (5, N'Plasma', N'3', N'90,000')
INSERT [dbo].[Itens] ([Itensid], [nombre], [cantidad], [precio]) VALUES (6, N'Plancha', N'2', N'5,000')
INSERT [dbo].[Itens] ([Itensid], [nombre], [cantidad], [precio]) VALUES (7, N'Abanico ', N'1', N'1,200')
INSERT [dbo].[Itens] ([Itensid], [nombre], [cantidad], [precio]) VALUES (8, N'Cama', N'1', N'54,000')
INSERT [dbo].[Itens] ([Itensid], [nombre], [cantidad], [precio]) VALUES (9, N'Muebles', N'2', N'32,000')
INSERT [dbo].[Itens] ([Itensid], [nombre], [cantidad], [precio]) VALUES (10, N'Tostodora', N'1', N'3,000')
USE [master]
GO
ALTER DATABASE [JuliocomercialDb] SET  READ_WRITE 
GO
