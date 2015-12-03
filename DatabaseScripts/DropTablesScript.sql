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

--:r ~\StoredProcedures\Create.sql
--GO
--:r ~\StoredProcedures\Read.sql
--GO
--:r ~\StoredProcedures\Update.sql
--GO
--:r ~\StoredProcedures\Delete.sql
--GO