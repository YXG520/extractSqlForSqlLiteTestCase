

  CREATE TABLE t0(vkey INTEGER, pkey INTEGER,c1 INTEGER);
  INSERT INTO t0 VALUES(2,1,-20),(2,2,NULL),(2,3,0),(8,4,95);
  DELETE FROM t0 WHERE NOT (
    (t0.vkey <= t0.c1) AND
    (t0.vkey <> (SELECT vkey FROM t0 ORDER BY vkey LIMIT 1 OFFSET 2))
  );
  SELECT * FROM t0;

