

  CREATE TABLE t1(a TEXT, b INT, c INT, d INT);
  INSERT INTO t1 VALUES('abc',123,4,5);
  INSERT INTO t1 VALUES('xyz',1,'abcdefxyz',99);
  CREATE INDEX t1abc ON t1(b,b,c);
  ANALYZE sqlite_schema;
  INSERT INTO sqlite_stat1 VALUES('t1','t1abc','10000 5 00 2003 10');
  ANALYZE sqlite_schema;



  SELECT * FROM t1
   WHERE b IN (345, (SELECT 1 FROM t1 
                      WHERE b IN (345 NOT GLOB 510)
                        AND c GLOB 'abc*xyz'))
     AND c BETWEEN 'abc' AND 'xyz';



  EXPLAIN SELECT * FROM t1
   WHERE b IN (345, (SELECT 1 FROM t1 
                      WHERE b IN (345 NOT GLOB 510)
                        AND c GLOB 'abc*xyz'))
     AND c BETWEEN 'abc' AND 'xyz';

