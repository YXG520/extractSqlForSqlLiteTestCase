

    SAVEPOINT sp1;
    CREATE TABLE t1(x);
    INSERT INTO t1 VALUES(1);
    SELECT count(*) FROM sqlite_master;
    SELECT * FROM t1;
  


    ROLLBACK TO sp1;
    SELECT count(*) FROM sqlite_master;
  


    CREATE TABLE t1(x);
    INSERT INTO t1 VALUES(1);
    SELECT count(*) FROM sqlite_master;
    SELECT * FROM t1;
  
