USE [NA_LCS]
GO

/****** Object:  StoredProcedure [dbo].[Team'sPlayerInAMatch]    Script Date: 5/19/2017 4:00:55 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Zhaoyuan Sun
-- Create date: Today
-- Description:	double click 666
-- =============================================
ALTER PROCEDURE [dbo].[Team'sPlayerInAMatch]
as
declare @matchID smallint
declare @teamName varchar(20)
begin
select pp.PlayerName
from PlayIn pin, ProPlayer pp, PlayFor pf
where pin.playername = pp.playername and pp.playername = pf.PlayerName and pf.teamName = @teamName 
and pin.matchid = @matchID
end
GO

