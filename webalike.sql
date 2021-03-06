USE [master]
GO
/****** Object:  Database [webalike]    Script Date: 05/27/2013 20:29:47 ******/
CREATE DATABASE [webalike] ON  PRIMARY 
( NAME = N'webalike', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\webalike.mdf' )
 LOG ON 
( NAME = N'webalike_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\webalike_log.ldf' )
GO
ALTER DATABASE [webalike] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [webalike].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [webalike] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [webalike] SET ANSI_NULLS OFF
GO
ALTER DATABASE [webalike] SET ANSI_PADDING OFF
GO
ALTER DATABASE [webalike] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [webalike] SET ARITHABORT OFF
GO
ALTER DATABASE [webalike] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [webalike] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [webalike] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [webalike] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [webalike] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [webalike] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [webalike] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [webalike] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [webalike] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [webalike] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [webalike] SET  DISABLE_BROKER
GO
ALTER DATABASE [webalike] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [webalike] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [webalike] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [webalike] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [webalike] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [webalike] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [webalike] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [webalike] SET  READ_WRITE
GO
ALTER DATABASE [webalike] SET RECOVERY FULL
GO
ALTER DATABASE [webalike] SET  MULTI_USER
GO
ALTER DATABASE [webalike] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [webalike] SET DB_CHAINING OFF
GO
USE [webalike]
GO
/****** Object:  User [webalike_user]    Script Date: 05/27/2013 20:29:48 ******/
CREATE USER [webalike_user] FOR LOGIN [webalike_user] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  Table [dbo].[Article]    Script Date: 05/27/2013 20:29:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Article](
	[ArticleId] [int] IDENTITY(1,1) NOT NULL,
	[Headline] [varchar](128) NOT NULL,
	[Synopsis] [varchar](512) NOT NULL,
	[LinkUrl] [varchar](256) NOT NULL,
	[PostedAtUtc] [datetime] NOT NULL,
 CONSTRAINT [PK_Article] PRIMARY KEY CLUSTERED 
(
	[ArticleId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Uniquely identifies this article in the Article table.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Article', @level2type=N'COLUMN',@level2name=N'ArticleId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The main headline for this article.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Article', @level2type=N'COLUMN',@level2name=N'Headline'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A short summary describing what''s in this article' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Article', @level2type=N'COLUMN',@level2name=N'Synopsis'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The full absolute URL of the article we''re linking to.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Article', @level2type=N'COLUMN',@level2name=N'LinkUrl'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The UTC date/time when this article was posted.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Article', @level2type=N'COLUMN',@level2name=N'PostedAtUtc'
GO
SET IDENTITY_INSERT [dbo].[Article] ON
INSERT [dbo].[Article] ([ArticleId], [Headline], [Synopsis], [LinkUrl], [PostedAtUtc]) VALUES (1, N'Progressive .NET Tutorials Return To SkillsMatter!', N'The Progressive .NET Tutorials are a deep-dive, the antidote to the traditional conference format where speakers have too little time to explain complex ideas or provide any depth of understanding. Over the course of 3 days, the Progressive .NET Tutorials offer a dozen four-hour sessions, allowing the speaker time to explore a topic in depth. ', N'http://skillsmatter.com/event/open-source-dot-net/progressive-dot-net-tutorials-may-2013', CAST(0x0000A1CB01292420 AS DateTime))
INSERT [dbo].[Article] ([ArticleId], [Headline], [Synopsis], [LinkUrl], [PostedAtUtc]) VALUES (2, N'Conspiracy Theorist Convinces Neil Armstrong Moon Landing Was Faked', N'LEBANON, OHIO—Apollo 11 mission commander and famed astronaut Neil Armstrong shocked reporters at a press conference Monday, announcing he had been convinced that his historic first step on the moon was part of an elaborate hoax orchestrated by the United States government.', N'http://www.theonion.com/articles/conspiracy-theorist-convinces-neil-armstrong-moon,2796/', CAST(0x0000A1CB01299DF5 AS DateTime))
INSERT [dbo].[Article] ([ArticleId], [Headline], [Synopsis], [LinkUrl], [PostedAtUtc]) VALUES (3, N'Cat Jumps In Many Boxes!', N'Maru cat jumps in many boxes.', N'http://www.youtube.com/watch?list=UURVruzlQF5cqpw9jQgIgNdw&feature=player_detailpage&v=BCZ-pIcImIc', CAST(0x0000A1CB012A0E06 AS DateTime))
SET IDENTITY_INSERT [dbo].[Article] OFF
/****** Object:  Default [DF_Article_PostedAtUtc]    Script Date: 05/27/2013 20:29:50 ******/
ALTER TABLE [dbo].[Article] ADD  CONSTRAINT [DF_Article_PostedAtUtc]  DEFAULT (getutcdate()) FOR [PostedAtUtc]
GO
