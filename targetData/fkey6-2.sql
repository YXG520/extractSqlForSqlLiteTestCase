

  CREATE TABLE p1(a PRIMARY KEY);
  INSERT INTO p1 VALUES('one'), ('two');
  CREATE TABLE c1(x REFERENCES p1);
  INSERT INTO c1 VALUES('two'), ('one');



  BEGIN;
    PRAGMA defer_foreign_keys = 1;
    DELETE FROM p1;
  ROLLBACK;
  PRAGMA defer_foreign_keys;



  BEGIN;
    PRAGMA defer_foreign_keys = 1;
    DROP TABLE p1;
    PRAGMA vdbe_trace = 0;
  ROLLBACK;
  PRAGMA defer_foreign_keys;



  BEGIN;
    PRAGMA defer_foreign_keys = 1;
    DELETE FROM p1;
    DROP TABLE c1;
  COMMIT;
  PRAGMA defer_foreign_keys;



  DROP TABLE p1;
  CREATE TABLE p1(a PRIMARY KEY);
  INSERT INTO p1 VALUES('one'), ('two');
  CREATE TABLE c1(x REFERENCES p1);
  INSERT INTO c1 VALUES('two'), ('one');



  BEGIN;
    PRAGMA defer_foreign_keys = 1;
    INSERT INTO c1 VALUES('three');
    DROP TABLE c1;
  COMMIT;
  PRAGMA defer_foreign_keys;

