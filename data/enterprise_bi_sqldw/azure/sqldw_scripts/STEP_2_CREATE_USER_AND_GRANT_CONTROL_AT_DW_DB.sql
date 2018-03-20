
IF EXISTS (SELECT NAME FROM sys.sysusers WHERE NAME ='LoaderRC20')
BEGIN
	DROP USER LoaderRC20
END
CREATE USER LoaderRC20 FOR LOGIN LoaderRC20;
GRANT CONTROL ON DATABASE::[wwi] to LoaderRC20;
EXEC sp_addrolemember 'staticrc20', 'LoaderRC20';