finish_test
  return

CREATE TABLE t1(a,b);
    INSERT INTO t1 VALUES(1,'abcdefgh');
    INSERT INTO t1 SELECT a+1, b||b FROM t1;
    INSERT INTO t1 SELECT a+2, b||b FROM t1;
    INSERT INTO t1 SELECT a+4, b||b FROM t1;
    SELECT count(*), max(length(b)) FROM t1;
  
