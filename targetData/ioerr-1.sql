

  SELECT * FROM sqlite_master;


  CREATE TABLE t1(a,b,c);
  SELECT * FROM sqlite_master;
  BEGIN TRANSACTION;
  INSERT INTO t1 VALUES(1,2,3);
  INSERT INTO t1 VALUES(4,5,6);
  ROLLBACK;
  SELECT * FROM t1;
  BEGIN TRANSACTION;
  INSERT INTO t1 VALUES(1,2,3);
  INSERT INTO t1 VALUES(4,5,6);
  COMMIT;
  SELECT * FROM t1;
  DELETE FROM t1 WHERE a<100;

pragma auto_vacuum


    BEGIN;
    CREATE TABLE t1(a PRIMARY KEY, b);
  
INSERT INTO t1 VALUES(:i, 'hello world');

    COMMIT;
  

    BEGIN;
    INSERT INTO t1 VALUES('abc', 123);
    INSERT INTO t1 VALUES('def', 123);
    INSERT INTO t1 VALUES('ghi', 123);
    INSERT INTO t1 SELECT (a+500)%900, 'good string' FROM t1;
  


   CREATE TABLE A(Id INTEGER, Name TEXT);
   INSERT INTO A(Id, Name) VALUES(1, 'Name');


   UPDATE A SET Id = 2, Name = 'Name2' WHERE Id = 1;

