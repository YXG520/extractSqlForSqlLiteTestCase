

    PRAGMA journal_mode = WAL;
    CREATE TABLE abc(a PRIMARY KEY);
    INSERT INTO abc VALUES(randomblob(900));
  

 PRAGMA cache_size = 10 

    BEGIN;
      INSERT INTO abc SELECT randomblob(900) FROM abc;    /* 1 */
      --INSERT INTO abc SELECT randomblob(900) FROM abc;    /* 2 */
      --INSERT INTO abc SELECT randomblob(900) FROM abc;    /* 4 */
      --INSERT INTO abc SELECT randomblob(900) FROM abc;    /* 8 */
    ROLLBACK;
    SELECT count(*) FROM abc;
  
