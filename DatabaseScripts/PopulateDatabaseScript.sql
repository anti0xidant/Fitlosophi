--------------------------------------Delete All Data--------------------------------------	
	
USE HealthBlogDB
GO

Delete PostsXHash
Delete HashTags
DBCC CHECKIDENT ('[HashTags]', RESEED, 0)
Delete Posts
DBCC CHECKIDENT ('[Posts]', RESEED, 0)
Delete Categories
DBCC CHECKIDENT ('[Categories]', RESEED, 0)
Delete StaticPage
GO
-------------------------------------------End---------------------------------------------------


--------------------------------------Populate Static Pages--------------------------------------	
USE HealthBlogDB
GO

DECLARE 
	@ButtonName		nvarchar(50),
	@UserID			nvarchar(128),
	@Body			nvarchar(MAX),
	@StaticPageID	int

SELECT 
	@ButtonName = 'Disclaimer', 
	@UserID = '6dc67935-e819-445e-94cc-cb85d97bd56c', 
	@Body = '<h2>Static Pages Title</h2><p>Lorem ipsum dolor sit amet, vocent posidonium pri ei, vel regione democritum cu. An sint aliquip insolens per, ex sint etiam pro. Eam at omnis inciderint consequuntur, mel euismod patrioque ei, eam admodum consetetur ei. Eu maiestatis percipitur qui. Est partem vivendo elaboraret an. Vim ad dicit iuvaret delicata, fugit audire forensibus no nec, ad congue essent nusquam qui. Cum in eirmod concludaturque. Ea deleniti appellantur dissentiunt mei. Choro dicam petentium eos ei. Has id utinam invidunt tacimates, mazim nostro rationibus eos at. His voluptua splendide omittantur an, ut usu nisl sint cibo. Has te animal recusabo moderatius, homero blandit erroribus nec te.</p><p>Lorem ipsum dolor sit amet, vocent posidonium pri ei, vel regione democritum cu. An sint aliquip insolens per, ex sint etiam pro. Eam at omnis inciderint consequuntur, mel euismod patrioque ei, eam admodum consetetur ei. Eu maiestatis percipitur qui. Est partem vivendo elaboraret an. Vim ad dicit iuvaret delicata, fugit audire forensibus no nec, ad congue essent nusquam qui. Cum in eirmod concludaturque. Ea deleniti appellantur dissentiunt mei. Choro dicam petentium eos ei. Has id utinam invidunt tacimates, mazim nostro rationibus eos at. His voluptua splendide omittantur an, ut usu nisl sint cibo. Has te animal recusabo moderatius, homero blandit erroribus nec te.</p>';

EXECUTE AddStaticPage @ButtonName, @UserID, @Body, @StaticPageID


SELECT 
	@ButtonName = 'Weekly Meals', 
	@UserID = 'b75da91b-e39a-42ce-b2f0-4834eda139e1', 
	@Body = '<h2>Weekly Meals</h2><p>Lorem ipsum dolor sit amet, vocent posidonium pri ei, vel regione democritum cu. An sint aliquip insolens per, ex sint etiam pro. Eam at omnis inciderint consequuntur, mel euismod patrioque ei, eam admodum consetetur ei. Eu maiestatis percipitur qui. Est partem vivendo elaboraret an. Vim ad dicit iuvaret delicata, fugit audire forensibus no nec, ad congue essent nusquam qui. Cum in eirmod concludaturque. Ea deleniti appellantur dissentiunt mei. Choro dicam petentium eos ei. Has id utinam invidunt tacimates, mazim nostro rationibus eos at. His voluptua splendide omittantur an, ut usu nisl sint cibo. Has te animal recusabo moderatius, homero blandit erroribus nec te.</p><p>Lorem ipsum dolor sit amet, vocent posidonium pri ei, vel regione democritum cu. An sint aliquip insolens per, ex sint etiam pro. Eam at omnis inciderint consequuntur, mel euismod patrioque ei, eam admodum consetetur ei. Eu maiestatis percipitur qui. Est partem vivendo elaboraret an. Vim ad dicit iuvaret delicata, fugit audire forensibus no nec, ad congue essent nusquam qui. Cum in eirmod concludaturque. Ea deleniti appellantur dissentiunt mei. Choro dicam petentium eos ei. Has id utinam invidunt tacimates, mazim nostro rationibus eos at. His voluptua splendide omittantur an, ut usu nisl sint cibo. Has te animal recusabo moderatius, homero blandit erroribus nec te.</p>';

EXECUTE AddStaticPage @ButtonName, @UserID, @Body, @StaticPageID


