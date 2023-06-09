

    CREATE TABLE t8(x);
    CREATE TABLE t7(a, b);
    INSERT INTO t7 VALUES(1, 2);
    INSERT INTO t7 VALUES(3, 4);
    INSERT INTO t7 VALUES(5, 6);
    CREATE TRIGGER t7t BEFORE UPDATE ON t7 BEGIN
      DELETE FROM t7 WHERE a = 1;
    END;
    CREATE TRIGGER t7ta AFTER UPDATE ON t7 BEGIN
      INSERT INTO t8 VALUES('after fired ' || old.rowid || '->' || new.rowid);
    END;
  


    BEGIN;
      UPDATE t7 SET b=7 WHERE a = 5;
      SELECT * FROM t7;
      SELECT * FROM t8;
    ROLLBACK;
  


    BEGIN;
      UPDATE t7 SET b=7 WHERE a = 1;
      SELECT * FROM t7;
      SELECT * FROM t8;
    ROLLBACK;
  


    DROP TRIGGER t7t;
    CREATE TRIGGER t7t BEFORE UPDATE ON t7 WHEN (old.rowid!=1 OR new.rowid!=8)
    BEGIN
      UPDATE t7 set rowid = 8 WHERE rowid=1;
    END;
  


    BEGIN;
      UPDATE t7 SET b=7 WHERE a = 5;
      SELECT rowid, * FROM t7;
      SELECT * FROM t8;
    ROLLBACK;
  


    BEGIN;
      UPDATE t7 SET b=7 WHERE a = 1;
      SELECT rowid, * FROM t7;
      SELECT * FROM t8;
    ROLLBACK;
  


    DROP TRIGGER t7t;
    DROP TRIGGER t7ta;
    CREATE TRIGGER t7t BEFORE DELETE ON t7 BEGIN
      UPDATE t7 set rowid = 8 WHERE rowid=1;
    END;
    CREATE TRIGGER t7ta AFTER DELETE ON t7 BEGIN
      INSERT INTO t8 VALUES('after fired ' || old.rowid);
    END;
  


    BEGIN;
      DELETE FROM t7 WHERE a = 3;
      SELECT rowid, * FROM t7;
      SELECT * FROM t8;
    ROLLBACK;
  


    BEGIN;
      DELETE FROM t7 WHERE a = 1;
      SELECT rowid, * FROM t7;
      SELECT * FROM t8;
    ROLLBACK;
  
