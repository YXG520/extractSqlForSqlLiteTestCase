

    DELETE FROM t1 WHERE a = 2;
  

    SELECT l.a, r.a FROM t1 AS l, t2 AS r WHERE l.a < r.a;
  


     CREATE TABLE t4(x);
     CREATE TABLE t4_log(x);
     CREATE TRIGGER r4_1 AFTER INSERT ON t4 WHEN new.x=1 BEGIN
       INSERT INTO t4_log(x) VALUES(new.x);
     END;
     CREATE TRIGGER r4_2 AFTER INSERT ON t4 WHEN new.x=2 BEGIN
       INSERT INTO t4_log(x) VALUES(new.x);
     END;
     CREATE TRIGGER r4_3 AFTER INSERT ON t4 WHEN new.x=3 BEGIN
       INSERT INTO t4_log(x) VALUES(new.x);
     END;
     CREATE TRIGGER r4_4 AFTER INSERT ON t4 WHEN new.x=4 BEGIN
       INSERT INTO t4_log(x) VALUES(new.x);
     END;
     INSERT INTO t4 VALUES(1);
     INSERT INTO t4 VALUES(2);
     INSERT INTO t4 VALUES(3);
     INSERT INTO t4 VALUES(4);
     SELECT * FROM t4_log;
    