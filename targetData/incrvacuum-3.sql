

    pragma auto_vacuum;
  


    PRAGMA auto_vacuum = 2;
    BEGIN;
    CREATE TABLE tbl2(str);
    INSERT INTO tbl2 VALUES($::str);
    COMMIT;
  


    DROP TABLE abc;
    DELETE FROM tbl2;
  


    PRAGMA auto_vacuum = 1;
    INSERT INTO tbl2 VALUES('hello world');
  
