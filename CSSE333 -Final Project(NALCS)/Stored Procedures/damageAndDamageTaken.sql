USE [NA_LCS]
GO

/****** Object:  StoredProcedure [dbo].[damageAndDamageTaken]    Script Date: 5/19/2017 3:54:38 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Zhaoyuan Sun
-- Create date: Spring
-- Description:	Players' damage and damage taken
-- =============================================
ALTER PROCEDURE [dbo].[damageAndDamageTaken]
as
begin
select playername, (sum(Damage)/count(Damage)) as Damage, (sum(DamageTaken)/count(DamageTaken)) as DamageTaken
from PlayIn
group by PlayerName
end
GO

