

    CREATE TABLE t1(x, y, z);
  

    BEGIN;
    INSERT INTO t1 VALUES('1', 'I',   'one');
    INSERT INTO t1 VALUES('2', 'IV',  'four');
    INSERT INTO t1 VALUES('2', NULL,  'three');
    INSERT INTO t1 VALUES('2', 'II',  'two');
    INSERT INTO t1 VALUES('2', 'V',   'five');
    INSERT INTO t1 VALUES('3', 'VI',  'six');
    COMMIT;
    PRAGMA automatic_index=OFF;
  

S

 CREATE INDEX i1 ON t1(x) 

 CREATE INDEX i2 ON t1(x,y) 

 DROP INDEX i2 ; CREATE INDEX i2 ON t1(x, y DESC) 

S

S

S

 DROP INDEX i1 ; DROP INDEX i2 

 CREATE INDEX i1 ON t1(x) 

 CREATE INDEX i2 ON t1(x,y) 

 DROP INDEX i2 ; CREATE INDEX i2 ON t1(x, y DESC) 

 DROP INDEX i1 ; DROP INDEX i2 

 CREATE INDEX i1 ON t1(y) 

 DROP INDEX i1 ; CREATE INDEX i1 ON t1(y DESC) 

 DROP INDEX i1 

 CREATE INDEX i1 ON t1(y) 

 DROP INDEX i1 ; CREATE INDEX i1 ON t1(y DESC) 
 SELECT y from t1

 DROP INDEX i1 
