/* 5.Select the price in cents (by multiplying each price by 100) */
SELECT productname, unitprice*100 AS priceCents FROM products;