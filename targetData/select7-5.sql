

      CREATE TABLE t2(a,b);
      SELECT 5 IN (SELECT a,b FROM t2);
    


      SELECT 5 IN (SELECT * FROM t2);
    


      SELECT 5 IN (SELECT a,b FROM t2 UNION SELECT b,a FROM t2);
    


      SELECT 5 IN (SELECT * FROM t2 UNION SELECT * FROM t2);
    
SELECT 0
 UNION ALL SELECT $i
