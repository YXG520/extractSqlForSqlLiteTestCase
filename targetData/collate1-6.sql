

  SELECT """""""";



  CREATE TABLE x1(a);
  SELECT a FROM x1 ORDER BY a COLLATE """""""";



  SELECT a FROM x1 ORDER BY 1 COLLATE """""""";



  SELECT 0 UNION SELECT 0 ORDER BY 1 COLLATE """""""";



  PRAGMA foreign_keys = ON;
  CREATE TABLE p1(a PRIMARY KEY COLLATE '"""');
  CREATE TABLE c1(x, y REFERENCES p1);


 
  INSERT INTO p1 VALUES('abc'); 
  INSERT INTO c1 VALUES(1, 'ABC'); 


 
    DELETE FROM p1 WHERE rowid = 1 
  

 
  INSERT INTO p1 VALUES('abb');
  INSERT INTO p1 VALUES('wxz');
  INSERT INTO p1 VALUES('wxy');

  INSERT INTO c1 VALUES(2, 'abb');
  INSERT INTO c1 VALUES(3, 'wxz');
  INSERT INTO c1 VALUES(4, 'WXY');
  SELECT x, y FROM c1 ORDER BY y COLLATE """""""";

