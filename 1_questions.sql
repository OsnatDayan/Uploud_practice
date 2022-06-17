-- LINK: https://en.wikibooks.org/wiki/SQL_Exercises/The_computer_store
-- 1.1 Select the names of all the products in the store.
SELECT Name FROM `products`;
-- 1.2 Select the names and the prices of all the products in the store.
SELECT NAME ,PRICE FROM `products`;
-- 1.3 Select the name of the products with a price less than or equal to $200.
SELECT Name FROM `products` WHERE `Price`<= 200;
-- 1.4 Select all the products with a price between $60 and $120.
SELECT * FROM `products` WHERE `Price` BETWEEN 60 AND 120;
-- 1.5 Select the name and price in cents (i.e., the price must be multiplied by 100).
SELECT NAME ,PRICE*100 FROM `products`;
-- 1.6 Compute the average price of all the products.
SELECT AVG(`Price`) FROM `products`;
-- 1.7 Compute the average price of all products with manufacturer code equal to 2.
SELECT AVG(`Price`) FROM `products` WHERE `Manufacturer`=2;
-- 1.8 Compute the number of products with a price larger than or equal to $180.
SELECT COUNT(*) FROM `products` WHERE `Price`>=180;
-- 1.9 Select the name and price of all products with a price larger than or equal to $180, and sort first by price (in descending order), and then by name (in ascending order).
SELECT `Name`,`Price` FROM `products` WHERE `Price`>=180 ORDER BY `products`.`Name` ASC
-- 1.10 Select all the data from the products, including all the data for each product's manufacturer.

-- 1.11 Select the product name, price, and manufacturer name of all the products.

-- 1.12 Select the average price of each manufacturer's products, showing only the manufacturer's code.
SELECT AVG(`Price`),`Manufacturer` FROM `products` GROUP BY `Manufacturer`;
-- 1.13 Select the average price of each manufacturer's products, showing the manufacturer's name.

-- 1.14 Select the names of manufacturer whose products have an average price larger than or equal to $150.

-- 1.15 Select the name and price of the cheapest product.
SELECT MIN(`Price`),`Name` FROM `products`;
-- 1.16 Select the name of each manufacturer along with the name and price of its most expensive product.
-- 1.17 Add a new product: Loudspeakers, $70, manufacturer 2.
INSERT INTO `products`(`Code`, `Name`, `Price`, `Manufacturer`) VALUES ('11','Loudspeakers','70','2');
-- 1.18 Update the name of product 8 to "Laser Printer".
UPDATE `products` SET `Name`='Laser Printer' WHERE `Code`=8;
-- 1.19 Apply a 10% discount to all products.
UPDATE `products` SET `Price`=`Price`*0.9;
-- 1.20 Apply a 10% discount to all products with a price larger than or equal to $120.
UPDATE `products` SET `Price`=`Price`*0.9 WHERE `Price`>=120;
