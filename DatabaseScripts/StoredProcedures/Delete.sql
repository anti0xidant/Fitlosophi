--Delete Stored Procedures
------------------------------------------------------
USE HealthBlogDB
GO
------------------------------------------------------



-- Delete Post 
CREATE PROCEDURE DeletePost
(
	@PostID			int
)

AS BEGIN

UPDATE Posts 

SET		IsActive	=	0, 
		IsPublished =	0
WHERE   PostID		=	 @PostID

END 
GO

------------------------------------------------------

-- Delete Page
CREATE PROCEDURE DeletePage
(
	@StaticPageID	int
)

AS BEGIN

UPDATE StaticPage 

SET		IsActive		=	 0, 
		IsPublished		=	 0
WHERE   StaticPageID	=	 @StaticPageID

END 
GO

------------------------------------------------------

CREATE PROCEDURE DeleteAllTagsByPostID
(
	@PostID	int
)

AS BEGIN

DELETE FROM PostsXHash 
WHERE PostID = @PostID

END
GO