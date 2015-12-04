--Create Stored Procedures
------------------------------------------------------
USE HealthBlogDB
GO
------------------------------------------------------


CREATE PROCEDURE AddPost
(
	@CategoryID		int,
	@UserID			nvarchar(128),
	@Title			nvarchar(200),
	@CoverImgURL	nvarchar(2000),
	@Body			nvarchar(MAX),	

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
	IsPublished,	
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
	0,
	0,
	1
)

SET @PostID = SCOPE_IDENTITY();

END 
GO 

-----------------------------------------------------------

CREATE PROCEDURE AddStaticPage
(
	@ButtonName		nvarchar(50),
	@UserID			nvarchar(128),
	@Body			nvarchar(MAX),
		
	@StaticPageID	int output
)

AS BEGIN

INSERT INTO StaticPage
(
	ButtonName,
	UserId,
	Body,
	DateCreated,
	IsPublished,
	IsActive
)
VALUES
(
	@ButtonName,
	@UserID,
	@Body,
	GetDate(),
	0,
	1
)

SET @StaticPageID = SCOPE_IDENTITY()

END
GO

-----------------------------------------------------------

CREATE PROCEDURE AddTag
(
	@PostID			int,
	@ActualHashTag	nvarchar(1000)
)

AS BEGIN

DECLARE	 @TagID AS INT

SELECT	 @TagID = ht.TagID FROM HashTags ht WHERE LOWER(ht.TagName) = LOWER(@ActualHashTag)

IF @TagID IS NULL

   BEGIN

       INSERT INTO HashTags (TagName)
	   
	   VALUES (LOWER(@ActualHashTag))
       
	   SELECT @TagID = SCOPE_IDENTITY()

   END

INSERT INTO PostsXHash	(PostID, TagID, ActualHashTag)

VALUES					(@PostID, @TagID, @ActualHashTag)

END
GO

-----------------------------------------------------------

CREATE PROCEDURE AddNewCategory
(
	@CategoryName nvarchar(100)
)

AS BEGIN

INSERT INTO Categories 
(
	CategoryName
)
VALUES
(
	@CategoryName
)

END
GO