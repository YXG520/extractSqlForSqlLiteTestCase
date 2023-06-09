

    CREATE TABLE tbl1(a, b, c);
    INSERT INTO tbl1 VALUES('x', 'y', 'z');
  


    ALTER TABLE tbl1 RENAME TO tbl2;
    SELECT * FROM tbl2;
  


  SELECT name FROM sqlite_master
   WHERE type='table' AND name NOT GLOB 'sqlite*'

DROP TABLE \
