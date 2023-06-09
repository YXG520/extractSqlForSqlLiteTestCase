

    CREATE TABLE t1(a INTEGER PRIMARY KEY, b, rowid, _rowid_, oid);
    CREATE TABLE t2(c, d, FOREIGN KEY(c) REFERENCES t1(a) ON UPDATE CASCADE);

    INSERT INTO t1 VALUES(10, 100, 'abc', 'def', 'ghi');
    INSERT INTO t2 VALUES(10, 100);
    UPDATE t1 SET a = 15;
    SELECT * FROM t2;
  