SELECT 
	@ButtonName = 'Author Bios', 
	@UserID = 'b75da91b-e39a-42ce-b2f0-4834eda139e1', 
	@Body = '<h2>Author Bios</h2><p>Lorem ipsum dolor sit amet, vocent posidonium pri ei, vel regione democritum cu. An sint aliquip insolens per, ex sint etiam pro. Eam at omnis inciderint consequuntur, mel euismod patrioque ei, eam admodum consetetur ei. Eu maiestatis percipitur qui. Est partem vivendo elaboraret an. Vim ad dicit iuvaret delicata, fugit audire forensibus no nec, ad congue essent nusquam qui. Cum in eirmod concludaturque. Ea deleniti appellantur dissentiunt mei. Choro dicam petentium eos ei. Has id utinam invidunt tacimates, mazim nostro rationibus eos at. His voluptua splendide omittantur an, ut usu nisl sint cibo. Has te animal recusabo moderatius, homero blandit erroribus nec te.</p><p>Lorem ipsum dolor sit amet, vocent posidonium pri ei, vel regione democritum cu. An sint aliquip insolens per, ex sint etiam pro. Eam at omnis inciderint consequuntur, mel euismod patrioque ei, eam admodum consetetur ei. Eu maiestatis percipitur qui. Est partem vivendo elaboraret an. Vim ad dicit iuvaret delicata, fugit audire forensibus no nec, ad congue essent nusquam qui. Cum in eirmod concludaturque. Ea deleniti appellantur dissentiunt mei. Choro dicam petentium eos ei. Has id utinam invidunt tacimates, mazim nostro rationibus eos at. His voluptua splendide omittantur an, ut usu nisl sint cibo. Has te animal recusabo moderatius, homero blandit erroribus nec te.</p>';

EXECUTE AddStaticPage @ButtonName, @UserID, @Body, @StaticPageID


SELECT 
	@ButtonName = 'Fitness Websites', 
	@UserID = '6dc67935-e819-445e-94cc-cb85d97bd56c', 
	@Body = '<h2>Fitness Websites</h2><p>Lorem ipsum dolor sit amet, vocent posidonium pri ei, vel regione democritum cu. An sint aliquip insolens per, ex sint etiam pro. Eam at omnis inciderint consequuntur, mel euismod patrioque ei, eam admodum consetetur ei. Eu maiestatis percipitur qui. Est partem vivendo elaboraret an. Vim ad dicit iuvaret delicata, fugit audire forensibus no nec, ad congue essent nusquam qui. Cum in eirmod concludaturque. Ea deleniti appellantur dissentiunt mei. Choro dicam petentium eos ei. Has id utinam invidunt tacimates, mazim nostro rationibus eos at. His voluptua splendide omittantur an, ut usu nisl sint cibo. Has te animal recusabo moderatius, homero blandit erroribus nec te.</p><p>Lorem ipsum dolor sit amet, vocent posidonium pri ei, vel regione democritum cu. An sint aliquip insolens per, ex sint etiam pro. Eam at omnis inciderint consequuntur, mel euismod patrioque ei, eam admodum consetetur ei. Eu maiestatis percipitur qui. Est partem vivendo elaboraret an. Vim ad dicit iuvaret delicata, fugit audire forensibus no nec, ad congue essent nusquam qui. Cum in eirmod concludaturque. Ea deleniti appellantur dissentiunt mei. Choro dicam petentium eos ei. Has id utinam invidunt tacimates, mazim nostro rationibus eos at. His voluptua splendide omittantur an, ut usu nisl sint cibo. Has te animal recusabo moderatius, homero blandit erroribus nec te.</p>';

EXECUTE AddStaticPage @ButtonName, @UserID, @Body, @StaticPageID
GO

----------------------------- ---------------------End------------------------------------------------


-------------------------------------- Populate Categories Table--------------------------------------
USE HealthBlogDB
GO

DECLARE 
	@CategoryName nvarchar(100)

SELECT 
	@CategoryName = 'Food' 

EXECUTE AddNewCategory @CategoryName

SELECT 
	@CategoryName = 'Nutrition' 

EXECUTE AddNewCategory @CategoryName

SELECT 
	@CategoryName = 'Health'

EXECUTE AddNewCategory @CategoryName

SELECT 
	@CategoryName = 'Fitness' 

EXECUTE AddNewCategory @CategoryName

SELECT 
	@CategoryName = 'Sports' 

EXECUTE AddNewCategory @CategoryName

SELECT 
	@CategoryName = 'Wellness' 

EXECUTE AddNewCategory @CategoryName

GO

----------------------------------------------End---------------------------------------------------------


------------------------------------Populate Sample Posts Table-------------------------------------------
USE HealthBlogDB
GO

DECLARE 
	@CategoryID		int,
	@UserID			nvarchar(128),
	@Title			nvarchar(200),
	@CoverImgURL	nvarchar(2000),
	@Body			nvarchar(MAX),	
	@PostID			int 

SELECT 
	@CategoryID = 2, 
	@UserID = 'b75da91b-e39a-42ce-b2f0-4834eda139e1', 
	@Title = '5 Tips for Healthy Eating',
	@CoverImgURL = 'http://localhost:54909/Content/img/foodSmall.jpg',
	@Body = '<h2>Static Pages Title</h2><p>Lorem ipsum dolor sit amet, vocent posidonium pri ei, vel regione democritum cu. An sint aliquip insolens per, ex sint etiam pro. Eam at omnis inciderint consequuntur, mel euismod patrioque ei, eam admodum consetetur ei. Eu maiestatis percipitur qui. Est partem vivendo elaboraret an. Vim ad dicit iuvaret delicata, fugit audire forensibus no nec, ad congue essent nusquam qui. Cum in eirmod concludaturque. Ea deleniti appellantur dissentiunt mei. Choro dicam petentium eos ei. Has id utinam invidunt tacimates, mazim nostro rationibus eos at. His voluptua splendide omittantur an, ut usu nisl sint cibo. Has te animal recusabo moderatius, homero blandit erroribus nec te.</p><p>Lorem ipsum dolor sit amet, vocent posidonium pri ei, vel regione democritum cu. An sint aliquip insolens per, ex sint etiam pro. Eam at omnis inciderint consequuntur, mel euismod patrioque ei, eam admodum consetetur ei. Eu maiestatis percipitur qui. Est partem vivendo elaboraret an. Vim ad dicit iuvaret delicata, fugit audire forensibus no nec, ad congue essent nusquam qui. Cum in eirmod concludaturque. Ea deleniti appellantur dissentiunt mei. Choro dicam petentium eos ei. Has id utinam invidunt tacimates, mazim nostro rationibus eos at. His voluptua splendide omittantur an, ut usu nisl sint cibo. Has te animal recusabo moderatius, homero blandit erroribus nec te.</p>';

