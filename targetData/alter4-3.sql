

    CREATE TEMP TABLE t1(a, b);
    INSERT INTO t1 VALUES(1, 100);
    INSERT INTO t1 VALUES(2, 300);
    SELECT * FROM t1;
  


    PRAGMA schema_version = 10;
  


    ALTER TABLE t1 ADD c;
    SELECT * FROM t1;
  


      PRAGMA schema_version;
    
