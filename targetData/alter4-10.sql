

    CREATE TABLE t1(a,b,c);
    CREATE INDEX t1a ON t1(a DESC);
    INSERT INTO t1 VALUES(1,2,3);
    INSERT INTO t1 VALUES(2,3,4);
    ALTER TABLE t1 ADD COLUMN d;
    PRAGMA integrity_check;
  
