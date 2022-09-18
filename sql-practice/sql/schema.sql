DROP table if exists coffee_orders;

DROP TABLE if EXISTS coffee;

DROP TABLE if EXISTS customers;

CREATE table customers(
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name varchar(40) NOT NULL,
  phone NUMERIC(10, 0) UNIQUE,
  email varchar(255) UNIQUE,
  points INTEGER DEFAULT 5,
  created_at TIMESTAMP NOT NULL
);

CREATE table coffee(
  id INTEGER PRIMARY key AUTOINCREMENT,
  name varchar(250) NOT NULL
);

CREATE TABLE coffee_orders(
  customer_id INTEGER,
  coffee_id INTEGER,
  is_redeemed vrachr(100) DEFAULT "not redeemed",
  ordered_at TIMESTAMP,
  FOREIGN KEY (ordered_at) REFERENCES customers(created_at) FOREIGN KEY (customer_id) REFERENCES customers(id) FOREIGN KEY (coffee_id) REFERENCES coffee(id)
);