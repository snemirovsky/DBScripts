/*
	Created by:		Sergei Nemirovsky
	Created on:		2015-01-26
	
	Purpose:		Add 'Order Type' column to the existing table
						
	Notes:			2015-01-26  Initial verison created 
		
	Modified by:	
	Modified on:	
	
	Notes:			
*/

if not exists (SELECT * FROM   INFORMATION_SCHEMA.COLUMNS  WHERE  TABLE_NAME = 'stagingOut1DWSales'
                 AND COLUMN_NAME = 'Order Type')
begin
	ALTER TABLE [dbo].[stagingOut1DWSales] ADD [Order Type] nvarchar(255) NULL ;
end
GO
