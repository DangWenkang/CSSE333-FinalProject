USE [NA_LCS]
GO

/****** Object:  StoredProcedure [dbo].[Sign_up]    Script Date: 5/19/2017 3:58:20 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

ALTER Procedure [dbo].[Sign_up] (@username nvarchar(25)='0',
					      @password nvarchar(33)='0')
As

IF @username = '0' or @password='0'
Begin
Raiserror('Username and Password cannot be empty.', 14, 1)
Return
END

IF @username in (Select Username From UserLogIn)
Begin
	Raiserror('Username already exist, please try the other one',14,1)
	Return
End
insert into UserLogIn values (@username, HashBytes('MD5',@password))

GO

