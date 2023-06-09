

    CREATE TABLE sqlite_t1(a, b, c);
  


    CREATE TABLE sqlite_t1(a, b, c);
  


    CREATE INDEX sqlite_i1 ON t7(c);
  


    CREATE VIEW sqlite_v1 AS SELECT * FROM t7;
  


      CREATE TRIGGER sqlite_tr1 BEFORE INSERT ON t7 BEGIN SELECT 1; END;
    


    DROP TABLE t7;
  
