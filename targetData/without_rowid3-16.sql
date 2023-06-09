
 INSERT INTO self VALUES(13, 13) 

 UPDATE self SET a = 14, b = 14 

 UPDATE self SET b = 15 

 UPDATE self SET a = 15 

 UPDATE self SET a = 15, b = 16 

 UPDATE self SET a = 17, b = 17 

 DELETE FROM self 

 INSERT INTO self VALUES(20, 21) 


  PRAGMA foreign_keys=ON;
  CREATE TABLE t1(a,b,c,d,e,f,
     UNIQUE (a,b),
     PRIMARY KEY (e,c),
     FOREIGN KEY (d,f) REFERENCES t1(e,c)
  ) WITHOUT rowid;
  INSERT INTO t1 VALUES(1,2,3,5,5,3);
  INSERT INTO t1 VALUES(2,3,4,6,6,4);
  INSERT INTO t1 VALUES('x','y',1.5,'fizzle','fizzle',1.5);
  SELECT *, '|' FROM t1 ORDER BY a, b;



  UPDATE t1 SET c=99, f=99 WHERE a=1;
  SELECT *, '|' FROM t1 ORDER BY a, b;



  UPDATE t1 SET e=876, d=876 WHERE a=2;
  SELECT *, '|' FROM t1 ORDER BY a, b;



    UPDATE t1 SET c=11, e=22 WHERE a=1;
  


    UPDATE t1 SET d=11, f=22 WHERE a=1;
  


  DELETE FROM t1 WHERE a=1;
  SELECT *, '|' FROM t1 ORDER BY a, b;



  DROP TABLE t1;
  CREATE TABLE t1(a,b,c,d,e,f,
     PRIMARY KEY (a,b),
     UNIQUE (e,c),
     FOREIGN KEY (d,f) REFERENCES t1(e,c)
  ) WITHOUT rowid;
  INSERT INTO t1 VALUES(1,2,3,5,5,3);
  INSERT INTO t1 VALUES(2,3,4,6,6,4);
  INSERT INTO t1 VALUES('x','y',1.5,'fizzle','fizzle',1.5);
  SELECT *, '|' FROM t1 ORDER BY a, b;



  UPDATE t1 SET c=99, f=99 WHERE a=1;
  SELECT *, '|' FROM t1 ORDER BY a, b;



  UPDATE t1 SET e=876, d=876 WHERE a=2;
  SELECT *, '|' FROM t1 ORDER BY a, b;



    UPDATE t1 SET c=11, e=22 WHERE a=1;
  


    UPDATE t1 SET d=11, f=22 WHERE a=1;
  


  DELETE FROM t1 WHERE a=1;
  SELECT *, '|' FROM t1 ORDER BY a, b;

