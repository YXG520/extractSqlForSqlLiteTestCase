

    CREATE TABLE t1(
      node PRIMARY KEY, 
      parent REFERENCES t1 ON DELETE CASCADE
    );
    CREATE TABLE t2(node PRIMARY KEY, parent);
    CREATE TRIGGER t2t AFTER DELETE ON t2 BEGIN
      DELETE FROM t2 WHERE parent = old.node;
    END;
    INSERT INTO t1 VALUES(1, NULL);
    INSERT INTO t1 VALUES(2, 1);
    INSERT INTO t1 VALUES(3, 1);
    INSERT INTO t1 VALUES(4, 2);
    INSERT INTO t1 VALUES(5, 2);
    INSERT INTO t1 VALUES(6, 3);
    INSERT INTO t1 VALUES(7, 3);
    INSERT INTO t2 SELECT * FROM t1;
  

 PRAGMA recursive_triggers = off 
 
    BEGIN;
      DELETE FROM t1 WHERE node = 1;
      SELECT node FROM t1;
  

 
      DELETE FROM t2 WHERE node = 1;
      SELECT node FROM t2;
    ROLLBACK;
  

 PRAGMA recursive_triggers = on 
 
    BEGIN;
      DELETE FROM t1 WHERE node = 1;
      SELECT node FROM t1;
  

 
      DELETE FROM t2 WHERE node = 1;
      SELECT node FROM t2;
    ROLLBACK;
  
