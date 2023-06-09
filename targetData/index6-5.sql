

  CREATE INDEX t3b ON t3(b) WHERE xyzzy.t3.b BETWEEN 5 AND 10;
                               /* ^^^^^-- ignored */
  ANALYZE;
  SELECT count(*) FROM t3 WHERE t3.b BETWEEN 5 AND 10;
  SELECT stat+0 FROM sqlite_stat1 WHERE idx='t3b';

