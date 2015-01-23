/*
	Created by:		Sergei Nemirovsky
	Created on:		2015-01-22
	
	Purpose:		Add 'Freight Amount' column to the existing table
						
	Notes:			2015-01-22  Initial verison created 
		
	Modified by:	
	Modified on:	
	
	Notes:			
*/

if not exists (SELECT * FROM   INFORMATION_SCHEMA.COLUMNS  WHERE  TABLE_NAME = 'stagingOut1DWSales'
                 AND COLUMN_NAME = 'Freight Amount')
begin
	ALTER TABLE [dbo].[stagingOut1DWSales] ADD [Freight Amount] decimal(38, 2) NULL ;
end
GO
