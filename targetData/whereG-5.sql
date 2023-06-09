

  CREATE TABLE t1(a, b, c);
  CREATE INDEX i1 ON t1(a, b);


S

S

S

 INSERT INTO t1 VALUES('abc', $i, $i); 
 INSERT INTO t1 SELECT 'def', b, c FROM t1; 
 ANALYZE 

S

S

S

S

S

S

S
