USE [HealthBLogDB]
GO

/****** Object:  StoredProcedure [dbo].[GetAllPages]    Script Date: 12/2/2015 1:36:17 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

Create procedure [dbo].[GetAllPages] as

Begin 

select s.StaticPageID, s.ButtonName, s.Body, s.DateCreated, s.DatePublished, s.IsActive, u.FirstName+ ' ' + u.LastName as WriterName
from StaticPage s
inner join AspNetUsers u
on s.UserID = u.Id

End


GO

