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
	1
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
	1
)

SET @StaticPageID = SCOPE_IDENTITY();

END
GO


CREATE PROCEDURE PublishPost
(
	@PostID			int,
	@HasSchedule	bit,
	@StartDate		datetime,
	@EndDate		datetime
)

AS BEGIN

INSERT INTO Posts
(
	DatePublished,
	HasSchedule,
	StartDate,
	EndDate
)
VALUES
(
	GetDate(),
	@HasSchedule,
	@StartDate,
	@EndDate
)

WHERE PostID = @PostID

END 
GO
