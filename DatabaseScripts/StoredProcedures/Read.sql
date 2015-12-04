--Read Stored Procedures

------------------------------------------------------
USE HealthBlogDB
GO
------------------------------------------------------

CREATE PROCEDURE GetAllCategories 

AS BEGIN

SELECT	CategoryID, 
		CateGoryName

FROM Categories 

END 
GO

------------------------------------------------------
CREATE PROCEDURE GetAllPageSummaries 

AS BEGIN 

SELECT	s.StaticPageID, 
		s.ButtonName, 
		s.DateCreated, 
		s.DatePublished, 
		s.IsActive, 
		s.IsPublished, 
		u.FirstName + ' ' + u.LAStName AS WriterName

FROM StaticPage s
	INNER JOIN	ASpNetUsers u 
		ON s.UserID = u.Id

END
GO

------------------------------------------------------
--For Management View
CREATE PROCEDURE GetAllPostSummaries

AS BEGIN

SELECT	p.PostID, 
		p.Title, 
		p.DateCreated, 
		p.DatePublished, 
		p.IsActive, 
		p.IsPublished,	
		u.FirstName+' '+u.LastName AS WriterName, 
		c.CateGoryID, 
		c.CateGoryName

FROM Posts AS p
	INNER JOIN Categories c
		ON p.CategoryID	 =	 c.CategoryID
	INNER JOIN ASpNetUsers u
		ON p.UserID		 =	 u.Id

END 
GO

------------------------------------------------------

CREATE PROCEDURE GetAllPostsByCategory 
(
	@CategoryID		int
)

AS BEGIN

SELECT	p.PostID, 
		p.Title, 
		p.Body, 
		p.CoverImgURL, 
		p.DatePublished, 
		p.HasSchedule, 
		p.StartDate, 
		p.EndDate, 
		u.FirstName + ' ' + u.LAStName AS WriterName, 
		c.CateGoryID, 
		c.CateGoryName

FROM Posts p
	INNER JOIN ASpNetUsers u
		ON p.UserID		= u.Id
	INNER JOIN CateGories c
		ON p.CateGoryID = c.CateGoryID

WHERE	c.CateGoryID	=	@CateGoryID		and 
		p.IsActive		=	1				and 
		p.IsPublished   =	1

END
GO

------------------------------------------------------

CREATE PROCEDURE GetAllTags 

AS BEGIN

SELECT	TagID, 
		TagName

FROM HashTags 

END
GO

------------------------------------------------------

CREATE PROCEDURE GetPageByID 
(
	@StaticPageID	int
)

AS BEGIN 

SELECT	s.StaticPageID, 
		s.ButtonName, 
		s.Body, 
		s.DateCreated, 
		s.DatePublished, 
		u.FirstName + ' ' + u.LastName AS WriterName

FROM StaticPage s
	INNER JOIN ASpNetUsers u
		ON s.UserID = u.Id

WHERE s.StaticPageID = @StaticPageID

END 
GO

------------------------------------------------------

CREATE PROCEDURE GetPostByID 
(
	@PostID		int
)

AS BEGIN 

SELECT	p.PostID, 
		p.Title, 
		p.CoverImgURL, 
		p.Body, 
		p.DateCreated, 
		p.DatePublished, 
		p.HasSchedule, 
		p.StartDate, 
		p.EndDate, 
		p.IsActive, 
		u.FirstName + ' ' + u.LastName AS WriterName, 
		c.CategoryID, 
		c.CategoryName

FROM Posts p
	INNER JOIN ASpNetUsers u
		ON p.UserID		=	u.id
	INNER JOIN CateGories c
		ON p.CategoryID	=	c.CategoryID

WHERE p.PostID = @PostID

END 
GO

------------------------------------------------------

CREATE PROCEDURE GetPostsByTagID 
(
	@TagID		int
) 

AS BEGIN

SELECT	p.PostID, 
		p.Title, 
		p.Body, 
		p.CoverImgURL, 
		p.DatePublished, 
		p.HasSchedule, 
		p.StartDate, 
		p.EndDate, 
		u.FirstName + ' ' + u.LastName AS WriterName, 
		c.CateGoryID, 
		c.CateGoryName

FROM Posts p
	INNER JOIN ASpNetUsers u
		ON p.UserID			=	u.Id
	INNER JOIN CateGories c
		ON p.CateGoryID		=	c.CateGoryID
	INNER JOIN PostsXHash ph
		ON p.PostID			=	ph.PostID

WHERE	ph.TagID		=		@TagID		and 
		p.IsActive		=		1			and 
		p.IsPublished	=		1

END
GO

------------------------------------------------------

CREATE PROCEDURE GetTagsByPostID
(
	@PostID		int
) 

AS BEGIN

SELECT	TagID, 
		ActualHashTag

FROM PostsXHASh ph

WHERE PostID = @PostID

END
GO

------------------------------------------------------

CREATE PROCEDURE GetPostsByAmount 
(
	@Amount	 int
) 

AS BEGIN

SELECT TOP(@Amount) 
		p.PostID, 
		p.Title, 
		p.Body, 
		p.CoverImgURL, 
		p.DatePublished, 
		p.HasSchedule, 
		p.StartDate, 
		p.EndDate, 
		u.FirstName + ' ' + u.LastName AS WriterName, 
		c.CateGoryID, 
		c.CateGoryName

FROM Posts p
	INNER JOIN ASpNetUsers u
		ON p.UserID			=	u.Id
	INNER JOIN CateGories c
		ON p.CateGoryID		=	c.CateGoryID

WHERE		p.IsActive		=	1	and 
			p.IsPublished	=	1

ORDER BY	p.DatePublished		DESC

END
GO