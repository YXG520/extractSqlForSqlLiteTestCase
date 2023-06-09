

  CREATE TABLE t201(x);
  CREATE TABLE t202(y, z);
  INSERT INTO t201 VALUES('key');
  INSERT INTO t202 VALUES('key', -1);
  CREATE INDEX t202i ON t202(y, ifnull(z, 0));
  SELECT count(*) FROM t201 LEFT JOIN t202 ON (x=y) WHERE ifnull(z, 0) >=0;

