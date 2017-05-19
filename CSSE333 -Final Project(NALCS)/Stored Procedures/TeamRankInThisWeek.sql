USE [NA_LCS]
GO

/****** Object:  StoredProcedure [dbo].[TeamRankInThisWeek]    Script Date: 5/19/2017 3:58:58 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Zhaoyuan Sun
-- Create date: 8th week
-- Description:	Team's rank in this week
-- =============================================
ALTER PROCEDURE [dbo].[TeamRankInThisWeek]
as
begin
select TeamName, TRank
from Team
end
GO

