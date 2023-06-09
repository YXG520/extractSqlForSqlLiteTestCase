

    CREATE TABLE t1(a PRIMARY KEY, b);
    INSERT INTO t1 VALUES(1, 'one');
    INSERT INTO t1 VALUES(2, 'two');
    INSERT INTO t1 VALUES(3, 'three');
    INSERT INTO t1 VALUES(4, 'four');
    INSERT INTO t1 VALUES(5, 'five');
    CREATE TABLE t2(a PRIMARY KEY, b);
  
SELECT f2($a)


    BEGIN;
    INSERT INTO t2 SELECT a, b FROM t1;
    INSERT INTO t2 SELECT a+5, f1(b) FROM t1;
    COMMIT;
  

    SELECT a FROM t2;
  

 
    DELETE FROM t2 WHERE a > 5;
    PRAGMA count_changes = 1;
    BEGIN;
  
INSERT INTO t2 SELECT a+5, b||'+5' FROM t1

    catch { db eval {SELECT f2('three')

    COMMIT;
    SELECT a FROM t2;
  

pragma count_changes=0
doit zSql

  if {$doit
