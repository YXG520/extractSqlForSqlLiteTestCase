

    DROP TABLE IF EXISTS t5;
    CREATE TABLE t5(a INTEGER PRIMARY KEY, b);
    CREATE UNIQUE INDEX t5i ON t5(b);
    INSERT INTO t5 VALUES(1, 'a');
    INSERT INTO t5 VALUES(2, 'b');
    INSERT INTO t5 VALUES(3, 'c');

    CREATE TABLE t5g(a, b, c);
    CREATE TRIGGER t5t BEFORE DELETE ON t5 BEGIN
      INSERT INTO t5g VALUES(old.a, old.b, (SELECT count(*) FROM t5));
    END;
  


      BEGIN;
        $dml ;
        SELECT * FROM t5g ORDER BY rowid;
        SELECT * FROM t5 ORDER BY rowid;
      ROLLBACK;
    


    DROP TRIGGER t5t;
    CREATE TRIGGER t5t AFTER DELETE ON t5 BEGIN
      INSERT INTO t5g VALUES(old.a, old.b, (SELECT count(*) FROM t5));
    END;
  


      BEGIN;
        $dml ;
        SELECT * FROM t5g ORDER BY rowid;
        SELECT * FROM t5 ORDER BY rowid;
      ROLLBACK;
    

 PRAGMA recursive_triggers = off 


      BEGIN;
        $dml ;
        SELECT * FROM t5g ORDER BY rowid;
        SELECT * FROM t5 ORDER BY rowid;
      ROLLBACK;
    

 PRAGMA recursive_triggers = on 
