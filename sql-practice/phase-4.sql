-- Your code here
-- Creating Schema 

DROP TABLE if EXISTS office_romance;

DROP TABLE if EXISTS performance_review;

DROP TABLE if EXISTS parties;

DROP TABLE if EXISTS employees;

--  creating tables 
CREATE TABLE employees(
  id INTEGER PRIMARY key AUTOINCREMENT,
  first_name varchar(250) NOT NULL,
  last_name varchar(250) NOT NULL,
  department varchar(250),
  role varchar(250)
);

CREATE TABLE performance_review(
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  employee_id INTEGER,
  score NUMERIC(2, 1),
  FOREIGN KEY (employee_id) REFERENCES employees(id)
);

CREATE TABLE office_romance(
  id INTEGER PRIMARY key AUTOINCREMENT,
  employee_one INTEGER,
  employee_two INTEGER,
  relation_name varchar(250) NOT NULL,
  relation_on Boolean DEFAULT 1,
  FOREIGN KEY (employee_one) REFERENCES employees(id) FOREIGN KEY (employee_two) REFERENCES employees(id)
);

CREATE TABLE parties(
  id INTEGER PRIMARY key AUTOINCREMENT,
  budget NUMERIC(5, 2) NOT NULL,
  off_site Boolean NOT NULL
);

--  addding employees 
INSERT INTO
  employees (first_name, last_name, department, role)
VALUES
  (
    "Michael",
    "Scott",
    "Management",
    "Regional Manager"
  ),
(
    "Dwight",
    "Schrute",
    "Sales",
    "Assistant Regional Manager"
  ),
("Jim", "Halpert", "Sales", "Sales Representative"),
("Pam", "Beesly", "Reception", "Receptionist"),
(
    "Kelly",
    "Kapoor",
    "Product Oversight",
    "Customer Service Representative"
  ),
(
    "Angela",
    "Martin",
    "Accounting",
    "Head of Accounting"
  ),
("Roy", "Anderson", "Warehouse", "Warehouse Staff");

--  roy and pam engagged 

INSERT INTO
  office_romance (
    employee_one,
    employee_two,
    relation_name,
    relation_on
  )
VALUES
  (
    (
      SELECT
        id
      FROM
        employees
      WHERE
        first_name = "Roy"
        AND last_name = "Anderson"
    ),
    (
      SELECT
        id
      FROM
        employees
      WHERE
        first_name = "Pam"
        AND last_name = "Beesly"
    ),
    "engaged",
    1
  ) ;
  -- rayen hired 
INSERT INTO
  employees (first_name, last_name, department, role)
VALUES
  ("Ryan", "Howard", "Reception", "Temp");

-- party 
INSERT INTO
  parties (budget, off_site)
VALUES
  (100.00, 0);

--dawight performance 
INSERT INTO
  performance_review (employee_id, score)
VALUES
  (
    (
      SELECT
        id
      FROM
        employees
      WHERE
        first_name = "Dwight"
    ),
    3.3
  );

-- jim halpert performance 
INSERT INTO
  performance_review (employee_id, score)
VALUES
  (
    (
      SELECT
        id
      FROM
        employees
      WHERE
        last_name = "Halpert"
    ),
    3.3
  );

-- update dawight performance 
UPDATE
  performance_review
SET
  score = 9
WHERE
  employee_id = 2;

-- jim too j
UPDATE
  performance_review
SET
  score = 9.3
WHERE
  employee_id = 3;

-- jim promoted 
UPDATE
  employees
SET
  role = "Assistant Regional Manager"
WHERE
  first_name = "Jim"
  AND last_name = "Halpert";

-- rayen promoted 
UPDATE
  employees
SET
  role = "Sales Representative",
  department = "Sales"
WHERE
  first_name = "Ryan"
  AND last_name = "Howard";

-- party 200$ 
INSERT INTO
  parties (budget, off_site)
VALUES
  (200.00, 0);

--  angela and dawight get together 
INSERT INTO
  office_romance (
    employee_one,
    employee_two,
    relation_name,
    relation_on
  )
VALUES
  (
    (
      SELECT
        id
      FROM
        employees
      WHERE
        first_name = "Angela"
        AND last_name = "Martin"
    ),
    (
      SELECT
        id
      FROM
        employees
      WHERE
        first_name = "Dwight"
        AND last_name = "Schrute"
    ),
    "Secret Love Afaire",
    1
  );

-- angela performance 
INSERT INTO
  performance_review (employee_id, score)
VALUES
  (
    (
      SELECT
        id
      FROM
        employees
      WHERE
        first_name = "Angela"
        AND last_name = "Martin"
    ),
    6.2
  );

--  kelly and rayan togehter 
INSERT INTO
  office_romance (
    employee_one,
    employee_two,
    relation_name,
    relation_on
  )
VALUES
  (
    (
      SELECT
        id
      FROM
        employees
      WHERE
        first_name = "Ryan"
        AND last_name = "Howard"
    ),
    (
      SELECT
        id
      FROM
        employees
      WHERE
        first_name = "Kelly"
        AND last_name = "Kapoor"
    ),
    "Toxic relation ship",
    1
  );

INSERT INTO
  parties (budget, off_site)
VALUES
  (50.0, 0);

-- jim moves from the office 
DELETE FROM
  performance_review
WHERE
  employee_id = (
    SELECT
      id
    from
      employees
    WHERE
      first_name = "Jim"
      AND last_name = "Halpert"
  );

DELETE FROM
  employees
WHERE
  first_name = "Jim"
  AND last_name = "Halpert";

-- pam and roy over 
UPDATE
  office_romance
SET
  relation_on = 0
WHERE
  employee_one = 4
  OR employee_two = 4;

-- pam performance 
INSERT INTO
  performance_review (employee_id, score)
VALUES
  (
    (
      SELECT
        id
      FROM
        employees
      WHERE
        first_name = "Pam"
        and last_name = "Beesly"
    ),
    7.6
  );

-- dawigh reperformance 
INSERT INTO
  performance_review (employee_id, score)
VALUES
  (
    (
      SELECT
        id
      FROM
        employees
      WHERE
        first_name = "Dwight"
        and last_name = "Schrute"
    ),
    8.7
  );

-- rayn leaves 
DELETE FROM
  office_romance
WHERE
  employee_one = 8
  or employee_two = 8;

DELETE FROM
  performance_review
WHERE
  employee_id = 8;

DELETE FROM
  employees
WHERE
  id = 8;

-- jim is back 
INSERT INTO
  employees (first_name, last_name, department, role)
VALUES
  ("Jim", "Halpert", "Sales", "Sales Representative");

-- karen is here now 
INSERT INTO
  employees (first_name, last_name, department, role)
VALUES
  (
    "Karen",
    "Filippelli",
    "Sales",
    "Sales Representative"
  );

-- karen and jim 
INSERT INTO
  office_romance (
    employee_one,
    employee_two,
    relation_name,
    relation_on
  )
VALUES
  (9, 10, "Love and healthy", 1);

-- party 
INSERT INTO
  parties (budget, off_site)
VALUES
  (120.00, 0);

-- party vhanges 
UPDATE
  parties
SET
  budget = 300,
  off_site = 1
WHERE
  off_site = 0
  AND budget = 120;

-- jim and karen is off 
UPDATE
  office_romance
SET
  relation_on = 0
WHERE
  employee_one = 9
  AND employee_two = 10;

-- true love is here 
INSERT INTO
  office_romance (
    employee_one,
    employee_two,
    relation_name,
    relation_on
  )
VALUES
  (9, 4, "True Love*_*", 1);