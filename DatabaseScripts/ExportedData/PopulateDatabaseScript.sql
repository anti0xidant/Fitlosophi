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
DBCC CHECKIDENT ('[StaticPage]', RESEED, 0)
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
	@UserID = '2de529d8-da47-4a71-bcd9-11e88099e191', 
	@Body = '<h2>Disclaimer</h2><p>Lorem ipsum dolor sit amet, vocent posidonium pri ei, vel regione democritum cu. An sint aliquip insolens per, ex sint etiam pro. Eam at omnis inciderint consequuntur, mel euismod patrioque ei, eam admodum consetetur ei. Eu maiestatis percipitur qui. Est partem vivendo elaboraret an. Vim ad dicit iuvaret delicata, fugit audire forensibus no nec, ad congue essent nusquam qui. Cum in eirmod concludaturque. Ea deleniti appellantur dissentiunt mei. Choro dicam petentium eos ei. Has id utinam invidunt tacimates, mazim nostro rationibus eos at. His voluptua splendide omittantur an, ut usu nisl sint cibo. Has te animal recusabo moderatius, homero blandit erroribus nec te.</p><p>Lorem ipsum dolor sit amet, vocent posidonium pri ei, vel regione democritum cu. An sint aliquip insolens per, ex sint etiam pro. Eam at omnis inciderint consequuntur, mel euismod patrioque ei, eam admodum consetetur ei. Eu maiestatis percipitur qui. Est partem vivendo elaboraret an. Vim ad dicit iuvaret delicata, fugit audire forensibus no nec, ad congue essent nusquam qui. Cum in eirmod concludaturque. Ea deleniti appellantur dissentiunt mei. Choro dicam petentium eos ei. Has id utinam invidunt tacimates, mazim nostro rationibus eos at. His voluptua splendide omittantur an, ut usu nisl sint cibo. Has te animal recusabo moderatius, homero blandit erroribus nec te.</p>';

EXECUTE AddStaticPage @ButtonName, @UserID, @Body, @StaticPageID


SELECT 
	@ButtonName = 'Weekly Meals', 
	@UserID = '2de529d8-da47-4a71-bcd9-11e88099e191', 
	@Body = '<h2>Weekly Meals</h2><p>Lorem ipsum dolor sit amet, vocent posidonium pri ei, vel regione democritum cu. An sint aliquip insolens per, ex sint etiam pro. Eam at omnis inciderint consequuntur, mel euismod patrioque ei, eam admodum consetetur ei. Eu maiestatis percipitur qui. Est partem vivendo elaboraret an. Vim ad dicit iuvaret delicata, fugit audire forensibus no nec, ad congue essent nusquam qui. Cum in eirmod concludaturque. Ea deleniti appellantur dissentiunt mei. Choro dicam petentium eos ei. Has id utinam invidunt tacimates, mazim nostro rationibus eos at. His voluptua splendide omittantur an, ut usu nisl sint cibo. Has te animal recusabo moderatius, homero blandit erroribus nec te.</p><p>Lorem ipsum dolor sit amet, vocent posidonium pri ei, vel regione democritum cu. An sint aliquip insolens per, ex sint etiam pro. Eam at omnis inciderint consequuntur, mel euismod patrioque ei, eam admodum consetetur ei. Eu maiestatis percipitur qui. Est partem vivendo elaboraret an. Vim ad dicit iuvaret delicata, fugit audire forensibus no nec, ad congue essent nusquam qui. Cum in eirmod concludaturque. Ea deleniti appellantur dissentiunt mei. Choro dicam petentium eos ei. Has id utinam invidunt tacimates, mazim nostro rationibus eos at. His voluptua splendide omittantur an, ut usu nisl sint cibo. Has te animal recusabo moderatius, homero blandit erroribus nec te.</p>';

EXECUTE AddStaticPage @ButtonName, @UserID, @Body, @StaticPageID


SELECT 
	@ButtonName = 'Author Bios', 
	@UserID = '2de529d8-da47-4a71-bcd9-11e88099e191', 
	@Body = '<h2>Author Bios</h2><p>Lorem ipsum dolor sit amet, vocent posidonium pri ei, vel regione democritum cu. An sint aliquip insolens per, ex sint etiam pro. Eam at omnis inciderint consequuntur, mel euismod patrioque ei, eam admodum consetetur ei. Eu maiestatis percipitur qui. Est partem vivendo elaboraret an. Vim ad dicit iuvaret delicata, fugit audire forensibus no nec, ad congue essent nusquam qui. Cum in eirmod concludaturque. Ea deleniti appellantur dissentiunt mei. Choro dicam petentium eos ei. Has id utinam invidunt tacimates, mazim nostro rationibus eos at. His voluptua splendide omittantur an, ut usu nisl sint cibo. Has te animal recusabo moderatius, homero blandit erroribus nec te.</p><p>Lorem ipsum dolor sit amet, vocent posidonium pri ei, vel regione democritum cu. An sint aliquip insolens per, ex sint etiam pro. Eam at omnis inciderint consequuntur, mel euismod patrioque ei, eam admodum consetetur ei. Eu maiestatis percipitur qui. Est partem vivendo elaboraret an. Vim ad dicit iuvaret delicata, fugit audire forensibus no nec, ad congue essent nusquam qui. Cum in eirmod concludaturque. Ea deleniti appellantur dissentiunt mei. Choro dicam petentium eos ei. Has id utinam invidunt tacimates, mazim nostro rationibus eos at. His voluptua splendide omittantur an, ut usu nisl sint cibo. Has te animal recusabo moderatius, homero blandit erroribus nec te.</p>';

EXECUTE AddStaticPage @ButtonName, @UserID, @Body, @StaticPageID


