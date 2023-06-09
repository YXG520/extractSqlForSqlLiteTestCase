

  DROP TABLE IF EXISTS t0;
  CREATE TABLE t0(
    c0 AS (('a', 9) < ('b', c1)),
    c1 AS (1),
    c2 CHECK (1 = c1)
  );
  INSERT INTO t0 VALUES (0),(99);
  SELECT * FROM t0;



  DROP TABLE IF EXISTS t0;
  CREATE TABLE t0(
    c0,
    c1 AS(c0 + c2),
    c2 AS(c1) CHECK(c2)
  );
  UPDATE t0 SET c0 = NULL;

