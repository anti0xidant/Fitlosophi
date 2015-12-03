USE HealthBlogDB
GO

DROP PROCEDURE 
	--Create
	AddPost,
	AddStaticPage,
	AddTag,

	--Read,
	GetAllCategories,
	GetAllPageSummaries,
	GetAllPostSummaries,
	GetAllPostsByCategory,
	GetAllTags,
	GetPageByID,
	GetPostByID,
	GetPostsByTagID,
	GetPostsByAmount,
	GetTagsByPostID,

	--Update,
	EditPost,
	EditPage,
	PublishPost,
	PublishPage,

	--Delete
	DeletePost,
	DeletePage,
	DeleteAllTagsByPostID

GO

:r C:\_repos\FITlosophi\DatabaseScripts\StoredProcedures\Create.sql
GO
:r C:\_repos\FITlosophi\DatabaseScripts\StoredProcedures\Read.sql
GO
:r C:\_repos\FITlosophi\DatabaseScripts\StoredProcedures\Update.sql
GO
:r C:\_repos\FITlosophi\DatabaseScripts\StoredProcedures\Delete.sql
GO