EXECUTE AddPost @CategoryID, @UserID, @Title, @CoverImgURL, @Body, @PostID

SELECT 
	@CategoryID = 4, 
	@UserID = '6dc67935-e819-445e-94cc-cb85d97bd56c', 
	@Title = 'Golf Swing Workouts',
	@CoverImgURL = 'http://localhost:54909/Content/img/golf.jpg',
	@Body = '<p>Lorem ipsum dolor sit amet, vocent posidonium pri ei, vel regione democritum cu. An sint aliquip insolens per, ex sint etiam pro. Eam at omnis inciderint consequuntur, mel euismod patrioque ei, eam admodum consetetur ei. Eu maiestatis percipitur qui. Est partem vivendo elaboraret an. Vim ad dicit iuvaret delicata, fugit audire forensibus no nec, ad congue essent nusquam qui. Cum in eirmod concludaturque. Ea deleniti appellantur dissentiunt mei. Choro dicam petentium eos ei. Has id utinam invidunt tacimates, mazim nostro rationibus eos at. His voluptua splendide omittantur an, ut usu nisl sint cibo. Has te animal recusabo moderatius, homero blandit erroribus nec te.</p><p>Lorem ipsum dolor sit amet, vocent posidonium pri ei, vel regione democritum cu. An sint aliquip insolens per, ex sint etiam pro. Eam at omnis inciderint consequuntur, mel euismod patrioque ei, eam admodum consetetur ei. Eu maiestatis percipitur qui. Est partem vivendo elaboraret an. Vim ad dicit iuvaret delicata, fugit audire forensibus no nec, ad congue essent nusquam qui. Cum in eirmod concludaturque. Ea deleniti appellantur dissentiunt mei. Choro dicam petentium eos ei. Has id utinam invidunt tacimates, mazim nostro rationibus eos at. His voluptua splendide omittantur an, ut usu nisl sint cibo. Has te animal recusabo moderatius, homero blandit erroribus nec te.</p>';

EXECUTE AddPost @CategoryID, @UserID, @Title, @CoverImgURL, @Body, @PostID

SELECT 
	@CategoryID = 5, 
	@UserID = 'b75da91b-e39a-42ce-b2f0-4834eda139e1', 
	@Title = 'Preparing for a Competition',
	@CoverImgURL = 'http://res.cloudinary.com/dk0wmifkq/image/upload/v1449247035/dm0u0lp4u6puxq6iifmu.jpg',
	@Body = '<p>Lorem ipsum dolor sit amet, vocent posidonium pri ei, vel regione democritum cu. An sint aliquip insolens per, ex sint etiam pro. Eam at omnis inciderint consequuntur, mel euismod patrioque ei, eam admodum consetetur ei. Eu maiestatis percipitur qui. Est partem vivendo elaboraret an. Vim ad dicit iuvaret delicata, fugit audire forensibus no nec, ad congue essent nusquam qui. Cum in eirmod concludaturque. Ea deleniti appellantur dissentiunt mei. Choro dicam petentium eos ei. Has id utinam invidunt tacimates, mazim nostro rationibus eos at. His voluptua splendide omittantur an, ut usu nisl sint cibo. Has te animal recusabo moderatius, homero blandit erroribus nec te.</p><p>Lorem ipsum dolor sit amet, vocent posidonium pri ei, vel regione democritum cu. An sint aliquip insolens per, ex sint etiam pro. Eam at omnis inciderint consequuntur, mel euismod patrioque ei, eam admodum consetetur ei. Eu maiestatis percipitur qui. Est partem vivendo elaboraret an. Vim ad dicit iuvaret delicata, fugit audire forensibus no nec, ad congue essent nusquam qui. Cum in eirmod concludaturque. Ea deleniti appellantur dissentiunt mei. Choro dicam petentium eos ei. Has id utinam invidunt tacimates, mazim nostro rationibus eos at. His voluptua splendide omittantur an, ut usu nisl sint cibo. Has te animal recusabo moderatius, homero blandit erroribus nec te.</p>';

EXECUTE AddPost @CategoryID, @UserID, @Title, @CoverImgURL,@Body, @PostID

