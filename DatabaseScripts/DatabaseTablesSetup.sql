--*************Uncomment to drop table *************
	 --USE MASTER
	 --GO
	 --DROP DATABASE HealthBlogDB
	 --GO
-- *************************************************

USE MASTER
GO
CREATE DATABASE HealthBLogDB

USE HealthBlogDB
GO



CREATE TABLE Posts
(
	PostID			int IDENTITY (1,1)	NOT NULL	PRIMARY KEY,
	CategoryID		int					NOT NULL,
	UserID			nvarchar(128)		NOT NULL,	
	Title			nvarchar(200)		NOT NULL,
	CoverImgURL		nvarchar(2000)		NOT NULL,
	Body			nvarchar(MAX)		NOT NULL,
	DateCreated		datetime			NOT NULL,
	DatePublished	datetime			NOT NULL,
	HasSchedule		bit					NOT NULL,
	StartDate		datetime,
	EndDate			datetime,
	IsActive		bit					NOT NULL,

	CONSTRAINT FK_CategoryID	FOREIGN KEY (CategoryID)	REFERENCES	Categories	(CategoryID),
	CONSTRAINT FK_UserID		FOREIGN KEY (UserID)		REFERENCES	AspNetUsers (Id)	
) 
GO



CREATE TABLE Categories
(
	CategoryID		int IDENTITY(1,1)	NOT NULL	PRIMARY KEY,
	CategoryName	nvarchar(100)		NOT NULL
)
GO



CREATE TABLE HashTags
(
	TagID		int	IDENTITY(1,1)	NOT NULL	PRIMARY KEY,
	TagName		nvarchar(1000)		NOT NULL
)	
GO



CREATE TABLE PostsXHash
(
	PostsXHashID	int IDENTITY(1,1)	NOT NULL,
	PostID			int					NOT NULL,
	TagID			int					NOT NULL,
	ActualHashTag	nvarchar(1000)		NOT NULL,

	CONSTRAINT FK_PostID	FOREIGN KEY (PostID)	REFERENCES Posts	(PostID),
	CONSTRAINT FK_TagID		FOREIGN KEY (TagID)		REFERENCES HashTags	(TagID)
)
GO




