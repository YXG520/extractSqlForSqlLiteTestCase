

    CREATE TABLE t1(a TEXT PRIMARY KEY);
  
INSERT INTO t1 VALUES('$x-$bigstr')


    BEGIN;
    UPDATE t1 SET a = a||'x' WHERE rowid%2==0;
  


    UPDATE t1 SET a = CASE WHEN rowid<90 THEN substr(a,1,10) ELSE '9999' END;
  


    COMMIT;
  
