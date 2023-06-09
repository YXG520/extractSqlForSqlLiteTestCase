
 DROP TABLE log 
 CREATE TABLE log(a, b) 

 DROP TABLE t1 
 DELETE FROM log 

      CREATE TRIGGER tt1 BEFORE INSERT ON t1 BEGIN 
        INSERT INTO log VALUES(new.a, new.b);
      END;
      INSERT INTO t1 DEFAULT VALUES;
      SELECT * FROM log;
    

 DELETE FROM log 

      CREATE TRIGGER tt2 AFTER INSERT ON t1 BEGIN 
        INSERT INTO log VALUES(new.a, new.b);
      END;
      INSERT INTO t1 DEFAULT VALUES;
      SELECT * FROM log;
    

 DROP TRIGGER tt1 
 DELETE FROM log 

      INSERT INTO t1 DEFAULT VALUES;
      SELECT * FROM log;
    

 DROP TABLE t2 

    DELETE FROM log;
    CREATE TABLE t2(a, b);
    CREATE VIEW v2 AS SELECT * FROM t2;
    CREATE TRIGGER tv2 INSTEAD OF INSERT ON v2 BEGIN
      INSERT INTO log VALUES(new.a, new.b);
    END;
    INSERT INTO v2 DEFAULT VALUES;
    SELECT a, b, a IS NULL, b IS NULL FROM log;
  
