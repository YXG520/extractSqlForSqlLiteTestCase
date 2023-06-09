

  CREATE TABLE employees (
    id integer primary key,
    name text,
    city text,
    department text,
    salary integer
  );
  INSERT INTO employees VALUES
    (11,'Diane','London','hr',70),
    (12,'Bob','London','hr',78),
    (21,'Emma','London','it',84),
    (22,'Grace','Berlin','it',90),
    (23,'Henry','London','it',104),
    (24,'Irene','Berlin','it',104),
    (25,'Frank','Berlin','it',120),
    (31,'Cindy','Berlin','sales',96),
    (32,'Dave','London','sales',96),
    (33,'Alice','Berlin','sales',100);
  CREATE VIEW v AS
    SELECT * FROM (
      SELECT * FROM employees 
       WHERE salary < 100
       ORDER BY salary desc)
     UNION ALL 
     SELECT * FROM (
       SELECT * FROM employees
       WHERE salary >= 100
       ORDER BY salary asc);



  SELECT * FROM v LIMIT 5 OFFSET 2;