SELECT 
	@CategoryID = 1, 
	@UserID = '6dc67935-e819-445e-94cc-cb85d97bd56c', 
	@Title = 'Healthy Eating Habits',
	@CoverImgURL = 'http://localhost:54909/Content/img/eating.jpg',
	@Body = '<p>Lorem ipsum dolor sit amet, vocent posidonium pri ei, vel regione democritum cu. An sint aliquip insolens per, ex sint etiam pro. Eam at omnis inciderint consequuntur, mel euismod patrioque ei, eam admodum consetetur ei. Eu maiestatis percipitur qui. Est partem vivendo elaboraret an. Vim ad dicit iuvaret delicata, fugit audire forensibus no nec, ad congue essent nusquam qui. Cum in eirmod concludaturque. Ea deleniti appellantur dissentiunt mei. Choro dicam petentium eos ei. Has id utinam invidunt tacimates, mazim nostro rationibus eos at. His voluptua splendide omittantur an, ut usu nisl sint cibo. Has te animal recusabo moderatius, homero blandit erroribus nec te.</p><p>Lorem ipsum dolor sit amet, vocent posidonium pri ei, vel regione democritum cu. An sint aliquip insolens per, ex sint etiam pro. Eam at omnis inciderint consequuntur, mel euismod patrioque ei, eam admodum consetetur ei. Eu maiestatis percipitur qui. Est partem vivendo elaboraret an. Vim ad dicit iuvaret delicata, fugit audire forensibus no nec, ad congue essent nusquam qui. Cum in eirmod concludaturque. Ea deleniti appellantur dissentiunt mei. Choro dicam petentium eos ei. Has id utinam invidunt tacimates, mazim nostro rationibus eos at. His voluptua splendide omittantur an, ut usu nisl sint cibo. Has te animal recusabo moderatius, homero blandit erroribus nec te.</p>';

EXECUTE AddPost @CategoryID, @UserID, @Title, @CoverImgURL,@Body, @PostID

SELECT 
	@CategoryID = 3, 
	@UserID = '6dc67935-e819-445e-94cc-cb85d97bd56c', 
	@Title = 'Test Post Title',
	@CoverImgURL = 'http://localhost:54909/Content/img/eating.jpg',
	@Body = '<p>Lorem ipsum dolor sit amet, vocent posidonium pri ei, vel regione democritum cu. An sint aliquip insolens per, ex sint etiam pro. Eam at omnis inciderint consequuntur, mel euismod patrioque ei, eam admodum consetetur ei. Eu maiestatis percipitur qui. Est partem vivendo elaboraret an. Vim ad dicit iuvaret delicata, fugit audire forensibus no nec, ad congue essent nusquam qui. Cum in eirmod concludaturque. Ea deleniti appellantur dissentiunt mei. Choro dicam petentium eos ei. Has id utinam invidunt tacimates, mazim nostro rationibus eos at. His voluptua splendide omittantur an, ut usu nisl sint cibo. Has te animal recusabo moderatius, homero blandit erroribus nec te.</p><p>Lorem ipsum dolor sit amet, vocent posidonium pri ei, vel regione democritum cu. An sint aliquip insolens per, ex sint etiam pro. Eam at omnis inciderint consequuntur, mel euismod patrioque ei, eam admodum consetetur ei. Eu maiestatis percipitur qui. Est partem vivendo elaboraret an. Vim ad dicit iuvaret delicata, fugit audire forensibus no nec, ad congue essent nusquam qui. Cum in eirmod concludaturque. Ea deleniti appellantur dissentiunt mei. Choro dicam petentium eos ei. Has id utinam invidunt tacimates, mazim nostro rationibus eos at. His voluptua splendide omittantur an, ut usu nisl sint cibo. Has te animal recusabo moderatius, homero blandit erroribus nec te.</p>';

EXECUTE AddPost @CategoryID, @UserID, @Title, @CoverImgURL,@Body, @PostID

SELECT 
	@CategoryID = 3, 
	@UserID = '6dc67935-e819-445e-94cc-cb85d97bd56c', 
	@Title = 'Test Post Title',
	@CoverImgURL = 'http://localhost:54909/Content/img/eating.jpg',
	@Body = '<p>Lorem ipsum dolor sit amet, vocent posidonium pri ei, vel regione democritum cu. An sint aliquip insolens per, ex sint etiam pro. Eam at omnis inciderint consequuntur, mel euismod patrioque ei, eam admodum consetetur ei. Eu maiestatis percipitur qui. Est partem vivendo elaboraret an. Vim ad dicit iuvaret delicata, fugit audire forensibus no nec, ad congue essent nusquam qui. Cum in eirmod concludaturque. Ea deleniti appellantur dissentiunt mei. Choro dicam petentium eos ei. Has id utinam invidunt tacimates, mazim nostro rationibus eos at. His voluptua splendide omittantur an, ut usu nisl sint cibo. Has te animal recusabo moderatius, homero blandit erroribus nec te.</p><p>Lorem ipsum dolor sit amet, vocent posidonium pri ei, vel regione democritum cu. An sint aliquip insolens per, ex sint etiam pro. Eam at omnis inciderint consequuntur, mel euismod patrioque ei, eam admodum consetetur ei. Eu maiestatis percipitur qui. Est partem vivendo elaboraret an. Vim ad dicit iuvaret delicata, fugit audire forensibus no nec, ad congue essent nusquam qui. Cum in eirmod concludaturque. Ea deleniti appellantur dissentiunt mei. Choro dicam petentium eos ei. Has id utinam invidunt tacimates, mazim nostro rationibus eos at. His voluptua splendide omittantur an, ut usu nisl sint cibo. Has te animal recusabo moderatius, homero blandit erroribus nec te.</p>';

