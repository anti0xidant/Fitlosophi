--Update Stored Procedures
------------------------------------------------------
USE HealthBlogDB
------------------------------------------------------


CREATE PROCEDURE EditPost
(
	@PostID			int,

	@CategoryID		int,
	@UserID			nvarchar(128),
	@Title			nvarchar(200),
	@CoverImgURL	nvarchar(2000),
	@Body			nvarchar(MAX),
	@HasSchedule	bit,
	@StartDate		datetime,
	@EndDate		datetime
)

AS BEGIN

UPDATE	Posts

SET	    CategoryID	    =	@CategoryID,
		UserID		    =	@UserID,
		Title		    =	@Title,
		CoverImgURL		=	@CoverImgURL,
		Body		    =	@Body,
		HasSchedule		=	@HasSchedule,
		StartDate		=	@StartDate,
		EndDate			=	@EndDate,
		DateModified    =   GetDate()

WHERE	PostID			=	@PostID

END 
GO

-----------------------------------------------------------

CREATE PROCEDURE EditPage
(
	@StaticPageID	int,

	@ButtonName		nvarchar(50),
	@UserID			nvarchar(128),
	@Body			nvarchar(MAX)
)

AS BEGIN

UPDATE	StaticPage

SET		ButtonName		=	@ButtonName,
		UserID			=	@UserID,
		Body			=	@Body,
		DateModified	=	GetDate()

WHERE	StaticPageID	=	@StaticPageID

END 
GO

-----------------------------------------------------------

CREATE PROCEDURE PublishPost
(
	@PostID			int,

	@HasSchedule	bit,
	@StartDate		datetime,
	@EndDate		datetime
)

AS BEGIN

UPDATE	Posts

SET		DatePublished	 =		GetDate(), 
		HasSchedule		 =		@HasSchedule, 
		StartDate		 =		@StartDate, 
		EndDate			 =		@EndDate,
		IsPublished      =      1

WHERE	PostID			 =	    @PostID

END 
GO 

-----------------------------------------------------------

CREATE PROCEDURE PublishPage
(
	@StaticPageID	int
)

AS BEGIN
	
UPDATE	StaticPage

SET		DatePublished	=	 GetDate(),
		IsPublished     =    1

WHERE	StaticPageID	=	 @StaticPageID

END
GO

-----------------------------------------------------------

