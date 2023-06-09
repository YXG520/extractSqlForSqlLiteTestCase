

  CREATE TABLE tree(i, p);
  INSERT INTO tree VALUES(1, NULL);
  INSERT INTO tree VALUES(2, 1);
  INSERT INTO tree VALUES(3, 1);
  INSERT INTO tree VALUES(4, 2);
  INSERT INTO tree VALUES(5, 4);



  WITH t(id, path) AS (
    SELECT i, '' FROM tree WHERE p IS NULL
    UNION ALL
    SELECT i, path || '/' || i FROM tree, t WHERE p = id
  ) 
  SELECT path FROM t;



  WITH t(id) AS (
    VALUES(2)
    UNION ALL
    SELECT i FROM tree, t WHERE p = id
  ) 
  SELECT id FROM t;



  WITH t(id) AS (
    VALUES(2)
    UNION ALL
    SELECT i FROM tree WHERE p IN (SELECT id FROM t)
  ) 
  SELECT id FROM t;



  WITH t(id) AS (
    VALUES(2)
    UNION ALL
    SELECT i FROM tree, t WHERE p = id AND p IN (SELECT id FROM t)
  ) 
  SELECT id FROM t;



  WITH t(id) AS (
    SELECT i FROM tree WHERE 2 IN (SELECT id FROM t)
    UNION ALL
    SELECT i FROM tree, t WHERE p = id
  ) 
  SELECT id FROM t;

