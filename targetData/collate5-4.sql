

    CREATE TABLE collate5t1(a COLLATE NOCASE, b COLLATE NUMERIC); 
    INSERT INTO collate5t1 VALUES('a', '1');
    INSERT INTO collate5t1 VALUES('A', '1.0');
    INSERT INTO collate5t1 VALUES('b', '2');
    INSERT INTO collate5t1 VALUES('B', '3');
  


    SELECT a, count(*) FROM collate5t1 GROUP BY a;
  


    SELECT a, b, count(*) FROM collate5t1 GROUP BY a, b ORDER BY a, b;
  


    DROP TABLE collate5t1;
  
