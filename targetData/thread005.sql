set rc SQLITE_OK
  while {$rc=="SQLITE_OK" && $zSql ne ""

BEGIN 
INSERT INTO t1 VALUES(1, 2) 
SELECT * FROM t1 
ATTACH 'test2.db' AS aux 
CREATE TABLE aux.t1(a INTEGER PRIMARY KEY, b UNIQUE);
    INSERT INTO t1 VALUES(1, 1);
    INSERT INTO t1 VALUES(2, 2);
  
if {$db eq ""
set STMT [sqlite3_prepare_v2 $db $zSql -1 zSql]
      while {[set rc [sqlite3_step $STMT]] eq "SQLITE_ROW"
lappend lRes [sqlite3_column_text $STMT 0]
        
error "$rc [sqlite3_errmsg $db]" 
BEGIN;
        DELETE FROM t1 WHERE a = (SELECT max(a) FROM t1);
        INSERT INTO t1 VALUES(NULL, NULL);
        UPDATE t1 SET b = a WHERE a = (SELECT max(a) FROM t1);
        SELECT count(*) FROM t1 WHERE b IS NULL;
      COMMIT;
    
BEGIN;
      SELECT count(*) FROM t1 WHERE b IS NULL;
      COMMIT;
    
ATTACH 'test2.db' AS aux 
catch { execsql ROLLBACK 
ATTACH 'test2.db' AS aux 
SELECT count(*) FROM t1 WHERE b IS NULL 
