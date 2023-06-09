

    CREATE TABLE t6(a, b, c);
    -- Different case for the table name in the trigger.
    CREATE TRIGGER trig1 AFTER INSERT ON T6 BEGIN
      SELECT trigfunc('trig1', new.a, new.b, new.c);
    END;
  


    INSERT INTO t6 VALUES(1, 2, 3);
  


    ALTER TABLE t6 RENAME TO t7;
    INSERT INTO t7 VALUES(4, 5, 6);
  


    DROP TRIGGER trig1;
  


    CREATE TRIGGER trig2 AFTER INSERT ON main.t7 BEGIN
      SELECT trigfunc('trig2', new.a, new.b, new.c);
    END;
    INSERT INTO t7 VALUES(1, 2, 3);
  


    ALTER TABLE t7 RENAME TO t8;
    INSERT INTO t8 VALUES(4, 5, 6);
  


    DROP TRIGGER trig2;
  


    CREATE TRIGGER trig3 AFTER INSERT ON main.'t8'BEGIN
      SELECT trigfunc('trig3', new.a, new.b, new.c);
    END;
    INSERT INTO t8 VALUES(1, 2, 3);
  


    ALTER TABLE t8 RENAME TO t9;
    INSERT INTO t9 VALUES(4, 5, 6);
  


      ATTACH 'test3.db' AS ON;
    


      ATTACH 'test3.db' AS 'ON';
    


      CREATE TABLE ON.t1(a, b, c); 
    


      CREATE TABLE 'ON'.t1(a, b, c); 
    


      CREATE TABLE 'ON'.ON(a, b, c); 
    


      CREATE TABLE 'ON'.'ON'(a, b, c); 
    


    CREATE TABLE t10(a, ON, c);
  


    CREATE TABLE t10(a, 'ON', c);
  


    CREATE TRIGGER trig4 AFTER INSERT ON ON BEGIN SELECT 1; END;
  


      CREATE TRIGGER 'on'.trig4 AFTER INSERT ON 'ON' BEGIN SELECT 1; END;
    


    DROP TABLE t10;
  


    CREATE TABLE tbl1(a, b, c);
    CREATE $::temp TRIGGER trig1 AFTER INSERT ON tbl1 BEGIN
      SELECT trigfunc('trig1', new.a, new.b, new.c);
    END;
  


    INSERT INTO tbl1 VALUES('a', 'b', 'c');
  


    ALTER TABLE tbl1 RENAME TO tbl2;
    INSERT INTO tbl2 VALUES('d', 'e', 'f');
  


    CREATE $::temp TRIGGER trig2 AFTER UPDATE ON tbl2 BEGIN
      SELECT trigfunc('trig2', new.a, new.b, new.c);
    END;
  


    ALTER TABLE tbl2 RENAME TO tbl3;
    INSERT INTO tbl3 VALUES('g', 'h', 'i');
  


    UPDATE tbl3 SET a = 'G' where a = 'g';
  


    DROP TABLE tbl3;
  


      SELECT * FROM temp.sqlite_master WHERE type = 'trigger';
    
