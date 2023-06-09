

    DROP TABLE IF EXISTS t1;
    CREATE TABLE t1(a, b NOT NULL);
    CREATE TABLE t2(c, d);
    INSERT INTO t2 VALUES(3, 4);
    INSERT INTO t2 VALUES(5, NULL);
  


    INSERT INTO t1 VALUES(1, 2);
    INSERT INTO t1 SELECT * FROM t2;
  

 SELECT * FROM t1 


    DELETE FROM t1;
    BEGIN;
      INSERT INTO t1 VALUES(1, 2);
      INSERT INTO t1 SELECT * FROM t2;
    COMMIT;
  

 SELECT * FROM t1 

  db eval "EXPLAIN $sql" a {
    if {$a(opcode)=="Next"
