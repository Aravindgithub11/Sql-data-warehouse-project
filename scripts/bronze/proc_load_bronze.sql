CREATE OR ALTER PROCEDURE bronze.load_bronze AS 
BEGIN
PRINT'Loading BronzeLayer'
TRUNCATE TABLE bronze.crm_cust_info;
	BULK INSERT bronze.crm_cust_info
	FROM 'D:\SQL_Data_Warehouse_Project\sql-data-warehouse-project\datasets\source_crm\cust_info.csv'
	WITH(
	FIRSTROW=2,
	FIELDTERMINATOR =',',
	TABLOCK
	);

TRUNCATE TABLE bronze.crm_prd_info;
	BULK INSERT bronze.crm_prd_info
	FROM 'D:\SQL_Data_Warehouse_Project\sql-data-warehouse-project\datasets\source_crm\prd_info.csv'
	WITH (
	FIRSTROW=2,
	FIELDTERMINATOR=',',
	TABLOCK
	);

TRUNCATE TABLE bronze.crm_sales_details;
	BULK INSERT bronze.crm_sales_details
	FROM 'D:\SQL_Data_Warehouse_Project\sql-data-warehouse-project\datasets\source_crm\sales_details.csv'
	WITH (
	FIRSTROW=2,
	FIELDTERMINATOR=',',
	TABLOCK
	);

TRUNCATE TABLE bronze.erp_CUST_AZ12;
	BULK INSERT bronze.erp_CUST_AZ12
	FROM 'D:\SQL_Data_Warehouse_Project\sql-data-warehouse-project\datasets\source_erp\CUST_AZ12.csv'
	WITH (
	FIRSTROW=2,
	FIELDTERMINATOR=',',
	TABLOCK
	);


TRUNCATE TABLE bronze.erp_LOC_A101;
	BULK INSERT bronze.erp_LOC_A101
	FROM 'D:\SQL_Data_Warehouse_Project\sql-data-warehouse-project\datasets\source_erp\LOC_A101.csv'
	WITH (
	FIRSTROW=2,
	FIELDTERMINATOR=',',
	TABLOCK
	);

TRUNCATE TABLE bronze.erp_PX_CAT_G1V2;
	BULK INSERT bronze.erp_PX_CAT_G1V2
	FROM 'D:\SQL_Data_Warehouse_Project\sql-data-warehouse-project\datasets\source_erp\PX_CAT_G1V2.csv'
	WITH (
	FIRSTROW=2,
	FIELDTERMINATOR=',',
	TABLOCK
	);
END
