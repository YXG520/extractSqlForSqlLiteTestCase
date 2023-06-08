CREATE TABLE t1(a INT, b INT, c INT);
  CREATE INDEX i1 ON t1(a, b);

INSERT INTO t1 VALUES($a, $b, NULL) 
CREATE TABLE t2(a TEXT, b TEXT, c TEXT COLLATE test_collate, d TEXT);
    CREATE INDEX i2 ON t2(a, b, c);
  
INSERT INTO t2 VALUES($a, $b, $c, $d) 
CREATE TABLE t3(a, b, c);
  CREATE INDEX i3 ON t3(a, b);

