

    DROP TABLE IF EXISTS t0;
    CREATE TABLE t0(c0 REAL UNIQUE);
    INSERT INTO t0(c0) VALUES (3175546974276630385);
    SELECT 3175546974276630385 < c0 FROM t0;
  


    SELECT 1 FROM t0 WHERE 3175546974276630385 < c0;
  
