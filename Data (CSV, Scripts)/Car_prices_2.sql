## CREATING THE TABLE

CREATE TABLE CarSales (
    YearOfManufacture INT,
    Brand VARCHAR(50),
    Transmission VARCHAR(10),
    VIN VARCHAR(17),
    State CHAR(2),
    Colour VARCHAR(20),
    Seller VARCHAR(100),
    Sales INT
);

## INSERTING VALUES INTO THE TABLE

INSERT INTO CarSales (YearOfManufacture, Brand, Transmission, VIN, State, Colour, Seller, Sales)
SELECT 
    FLOOR(RAND() * (2013 - 2000 + 1)) + 2000 AS YearOfManufacture,
    brands.Brand,
    transmissions.Transmission,
    CONCAT(
        FLOOR(RAND() * 3) + 1, 
        SUBSTRING(MD5(RAND()), 1, 5), 
        FLOOR(RAND() * 1000000)
    ) AS VIN,
    states.State,
    colours.Colour,
    sellers.Seller,
    FLOOR(RAND() * (100000 - 10000 + 1)) + 10000 AS Sales
FROM 
    (SELECT 'Toyota' AS Brand UNION ALL SELECT 'Honda' UNION ALL SELECT 'Ford' UNION ALL SELECT 'Chevrolet' UNION ALL SELECT 'Nissan' UNION ALL SELECT 'BMW') AS brands,
    (SELECT 'Automatic' AS Transmission UNION ALL SELECT 'Manual') AS transmissions,
    (SELECT 'al' AS State UNION ALL SELECT 'az' UNION ALL SELECT 'ca' UNION ALL SELECT 'fl' UNION ALL SELECT 'ny' UNION ALL SELECT 'tx' UNION ALL SELECT 'wa' UNION ALL SELECT 'nv' UNION ALL SELECT 'oh') AS states,
    (SELECT 'Red' AS Colour UNION ALL SELECT 'Blue' UNION ALL SELECT 'Green' UNION ALL SELECT 'Black' UNION ALL SELECT 'Gold' UNION ALL SELECT 'Burgundy' UNION ALL SELECT 'White' UNION ALL SELECT 'Silver') AS colours,
    (SELECT 'ABC Motors' AS Seller UNION ALL SELECT 'XYZ Auto' UNION ALL SELECT '123 Cars' UNION ALL SELECT 'Best Auto') AS sellers
LIMIT 1000;

## ADDING A COLUMN FOR 'DATE SOLD' INTO THE TABLE

ALTER TABLE CarSales
ADD COLUMN DateSold VARCHAR(10);

UPDATE CarSales
SET DateSold = DATE_FORMAT(
                    CASE 
                        WHEN RAND() < 0.5 THEN DATE_ADD('2022-04-01', INTERVAL FLOOR(RAND() * 244) DAY)
                        ELSE DATE_ADD('2023-08-01', INTERVAL FLOOR(RAND() * 153) DAY)
                    END,
                    '%d/%m/%Y'
                );