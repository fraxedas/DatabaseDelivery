DECLARE @CurrentVersion int
SELECT @CurrentVersion = CAST (Value as int)
FROM dbo.Settings
WHERE Name = 'Version'

--IF (@CurrentVersion < 5)
--BEGIN
--  CREATE TABLE dbo.tmp_UserNames (ID bigint, Name nvarchar(200))

--  INSERT dbo.tmp_UserNames (ID, Name)
--  SELECT u.UserID, u.Name
--  FROM dbo.[User] u
--END

--IF (@CurrentVersion < 7)
--BEGIN
--  CREATE TABLE dbo.tmp_UserStatuses (ID bigint, Name nvarchar(50))

--  INSERT dbo.tmp_UserStatuses (ID, Name)
--  SELECT u.UserID, u.[Status]
--  FROM dbo.[User] u
--END

/*
New pre-deployment scripts go here
*/
