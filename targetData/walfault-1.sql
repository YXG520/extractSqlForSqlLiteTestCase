

 PRAGMA main.journal_mode = WAL 


    PRAGMA journal_mode = WAL;
    PRAGMA wal_autocheckpoint = 0;
    CREATE TABLE z(zz INTEGER PRIMARY KEY, zzz BLOB);
    CREATE INDEX zzzz ON z(zzz);
    INSERT INTO z VALUES(NULL, randomblob(800));
    INSERT INTO z VALUES(NULL, randomblob(800));
    INSERT INTO z SELECT NULL, randomblob(800) FROM z;
    INSERT INTO z SELECT NULL, randomblob(800) FROM z;
    INSERT INTO z SELECT NULL, randomblob(800) FROM z;
    INSERT INTO z SELECT NULL, randomblob(800) FROM z;
    INSERT INTO z SELECT NULL, randomblob(800) FROM z;
  


    PRAGMA cache_size = 10;
    BEGIN;
      UPDATE z SET zzz = randomblob(799);
  
SELECT zzz FROM z WHERE zz IN (1, 2, 3)
 INSERT INTO z VALUES(NULL, NULL) 
 ROLLBACK 
SELECT count(*), sum(length(zzz)) FROM z


    PRAGMA journal_mode = WAL;
    PRAGMA wal_autocheckpoint = 0;
    BEGIN;
      CREATE TABLE abc(a PRIMARY KEY);
      INSERT INTO abc VALUES(randomblob(1500));
      INSERT INTO abc VALUES(randomblob(1500));
      INSERT INTO abc SELECT randomblob(1500) FROM abc;   --    4
      INSERT INTO abc SELECT randomblob(1500) FROM abc;   --    8
      INSERT INTO abc SELECT randomblob(1500) FROM abc;   --   16
      INSERT INTO abc SELECT randomblob(1500) FROM abc;   --   32
      INSERT INTO abc SELECT randomblob(1500) FROM abc;   --   64
      INSERT INTO abc SELECT randomblob(1500) FROM abc;   --  128
      INSERT INTO abc SELECT randomblob(1500) FROM abc;   --  256
      INSERT INTO abc SELECT randomblob(1500) FROM abc;   --  512
      INSERT INTO abc SELECT randomblob(1500) FROM abc;   -- 1024
      INSERT INTO abc SELECT randomblob(1500) FROM abc;   -- 2048
      INSERT INTO abc SELECT randomblob(1500) FROM abc;   -- 4096
    COMMIT;
  

 SELECT count(*) FROM abc 
 PRAGMA wal_checkpoint 


    PRAGMA journal_mode = WAL;
    PRAGMA wal_autocheckpoint = 0;
    BEGIN;
      CREATE TABLE abc(a PRIMARY KEY);
      INSERT INTO abc VALUES(randomblob(1500));
      INSERT INTO abc VALUES(randomblob(1500));
    COMMIT;
  

 SELECT * FROM sqlite_master 


    PRAGMA journal_mode = WAL;
    PRAGMA wal_autocheckpoint = 0;
    BEGIN;
      CREATE TABLE abc(a PRIMARY KEY);
      INSERT INTO abc VALUES(randomblob(1500));
      INSERT INTO abc VALUES(randomblob(1500));
    COMMIT;
  


    BEGIN;
      CREATE TABLE abc(a PRIMARY KEY);
      INSERT INTO abc VALUES(randomblob(1500));
      INSERT INTO abc VALUES(randomblob(1500));
    COMMIT;
  


    PRAGMA auto_vacuum = 0;
    PRAGMA journal_mode = WAL;
    BEGIN;
      CREATE TABLE abc(a PRIMARY KEY);
      INSERT INTO abc VALUES(randomblob(1500));
      INSERT INTO abc VALUES(randomblob(1500));
    COMMIT;
  

 
    PRAGMA wal_checkpoint = full;
    INSERT INTO abc VALUES(randomblob(1500));
  
SELECT count(*) FROM abc


    PRAGMA auto_vacuum = 0;
    PRAGMA journal_mode = WAL;
    BEGIN;
      CREATE TABLE abc(a PRIMARY KEY);
      INSERT INTO abc VALUES(randomblob(1500));
      INSERT INTO abc VALUES(randomblob(1500));
    COMMIT;
  


    SELECT count(*) FROM abc;
    PRAGMA locking_mode = exclusive;
    BEGIN;
      INSERT INTO abc VALUES(randomblob(1500));
    COMMIT;
  
 
    PRAGMA locking_mode = normal;
    BEGIN;
      INSERT INTO abc VALUES(randomblob(1500));
    COMMIT;
  
SELECT count(*) FROM abc
