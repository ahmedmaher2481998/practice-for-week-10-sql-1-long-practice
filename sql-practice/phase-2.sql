-- Your code here
--  Creating tables and Seeding the coffe Table 
--  Droping the Previous DB
DROP table if exists coffee_orders;

DROP TABLE if EXISTS coffee;

DROP TABLE if EXISTS customers;

CREATE table customers(
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name varchar(40) NOT NULL,
  phone NUMERIC(10, 0) UNIQUE,
  email varchar(255) UNIQUE,
  points INTEGER DEFAULT 5,
  created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);

CREATE table coffee(
  id INTEGER PRIMARY key AUTOINCREMENT,
  name varchar(250) NOT NULL
);

CREATE TABLE coffee_orders(
  customer_id INTEGER,
  coffee_id INTEGER,
  is_redeemed NUMERIC(1, 0) DEFAULT 0,
  ordered_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY (coffee_id) REFERENCES coffee(id) FOREIGN KEY (customer_id) REFERENCES customers(id) FOREIGN KEY (coffee_id) REFERENCES coffee(id)
);

-- seeding the coffee table 
INSERT INTO
  coffee (name)
VALUES
  ("coffee regular"),
  ("coffee with milk"),
  ("Esspersso coffee");