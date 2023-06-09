

      CREATE VIEW v1 AS SELECT * FROM t1 LIMIT 2;
      SELECT count(*) FROM (SELECT * FROM v1);
    


    CREATE TABLE t2 AS SELECT * FROM t1 LIMIT 2;
    SELECT count(*) FROM t2;
  


      SELECT count(*) FROM t1 WHERE rowid IN (SELECT rowid FROM t1 LIMIT 2);
    
