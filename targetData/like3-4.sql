

  CREATE TABLE t4(x TEXT COLLATE nocase);
  CREATE INDEX t4x ON t4(x DESC);
  INSERT INTO t4(x) SELECT x FROM t3;
  SELECT quote(x) FROM t4 WHERE x LIKE 'ab%' ORDER BY x;



  SELECT quote(x) FROM t4 WHERE x LIKE 'ab%' ORDER BY x DESC;



  SELECT quote(x) FROM t4 WHERE x LIKE 'ab%' ORDER BY +x DESC;



  SELECT quote(x) FROM t4 WHERE x LIKE 'ab%' ORDER BY x ASC;



  SELECT quote(x) FROM t4 WHERE x LIKE 'ab%' ORDER BY +x ASC;

