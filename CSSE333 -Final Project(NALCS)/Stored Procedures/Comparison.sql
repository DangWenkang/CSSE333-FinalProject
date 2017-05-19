USE [NA_LCS]
GO

/****** Object:  StoredProcedure [dbo].[Comparison]    Script Date: 5/19/2017 3:54:02 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

ALTER procedure [dbo].[Comparison] (@name char(20), @str nvarchar(300) OUTPUT)
as
Declare @a1 float
Declare @b1 float
Declare @c1 smallint
Declare @d1 smallint

Declare @a2 float
Declare @b2 float
Declare @c2 smallint
Declare @d2 smallint


Select *
From Player
Where PlayerName=@name or PlayerName=(Select PRank From NormalPlayer where PlayerName=@name)

Select @a1=Avg_KDA, @b1=Avg_KillParticipation, @c1=Avg_GoldEarned, @d1=Avg_MinionKills
From Player
Where PlayerName=@name

Select @a2=Avg_KDA, @b2=Avg_KillParticipation, @c2=Avg_GoldEarned, @d2=Avg_MinionKills
From Player
Where PlayerName<>@name

Set @str='Note: '
if (@a1<@a2)
Set @str = @str+'You need more KDA. '+CHAR(10)

if (@b1<@b2)
Set @str = @str+'You need to Participate more Group fight. '+CHAR(10)

if (@c1<@c2)
Set @str = @str+'You need to earn more Gold. '+CHAR(10)

if (@d1<@d2)
Set @str = @str+'You need to kill more Minions. '
GO