SELECT 
	@ButtonName = 'Fitness Websites', 
	@UserID = '2de529d8-da47-4a71-bcd9-11e88099e191', 
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

SELECT 
	@CategoryName = 'Organic' 

EXECUTE AddNewCategory @CategoryName

SELECT 
	@CategoryName = 'Nature' 

EXECUTE AddNewCategory @CategoryName

SELECT 
	@CategoryName = 'Martial Arts' 

EXECUTE AddNewCategory @CategoryName

SELECT 
	@CategoryName = 'Diet' 

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
	@CategoryID = 4, 
	@UserID = '2de529d8-da47-4a71-bcd9-11e88099e191', 
	@Title = 'Golf Swing Workouts',
	@CoverImgURL = 'http://localhost:54909/Content/img/Golf.jpg',
	@Body = '<p>Lorem ipsum dolor sit amet, vocent posidonium pri ei, vel regione democritum cu. An sint aliquip insolens per, ex sint etiam pro. Eam at omnis inciderint consequuntur, mel euismod patrioque ei, eam admodum consetetur ei. Eu maiestatis percipitur qui. Est partem vivendo elaboraret an. Vim ad dicit iuvaret delicata, fugit audire forensibus no nec, ad congue essent nusquam qui. Cum in eirmod concludaturque. Ea deleniti appellantur dissentiunt mei. Choro dicam petentium eos ei. Has id utinam invidunt tacimates, mazim nostro rationibus eos at. His voluptua splendide omittantur an, ut usu nisl sint cibo. Has te animal recusabo moderatius, homero blandit erroribus nec te.</p><p>Lorem ipsum dolor sit amet, vocent posidonium pri ei, vel regione democritum cu. An sint aliquip insolens per, ex sint etiam pro. Eam at omnis inciderint consequuntur, mel euismod patrioque ei, eam admodum consetetur ei. Eu maiestatis percipitur qui. Est partem vivendo elaboraret an. Vim ad dicit iuvaret delicata, fugit audire forensibus no nec, ad congue essent nusquam qui. Cum in eirmod concludaturque. Ea deleniti appellantur dissentiunt mei. Choro dicam petentium eos ei. Has id utinam invidunt tacimates, mazim nostro rationibus eos at. His voluptua splendide omittantur an, ut usu nisl sint cibo. Has te animal recusabo moderatius, homero blandit erroribus nec te.</p>';

EXECUTE AddPost @CategoryID, @UserID, @Title, @CoverImgURL, @Body, @PostID

SELECT 
	@CategoryID = 2, 
	@UserID = '2de529d8-da47-4a71-bcd9-11e88099e191', 
	@Title = '5 Tips for Healthy Eating',
	@CoverImgURL = 'http://localhost:54909/Content/img/food.jpg',
	@Body = '<p>Lorem ipsum dolor sit amet, vocent posidonium pri ei, vel regione democritum cu. An sint aliquip insolens per, ex sint etiam pro. Eam at omnis inciderint consequuntur, mel euismod patrioque ei, eam admodum consetetur ei. Eu maiestatis percipitur qui. Est partem vivendo elaboraret an. Vim ad dicit iuvaret delicata, fugit audire forensibus no nec, ad congue essent nusquam qui. Cum in eirmod concludaturque. Ea deleniti appellantur dissentiunt mei. Choro dicam petentium eos ei. Has id utinam invidunt tacimates, mazim nostro rationibus eos at. His voluptua splendide omittantur an, ut usu nisl sint cibo. Has te animal recusabo moderatius, homero blandit erroribus nec te.</p><p>Lorem ipsum dolor sit amet, vocent posidonium pri ei, vel regione democritum cu. An sint aliquip insolens per, ex sint etiam pro. Eam at omnis inciderint consequuntur, mel euismod patrioque ei, eam admodum consetetur ei. Eu maiestatis percipitur qui. Est partem vivendo elaboraret an. Vim ad dicit iuvaret delicata, fugit audire forensibus no nec, ad congue essent nusquam qui. Cum in eirmod concludaturque. Ea deleniti appellantur dissentiunt mei. Choro dicam petentium eos ei. Has id utinam invidunt tacimates, mazim nostro rationibus eos at. His voluptua splendide omittantur an, ut usu nisl sint cibo. Has te animal recusabo moderatius, homero blandit erroribus nec te.</p>';

EXECUTE AddPost @CategoryID, @UserID, @Title, @CoverImgURL, @Body, @PostID

SELECT 
	@CategoryID = 5, 
	@UserID = '2de529d8-da47-4a71-bcd9-11e88099e191', 
	@Title = 'Preparing for a Competition',
	@CoverImgURL = 'http://localhost:54909/Content/img/CrossFit.jpg',
	@Body = '<p>Lorem ipsum dolor sit amet, vocent posidonium pri ei, vel regione democritum cu. An sint aliquip insolens per, ex sint etiam pro. Eam at omnis inciderint consequuntur, mel euismod patrioque ei, eam admodum consetetur ei. Eu maiestatis percipitur qui. Est partem vivendo elaboraret an. Vim ad dicit iuvaret delicata, fugit audire forensibus no nec, ad congue essent nusquam qui. Cum in eirmod concludaturque. Ea deleniti appellantur dissentiunt mei. Choro dicam petentium eos ei. Has id utinam invidunt tacimates, mazim nostro rationibus eos at. His voluptua splendide omittantur an, ut usu nisl sint cibo. Has te animal recusabo moderatius, homero blandit erroribus nec te.</p><p>Lorem ipsum dolor sit amet, vocent posidonium pri ei, vel regione democritum cu. An sint aliquip insolens per, ex sint etiam pro. Eam at omnis inciderint consequuntur, mel euismod patrioque ei, eam admodum consetetur ei. Eu maiestatis percipitur qui. Est partem vivendo elaboraret an. Vim ad dicit iuvaret delicata, fugit audire forensibus no nec, ad congue essent nusquam qui. Cum in eirmod concludaturque. Ea deleniti appellantur dissentiunt mei. Choro dicam petentium eos ei. Has id utinam invidunt tacimates, mazim nostro rationibus eos at. His voluptua splendide omittantur an, ut usu nisl sint cibo. Has te animal recusabo moderatius, homero blandit erroribus nec te.</p>';

