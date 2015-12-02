USE [HealthBLogDB]
GO

/****** Object:  StoredProcedure [dbo].[GetPageByID]    Script Date: 12/2/2015 1:37:33 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

Create procedure [dbo].[GetPageByID] (
@PageID int
)as

Begin 

Select s.StaticPageID, s.ButtonName, s.Body, s.DateCreated, s.DatePublished, s.IsActive, u.FirstName + ' ' + u.LastName as WriterName
from StaticPage s
inner join AspNetUsers u
on s.UserID = u.Id
where s.StaticPageID = @PageID


End 


GO

