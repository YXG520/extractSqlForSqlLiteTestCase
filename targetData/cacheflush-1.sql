

  CREATE TABLE t1(a, b);
  INSERT INTO t1 VALUES(1, 2);
  BEGIN;
    INSERT INTO t1 VALUES(3, 4);


S

S


  COMMIT;
  CREATE TABLE t2(a, b);
  BEGIN;
    INSERT INTO t1 VALUES(5, 6);
    INSERT INTO t2 VALUES('a', 'b');


S

S


  COMMIT;
  CREATE TABLE t3(a, b);
  BEGIN;
    INSERT INTO t1 VALUES(7, 8);
    INSERT INTO t2 VALUES('c', 'd');
    INSERT INTO t3 VALUES('i', 'ii');


S

 SELECT a FROM t1 

    if {$a==3

S


  COMMIT;
  BEGIN;
    INSERT INTO t1 VALUES(9, 10);



    BEGIN;
      SELECT * FROM t1;
  


S

S

 COMMIT 
