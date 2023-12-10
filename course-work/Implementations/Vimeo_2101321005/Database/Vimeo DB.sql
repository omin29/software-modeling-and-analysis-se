CREATE DATABASE VIMEO
GO
USE VIMEO;
GO

CREATE TABLE Account(
UserID INT NOT NULL PRIMARY KEY IDENTITY(1,1),
FirstName VARCHAR(200) NOT NULL,
LastName VARCHAR(200) NOT NULL,
Email VARCHAR(200) NOT NULL
);
GO
ALTER TABLE Account ADD CONSTRAINT UniqueEmail UNIQUE (Email);
GO

CREATE TABLE Channel(
ChannelID INT NOT NULL PRIMARY KEY IDENTITY(1,1),
[Name] VARCHAR(200) NOT NULL,
CreatedOn DATETIME NOT NULL,
About VARCHAR(2000) NULL,
UserID INT NOT NULL,
);
GO
ALTER TABLE Channel ADD CONSTRAINT FkUserID FOREIGN KEY (UserID) REFERENCES Account(UserID);
GO

CREATE TABLE Subscription(
SubscriberID INT NOT NULL,
ContentCreatorID INT NOT NULL,
CreatedOn DATETIME NOT NULL
);
GO
ALTER TABLE Subscription ADD CONSTRAINT PkSubscription PRIMARY KEY (SubscriberID, ContentCreatorID);
ALTER TABLE Subscription ADD CONSTRAINT FkSubscriberID FOREIGN KEY (SubscriberID) REFERENCES Channel(ChannelID);
ALTER TABLE Subscription ADD CONSTRAINT FkContentCreatorID FOREIGN KEY (ContentCreatorID) REFERENCES Channel(ChannelID);
GO

CREATE TABLE Playlist(
PlaylistID INT NOT NULL PRIMARY KEY IDENTITY(1,1),
[Name] VARCHAR(200) NOT NULL,
Visibility VARCHAR(200) DEFAULT 'Public',
ChannelID INT NOT NULL
);
GO
ALTER TABLE Playlist ADD CONSTRAINT ChkPlaylistVisibility CHECK (Visibility IN ('Public', 'Private', 'Unlisted'));
ALTER TABLE Playlist ADD CONSTRAINT FkPlaylistChannelID FOREIGN KEY (ChannelID) REFERENCES Channel(ChannelID);
GO

CREATE TABLE Video(
VideoID INT NOT NULL PRIMARY KEY IDENTITY(1,1),
Title VARCHAR(200) NOT NULL,
[Length] INT NOT NULL,
UploadedOn DATETIME NOT NULL,
ThumbnailPath VARCHAR(2000) NOT NULL,
VideoPath VARCHAR(2000) NOT NULL,
[Views] BIGINT DEFAULT(0),
[Description] VARCHAR(2000) NULL,
CommentExistence BIT DEFAULT(1),
[Type] VARCHAR(200) DEFAULT 'Normal',
Visibility VARCHAR(200) DEFAULT 'Public',
ChannelID INT NOT NULL
);
GO
ALTER TABLE Video ADD CONSTRAINT ChkMinimalLength CHECK ([Length] >= 3);
ALTER TABLE Video ADD CONSTRAINT ChkNonNegativeViews CHECK ([Views] >= 0);
ALTER TABLE Video ADD CONSTRAINT ChkType CHECK ([Type] IN ('Normal', 'Short'));
ALTER TABLE Video ADD CONSTRAINT ChkVideoVisibility CHECK (Visibility IN ('Public', 'Private', 'Unlisted'));
ALTER TABLE Video ADD CONSTRAINT FkVideoChannelID FOREIGN KEY (ChannelID) REFERENCES Channel(ChannelID)
GO

CREATE TABLE VideoPlaylist(
VideoID INT NOT NULL,
PlaylistID INT NOT NULL
)
GO
ALTER TABLE VideoPlaylist ADD CONSTRAINT PkVideoPlaylist PRIMARY KEY (VideoID, PlaylistID);
ALTER TABLE VideoPlaylist ADD CONSTRAINT FkPlaylistID FOREIGN KEY (PlaylistID) REFERENCES Playlist(PlaylistID);
ALTER TABLE VideoPlaylist ADD CONSTRAINT FkPlaylistVideoID FOREIGN KEY (VideoID) REFERENCES Video(VideoID);
GO

