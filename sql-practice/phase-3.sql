-- Your code here
-- 1-
INSERT INTO
  customers (name, phone)
VALUES
  ("Rachel", 111111111);

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

INSERT INTO
  coffee_o
INSERT INTO
  customers (name, email, phone)
VALUES
  ("Monica", "monica@friends.show", 2222222222);

INSERT INTO
  customers (name, email, phone)
VALUES
  ("Phoebe", "phoebe@friends.show", 3333333333);