EXECUTE AddPost @CategoryID, @UserID, @Title, @CoverImgURL,@Body, @PostID

SELECT 
	@CategoryID = 3, 
	@UserID = '6dc67935-e819-445e-94cc-cb85d97bd56c', 
	@Title = 'Test Post Title',
	@CoverImgURL = 'http://localhost:54909/Content/img/eating.jpg',
	@Body = '<p>Lorem ipsum dolor sit amet, vocent posidonium pri ei, vel regione democritum cu. An sint aliquip insolens per, ex sint etiam pro. Eam at omnis inciderint consequuntur, mel euismod patrioque ei, eam admodum consetetur ei. Eu maiestatis percipitur qui. Est partem vivendo elaboraret an. Vim ad dicit iuvaret delicata, fugit audire forensibus no nec, ad congue essent nusquam qui. Cum in eirmod concludaturque. Ea deleniti appellantur dissentiunt mei. Choro dicam petentium eos ei. Has id utinam invidunt tacimates, mazim nostro rationibus eos at. His voluptua splendide omittantur an, ut usu nisl sint cibo. Has te animal recusabo moderatius, homero blandit erroribus nec te.</p><p>Lorem ipsum dolor sit amet, vocent posidonium pri ei, vel regione democritum cu. An sint aliquip insolens per, ex sint etiam pro. Eam at omnis inciderint consequuntur, mel euismod patrioque ei, eam admodum consetetur ei. Eu maiestatis percipitur qui. Est partem vivendo elaboraret an. Vim ad dicit iuvaret delicata, fugit audire forensibus no nec, ad congue essent nusquam qui. Cum in eirmod concludaturque. Ea deleniti appellantur dissentiunt mei. Choro dicam petentium eos ei. Has id utinam invidunt tacimates, mazim nostro rationibus eos at. His voluptua splendide omittantur an, ut usu nisl sint cibo. Has te animal recusabo moderatius, homero blandit erroribus nec te.</p>';

EXECUTE AddPost @CategoryID, @UserID, @Title, @CoverImgURL,@Body, @PostID

SELECT 
	@CategoryID = 3, 
	@UserID = '6dc67935-e819-445e-94cc-cb85d97bd56c', 
	@Title = 'Test Post Title',
	@CoverImgURL = 'http://localhost:54909/Content/img/eating.jpg',
	@Body = '<p>Lorem ipsum dolor sit amet, vocent posidonium pri ei, vel regione democritum cu. An sint aliquip insolens per, ex sint etiam pro. Eam at omnis inciderint consequuntur, mel euismod patrioque ei, eam admodum consetetur ei. Eu maiestatis percipitur qui. Est partem vivendo elaboraret an. Vim ad dicit iuvaret delicata, fugit audire forensibus no nec, ad congue essent nusquam qui. Cum in eirmod concludaturque. Ea deleniti appellantur dissentiunt mei. Choro dicam petentium eos ei. Has id utinam invidunt tacimates, mazim nostro rationibus eos at. His voluptua splendide omittantur an, ut usu nisl sint cibo. Has te animal recusabo moderatius, homero blandit erroribus nec te.</p><p>Lorem ipsum dolor sit amet, vocent posidonium pri ei, vel regione democritum cu. An sint aliquip insolens per, ex sint etiam pro. Eam at omnis inciderint consequuntur, mel euismod patrioque ei, eam admodum consetetur ei. Eu maiestatis percipitur qui. Est partem vivendo elaboraret an. Vim ad dicit iuvaret delicata, fugit audire forensibus no nec, ad congue essent nusquam qui. Cum in eirmod concludaturque. Ea deleniti appellantur dissentiunt mei. Choro dicam petentium eos ei. Has id utinam invidunt tacimates, mazim nostro rationibus eos at. His voluptua splendide omittantur an, ut usu nisl sint cibo. Has te animal recusabo moderatius, homero blandit erroribus nec te.</p>';

EXECUTE AddPost @CategoryID, @UserID, @Title, @CoverImgURL,@Body, @PostID

SELECT 
	@CategoryID = 3, 
	@UserID = '6dc67935-e819-445e-94cc-cb85d97bd56c', 
	@Title = 'Test Post Title',
	@CoverImgURL = 'http://localhost:54909/Content/img/eating.jpg',
	@Body = '<p>Lorem ipsum dolor sit amet, vocent posidonium pri ei, vel regione democritum cu. An sint aliquip insolens per, ex sint etiam pro. Eam at omnis inciderint consequuntur, mel euismod patrioque ei, eam admodum consetetur ei. Eu maiestatis percipitur qui. Est partem vivendo elaboraret an. Vim ad dicit iuvaret delicata, fugit audire forensibus no nec, ad congue essent nusquam qui. Cum in eirmod concludaturque. Ea deleniti appellantur dissentiunt mei. Choro dicam petentium eos ei. Has id utinam invidunt tacimates, mazim nostro rationibus eos at. His voluptua splendide omittantur an, ut usu nisl sint cibo. Has te animal recusabo moderatius, homero blandit erroribus nec te.</p><p>Lorem ipsum dolor sit amet, vocent posidonium pri ei, vel regione democritum cu. An sint aliquip insolens per, ex sint etiam pro. Eam at omnis inciderint consequuntur, mel euismod patrioque ei, eam admodum consetetur ei. Eu maiestatis percipitur qui. Est partem vivendo elaboraret an. Vim ad dicit iuvaret delicata, fugit audire forensibus no nec, ad congue essent nusquam qui. Cum in eirmod concludaturque. Ea deleniti appellantur dissentiunt mei. Choro dicam petentium eos ei. Has id utinam invidunt tacimates, mazim nostro rationibus eos at. His voluptua splendide omittantur an, ut usu nisl sint cibo. Has te animal recusabo moderatius, homero blandit erroribus nec te.</p>';

