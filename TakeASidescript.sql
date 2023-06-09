USE [TakeASide]
GO
/****** Object:  Table [dbo].[Books]    Script Date: 20.06.2023 17:59:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Books](
	[book_id] [smallint] IDENTITY(1,1) NOT NULL,
	[b_name] [nvarchar](50) NOT NULL,
	[release_year] [smallint] NOT NULL,
	[autor] [nvarchar](20) NOT NULL,
	[page_number] [smallint] NOT NULL,
	[publisher] [nvarchar](20) NOT NULL,
	[vote_rate] [float] NULL,
	[genre] [nvarchar](20) NOT NULL,
	[liked] [int] NULL,
	[total_vote] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[book_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Games]    Script Date: 20.06.2023 17:59:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Games](
	[game_id] [smallint] IDENTITY(1,1) NOT NULL,
	[g_name] [nvarchar](50) NOT NULL,
	[release_year] [smallint] NOT NULL,
	[developer] [nvarchar](20) NOT NULL,
	[duration] [smallint] NOT NULL,
	[vote_rate] [float] NULL,
	[genre] [nvarchar](20) NOT NULL,
	[ex_type] [nvarchar](20) NOT NULL,
	[liked] [int] NULL,
	[total_vote] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[game_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Movies]    Script Date: 20.06.2023 17:59:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Movies](
	[movie_id] [smallint] IDENTITY(1,1) NOT NULL,
	[m_name] [nvarchar](50) NOT NULL,
	[release_year] [smallint] NOT NULL,
	[director] [nvarchar](20) NOT NULL,
	[scenarist] [nvarchar](20) NOT NULL,
	[producer] [nvarchar](20) NOT NULL,
	[vote_rate] [float] NULL,
	[genre] [nvarchar](20) NOT NULL,
	[actor] [nvarchar](150) NOT NULL,
	[liked] [int] NULL,
	[total_vote] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[movie_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 20.06.2023 17:59:13 ******/
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
/****** Object:  Table [dbo].[VoteBook]    Script Date: 20.06.2023 17:59:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VoteBook](
	[book_id] [smallint] NOT NULL,
	[email] [nvarchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[email] ASC,
	[book_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VoteGame]    Script Date: 20.06.2023 17:59:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VoteGame](
	[game_id] [smallint] NOT NULL,
	[email] [nvarchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[email] ASC,
	[game_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VoteMovie]    Script Date: 20.06.2023 17:59:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VoteMovie](
	[movie_id] [smallint] NOT NULL,
	[email] [nvarchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[email] ASC,
	[movie_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[WebMaster]    Script Date: 20.06.2023 17:59:13 ******/
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
