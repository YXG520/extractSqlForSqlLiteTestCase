
 PRAGMA locking_mode = exclusive 
 SELECT count(*) FROM abc 

 PRAGMA locking_mode = exclusive 
 PRAGMA journal_mode = delete 

 
    PRAGMA locking_mode = exclusive;
    PRAGMA journal_mode = WAL;
    INSERT INTO abc VALUES(randomblob(1500));
  
SELECT count(*) FROM abc
