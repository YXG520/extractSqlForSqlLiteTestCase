

    PRAGMA auto_vacuum = 1;
    PRAGMA journal_mode = WAL;
    CREATE TABLE abc(a PRIMARY KEY);
    INSERT INTO abc VALUES(randomblob(1500));
  


    DELETE FROM abc;
    PRAGMA wal_checkpoint;
  
