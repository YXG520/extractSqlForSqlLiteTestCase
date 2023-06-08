set eqp [execsql "EXPLAIN QUERY PLAN $sql"]
  set rcnt [regexp -all {USE TEMP
CREATE TABLE t1(a, b, c);
  INSERT INTO t1 VALUES('one',   1, 11);
  INSERT INTO t1 VALUES('three', 7, 11);
  INSERT INTO t1 VALUES('one',   2, 11);
  INSERT INTO t1 VALUES('one',   3, 11);
  INSERT INTO t1 VALUES('two',   4, 11);
  INSERT INTO t1 VALUES('two',   6, 11);
  INSERT INTO t1 VALUES('three', 8, 11);
  INSERT INTO t1 VALUES('two',   5, 11);
  INSERT INTO t1 VALUES('three', 9, 11);

DROP INDEX IF EXISTS i1 
CREATE TABLE t2(a, b, c);
  INSERT INTO t2 VALUES(1, 'one', 1);
  INSERT INTO t2 VALUES(1, 'two', 2);
  INSERT INTO t2 VALUES(1, 'one', 3);
  INSERT INTO t2 VALUES(1, 'two', 4);
  INSERT INTO t2 VALUES(1, 'one', 5);
  INSERT INTO t2 VALUES(1, 'two', 6);

  INSERT INTO t2 VALUES(2, 'one', 7);
  INSERT INTO t2 VALUES(2, 'two', 8);
  INSERT INTO t2 VALUES(2, 'one', 9);
  INSERT INTO t2 VALUES(2, 'two', 10);
  INSERT INTO t2 VALUES(2, 'one', 11);
  INSERT INTO t2 VALUES(2, 'two', 12);

  INSERT INTO t2 VALUES(NULL, 'one', 13);
  INSERT INTO t2 VALUES(NULL, 'two', 14);
  INSERT INTO t2 VALUES(NULL, 'one', 15);
  INSERT INTO t2 VALUES(NULL, 'two', 16);
  INSERT INTO t2 VALUES(NULL, 'one', 17);
  INSERT INTO t2 VALUES(NULL, 'two', 18);

DROP INDEX IF EXISTS i2 
