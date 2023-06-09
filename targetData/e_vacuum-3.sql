

  CREATE TABLE t4(x);
  INSERT INTO t4(x) VALUES('x');
  INSERT INTO t4(x) VALUES('y');
  INSERT INTO t4(x) VALUES('z');
  DELETE FROM t4 WHERE x = 'y';
  SELECT rowid, x FROM t4;



  VACUUM;
  SELECT rowid, x FROM t4;



  CREATE TABLE t5(x, y INTEGER PRIMARY KEY);
  INSERT INTO t5(x) VALUES('x');
  INSERT INTO t5(x) VALUES('y');
  INSERT INTO t5(x) VALUES('z');
  DELETE FROM t5 WHERE x = 'y';
  SELECT rowid, x FROM t5;



  VACUUM;
  SELECT rowid, x FROM t5;



  DROP TABLE t5;
  CREATE TABLE t5(x);
  INSERT INTO t5(x) VALUES('x');
  INSERT INTO t5(x) VALUES('y');
  INSERT INTO t5(x) VALUES('z');
  DELETE FROM t5 WHERE x = 'y';
  SELECT rowid, x FROM t5;



  VACUUM INTO 'test2.db';
  ATTACH 'test2.db' AS aux1;
  SELECT rowid, x FROM aux1.t5;
  DETACH aux1;



  DROP TABLE t5;
  CREATE TABLE t5(x,y,z);
  INSERT INTO t5(x) VALUES('x');
  INSERT INTO t5(x) VALUES('y');
  INSERT INTO t5(x) VALUES('z');
  UPDATE t5 SET y=x, z=random();
  DELETE FROM t5 WHERE x = 'y';
  CREATE INDEX t5x ON t5(x);
  CREATE UNIQUE INDEX t5y ON t5(y);
  CREATE INDEX t5zxy ON t5(z,x,y);
  SELECT rowid, x FROM t5;



  VACUUM;
  SELECT rowid, x FROM t5;


 BEGIN 


 
  VACUUM 


 COMMIT 


 VACUUM 


 SAVEPOINT x 


 
  VACUUM 


 COMMIT 


 VACUUM 


 SELECT a FROM t1 

    if {$a == 10

 PRAGMA auto_vacuum 


    DELETE FROM t1;
    DELETE FROM t2;
  


    DELETE FROM t1;
    DELETE FROM t2;
    PRAGMA incremental_vacuum;
  
