

    WITH s(i) AS (
        SELECT 1 UNION ALL SELECT i+1 FROM s WHERE i<50000
    )
    INSERT INTO t1(a, b, c) SELECT i, 123, 456 FROM s;
  


    ALTER TABLE t1 DROP COLUMN b;
  


    SELECT count(*), c FROM t1 GROUP BY c;
  
