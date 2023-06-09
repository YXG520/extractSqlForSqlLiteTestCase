

  PRAGMA data_version;



  PRAGMA temp.data_version;



  PRAGMA main.data_version=1234;
  PRAGMA main.data_version;



  PRAGMA data_version;
  BEGIN IMMEDIATE;
  PRAGMA data_version;
  CREATE TABLE t1(a);
  INSERT INTO t1 VALUES(100),(200),(300);
  PRAGMA data_version;
  COMMIT;
  SELECT * FROM t1;
  PRAGMA data_version;



    SELECT * FROM t1;
    PRAGMA data_version;
  


  PRAGMA data_version;
  BEGIN IMMEDIATE;
  PRAGMA data_version;
  INSERT INTO t1 VALUES(400),(500);
  PRAGMA data_version;
  COMMIT;
  SELECT * FROM t1;
  PRAGMA data_version;
  PRAGMA shrink_memory;



    SELECT * FROM t1;
    PRAGMA data_version;
    BEGIN IMMEDIATE;
    PRAGMA data_version;
    UPDATE t1 SET a=a+1;
    COMMIT;
    SELECT * FROM t1;
    PRAGMA data_version;
  


  SELECT * FROM t1;
  PRAGMA data_version;



    BEGIN;
    PRAGMA data_version;
    UPDATE t1 SET a=555 WHERE a=501;
    PRAGMA data_version;
    SELECT * FROM t1 ORDER BY a;
    PRAGMA data_version;
  


    PRAGMA data_version;
  


    COMMIT;
    PRAGMA data_version;
  


    PRAGMA data_version;
  

PRAGMA data_version
PRAGMA data_version
