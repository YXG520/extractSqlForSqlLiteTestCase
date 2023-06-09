

    CREATE TRIGGER ty AFTER INSERT ON x BEGIN
       SELECT wen.x; -- Unrecognized name
    END;
    INSERT INTO x VALUES(1,2);
  


    CREATE TRIGGER tz AFTER UPDATE ON x BEGIN
       SELECT dlo.x; -- Unrecognized name
    END;
    UPDATE x SET y=y+1;
  


    CREATE TABLE t2(a INTEGER PRIMARY KEY, b);
    INSERT INTO t2 VALUES(1,2);
    CREATE TABLE changes(x,y);
    CREATE TRIGGER r1t2 AFTER UPDATE ON t2 BEGIN
      INSERT INTO changes VALUES(new.a, new.b);
    END;
  

    UPDATE t2 SET a=a+10;
    SELECT * FROM changes;
  


    CREATE TRIGGER r2t2 AFTER DELETE ON t2 BEGIN
      INSERT INTO changes VALUES(old.a, old.c);
    END;
  

    DELETE FROM t2;
  
