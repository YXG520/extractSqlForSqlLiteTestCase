

    BEGIN;
    CREATE TABLE t1(a UNIQUE);
    INSERT INTO t1 VALUES(randstr(200, 200));
    INSERT INTO t1 VALUES(randstr(200, 200));
    COMMIT;
  


    INSERT INTO t1 VALUES(randstr(200, 200));
  


    INSERT INTO t1 VALUES(randstr(200, 200));
  


    PRAGMA locking_mode = exclusive;
    INSERT INTO t1 VALUES(randstr(200, 200));
  


    INSERT INTO t1 VALUES(randstr(200, 200));
  


    PRAGMA locking_mode = normal;
    INSERT INTO t1 VALUES(randstr(200, 200));
  


    INSERT INTO t1 VALUES(randstr(200, 200));
  
