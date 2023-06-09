

    PRAGMA page_size = 1024;
    PRAGMA secure_delete = on;
    PRAGMA auto_vacuum = 0;
    CREATE TABLE t1(x INTEGER PRIMARY KEY, y);
    INSERT INTO t1 VALUES(5, randomblob(1900));
  
 INSERT OR REPLACE INTO t1 VALUES(5, randomblob(1900)) 


    PRAGMA page_size = 1024;
    PRAGMA secure_delete = on;
    PRAGMA auto_vacuum = 0;
    CREATE TABLE t1(x INTEGER PRIMARY KEY, y);
    INSERT INTO t1 VALUES(5, randomblob(900));
    INSERT INTO t1 VALUES(6, randomblob(900));
  
 INSERT INTO t1 VALUES(4, randomblob(1900)) 
