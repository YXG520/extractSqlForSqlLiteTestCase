CREATE TABLE t0(c0);
  INSERT INTO t0(c0) VALUES ('val');

SELECT * FROM t0 WHERE (
      ( (0 IS NOT FALSE) OR NOT (0 IS FALSE OR (t0.c0 = 1)) ) IS 0
  )

SELECT 
      ( (0 IS NOT FALSE) OR NOT (0 IS FALSE OR (t0.c0 = 1)) ) IS 0
  FROM t0 

SELECT 
      ( (0 IS NOT FALSE) OR NOT (0 IS 0 OR (t0.c0 = 1)) ) IS 0
  FROM t0 

SELECT ( (0 IS NOT FALSE) OR NOT (0 IS FALSE OR (t0.c0 = 1)) ) FROM t0 

SELECT (0 IS NOT FALSE) FROM t0 

SELECT NOT (0 IS FALSE OR (t0.c0 = 1)) FROM t0 

