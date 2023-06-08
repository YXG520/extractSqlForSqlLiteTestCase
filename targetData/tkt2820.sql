SELECT * FROM sqlite_master
PRAGMA vdbe_trace=ON
SELECT name FROM sqlite_master ORDER BY 1
catch {db eval {
      INSERT INTO t1 SELECT a+1 FROM t1 ORDER BY a DESC
    
