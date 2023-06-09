

    DELETE FROM t1;
    INSERT INTO t1 VALUES(1,2,3,4,5);
    UPDATE t1 SET a=null;
    SELECT * FROM t1 ORDER BY a;
  


    DELETE FROM t1;
    INSERT INTO t1 VALUES(1,2,3,4,5);
    UPDATE OR REPLACE t1 SET a=null;
    SELECT * FROM t1 ORDER BY a;
  


    DELETE FROM t1;
    INSERT INTO t1 VALUES(1,2,3,4,5);
    UPDATE OR IGNORE t1 SET a=null;
    SELECT * FROM t1 ORDER BY a;
  


    DELETE FROM t1;
    INSERT INTO t1 VALUES(1,2,3,4,5);
    UPDATE OR ABORT t1 SET a=null;
    SELECT * FROM t1 ORDER BY a;
  


    DELETE FROM t1;
    INSERT INTO t1 VALUES(1,2,3,4,5);
    UPDATE t1 SET b=null;
    SELECT * FROM t1 ORDER BY a;
  


    DELETE FROM t1;
    INSERT INTO t1 VALUES(1,2,3,4,5);
    UPDATE OR REPLACE t1 SET b=null, d=e, e=d;
    SELECT * FROM t1 ORDER BY a;
  


    DELETE FROM t1;
    INSERT INTO t1 VALUES(1,2,3,4,5);
    UPDATE OR IGNORE t1 SET b=null, d=e, e=d;
    SELECT * FROM t1 ORDER BY a;
  


    DELETE FROM t1;
    INSERT INTO t1 VALUES(1,2,3,4,5);
    UPDATE t1 SET c=null, d=e, e=d;
    SELECT * FROM t1 ORDER BY a;
  


    DELETE FROM t1;
    INSERT INTO t1 VALUES(1,2,3,4,5);
    UPDATE t1 SET d=null, a=b, b=a;
    SELECT * FROM t1 ORDER BY a;
  


    DELETE FROM t1;
    INSERT INTO t1 VALUES(1,2,3,4,5);
    UPDATE t1 SET e=null, a=b, b=a;
    SELECT * FROM t1 ORDER BY a;
  
