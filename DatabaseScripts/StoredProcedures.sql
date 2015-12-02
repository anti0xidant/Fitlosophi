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