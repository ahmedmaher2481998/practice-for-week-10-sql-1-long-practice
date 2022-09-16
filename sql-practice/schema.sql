DROP table if exists customer;

DROP table if exists coffee;

DROP table if exists orders;

CREATE table customer(
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name varchar(100) NOT NULL,
  points INTEGER DEFAULT 5
);

CREATE table coffee(
  id INTEGER PRIMARY key AUTOINCREMENT,
  name varchar(250) NOT NULL
);

CREATE TABLE orders(
  customer_id INTEGER,
  coffee_id INTEGER,
  FOREIGN KEY (customer_id) REFERENCES customer(id) FOREIGN KEY (coffee_id) REFERENCES coffee(id)
);