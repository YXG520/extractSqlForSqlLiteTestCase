
PRAGMA writable_schema=on; -- disable schema corruption detection
    INSERT INTO t1(t1) SELECT x FROM t2;
  
INSERT INTO t1(t1) VALUES('integrity-check');
  
INSERT INTO t1(t1) VALUES('optimize');
  
INSERT INTO t1(t1) VALUES('integrity-check');
  