EXECUTE AddPost @CategoryID, @UserID, @Title, @CoverImgURL,@Body, @PostID

SELECT 
	@CategoryID = 1, 
	@UserID = '2de529d8-da47-4a71-bcd9-11e88099e191', 
	@Title = 'Healthy Eating Habits',
	@CoverImgURL = 'http://localhost:54909/Content/img/eating.jpg',
	@Body = '<p>Lorem ipsum dolor sit amet, vocent posidonium pri ei, vel regione democritum cu. An sint aliquip insolens per, ex sint etiam pro. Eam at omnis inciderint consequuntur, mel euismod patrioque ei, eam admodum consetetur ei. Eu maiestatis percipitur qui. Est partem vivendo elaboraret an. Vim ad dicit iuvaret delicata, fugit audire forensibus no nec, ad congue essent nusquam qui. Cum in eirmod concludaturque. Ea deleniti appellantur dissentiunt mei. Choro dicam petentium eos ei. Has id utinam invidunt tacimates, mazim nostro rationibus eos at. His voluptua splendide omittantur an, ut usu nisl sint cibo. Has te animal recusabo moderatius, homero blandit erroribus nec te.</p><p>Lorem ipsum dolor sit amet, vocent posidonium pri ei, vel regione democritum cu. An sint aliquip insolens per, ex sint etiam pro. Eam at omnis inciderint consequuntur, mel euismod patrioque ei, eam admodum consetetur ei. Eu maiestatis percipitur qui. Est partem vivendo elaboraret an. Vim ad dicit iuvaret delicata, fugit audire forensibus no nec, ad congue essent nusquam qui. Cum in eirmod concludaturque. Ea deleniti appellantur dissentiunt mei. Choro dicam petentium eos ei. Has id utinam invidunt tacimates, mazim nostro rationibus eos at. His voluptua splendide omittantur an, ut usu nisl sint cibo. Has te animal recusabo moderatius, homero blandit erroribus nec te.</p>';

EXECUTE AddPost @CategoryID, @UserID, @Title, @CoverImgURL,@Body, @PostID

SELECT 
	@CategoryID = 3, 
	@UserID = '2de529d8-da47-4a71-bcd9-11e88099e191', 
	@Title = 'Benefits of Eating Dark Chocolate',
	@CoverImgURL = 'http://localhost:54909/Content/img/DarkChocolate.jpg',
	@Body = '<p>Lorem ipsum dolor sit amet, vocent posidonium pri ei, vel regione democritum cu. An sint aliquip insolens per, ex sint etiam pro. Eam at omnis inciderint consequuntur, mel euismod patrioque ei, eam admodum consetetur ei. Eu maiestatis percipitur qui. Est partem vivendo elaboraret an. Vim ad dicit iuvaret delicata, fugit audire forensibus no nec, ad congue essent nusquam qui. Cum in eirmod concludaturque. Ea deleniti appellantur dissentiunt mei. Choro dicam petentium eos ei. Has id utinam invidunt tacimates, mazim nostro rationibus eos at. His voluptua splendide omittantur an, ut usu nisl sint cibo. Has te animal recusabo moderatius, homero blandit erroribus nec te.</p><p>Lorem ipsum dolor sit amet, vocent posidonium pri ei, vel regione democritum cu. An sint aliquip insolens per, ex sint etiam pro. Eam at omnis inciderint consequuntur, mel euismod patrioque ei, eam admodum consetetur ei. Eu maiestatis percipitur qui. Est partem vivendo elaboraret an. Vim ad dicit iuvaret delicata, fugit audire forensibus no nec, ad congue essent nusquam qui. Cum in eirmod concludaturque. Ea deleniti appellantur dissentiunt mei. Choro dicam petentium eos ei. Has id utinam invidunt tacimates, mazim nostro rationibus eos at. His voluptua splendide omittantur an, ut usu nisl sint cibo. Has te animal recusabo moderatius, homero blandit erroribus nec te.</p>';

EXECUTE AddPost @CategoryID, @UserID, @Title, @CoverImgURL,@Body, @PostID

SELECT 
	@CategoryID = 3, 
	@UserID = '2de529d8-da47-4a71-bcd9-11e88099e191', 
	@Title = 'Benefits of Biking',
	@CoverImgURL = 'http://localhost:54909/Content/img/Bike.jpg',
	@Body = '<p>Lorem ipsum dolor sit amet, vocent posidonium pri ei, vel regione democritum cu. An sint aliquip insolens per, ex sint etiam pro. Eam at omnis inciderint consequuntur, mel euismod patrioque ei, eam admodum consetetur ei. Eu maiestatis percipitur qui. Est partem vivendo elaboraret an. Vim ad dicit iuvaret delicata, fugit audire forensibus no nec, ad congue essent nusquam qui. Cum in eirmod concludaturque. Ea deleniti appellantur dissentiunt mei. Choro dicam petentium eos ei. Has id utinam invidunt tacimates, mazim nostro rationibus eos at. His voluptua splendide omittantur an, ut usu nisl sint cibo. Has te animal recusabo moderatius, homero blandit erroribus nec te.</p><p>Lorem ipsum dolor sit amet, vocent posidonium pri ei, vel regione democritum cu. An sint aliquip insolens per, ex sint etiam pro. Eam at omnis inciderint consequuntur, mel euismod patrioque ei, eam admodum consetetur ei. Eu maiestatis percipitur qui. Est partem vivendo elaboraret an. Vim ad dicit iuvaret delicata, fugit audire forensibus no nec, ad congue essent nusquam qui. Cum in eirmod concludaturque. Ea deleniti appellantur dissentiunt mei. Choro dicam petentium eos ei. Has id utinam invidunt tacimates, mazim nostro rationibus eos at. His voluptua splendide omittantur an, ut usu nisl sint cibo. Has te animal recusabo moderatius, homero blandit erroribus nec te.</p>';

