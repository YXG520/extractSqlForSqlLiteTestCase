

    DELETE FROM t3;
    DELETE FROM t4;
    INSERT INTO t3 VALUES(1,2,3,4);
    INSERT INTO t3 VALUES(5,6,7,8);
    INSERT INTO t3 SELECT a+8, b+8, c+8, d+8 FROM t3;
    INSERT INTO t3 SELECT a+16, b+16, c+16, d+16 FROM t3;
    INSERT INTO t3 SELECT a+32, b+32, c+32, d+32 FROM t3;
    INSERT INTO t3 SELECT a+64, b+64, c+64, d+64 FROM t3;
    INSERT INTO t4 SELECT a, b, c FROM t3;
    ANALYZE;
    SELECT DISTINCT idx FROM sqlite_stat1 ORDER BY 1;
    SELECT DISTINCT tbl FROM sqlite_stat1 ORDER BY 1;
  


      SELECT DISTINCT idx FROM sqlite_stat4 ORDER BY 1;
      SELECT DISTINCT tbl FROM sqlite_stat4 ORDER BY 1;
    


    DROP INDEX t3i2;
    SELECT DISTINCT idx FROM sqlite_stat1 ORDER BY 1;
    SELECT DISTINCT tbl FROM sqlite_stat1 ORDER BY 1;
  


      SELECT DISTINCT idx FROM sqlite_stat4 ORDER BY 1;
      SELECT DISTINCT tbl FROM sqlite_stat4 ORDER BY 1;
    


    DROP TABLE t3;
    SELECT DISTINCT idx FROM sqlite_stat1 ORDER BY 1;
    SELECT DISTINCT tbl FROM sqlite_stat1 ORDER BY 1;
  


      SELECT DISTINCT idx FROM sqlite_stat4 ORDER BY 1;
      SELECT DISTINCT tbl FROM sqlite_stat4 ORDER BY 1;
    


    PRAGMA writable_schema=on;
    UPDATE sqlite_master SET sql='nonsense' WHERE name='sqlite_stat1';
  

    ANALYZE
  
