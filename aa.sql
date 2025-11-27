SELECT * FROM northwind.categories;

SELECT * FROM northwind.customer_demographics;

SELECT * FROM northwind.customers;

SELECT * FROM northwind.customer_customer_demo;

SELECT * FROM northwind.employees;

SELECT * FROM northwind.suppliers;

SELECT * FROM northwind.products;

SELECT * FROM northwind.region;

SELECT * FROM northwind.shippers;

SELECT * FROM northwind.orders;

SELECT * FROM northwind.territories;

SELECT * FROM northwind.employee_terri

SELECT MAX(order_id) FROM northwind.orders;

SELECT * FROM northwind.orders WHERE order_id>=11073;

SELECT * FROM northwind.customers WHERE customers.fax=N;

SELECT company_name as nazwa_klienta,count(northwind.orders.order_id) as liczba_zamowien
FROM northwind.customers 
	LEFT JOIN northwind.orders 
	ON northwind.customers.customer_id=northwind.orders.customer_id
	GROUP BY company_name
	ORDER BY liczba_zamowien DESC;

SELECT company_name as nazwa_klienta,count(northwind.orders.order_id) as liczba_zamowien
FROM northwind.customers 
	INNER JOIN northwind.orders 
	ON northwind.customers.customer_id=northwind.orders.customer_id
	GROUP BY company_name
	ORDER BY liczba_zamowien DESC;