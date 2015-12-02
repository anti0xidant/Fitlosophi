USE [HealthBLogDB]
GO

/****** Object:  StoredProcedure [dbo].[GetAllPostsByCategory]    Script Date: 12/2/2015 1:37:02 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

Create procedure [dbo].[GetAllPostsByCategory] (
@CategoryName nvarchar (100)
)
as

Begin

select p.PostID, p.Title, p.Body, p.CoverImgURL, p.DateCreated, p.DatePublished, p.HasSchedule, p.StartDate, p.EndDate, p.IsActive, u.FirstName+ ' ' + u.LastName as WriterName, c.CategoryID, c.CategoryName
from Posts p
inner join AspNetUsers u
on p.UserID = u.Id
inner join Categories c
on p.CategoryID = c.CategoryID
where c.CategoryName = @CategoryName

End


GO

