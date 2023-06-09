

    CREATE TABLE t2(a TEXT, b TEXT, c TEXT COLLATE test_collate, d TEXT);
    CREATE INDEX i2 ON t2(a, b, c);
  

 INSERT INTO t2 VALUES($a, $b, $c, $d) 
EXPLAIN QUERY PLAN SELECT * FROM t2 WHERE $q
