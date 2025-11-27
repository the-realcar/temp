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
