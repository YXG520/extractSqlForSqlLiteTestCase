CREATE TABLE t1(x, y);
    CREATE TABLE log(a, b, c);
    CREATE TRIGGER r1 BEFORE INSERT ON t1 BEGIN
      INSERT INTO log VALUES(1, new.x, new.y);
    END;
    CREATE TRIGGER r2 BEFORE UPDATE ON t1 BEGIN
      INSERT INTO log VALUES(2, new.x, new.y);
    END;
  
INSERT INTO t1 VALUES(1,counter());
    SELECT * FROM t1;
  
SELECT * FROM log;
  
DELETE FROM t1;
    DELETE FROM log;
    INSERT INTO t1 VALUES(2,counter(2,3)+4);
    SELECT * FROM t1;
  
SELECT * FROM log;
  
DELETE FROM log;
    UPDATE t1 SET y=counter(5);
    SELECT * FROM t1;
  
SELECT * FROM log;
  
