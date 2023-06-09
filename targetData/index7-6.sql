

  CREATE TABLE t5(a, b);
  CREATE TABLE t4(c, d);
  INSERT INTO t5 VALUES(1, 'xyz');
  INSERT INTO t4 VALUES('abc', 'not xyz');
  SELECT * FROM (SELECT * FROM t5 WHERE a=1 AND b='xyz'), t4 WHERE c='abc';



  CREATE INDEX i4 ON t4(c) WHERE d='xyz';
  SELECT * FROM (SELECT * FROM t5 WHERE a=1 AND b='xyz'), t4 WHERE c='abc';



  CREATE VIEW v4 AS SELECT * FROM t4;
  INSERT INTO t4 VALUES('def', 'xyz');
  SELECT * FROM v4 WHERE d='xyz' AND c='def'


S


  CREATE INDEX t5a ON t5(a) WHERE a=#1;

