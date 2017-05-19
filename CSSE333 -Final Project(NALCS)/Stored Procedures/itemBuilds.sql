USE [NA_LCS]
GO

/****** Object:  StoredProcedure [dbo].[ItemBuilds]    Script Date: 5/19/2017 3:55:52 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Zhaoyuan Sun
-- Create date: 5/5/2017
-- Description:	hey listen
-- =============================================
ALTER PROCEDURE [dbo].[ItemBuilds]
as
declare @matchID smallint
begin
select IName
from Builds
where matchID = @matchID
end
GO

