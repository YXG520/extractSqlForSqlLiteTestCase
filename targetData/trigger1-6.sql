
SELECT type, name FROM sqlite_master


    CREATE TRIGGER t2 BEFORE DELETE ON t2 BEGIN
      SELECT RAISE(ABORT,'deletes are not permitted');
    END;
    SELECT type, name FROM sqlite_master;
  

DELETE FROM t2

SELECT * FROM t2

SELECT type, name FROM sqlite_master


    DROP TRIGGER t2;
    SELECT type, name FROM sqlite_master;
  

SELECT * FROM t2

SELECT * FROM t2
