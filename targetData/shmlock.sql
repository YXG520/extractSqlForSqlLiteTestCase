PRAGMA journal_mode = wal;
  CREATE TABLE t1(a, b);
  INSERT INTO t1 VALUES(1, 2);

1 2
1 2
SELECT * FROM t1 
error $rc 
error $rc 
error $rc 
1 2
1 2
error "BUSY not detected" 
error "BUSY false-positive" 
