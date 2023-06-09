

    CREATE TABLE t1(a);
    INSERT INTO t1 VALUES('hi');
    PRAGMA full_column_names=on;
    SELECT rowid, * FROM t1;
  
