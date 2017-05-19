USE [NA_LCS]
GO

/****** Object:  StoredProcedure [dbo].[Login_check]    Script Date: 5/19/2017 3:56:07 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

ALTER Procedure [dbo].[Login_check] (@username nvarchar(25)='0',
							  @password nvarchar(32)='0')
As

IF @username = '0' or @password='0'
Begin
Raiserror('Username and Password cannot be empty.', 14, 1)
Return
END

Select * From UserLogIn Where Username=@username and MD5=hashbytes('MD5', @password)
GO

