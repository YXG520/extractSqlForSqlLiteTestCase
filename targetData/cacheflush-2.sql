

  ATTACH 'test.db2' AS aux;
  CREATE TABLE aux.t4(x, y);
  INSERT INTO t4 VALUES('A', 'B');
  BEGIN;
    INSERT INTO t1 VALUES(11, 12);
    INSERT INTO t4 VALUES('C', 'D');


S

S

S

S

 COMMIT 


  BEGIN;
    INSERT INTO t1 VALUES(13, 14);
    INSERT INTO t4 VALUES('E', 'F');


S

S


    BEGIN;
      SELECT * FROM t1;
  

S

S

S

 COMMIT 
