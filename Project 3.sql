DROP TABLE product_information;

CREATE TABLE product_information(
	SKU CHAR(7),
	Product_Description VARCHAR(255),
	Supplier VARCHAR(255),
	City VARCHAR(255),
	Unit_Cost DECIMAL(10,2),
	Unit_Price DECIMAL(10,2));
	
COPY product_information 
FROM 'C:\Users\jonsk\OneDrive\Documents\Product Data.csv'
DELIMITER ','
CSV HEADER;

SELECT * FROM product_information;

SELECT count(*)
FROM product_information;


SELECT SUM(Unit_Cost) AS costs
FROM product_information
WHERE
(
		(SKU = '6GFG89')
	OR
		(SKU = '1FTH46')
);