EXECUTE AddPost @CategoryID, @UserID, @Title, @CoverImgURL,@Body, @PostID

SELECT 
	@CategoryID = 3, 
	@UserID = '2de529d8-da47-4a71-bcd9-11e88099e191', 
	@Title = 'New Ways Of Staying Fit',
	@CoverImgURL = 'http://localhost:54909/Content/img/Boxing.jpg',
	@Body = '<p>Lorem ipsum dolor sit amet, vocent posidonium pri ei, vel regione democritum cu. An sint aliquip insolens per, ex sint etiam pro. Eam at omnis inciderint consequuntur, mel euismod patrioque ei, eam admodum consetetur ei. Eu maiestatis percipitur qui. Est partem vivendo elaboraret an. Vim ad dicit iuvaret delicata, fugit audire forensibus no nec, ad congue essent nusquam qui. Cum in eirmod concludaturque. Ea deleniti appellantur dissentiunt mei. Choro dicam petentium eos ei. Has id utinam invidunt tacimates, mazim nostro rationibus eos at. His voluptua splendide omittantur an, ut usu nisl sint cibo. Has te animal recusabo moderatius, homero blandit erroribus nec te.</p><p>Lorem ipsum dolor sit amet, vocent posidonium pri ei, vel regione democritum cu. An sint aliquip insolens per, ex sint etiam pro. Eam at omnis inciderint consequuntur, mel euismod patrioque ei, eam admodum consetetur ei. Eu maiestatis percipitur qui. Est partem vivendo elaboraret an. Vim ad dicit iuvaret delicata, fugit audire forensibus no nec, ad congue essent nusquam qui. Cum in eirmod concludaturque. Ea deleniti appellantur dissentiunt mei. Choro dicam petentium eos ei. Has id utinam invidunt tacimates, mazim nostro rationibus eos at. His voluptua splendide omittantur an, ut usu nisl sint cibo. Has te animal recusabo moderatius, homero blandit erroribus nec te.</p>';

EXECUTE AddPost @CategoryID, @UserID, @Title, @CoverImgURL,@Body, @PostID

SELECT 
	@CategoryID = 2, 
	@UserID = '2de529d8-da47-4a71-bcd9-11e88099e191', 
	@Title = 'How To Enjoy Cooking',
	@CoverImgURL = 'http://localhost:54909/Content/img/Cooking.jpg',
	@Body = '<p>Lorem ipsum dolor sit amet, vocent posidonium pri ei, vel regione democritum cu. An sint aliquip insolens per, ex sint etiam pro. Eam at omnis inciderint consequuntur, mel euismod patrioque ei, eam admodum consetetur ei. Eu maiestatis percipitur qui. Est partem vivendo elaboraret an. Vim ad dicit iuvaret delicata, fugit audire forensibus no nec, ad congue essent nusquam qui. Cum in eirmod concludaturque. Ea deleniti appellantur dissentiunt mei. Choro dicam petentium eos ei. Has id utinam invidunt tacimates, mazim nostro rationibus eos at. His voluptua splendide omittantur an, ut usu nisl sint cibo. Has te animal recusabo moderatius, homero blandit erroribus nec te.</p><p>Lorem ipsum dolor sit amet, vocent posidonium pri ei, vel regione democritum cu. An sint aliquip insolens per, ex sint etiam pro. Eam at omnis inciderint consequuntur, mel euismod patrioque ei, eam admodum consetetur ei. Eu maiestatis percipitur qui. Est partem vivendo elaboraret an. Vim ad dicit iuvaret delicata, fugit audire forensibus no nec, ad congue essent nusquam qui. Cum in eirmod concludaturque. Ea deleniti appellantur dissentiunt mei. Choro dicam petentium eos ei. Has id utinam invidunt tacimates, mazim nostro rationibus eos at. His voluptua splendide omittantur an, ut usu nisl sint cibo. Has te animal recusabo moderatius, homero blandit erroribus nec te.</p>';

EXECUTE AddPost @CategoryID, @UserID, @Title, @CoverImgURL,@Body, @PostID

SELECT 
	@CategoryID = 2, 
	@UserID = '2de529d8-da47-4a71-bcd9-11e88099e191', 
	@Title = 'Eggs Are The Key',
	@CoverImgURL = 'http://localhost:54909/Content/img/Eggs.jpg',
	@Body = '<p>Lorem ipsum dolor sit amet, vocent posidonium pri ei, vel regione democritum cu. An sint aliquip insolens per, ex sint etiam pro. Eam at omnis inciderint consequuntur, mel euismod patrioque ei, eam admodum consetetur ei. Eu maiestatis percipitur qui. Est partem vivendo elaboraret an. Vim ad dicit iuvaret delicata, fugit audire forensibus no nec, ad congue essent nusquam qui. Cum in eirmod concludaturque. Ea deleniti appellantur dissentiunt mei. Choro dicam petentium eos ei. Has id utinam invidunt tacimates, mazim nostro rationibus eos at. His voluptua splendide omittantur an, ut usu nisl sint cibo. Has te animal recusabo moderatius, homero blandit erroribus nec te.</p><p>Lorem ipsum dolor sit amet, vocent posidonium pri ei, vel regione democritum cu. An sint aliquip insolens per, ex sint etiam pro. Eam at omnis inciderint consequuntur, mel euismod patrioque ei, eam admodum consetetur ei. Eu maiestatis percipitur qui. Est partem vivendo elaboraret an. Vim ad dicit iuvaret delicata, fugit audire forensibus no nec, ad congue essent nusquam qui. Cum in eirmod concludaturque. Ea deleniti appellantur dissentiunt mei. Choro dicam petentium eos ei. Has id utinam invidunt tacimates, mazim nostro rationibus eos at. His voluptua splendide omittantur an, ut usu nisl sint cibo. Has te animal recusabo moderatius, homero blandit erroribus nec te.</p>';

