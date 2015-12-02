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


-- Delete Post 
CREATE PROCEDURE DeletePost
(
	@PostID			int
)

AS BEGIN

UPDATE Posts 

SET IsActive = 0
WHERE PostID = @PostID

END 
GO

-- Delete Page
CREATE PROCEDURE DeletePage
(
	@StaticPageID	int
)

AS BEGIN

UPDATE StaticPage 

SET IsActive = 0
WHERE  StaticPageID = @StaticPageID

END 
GO