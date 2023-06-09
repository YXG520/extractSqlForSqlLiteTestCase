

  PRAGMA foreign_keys = 1;
  CREATE TABLE t1(a, b, UNIQUE(a, b));


  CREATE TABLE t2(x, y, 
    FOREIGN KEY(x, y) REFERENCES t1(a, b) DEFERRABLE INITIALLY DEFERRED
  );
  BEGIN;
    INSERT INTO t2 VALUES('a', 'b');
    INSERT INTO t1 VALUES('a', 'b');
    UPDATE t1 SET a = 'c';
    DELETE FROM t2;
    INSERT INTO t2 VALUES('d', 'b');
    UPDATE t2 SET x = 'c';
  COMMIT;

