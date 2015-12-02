--Delete Stored Procedures
------------------------------------------------------
USE HealthBlogDB
------------------------------------------------------



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
