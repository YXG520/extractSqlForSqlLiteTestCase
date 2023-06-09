

    ATTACH 'test.db2' AS aux;
    CREATE TABLE aux.t2(x);
    PRAGMA aux.journal_mode = wal;
  

 INSERT INTO t2 VALUES('a') 


 INSERT INTO t1 VALUES(6) 

