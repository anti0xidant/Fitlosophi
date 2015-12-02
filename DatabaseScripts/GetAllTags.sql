USE [HealthBLogDB]
GO

/****** Object:  StoredProcedure [dbo].[GetAllTags]    Script Date: 12/2/2015 1:37:17 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

Create procedure [dbo].[GetAllTags] as

Begin

Select t.TagID, t.TagName

from HashTags t


End


GO

