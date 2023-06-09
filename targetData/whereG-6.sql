

  DROP TABLE IF EXISTS t1;
  CREATE TABLE t1(i int, x, y, z);
  INSERT INTO t1 VALUES (1,1,1,1), (2,2,2,2), (3,3,3,3), (4,4,4,4);
  DROP TABLE IF EXISTS t2;
  CREATE TABLE t2(i int, bool char);
  INSERT INTO t2 VALUES(1,'T'), (2,'F');
  SELECT count(*) FROM t1 LEFT JOIN t2 ON t1.i=t2.i AND bool='T';
  SELECT count(*) FROM t1 LEFT JOIN t2 ON likely(t1.i=t2.i) AND bool='T';

