

  CREATE TABLE t3(e,f);
  INSERT INTO t3 VALUES(123,654),(555,444),(234,987);

  SELECT (SELECT count(*) FROM t1, t2 WHERE a=e AND x=f), e, f, '|'
    FROM t3
   ORDER BY rowid;

