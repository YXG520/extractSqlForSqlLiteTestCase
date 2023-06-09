

    CREATE TABLE t3(a, b);
    INSERT INTO t3 VALUES(1, 'one');
    INSERT INTO t3 VALUES(2, 'two');
    INSERT INTO t3 VALUES(3, 'three');
  


    BEGIN;
      CREATE VIEW v1 AS SELECT * FROM t3;
      CREATE TRIGGER trig1 INSTEAD OF UPDATE ON v1 BEGIN
        INSERT INTO t2 VALUES(old.a);
      END;
      UPDATE v1 SET b = 'hello';
      SELECT * FROM t2;
    ROLLBACK;
  



    BEGIN;
      INSERT INTO t3 VALUES(3, 'three');
      INSERT INTO t3 VALUES(3, 'four');
      CREATE VIEW v1 AS SELECT DISTINCT a, b FROM t3;
      CREATE TRIGGER trig1 INSTEAD OF UPDATE ON v1 BEGIN
        INSERT INTO t2 VALUES(old.a);
      END;
      UPDATE v1 SET b = 'hello';
      SELECT * FROM t2;
    ROLLBACK;
  


      BEGIN;
        INSERT INTO t3 VALUES(1, 'uno');
        CREATE VIEW v1 AS SELECT a, b FROM t3 EXCEPT SELECT 1, 'one';
        CREATE TRIGGER trig1 INSTEAD OF UPDATE ON v1 BEGIN
          INSERT INTO t2 VALUES(old.a);
        END;
        UPDATE v1 SET b = 'hello';
        SELECT * FROM t2;
      ROLLBACK;
    


      BEGIN;
        INSERT INTO t3 VALUES(1, 'zero');
        CREATE VIEW v1 AS 
          SELECT sum(a) AS a, max(b) AS b FROM t3 GROUP BY t3.a HAVING b>'two';
        CREATE TRIGGER trig1 INSTEAD OF UPDATE ON v1 BEGIN
          INSERT INTO t2 VALUES(old.a);
        END;
        UPDATE v1 SET b = 'hello';
        SELECT * FROM t2;
      ROLLBACK;
    
