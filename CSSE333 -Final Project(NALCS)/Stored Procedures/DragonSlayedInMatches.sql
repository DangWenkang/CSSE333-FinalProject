USE [NA_LCS]
GO

/****** Object:  StoredProcedure [dbo].[DragonsSlayedInMatches]    Script Date: 5/19/2017 3:55:01 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Zhaoyuan Sun
-- Create date: Right Now
-- Description:	Dragons slayed in every match
-- =============================================
ALTER PROCEDURE [dbo].[DragonsSlayedInMatches]

@teamname varchar(20)

as

begin

select AppearIN.matchID,Appearin.DName, @teamname, Dragon.DFunction
from AppearIn, Dragon
where AppearIn.matchID IN (select match.matchID from match where match.TeamA = @teamname or match.TeamB = @teamname) and Dragon.DName = AppearIn.DName
end
GO

