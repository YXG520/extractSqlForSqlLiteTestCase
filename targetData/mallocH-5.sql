

   CREATE TABLE t1(a PRIMARY KEY, b UNIQUE);
   CREATE TABLE t2(x,y);
   INSERT INTO t1 VALUES(1,2);
   INSERT INTO t2 SELECT * FROM t1;


   PRAGMA integrity_check;

