

  CREATE TABLE p2(a PRIMARY KEY, b);
  CREATE TABLE c2(x, y REFERENCES p2 ON DELETE RESTRICT ON UPDATE RESTRICT);
  INSERT INTO p2 VALUES(1, 'one');
  INSERT INTO p2 VALUES(2, 'two');
  INSERT INTO c2 VALUES('i', 1);



  BEGIN;
    UPDATE p2 SET a=a-1;


 COMMIT 


  BEGIN;
    PRAGMA defer_foreign_keys = 1;
    UPDATE p2 SET a=a-1;
  COMMIT;



  BEGIN;
    PRAGMA defer_foreign_keys = 1;
    UPDATE p2 SET a=a-1;



  COMMIT;


 ROLLBACK 


  CREATE TRIGGER p2t AFTER DELETE ON p2 BEGIN
    INSERT INTO p2 VALUES(old.a, 'deleted!');
  END;



  BEGIN;
    DELETE FROM p2 WHERE a=1;


 COMMIT 


  BEGIN;
    PRAGMA defer_foreign_keys = 1;
    DELETE FROM p2 WHERE a=1;
  COMMIT;
  SELECT * FROM p2;

