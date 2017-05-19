USE [NA_LCS]
GO

/****** Object:  StoredProcedure [dbo].[MVP_check]    Script Date: 5/19/2017 3:56:38 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


ALTER procedure [dbo].[MVP_check]
as
begin
Select weekk as WEEK, PlayerName, t1.maxkda as KDA
From (Select m.Week as weekk, Max(p.KDA) as maxkda From Match m, Playin p Where m.matchID=p.MatchID Group by m.Week) as t1, PlayIn t2, match t3
Where t1.weekk=t3.week and t2.MatchID=t3.matchID and t1.maxkda=t2.KDA
end
GO

