

  ATTACH 'test.db2' AS aux;
  PRAGMA aux.page_size = 1024;
  CREATE TABLE aux.t3 AS SELECT * FROM t1;
  DELETE FROM t3;


 VACUUM 



 VACUUM aux; 


