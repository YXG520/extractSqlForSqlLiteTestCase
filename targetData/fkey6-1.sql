

  PRAGMA defer_foreign_keys;



  PRAGMA foreign_keys=ON;
  CREATE TABLE t1(x INTEGER PRIMARY KEY);
  CREATE TABLE t2(y INTEGER PRIMARY KEY,
          z INTEGER REFERENCES t1(x) DEFERRABLE INITIALLY DEFERRED);
  CREATE INDEX t2z ON t2(z);
  CREATE TABLE t3(u INTEGER PRIMARY KEY, v INTEGER REFERENCES t1(x));
  CREATE INDEX t3v ON t3(v);
  INSERT INTO t1 VALUES(1),(2),(3),(4),(5);
  INSERT INTO t2 VALUES(1,1),(2,2);
  INSERT INTO t3 VALUES(3,3),(4,4);


DELETE FROM t1 WHERE x=2;



    BEGIN;
    DELETE FROM t1 WHERE x=1;
  




    ROLLBACK;
  



    PRAGMA defer_foreign_keys=ON;
    BEGIN;
    DELETE FROM t1 WHERE x=3;
  



  PRAGMA defer_foreign_keys;
  ROLLBACK;
  PRAGMA defer_foreign_keys;
  BEGIN;
  PRAGMA defer_foreign_keys=ON;
  PRAGMA defer_foreign_keys;
  COMMIT;
  PRAGMA defer_foreign_keys;
  BEGIN;


DELETE FROM t1 WHERE x=3
ROLLBACK


    BEGIN;
    DELETE FROM t1 WHERE x=1;
  


    DELETE FROM t2 WHERE y=1;
  


    COMMIT;
  
