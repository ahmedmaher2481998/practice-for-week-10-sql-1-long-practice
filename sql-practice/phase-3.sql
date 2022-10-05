IF EXISTS (SELECT * from customers WHERE points > 10 AND name ='Rachel')
	
      name = "Rachel"
  ) - 10
WHERE
  name = "Rachel";
ELSE
	INSERT INTO coffee_orders (customer_id, coffee_id) VALUES (
	SELECT id from customers WHERE name ="Rachel",3
	)
	UPDATE
      name = "Rachel"
  ) + 2
WHERE
  name = "Rachel";