EXECUTE AddPost @CategoryID, @UserID, @Title, @CoverImgURL,@Body, @PostID

SELECT 
	@CategoryID = 6, 
	@UserID = '2de529d8-da47-4a71-bcd9-11e88099e191', 
	@Title = 'Say No To Junk Food',
	@CoverImgURL = 'http://localhost:54909/Content/img/Kickbad.jpg',
	@Body = '<p>Lorem ipsum dolor sit amet, vocent posidonium pri ei, vel regione democritum cu. An sint aliquip insolens per, ex sint etiam pro. Eam at omnis inciderint consequuntur, mel euismod patrioque ei, eam admodum consetetur ei. Eu maiestatis percipitur qui. Est partem vivendo elaboraret an. Vim ad dicit iuvaret delicata, fugit audire forensibus no nec, ad congue essent nusquam qui. Cum in eirmod concludaturque. Ea deleniti appellantur dissentiunt mei. Choro dicam petentium eos ei. Has id utinam invidunt tacimates, mazim nostro rationibus eos at. His voluptua splendide omittantur an, ut usu nisl sint cibo. Has te animal recusabo moderatius, homero blandit erroribus nec te.</p><p>Lorem ipsum dolor sit amet, vocent posidonium pri ei, vel regione democritum cu. An sint aliquip insolens per, ex sint etiam pro. Eam at omnis inciderint consequuntur, mel euismod patrioque ei, eam admodum consetetur ei. Eu maiestatis percipitur qui. Est partem vivendo elaboraret an. Vim ad dicit iuvaret delicata, fugit audire forensibus no nec, ad congue essent nusquam qui. Cum in eirmod concludaturque. Ea deleniti appellantur dissentiunt mei. Choro dicam petentium eos ei. Has id utinam invidunt tacimates, mazim nostro rationibus eos at. His voluptua splendide omittantur an, ut usu nisl sint cibo. Has te animal recusabo moderatius, homero blandit erroribus nec te.</p>';

EXECUTE AddPost @CategoryID, @UserID, @Title, @CoverImgURL,@Body, @PostID

SELECT 
	@CategoryID = 4, 
	@UserID = '2de529d8-da47-4a71-bcd9-11e88099e191', 
	@Title = 'Great Places To Exercises',
	@CoverImgURL = 'http://localhost:54909/Content/img/NatureKick.jpg',
	@Body = '<p>Lorem ipsum dolor sit amet, vocent posidonium pri ei, vel regione democritum cu. An sint aliquip insolens per, ex sint etiam pro. Eam at omnis inciderint consequuntur, mel euismod patrioque ei, eam admodum consetetur ei. Eu maiestatis percipitur qui. Est partem vivendo elaboraret an. Vim ad dicit iuvaret delicata, fugit audire forensibus no nec, ad congue essent nusquam qui. Cum in eirmod concludaturque. Ea deleniti appellantur dissentiunt mei. Choro dicam petentium eos ei. Has id utinam invidunt tacimates, mazim nostro rationibus eos at. His voluptua splendide omittantur an, ut usu nisl sint cibo. Has te animal recusabo moderatius, homero blandit erroribus nec te.</p><p>Lorem ipsum dolor sit amet, vocent posidonium pri ei, vel regione democritum cu. An sint aliquip insolens per, ex sint etiam pro. Eam at omnis inciderint consequuntur, mel euismod patrioque ei, eam admodum consetetur ei. Eu maiestatis percipitur qui. Est partem vivendo elaboraret an. Vim ad dicit iuvaret delicata, fugit audire forensibus no nec, ad congue essent nusquam qui. Cum in eirmod concludaturque. Ea deleniti appellantur dissentiunt mei. Choro dicam petentium eos ei. Has id utinam invidunt tacimates, mazim nostro rationibus eos at. His voluptua splendide omittantur an, ut usu nisl sint cibo. Has te animal recusabo moderatius, homero blandit erroribus nec te.</p>';

EXECUTE AddPost @CategoryID, @UserID, @Title, @CoverImgURL,@Body, @PostID

