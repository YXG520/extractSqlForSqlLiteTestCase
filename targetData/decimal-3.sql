

  CREATE TABLE t3(seq INTEGER PRIMARY KEY, val TEXT);
  WITH RECURSIVE c(x) AS (VALUES(1) UNION SELECT x+1 FROM c WHERE x<10)
    INSERT INTO t3(seq, val) SELECT x, x FROM c;
  WITH RECURSIVE c(x) AS (VALUES(1) UNION SELECT x+1 FROM c WHERE x<5)
    INSERT INTO t3(seq, val) SELECT x+10, x*1000 FROM c;
  SELECT decimal(val) FROM t3 ORDER BY seq;



  SELECT decimal_add(val,'0.5') FROM t3 WHERE seq>5 ORDER BY seq



  SELECT decimal_add(val,'-10') FROM t3 ORDER BY seq;

