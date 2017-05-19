USE [NA_LCS]
GO

/****** Object:  StoredProcedure [dbo].[User_info]    Script Date: 5/19/2017 4:01:23 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

ALTER Procedure [dbo].[User_info] 
@username nvarchar(25)
AS
Begin
Declare @sql nvarchar(500)
Set @sql ='
Create View Temp_login_info
as
Select np.PlayerName, np.PRank, p.Avg_KDA, p.Avg_GoldEarned, p.Avg_MinionKills, p.Position
From Log_in l, NormalPlayer np, Player p
Where l.Username = '+@username+' and l.Playername=p.PlayerName and l.Playername=np.PlayerName'

Exec(@sql)
End
GO

