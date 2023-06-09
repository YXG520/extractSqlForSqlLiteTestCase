

    CREATE TABLE t5(x);
    INSERT INTO t5 VALUES(1);
    INSERT INTO t5 VALUES(-99);
    INSERT INTO t5 VALUES(10000);
    SELECT sum(x) FROM t5;
  


      INSERT INTO t5 VALUES(0.0);
      SELECT sum(x) FROM t5;
    


    DELETE FROM t5;
    SELECT sum(x), total(x) FROM t5;
  


    INSERT INTO t5 VALUES(NULL);
    SELECT sum(x), total(x) FROM t5
  


    INSERT INTO t5 VALUES(NULL);
    SELECT sum(x), total(x) FROM t5
  


    INSERT INTO t5 VALUES(123);
    SELECT sum(x), total(x) FROM t5
  


    CREATE TABLE t6(x INTEGER);
    INSERT INTO t6 VALUES(1);
    INSERT INTO t6 VALUES(1<<62);
    SELECT sum(x) - ((1<<62)+1) from t6;
  


    SELECT typeof(sum(x)) FROM t6
  


      INSERT INTO t6 VALUES(1<<62);
      SELECT sum(x) - ((1<<62)*2.0+1) from t6;
    


      SELECT total(x) - ((1<<62)*2.0+1) FROM t6
    


      INSERT INTO t6 VALUES(1<<62);
      SELECT sum(x) - ((1<<62)*2+1) from t6;
    


      SELECT total(x) - ((1<<62)*2+1) FROM t6
    


      SELECT sum(-9223372036854775805);
    


    SELECT sum(x) FROM 
       (SELECT 9223372036854775807 AS x UNION ALL
        SELECT 10 AS x);
  


      SELECT sum(x) FROM 
         (SELECT 9223372036854775807 AS x UNION ALL
          SELECT -10 AS x);
    


      SELECT sum(x) FROM 
         (SELECT -9223372036854775807 AS x UNION ALL
          SELECT 10 AS x);
    


    SELECT sum(x) FROM 
       (SELECT -9223372036854775807 AS x UNION ALL
        SELECT -10 AS x);
  


    SELECT sum(x) FROM (SELECT 9 AS x UNION ALL SELECT -10 AS x);
  


    SELECT sum(x) FROM (SELECT -9 AS x UNION ALL SELECT 10 AS x);
  


    SELECT sum(x) FROM (SELECT -10 AS x UNION ALL SELECT 9 AS x);
  


    SELECT sum(x) FROM (SELECT 10 AS x UNION ALL SELECT -9 AS x);
  


      SELECT abs(-9223372036854775807);
    


    SELECT abs(-9223372036854775807-1);
  
