

  PRAGMA page_size = 512;
  CREATE TABLE t1(a, b, c);


 CREATE VIEW v$ii AS SELECT a, b, c FROM t1 


    PRAGMA writable_schema = 1;
    SELECT * FROM sqlite_schema;
  

INSERT INTO sqlite_master VALUES(1, 2, 3, 4, 5)