SELECT 
	@CategoryID = 1, 
	@UserID = '5f91df2b-98f2-47a8-aa09-6467f58ffc43', 
	@Title = 'Great Recipes For Healthy Food',
	@CoverImgURL = 'http://localhost:54909/Content/img/Recipes.jpg',
	@Body = '<p>Lorem ipsum dolor sit amet, vocent posidonium pri ei, vel regione democritum cu. An sint aliquip insolens per, ex sint etiam pro. Eam at omnis inciderint consequuntur, mel euismod patrioque ei, eam admodum consetetur ei. Eu maiestatis percipitur qui. Est partem vivendo elaboraret an. Vim ad dicit iuvaret delicata, fugit audire forensibus no nec, ad congue essent nusquam qui. Cum in eirmod concludaturque. Ea deleniti appellantur dissentiunt mei. Choro dicam petentium eos ei. Has id utinam invidunt tacimates, mazim nostro rationibus eos at. His voluptua splendide omittantur an, ut usu nisl sint cibo. Has te animal recusabo moderatius, homero blandit erroribus nec te.</p><p>Lorem ipsum dolor sit amet, vocent posidonium pri ei, vel regione democritum cu. An sint aliquip insolens per, ex sint etiam pro. Eam at omnis inciderint consequuntur, mel euismod patrioque ei, eam admodum consetetur ei. Eu maiestatis percipitur qui. Est partem vivendo elaboraret an. Vim ad dicit iuvaret delicata, fugit audire forensibus no nec, ad congue essent nusquam qui. Cum in eirmod concludaturque. Ea deleniti appellantur dissentiunt mei. Choro dicam petentium eos ei. Has id utinam invidunt tacimates, mazim nostro rationibus eos at. His voluptua splendide omittantur an, ut usu nisl sint cibo. Has te animal recusabo moderatius, homero blandit erroribus nec te.</p>';

EXECUTE AddPost @CategoryID, @UserID, @Title, @CoverImgURL,@Body, @PostID

SELECT 
	@CategoryID = 5, 
	@UserID = '5f91df2b-98f2-47a8-aa09-6467f58ffc43', 
	@Title = 'Run And Run Some More',
	@CoverImgURL = 'http://localhost:54909/Content/img/Run.jpg',
	@Body = '<p>Lorem ipsum dolor sit amet, vocent posidonium pri ei, vel regione democritum cu. An sint aliquip insolens per, ex sint etiam pro. Eam at omnis inciderint consequuntur, mel euismod patrioque ei, eam admodum consetetur ei. Eu maiestatis percipitur qui. Est partem vivendo elaboraret an. Vim ad dicit iuvaret delicata, fugit audire forensibus no nec, ad congue essent nusquam qui. Cum in eirmod concludaturque. Ea deleniti appellantur dissentiunt mei. Choro dicam petentium eos ei. Has id utinam invidunt tacimates, mazim nostro rationibus eos at. His voluptua splendide omittantur an, ut usu nisl sint cibo. Has te animal recusabo moderatius, homero blandit erroribus nec te.</p><p>Lorem ipsum dolor sit amet, vocent posidonium pri ei, vel regione democritum cu. An sint aliquip insolens per, ex sint etiam pro. Eam at omnis inciderint consequuntur, mel euismod patrioque ei, eam admodum consetetur ei. Eu maiestatis percipitur qui. Est partem vivendo elaboraret an. Vim ad dicit iuvaret delicata, fugit audire forensibus no nec, ad congue essent nusquam qui. Cum in eirmod concludaturque. Ea deleniti appellantur dissentiunt mei. Choro dicam petentium eos ei. Has id utinam invidunt tacimates, mazim nostro rationibus eos at. His voluptua splendide omittantur an, ut usu nisl sint cibo. Has te animal recusabo moderatius, homero blandit erroribus nec te.</p>';

EXECUTE AddPost @CategoryID, @UserID, @Title, @CoverImgURL,@Body, @PostID

SELECT 
	@CategoryID = 2, 
	@UserID = '5f91df2b-98f2-47a8-aa09-6467f58ffc43', 
	@Title = 'Organic Is The Way To Go',
	@CoverImgURL = 'http://localhost:54909/Content/img/SeeOrganic.jpg',
	@Body = '<p>Lorem ipsum dolor sit amet, vocent posidonium pri ei, vel regione democritum cu. An sint aliquip insolens per, ex sint etiam pro. Eam at omnis inciderint consequuntur, mel euismod patrioque ei, eam admodum consetetur ei. Eu maiestatis percipitur qui. Est partem vivendo elaboraret an. Vim ad dicit iuvaret delicata, fugit audire forensibus no nec, ad congue essent nusquam qui. Cum in eirmod concludaturque. Ea deleniti appellantur dissentiunt mei. Choro dicam petentium eos ei. Has id utinam invidunt tacimates, mazim nostro rationibus eos at. His voluptua splendide omittantur an, ut usu nisl sint cibo. Has te animal recusabo moderatius, homero blandit erroribus nec te.</p><p>Lorem ipsum dolor sit amet, vocent posidonium pri ei, vel regione democritum cu. An sint aliquip insolens per, ex sint etiam pro. Eam at omnis inciderint consequuntur, mel euismod patrioque ei, eam admodum consetetur ei. Eu maiestatis percipitur qui. Est partem vivendo elaboraret an. Vim ad dicit iuvaret delicata, fugit audire forensibus no nec, ad congue essent nusquam qui. Cum in eirmod concludaturque. Ea deleniti appellantur dissentiunt mei. Choro dicam petentium eos ei. Has id utinam invidunt tacimates, mazim nostro rationibus eos at. His voluptua splendide omittantur an, ut usu nisl sint cibo. Has te animal recusabo moderatius, homero blandit erroribus nec te.</p>';

EXECUTE AddPost @CategoryID, @UserID, @Title, @CoverImgURL,@Body, @PostID

