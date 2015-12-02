USE [HealthBLogDB]
GO

/****** Object:  StoredProcedure [dbo].[GetPostsByTags]    Script Date: 12/2/2015 1:38:00 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

Create procedure [dbo].[GetPostsByTags] (
@TagName nvarchar (1000)
) as

Begin

select p.PostID, p.Title, p.Body, p.CoverImgURL, p.DateCreated, p.DatePublished, p.HasSchedule, p.StartDate, p.EndDate, p.IsActive, c.CategoryID, c.CategoryName, u.FirstName +' '+ u.LastName as WriterName

From Posts p
inner join AspNetUsers u
on p.UserID = u.Id
inner join Categories c
on p.CategoryID = c.CategoryID
inner join PostsXHash ph
on p.PostID = ph.PostID
inner join HashTags h
on ph.TagID = h.TagID
where h.TagName = @TagName


End


GO

