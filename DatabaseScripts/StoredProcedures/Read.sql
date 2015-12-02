--Read Stored Procedures

------------------------------------------------------
USE HealthBlogDB
------------------------------------------------------

Create procedure [dbo].[GetAllCategories] as 

Begin

Select c.CategoryID, c.CategoryName

from Categories c

End 

GO

------------------------------------------------------

Create procedure [dbo].[GetAllPages] as

Begin 

select s.StaticPageID, s.ButtonName, s.Body, s.DateCreated, s.DatePublished, s.IsActive, u.FirstName+ ' ' + u.LastName as WriterName
from StaticPage s
inner join AspNetUsers u
on s.UserID = u.Id

End

GO

------------------------------------------------------

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

------------------------------------------------------

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

------------------------------------------------------

Create procedure [dbo].[GetAllTags] as

Begin

Select t.TagID, t.TagName

from HashTags t

End

GO

------------------------------------------------------

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

------------------------------------------------------

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

------------------------------------------------------

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
------------------------------------------------------


