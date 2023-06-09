

  CREATE INDEX i2 ON t1(a+1);



  SELECT a+1, quote(a+1) FROM t1 ORDER BY 1;

