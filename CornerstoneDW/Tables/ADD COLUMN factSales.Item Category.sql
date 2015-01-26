/*
	Created by:		Sergei Nemirovsky
	Created on:		2015-01-26
	
	Purpose:		Add 'Item Category' column to the existing table
						
	Notes:			2015-01-26  Initial verison created 
		
	Modified by:	
	Modified on:	
	
	Notes:			
*/

if not exists (SELECT * FROM   INFORMATION_SCHEMA.COLUMNS  WHERE  TABLE_NAME = 'factSales'
                 AND COLUMN_NAME = 'Item Category')
begin
	ALTER TABLE [dbo].[factSales] ADD [Item Category] nvarchar(255) NULL ;
end
GO
