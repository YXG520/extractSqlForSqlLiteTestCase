

  DROP TABLE IF EXISTS t1;
  CREATE TABLE t1(x,y);
  CREATE UNIQUE INDEX t1x1 ON t1(x) WHERE x IS NOT NULL;
  INSERT INTO t1(x) VALUES(NULL),(NULL);
  CREATE INDEX t1x2 ON t1(y);
  SELECT quote(x), quote(y), '|' FROM t1;



  UPDATE OR REPLACE t1 SET x=1;
  SELECT quote(x), quote(y), '|' FROM t1;

