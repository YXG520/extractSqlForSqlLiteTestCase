

  CREATE TABLE t1(x, y);
  INSERT INTO t1 VALUES(1, 2);
  ATTACH 'test.db2' AS aux;
  CREATE TABLE aux.t2(x, y);
  INSERT INTO t2 VALUES(3, 4);


 ATTACH 'test.db2' AS aux 
PRAGMA main.journal_mode = $jrnl
PRAGMA aux.journal_mode = $jrnl

        BEGIN;
          INSERT INTO t1 VALUES(5, 6);
          INSERT INTO t2 VALUES(7, 8);
        COMMIT;
      
 ATTACH 'test.db2' AS aux 

        SELECT * FROM t1;
        SELECT * FROM t2;
      
