SELECT * FROM [dbo].[data-1];
ALTER TABLE [data-1]
ALTER COLUMN mobile varchar(10);
SELECT * FROM [dbo].[data-1];
TRUNCATE TABLE [data-1];
INSERT INTO [data-1]
VALUES (01,'Sadik', '9014337060'), (02, 'Saleem', '9012361738'), (03, 'Kaleem', '9102725362');
EXEC sp_rename '[data-1].[sl.no]','sl.no';
SELECT * FROM [dbo].[data-1];