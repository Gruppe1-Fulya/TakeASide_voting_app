USE [master]
GO
/****** Object:  Database [SqlTakeASideDB]    Script Date: 1.06.2023 19:39:37 ******/
CREATE DATABASE [SqlTakeASideDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'SqlTakeASideDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\SqlTakeASideDB.mdf' , SIZE = 20480KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'SqlTakeASideDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\SqlTakeASideDB_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [SqlTakeASideDB] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [SqlTakeASideDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [SqlTakeASideDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [SqlTakeASideDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [SqlTakeASideDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [SqlTakeASideDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [SqlTakeASideDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [SqlTakeASideDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [SqlTakeASideDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [SqlTakeASideDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [SqlTakeASideDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [SqlTakeASideDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [SqlTakeASideDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [SqlTakeASideDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [SqlTakeASideDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [SqlTakeASideDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [SqlTakeASideDB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [SqlTakeASideDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [SqlTakeASideDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [SqlTakeASideDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [SqlTakeASideDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [SqlTakeASideDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [SqlTakeASideDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [SqlTakeASideDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [SqlTakeASideDB] SET RECOVERY FULL 
GO
ALTER DATABASE [SqlTakeASideDB] SET  MULTI_USER 
GO
ALTER DATABASE [SqlTakeASideDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [SqlTakeASideDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [SqlTakeASideDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [SqlTakeASideDB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [SqlTakeASideDB] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [SqlTakeASideDB] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'SqlTakeASideDB', N'ON'
GO
ALTER DATABASE [SqlTakeASideDB] SET QUERY_STORE = ON
GO
ALTER DATABASE [SqlTakeASideDB] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [SqlTakeASideDB]
GO
/****** Object:  Table [dbo].[Actors]    Script Date: 1.06.2023 19:39:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Actors](
	[actor_id] [smallint] IDENTITY(1,1) NOT NULL,
	[actor] [nvarchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[actor_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Books]    Script Date: 1.06.2023 19:39:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Books](
	[book_id] [smallint] IDENTITY(1,1) NOT NULL,
	[b_name] [nvarchar](50) NOT NULL,
	[release_year] [smallint] NOT NULL,
	[autor] [nvarchar](50) NOT NULL,
	[page_number] [smallint] NOT NULL,
	[publisher] [nvarchar](50) NOT NULL,
	[vote_rate] [float] NOT NULL,
	[genre_id] [tinyint] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[book_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ex_types]    Script Date: 1.06.2023 19:39:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ex_types](
	[ex_type_id] [tinyint] IDENTITY(1,1) NOT NULL,
	[ex_type] [nvarchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ex_type_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Games]    Script Date: 1.06.2023 19:39:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Games](
	[game_id] [smallint] IDENTITY(1,1) NOT NULL,
	[g_name] [nvarchar](50) NOT NULL,
	[release_year] [smallint] NOT NULL,
	[developer] [nvarchar](50) NOT NULL,
	[duration] [smallint] NOT NULL,
	[vote_rate] [float] NOT NULL,
	[genre_id] [tinyint] NOT NULL,
	[ex_type_id] [tinyint] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[game_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Genres]    Script Date: 1.06.2023 19:39:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Genres](
	[genre_id] [tinyint] IDENTITY(1,1) NOT NULL,
	[genre] [nvarchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[genre_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Movies]    Script Date: 1.06.2023 19:39:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Movies](
	[movie_id] [smallint] IDENTITY(1,1) NOT NULL,
	[m_name] [nvarchar](50) NOT NULL,
	[release_year] [smallint] NOT NULL,
	[director] [nvarchar](50) NOT NULL,
	[scenarist_id] [tinyint] NOT NULL,
	[producer] [nvarchar](50) NOT NULL,
	[vote_rate] [float] NOT NULL,
	[genre_id] [tinyint] NOT NULL,
	[actor_id] [smallint] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[movie_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Scenarists]    Script Date: 1.06.2023 19:39:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Scenarists](
	[scenarist_id] [tinyint] IDENTITY(1,1) NOT NULL,
	[scenarist] [nvarchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[scenarist_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 1.06.2023 19:39:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[email] [nvarchar](20) NOT NULL,
	[first_name] [nvarchar](20) NOT NULL,
	[last_name] [nvarchar](20) NOT NULL,
	[gender] [bit] NOT NULL,
	[age] [tinyint] NOT NULL,
	[u_password] [varchar](10) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VoteBook]    Script Date: 1.06.2023 19:39:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VoteBook](
	[book_id] [smallint] NOT NULL,
	[email] [nvarchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[book_id] ASC,
	[email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VoteGame]    Script Date: 1.06.2023 19:39:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VoteGame](
	[game_id] [smallint] NOT NULL,
	[email] [nvarchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[game_id] ASC,
	[email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VoteMovie]    Script Date: 1.06.2023 19:39:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VoteMovie](
	[movie_id] [smallint] NOT NULL,
	[email] [nvarchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[movie_id] ASC,
	[email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[WebMaster]    Script Date: 1.06.2023 19:39:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WebMaster](
	[id] [varchar](13) NOT NULL,
	[first_name] [nvarchar](20) NOT NULL,
	[last_name] [nvarchar](20) NOT NULL,
	[gender] [bit] NOT NULL,
	[tNo] [varchar](10) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Books]  WITH CHECK ADD FOREIGN KEY([genre_id])
REFERENCES [dbo].[Genres] ([genre_id])
GO
ALTER TABLE [dbo].[Games]  WITH CHECK ADD FOREIGN KEY([ex_type_id])
REFERENCES [dbo].[Ex_types] ([ex_type_id])
GO
ALTER TABLE [dbo].[Games]  WITH CHECK ADD FOREIGN KEY([genre_id])
REFERENCES [dbo].[Genres] ([genre_id])
GO
ALTER TABLE [dbo].[Movies]  WITH CHECK ADD FOREIGN KEY([actor_id])
REFERENCES [dbo].[Actors] ([actor_id])
GO
ALTER TABLE [dbo].[Movies]  WITH CHECK ADD FOREIGN KEY([genre_id])
REFERENCES [dbo].[Genres] ([genre_id])
GO
ALTER TABLE [dbo].[Movies]  WITH CHECK ADD FOREIGN KEY([scenarist_id])
REFERENCES [dbo].[Scenarists] ([scenarist_id])
GO
ALTER TABLE [dbo].[VoteBook]  WITH CHECK ADD FOREIGN KEY([book_id])
REFERENCES [dbo].[Books] ([book_id])
GO
ALTER TABLE [dbo].[VoteBook]  WITH CHECK ADD FOREIGN KEY([email])
REFERENCES [dbo].[Users] ([email])
GO
ALTER TABLE [dbo].[VoteGame]  WITH CHECK ADD FOREIGN KEY([email])
REFERENCES [dbo].[Users] ([email])
GO
ALTER TABLE [dbo].[VoteGame]  WITH CHECK ADD FOREIGN KEY([game_id])
REFERENCES [dbo].[Games] ([game_id])
GO
ALTER TABLE [dbo].[VoteMovie]  WITH CHECK ADD FOREIGN KEY([email])
REFERENCES [dbo].[Users] ([email])
GO
ALTER TABLE [dbo].[VoteMovie]  WITH CHECK ADD FOREIGN KEY([movie_id])
REFERENCES [dbo].[Movies] ([movie_id])
GO
USE [master]
GO
ALTER DATABASE [SqlTakeASideDB] SET  READ_WRITE 
GO
