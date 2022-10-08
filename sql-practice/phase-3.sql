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
  points = 7
WHERE
  name = "Phoebe";

-- then add the coffee order
INSERT INTO
  coffee_orders (coffee_id, customer_id, is_redeemed)
VALUES
  (2, 3, 0);

--  third coffe 
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
  points = 8
WHERE
  name = "Phoebe";

-- then add the coffee order
INSERT INTO
  coffee_orders (coffee_id, customer_id, is_redeemed)
VALUES
  (3, 3, 0);

--   5
--  Rachel each purchases four coffees.
-- rachel
UPDATE
  customers
SET
  points = 10
WHERE
  name = "Rachel";

-- then add the coffee order
INSERT INTO
  coffee_orders (coffee_id, customer_id, is_redeemed)
VALUES
  (1, 1, 0);

INSERT INTO
  coffee_orders (coffee_id, customer_id, is_redeemed)
VALUES
  (2, 1, 0);

INSERT INTO
  coffee_orders (coffee_id, customer_id, is_redeemed)
VALUES
  (3, 1, 0);

INSERT INTO
  coffee_orders (coffee_id, customer_id, is_redeemed)
VALUES
  (1, 1, 0);

--   Monica each purchases four coffees.
UPDATE
  customers
SET
  points = 10
WHERE
  name = "Monica";

-- Monica 4 coffe 
INSERT INTO
  coffee_orders (coffee_id, customer_id, is_redeemed)
VALUES
  (1, 2, 0);

INSERT INTO
  coffee_orders (coffee_id, customer_id, is_redeemed)
VALUES
  (2, 2, 0);

INSERT INTO
  coffee_orders (coffee_id, customer_id, is_redeemed)
VALUES
  (3, 2, 0);

INSERT INTO
  coffee_orders (coffee_id, customer_id, is_redeemed)
VALUES
  (3, 2, 0);

--   6
--  Monica wants to know her new point total.
SELECT
  points
from
  customers
WHERE
  id = 2;

-- 7
--  Rachel wants to check her total points. Redeem her points 
-- for a coffee if she has enough points. If she doesn't, 
-- she wants to purchase a coffee.
SELECT
  points
FROM
  customers
WHERE
  id = 1;

INSERT INTO
  coffee_orders (customer_id, coffee_id, is_redeemed)
VALUES
  (1, 2, 1);

UPDATE
  customers
SET
  points = 0
WHERE
  id = 1;

--  8 
-- Three new customers joined the loyalty program with
--  the following customer information
INSERT INTO
  customers (name, email)
VALUES
  ("Joey", "joey@friends.show
 "),
  ("Chandler", "chandler@friends.show
 "),
  ("Ross", "ross@friends.show
 ");

-- 9 Ross purchases six coffees.
UPDATE
  customers
SET
  points = 11
WHERE
  id = 6;

INSERT INTO
  coffee_orders (customer_id, coffee_id, is_redeemed)
VALUES
  (6, 1, 0),
  (6, 2, 0),
  (6, 3, 0),
  (6, 1, 0),
  (6, 2, 0),
  (6, 3, 0);

-- 10
UPDATE
  customers
set
  points = 13
WHERE
  name = "Monica";

INSERT INTO
  coffee_orders (customer_id, coffee_id, is_redeemed)
VALUES
  (2, 1, 0),
  (2, 2, 0),
  (2, 3, 0);

-- 11
SELECT
  points
from
  customers
WHERE
  name = "Phoebe";

UPDATE
  customers
SET
  points = 9
WHERE
  name = "Phoebe";

INSERT INTO
  coffee_orders (customer_id, coffee_id, is_redeemed)
VALUES
  (3, 2, 0);

--12  points -1
UPDATE
  customers
set
  points = (
    SELECT
      points
    FROM
      customers
    WHERE
      name = "Ross"
  ) -1
WHERE
  name = "Ross";

DELETE FROM
  coffee_orders
WHERE
  id = 19;

-- 13 
-- Joey purchases two coffees.
UPDATE
  customers
set
  points = 7
WHERE
  name = "Joey";

INSERT INTO
  coffee_orders (customer_id, coffee_id, is_redeemed)
VALUES
  (4, 1, 0),
  (4, 2, 0);

--  14
SELECT
  points
FROM
  customers
WHERE
  name = "Monica";

INSERT INTO
  coffee_orders (customer_id, coffee_id, is_redeemed)
VALUES
  (2, 2, 1);

UPDATE
  customers
SET
  points = 0
WHERE
  name = "Monica";

--  15 
DELETE FROM
  coffee_orders
WHERE
  customer_id = (
    SELECT
      id
    FROM
      customers
    WHERE
      name = "Chandler"
  );

DELETE FROM
  customers
WHERE
  name = "Chandler";

--  16
SELECT
  points
FROM
  customers
WHERE
  name = "Ross";

UPDATE
  customers
set
  points = (
    SELECT
      points
    FROM
      customers
    WHERE
      name = "Ross"
  ) -10
WHERE
  name = "Ross";

INSERT INTO
  coffee_orders (customer_id, coffee_id, is_redeemed)
VALUES
  (6, 1, 1);

--  17
SELECT
  points
FROM
  customers
WHERE
  name = "Joey";

UPDATE
  customers
set
  points = (
    SELECT
      points
    FROM
      customers
    WHERE
      name = "Joey"
  ) + 1
WHERE
  name = "Joey";

INSERT INTO
  coffee_orders (customer_id, coffee_id, is_redeemed)
VALUES
  (4, 2, 0);

--  18 
UPDATE
  customers
SET
  email = "p_as_in_phoebe@friends.show"
WHERE
  name = "Phoebe";