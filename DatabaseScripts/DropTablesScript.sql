USE HealthBlogDB
GO

DROP PROCEDURE 
	--Create
	AddPost,
	AddStaticPage,
	AddTag,

	--Read,
	GetAllCategories,
	GetAllPages,
	GetAllPosts,
	GetAllPostsByCategory,
	GetAllTags,
	GetPageByID,
	GetPostByID,
	GetPostsByTags,

	--Update,
	EditPost,
	EditPage,
	PublishPost,
	PublishPage,

	--Delete
	DeletePost,
	DeletePage

GO