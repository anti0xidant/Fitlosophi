--Create Stored Procedures

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

-- Publish Post
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

-- Add Tag
CREATE PROCEDURE AddTag
(
	@PostID		int,
	@ActualHashTag	nvarchar(1000),
	@PostXHashID int OUTPUT
)

AS BEGIN

DECLARE @TagID AS INT

SELECT @TagID = ht.TagID FROM HashTags ht WHERE LOWER(ht.TagName) = LOWER(@ActualHashTag)

IF @TagID IS NULL
   BEGIN
       INSERT INTO HashTags (TagName)
	   
	   VALUES (LOWER(@ActualHashTag))
       
	   SELECT @TagID = SCOPE_IDENTITY()
    END

INSERT INTO PostXHash (PostID, TagID, ActualHashTag)

VALUES (@PostID, @TagID, @ActualHashTag)

SET @PostXHashID = SCOPE_IDENTITY()

END
GO
