

    CREATE TABLE t6(a, b, c);
    CREATE INDEX t6i1 ON t6(a, b);
    CREATE INDEX t6i2 ON t6(c);
  

 INSERT INTO t6 VALUES($i%4, 'xyz', $i%8) 

S

S

S

S
