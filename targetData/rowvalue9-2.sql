

  CREATE TABLE b1(a TEXT);
  CREATE TABLE b2(x BLOB);
  INSERT INTO b1 VALUES(1);
  INSERT INTO b2 VALUES(1);


 SELECT * FROM b1, b2 WHERE a=x; 


 SELECT * FROM b1 WHERE a IN (SELECT x FROM b2) 


 CREATE UNIQUE INDEX b1a ON b1(a); 

 SELECT * FROM b1 WHERE a IN (SELECT x FROM b2) 

