--Update Stored Procedures
------------------------------------------------------
USE HealthBlogDB
------------------------------------------------------


CREATE PROCEDURE PublishPost
(
	@PostID			int,
	@HasSchedule	bit,
	@StartDate		datetime,
	@EndDate		datetime
)

AS BEGIN

UPDATE Posts

SET		DatePublished = GetDate(), 
		HasSchedule = @HasSchedule, 
		StartDate = @StartDate, 
		EndDate = @EndDate

WHERE	PostID = @PostID

END 
GO 



CREATE PROCEDURE PublishPage
(
	@StaticPageID	int
)

AS BEGIN

UPDATE StaticPage

SET		DatePublished = GetDate()

WHERE	StaticPageID = @StaticPageID

END
GO