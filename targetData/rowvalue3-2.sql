

  CREATE TABLE z1(x, y, z);
  CREATE TABLE kk(a, b);

  INSERT INTO z1 VALUES('a', 'b', 'c');
  INSERT INTO z1 VALUES('d', 'e', 'f');
  INSERT INTO z1 VALUES('g', 'h', 'i');

  -- INSERT INTO kk VALUES('y', 'y');
  INSERT INTO kk VALUES('d', 'e');
  -- INSERT INTO kk VALUES('x', 'x');


DROP INDEX IF EXISTS z1idx


    SELECT * FROM z1 WHERE x IN (SELECT a FROM kk)
  


    SELECT * FROM z1 WHERE (x,y) IN (SELECT a, b FROM kk)
  


    SELECT * FROM z1 WHERE (x, +y) IN (SELECT a, b FROM kk)
  


    SELECT * FROM z1 WHERE (x, +y) IN (SELECT a, b||'x' FROM kk)
  


    SELECT * FROM z1 WHERE (+x, y) IN (SELECT a, b FROM kk)
  
