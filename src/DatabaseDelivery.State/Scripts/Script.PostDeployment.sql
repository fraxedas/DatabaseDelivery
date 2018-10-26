DECLARE @NewVersion int
SET @NewVersion = 9

DECLARE @CurrentVersion int
SELECT @CurrentVersion = CAST (Value as int)
FROM dbo.Settings
WHERE Name = 'Version'

--IF (@CurrentVersion < 5)
--BEGIN
--  UPDATE dbo.[User]
--  SET FirstName = LEFT(Name, CHARINDEX(' ', Name) - 1),
--	  LastName = RIGHT(Name, LEN(Name) - CHARINDEX(' ', Name))
--  FROM dbo.[User] u
--  INNER JOIN dbo.tmp_UserNames n ON n.ID = u.UserID
 
--  DROP TABLE dbo.tmp_UserNames
--END

--IF (@CurrentVersion < 7)
--BEGIN
--  INSERT dbo.UserStatus (UserStatusID, Name) VALUES (1, 'Regular')
--  INSERT dbo.UserStatus (UserStatusID, Name) VALUES (2, 'Preferred')
--  INSERT dbo.UserStatus (UserStatusID, Name) VALUES (3, 'Gold')

--  UPDATE dbo.[User]
--  SET StatusID = CASE WHEN s.Name = 'Preferred' THEN 2 WHEN s.Name = 'Gold' THEN 3 ELSE 1 END
--  FROM dbo.[User] u
--  INNER JOIN dbo.tmp_UserStatuses s ON s.ID = u.UserID

--  DROP TABLE dbo.tmp_UserStatuses
--END

/*
New post-deployment scripts go here
*/

:r ReferenceData.sql

IF (EXISTS (SELECT TOP 1 1 FROM dbo.Settings WHERE Name = 'Version'))
BEGIN
	UPDATE dbo.Settings
	SET Value = @NewVersion
	WHERE Name = 'Version'
END
ELSE
BEGIN
	INSERT dbo.Settings (Name, Value)
	VALUES ('Version', @NewVersion)
END
