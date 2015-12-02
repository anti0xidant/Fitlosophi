USE [HealthBLogDB]
GO

/****** Object:  StoredProcedure [dbo].[GetPostByID]    Script Date: 12/2/2015 1:37:46 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

Create procedure [dbo].[GetPostByID] (
@PostID int)
as

Begin 

select p.PostID, p.Title, p.Body, p.CoverImgURL, p.Body, p.DateCreated, p.DatePublished, p.HasSchedule, p.StartDate, p.EndDate, p.IsActive, u.FirstName+ ' ' + u.LastName as WriterName
from Posts p
inner join AspNetUsers u
on p.UserID = u.id
inner join Categories c
on p.CategoryID= c.CategoryID
where p.PostID = @PostID


End 


GO

