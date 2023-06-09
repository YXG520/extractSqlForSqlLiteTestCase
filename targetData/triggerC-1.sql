

    CREATE TABLE t1(a, b, c);
    CREATE TABLE log(t, a1, b1, c1, a2, b2, c2);
    CREATE TRIGGER trig1 BEFORE INSERT ON t1 BEGIN
      INSERT INTO log VALUES('before', NULL, NULL, NULL, new.a, new.b, new.c);
    END;
    CREATE TRIGGER trig2 AFTER INSERT ON t1 BEGIN
      INSERT INTO log VALUES('after', NULL, NULL, NULL, new.a, new.b, new.c);
    END;
    CREATE TRIGGER trig3 BEFORE UPDATE ON t1 BEGIN
      INSERT INTO log VALUES('before', old.a,old.b,old.c, new.a,new.b,new.c);
    END;
    CREATE TRIGGER trig4 AFTER UPDATE ON t1 BEGIN
      INSERT INTO log VALUES('after', old.a,old.b,old.c, new.a,new.b,new.c);
    END;

    CREATE TRIGGER trig5 BEFORE DELETE ON t1 BEGIN
      INSERT INTO log VALUES('before', old.a,old.b,old.c, NULL,NULL,NULL);
    END;
    CREATE TRIGGER trig6 AFTER DELETE ON t1 BEGIN
      INSERT INTO log VALUES('after', old.a,old.b,old.c, NULL,NULL,NULL);
    END;
  


    INSERT INTO t1 VALUES('A', 'B', 'C');
    SELECT * FROM log;
  

 SELECT * FROM t1 


    DELETE FROM log;
    UPDATE t1 SET a = 'a';
    SELECT * FROM log;
  

 SELECT * FROM t1 


    DELETE FROM log;
    DELETE FROM t1;
    SELECT * FROM log;
  

 SELECT * FROM t1 


    CREATE TABLE t4(a, b);
    CREATE TRIGGER t4t AFTER DELETE ON t4 BEGIN
      SELECT RAISE(ABORT, 'delete is not supported');
    END;
  

 INSERT INTO t4 VALUES(1, 2) 
 DELETE FROM t4 

 SELECT * FROM t4 


    CREATE TABLE t5 (a primary key, b, c);
    INSERT INTO t5 values (1, 2, 3);
    CREATE TRIGGER au_tbl AFTER UPDATE ON t5 BEGIN
      UPDATE OR IGNORE t5 SET a = new.a, c = 10;
    END;
  

 UPDATE OR REPLACE t5 SET a = 4 WHERE a = 1 


    CREATE TABLE t6(a INTEGER PRIMARY KEY, b);
    INSERT INTO t6 VALUES(1, 2);
    create trigger r1 after update on t6 for each row begin
      SELECT 1;
    end;
    UPDATE t6 SET a=a; 
  


    DROP TABLE t1;
    CREATE TABLE cnt(n);
    INSERT INTO cnt VALUES(0);
    CREATE TABLE t1(a INTEGER PRIMARY KEY, b UNIQUE, c, d, e);
    CREATE INDEX t1cd ON t1(c,d);
    CREATE TRIGGER t1r1 AFTER UPDATE ON t1 BEGIN UPDATE cnt SET n=n+1; END;
    INSERT INTO t1 VALUES(1,2,3,4,5);
    INSERT INTO t1 VALUES(6,7,8,9,10);
    INSERT INTO t1 VALUES(11,12,13,14,15);
  

 UPDATE OR ROLLBACK t1 SET a=100 
