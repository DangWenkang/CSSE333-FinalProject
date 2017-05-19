USE [NA_LCS]
GO

/****** Object:  StoredProcedure [dbo].[checkitem]    Script Date: 5/19/2017 3:53:40 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


ALTER procedure [dbo].[checkitem]
(@PlayerName varchar(20))
as
begin
select playername,iname,attribute
from items, player
where playername = @PlayerName
end
GO

