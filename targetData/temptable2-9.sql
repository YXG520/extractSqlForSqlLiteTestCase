

    PRAGMA cache_size = 15;
    PRAGMA auto_vacuum = 1;
  
PRAGMA journal_mode = $mode


    CREATE TABLE tx(a, b);
    CREATE INDEX i1 ON tx(a);
    CREATE INDEX i2 ON tx(b);
    WITH x(i) AS ( SELECT 1 UNION ALL SELECT i+1 FROM x WHERE i<1000 )
      INSERT INTO tx SELECT randomblob(100), randomblob(100) FROM x;
  

 DELETE FROM tx WHERE (random()%3)==0 

 PRAGMA integrity_check 

 
        WITH x(i) AS ( SELECT 1 UNION ALL SELECT i+1 FROM x WHERE i<400 )
          INSERT INTO tx SELECT randomblob(100), randomblob(100) FROM x;
      

 PRAGMA integrity_check 

 
      BEGIN;
      DELETE FROM tx WHERE (random()%3)==0;
      WITH x(i) AS ( SELECT 1 UNION ALL SELECT i+1 FROM x WHERE i<500 )
        INSERT INTO tx SELECT randomblob(100), randomblob(100) FROM x;
      COMMIT;
    

 PRAGMA integrity_check 

