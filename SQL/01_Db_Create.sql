USE [master]

IF db_id('RISE') IS NULL
  CREATE DATABASE [RISE]
GO

USE [RISE]
GO

DROP TABLE IF EXISTS [UserEvent];
DROP TABLE IF EXISTS [Coffee];
DROP TABLE IF EXISTS [Event];
DROP TABLE IF EXISTS [Survey];
DROP TABLE IF EXISTS [Question];
DROP TABLE IF EXISTS [SurveyQuestion];
DROP TABLE IF EXISTS [Answer];
DROP TABLE IF EXISTS [User];



GO


CREATE TABLE [User] (
  [Id] integer PRIMARY KEY IDENTITY,
  [UserName] nvarchar(20) NOT NULL,
  [Email] nvarchar(555) NOT NULL,
  [IsActive] bit NOT NULL DEFAULT 1,
  [IsAdmin] bit NOT NULL DEFAULT 0

  CONSTRAINT UQ_Email UNIQUE(Email),
  CONSTRAINT UQ_UserName UNIQUE(UserName)
)


CREATE TABLE [Event] (
	[Id] integer PRIMARY KEY IDENTITY,
	[Title] nvarchar(50) NOT NULL,
	[Time] datetime NOT NULL,
	[Link] nvarchar(50),
	[Address] nvarchar(50),
	[OwnerId] integer NOT NULL,
	[IsApproved] bit NOT NULL DEFAULT 0,
	[IsSponsored] bit NOT NULL DEFAULT 0

	CONSTRAINT [FK_Event_Owner] FOREIGN KEY ([OwnerId]) REFERENCES [User] ([Id])
)

CREATE TABLE [UserEvent] (
	[Id] integer PRIMARY KEY IDENTITY,
	[EventId] integer NOT NULL,
	[UserId] integer NOT NULL,
	[IsConfirmed] bit NOT NULL DEFAULT 0,

	CONSTRAINT [FK_UserEvent_User] FOREIGN KEY ([UserId]) REFERENCES [User] ([Id]),
	CONSTRAINT [FK_UserEvent_Event] FOREIGN KEY ([EventId]) REFERENCES [Event] ([Id])
)

CREATE TABLE [Coffee] (
	[Id] integer PRIMARY KEY IDENTITY,
	[Time] datetime NOT NULL,
	[Link] nvarchar(50),
	[UserId] integer NOT NULL,
	[OtherId] integer NOT NULL

	CONSTRAINT [FK_Coffee_User] FOREIGN KEY ([UserId]) REFERENCES [User] ([Id]),
	CONSTRAINT [FK_Coffee_Other] FOREIGN KEY ([OtherId]) REFERENCES [User] ([Id])
)

CREATE TABLE [Survey] (
	[Id] integer PRIMARY KEY IDENTITY,
	[Title] nvarchar(20) NOT NULL,
	[EndDate] datetime NOT NULL,
	[IsOpen] bit NOT NULL DEFAULT 1
)

CREATE TABLE [Question] (
 [Id] integer PRIMARY KEY IDENTITY,
 [QuestionText] nvarchar(50) NOT NULL
)

CREATE TABLE [SurveyQuestion] (
	[Id] integer PRIMARY KEY IDENTITY,
	[SurveyId] integer NOT NULL,
	[QuestionId] integer NOT NULL

	CONSTRAINT [FK_SurveyQuestion_Survey] FOREIGN KEY ([SurveyId]) REFERENCES [Survey] ([Id]),
	CONSTRAINT [FK_SurveyQuestion_Question] FOREIGN KEY ([QuestionId]) REFERENCES [Question] ([Id])
)

CREATE TABLE [Answer] (
	[Id] integer PRIMARY KEY IDENTITY,
	[SurveyId] integer NOT NULL,
	[QuestionId] integer NOT NULL,
	[UserId] integer NOT NULL,
	[AnswerValue] integer CHECK (answerValue < 10 AND answerValue > 0) NOT NULL,
	[AnswerText] nvarchar(100)
	
	CONSTRAINT [FK_Answer_Survey] FOREIGN KEY ([SurveyId]) REFERENCES [Survey] ([Id]),
	CONSTRAINT [FK_Answer_Question] FOREIGN KEY ([QuestionId]) REFERENCES [Question] ([Id]),
	CONSTRAINT [FK_Answer_User] FOREIGN KEY ([UserId]) REFERENCES [User] ([Id])
)

GO

--set identity_insert [User] on
--insert into [User] ([Id], [FirebaseUserId], [UserName], [Email], [Bio], [ImageUrl], [IsActive])
--values (1,'placeholder1', 'goldenGod', 'dennis@menace.com', 'Its about the implication', 'https://icon-library.com/images/default-user-icon/default-user-icon-8.jpg', 1), 
--	(2, 'placeholder2', 'ratKing', 'bar@janitor.com', 'Oooh cat in the walls', 'https://icon-library.com/images/default-user-icon/default-user-icon-8.jpg', 1),
--	(3, 'placeholder3', 'BigMac', 'ocular@patdown.com', 'Im building mass', 'https://icon-library.com/images/default-user-icon/default-user-icon-8.jpg', 0),
--	(4, 'placeholder4', 'sweetDee', 'failed@actress.com', 'That stupid bitch', 'https://icon-library.com/images/default-user-icon/default-user-icon-8.jpg', 1),
--	(5, 'placeholder5', 'mantisTobagan', 'filth@lover.com', 'Accidentally dropped my magnum condum for my massive dong', 'https://icon-library.com/images/default-user-icon/default-user-icon-8.jpg', 1)
--set identity_insert [User] off

--set identity_insert [Session] on
--insert into [Session] ([Id], [Title], [Time], [Game], [OwnerId])
--values (1, 'Electric Boogaloo', '20210213 08:30:00 PM', 'CharDeeMacDennis', 1),
--	(2, 'ThunderGun Express', '20200129 09:00:00 PM', 'Monsters vs Aliens', 5)
--set identity_insert [Session] off

--set identity_insert [Friend] on
--insert into [Friend] ([Id], [UserId], [OtherId], [IsConfirmed])
--values (1, 1, 4, 1), (2, 4, 1, 1), (3, 2, 1, 0), (4, 1, 5, 1), (5, 5, 1, 1), (6, 5, 2, 1), (7, 2, 5, 1), (8, 1, 3, 1), (9, 3, 1, 1)
--set identity_insert [Friend] off

--set identity_insert [UserSession] on
--insert into [UserSession] ([Id], [SessionId], [UserId], [IsConfirmed])
--values (1, 1, 1, 1), (2, 1, 4, 0), (3, 1, 5, 1), (4, 2, 5, 1), (5, 2, 2, 1)
--set identity_insert [UserSession] off

