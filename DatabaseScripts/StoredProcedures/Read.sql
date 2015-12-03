--Read Stored Procedures

------------------------------------------------------
USE HealthBlogDB
GO
------------------------------------------------------

Create procedure [dbo].[GetAllCategories] as 

Begin

Select c.CategoryID, c.CategoryName

from Categories c

End 

GO

------------------------------------------------------
Create procedure [dbo].[GetAllPageSummaries] as

Begin 

select s.StaticPageID, s.ButtonName, s.Body, s.DateCreated, s.DatePublished, s.IsActive, s.IsPublished, u.FirstName+ ' ' + u.LastName as WriterName
from StaticPage s
inner join AspNetUsers u
on s.UserID = u.Id

End

GO

------------------------------------------------------
--For Management View
CREATE procedure [dbo].[GetAllPostSummaries] as

Begin

Select p.PostID, p.Title, p.DateCreated, p.DatePublished, p.IsActive, p.IsPublished, u.FirstName+' '+u.LastName as WriterName, c.CategoryID, c.CategoryName
from Posts as P
inner join Categories C
on P.CategoryID = C.CategoryID
inner join AspNetUsers U
on P.UserID = U.Id

End

GO

------------------------------------------------------

Create procedure [dbo].[GetAllPostsByCategory] (
@CategoryID int
)
as

Begin

select p.PostID, p.Title, p.Body, p.CoverImgURL, p.DatePublished, p.HasSchedule, p.StartDate, p.EndDate, u.FirstName+ ' ' + u.LastName as WriterName, c.CategoryID, c.CategoryName
from Posts p
inner join AspNetUsers u
on p.UserID = u.Id
inner join Categories c
on p.CategoryID = c.CategoryID
where c.CategoryID = @CategoryID and p.IsActive = 1 and p.IsPublished = 1

End

GO

------------------------------------------------------

Create procedure [dbo].[GetAllTags] as

Begin

Select t.TagID, t.TagName

from HashTags t

End

GO

------------------------------------------------------

Create procedure [dbo].[GetPageByID] (
@StaticPageID int
)as

Begin 

Select s.StaticPageID, s.ButtonName, s.Body, s.DateCreated, s.DatePublished, u.FirstName + ' ' + u.LastName as WriterName
from StaticPage s
inner join AspNetUsers u
on s.UserID = u.Id
where s.StaticPageID = @StaticPageID

End 

GO

------------------------------------------------------

Create procedure [dbo].[GetPostByID] (
@PostID int)
as

Begin 

select p.PostID, p.Title, p.CoverImgURL, p.Body, p.DateCreated, p.DatePublished, p.HasSchedule, p.StartDate, p.EndDate, p.IsActive, u.FirstName+ ' ' + u.LastName as WriterName, c.CategoryID, c.CategoryName
from Posts p
inner join AspNetUsers u
on p.UserID = u.id
inner join Categories c
on p.CategoryID= c.CategoryID
where p.PostID = @PostID

End 

GO

------------------------------------------------------

Create procedure [dbo].[GetPostsByTagID] (
@TagID int
) as

Begin

select p.PostID, p.Title, p.Body, p.CoverImgURL, p.DatePublished, p.HasSchedule, p.StartDate, p.EndDate, u.FirstName+ ' ' + u.LastName as WriterName, c.CategoryID, c.CategoryName

From Posts p
inner join AspNetUsers u
on p.UserID = u.Id
inner join Categories c
on p.CategoryID = c.CategoryID
inner join PostsXHash ph
on p.PostID = ph.PostID
where ph.TagID = @TagID and p.IsActive = 1 and p.IsPublished = 1

End

GO

------------------------------------------------------

Create procedure [dbo].[GetTagsByPostID] (
@PostID int
) as

Begin

select ph.TagID, ph.ActualHashTag

From PostsXHash ph
where ph.PostID = @PostID

End

Go

------------------------------------------------------

Create procedure [dbo].[GetPostsByAmount] (
@Amount int
) as

Begin

Select Top(@Amount) p.PostID, p.Title, p.Body, p.CoverImgURL, p.DatePublished, p.HasSchedule, p.StartDate, p.EndDate, u.FirstName+ ' ' + u.LastName as WriterName, c.CategoryID, c.CategoryName

From Posts p

inner join AspNetUsers u
on p.UserID = u.Id
inner join Categories c
on p.CategoryID = c.CategoryID
where p.IsActive = 1 and p.IsPublished = 1
order by p.DatePublished desc

End

Go