SELECT 
	@CategoryID = 2, 
	@UserID = '5f91df2b-98f2-47a8-aa09-6467f58ffc43', 
	@Title = 'Top 10 Spices For Great Cooking',
	@CoverImgURL = 'http://localhost:54909/Content/img/Spices.jpg',
	@Body = '<p>Lorem ipsum dolor sit amet, vocent posidonium pri ei, vel regione democritum cu. An sint aliquip insolens per, ex sint etiam pro. Eam at omnis inciderint consequuntur, mel euismod patrioque ei, eam admodum consetetur ei. Eu maiestatis percipitur qui. Est partem vivendo elaboraret an. Vim ad dicit iuvaret delicata, fugit audire forensibus no nec, ad congue essent nusquam qui. Cum in eirmod concludaturque. Ea deleniti appellantur dissentiunt mei. Choro dicam petentium eos ei. Has id utinam invidunt tacimates, mazim nostro rationibus eos at. His voluptua splendide omittantur an, ut usu nisl sint cibo. Has te animal recusabo moderatius, homero blandit erroribus nec te.</p><p>Lorem ipsum dolor sit amet, vocent posidonium pri ei, vel regione democritum cu. An sint aliquip insolens per, ex sint etiam pro. Eam at omnis inciderint consequuntur, mel euismod patrioque ei, eam admodum consetetur ei. Eu maiestatis percipitur qui. Est partem vivendo elaboraret an. Vim ad dicit iuvaret delicata, fugit audire forensibus no nec, ad congue essent nusquam qui. Cum in eirmod concludaturque. Ea deleniti appellantur dissentiunt mei. Choro dicam petentium eos ei. Has id utinam invidunt tacimates, mazim nostro rationibus eos at. His voluptua splendide omittantur an, ut usu nisl sint cibo. Has te animal recusabo moderatius, homero blandit erroribus nec te.</p>';

EXECUTE AddPost @CategoryID, @UserID, @Title, @CoverImgURL,@Body, @PostID

SELECT 
	@CategoryID = 1, 
	@UserID = '5f91df2b-98f2-47a8-aa09-6467f58ffc43', 
	@Title = 'Mouth Watering Health Meals',
	@CoverImgURL = 'http://localhost:54909/Content/img/Tasty.jpg',
	@Body = '<p>Lorem ipsum dolor sit amet, vocent posidonium pri ei, vel regione democritum cu. An sint aliquip insolens per, ex sint etiam pro. Eam at omnis inciderint consequuntur, mel euismod patrioque ei, eam admodum consetetur ei. Eu maiestatis percipitur qui. Est partem vivendo elaboraret an. Vim ad dicit iuvaret delicata, fugit audire forensibus no nec, ad congue essent nusquam qui. Cum in eirmod concludaturque. Ea deleniti appellantur dissentiunt mei. Choro dicam petentium eos ei. Has id utinam invidunt tacimates, mazim nostro rationibus eos at. His voluptua splendide omittantur an, ut usu nisl sint cibo. Has te animal recusabo moderatius, homero blandit erroribus nec te.</p><p>Lorem ipsum dolor sit amet, vocent posidonium pri ei, vel regione democritum cu. An sint aliquip insolens per, ex sint etiam pro. Eam at omnis inciderint consequuntur, mel euismod patrioque ei, eam admodum consetetur ei. Eu maiestatis percipitur qui. Est partem vivendo elaboraret an. Vim ad dicit iuvaret delicata, fugit audire forensibus no nec, ad congue essent nusquam qui. Cum in eirmod concludaturque. Ea deleniti appellantur dissentiunt mei. Choro dicam petentium eos ei. Has id utinam invidunt tacimates, mazim nostro rationibus eos at. His voluptua splendide omittantur an, ut usu nisl sint cibo. Has te animal recusabo moderatius, homero blandit erroribus nec te.</p>';

EXECUTE AddPost @CategoryID, @UserID, @Title, @CoverImgURL,@Body, @PostID


SELECT 
	@CategoryID = 3, 
	@UserID = '5f91df2b-98f2-47a8-aa09-6467f58ffc43', 
	@Title = 'Veggies Are Your Friend',
	@CoverImgURL = 'http://localhost:54909/Content/img/Vegetable.jpg',
	@Body = '<p>Lorem ipsum dolor sit amet, vocent posidonium pri ei, vel regione democritum cu. An sint aliquip insolens per, ex sint etiam pro. Eam at omnis inciderint consequuntur, mel euismod patrioque ei, eam admodum consetetur ei. Eu maiestatis percipitur qui. Est partem vivendo elaboraret an. Vim ad dicit iuvaret delicata, fugit audire forensibus no nec, ad congue essent nusquam qui. Cum in eirmod concludaturque. Ea deleniti appellantur dissentiunt mei. Choro dicam petentium eos ei. Has id utinam invidunt tacimates, mazim nostro rationibus eos at. His voluptua splendide omittantur an, ut usu nisl sint cibo. Has te animal recusabo moderatius, homero blandit erroribus nec te.</p><p>Lorem ipsum dolor sit amet, vocent posidonium pri ei, vel regione democritum cu. An sint aliquip insolens per, ex sint etiam pro. Eam at omnis inciderint consequuntur, mel euismod patrioque ei, eam admodum consetetur ei. Eu maiestatis percipitur qui. Est partem vivendo elaboraret an. Vim ad dicit iuvaret delicata, fugit audire forensibus no nec, ad congue essent nusquam qui. Cum in eirmod concludaturque. Ea deleniti appellantur dissentiunt mei. Choro dicam petentium eos ei. Has id utinam invidunt tacimates, mazim nostro rationibus eos at. His voluptua splendide omittantur an, ut usu nisl sint cibo. Has te animal recusabo moderatius, homero blandit erroribus nec te.</p>';

EXECUTE AddPost @CategoryID, @UserID, @Title, @CoverImgURL,@Body, @PostID


