
pragma page_size=1024
pragma journal_mode=persist

 PRAGMA journal_size_limit 

 
      ATTACH 'test2.db' AS aux;
      PRAGMA aux.journal_mode=persist;
      PRAGMA aux.journal_size_limit;
    

 PRAGMA aux.journal_size_limit = 999999999999 

 PRAGMA aux.journal_size_limit = 10240 

 PRAGMA main.journal_size_limit = 20480 

 PRAGMA journal_size_limit 

 PRAGMA aux.journal_size_limit 


      ATTACH 'test3.db' AS aux2;
      PRAGMA aux2.journal_mode=persist;
    


      CREATE TABLE main.t1(a, b, c);
      CREATE TABLE aux.t2(a, b, c);
      CREATE TABLE aux2.t3(a, b, c);
    



      BEGIN;
      INSERT INTO t3 VALUES(randomblob(1000),randomblob(1000),randomblob(1000));
      INSERT INTO t3 
          SELECT randomblob(1000),randomblob(1000),randomblob(1000) FROM t3;
      INSERT INTO t3 
          SELECT randomblob(1000),randomblob(1000),randomblob(1000) FROM t3;
      INSERT INTO t3 
          SELECT randomblob(1000),randomblob(1000),randomblob(1000) FROM t3;
      INSERT INTO t3 
          SELECT randomblob(1000),randomblob(1000),randomblob(1000) FROM t3;
      INSERT INTO t3 
          SELECT randomblob(1000),randomblob(1000),randomblob(1000) FROM t3;
      INSERT INTO t2 SELECT * FROM t3;
      INSERT INTO t1 SELECT * FROM t2;
      COMMIT;
    


      BEGIN;
      UPDATE t1 SET a = randomblob(1000);
    



      BEGIN;
      UPDATE t2 SET a = randomblob(1000);
    



      BEGIN;
      UPDATE t3 SET a = randomblob(1000);
    



      PRAGMA journal_size_limit = -4;
      BEGIN;
      UPDATE t1 SET a = randomblob(1000);
    



      PRAGMA journal_size_limit = 0;
      BEGIN;
      UPDATE t1 SET a = randomblob(1000);
    


