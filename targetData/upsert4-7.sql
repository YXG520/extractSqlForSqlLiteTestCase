

    INSERT INTO t1 VALUES('a', 1, 1, 1);
    INSERT INTO t1 VALUES('b', 2, 2, 2);
  


    INSERT INTO t1 VALUES('c', 3, 3, 1) ON CONFLICT(z) 
      DO UPDATE SET w = excluded.w;
    SELECT * FROM t1;
  


    INSERT INTO t1 VALUES('c', 2, 2, 3) ON CONFLICT(y, x) 
      DO UPDATE SET w = w||w;
    SELECT * FROM t1;
  


    INSERT INTO t1 VALUES('c', 2, 2, 3) ON CONFLICT(y, x) 
      DO UPDATE SET w = w||t1.w;
    SELECT * FROM t1;
  


    INSERT INTO t1 AS tbl VALUES('c', 2, 2, 3) ON CONFLICT(y, x) 
      DO UPDATE SET w = w||tbl.w;
    SELECT * FROM t1;
  

  1 {
    CREATE TABLE excluded(w, x INTEGER, 'a b', z, PRIMARY KEY(x, 'a b'));
    CREATE UNIQUE INDEX zz ON excluded(z);
    CREATE INDEX zz2 ON excluded(z);
  
