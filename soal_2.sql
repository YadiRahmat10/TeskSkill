-- DATABASE Classic Model

USE classicmodels;

SELECT * FROM customers;

-- query menampilkan customerNumber yg memesan productLine ---> total productionline > 23 

SELECT count(customerNumber) as productionline 
FROM customers 
GROUP BY productLines 
HAVING productionline >= 23;