SELECT 
	@CategoryID = 4, 
	@UserID = '5f91df2b-98f2-47a8-aa09-6467f58ffc43', 
	@Title = 'Best Ways To Gain Muscle',
	@CoverImgURL = 'http://localhost:54909/Content/img/Weights.jpg',
	@Body = '<p>Lorem ipsum dolor sit amet, vocent posidonium pri ei, vel regione democritum cu. An sint aliquip insolens per, ex sint etiam pro. Eam at omnis inciderint consequuntur, mel euismod patrioque ei, eam admodum consetetur ei. Eu maiestatis percipitur qui. Est partem vivendo elaboraret an. Vim ad dicit iuvaret delicata, fugit audire forensibus no nec, ad congue essent nusquam qui. Cum in eirmod concludaturque. Ea deleniti appellantur dissentiunt mei. Choro dicam petentium eos ei. Has id utinam invidunt tacimates, mazim nostro rationibus eos at. His voluptua splendide omittantur an, ut usu nisl sint cibo. Has te animal recusabo moderatius, homero blandit erroribus nec te.</p><p>Lorem ipsum dolor sit amet, vocent posidonium pri ei, vel regione democritum cu. An sint aliquip insolens per, ex sint etiam pro. Eam at omnis inciderint consequuntur, mel euismod patrioque ei, eam admodum consetetur ei. Eu maiestatis percipitur qui. Est partem vivendo elaboraret an. Vim ad dicit iuvaret delicata, fugit audire forensibus no nec, ad congue essent nusquam qui. Cum in eirmod concludaturque. Ea deleniti appellantur dissentiunt mei. Choro dicam petentium eos ei. Has id utinam invidunt tacimates, mazim nostro rationibus eos at. His voluptua splendide omittantur an, ut usu nisl sint cibo. Has te animal recusabo moderatius, homero blandit erroribus nec te.</p>';

EXECUTE AddPost @CategoryID, @UserID, @Title, @CoverImgURL,@Body, @PostID


SELECT 
	@CategoryID = 6, 
	@UserID = '5f91df2b-98f2-47a8-aa09-6467f58ffc43', 
	@Title = 'Keys To Love Meditation',
	@CoverImgURL = 'http://localhost:54909/Content/img/yoga-pose.jpg',
	@Body = '<p>Lorem ipsum dolor sit amet, vocent posidonium pri ei, vel regione democritum cu. An sint aliquip insolens per, ex sint etiam pro. Eam at omnis inciderint consequuntur, mel euismod patrioque ei, eam admodum consetetur ei. Eu maiestatis percipitur qui. Est partem vivendo elaboraret an. Vim ad dicit iuvaret delicata, fugit audire forensibus no nec, ad congue essent nusquam qui. Cum in eirmod concludaturque. Ea deleniti appellantur dissentiunt mei. Choro dicam petentium eos ei. Has id utinam invidunt tacimates, mazim nostro rationibus eos at. His voluptua splendide omittantur an, ut usu nisl sint cibo. Has te animal recusabo moderatius, homero blandit erroribus nec te.</p><p>Lorem ipsum dolor sit amet, vocent posidonium pri ei, vel regione democritum cu. An sint aliquip insolens per, ex sint etiam pro. Eam at omnis inciderint consequuntur, mel euismod patrioque ei, eam admodum consetetur ei. Eu maiestatis percipitur qui. Est partem vivendo elaboraret an. Vim ad dicit iuvaret delicata, fugit audire forensibus no nec, ad congue essent nusquam qui. Cum in eirmod concludaturque. Ea deleniti appellantur dissentiunt mei. Choro dicam petentium eos ei. Has id utinam invidunt tacimates, mazim nostro rationibus eos at. His voluptua splendide omittantur an, ut usu nisl sint cibo. Has te animal recusabo moderatius, homero blandit erroribus nec te.</p>';

EXECUTE AddPost @CategoryID, @UserID, @Title, @CoverImgURL,@Body, @PostID

SELECT 
	@CategoryID = 5, 
	@UserID = '5f91df2b-98f2-47a8-aa09-6467f58ffc43', 
	@Title = 'Practice Your Martial Arts',
	@CoverImgURL = 'http://localhost:54909/Content/img/Waterfall.jpg',
	@Body = '<p>Lorem ipsum dolor sit amet, vocent posidonium pri ei, vel regione democritum cu. An sint aliquip insolens per, ex sint etiam pro. Eam at omnis inciderint consequuntur, mel euismod patrioque ei, eam admodum consetetur ei. Eu maiestatis percipitur qui. Est partem vivendo elaboraret an. Vim ad dicit iuvaret delicata, fugit audire forensibus no nec, ad congue essent nusquam qui. Cum in eirmod concludaturque. Ea deleniti appellantur dissentiunt mei. Choro dicam petentium eos ei. Has id utinam invidunt tacimates, mazim nostro rationibus eos at. His voluptua splendide omittantur an, ut usu nisl sint cibo. Has te animal recusabo moderatius, homero blandit erroribus nec te.</p><p>Lorem ipsum dolor sit amet, vocent posidonium pri ei, vel regione democritum cu. An sint aliquip insolens per, ex sint etiam pro. Eam at omnis inciderint consequuntur, mel euismod patrioque ei, eam admodum consetetur ei. Eu maiestatis percipitur qui. Est partem vivendo elaboraret an. Vim ad dicit iuvaret delicata, fugit audire forensibus no nec, ad congue essent nusquam qui. Cum in eirmod concludaturque. Ea deleniti appellantur dissentiunt mei. Choro dicam petentium eos ei. Has id utinam invidunt tacimates, mazim nostro rationibus eos at. His voluptua splendide omittantur an, ut usu nisl sint cibo. Has te animal recusabo moderatius, homero blandit erroribus nec te.</p>';

EXECUTE AddPost @CategoryID, @UserID, @Title, @CoverImgURL,@Body, @PostID
GO
--------------------------------------------------End------------------------------------------------

--------------------------------------Update Posts To Published---------------------------------------------


Update Posts 
set IsPublished = 1,
DatePublished = GetDate()
where PostID < 21

Update StaticPage
set IsPublished = 1,
DatePublished = GetDate()
where StaticPageID < 3




--------------------------------------------------End------------------------------------------------