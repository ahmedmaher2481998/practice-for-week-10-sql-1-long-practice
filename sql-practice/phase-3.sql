-- events 
--  1 
/*
 INSERT INTo
 customers (name, phone)
 VALUES
 ("Rachel", 111111111);
 */
-- 2
/*
 SELECT
 id,
 points CASE
 points
 WHEN points >= 10 THEN
 INSERT INTO
 coffee_orders (customer_id, coffee_id, is_redeemed)
 VALUES
 (id, 2, 1)
 ELSE
 INSERT INTO
 coffee_orders (customer_id, coffee_id, is_redeemed)
 VALUES
 (id, 2, 0)
 END
 FROM
 customers
 WHERE
 name = "Rachel";
 */
IIF(
  SELECT
    points
  FROM
    customers
  WHERE
    name = "Rachel" >= 10,
  INSERT INTO
    coffee_orders (customer_id, coffee_id.is_redeemed)
  VALUES
    (
      SELECT
        id
      FROM
        customers
      WHERE
        name = "Rachel",
        2,
        1
    ),
  INSERT INTO
    coffee_orders (customer_id, coffee_id.is_redeemed)
  VALUES
    (
      SELECT
        id
      FROM
        customers
      WHERE
        name = "Rachel",
        2,
        0
    )
) -- 3
/*
 INSERT INTo
 customers (name, email, phone)
 VALUES
 ("Monica", "monica @friends.show", 222222222);
 
 INSERT INTo
 customers (name, email, phone)
 VALUES
 ("Phoebe", "phoebe @friends.show", 333333333);
 */