EXECUTE AddPost @CategoryID, @UserID, @Title, @CoverImgURL,@Body, @PostID

SELECT 
	@CategoryID = 3, 
	@UserID = '6dc67935-e819-445e-94cc-cb85d97bd56c', 
	@Title = 'Test Post Title',
	@CoverImgURL = 'http://localhost:54909/Content/img/eating.jpg',
	@Body = '<p>Lorem ipsum dolor sit amet, vocent posidonium pri ei, vel regione democritum cu. An sint aliquip insolens per, ex sint etiam pro. Eam at omnis inciderint consequuntur, mel euismod patrioque ei, eam admodum consetetur ei. Eu maiestatis percipitur qui. Est partem vivendo elaboraret an. Vim ad dicit iuvaret delicata, fugit audire forensibus no nec, ad congue essent nusquam qui. Cum in eirmod concludaturque. Ea deleniti appellantur dissentiunt mei. Choro dicam petentium eos ei. Has id utinam invidunt tacimates, mazim nostro rationibus eos at. His voluptua splendide omittantur an, ut usu nisl sint cibo. Has te animal recusabo moderatius, homero blandit erroribus nec te.</p><p>Lorem ipsum dolor sit amet, vocent posidonium pri ei, vel regione democritum cu. An sint aliquip insolens per, ex sint etiam pro. Eam at omnis inciderint consequuntur, mel euismod patrioque ei, eam admodum consetetur ei. Eu maiestatis percipitur qui. Est partem vivendo elaboraret an. Vim ad dicit iuvaret delicata, fugit audire forensibus no nec, ad congue essent nusquam qui. Cum in eirmod concludaturque. Ea deleniti appellantur dissentiunt mei. Choro dicam petentium eos ei. Has id utinam invidunt tacimates, mazim nostro rationibus eos at. His voluptua splendide omittantur an, ut usu nisl sint cibo. Has te animal recusabo moderatius, homero blandit erroribus nec te.</p>';

EXECUTE AddPost @CategoryID, @UserID, @Title, @CoverImgURL,@Body, @PostID

SELECT 
	@CategoryID = 3, 
	@UserID = '6dc67935-e819-445e-94cc-cb85d97bd56c', 
	@Title = 'Test Post Title',
	@CoverImgURL = 'http://localhost:54909/Content/img/eating.jpg',
	@Body = '<p>Lorem ipsum dolor sit amet, vocent posidonium pri ei, vel regione democritum cu. An sint aliquip insolens per, ex sint etiam pro. Eam at omnis inciderint consequuntur, mel euismod patrioque ei, eam admodum consetetur ei. Eu maiestatis percipitur qui. Est partem vivendo elaboraret an. Vim ad dicit iuvaret delicata, fugit audire forensibus no nec, ad congue essent nusquam qui. Cum in eirmod concludaturque. Ea deleniti appellantur dissentiunt mei. Choro dicam petentium eos ei. Has id utinam invidunt tacimates, mazim nostro rationibus eos at. His voluptua splendide omittantur an, ut usu nisl sint cibo. Has te animal recusabo moderatius, homero blandit erroribus nec te.</p><p>Lorem ipsum dolor sit amet, vocent posidonium pri ei, vel regione democritum cu. An sint aliquip insolens per, ex sint etiam pro. Eam at omnis inciderint consequuntur, mel euismod patrioque ei, eam admodum consetetur ei. Eu maiestatis percipitur qui. Est partem vivendo elaboraret an. Vim ad dicit iuvaret delicata, fugit audire forensibus no nec, ad congue essent nusquam qui. Cum in eirmod concludaturque. Ea deleniti appellantur dissentiunt mei. Choro dicam petentium eos ei. Has id utinam invidunt tacimates, mazim nostro rationibus eos at. His voluptua splendide omittantur an, ut usu nisl sint cibo. Has te animal recusabo moderatius, homero blandit erroribus nec te.</p>';

EXECUTE AddPost @CategoryID, @UserID, @Title, @CoverImgURL,@Body, @PostID

