------------------------------------------------------
USE HealthBlogDB
------------------------------------------------------

CREATE PROCEDURE NewPost
(
	@Title			nvarchar(100),
	@Body			nvarchar(4000),
	@Duration		int,
	@IsActive		bit,
	@PostID			int output
)

AS BEGIN

INSERT INTO Posts
(
	Title,
	Body,
	CreationDate,
	Duration,
	IsActive
)
VALUES
(
	@Title,
	@Body,
	GetDate(),
	@Duration,
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
	@PageID			int
)

AS BEGIN

UPDATE Pages 

SET IsActive = 0
WHERE  PageID = @PageID

END 
GO