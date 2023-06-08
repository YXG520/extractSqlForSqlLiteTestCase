
PRAGMA writable_schema=on; 
    PRAGMA integrity_check;
  
DELETE FROM t3 WHERE x IS NOT NULL AND +rowid=6;

INSERT INTO t3 SELECT * FROM t2;

PRAGMA integrity_check;

DELETE FROM t3 WHERE x IN (SELECT x FROM t4);

