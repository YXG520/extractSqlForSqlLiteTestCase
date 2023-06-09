

  CREATE TABLE t1(x TEXT, y INT, z TEXT);
  INSERT INTO t1(rowid,x,y,z) VALUES(12,'aa','bb','aa');
  CREATE INDEX i1x ON t1(1 IS true,z);
  CREATE TABLE t0(x TEXT);
  INSERT INTO t0(rowid,x) VALUES(4,'aa');
  ANALYZE sqlite_schema;
  INSERT INTO sqlite_stat1 VALUES('t0',NULL,'20');
  INSERT INTO sqlite_stat1 VALUES('t1','i1x','18 18 2');
  ANALYZE sqlite_schema;



  SELECT * FROM t0 NATURAL JOIN t1 WHERE z=t1.x;



  DROP TABLE t0;
  CREATE TABLE t0(a TEXT);
  INSERT INTO t0 VALUES ('xyz');
  CREATE INDEX t0x ON t0(a IS FALSE) WHERE false;
  DROP TABLE t1;
  CREATE TABLE t1(b INT);
  INSERT INTO t1 VALUES('aaa'),('bbb'),('ccc'),('ddd'),(NULL);
  CREATE TABLE t2(c REAL);
  INSERT INTO t2 VALUES(7);
  ANALYZE;
  CREATE INDEX t2x ON t2(true IN ());



  SELECT * FROM t0 LEFT JOIN t1 LEFT JOIN t2 ON (b NOTNULL)==(c IN ()) WHERE c;

