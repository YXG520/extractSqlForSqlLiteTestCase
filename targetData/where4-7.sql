

    CREATE TABLE t6(y,z,PRIMARY KEY(y,z));
  

    SELECT * FROM t6 WHERE y=NULL AND z IN ('hello');
  


    BEGIN;
    CREATE TABLE t8(a, b, c, d);
    CREATE INDEX t8_i ON t8(a, b, c);
    CREATE TABLE t7(i);

    INSERT INTO t7 VALUES(1);
    INSERT INTO t7 SELECT i*2 FROM t7;
    INSERT INTO t7 SELECT i*2 FROM t7;
    INSERT INTO t7 SELECT i*2 FROM t7;
    INSERT INTO t7 SELECT i*2 FROM t7;
    INSERT INTO t7 SELECT i*2 FROM t7;
    INSERT INTO t7 SELECT i*2 FROM t7;

    COMMIT;
  


    SELECT sum((
      SELECT d FROM t8 WHERE a = i AND b = i AND c < NULL
    )) FROM t7;
  
