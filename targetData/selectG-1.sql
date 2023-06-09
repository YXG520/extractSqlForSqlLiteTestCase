
CREATE TABLE t1(x);\nINSERT INTO t1(x) VALUES
($i),
($i);

    SELECT count(x), sum(x), avg(x), $microsec<10000000 FROM t1;
  

SELECT (VALUES
($i),
($i));

