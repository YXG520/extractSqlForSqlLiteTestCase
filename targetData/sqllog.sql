finish_test
  return

forcedelete {*
CREATE TABLE t1(x, y);
  INSERT INTO t1 VALUES(1, 2);
  INSERT INTO t1 VALUES($a, $b);
  SELECT * FROM t1;

INSERT INTO t1 VALUES(4, 5);
  SELECT * FROM t1;

INSERT INTO t1 VALUES(6, 7);
  SELECT * FROM t1;
