

    CREATE TABLE t1(x);
    INSERT INTO t1 VALUES(1);
    ATTACH 'file:./test2.db?8_3_names=1' AS db2;
    CREATE TABLE db2.t2(y);
    INSERT INTO t2 VALUES(2);
    BEGIN;
      INSERT INTO t1 VALUES(3);
      INSERT INTO t2 VALUES(4);
    COMMIT;
    SELECT * FROM t1, t2 ORDER BY x, y
  
