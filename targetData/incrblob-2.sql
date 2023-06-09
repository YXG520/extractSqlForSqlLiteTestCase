

      BEGIN;
      CREATE TABLE blobs(k PRIMARY KEY, v BLOB, i INTEGER);
      DELETE FROM blobs;
      INSERT INTO blobs VALUES('one', $::str || randstr(500,500), 45);
      COMMIT;
    


        PRAGMA auto_vacuum;
      

PRAGMA mmap_size = 0


PRAGMA mmap_size = 0



 PRAGMA mmap_size = 0 
 SELECT i FROM blobs 

