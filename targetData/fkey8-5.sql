

  PRAGMA foreign_keys = true;
  CREATE TABLE parent(
    p TEXT PRIMARY KEY
  );
  CREATE TABLE child(
    c INTEGER UNIQUE, 
    FOREIGN KEY(c) REFERENCES parent(p) DEFERRABLE INITIALLY DEFERRED
  );
  BEGIN;
    INSERT INTO child VALUES(123);
    INSERT INTO parent VALUES('123');
  COMMIT;



  PRAGMA integrity_check;



  INSERT INTO parent VALUES(1200);
  BEGIN;
    INSERT INTO child VALUES(456);
    UPDATE parent SET p = '456' WHERE p=1200;
  COMMIT;



  PRAGMA integrity_check;

