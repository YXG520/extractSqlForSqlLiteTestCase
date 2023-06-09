

    CREATE TEMP VIEW t1 AS SELECT a,b FROM t1;
    SELECT * FROM temp.t1;
  


    DROP VIEW IF EXISTS temp.t1;
    CREATE TEMP VIEW t1(a,b) AS SELECT a,b FROM t1;
    SELECT * FROM temp.t1;
  
