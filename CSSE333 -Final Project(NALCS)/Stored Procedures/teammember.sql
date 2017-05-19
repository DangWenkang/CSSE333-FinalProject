USE [NA_LCS]
GO

/****** Object:  StoredProcedure [dbo].[teammember]    Script Date: 5/19/2017 3:58:35 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


ALTER procedure [dbo].[teammember]
as
declare @Teamname varchar(20)
begin
select playername
from PlayFor
where PlayFor.teamName= @Teamname
end
GO

