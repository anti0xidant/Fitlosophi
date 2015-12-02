USE [HealthBLogDB]
GO

/****** Object:  StoredProcedure [dbo].[GetAllCategories]    Script Date: 12/2/2015 1:35:58 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

Create procedure [dbo].[GetAllCategories] as 

Begin

Select c.CategoryID, c.CategoryName

from Categories c

End 


GO

