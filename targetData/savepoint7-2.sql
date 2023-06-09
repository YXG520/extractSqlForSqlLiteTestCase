
DELETE FROM t2; SAVEPOINT x1; CREATE TABLE t4(abc);
SELECT * FROM t1

      db eval {
        SAVEPOINT x2;
        INSERT INTO t2 VALUES($a,$b,$c);
        ROLLBACK TO x2;
      
RELEASE x1
SELECT * FROM t2

DELETE FROM t2;
SELECT * FROM t1

      db eval {
        SAVEPOINT x2;
        CREATE TABLE t5(pqr);
        INSERT INTO t2 VALUES($a,$b,$c);
        ROLLBACK TO x2;
      
SELECT * FROM t2
