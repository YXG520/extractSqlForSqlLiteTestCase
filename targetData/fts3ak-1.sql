


    BEGIN TRANSACTION;
    INSERT INTO t1 (rowid, content) VALUES(6, 'another world');
    INSERT INTO t1 (rowid, content) VALUES(7, 'another test');
    SELECT rowid FROM t1 WHERE t1 MATCH 'world';
    COMMIT TRANSACTION;
  


    BEGIN TRANSACTION;
    INSERT INTO t1 (rowid, content) VALUES(8, 'second world');
    INSERT INTO t1 (rowid, content) VALUES(9, 'second sight');
    SELECT rowid FROM t1 WHERE t1 MATCH 'world';
    ROLLBACK TRANSACTION;
  


    SELECT rowid FROM t1 WHERE t1 MATCH 'world';
  


    BEGIN TRANSACTION;
    INSERT INTO t1 (rowid, content) VALUES(10, 'second world');
    INSERT INTO t1 (rowid, content) VALUES(11, 'second sight');
    ROLLBACK TRANSACTION;
    SELECT rowid FROM t1 WHERE t1 MATCH 'world';
  


    BEGIN;
    INSERT INTO t1 (rowid, content) VALUES(12, 'third world');
    COMMIT;
    SELECT rowid FROM t1 WHERE t1 MATCH 'third';
  


    BEGIN;
    INSERT INTO t1 (rowid, content) VALUES(13, 'third dimension');
    CREATE TABLE x (c);
    COMMIT;
    SELECT rowid FROM t1 WHERE t1 MATCH 'dimension';
  
