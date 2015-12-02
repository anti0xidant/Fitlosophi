USE [HealthBLogDB]
GO

/****** Object:  StoredProcedure [dbo].[GetAllPosts]    Script Date: 12/2/2015 1:36:35 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE procedure [dbo].[GetAllPosts] as

Begin

Select p.PostID, p.Title, p.Body, p.CoverImgURL, p.DateCreated, p.DatePublished, p.HasSchedule, p.StartDate, p.EndDate, p.IsActive, u.FirstName+' '+u.LastName as WriterName, c.CategoryID, c.CategoryName
from Posts as P
inner join Categories C
on P.CategoryID = C.CategoryID
inner join AspNetUsers U
on P.UserID = U.Id


End



GO

