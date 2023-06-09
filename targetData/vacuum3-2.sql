

    PRAGMA page_size = 1024;
    VACUUM;
  
 ALTER TABLE t1 ADD COLUMN d; 

      DROP TABLE t1;
      CREATE TABLE t1(a, b, c, d);
      INSERT INTO t1 VALUES(1, 2, 3, NULL);
    

    UPDATE t1 SET d = randomblob(1000);
  

 PRAGMA page_size 


 
      PRAGMA page_size = $request;
      VACUUM;
    
 PRAGMA page_size 


 SELECT * FROM t1 
SELECT count(*), md5sum(a), md5sum(b), md5sum(c) FROM abc
