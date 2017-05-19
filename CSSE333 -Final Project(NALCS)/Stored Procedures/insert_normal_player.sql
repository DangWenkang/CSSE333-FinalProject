USE [NA_LCS]
GO

/****** Object:  StoredProcedure [dbo].[insert_normal_player]    Script Date: 5/19/2017 3:55:28 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

ALTER PROCEDURE [dbo].[insert_normal_player]
(@Username nvarchar(25), @name char(20), @PRank char(10), @position char(20))
As
Begin
if @name=''
Raiserror ('PlayerName cannot be null',14,1)

if @PRank=''
Select @PRank=PRank
From NormalPlayer
Where PlayerName=@name

if @position=''
Select @position=Position
From Player
Where PlayerName=@name

if @name not in (Select PlayerName from Player)
Begin
insert into Player (PlayerName,Position) values (@name, @position)
insert into NormalPlayer (PlayerName,PRank) values(@name, @PRank)
insert into Log_in (Username, Playername) values (@Username, @name) 
END
Else
Begin
If @name not in (Select PlayerName from Log_In where Username=@Username)
Raiserror ('This PlayerName has been taken by others',14,1)
ELSE
BEGIN
Update NormalPlayer
Set PRank=@PRank
Where PlayerName=@name
Update Player
Set Position = @position
Where PlayerName=@name
END
END
End
GO