SELECT 
	@CategoryID = 3, 
	@UserID = '6dc67935-e819-445e-94cc-cb85d97bd56c', 
	@Title = 'Test Post Title',
	@CoverImgURL = 'http://localhost:54909/Content/img/eating.jpg',
	@Body = '<p>Lorem ipsum dolor sit amet, vocent posidonium pri ei, vel regione democritum cu. An sint aliquip insolens per, ex sint etiam pro. Eam at omnis inciderint consequuntur, mel euismod patrioque ei, eam admodum consetetur ei. Eu maiestatis percipitur qui. Est partem vivendo elaboraret an. Vim ad dicit iuvaret delicata, fugit audire forensibus no nec, ad congue essent nusquam qui. Cum in eirmod concludaturque. Ea deleniti appellantur dissentiunt mei. Choro dicam petentium eos ei. Has id utinam invidunt tacimates, mazim nostro rationibus eos at. His voluptua splendide omittantur an, ut usu nisl sint cibo. Has te animal recusabo moderatius, homero blandit erroribus nec te.</p><p>Lorem ipsum dolor sit amet, vocent posidonium pri ei, vel regione democritum cu. An sint aliquip insolens per, ex sint etiam pro. Eam at omnis inciderint consequuntur, mel euismod patrioque ei, eam admodum consetetur ei. Eu maiestatis percipitur qui. Est partem vivendo elaboraret an. Vim ad dicit iuvaret delicata, fugit audire forensibus no nec, ad congue essent nusquam qui. Cum in eirmod concludaturque. Ea deleniti appellantur dissentiunt mei. Choro dicam petentium eos ei. Has id utinam invidunt tacimates, mazim nostro rationibus eos at. His voluptua splendide omittantur an, ut usu nisl sint cibo. Has te animal recusabo moderatius, homero blandit erroribus nec te.</p>';

EXECUTE AddPost @CategoryID, @UserID, @Title, @CoverImgURL,@Body, @PostID

SELECT 
	@CategoryID = 3, 
	@UserID = '6dc67935-e819-445e-94cc-cb85d97bd56c', 
	@Title = 'Test Post Title',
	@CoverImgURL = 'http://localhost:54909/Content/img/eating.jpg',
	@Body = '<p>Lorem ipsum dolor sit amet, vocent posidonium pri ei, vel regione democritum cu. An sint aliquip insolens per, ex sint etiam pro. Eam at omnis inciderint consequuntur, mel euismod patrioque ei, eam admodum consetetur ei. Eu maiestatis percipitur qui. Est partem vivendo elaboraret an. Vim ad dicit iuvaret delicata, fugit audire forensibus no nec, ad congue essent nusquam qui. Cum in eirmod concludaturque. Ea deleniti appellantur dissentiunt mei. Choro dicam petentium eos ei. Has id utinam invidunt tacimates, mazim nostro rationibus eos at. His voluptua splendide omittantur an, ut usu nisl sint cibo. Has te animal recusabo moderatius, homero blandit erroribus nec te.</p><p>Lorem ipsum dolor sit amet, vocent posidonium pri ei, vel regione democritum cu. An sint aliquip insolens per, ex sint etiam pro. Eam at omnis inciderint consequuntur, mel euismod patrioque ei, eam admodum consetetur ei. Eu maiestatis percipitur qui. Est partem vivendo elaboraret an. Vim ad dicit iuvaret delicata, fugit audire forensibus no nec, ad congue essent nusquam qui. Cum in eirmod concludaturque. Ea deleniti appellantur dissentiunt mei. Choro dicam petentium eos ei. Has id utinam invidunt tacimates, mazim nostro rationibus eos at. His voluptua splendide omittantur an, ut usu nisl sint cibo. Has te animal recusabo moderatius, homero blandit erroribus nec te.</p>';

EXECUTE AddPost @CategoryID, @UserID, @Title, @CoverImgURL,@Body, @PostID

SELECT 
	@CategoryID = 3, 
	@UserID = '6dc67935-e819-445e-94cc-cb85d97bd56c', 
	@Title = 'Test Post Title',
	@CoverImgURL = 'http://localhost:54909/Content/img/eating.jpg',
	@Body = '<p>Lorem ipsum dolor sit amet, vocent posidonium pri ei, vel regione democritum cu. An sint aliquip insolens per, ex sint etiam pro. Eam at omnis inciderint consequuntur, mel euismod patrioque ei, eam admodum consetetur ei. Eu maiestatis percipitur qui. Est partem vivendo elaboraret an. Vim ad dicit iuvaret delicata, fugit audire forensibus no nec, ad congue essent nusquam qui. Cum in eirmod concludaturque. Ea deleniti appellantur dissentiunt mei. Choro dicam petentium eos ei. Has id utinam invidunt tacimates, mazim nostro rationibus eos at. His voluptua splendide omittantur an, ut usu nisl sint cibo. Has te animal recusabo moderatius, homero blandit erroribus nec te.</p><p>Lorem ipsum dolor sit amet, vocent posidonium pri ei, vel regione democritum cu. An sint aliquip insolens per, ex sint etiam pro. Eam at omnis inciderint consequuntur, mel euismod patrioque ei, eam admodum consetetur ei. Eu maiestatis percipitur qui. Est partem vivendo elaboraret an. Vim ad dicit iuvaret delicata, fugit audire forensibus no nec, ad congue essent nusquam qui. Cum in eirmod concludaturque. Ea deleniti appellantur dissentiunt mei. Choro dicam petentium eos ei. Has id utinam invidunt tacimates, mazim nostro rationibus eos at. His voluptua splendide omittantur an, ut usu nisl sint cibo. Has te animal recusabo moderatius, homero blandit erroribus nec te.</p>';

