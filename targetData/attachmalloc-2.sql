

    CREATE TABLE t1(a, b, c);
    CREATE INDEX i1 ON t1(a, b);
  

  CREATE TABLE t1(d, e, f);
  ATTACH 'test2.db' AS db1;

SELECT * FROM sqlite_master
