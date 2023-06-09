
 DROP TABLE IF EXISTS t1 
 CREATE TABLE t1(a, b, c) 
INSERT INTO t1 VALUES([expr $i/100], 'x', [expr $i/10])

    CREATE INDEX i1 ON t1(a, b);
    CREATE INDEX i2 ON t1(c);
  

S

S
