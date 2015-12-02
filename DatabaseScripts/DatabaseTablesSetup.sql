--*************Step1 - run this to create database  *************

	USE MASTER
	GO
	CREATE DATABASE HealthBLogDB

--*************************************************

--*************Step2 - run this to create database  *************

	-- Launch index page from MVC project, register an account
	-- to create Identity tables

--*************************************************

--*************Step 3 - run this to drop table if they existing before step 4 *************

	 USE HealthBlogDB
	 GO

	 DROP TABLE PostsXHash
	 DROP TABLE Posts
	 DROP TABLE Categories
	 DROP TABLE HashTags 

	 GO

--*************Step 4 - run this to create remaining tables  *************
USE HealthBlogDB
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


CREATE TABLE Posts
(
	PostID			int IDENTITY (1,1)	NOT NULL	PRIMARY KEY,
	CategoryID		int					NOT NULL,
	UserID			nvarchar(128)		NOT NULL,	
	Title			nvarchar(200)		NOT NULL,
	CoverImgURL		nvarchar(2000)		NOT NULL,
	Body			nvarchar(MAX)		NOT NULL,
	DateCreated		datetime			NOT NULL,
	DatePublished	datetime,
	HasSchedule		bit,
	StartDate		datetime,
	EndDate			datetime,
	IsActive		bit					NOT NULL,

	CONSTRAINT FK_CategoryID	FOREIGN KEY (CategoryID)	REFERENCES	Categories	(CategoryID),
	CONSTRAINT FK_UserID		FOREIGN KEY (UserID)		REFERENCES	AspNetUsers (Id)	
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


CREATE TABLE StaticPage
(
	StaticPageID	int IDENTITY (1,1)	NOT NULL	PRIMARY KEY,
	ButtonName		nvarchar(50)		NOT NULL,
	UserID			nvarchar(128)		NOT NULL,		
	Body			nvarchar(MAX)		NOT NULL,
	DateCreated		datetime			NOT NULL,
	DatePublished	datetime,
	IsActive		bit					NOT NULL,

	CONSTRAINT FK_UserIDStatic		FOREIGN KEY (UserID)		REFERENCES	AspNetUsers (Id)	
) 
GO



