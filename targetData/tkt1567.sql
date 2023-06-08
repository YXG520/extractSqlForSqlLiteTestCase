CREATE TABLE t1(a TEXT PRIMARY KEY);
  
BEGIN;
    UPDATE t1 SET a = a||'x' WHERE rowid%2==0;
  
UPDATE t1 SET a = CASE WHEN rowid<90 THEN substr(a,1,10) ELSE '9999' END;
  
COMMIT;
  
CREATE TABLE t2(a TEXT PRIMARY KEY, rowid INT) WITHOUT rowid;
  
BEGIN;
    UPDATE t2 SET a = a||'x' WHERE rowid%2==0;
  
UPDATE t2 SET a = CASE WHEN rowid<90 THEN substr(a,1,10) ELSE '9999' END;
  
COMMIT;
  
