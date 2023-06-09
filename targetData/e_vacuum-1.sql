

    DELETE FROM t1;
    DELETE FROM t2;
  

PRAGMA freelist_count

PRAGMA freelist_count

VACUUM

}
  



    DELETE FROM t1 WHERE a%2;
    INSERT INTO t1 SELECT b, a FROM t2 WHERE a%2;
    UPDATE t1 SET b=randomblob(600) WHERE (a%2)==0;
  




 VACUUM 





 PRAGMA page_size ; PRAGMA auto_vacuum 

 PRAGMA page_size = 2048 
 PRAGMA auto_vacuum = NONE 
 PRAGMA page_size ; PRAGMA auto_vacuum 

 PRAGMA journal_mode = delete 
 PRAGMA page_size = 2048 
 PRAGMA auto_vacuum = NONE 
 PRAGMA page_size ; PRAGMA auto_vacuum 

 PRAGMA journal_mode = wal 
 PRAGMA page_size ; PRAGMA auto_vacuum 

 PRAGMA page_size = 1024 
 PRAGMA auto_vacuum = FULL 
 PRAGMA page_size ; PRAGMA auto_vacuum 
