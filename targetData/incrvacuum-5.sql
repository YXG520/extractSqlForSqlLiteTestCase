


    BEGIN;
    DROP TABLE tbl2;
    PRAGMA incremental_vacuum;
    COMMIT;
  


    BEGIN;
    CREATE TABLE tbl1(a);
    INSERT INTO tbl1 VALUES($::str);
    PRAGMA incremental_vacuum;                 -- this is a no-op.
    COMMIT;
  


    BEGIN;
    INSERT INTO tbl1 VALUES($::str);
    INSERT INTO tbl1 SELECT * FROM tbl1;
    DELETE FROM tbl1 WHERE oid%2;        -- Put 2 overflow pages on free-list.
    COMMIT;
  


    BEGIN;
    PRAGMA incremental_vacuum;           -- Vacuum up the two pages.
    CREATE TABLE tbl2(b);                -- Use one free page as a table root.
    INSERT INTO tbl2 VALUES('a nice string');
    COMMIT;
  


    SELECT * FROM tbl2;
  


    DROP TABLE tbl1;
    DROP TABLE tbl2;
    PRAGMA incremental_vacuum;
  

    SELECT tbl_name FROM sqlite_master WHERE type = 'table'
  
