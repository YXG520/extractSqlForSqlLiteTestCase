

  CREATE TABLE x1(a, b TEXT);
  CREATE INDEX x1i ON x1(a, b);
  INSERT INTO x1 VALUES(1, 1);
  INSERT INTO x1 VALUES(1, 1);
  INSERT INTO x1 VALUES(1, 1);
  INSERT INTO x1 VALUES(1, 1);



  SELECT a,b,rowid FROM x1 INDEXED BY x1i WHERE a=1 AND b=1 AND rowid=3;



  SELECT a,b,rowid FROM x1 INDEXED BY x1i WHERE a=1 AND b=1 AND rowid='3';



  SELECT a,b,rowid FROM x1 INDEXED BY x1i WHERE a=1 AND b=1 AND rowid='3.0';


S


  CREATE TABLE x2(c INTEGER PRIMARY KEY, a, b TEXT);
  CREATE INDEX x2i ON x2(a, b);
  INSERT INTO x2 VALUES(1, 1, 1);
  INSERT INTO x2 VALUES(2, 1, 1);
  INSERT INTO x2 VALUES(3, 1, 1);
  INSERT INTO x2 VALUES(4, 1, 1);



  SELECT a,b,c FROM x2 INDEXED BY x2i WHERE a=1 AND b=1 AND c=3;



  SELECT a,b,c FROM x2 INDEXED BY x2i WHERE a=1 AND b=1 AND c='3';



  SELECT a,b,c FROM x2 INDEXED BY x2i WHERE a=1 AND b=1 AND c='3.0';


S