

  CREATE TABLE t2(a, b TEXT);
  INSERT INTO t2 SELECT a, b FROM t1;
  CREATE INDEX t2ba ON t2(b,a);
  SELECT a, b FROM t2 WHERE b GLOB 'ab*' ORDER BY +a;



  SELECT a, b FROM t2 WHERE +b GLOB 'ab*' ORDER BY +a;



  SELECT a, b FROM t2 WHERE b>=x'6162' AND b GLOB 'ab*'



  SELECT a, b FROM t2 WHERE +b>=x'6162' AND +b GLOB 'ab*'



  SELECT a, b FROM t2 WHERE b GLOB 'ab*' AND b>=x'6162'



  SELECT a, b FROM t2 WHERE +b GLOB 'ab*' AND +b>=x'6162'

