

    CREATE TABLE t1(a,b,c);
    CREATE TABLE t2(x,y,z);
    INSERT INTO t1 VALUES(1,2,3);
    INSERT INTO t1 VALUES(4,5,6);
    INSERT INTO t1 VALUES(7,8,9);
    SAVEPOINT x1;
  
SELECT * FROM t1

    db eval {
      SAVEPOINT x2;
      CREATE TABLE IF NOT EXISTS t3(xyz);
      INSERT INTO t2 VALUES($a,$b,$c);
      RELEASE x2;
    
SELECT * FROM t2; RELEASE x1

DELETE FROM t2;
SELECT * FROM t1

    db eval {
      SAVEPOINT x2;
      INSERT INTO t2 VALUES($a,$b,$c);
      RELEASE x2;
    
SELECT * FROM t2;

DELETE FROM t2; BEGIN;
SELECT * FROM t1

    db eval {
      SAVEPOINT x2;
      INSERT INTO t2 VALUES($a,$b,$c);
      RELEASE x2;
    
SELECT * FROM t2; ROLLBACK;
