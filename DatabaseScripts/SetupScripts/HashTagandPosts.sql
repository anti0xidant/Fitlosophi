USE [HealthBLogDB]
GO
/****** Object:  Table [dbo].[HashTags]    Script Date: 12/8/2015 4:42:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HashTags](
	[TagID] [int] IDENTITY(1,1) NOT NULL,
	[TagName] [nvarchar](1000) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[TagID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PostsXHash]    Script Date: 12/8/2015 4:42:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PostsXHash](
	[PostsXHashID] [int] IDENTITY(1,1) NOT NULL,
	[PostID] [int] NOT NULL,
	[TagID] [int] NOT NULL,
	[ActualHashTag] [nvarchar](1000) NOT NULL
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[HashTags] ON 

INSERT [dbo].[HashTags] ([TagID], [TagName]) VALUES (1, N'healthyeating')
INSERT [dbo].[HashTags] ([TagID], [TagName]) VALUES (2, N'food')
INSERT [dbo].[HashTags] ([TagID], [TagName]) VALUES (3, N'nutrition')
INSERT [dbo].[HashTags] ([TagID], [TagName]) VALUES (4, N'healthysnacks')
INSERT [dbo].[HashTags] ([TagID], [TagName]) VALUES (5, N'greatfood')
INSERT [dbo].[HashTags] ([TagID], [TagName]) VALUES (6, N'golfswing')
INSERT [dbo].[HashTags] ([TagID], [TagName]) VALUES (7, N'foodforgolf')
INSERT [dbo].[HashTags] ([TagID], [TagName]) VALUES (8, N'improveyourgam')
INSERT [dbo].[HashTags] ([TagID], [TagName]) VALUES (9, N'golfwods')
INSERT [dbo].[HashTags] ([TagID], [TagName]) VALUES (10, N'golf')
INSERT [dbo].[HashTags] ([TagID], [TagName]) VALUES (11, N'Biking')
INSERT [dbo].[HashTags] ([TagID], [TagName]) VALUES (12, N'Boxing')
INSERT [dbo].[HashTags] ([TagID], [TagName]) VALUES (13, N'Cooking')
INSERT [dbo].[HashTags] ([TagID], [TagName]) VALUES (14, N'Chocolate')
INSERT [dbo].[HashTags] ([TagID], [TagName]) VALUES (15, N'Eating')
INSERT [dbo].[HashTags] ([TagID], [TagName]) VALUES (16, N'Eggs')
INSERT [dbo].[HashTags] ([TagID], [TagName]) VALUES (17, N'Kickboxing')
INSERT [dbo].[HashTags] ([TagID], [TagName]) VALUES (18, N'Nature')
INSERT [dbo].[HashTags] ([TagID], [TagName]) VALUES (19, N'Recipes')
INSERT [dbo].[HashTags] ([TagID], [TagName]) VALUES (20, N'Run')
INSERT [dbo].[HashTags] ([TagID], [TagName]) VALUES (21, N'Spices')
INSERT [dbo].[HashTags] ([TagID], [TagName]) VALUES (22, N'Tasty')
INSERT [dbo].[HashTags] ([TagID], [TagName]) VALUES (23, N'Vegetable')
INSERT [dbo].[HashTags] ([TagID], [TagName]) VALUES (24, N'Sports')
INSERT [dbo].[HashTags] ([TagID], [TagName]) VALUES (25, N'Wellness')
INSERT [dbo].[HashTags] ([TagID], [TagName]) VALUES (26, N'Yoga')
INSERT [dbo].[HashTags] ([TagID], [TagName]) VALUES (27, N'Weights')
SET IDENTITY_INSERT [dbo].[HashTags] OFF
SET IDENTITY_INSERT [dbo].[PostsXHash] ON 

INSERT [dbo].[PostsXHash] ([PostsXHashID], [PostID], [TagID], [ActualHashTag]) VALUES (83, 1, 1, N'HealthyEating')
INSERT [dbo].[PostsXHash] ([PostsXHashID], [PostID], [TagID], [ActualHashTag]) VALUES (84, 1, 2, N'Food')
INSERT [dbo].[PostsXHash] ([PostsXHashID], [PostID], [TagID], [ActualHashTag]) VALUES (85, 1, 3, N'Nutrition')
INSERT [dbo].[PostsXHash] ([PostsXHashID], [PostID], [TagID], [ActualHashTag]) VALUES (86, 1, 4, N'HealthySnacks')
INSERT [dbo].[PostsXHash] ([PostsXHashID], [PostID], [TagID], [ActualHashTag]) VALUES (87, 1, 5, N'GreatFood')
INSERT [dbo].[PostsXHash] ([PostsXHashID], [PostID], [TagID], [ActualHashTag]) VALUES (88, 2, 1, N'HealthyEating')
INSERT [dbo].[PostsXHash] ([PostsXHashID], [PostID], [TagID], [ActualHashTag]) VALUES (89, 2, 6, N'GolfSwing')
INSERT [dbo].[PostsXHash] ([PostsXHashID], [PostID], [TagID], [ActualHashTag]) VALUES (90, 2, 7, N'FoodForGolf')
INSERT [dbo].[PostsXHash] ([PostsXHashID], [PostID], [TagID], [ActualHashTag]) VALUES (91, 2, 8, N'ImproveYourGam')
INSERT [dbo].[PostsXHash] ([PostsXHashID], [PostID], [TagID], [ActualHashTag]) VALUES (92, 2, 9, N'Golfwods')
INSERT [dbo].[PostsXHash] ([PostsXHashID], [PostID], [TagID], [ActualHashTag]) VALUES (93, 3, 1, N'HealthyEating')
INSERT [dbo].[PostsXHash] ([PostsXHashID], [PostID], [TagID], [ActualHashTag]) VALUES (94, 3, 2, N'food')
INSERT [dbo].[PostsXHash] ([PostsXHashID], [PostID], [TagID], [ActualHashTag]) VALUES (95, 3, 3, N'Nutrition')
INSERT [dbo].[PostsXHash] ([PostsXHashID], [PostID], [TagID], [ActualHashTag]) VALUES (96, 3, 4, N'healthysnacks')
INSERT [dbo].[PostsXHash] ([PostsXHashID], [PostID], [TagID], [ActualHashTag]) VALUES (97, 4, 6, N'golfswing')
INSERT [dbo].[PostsXHash] ([PostsXHashID], [PostID], [TagID], [ActualHashTag]) VALUES (98, 4, 10, N'Golf')
INSERT [dbo].[PostsXHash] ([PostsXHashID], [PostID], [TagID], [ActualHashTag]) VALUES (99, 4, 8, N'ImproveYourGam')
INSERT [dbo].[PostsXHash] ([PostsXHashID], [PostID], [TagID], [ActualHashTag]) VALUES (100, 4, 9, N'GolfWODs')
INSERT [dbo].[PostsXHash] ([PostsXHashID], [PostID], [TagID], [ActualHashTag]) VALUES (101, 5, 2, N'food')
INSERT [dbo].[PostsXHash] ([PostsXHashID], [PostID], [TagID], [ActualHashTag]) VALUES (102, 5, 25, N'Wellness')
INSERT [dbo].[PostsXHash] ([PostsXHashID], [PostID], [TagID], [ActualHashTag]) VALUES (103, 5, 22, N'Tasty')
INSERT [dbo].[PostsXHash] ([PostsXHashID], [PostID], [TagID], [ActualHashTag]) VALUES (104, 6, 24, N'Sports')
INSERT [dbo].[PostsXHash] ([PostsXHashID], [PostID], [TagID], [ActualHashTag]) VALUES (105, 6, 11, N'Biking')
INSERT [dbo].[PostsXHash] ([PostsXHashID], [PostID], [TagID], [ActualHashTag]) VALUES (106, 7, 17, N'Kickboxing')
INSERT [dbo].[PostsXHash] ([PostsXHashID], [PostID], [TagID], [ActualHashTag]) VALUES (107, 7, 12, N'Boxing')
INSERT [dbo].[PostsXHash] ([PostsXHashID], [PostID], [TagID], [ActualHashTag]) VALUES (108, 7, 24, N'Sports')
INSERT [dbo].[PostsXHash] ([PostsXHashID], [PostID], [TagID], [ActualHashTag]) VALUES (109, 8, 21, N'Spices')
INSERT [dbo].[PostsXHash] ([PostsXHashID], [PostID], [TagID], [ActualHashTag]) VALUES (110, 8, 2, N'food')
INSERT [dbo].[PostsXHash] ([PostsXHashID], [PostID], [TagID], [ActualHashTag]) VALUES (111, 8, 4, N'healthysnacks')
INSERT [dbo].[PostsXHash] ([PostsXHashID], [PostID], [TagID], [ActualHashTag]) VALUES (112, 9, 2, N'food')
INSERT [dbo].[PostsXHash] ([PostsXHashID], [PostID], [TagID], [ActualHashTag]) VALUES (113, 9, 3, N'nutrition')
INSERT [dbo].[PostsXHash] ([PostsXHashID], [PostID], [TagID], [ActualHashTag]) VALUES (114, 9, 16, N'Eggs')
INSERT [dbo].[PostsXHash] ([PostsXHashID], [PostID], [TagID], [ActualHashTag]) VALUES (115, 10, 2, N'food')
INSERT [dbo].[PostsXHash] ([PostsXHashID], [PostID], [TagID], [ActualHashTag]) VALUES (116, 10, 15, N'Eating')
INSERT [dbo].[PostsXHash] ([PostsXHashID], [PostID], [TagID], [ActualHashTag]) VALUES (117, 10, 5, N'greatfood')
INSERT [dbo].[PostsXHash] ([PostsXHashID], [PostID], [TagID], [ActualHashTag]) VALUES (118, 11, 18, N'Nature')
INSERT [dbo].[PostsXHash] ([PostsXHashID], [PostID], [TagID], [ActualHashTag]) VALUES (119, 11, 24, N'Sports')
INSERT [dbo].[PostsXHash] ([PostsXHashID], [PostID], [TagID], [ActualHashTag]) VALUES (120, 11, 26, N'Yoga')
INSERT [dbo].[PostsXHash] ([PostsXHashID], [PostID], [TagID], [ActualHashTag]) VALUES (121, 12, 2, N'food')
INSERT [dbo].[PostsXHash] ([PostsXHashID], [PostID], [TagID], [ActualHashTag]) VALUES (122, 12, 3, N'Nutrition')
INSERT [dbo].[PostsXHash] ([PostsXHashID], [PostID], [TagID], [ActualHashTag]) VALUES (123, 12, 23, N'Vegetable')
INSERT [dbo].[PostsXHash] ([PostsXHashID], [PostID], [TagID], [ActualHashTag]) VALUES (124, 13, 20, N'Run')
INSERT [dbo].[PostsXHash] ([PostsXHashID], [PostID], [TagID], [ActualHashTag]) VALUES (125, 13, 24, N'Sports')
INSERT [dbo].[PostsXHash] ([PostsXHashID], [PostID], [TagID], [ActualHashTag]) VALUES (126, 14, 2, N'food')
INSERT [dbo].[PostsXHash] ([PostsXHashID], [PostID], [TagID], [ActualHashTag]) VALUES (127, 14, 23, N'Vegetable')
INSERT [dbo].[PostsXHash] ([PostsXHashID], [PostID], [TagID], [ActualHashTag]) VALUES (128, 14, 5, N'greatfood')
INSERT [dbo].[PostsXHash] ([PostsXHashID], [PostID], [TagID], [ActualHashTag]) VALUES (129, 15, 2, N'food')
INSERT [dbo].[PostsXHash] ([PostsXHashID], [PostID], [TagID], [ActualHashTag]) VALUES (130, 15, 15, N'Eating')
INSERT [dbo].[PostsXHash] ([PostsXHashID], [PostID], [TagID], [ActualHashTag]) VALUES (131, 15, 19, N'Recipes')
INSERT [dbo].[PostsXHash] ([PostsXHashID], [PostID], [TagID], [ActualHashTag]) VALUES (132, 16, 2, N'food')
INSERT [dbo].[PostsXHash] ([PostsXHashID], [PostID], [TagID], [ActualHashTag]) VALUES (133, 16, 13, N'Cooking')
INSERT [dbo].[PostsXHash] ([PostsXHashID], [PostID], [TagID], [ActualHashTag]) VALUES (134, 16, 22, N'Tasty')
INSERT [dbo].[PostsXHash] ([PostsXHashID], [PostID], [TagID], [ActualHashTag]) VALUES (135, 17, 2, N'food')
INSERT [dbo].[PostsXHash] ([PostsXHashID], [PostID], [TagID], [ActualHashTag]) VALUES (136, 17, 23, N'Vegetable')
INSERT [dbo].[PostsXHash] ([PostsXHashID], [PostID], [TagID], [ActualHashTag]) VALUES (137, 17, 19, N'Recipes')
INSERT [dbo].[PostsXHash] ([PostsXHashID], [PostID], [TagID], [ActualHashTag]) VALUES (138, 18, 20, N'Run')
INSERT [dbo].[PostsXHash] ([PostsXHashID], [PostID], [TagID], [ActualHashTag]) VALUES (139, 18, 27, N'Weights')
INSERT [dbo].[PostsXHash] ([PostsXHashID], [PostID], [TagID], [ActualHashTag]) VALUES (140, 18, 24, N'Sports')
INSERT [dbo].[PostsXHash] ([PostsXHashID], [PostID], [TagID], [ActualHashTag]) VALUES (141, 19, 26, N'Yoga')
INSERT [dbo].[PostsXHash] ([PostsXHashID], [PostID], [TagID], [ActualHashTag]) VALUES (142, 19, 18, N'Nature')
INSERT [dbo].[PostsXHash] ([PostsXHashID], [PostID], [TagID], [ActualHashTag]) VALUES (143, 20, 17, N'Kickboxing')
INSERT [dbo].[PostsXHash] ([PostsXHashID], [PostID], [TagID], [ActualHashTag]) VALUES (144, 20, 24, N'Sports')
INSERT [dbo].[PostsXHash] ([PostsXHashID], [PostID], [TagID], [ActualHashTag]) VALUES (145, 20, 18, N'Nature')
SET IDENTITY_INSERT [dbo].[PostsXHash] OFF
ALTER TABLE [dbo].[PostsXHash]  WITH CHECK ADD  CONSTRAINT [FK_PostID] FOREIGN KEY([PostID])
REFERENCES [dbo].[Posts] ([PostID])
GO
ALTER TABLE [dbo].[PostsXHash] CHECK CONSTRAINT [FK_PostID]
GO
ALTER TABLE [dbo].[PostsXHash]  WITH CHECK ADD  CONSTRAINT [FK_TagID] FOREIGN KEY([TagID])
REFERENCES [dbo].[HashTags] ([TagID])
GO
ALTER TABLE [dbo].[PostsXHash] CHECK CONSTRAINT [FK_TagID]
GO
