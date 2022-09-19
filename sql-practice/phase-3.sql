-- 1-
-- adding rachel
INSERT INTO
  customers (name, phone)
VALUES
  ("Rachel", 111111111);

-- rachel buyes coffee
INSERT INTO
  coffee_orders (customer_id, coffee_id)
VALUES
  (
    (
      SELECT
        id
      FROM
        customers
      WHERE
        name = 'Rachel'
    ),
    1
  );

UPDATE
  customers
set
  points = (
    SELECT
      points
    FROM
      customers
    WHERE
      name = "Rachel"
  ) + 2
WHERE
  name = "Rachel";

-- adding monica & phoebe
INSERT INTO
  customers (name, email, phone)
VALUES
  ("Monica", "monica@friends.show", 2222222222),
  ("Phoebe", "phoebe@friends.show", 3333333333);

-- pheobe buys 3 coffees 
INSERT INTO
  coffee_orders (customer_id, coffee_id)
VALUES
  (
    (
      SELECT
        id
      FROM
        customers
      WHERE
        name = 'Phoebe'
    ),
    1
  ),
  (
    (
      SELECT
        id
      FROM
        customers
      WHERE
        name = 'Phoebe'
    ),
    2
  ),
  (
    (
      SELECT
        id
      FROM
        customers
      WHERE
        name = 'Phoebe'
    ),
    3
  );

UPDATE
  customers
set
  points = (
    SELECT
      points
    FROM
      customers
    WHERE
      name = "Phoebe"
  ) + 6
WHERE
  name = "Phoebe";

-- Rachel and Monica each purchase four coffees
-- placing 4 orders for rachel and 3types of coffee
INSERT INTO
  coffee_orders (customer_id, coffee_id)
VALUES
  (
    (
      SELECT
        id
      FROM
        customers
      WHERE
        name = 'Rachel'
    ),
    1
  ),
  (
    (
      SELECT
        id
      FROM
        customers
      WHERE
        name = 'Rachel'
    ),
    2
  ),
  (
    (
      SELECT
        id
      FROM
        customers
      WHERE
        name = 'Rachel'
    ),
    3
  ),
  (
    (
      SELECT
        id
      FROM
        customers
      WHERE
        name = 'Rachel'
    ),
    1
  );

-- placing orders of 4 coffes for monica 
INSERT INTO
  coffee_orders (customer_id, coffee_id)
VALUES
  (
    (
      SELECT
        id
      FROM
        customers
      WHERE
        name = 'Monica'
    ),
    1
  ),
  (
    (
      SELECT
        id
      FROM
        customers
      WHERE
        name = 'Monica'
    ),
    2
  ),
  (
    (
      SELECT
        id
      FROM
        customers
      WHERE
        name = 'Monica'
    ),
    3
  ),
  (
    (
      SELECT
        id
      FROM
        customers
      WHERE
        name = 'Monica'
    ),
    1
  );

-- adding Rachel points 
UPDATE
  customers
set
  points = (
    SELECT
      points
    FROM
      customers
    WHERE
      name = "Rachel"
  ) + 8
WHERE
  name = "Rachel";

-- adding Monica points
UPDATE
  customers
set
  points = (
    SELECT
      points
    FROM
      customers
    WHERE
      name = "Monica"
  ) + 8
WHERE
  name = "Monica";

-- Monica wants to know her new point total
SELECT
  points
FROM
  customers
WHERE
  name = "Monica";

-- Rachel wants to check her total points.
-- Redeem her points for a coffee if she has enough 
-- points.If she doesn 't, she wants to purchase a coffee.
INSERT INTO
  coffee_orders (customer_id, coffee_id, is_redeemed)
SELECT