EXECUTE AddPost @CategoryID, @UserID, @Title, @CoverImgURL,@Body, @PostID

SELECT 
	@CategoryID = 3, 
	@UserID = '6dc67935-e819-445e-94cc-cb85d97bd56c', 
	@Title = 'Test Post Title',
	@CoverImgURL = 'http://localhost:54909/Content/img/eating.jpg',
	@Body = '<p>Lorem ipsum dolor sit amet, vocent posidonium pri ei, vel regione democritum cu. An sint aliquip insolens per, ex sint etiam pro. Eam at omnis inciderint consequuntur, mel euismod patrioque ei, eam admodum consetetur ei. Eu maiestatis percipitur qui. Est partem vivendo elaboraret an. Vim ad dicit iuvaret delicata, fugit audire forensibus no nec, ad congue essent nusquam qui. Cum in eirmod concludaturque. Ea deleniti appellantur dissentiunt mei. Choro dicam petentium eos ei. Has id utinam invidunt tacimates, mazim nostro rationibus eos at. His voluptua splendide omittantur an, ut usu nisl sint cibo. Has te animal recusabo moderatius, homero blandit erroribus nec te.</p><p>Lorem ipsum dolor sit amet, vocent posidonium pri ei, vel regione democritum cu. An sint aliquip insolens per, ex sint etiam pro. Eam at omnis inciderint consequuntur, mel euismod patrioque ei, eam admodum consetetur ei. Eu maiestatis percipitur qui. Est partem vivendo elaboraret an. Vim ad dicit iuvaret delicata, fugit audire forensibus no nec, ad congue essent nusquam qui. Cum in eirmod concludaturque. Ea deleniti appellantur dissentiunt mei. Choro dicam petentium eos ei. Has id utinam invidunt tacimates, mazim nostro rationibus eos at. His voluptua splendide omittantur an, ut usu nisl sint cibo. Has te animal recusabo moderatius, homero blandit erroribus nec te.</p>';

EXECUTE AddPost @CategoryID, @UserID, @Title, @CoverImgURL,@Body, @PostID
GO
--------------------------------------------------End------------------------------------------------



--------------------------------------Populate Posts x HashTags--------------------------------------

USE HealthBlogDB
GO

DECLARE 
	@PostID			int,
	@ActualHashTag	nvarchar(1000)

SELECT 
	@PostID = 1, 
	@ActualHashTag =  '#HealthyEating' 

EXECUTE AddTag @PostID, @ActualHashTag

SELECT 
	@PostID = 1, 
	@ActualHashTag =  '#Food' 

EXECUTE AddTag @PostID, @ActualHashTag

SELECT 
	@PostID = 1, 
	@ActualHashTag =  '#Nutrition' 

EXECUTE AddTag @PostID, @ActualHashTag

SELECT 
	@PostID = 1, 
	@ActualHashTag =  '#HealthySnacks' 

EXECUTE AddTag @PostID, @ActualHashTag

SELECT 
	@PostID = 1, 
	@ActualHashTag =  '#GreatFood' 

EXECUTE AddTag @PostID, @ActualHashTag

SELECT 
	@PostID = 1, 
	@ActualHashTag =  '#HealthyEating' 

EXECUTE AddTag @PostID, @ActualHashTag

SELECT 
	@PostID = 2, 
	@ActualHashTag =  '#GolfSwing' 

EXECUTE AddTag @PostID, @ActualHashTag

SELECT 
	@PostID = 2, 
	@ActualHashTag =  '#FoodForGolf' 

EXECUTE AddTag @PostID, @ActualHashTag

SELECT 
	@PostID = 2, 
	@ActualHashTag =  '#ImproveYourGam' 

EXECUTE AddTag @PostID, @ActualHashTag

SELECT 
	@PostID = 2, 
	@ActualHashTag =  '#Golfwods' 

EXECUTE AddTag @PostID, @ActualHashTag

SELECT 
	@PostID = 1, 
	@ActualHashTag =  '#HealthyEating' 

EXECUTE AddTag @PostID, @ActualHashTag

SELECT 
	@PostID = 1, 
	@ActualHashTag =  '#food' 

EXECUTE AddTag @PostID, @ActualHashTag

SELECT 
	@PostID = 1, 
	@ActualHashTag =  '#Nutrition' 

EXECUTE AddTag @PostID, @ActualHashTag

SELECT 
	@PostID = 1, 
	@ActualHashTag =  '#healthysnacks' 

EXECUTE AddTag @PostID, @ActualHashTag

SELECT 
	@PostID = 1, 
	@ActualHashTag =  '#Greatfood' 

SELECT 
	@PostID = 4, 
	@ActualHashTag =  '#golfswing' 

EXECUTE AddTag @PostID, @ActualHashTag

SELECT 
	@PostID = 4, 
	@ActualHashTag =  '#Golf' 

EXECUTE AddTag @PostID, @ActualHashTag

SELECT 
	@PostID = 4, 
	@ActualHashTag =  '#ImproveYourGam' 

EXECUTE AddTag @PostID, @ActualHashTag

SELECT 
	@PostID = 4, 
	@ActualHashTag =  '#GolfWODs' 

EXECUTE AddTag @PostID, @ActualHashTag
GO

--------------------------------------------------End------------------------------------------------