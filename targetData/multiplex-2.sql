

    PRAGMA page_size=1024;
    PRAGMA auto_vacuum=OFF;
    PRAGMA journal_mode=DELETE;
  

    CREATE TABLE t1(a, b);
    INSERT INTO t1 VALUES(1, randomblob(1100));
    INSERT INTO t1 VALUES(2, randomblob(1100));
  


 INSERT INTO t1 VALUES(3, randomblob(1100)) 


  PRAGMA multiplex_enabled;
  PRAGMA multiplex_filecount;
  PRAGMA multiplex_chunksize;


 INSERT INTO t1 VALUES(3, randomblob(1100)) 



 INSERT INTO t1 VALUES(3, randomblob(1100)) 







    PRAGMA page_size = 1024;
    PRAGMA journal_mode = delete;
    PRAGMA auto_vacuum = off;
    CREATE TABLE t1(a PRIMARY KEY, b);
  

 
    INSERT INTO t1 VALUES(1, 'one');
    INSERT INTO t1 VALUES(2, randomblob(4000));
    INSERT INTO t1 VALUES(3, 'three');
    INSERT INTO t1 VALUES(4, randomblob(4000));
    INSERT INTO t1 VALUES(5, 'five');
    INSERT INTO t1 VALUES(6, randomblob($g_chunk_size));
    INSERT INTO t1 VALUES(7, randomblob($g_chunk_size));
  

SELECT * FROM t1 WHERE a=1

SELECT * FROM t1 WHERE a=3

SELECT * FROM t1 WHERE a=5

SELECT a,length(b) FROM t1 WHERE a=2

SELECT a,length(b) FROM t1 WHERE a=4




  PRAGMA multiplex_enabled;
  PRAGMA multiplex_filecount;
  PRAGMA multiplex_chunksize;



  PRAGMA multiplex_filecount;
  PRAGMA multiplex_chunksize;






        PRAGMA page_size = 1024;
        PRAGMA auto_vacuum = off;
      

 
        CREATE TABLE t1(a PRIMARY KEY, b);
        INSERT INTO t1 VALUES(1, 'one');
        INSERT INTO t1 VALUES(2, randomblob($g_chunk_size));
      

SELECT b FROM t1 WHERE a=1

SELECT length(b) FROM t1 WHERE a=2





SQLITE_OK



 SELECT multiplex_control(2, 65536); 
0

 SELECT multiplex_control(1, 0); 
0

 
    CREATE TABLE t1(a PRIMARY KEY, b);
    INSERT INTO t1 VALUES(1, randomblob(1000));
  



 
    INSERT INTO t1 VALUES(2, randomblob(65536));
  




SQLITE_OK
