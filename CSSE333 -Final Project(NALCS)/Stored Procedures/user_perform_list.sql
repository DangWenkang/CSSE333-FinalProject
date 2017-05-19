USE [NA_LCS]
GO

/****** Object:  StoredProcedure [dbo].[user_perform_list]    Script Date: 5/19/2017 4:01:40 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

ALTER procedure [dbo].[user_perform_list](@username nvarchar(25))
as
SELECT np.PlayerName, p.Position, np.PRank, p.Avg_KDA, p.Avg_KillParticipation, p.Avg_GoldEarned, p.Avg_MinionKills 
FROM Log_In as l, Player AS p, NormalPlayer AS np
where l.Username =@username and l.Playername = p.PlayerName and l.Playername = np.PlayerName
GO

