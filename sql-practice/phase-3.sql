-- events 
--  1 
INSERT INTo
  customers (name, phone)
VALUES
  ("Rachel", 111111111);

-- 2
-- check the current points of the customer
SELECT
  points
from
  customers
WHERE
  name = "Rachel";

--  update the customer's points
UPDATE
  customers
SET
  points = 6
WHERE
  name = "Rachel";

-- then add the coffee order
INSERT INTO
  coffee_orders (coffee_id, customer_id, is_redeemed)
VALUES
  (3, 1, 0);

--  3
--  Two new customers joined the loyalty program
INSERT INTo
  customers (name, email, phone)
VALUES
  ("Monica", "monica @friends.show", 222222222);

INSERT INTo
  customers (name, email, phone)
VALUES
  ("Phoebe", "phoebe @friends.show", 333333333);

--   4 Phoebe purchases three coffees
-- first coffe 
-- check the current points of the customer
SELECT
  points
from
  customers
WHERE
  name = "Phoebe";

--  update the customer's points
UPDATE
  customers
SET
  points = 6
WHERE
  name = "Phoebe";

-- then add the coffee order
INSERT INTO
  coffee_orders (coffee_id, customer_id, is_redeemed)
VALUES
  (1, 3, 0);

--  second coffe 
-- check the current points of the customer
SELECT
  points
from
  customers
WHERE
  name = "Phoebe";

--  update the customer's points
UPDATE
  customers
SET
  points = 6
WHERE
  name = "Phoebe";

-- then add the coffee order
INSERT INTO
  coffee_orders (coffee_id, customer_id, is_redeemed)
VALUES
  (1, 3, 0);