

      CREATE VIRTUAL TABLE ft USING fts3;
      INSERT INTO ft VALUES('rules to open a column to which');
    

 CREATE VIEW v1 AS SELECT * FROM blobs 


 
    CREATE TABLE t1(a, b);
    CREATE INDEX i1 ON t1(b);
    INSERT INTO t1 VALUES(zeroblob(100), zeroblob(100));
  



 
    CREATE TABLE p1(a PRIMARY KEY);
    CREATE TABLE c1(a, b REFERENCES p1);
    PRAGMA foreign_keys = 1;
    INSERT INTO p1 VALUES(zeroblob(100));
    INSERT INTO c1 VALUES(zeroblob(100), zeroblob(100));
  



 PRAGMA foreign_keys = 0 
