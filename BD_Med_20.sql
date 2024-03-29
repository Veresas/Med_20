USE [master]
GO
/****** Object:  Database [Med_lab_20]    Script Date: 28.02.2024 19:41:13 ******/
CREATE DATABASE [Med_lab_20]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Med_lab_20', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\Med_lab_20.mdf' , SIZE = 73728KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Med_lab_20_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\Med_lab_20_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [Med_lab_20] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Med_lab_20].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Med_lab_20] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Med_lab_20] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Med_lab_20] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Med_lab_20] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Med_lab_20] SET ARITHABORT OFF 
GO
ALTER DATABASE [Med_lab_20] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Med_lab_20] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Med_lab_20] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Med_lab_20] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Med_lab_20] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Med_lab_20] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Med_lab_20] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Med_lab_20] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Med_lab_20] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Med_lab_20] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Med_lab_20] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Med_lab_20] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Med_lab_20] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Med_lab_20] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Med_lab_20] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Med_lab_20] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Med_lab_20] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Med_lab_20] SET RECOVERY FULL 
GO
ALTER DATABASE [Med_lab_20] SET  MULTI_USER 
GO
ALTER DATABASE [Med_lab_20] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Med_lab_20] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Med_lab_20] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Med_lab_20] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Med_lab_20] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Med_lab_20] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'Med_lab_20', N'ON'
GO
ALTER DATABASE [Med_lab_20] SET QUERY_STORE = ON
GO
ALTER DATABASE [Med_lab_20] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [Med_lab_20]
GO
/****** Object:  Table [dbo].[Accont_insurance]    Script Date: 28.02.2024 19:41:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Accont_insurance](
	[id_accountant] [nvarchar](8) NOT NULL,
	[id_insurance_company] [int] NOT NULL,
	[date_of_creation] [date] NOT NULL,
	[bill] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Accont_insurance] PRIMARY KEY CLUSTERED 
(
	[id_accountant] ASC,
	[id_insurance_company] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Accountants]    Script Date: 28.02.2024 19:41:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Accountants](
	[id_accountant] [nvarchar](8) NOT NULL,
	[full_name] [nvarchar](50) NULL,
	[services] [nvarchar](50) NULL,
 CONSTRAINT [PK_Accountants] PRIMARY KEY CLUSTERED 
(
	[id_accountant] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Admins]    Script Date: 28.02.2024 19:41:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Admins](
	[id_admin] [nvarchar](8) NOT NULL,
	[photo] [nchar](10) NULL,
 CONSTRAINT [PK_Admins] PRIMARY KEY CLUSTERED 
(
	[id_admin] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Analyzer]    Script Date: 28.02.2024 19:41:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Analyzer](
	[id_analyzer] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Analyzer_1] PRIMARY KEY CLUSTERED 
(
	[id_analyzer] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[History_of_analyzers]    Script Date: 28.02.2024 19:41:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[History_of_analyzers](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_analyzer] [int] NOT NULL,
	[date_of_receipt] [date] NOT NULL,
	[date_of_execution] [nvarchar](50) NULL,
 CONSTRAINT [PK_History_of_analyzers] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Insurance_company]    Script Date: 28.02.2024 19:41:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Insurance_company](
	[id_insurance_company] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[address] [nvarchar](50) NOT NULL,
	[INN] [int] NOT NULL,
	[r/s] [nvarchar](50) NOT NULL,
	[BIC] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Insurance_company] PRIMARY KEY CLUSTERED 
(
	[id_insurance_company] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Laboratorian]    Script Date: 28.02.2024 19:41:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Laboratorian](
	[id_laboratorian] [nvarchar](8) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[ip] [nvarchar](20) NOT NULL,
	[services] [nvarchar](30) NOT NULL,
	[photo] [nvarchar](10) NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[id_laboratorian] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Laboratorian_services]    Script Date: 28.02.2024 19:41:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Laboratorian_services](
	[id_laboratorian] [nvarchar](8) NOT NULL,
	[id_services] [int] NOT NULL,
 CONSTRAINT [PK_Users_services] PRIMARY KEY CLUSTERED 
(
	[id_laboratorian] ASC,
	[id_services] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Order]    Script Date: 28.02.2024 19:41:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
	[id_order] [int] IDENTITY(1,1) NOT NULL,
	[date_of_creation] [date] NOT NULL,
	[order_status] [nvarchar](15) NOT NULL,
	[execution_time] [int] NOT NULL,
 CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED 
(
	[id_order] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Package_of_services]    Script Date: 28.02.2024 19:41:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Package_of_services](
	[id_order] [int] NOT NULL,
	[id_services] [int] NOT NULL,
	[services_status] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Package_of_services] PRIMARY KEY CLUSTERED 
(
	[id_order] ASC,
	[id_services] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Patient]    Script Date: 28.02.2024 19:41:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Patient](
	[id_patient] [int] IDENTITY(1,1) NOT NULL,
	[login] [nvarchar](40) NOT NULL,
	[password] [nvarchar](50) NOT NULL,
	[full_name] [nvarchar](60) NOT NULL,
	[date_of_birth] [date] NOT NULL,
	[passport] [int] NOT NULL,
	[phone] [nvarchar](13) NOT NULL,
	[email] [nvarchar](50) NOT NULL,
	[insurance_policy] [int] NOT NULL,
	[type_police] [nvarchar](50) NOT NULL,
	[id_insurance_company] [int] NOT NULL,
 CONSTRAINT [PK_Patient_1] PRIMARY KEY CLUSTERED 
(
	[id_patient] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Patient_order]    Script Date: 28.02.2024 19:41:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Patient_order](
	[id_patient] [int] NOT NULL,
	[id_order] [int] NOT NULL,
 CONSTRAINT [PK_Patient_order] PRIMARY KEY CLUSTERED 
(
	[id_patient] ASC,
	[id_order] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Roles]    Script Date: 28.02.2024 19:41:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Roles](
	[id_role] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](30) NOT NULL,
 CONSTRAINT [PK_Roles] PRIMARY KEY CLUSTERED 
(
	[id_role] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Services]    Script Date: 28.02.2024 19:41:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Services](
	[id_services] [int] IDENTITY(1,1) NOT NULL,
	[service] [nvarchar](50) NOT NULL,
	[price] [nvarchar](50) NOT NULL,
	[period_of_execution] [nvarchar](50) NULL,
	[average_deviation] [nvarchar](50) NULL,
 CONSTRAINT [PK_Services] PRIMARY KEY CLUSTERED 
(
	[id_services] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Services_rendered]    Script Date: 28.02.2024 19:41:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Services_rendered](
	[id_services] [int] NOT NULL,
	[id_laboratorian] [nvarchar](8) NOT NULL,
	[id_analyzer] [int] NOT NULL,
	[time_of_rendered] [date] NULL,
 CONSTRAINT [PK_Services_rendered] PRIMARY KEY CLUSTERED 
(
	[id_services] ASC,
	[id_laboratorian] ASC,
	[id_analyzer] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Session_history]    Script Date: 28.02.2024 19:41:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Session_history](
	[id_session] [int] IDENTITY(1,1) NOT NULL,
	[id_user] [nvarchar](8) NOT NULL,
	[Date_of_enter] [date] NULL,
	[Duration] [time](7) NULL,
	[IsSuccess] [bit] NOT NULL,
 CONSTRAINT [PK_Session_history] PRIMARY KEY CLUSTERED 
(
	[id_session] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 28.02.2024 19:41:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[id_user] [nvarchar](8) NOT NULL,
	[id_role] [int] NOT NULL,
	[login] [nvarchar](50) NOT NULL,
	[password] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Users_1] PRIMARY KEY CLUSTERED 
(
	[id_user] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Accountants] ([id_accountant], [full_name], [services]) VALUES (N'2-00001', N'Test', N'Accountant_1')
GO
INSERT [dbo].[Admins] ([id_admin], [photo]) VALUES (N'3-00001', N'Admin_1   ')
GO
INSERT [dbo].[Laboratorian] ([id_laboratorian], [name], [ip], [services], [photo]) VALUES (N'1-00001', N'Clareta Hacking', N'147.231.50.234', N'557 836 287  ', N'laborant_1')
INSERT [dbo].[Laboratorian] ([id_laboratorian], [name], [ip], [services], [photo]) VALUES (N'1-00002', N'Northrop Mably', N'22.32.15.211', N'855 619 557 836 548', N'laborant_2')
INSERT [dbo].[Laboratorian] ([id_laboratorian], [name], [ip], [services], [photo]) VALUES (N'1-00003', N'Fabian Rolf', N'113.92.142.29', N'543 836   ', NULL)
INSERT [dbo].[Laboratorian] ([id_laboratorian], [name], [ip], [services], [photo]) VALUES (N'1-00004', N'Lauree Raden', N'39.24.146.52', N'855 258   ', NULL)
INSERT [dbo].[Laboratorian] ([id_laboratorian], [name], [ip], [services], [photo]) VALUES (N'1-00005', N'Barby Follos', N'87.232.97.3', N'543 415 619 557 ', NULL)
INSERT [dbo].[Laboratorian] ([id_laboratorian], [name], [ip], [services], [photo]) VALUES (N'1-00006', N'Mile Enterle', N'85.121.209.6', N'557 836 229  ', NULL)
INSERT [dbo].[Laboratorian] ([id_laboratorian], [name], [ip], [services], [photo]) VALUES (N'1-00007', N'Midge Peaker', N'196.39.132.128', N'287 619 548 346 ', NULL)
INSERT [dbo].[Laboratorian] ([id_laboratorian], [name], [ip], [services], [photo]) VALUES (N'1-00008', N'Manon Robichon', N'143.159.207.105', N'415 311 176 855 ', NULL)
INSERT [dbo].[Laboratorian] ([id_laboratorian], [name], [ip], [services], [photo]) VALUES (N'1-00009', N'Stavro Robken', N'12.154.73.196', N'323 548 346  ', NULL)
INSERT [dbo].[Laboratorian] ([id_laboratorian], [name], [ip], [services], [photo]) VALUES (N'1-00010', N'Bryan Tidmas', N'24.42.134.21', N'229 346 501 548 ', NULL)
INSERT [dbo].[Laboratorian] ([id_laboratorian], [name], [ip], [services], [photo]) VALUES (N'1-00011', N'Jeannette Fussie', N'98.194.112.137', N'287    ', NULL)
INSERT [dbo].[Laboratorian] ([id_laboratorian], [name], [ip], [services], [photo]) VALUES (N'1-00012', N'Stephen Antonacci', N'198.146.255.15', N'619 258 229 557 797', NULL)
INSERT [dbo].[Laboratorian] ([id_laboratorian], [name], [ip], [services], [photo]) VALUES (N'1-00013', N'Niccolo Bountiff', N'231.78.246.229', N'323 311 557  ', NULL)
INSERT [dbo].[Laboratorian] ([id_laboratorian], [name], [ip], [services], [photo]) VALUES (N'1-00014', N'Clemente Benjefield', N'88.126.93.246', N'855 176 176 855 ', NULL)
INSERT [dbo].[Laboratorian] ([id_laboratorian], [name], [ip], [services], [photo]) VALUES (N'1-00015', N'Orlan Corbyn', N'232.175.48.179', N'229 836 287 619 ', NULL)
INSERT [dbo].[Laboratorian] ([id_laboratorian], [name], [ip], [services], [photo]) VALUES (N'1-00016', N'Coreen Stickins', N'64.30.175.158', N'557    ', NULL)
INSERT [dbo].[Laboratorian] ([id_laboratorian], [name], [ip], [services], [photo]) VALUES (N'1-00017', N'Daveta Clarage', N'139.88.229.111', N'346 836 346  ', NULL)
INSERT [dbo].[Laboratorian] ([id_laboratorian], [name], [ip], [services], [photo]) VALUES (N'1-00018', N'Javier McCawley', N'14.199.67.32', N'619 258   ', NULL)
INSERT [dbo].[Laboratorian] ([id_laboratorian], [name], [ip], [services], [photo]) VALUES (N'1-00019', N'Daile Band', N'206.105.148.56', N'176 543 855 258 ', NULL)
INSERT [dbo].[Laboratorian] ([id_laboratorian], [name], [ip], [services], [photo]) VALUES (N'1-00020', N'Angil Buttery', N'192.158.7.138', N'323 855 659 287 ', NULL)
INSERT [dbo].[Laboratorian] ([id_laboratorian], [name], [ip], [services], [photo]) VALUES (N'1-00021', N'Kyla Kinman', N'134.99.243.113', N'346 855 323 557 501', NULL)
INSERT [dbo].[Laboratorian] ([id_laboratorian], [name], [ip], [services], [photo]) VALUES (N'1-00022', N'Selena Skepper', N'52.90.89.126', N'855 287   ', NULL)
INSERT [dbo].[Laboratorian] ([id_laboratorian], [name], [ip], [services], [photo]) VALUES (N'1-00023', N'Alyson Yeoland', N'239.7.55.187', N'836 836 229 258 836', NULL)
INSERT [dbo].[Laboratorian] ([id_laboratorian], [name], [ip], [services], [photo]) VALUES (N'1-00024', N'Claudie Speeding', N'127.37.194.127', N'548 557 176  ', NULL)
INSERT [dbo].[Laboratorian] ([id_laboratorian], [name], [ip], [services], [photo]) VALUES (N'1-00025', N'Alaric Scarisbrick', N'97.227.15.172', N'543 836   ', NULL)
INSERT [dbo].[Laboratorian] ([id_laboratorian], [name], [ip], [services], [photo]) VALUES (N'1-00026', N'Marie Thurby', N'94.70.148.135', N'548 855   ', NULL)
INSERT [dbo].[Laboratorian] ([id_laboratorian], [name], [ip], [services], [photo]) VALUES (N'1-00027', N'Cloe Roxbrough', N'185.110.201.36', N'501 797 797  ', NULL)
INSERT [dbo].[Laboratorian] ([id_laboratorian], [name], [ip], [services], [photo]) VALUES (N'1-00028', N'Pegeen McCotter', N'22.179.187.229', N'176 855   ', NULL)
INSERT [dbo].[Laboratorian] ([id_laboratorian], [name], [ip], [services], [photo]) VALUES (N'1-00029', N'Iggie Calleja', N'67.237.123.227', N'836 176 619 258 ', NULL)
INSERT [dbo].[Laboratorian] ([id_laboratorian], [name], [ip], [services], [photo]) VALUES (N'1-00030', N'Nelle Brosch', N'251.1.59.65', N'346    ', NULL)
INSERT [dbo].[Laboratorian] ([id_laboratorian], [name], [ip], [services], [photo]) VALUES (N'1-00031', N'Shae Allsepp', N'88.20.74.85', N'548 229 258 619 ', NULL)
INSERT [dbo].[Laboratorian] ([id_laboratorian], [name], [ip], [services], [photo]) VALUES (N'1-00032', N'Eldridge Abbatucci', N'52.44.134.126', N'836 836 797  ', NULL)
INSERT [dbo].[Laboratorian] ([id_laboratorian], [name], [ip], [services], [photo]) VALUES (N'1-00033', N'Skip Garnham', N'100.17.131.54', N'548    ', NULL)
INSERT [dbo].[Laboratorian] ([id_laboratorian], [name], [ip], [services], [photo]) VALUES (N'1-00034', N'Ric Kitchenside', N'29.100.76.146', N'501 258 659 501 659', NULL)
INSERT [dbo].[Laboratorian] ([id_laboratorian], [name], [ip], [services], [photo]) VALUES (N'1-00035', N'Urbanus Di Meo', N'90.30.202.251', N'797 287 855 346 ', NULL)
INSERT [dbo].[Laboratorian] ([id_laboratorian], [name], [ip], [services], [photo]) VALUES (N'1-00036', N'Monty Beidebeke', N'3.32.202.92', N'415 543 836  ', NULL)
INSERT [dbo].[Laboratorian] ([id_laboratorian], [name], [ip], [services], [photo]) VALUES (N'1-00037', N'Byrann Savins', N'123.187.14.103', N'836    ', NULL)
INSERT [dbo].[Laboratorian] ([id_laboratorian], [name], [ip], [services], [photo]) VALUES (N'1-00038', N'Sonnie Riby', N'16.81.16.23', N'501    ', NULL)
INSERT [dbo].[Laboratorian] ([id_laboratorian], [name], [ip], [services], [photo]) VALUES (N'1-00039', N'Sherill Birney', N'144.76.193.237', N'836 258 619  ', NULL)
INSERT [dbo].[Laboratorian] ([id_laboratorian], [name], [ip], [services], [photo]) VALUES (N'1-00040', N'Indira Kleanthous', N'169.108.108.88', N'797 346 543 501 258', NULL)
INSERT [dbo].[Laboratorian] ([id_laboratorian], [name], [ip], [services], [photo]) VALUES (N'1-00041', N'Maison Skerme', N'143.177.136.232', N'176 619   ', NULL)
INSERT [dbo].[Laboratorian] ([id_laboratorian], [name], [ip], [services], [photo]) VALUES (N'1-00042', N'Hanan Cahey', N'18.127.87.158', N'501 258   ', NULL)
INSERT [dbo].[Laboratorian] ([id_laboratorian], [name], [ip], [services], [photo]) VALUES (N'1-00043', N'Tore Rusling', N'142.216.95.251', N'619    ', NULL)
INSERT [dbo].[Laboratorian] ([id_laboratorian], [name], [ip], [services], [photo]) VALUES (N'1-00044', N'Jeddy De Souza', N'229.104.255.175', N'415 619   ', NULL)
INSERT [dbo].[Laboratorian] ([id_laboratorian], [name], [ip], [services], [photo]) VALUES (N'1-00045', N'Flossi McLeoid', N'90.207.38.179', N'543    ', NULL)
INSERT [dbo].[Laboratorian] ([id_laboratorian], [name], [ip], [services], [photo]) VALUES (N'1-00046', N'Nikoletta Megainey', N'172.249.218.50', N'415    ', NULL)
INSERT [dbo].[Laboratorian] ([id_laboratorian], [name], [ip], [services], [photo]) VALUES (N'1-00047', N'Adan Bliven', N'49.101.94.118', N'323 548   ', NULL)
INSERT [dbo].[Laboratorian] ([id_laboratorian], [name], [ip], [services], [photo]) VALUES (N'1-00048', N'Mohandis Rossoni', N'161.5.132.42', N'176 659 287  ', NULL)
INSERT [dbo].[Laboratorian] ([id_laboratorian], [name], [ip], [services], [photo]) VALUES (N'1-00049', N'Nappie Redington', N'174.42.8.3', N'548    ', NULL)
INSERT [dbo].[Laboratorian] ([id_laboratorian], [name], [ip], [services], [photo]) VALUES (N'1-00050', N'Lenka Francie', N'182.2.128.34', N'659 501 415  ', NULL)
INSERT [dbo].[Laboratorian] ([id_laboratorian], [name], [ip], [services], [photo]) VALUES (N'1-00051', N'Ashley Blowin', N'73.212.243.168', N'176 311 855 176 ', NULL)
INSERT [dbo].[Laboratorian] ([id_laboratorian], [name], [ip], [services], [photo]) VALUES (N'1-00052', N'Vale Goroni', N'93.126.120.134', N'287 287 659  ', NULL)
INSERT [dbo].[Laboratorian] ([id_laboratorian], [name], [ip], [services], [photo]) VALUES (N'1-00053', N'Suki Grafom', N'9.26.5.107', N'797 323 548  ', NULL)
INSERT [dbo].[Laboratorian] ([id_laboratorian], [name], [ip], [services], [photo]) VALUES (N'1-00054', N'Justis Gianneschi', N'139.241.156.87', N'836 543 548 311 ', NULL)
INSERT [dbo].[Laboratorian] ([id_laboratorian], [name], [ip], [services], [photo]) VALUES (N'1-00055', N'Emilie Collett', N'47.0.240.7', N'543 287 258  ', NULL)
INSERT [dbo].[Laboratorian] ([id_laboratorian], [name], [ip], [services], [photo]) VALUES (N'1-00056', N'Byrom Terrell', N'157.21.33.53', N'287 557 543  ', NULL)
INSERT [dbo].[Laboratorian] ([id_laboratorian], [name], [ip], [services], [photo]) VALUES (N'1-00057', N'Daphne Bifield', N'24.185.229.169', N'619 323 855 229 ', NULL)
INSERT [dbo].[Laboratorian] ([id_laboratorian], [name], [ip], [services], [photo]) VALUES (N'1-00058', N'Blanca Staig', N'171.78.28.229', N'176 855   ', NULL)
INSERT [dbo].[Laboratorian] ([id_laboratorian], [name], [ip], [services], [photo]) VALUES (N'1-00059', N'Adriaens Kennsley', N'208.81.128.179', N'836 548   ', NULL)
INSERT [dbo].[Laboratorian] ([id_laboratorian], [name], [ip], [services], [photo]) VALUES (N'1-00060', N'Emlyn Bartak', N'130.247.20.138', N'543    ', NULL)
INSERT [dbo].[Laboratorian] ([id_laboratorian], [name], [ip], [services], [photo]) VALUES (N'1-00061', N'Victoria Willshire', N'243.230.165.161', N'557 287 836 287 ', NULL)
INSERT [dbo].[Laboratorian] ([id_laboratorian], [name], [ip], [services], [photo]) VALUES (N'1-00062', N'Egon Savin', N'40.140.160.210', N'346 258 543 323 176', NULL)
INSERT [dbo].[Laboratorian] ([id_laboratorian], [name], [ip], [services], [photo]) VALUES (N'1-00063', N'Phillie Elsom', N'253.7.8.82', N'323 501 501  ', NULL)
INSERT [dbo].[Laboratorian] ([id_laboratorian], [name], [ip], [services], [photo]) VALUES (N'1-00064', N'Adan Semaine', N'76.252.15.218', N'258    ', NULL)
INSERT [dbo].[Laboratorian] ([id_laboratorian], [name], [ip], [services], [photo]) VALUES (N'1-00065', N'Constantino Northrop', N'119.130.24.85', N'176 229   ', NULL)
INSERT [dbo].[Laboratorian] ([id_laboratorian], [name], [ip], [services], [photo]) VALUES (N'1-00066', N'Rodie Easson', N'212.248.119.232', N'855 287 797  ', NULL)
INSERT [dbo].[Laboratorian] ([id_laboratorian], [name], [ip], [services], [photo]) VALUES (N'1-00067', N'Alida Boleyn', N'181.14.56.184', N'229 323 501 258 415', NULL)
INSERT [dbo].[Laboratorian] ([id_laboratorian], [name], [ip], [services], [photo]) VALUES (N'1-00068', N'Hill Scholfield', N'15.7.205.224', N'619 258 501 287 ', NULL)
INSERT [dbo].[Laboratorian] ([id_laboratorian], [name], [ip], [services], [photo]) VALUES (N'1-00069', N'Cordell Cowpe', N'237.236.173.63', N'346 311 346 176 ', NULL)
INSERT [dbo].[Laboratorian] ([id_laboratorian], [name], [ip], [services], [photo]) VALUES (N'1-00070', N'Alexandro Eldon', N'4.174.11.210', N'836 346 836  ', NULL)
INSERT [dbo].[Laboratorian] ([id_laboratorian], [name], [ip], [services], [photo]) VALUES (N'1-00071', N'Kayle Collin', N'52.19.142.168', N'346    ', NULL)
INSERT [dbo].[Laboratorian] ([id_laboratorian], [name], [ip], [services], [photo]) VALUES (N'1-00072', N'Inesita Larkins', N'3.26.42.188', N'548 258 311 229 ', NULL)
INSERT [dbo].[Laboratorian] ([id_laboratorian], [name], [ip], [services], [photo]) VALUES (N'1-00073', N'Waylin Lound', N'31.243.68.215', N'619 659 346  ', NULL)
INSERT [dbo].[Laboratorian] ([id_laboratorian], [name], [ip], [services], [photo]) VALUES (N'1-00074', N'Mechelle Gillogley', N'79.38.53.53', N'346 176 176 415 415', NULL)
INSERT [dbo].[Laboratorian] ([id_laboratorian], [name], [ip], [services], [photo]) VALUES (N'1-00075', N'Donal Muccino', N'109.138.101.234', N'176 619 287 311 619', NULL)
INSERT [dbo].[Laboratorian] ([id_laboratorian], [name], [ip], [services], [photo]) VALUES (N'1-00076', N'Joye Leadbetter', N'51.245.190.167', N'548 543 548 855 ', NULL)
INSERT [dbo].[Laboratorian] ([id_laboratorian], [name], [ip], [services], [photo]) VALUES (N'1-00077', N'Gianina Trump', N'11.191.37.17', N'258    ', NULL)
INSERT [dbo].[Laboratorian] ([id_laboratorian], [name], [ip], [services], [photo]) VALUES (N'1-00078', N'Read LeEstut', N'119.247.100.162', N'323 287 659 176 ', NULL)
INSERT [dbo].[Laboratorian] ([id_laboratorian], [name], [ip], [services], [photo]) VALUES (N'1-00079', N'Jill Anscott', N'104.85.178.46', N'287    ', NULL)
INSERT [dbo].[Laboratorian] ([id_laboratorian], [name], [ip], [services], [photo]) VALUES (N'1-00080', N'Bud Douch', N'72.132.101.188', N'287    ', NULL)
INSERT [dbo].[Laboratorian] ([id_laboratorian], [name], [ip], [services], [photo]) VALUES (N'1-00081', N'Cicily Ossenna', N'230.85.180.186', N'501 176 176  ', NULL)
INSERT [dbo].[Laboratorian] ([id_laboratorian], [name], [ip], [services], [photo]) VALUES (N'1-00082', N'Hew Izzat', N'143.246.125.169', N'287 501 287 311 ', NULL)
INSERT [dbo].[Laboratorian] ([id_laboratorian], [name], [ip], [services], [photo]) VALUES (N'1-00083', N'Eddie Gimeno', N'60.57.115.125', N'659 543 501 659 548', NULL)
INSERT [dbo].[Laboratorian] ([id_laboratorian], [name], [ip], [services], [photo]) VALUES (N'1-00084', N'Sybyl Fierro', N'250.233.247.215', N'415 323 346 311 ', NULL)
INSERT [dbo].[Laboratorian] ([id_laboratorian], [name], [ip], [services], [photo]) VALUES (N'1-00085', N'Nicol Troup', N'121.7.142.165', N'415 176 836 287 ', NULL)
INSERT [dbo].[Laboratorian] ([id_laboratorian], [name], [ip], [services], [photo]) VALUES (N'1-00086', N'Bondy Pattenden', N'45.121.26.90', N'836 229 346 346 ', NULL)
INSERT [dbo].[Laboratorian] ([id_laboratorian], [name], [ip], [services], [photo]) VALUES (N'1-00087', N'Angus Cockman', N'167.9.255.77', N'323 229 258 258 415', NULL)
INSERT [dbo].[Laboratorian] ([id_laboratorian], [name], [ip], [services], [photo]) VALUES (N'1-00088', N'Mord Hanscome', N'121.181.10.230', N'346 548 548  ', NULL)
INSERT [dbo].[Laboratorian] ([id_laboratorian], [name], [ip], [services], [photo]) VALUES (N'1-00089', N'Susy Leblanc', N'118.164.120.202', N'855 619   ', NULL)
INSERT [dbo].[Laboratorian] ([id_laboratorian], [name], [ip], [services], [photo]) VALUES (N'1-00090', N'Gerard Ciccoloi', N'71.235.27.27', N'548 311 346 311 ', NULL)
INSERT [dbo].[Laboratorian] ([id_laboratorian], [name], [ip], [services], [photo]) VALUES (N'1-00091', N'Seamus Sayburn', N'75.194.92.114', N'557 548 557 323 557', NULL)
INSERT [dbo].[Laboratorian] ([id_laboratorian], [name], [ip], [services], [photo]) VALUES (N'1-00092', N'Washington Gentiry', N'188.49.78.185', N'323 855 229  ', NULL)
INSERT [dbo].[Laboratorian] ([id_laboratorian], [name], [ip], [services], [photo]) VALUES (N'1-00093', N'Rebekkah Westall', N'212.150.81.93', N'501 501 855 797 501', NULL)
INSERT [dbo].[Laboratorian] ([id_laboratorian], [name], [ip], [services], [photo]) VALUES (N'1-00094', N'Court Kulic', N'154.121.193.131', N'323    ', NULL)
INSERT [dbo].[Laboratorian] ([id_laboratorian], [name], [ip], [services], [photo]) VALUES (N'1-00095', N'Lorilee Roux', N'229.187.60.106', N'415 543   ', NULL)
INSERT [dbo].[Laboratorian] ([id_laboratorian], [name], [ip], [services], [photo]) VALUES (N'1-00096', N'Modestine Rolinson', N'9.203.185.188', N'311 855 797 855 ', NULL)
INSERT [dbo].[Laboratorian] ([id_laboratorian], [name], [ip], [services], [photo]) VALUES (N'1-00097', N'Shelbi Ellgood', N'199.226.26.7', N'176 836 346 501 176', NULL)
INSERT [dbo].[Laboratorian] ([id_laboratorian], [name], [ip], [services], [photo]) VALUES (N'1-00098', N'Barbabra Retchless', N'86.66.23.203', N'229 415 258 619 ', NULL)
INSERT [dbo].[Laboratorian] ([id_laboratorian], [name], [ip], [services], [photo]) VALUES (N'1-00099', N'Robinetta Jerzak', N'205.158.144.210', N'659    ', NULL)
INSERT [dbo].[Laboratorian] ([id_laboratorian], [name], [ip], [services], [photo]) VALUES (N'1-00100', N'Vance Boots', N'91.73.40.29', N'548 346 311  ', NULL)
GO
INSERT [dbo].[Laboratorian_services] ([id_laboratorian], [id_services]) VALUES (N'1-00001', 287)
INSERT [dbo].[Laboratorian_services] ([id_laboratorian], [id_services]) VALUES (N'1-00001', 557)
INSERT [dbo].[Laboratorian_services] ([id_laboratorian], [id_services]) VALUES (N'1-00001', 836)
INSERT [dbo].[Laboratorian_services] ([id_laboratorian], [id_services]) VALUES (N'1-00002', 548)
INSERT [dbo].[Laboratorian_services] ([id_laboratorian], [id_services]) VALUES (N'1-00002', 557)
INSERT [dbo].[Laboratorian_services] ([id_laboratorian], [id_services]) VALUES (N'1-00002', 619)
INSERT [dbo].[Laboratorian_services] ([id_laboratorian], [id_services]) VALUES (N'1-00002', 836)
INSERT [dbo].[Laboratorian_services] ([id_laboratorian], [id_services]) VALUES (N'1-00002', 855)
INSERT [dbo].[Laboratorian_services] ([id_laboratorian], [id_services]) VALUES (N'1-00003', 543)
INSERT [dbo].[Laboratorian_services] ([id_laboratorian], [id_services]) VALUES (N'1-00003', 836)
INSERT [dbo].[Laboratorian_services] ([id_laboratorian], [id_services]) VALUES (N'1-00004', 258)
INSERT [dbo].[Laboratorian_services] ([id_laboratorian], [id_services]) VALUES (N'1-00004', 855)
INSERT [dbo].[Laboratorian_services] ([id_laboratorian], [id_services]) VALUES (N'1-00005', 415)
INSERT [dbo].[Laboratorian_services] ([id_laboratorian], [id_services]) VALUES (N'1-00005', 543)
INSERT [dbo].[Laboratorian_services] ([id_laboratorian], [id_services]) VALUES (N'1-00005', 557)
INSERT [dbo].[Laboratorian_services] ([id_laboratorian], [id_services]) VALUES (N'1-00005', 619)
INSERT [dbo].[Laboratorian_services] ([id_laboratorian], [id_services]) VALUES (N'1-00006', 229)
INSERT [dbo].[Laboratorian_services] ([id_laboratorian], [id_services]) VALUES (N'1-00006', 557)
INSERT [dbo].[Laboratorian_services] ([id_laboratorian], [id_services]) VALUES (N'1-00006', 836)
INSERT [dbo].[Laboratorian_services] ([id_laboratorian], [id_services]) VALUES (N'1-00007', 287)
INSERT [dbo].[Laboratorian_services] ([id_laboratorian], [id_services]) VALUES (N'1-00007', 346)
INSERT [dbo].[Laboratorian_services] ([id_laboratorian], [id_services]) VALUES (N'1-00007', 548)
INSERT [dbo].[Laboratorian_services] ([id_laboratorian], [id_services]) VALUES (N'1-00007', 619)
INSERT [dbo].[Laboratorian_services] ([id_laboratorian], [id_services]) VALUES (N'1-00008', 176)
INSERT [dbo].[Laboratorian_services] ([id_laboratorian], [id_services]) VALUES (N'1-00008', 311)
INSERT [dbo].[Laboratorian_services] ([id_laboratorian], [id_services]) VALUES (N'1-00008', 415)
INSERT [dbo].[Laboratorian_services] ([id_laboratorian], [id_services]) VALUES (N'1-00008', 855)
INSERT [dbo].[Laboratorian_services] ([id_laboratorian], [id_services]) VALUES (N'1-00009', 323)
INSERT [dbo].[Laboratorian_services] ([id_laboratorian], [id_services]) VALUES (N'1-00009', 346)
INSERT [dbo].[Laboratorian_services] ([id_laboratorian], [id_services]) VALUES (N'1-00009', 548)
INSERT [dbo].[Laboratorian_services] ([id_laboratorian], [id_services]) VALUES (N'1-00010', 229)
INSERT [dbo].[Laboratorian_services] ([id_laboratorian], [id_services]) VALUES (N'1-00010', 346)
INSERT [dbo].[Laboratorian_services] ([id_laboratorian], [id_services]) VALUES (N'1-00010', 501)
INSERT [dbo].[Laboratorian_services] ([id_laboratorian], [id_services]) VALUES (N'1-00010', 548)
GO
SET IDENTITY_INSERT [dbo].[Roles] ON 

INSERT [dbo].[Roles] ([id_role], [name]) VALUES (1, N'laboratorian')
INSERT [dbo].[Roles] ([id_role], [name]) VALUES (2, N'accountant')
INSERT [dbo].[Roles] ([id_role], [name]) VALUES (3, N'admin')
INSERT [dbo].[Roles] ([id_role], [name]) VALUES (4, N'researcher')
SET IDENTITY_INSERT [dbo].[Roles] OFF
GO
SET IDENTITY_INSERT [dbo].[Services] ON 

INSERT [dbo].[Services] ([id_services], [service], [price], [period_of_execution], [average_deviation]) VALUES (176, N'Билирубин общий', N'102.85', NULL, NULL)
INSERT [dbo].[Services] ([id_services], [service], [price], [period_of_execution], [average_deviation]) VALUES (229, N'СПИД', N'341.78', NULL, NULL)
INSERT [dbo].[Services] ([id_services], [service], [price], [period_of_execution], [average_deviation]) VALUES (258, N'Креатинин', N'143.22', NULL, NULL)
INSERT [dbo].[Services] ([id_services], [service], [price], [period_of_execution], [average_deviation]) VALUES (287, N'Волчаночный антикоагулянт', N'290.11', NULL, NULL)
INSERT [dbo].[Services] ([id_services], [service], [price], [period_of_execution], [average_deviation]) VALUES (311, N'Амилаза', N'361.88', NULL, NULL)
INSERT [dbo].[Services] ([id_services], [service], [price], [period_of_execution], [average_deviation]) VALUES (323, N'Глюкоза', N'447.65', NULL, NULL)
INSERT [dbo].[Services] ([id_services], [service], [price], [period_of_execution], [average_deviation]) VALUES (346, N'Общий белок', N'396.03', NULL, NULL)
INSERT [dbo].[Services] ([id_services], [service], [price], [period_of_execution], [average_deviation]) VALUES (415, N'Кальций общий', N'419.9', NULL, NULL)
INSERT [dbo].[Services] ([id_services], [service], [price], [period_of_execution], [average_deviation]) VALUES (501, N'Гепатит В', N'176.83', NULL, NULL)
INSERT [dbo].[Services] ([id_services], [service], [price], [period_of_execution], [average_deviation]) VALUES (543, N'Гепатит С', N'289.99', NULL, NULL)
INSERT [dbo].[Services] ([id_services], [service], [price], [period_of_execution], [average_deviation]) VALUES (548, N'Альбумин', N'234.09', NULL, NULL)
INSERT [dbo].[Services] ([id_services], [service], [price], [period_of_execution], [average_deviation]) VALUES (557, N'ВИЧ', N'490.77', NULL, NULL)
INSERT [dbo].[Services] ([id_services], [service], [price], [period_of_execution], [average_deviation]) VALUES (619, N'TSH', N'262.71', NULL, NULL)
INSERT [dbo].[Services] ([id_services], [service], [price], [period_of_execution], [average_deviation]) VALUES (659, N'Сифилис RPR', N'443.66', NULL, NULL)
INSERT [dbo].[Services] ([id_services], [service], [price], [period_of_execution], [average_deviation]) VALUES (797, N'АТ и АГ к ВИЧ 1/2', N'370.62', NULL, NULL)
INSERT [dbo].[Services] ([id_services], [service], [price], [period_of_execution], [average_deviation]) VALUES (836, N'Железо', N'105.32', NULL, NULL)
INSERT [dbo].[Services] ([id_services], [service], [price], [period_of_execution], [average_deviation]) VALUES (855, N'Ковид IgM', N'209.78', NULL, NULL)
SET IDENTITY_INSERT [dbo].[Services] OFF
GO
SET IDENTITY_INSERT [dbo].[Session_history] ON 

INSERT [dbo].[Session_history] ([id_session], [id_user], [Date_of_enter], [Duration], [IsSuccess]) VALUES (2, N'1-00001', CAST(N'2024-02-26' AS Date), NULL, 1)
INSERT [dbo].[Session_history] ([id_session], [id_user], [Date_of_enter], [Duration], [IsSuccess]) VALUES (3, N'1-00001', CAST(N'2024-02-28' AS Date), NULL, 1)
INSERT [dbo].[Session_history] ([id_session], [id_user], [Date_of_enter], [Duration], [IsSuccess]) VALUES (4, N'2-00001', CAST(N'2024-02-28' AS Date), NULL, 1)
INSERT [dbo].[Session_history] ([id_session], [id_user], [Date_of_enter], [Duration], [IsSuccess]) VALUES (5, N'3-00001', CAST(N'2024-02-28' AS Date), NULL, 1)
INSERT [dbo].[Session_history] ([id_session], [id_user], [Date_of_enter], [Duration], [IsSuccess]) VALUES (6, N'3-00001', CAST(N'2024-02-28' AS Date), NULL, 1)
SET IDENTITY_INSERT [dbo].[Session_history] OFF
GO
INSERT [dbo].[Users] ([id_user], [id_role], [login], [password]) VALUES (N'1-00001', 1, N'chacking0', N'4tzqHdkqzo4')
INSERT [dbo].[Users] ([id_user], [id_role], [login], [password]) VALUES (N'1-00002', 4, N'nmably1', N'ukM0e6')
INSERT [dbo].[Users] ([id_user], [id_role], [login], [password]) VALUES (N'1-00003', 1, N'frolf2', N'7QpCwac0yi')
INSERT [dbo].[Users] ([id_user], [id_role], [login], [password]) VALUES (N'1-00004', 1, N'lraden3', N'5Ydp2mz')
INSERT [dbo].[Users] ([id_user], [id_role], [login], [password]) VALUES (N'1-00005', 1, N'bfollos4', N'ckmAJPQV')
INSERT [dbo].[Users] ([id_user], [id_role], [login], [password]) VALUES (N'1-00006', 1, N'menterle5', N'0PRom6i')
INSERT [dbo].[Users] ([id_user], [id_role], [login], [password]) VALUES (N'1-00007', 1, N'mpeaker6', N'0Tc5oRc')
INSERT [dbo].[Users] ([id_user], [id_role], [login], [password]) VALUES (N'1-00008', 1, N'mrobichon7', N'LEwEjMlmE5X')
INSERT [dbo].[Users] ([id_user], [id_role], [login], [password]) VALUES (N'1-00009', 1, N'srobken8', N'Cbmj3Yi')
INSERT [dbo].[Users] ([id_user], [id_role], [login], [password]) VALUES (N'1-00010', 1, N'btidmas9', N'dYDHbBQfK')
INSERT [dbo].[Users] ([id_user], [id_role], [login], [password]) VALUES (N'1-00011', 1, N'jfussiea', N'EGxXuLQ9')
INSERT [dbo].[Users] ([id_user], [id_role], [login], [password]) VALUES (N'1-00012', 1, N'santonaccib', N'YcXAhY3Pja')
INSERT [dbo].[Users] ([id_user], [id_role], [login], [password]) VALUES (N'1-00013', 1, N'nbountiffc', N'5xfyjS9ZULGA')
INSERT [dbo].[Users] ([id_user], [id_role], [login], [password]) VALUES (N'1-00014', 1, N'cbenjefieldd', N'tQOsP0ei9TuD')
INSERT [dbo].[Users] ([id_user], [id_role], [login], [password]) VALUES (N'1-00015', 1, N'ocorbyne', N'bG1ZIzwIoU')
INSERT [dbo].[Users] ([id_user], [id_role], [login], [password]) VALUES (N'1-00016', 1, N'cstickinsf', N'QRYADbgNj')
INSERT [dbo].[Users] ([id_user], [id_role], [login], [password]) VALUES (N'1-00017', 1, N'dclarageg', N'Yp59ZIDnWe')
INSERT [dbo].[Users] ([id_user], [id_role], [login], [password]) VALUES (N'1-00018', 1, N'jmccawleyh', N'g58zLcmCYON')
INSERT [dbo].[Users] ([id_user], [id_role], [login], [password]) VALUES (N'1-00019', 1, N'dbandi', N'yFAaYuVW')
INSERT [dbo].[Users] ([id_user], [id_role], [login], [password]) VALUES (N'1-00020', 1, N'abutteryj', N'ttOFbWWGtD')
INSERT [dbo].[Users] ([id_user], [id_role], [login], [password]) VALUES (N'1-00021', 1, N'kkinmank', N'qUr6fdWP6L5G')
INSERT [dbo].[Users] ([id_user], [id_role], [login], [password]) VALUES (N'1-00022', 1, N'sskepperl', N'jHYN0v3')
INSERT [dbo].[Users] ([id_user], [id_role], [login], [password]) VALUES (N'1-00023', 1, N'ayeolandm', N'QQezRBV9')
INSERT [dbo].[Users] ([id_user], [id_role], [login], [password]) VALUES (N'1-00024', 1, N'cspeedingn', N'UCLYITfw2Vo')
INSERT [dbo].[Users] ([id_user], [id_role], [login], [password]) VALUES (N'1-00025', 1, N'ascarisbricko', N'fzBcv6GbyCp')
INSERT [dbo].[Users] ([id_user], [id_role], [login], [password]) VALUES (N'1-00026', 1, N'mthurbyp', N'wg0uIskqei')
INSERT [dbo].[Users] ([id_user], [id_role], [login], [password]) VALUES (N'1-00027', 1, N'croxbroughq', N'67CVVym')
INSERT [dbo].[Users] ([id_user], [id_role], [login], [password]) VALUES (N'1-00028', 1, N'pmccotterr', N'QG5tdzRpGZJ2')
INSERT [dbo].[Users] ([id_user], [id_role], [login], [password]) VALUES (N'1-00029', 1, N'icallejas', N'aeDvZk8o9')
INSERT [dbo].[Users] ([id_user], [id_role], [login], [password]) VALUES (N'1-00030', 1, N'nbroscht', N'DmPJt2')
INSERT [dbo].[Users] ([id_user], [id_role], [login], [password]) VALUES (N'1-00031', 1, N'sallseppu', N't0ko0854Cpvv')
INSERT [dbo].[Users] ([id_user], [id_role], [login], [password]) VALUES (N'1-00032', 1, N'eabbatucciv', N'gUtNdsDu')
INSERT [dbo].[Users] ([id_user], [id_role], [login], [password]) VALUES (N'1-00033', 1, N'sgarnhamw', N'eml6RqbK')
INSERT [dbo].[Users] ([id_user], [id_role], [login], [password]) VALUES (N'1-00034', 1, N'rkitchensidex', N'xaa7miQ7yB')
INSERT [dbo].[Users] ([id_user], [id_role], [login], [password]) VALUES (N'1-00035', 1, N'udiy', N'dHqu78cU6NOP')
INSERT [dbo].[Users] ([id_user], [id_role], [login], [password]) VALUES (N'1-00036', 1, N'mbeidebekez', N'F5T5spAU9A4O')
INSERT [dbo].[Users] ([id_user], [id_role], [login], [password]) VALUES (N'1-00037', 1, N'bsavins10', N'l6sYf29NLN')
INSERT [dbo].[Users] ([id_user], [id_role], [login], [password]) VALUES (N'1-00038', 1, N'sriby11', N'Va34LYqFh')
INSERT [dbo].[Users] ([id_user], [id_role], [login], [password]) VALUES (N'1-00039', 1, N'sbirney12', N'Ggygo2ePsETs')
INSERT [dbo].[Users] ([id_user], [id_role], [login], [password]) VALUES (N'1-00040', 1, N'ikleanthous13', N'3H0GS7a')
INSERT [dbo].[Users] ([id_user], [id_role], [login], [password]) VALUES (N'1-00041', 1, N'mskerme14', N'wy1HWA')
INSERT [dbo].[Users] ([id_user], [id_role], [login], [password]) VALUES (N'1-00042', 1, N'hcahey15', N'NSXcG9khd')
INSERT [dbo].[Users] ([id_user], [id_role], [login], [password]) VALUES (N'1-00043', 1, N'trusling16', N'abol9dYC8e')
INSERT [dbo].[Users] ([id_user], [id_role], [login], [password]) VALUES (N'1-00044', 1, N'jde17', N'gK6Hsl8Q')
INSERT [dbo].[Users] ([id_user], [id_role], [login], [password]) VALUES (N'1-00045', 1, N'fmcleoid18', N'B9zr0N7cJw')
INSERT [dbo].[Users] ([id_user], [id_role], [login], [password]) VALUES (N'1-00046', 1, N'nmegainey19', N'gph7QurFf')
INSERT [dbo].[Users] ([id_user], [id_role], [login], [password]) VALUES (N'1-00047', 1, N'abliven1a', N'vVxlf94KpeX')
INSERT [dbo].[Users] ([id_user], [id_role], [login], [password]) VALUES (N'1-00048', 1, N'mrossoni1b', N'nLXj2lS')
INSERT [dbo].[Users] ([id_user], [id_role], [login], [password]) VALUES (N'1-00049', 1, N'nredington1c', N'DCbOb1SX')
INSERT [dbo].[Users] ([id_user], [id_role], [login], [password]) VALUES (N'1-00050', 1, N'lfrancie1d', N'DoGeHWuAAM')
INSERT [dbo].[Users] ([id_user], [id_role], [login], [password]) VALUES (N'1-00051', 1, N'ablowin1e', N'aQygVtMjN')
INSERT [dbo].[Users] ([id_user], [id_role], [login], [password]) VALUES (N'1-00052', 1, N'vgoroni1f', N'bWr0QU')
INSERT [dbo].[Users] ([id_user], [id_role], [login], [password]) VALUES (N'1-00053', 1, N'sgrafom1g', N'JcNcVDAouYzA')
INSERT [dbo].[Users] ([id_user], [id_role], [login], [password]) VALUES (N'1-00054', 1, N'jgianneschi1h', N'oieX5u3sUfpD')
INSERT [dbo].[Users] ([id_user], [id_role], [login], [password]) VALUES (N'1-00055', 1, N'ecollett1i', N'Y0uMyKB0W')
INSERT [dbo].[Users] ([id_user], [id_role], [login], [password]) VALUES (N'1-00056', 1, N'bterrell1j', N'hswseW')
INSERT [dbo].[Users] ([id_user], [id_role], [login], [password]) VALUES (N'1-00057', 1, N'dbifield1k', N'oYAQ4URihIA')
INSERT [dbo].[Users] ([id_user], [id_role], [login], [password]) VALUES (N'1-00058', 1, N'bstaig1l', N'MygqEtjMtUbC')
INSERT [dbo].[Users] ([id_user], [id_role], [login], [password]) VALUES (N'1-00059', 1, N'akennsley1m', N'CTUdBfJsy6qF')
INSERT [dbo].[Users] ([id_user], [id_role], [login], [password]) VALUES (N'1-00060', 1, N'ebartak1n', N'y3t4H1')
INSERT [dbo].[Users] ([id_user], [id_role], [login], [password]) VALUES (N'1-00061', 1, N'vwillshire1o', N'VFSLc2t')
INSERT [dbo].[Users] ([id_user], [id_role], [login], [password]) VALUES (N'1-00062', 1, N'esavin1p', N'axnJY9s')
INSERT [dbo].[Users] ([id_user], [id_role], [login], [password]) VALUES (N'1-00063', 1, N'pelsom1q', N'OXzMECG')
INSERT [dbo].[Users] ([id_user], [id_role], [login], [password]) VALUES (N'1-00064', 1, N'asemaine1r', N'MdJRkHor5SP')
INSERT [dbo].[Users] ([id_user], [id_role], [login], [password]) VALUES (N'1-00065', 1, N'cnorthrop1s', N'UIwCvTA7MRS0')
INSERT [dbo].[Users] ([id_user], [id_role], [login], [password]) VALUES (N'1-00066', 1, N'reasson1t', N'3J0jgg9RWlXs')
INSERT [dbo].[Users] ([id_user], [id_role], [login], [password]) VALUES (N'1-00067', 1, N'aboleyn1u', N'3q2mQdDRmtr')
INSERT [dbo].[Users] ([id_user], [id_role], [login], [password]) VALUES (N'1-00068', 1, N'hscholfield1v', N'1Pbs3K6qXYB')
INSERT [dbo].[Users] ([id_user], [id_role], [login], [password]) VALUES (N'1-00069', 1, N'ccowpe1w', N'VHr417Ft0')
INSERT [dbo].[Users] ([id_user], [id_role], [login], [password]) VALUES (N'1-00070', 1, N'aeldon1x', N'rrywOQRmFKyh')
INSERT [dbo].[Users] ([id_user], [id_role], [login], [password]) VALUES (N'1-00071', 1, N'kcollin1y', N'Q0ZV21vew0')
INSERT [dbo].[Users] ([id_user], [id_role], [login], [password]) VALUES (N'1-00072', 1, N'ilarkins1z', N'DEFNpHtU')
INSERT [dbo].[Users] ([id_user], [id_role], [login], [password]) VALUES (N'1-00073', 1, N'wlound20', N'a2G4Ihh2o')
INSERT [dbo].[Users] ([id_user], [id_role], [login], [password]) VALUES (N'1-00074', 1, N'mgillogley21', N'EjUHfCUFqF')
INSERT [dbo].[Users] ([id_user], [id_role], [login], [password]) VALUES (N'1-00075', 1, N'dmuccino22', N'E4okVgx')
INSERT [dbo].[Users] ([id_user], [id_role], [login], [password]) VALUES (N'1-00076', 1, N'jleadbetter23', N'ZNsaKdgb')
INSERT [dbo].[Users] ([id_user], [id_role], [login], [password]) VALUES (N'1-00077', 1, N'gtrump24', N'6XXY7IS26Ci')
INSERT [dbo].[Users] ([id_user], [id_role], [login], [password]) VALUES (N'1-00078', 1, N'rleestut25', N'zq3C4rUR')
INSERT [dbo].[Users] ([id_user], [id_role], [login], [password]) VALUES (N'1-00079', 1, N'janscott26', N'5maCRrCZLu')
INSERT [dbo].[Users] ([id_user], [id_role], [login], [password]) VALUES (N'1-00080', 1, N'bdouch27', N'KAkwrli')
INSERT [dbo].[Users] ([id_user], [id_role], [login], [password]) VALUES (N'1-00081', 1, N'cossenna28', N'vfKJkCeohOzZ')
INSERT [dbo].[Users] ([id_user], [id_role], [login], [password]) VALUES (N'1-00082', 1, N'hizzat29', N'Uifdtu')
INSERT [dbo].[Users] ([id_user], [id_role], [login], [password]) VALUES (N'1-00083', 1, N'egimeno2a', N'oF1hbmKlZ')
INSERT [dbo].[Users] ([id_user], [id_role], [login], [password]) VALUES (N'1-00084', 1, N'sfierro2b', N'VjUrQ2')
INSERT [dbo].[Users] ([id_user], [id_role], [login], [password]) VALUES (N'1-00085', 1, N'ntroup2c', N'KmDDYf1Pu')
INSERT [dbo].[Users] ([id_user], [id_role], [login], [password]) VALUES (N'1-00086', 1, N'bpattenden2d', N'IOUkHpOn')
INSERT [dbo].[Users] ([id_user], [id_role], [login], [password]) VALUES (N'1-00087', 1, N'acockman2e', N'fDKhK7OK')
INSERT [dbo].[Users] ([id_user], [id_role], [login], [password]) VALUES (N'1-00088', 1, N'mhanscome2f', N'xBHzpa7eP0u')
INSERT [dbo].[Users] ([id_user], [id_role], [login], [password]) VALUES (N'1-00089', 1, N'sleblanc2g', N'T2et1U5M')
INSERT [dbo].[Users] ([id_user], [id_role], [login], [password]) VALUES (N'1-00090', 1, N'gciccoloi2h', N'w4dZ3hxiCiAg')
INSERT [dbo].[Users] ([id_user], [id_role], [login], [password]) VALUES (N'1-00091', 1, N'ssayburn2i', N'1hTM7EVKaS')
INSERT [dbo].[Users] ([id_user], [id_role], [login], [password]) VALUES (N'1-00092', 1, N'wgentiry2j', N'z2X9UH5')
INSERT [dbo].[Users] ([id_user], [id_role], [login], [password]) VALUES (N'1-00093', 1, N'rwestall2k', N'xLgunbO9x6')
INSERT [dbo].[Users] ([id_user], [id_role], [login], [password]) VALUES (N'1-00094', 1, N'ckulic2l', N'FLHYRN')
INSERT [dbo].[Users] ([id_user], [id_role], [login], [password]) VALUES (N'1-00095', 1, N'lroux2m', N'98cCxHeeK31')
INSERT [dbo].[Users] ([id_user], [id_role], [login], [password]) VALUES (N'1-00096', 1, N'mrolinson2n', N'faGzyW8hEca')
INSERT [dbo].[Users] ([id_user], [id_role], [login], [password]) VALUES (N'1-00097', 1, N'sellgood2o', N'3do5MME')
INSERT [dbo].[Users] ([id_user], [id_role], [login], [password]) VALUES (N'1-00098', 1, N'bretchless2p', N'WraGihh')
INSERT [dbo].[Users] ([id_user], [id_role], [login], [password]) VALUES (N'1-00099', 1, N'rjerzak2q', N'hAp8jki')
INSERT [dbo].[Users] ([id_user], [id_role], [login], [password]) VALUES (N'1-00100', 1, N'vboots2r', N'bgJfSDEVEQm6')
GO
INSERT [dbo].[Users] ([id_user], [id_role], [login], [password]) VALUES (N'2-00001', 2, N'testAccont', N'TA1')
INSERT [dbo].[Users] ([id_user], [id_role], [login], [password]) VALUES (N'3-00001', 3, N'Adm', N'test1')
GO
ALTER TABLE [dbo].[Accont_insurance]  WITH CHECK ADD  CONSTRAINT [FK_Accont_insurance_Accountants] FOREIGN KEY([id_accountant])
REFERENCES [dbo].[Accountants] ([id_accountant])
GO
ALTER TABLE [dbo].[Accont_insurance] CHECK CONSTRAINT [FK_Accont_insurance_Accountants]
GO
ALTER TABLE [dbo].[Accont_insurance]  WITH CHECK ADD  CONSTRAINT [FK_Accont_insurance_Insurance_company] FOREIGN KEY([id_insurance_company])
REFERENCES [dbo].[Insurance_company] ([id_insurance_company])
GO
ALTER TABLE [dbo].[Accont_insurance] CHECK CONSTRAINT [FK_Accont_insurance_Insurance_company]
GO
ALTER TABLE [dbo].[Accountants]  WITH CHECK ADD  CONSTRAINT [FK_Accountants_Users] FOREIGN KEY([id_accountant])
REFERENCES [dbo].[Users] ([id_user])
GO
ALTER TABLE [dbo].[Accountants] CHECK CONSTRAINT [FK_Accountants_Users]
GO
ALTER TABLE [dbo].[Admins]  WITH CHECK ADD  CONSTRAINT [FK_Admins_Users] FOREIGN KEY([id_admin])
REFERENCES [dbo].[Users] ([id_user])
GO
ALTER TABLE [dbo].[Admins] CHECK CONSTRAINT [FK_Admins_Users]
GO
ALTER TABLE [dbo].[History_of_analyzers]  WITH CHECK ADD  CONSTRAINT [FK_History_of_analyzers_Analyzer1] FOREIGN KEY([id_analyzer])
REFERENCES [dbo].[Analyzer] ([id_analyzer])
GO
ALTER TABLE [dbo].[History_of_analyzers] CHECK CONSTRAINT [FK_History_of_analyzers_Analyzer1]
GO
ALTER TABLE [dbo].[Laboratorian]  WITH CHECK ADD  CONSTRAINT [FK_Laboratorian_Users] FOREIGN KEY([id_laboratorian])
REFERENCES [dbo].[Users] ([id_user])
GO
ALTER TABLE [dbo].[Laboratorian] CHECK CONSTRAINT [FK_Laboratorian_Users]
GO
ALTER TABLE [dbo].[Laboratorian_services]  WITH CHECK ADD  CONSTRAINT [FK_Laboratorian_services_Laboratorian] FOREIGN KEY([id_laboratorian])
REFERENCES [dbo].[Laboratorian] ([id_laboratorian])
GO
ALTER TABLE [dbo].[Laboratorian_services] CHECK CONSTRAINT [FK_Laboratorian_services_Laboratorian]
GO
ALTER TABLE [dbo].[Laboratorian_services]  WITH CHECK ADD  CONSTRAINT [FK_Laboratorian_services_Services1] FOREIGN KEY([id_services])
REFERENCES [dbo].[Services] ([id_services])
GO
ALTER TABLE [dbo].[Laboratorian_services] CHECK CONSTRAINT [FK_Laboratorian_services_Services1]
GO
ALTER TABLE [dbo].[Package_of_services]  WITH CHECK ADD  CONSTRAINT [FK_Package_of_services_Order] FOREIGN KEY([id_order])
REFERENCES [dbo].[Order] ([id_order])
GO
ALTER TABLE [dbo].[Package_of_services] CHECK CONSTRAINT [FK_Package_of_services_Order]
GO
ALTER TABLE [dbo].[Package_of_services]  WITH CHECK ADD  CONSTRAINT [FK_Package_of_services_Services] FOREIGN KEY([id_services])
REFERENCES [dbo].[Services] ([id_services])
GO
ALTER TABLE [dbo].[Package_of_services] CHECK CONSTRAINT [FK_Package_of_services_Services]
GO
ALTER TABLE [dbo].[Patient]  WITH CHECK ADD  CONSTRAINT [FK_Patient_Insurance_company] FOREIGN KEY([id_insurance_company])
REFERENCES [dbo].[Insurance_company] ([id_insurance_company])
GO
ALTER TABLE [dbo].[Patient] CHECK CONSTRAINT [FK_Patient_Insurance_company]
GO
ALTER TABLE [dbo].[Patient_order]  WITH CHECK ADD  CONSTRAINT [FK_Patient_order_Order] FOREIGN KEY([id_order])
REFERENCES [dbo].[Order] ([id_order])
GO
ALTER TABLE [dbo].[Patient_order] CHECK CONSTRAINT [FK_Patient_order_Order]
GO
ALTER TABLE [dbo].[Patient_order]  WITH CHECK ADD  CONSTRAINT [FK_Patient_order_Patient] FOREIGN KEY([id_patient])
REFERENCES [dbo].[Patient] ([id_patient])
GO
ALTER TABLE [dbo].[Patient_order] CHECK CONSTRAINT [FK_Patient_order_Patient]
GO
ALTER TABLE [dbo].[Services_rendered]  WITH CHECK ADD  CONSTRAINT [FK_Services_rendered_Analyzer] FOREIGN KEY([id_analyzer])
REFERENCES [dbo].[Analyzer] ([id_analyzer])
GO
ALTER TABLE [dbo].[Services_rendered] CHECK CONSTRAINT [FK_Services_rendered_Analyzer]
GO
ALTER TABLE [dbo].[Services_rendered]  WITH CHECK ADD  CONSTRAINT [FK_Services_rendered_Laboratorian] FOREIGN KEY([id_laboratorian])
REFERENCES [dbo].[Laboratorian] ([id_laboratorian])
GO
ALTER TABLE [dbo].[Services_rendered] CHECK CONSTRAINT [FK_Services_rendered_Laboratorian]
GO
ALTER TABLE [dbo].[Services_rendered]  WITH CHECK ADD  CONSTRAINT [FK_Services_rendered_Services] FOREIGN KEY([id_services])
REFERENCES [dbo].[Services] ([id_services])
GO
ALTER TABLE [dbo].[Services_rendered] CHECK CONSTRAINT [FK_Services_rendered_Services]
GO
ALTER TABLE [dbo].[Session_history]  WITH CHECK ADD  CONSTRAINT [FK_Session_history_Users] FOREIGN KEY([id_user])
REFERENCES [dbo].[Users] ([id_user])
GO
ALTER TABLE [dbo].[Session_history] CHECK CONSTRAINT [FK_Session_history_Users]
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [FK_Users_Roles] FOREIGN KEY([id_role])
REFERENCES [dbo].[Roles] ([id_role])
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [FK_Users_Roles]
GO
USE [master]
GO
ALTER DATABASE [Med_lab_20] SET  READ_WRITE 
GO
