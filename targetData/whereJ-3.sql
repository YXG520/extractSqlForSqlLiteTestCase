
 CREATE TABLE t1(a, b, c) 
 INSERT INTO t1 VALUES($i, $x, $c) 
 INSERT INTO t1 VALUES($i+1, 5, $c) 


  SELECT a, count(*) FROM t1 GROUP BY a HAVING a < 8;



  CREATE INDEX idx_ab ON t1(a, b);
  CREATE INDEX idx_c ON t1(c);
  ANALYZE;


S

S
