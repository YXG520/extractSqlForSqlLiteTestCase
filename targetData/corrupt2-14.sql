

  PRAGMA auto_vacuum = 0;
  CREATE TABLE t1(x);
  INSERT INTO t1 VALUES(randomblob(3500));
  DELETE FROM t1;



  PRAGMA integrity_check;
  PRAGMA freelist_count;


 PRAGMA freelist_count 


  PRAGMA integrity_check;



  INSERT INTO t1 VALUES(randomblob(2500));
  PRAGMA freelist_count;



  PRAGMA integrity_check;

