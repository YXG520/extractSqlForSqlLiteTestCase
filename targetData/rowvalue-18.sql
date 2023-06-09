

  CREATE TABLE b3 ( a, b, PRIMARY KEY (a, b) );
  CREATE TABLE b4 ( a );
  CREATE TABLE b5 ( a, b );
  INSERT INTO b3 VALUES (1, 1), (1, 2);
  INSERT INTO b4 VALUES (1);
  INSERT INTO b5 VALUES (1, 1), (1, 2);



  SELECT * FROM b3 WHERE (SELECT b3.a, b3.b) IN ( SELECT a, b FROM b5 )



  SELECT * FROM b3 WHERE (VALUES(b3.a, b3.b)) IN ( SELECT a, b FROM b5 );



  SELECT * FROM b3 WHERE (b3.a, b3.b) IN ( SELECT a, b FROM b5 ); 



  SELECT * FROM b3 JOIN b4 ON b4.a = b3.a
  WHERE (SELECT b3.a, b3.b) IN ( SELECT a, b FROM b5 ); 



  SELECT * FROM b3 JOIN b4 ON b4.a = b3.a
  WHERE (VALUES(b3.a, b3.b)) IN ( SELECT a, b FROM b5 ); 



  SELECT * FROM b3 JOIN b4 ON b4.a = b3.a
  WHERE (b3.a, b3.b) IN ( SELECT a, b FROM b5 ); 

