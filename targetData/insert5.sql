return [expr {[lsearch [execsql "EXPLAIN $sql"] OpenEphemeral]>=0
CREATE TABLE MAIN(Id INTEGER, Id1 INTEGER); 
    CREATE TABLE B(Id INTEGER, Id1 INTEGER); 
    CREATE VIEW v1 AS SELECT * FROM B;
    CREATE VIEW v2 AS SELECT * FROM MAIN;
    INSERT INTO MAIN(Id,Id1) VALUES(2,3); 
    INSERT INTO B(Id,Id1) VALUES(2,3); 
  
INSERT INTO B 
        SELECT * FROM B UNION ALL 
        SELECT * FROM MAIN WHERE exists (select * FROM B WHERE B.Id = MAIN.Id);
      SELECT * FROM B;
    
INSERT INTO B SELECT * FROM B;
      INSERT INTO B
        SELECT * FROM MAIN WHERE exists (select * FROM B WHERE B.Id = MAIN.Id);
      SELECT * FROM B;
    
INSERT INTO b 
    SELECT * FROM main 
    WHERE id > 10 AND (SELECT count(*) FROM v2 GROUP BY main.id)
  