CREATE TABLE VideoLike(
ChannelID INT NOT NULL,
VideoID INT NOT NULL
)
GO
ALTER TABLE VideoLike ADD CONSTRAINT PkVideoLike PRIMARY KEY (ChannelID, VideoID);
ALTER TABLE VideoLike ADD CONSTRAINT FkVideoLikerChannelID FOREIGN KEY (ChannelID) REFERENCES Channel(ChannelID);
ALTER TABLE VideoLike ADD CONSTRAINT FkLikedVideoID FOREIGN KEY (VideoID) REFERENCES Video(VideoID);
GO

CREATE TABLE VideoNotification(
SubscriberID INT NOT NULL,
VideoID INT NOT NULL,
NotificationID INT UNIQUE IDENTITY(1,1),
[Description] VARCHAR(2000) NULL
);
GO
ALTER TABLE VideoNotification ADD CONSTRAINT PkVideoNotification PRIMARY KEY (SubscriberID, VideoID);
ALTER TABLE VideoNotification ADD CONSTRAINT FkNotifiedSubscriberID FOREIGN KEY (SubscriberID) REFERENCES Channel(ChannelID);
ALTER TABLE VideoNotification ADD CONSTRAINT FkNotificationVideoID FOREIGN KEY (VideoID) REFERENCES Video(VideoID);
GO

CREATE TABLE Comment(
CommentID INT NOT NULL PRIMARY KEY IDENTITY(1,1),
Content VARCHAR(2000) NOT NULL,
CreatedOn DATETIME NOT NULL,
ReplyID INT NULL,
ChannelID INT NOT NULL,
VideoID INT NOT NULL
);
GO
ALTER TABLE Comment ADD CONSTRAINT FkReplyID FOREIGN KEY (ReplyID) REFERENCES Comment(CommentID);
ALTER TABLE Comment ADD CONSTRAINT FkCommentingChannelID FOREIGN KEY (ChannelID) REFERENCES Channel(ChannelID);
ALTER TABLE Comment ADD CONSTRAINT FkCommentVideoID FOREIGN KEY (VideoID) REFERENCES Video(VideoID);
GO

CREATE TABLE CommentLike(
ChannelID INT NOT NULL,
CommentID INT NOT NULL
);
GO
ALTER TABLE CommentLike ADD CONSTRAINT PkCommentLike PRIMARY KEY(ChannelID, CommentID);
ALTER TABLE CommentLike ADD CONSTRAINT FkCommentLikerChannelID FOREIGN KEY (ChannelID) REFERENCES Channel(ChannelID);
ALTER TABLE CommentLike ADD CONSTRAINT FkLikedCommentID FOREIGN KEY (CommentID) REFERENCES Comment(CommentID);
GO

----------------------------------------------------------------------------------------------------------------------
CREATE FUNCTION ufnGetContentCreatorName (@VideoID INT)
RETURNS VARCHAR(200)
AS BEGIN
DECLARE @ContentCreatorName VARCHAR(200)
SET @ContentCreatorName = (SELECT [NAME] FROM Channel
WHERE ChannelID = (SELECT TOP 1 ChannelID FROM Video WHERE VideoID = @VideoID))
RETURN @ContentCreatorName
END;
GO

CREATE FUNCTION ufnGetVideoTitle (@VideoID INT)
RETURNS VARCHAR(200)
AS BEGIN
DECLARE @VideoTitle VARCHAR(200)
SET @VideoTitle = (SELECT TOP 1 Title FROM Video WHERE VideoID = @VideoID)
RETURN @VideoTitle
END;
GO

CREATE FUNCTION ufnGetVideoLikes (@VideoID INT)
RETURNS INT
AS BEGIN
DECLARE @LikeCount INT
SET @LikeCount = (SELECT COUNT(*) FROM VideoLike WHERE VideoID = @VideoID)
RETURN @LikeCount
END;
GO

CREATE FUNCTION ufnGetChannelSubscriberCount (@ChannelID INT)
RETURNS INT
AS BEGIN
DECLARE @SubscriberCount INT
SET @SubscriberCount = (SELECT COUNT(*) FROM Subscription WHERE ContentCreatorID = @ChannelID)
RETURN @SubscriberCount
END;
GO

CREATE FUNCTION ufnGetCommentLikes (@CommentID INT)
RETURNS INT
AS BEGIN
DECLARE @CommentLikes INT
SET @CommentLikes = (SELECT COUNT(*) FROM CommentLike WHERE CommentID = @CommentID)
RETURN @CommentLikes
END;
GO
----------------------------------------------------------------------------------------------------------------------

CREATE TRIGGER utrCheckIfCommentExistenceAllowed
ON Comment
AFTER INSERT
AS BEGIN
SET NOCOUNT ON --avoids rowcount messages
DECLARE @CommentExistence BIT
SET @CommentExistence = (SELECT TOP 1 CommentExistence FROM Video WHERE VideoID = (SELECT VideoID FROM inserted))

