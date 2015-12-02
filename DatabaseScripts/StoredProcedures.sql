------------------------------------------------------
USE HealthBlogDB
------------------------------------------------------

CREATE PROCEDURE AddPost
(
	@CategoryID		int,
	@UserID			nvarchar(128),
	@Title			nvarchar(200),
	@CoverImgURL	nvarchar(2000),
	@Body			nvarchar(MAX),
	@DateCreated	datetime,
	@HasSchedule	bit,
	@StartDate		datetime,
	@EndDate		datetime,	
	@IsActive		bit,

	@PostID			int output
)

AS BEGIN

INSERT INTO Posts
(
	CategoryID,
	UserID,
	Title,
	CoverImgURL,
	Body,
	DateCreated,
	HasSchedule,
	StartDate,
	EndDate,
	IsActive
)
VALUES
(
	@CategoryID,
	@UserID,
	@Title,
	@CoverImgURL,
	@Body,
	GETDATE(),
	@HasSchedule,
	@StartDate,
	@EndDate,
	@IsActive
)

SET @PostID = SCOPE_IDENTITY();

END 
GO 


CREATE PROCEDURE AddStaticPage
(
	@ButtonName		nvarchar(50),
	@UserID			nvarchar(128),
	@Body			nvarchar(MAX),
	@DateCreated	datetime,
	@IsActive		bit,
	
	@StaticPageID	int output
)

AS BEGIN

INSERT INTO StaticPage
(
	ButtonName,
	UserId,
	Body,
	DateCreated,
	IsActive
)
VALUES
(
	@ButtonName,
	@UserID,
	@Body,
	GetDate(),
	@IsActive
)

SET @StaticPageID = SCOPE_IDENTITY();

END
GO