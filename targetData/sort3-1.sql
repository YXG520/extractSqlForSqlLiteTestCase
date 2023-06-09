

  PRAGMA cache_size = 5;
  CREATE TABLE t11(a, b);
  INSERT INTO t11 VALUES(randomblob(5000), NULL);
  INSERT INTO t11 SELECT randomblob(5000), NULL FROM t11; --2
  INSERT INTO t11 SELECT randomblob(5000), NULL FROM t11; --3
  INSERT INTO t11 SELECT randomblob(5000), NULL FROM t11; --4
  INSERT INTO t11 SELECT randomblob(5000), NULL FROM t11; --5
  INSERT INTO t11 SELECT randomblob(5000), NULL FROM t11; --6
  INSERT INTO t11 SELECT randomblob(5000), NULL FROM t11; --7
  INSERT INTO t11 SELECT randomblob(5000), NULL FROM t11; --8
  INSERT INTO t11 SELECT randomblob(5000), NULL FROM t11; --9
  UPDATE t11 SET b = cksum(a);


 SELECT * FROM t11 ORDER BY b 

      if {$b != [cksum $a]
