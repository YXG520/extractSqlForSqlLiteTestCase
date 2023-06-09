

    DROP TABLE t1;
    DROP TABLE t2;
    DROP TABLE t3;
    CREATE TABLE t1(a PRIMARY KEY, b) without rowid;
  
INSERT into t1 values($i,[expr {$i+1}]);

    SELECT count(*), min(a), max(b) FROM t1;
  


    PRAGMA count_changes=on;
    UPDATE OR IGNORE t1 SET a=1000;
  



    SELECT b FROM t1 WHERE a=1000;
  


    SELECT count(*) FROM t1;
  


    PRAGMA count_changes=on;
    UPDATE OR REPLACE t1 SET a=1001;
  



    SELECT count(*) FROM t1;
  

