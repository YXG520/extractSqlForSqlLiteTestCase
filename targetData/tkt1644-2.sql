

      CREATE TEMP TABLE temp_t1(a, b);
    
SELECT * FROM temp_t1

      DROP TABLE temp_t1;
    


      CREATE TABLE real_t1(a, b);
      CREATE TEMP VIEW temp_v1 AS SELECT * FROM real_t1;
    
SELECT * FROM temp_v1

      DROP VIEW temp_v1;
    


      CREATE TEMP VIEW temp_v1 AS SELECT * FROM real_t1 LIMIT 10 OFFSET 10;
    
SELECT * FROM temp_v1

      DROP VIEW temp_v1;
    
