

  CREATE TABLE t11a AS SELECT '123456789' AS x;
  CREATE TABLE t11b (a INTEGER PRIMARY KEY, b, c);
  INSERT INTO t11b SELECT x, x, x FROM t11a;
  SELECT quote(a), quote(b), quote(c) FROM t11b;

