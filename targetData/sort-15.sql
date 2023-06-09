

    WITH rr AS (
      SELECT 4, $ten UNION ALL
      SELECT 2, $one UNION ALL
      SELECT 1, $ten UNION ALL
      SELECT 3, $one
    )
    SELECT * FROM rr ORDER BY 1;
  


    CREATE TABLE t1(a);
    INSERT INTO t1 VALUES(4);
    INSERT INTO t1 VALUES(5);
    INSERT INTO t1 VALUES(3);
    INSERT INTO t1 VALUES(2);
    INSERT INTO t1 VALUES(6);
    INSERT INTO t1 VALUES(1);
    CREATE INDEX i1 ON t1(a);
    SELECT * FROM t1 ORDER BY a;
  


    WITH rr AS (
      SELECT 4, $ten UNION ALL
      SELECT 2, $one
    )
    SELECT * FROM rr ORDER BY 1;
  