IF @CommentExistence = 0
BEGIN
ROLLBACK TRANSACTION
RAISERROR('The specified video can''t have comments!', 16, 1)
END

END;
GO
----------------------------------------------------------------------------------------------------------------------

CREATE PROCEDURE uspInsertChannel @Name VARCHAR(200), @About VARCHAR(2000), @UserId INT
AS BEGIN
INSERT INTO Channel ([Name], CreatedOn, About, UserID)
VALUES (@Name, GETDATE(), @About, @UserId)
END;
GO

CREATE PROCEDURE uspInsertSubscription @SubscriberID INT, @ContentCreatorID INT
AS BEGIN
IF @SubscriberID = @ContentCreatorID
BEGIN
RAISERROR('A channel can''t subscribe to itself!', 16, 1)
RETURN
END

INSERT INTO Subscription (SubscriberID, ContentCreatorID, CreatedOn)
VALUES (@SubscriberID, @ContentCreatorID, GETDATE())
END;
GO

CREATE PROCEDURE uspInsertVideo @Title VARCHAR(200), @Length INT, @Views BIGINT, @Description VARCHAR(2000),
@CommentExistence BIT, @Type VARCHAR(200), @Visibility VARCHAR(200), @ChannelID INT
AS BEGIN

IF @Type = 'Short' AND @Length > 60
BEGIN
RAISERROR('A Short video can''t be longer than 60 seconds!', 16, 1)
RETURN
END

DECLARE @ThumbnailPath AS VARCHAR(2000)
SET @ThumbnailPath = (SELECT CONCAT('D:\Videos\', (SELECT TOP 1 [Name] FROM Channel WHERE ChannelID = @ChannelID)))
DECLARE @VideoPath AS VARCHAR(2000)
SET @VideoPath = @ThumbnailPath
INSERT INTO Video (Title, [Length], UploadedOn, ThumbnailPath, VideoPath, [Views], [Description],
CommentExistence, [Type], Visibility, ChannelID)
VALUES (@Title, @Length, GETDATE(), @ThumbnailPath, @VideoPath, @Views, @Description, @CommentExistence,
@Type, @Visibility, @ChannelID)
END;
GO

CREATE PROCEDURE uspInsertVideoNotifications @VideoID INT
AS BEGIN
DECLARE @Description VARCHAR(200)
DECLARE @SubscriberID INT
DECLARE SubscriberCursor CURSOR FOR 
	(SELECT SubscriberID FROM Subscription
		WHERE ContentCreatorID = (SELECT TOP 1 ChannelID FROM Video
									WHERE VideoID = @VideoID))
OPEN SubscriberCursor
FETCH NEXT FROM SubscriberCursor INTO @SubscriberID

WHILE @@FETCH_STATUS = 0
	BEGIN
		SET @Description = CONCAT([dbo].ufnGetContentCreatorName(@VideoID), ' has uploaded a new video "',
		[dbo].ufnGetVideoTitle(@VideoID), '". Don''t miss it!')
		INSERT INTO VideoNotification (SubscriberID, VideoID, [Description])
		VALUES (@SubscriberID, @VideoID, @Description)
		FETCH NEXT FROM SubscriberCursor INTO @SubscriberID
	END

CLOSE SubscriberCursor
DEALLOCATE SubscriberCursor

END;
GO

CREATE PROCEDURE uspInsertComment @Content VARCHAR(2000), @ChannelID INT, @VideoID INT
AS BEGIN
INSERT INTO Comment (Content, CreatedOn, ChannelID, VideoID)
VALUES (@Content, GETDATE(), @ChannelID, @VideoID)
END;
GO

CREATE PROCEDURE uspInsertCommentReply @Content VARCHAR(2000), @ReplyID INT, @ChannelID INT
AS BEGIN
DECLARE @VideoID INT
SET @VideoID = (SELECT TOP 1 VideoID FROM Comment WHERE CommentID = @ReplyID)

INSERT INTO Comment (Content, CreatedOn, ReplyID, ChannelID, VideoID)
VALUES (@Content, GETDATE(), @ReplyID, @ChannelID, @VideoID)
END;
GO

--Testing functions
/*
SELECT [dbo].ufnGetContentCreatorName(1)
SELECT [dbo].ufnGetVideoTitle(1)
SELECT [dbo].ufnGetVideoLikes(2)
SELECT [dbo].ufnGetChannelSubscriberCount(1)
SELECT [dbo].ufnGetCommentLikes(1)
*/
