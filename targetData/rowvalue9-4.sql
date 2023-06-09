

  CREATE TABLE d1(a TEXT, b INTEGER, c NUMERIC);
  CREATE TABLE d2(x BLOB, y BLOB);

  INSERT INTO d1 VALUES(1, 1, 1);
  INSERT INTO d1 VALUES(2, 2, 2);
  INSERT INTO d1 VALUES(3, 3, 3);
  INSERT INTO d1 VALUES(4, 4, 4);

  INSERT INTO d2 VALUES (1, 1);
  INSERT INTO d2 VALUES (2, '2');
  INSERT INTO d2 VALUES ('3', 3);
  INSERT INTO d2 VALUES ('4', '4');

 DROP INDEX IF EXISTS idx 
 DROP INDEX IF EXISTS idx2 
 DROP INDEX IF EXISTS idx3 


    SELECT rowid FROM d1 WHERE (a, c) IN (SELECT x, y FROM d2);
  


    SELECT rowid FROM d1 WHERE (c, a) IN (SELECT x, y FROM d2);
  


    SELECT rowid FROM d1 WHERE (+c, a) IN (SELECT x, y FROM d2);
  


    SELECT rowid FROM d1 WHERE (c, a) = (
      SELECT x, y FROM d2 WHERE d2.rowid=d1.rowid
    );
  


    SELECT d1.rowid FROM d1, d2 WHERE a = y;
  


    SELECT d1.rowid FROM d1 WHERE a = (
      SELECT y FROM d2 where d2.rowid=d1.rowid
    );
  
