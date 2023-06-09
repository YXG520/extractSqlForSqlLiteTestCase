

    CREATE TABLE t1(a INTEGER PRIMARY KEY, b);
    CREATE VIRTUAL TABLE t2 USING rtree(id,x0,x1);
    INSERT INTO t1 VALUES(1,'apple'),(2,'fig'),(3,'pear');
    INSERT INTO t2 VALUES(1,1.0,2.0),(2,2.0,3.0),(3,1.5,3.5);
    CREATE TRIGGER r1 AFTER UPDATE ON t1 BEGIN
      DELETE FROM t2 WHERE id = OLD.a;
    END;
    ALTER TABLE t1 RENAME TO t3;
    UPDATE t3 SET b='peach' WHERE a=2;
    SELECT * FROM t2 ORDER BY 1;
  
