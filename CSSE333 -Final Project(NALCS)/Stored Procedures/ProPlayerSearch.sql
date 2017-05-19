USE [NA_LCS]
GO

/****** Object:  StoredProcedure [dbo].[ProPlayerSearch]    Script Date: 5/19/2017 3:57:56 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Zhaoyuan Sun
-- Create date: Yesterday
-- Description:	Ability to search for every proffessional player and his/her information
-- =============================================
ALTER PROCEDURE [dbo].[ProPlayerSearch]
as
declare @playerName varchar(20)
begin
select *
from playin
where PlayerName like '%' + @playerName + '%'
end
GO

