CREATE TABLE t1(a, b); 
    INSERT INTO t1 VALUES('t1 A', 't1 B');
  
CREATE TABLE t2(a, b);
    INSERT INTO t2 VALUES('t2 A', 't2 B');
  
BEGIN EXCLUSIVE;
    INSERT INTO t2 VALUES('t2 C', 't2 D');
  
ATTACH 'test.db2' AS aux 
SELECT * FROM t2 
COMMIT 
SELECT * FROM t2 
foreach {
    tn
    db1_loaded
    db2_loaded
    enable_extended_errors
    result
    error1 error2
  
