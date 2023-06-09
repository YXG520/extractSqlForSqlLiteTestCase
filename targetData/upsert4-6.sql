

    INSERT INTO t1 VALUES(1, 1, 'one');
    INSERT INTO t1 VALUES(2, 2, 'two');
    INSERT OR REPLACE INTO t1 VALUES(1, 2, 'two') ON CONFLICT(b) DO NOTHING;
    PRAGMA integrity_check;
  

  1 {
    CREATE TABLE t1(a INTEGER PRIMARY KEY, b UNIQUE, c UNIQUE);
  


    INSERT INTO t1 VALUES(1, 1, 1);
    INSERT INTO t1 VALUES(2, 2, 2);
  


    INSERT OR REPLACE INTO t1 VALUES(3, 1, 1) ON CONFLICT(b) DO NOTHING;
    SELECT * FROM t1;
    PRAGMA integrity_check;
  


    INSERT OR REPLACE INTO t1 VALUES(3, 2, 2) ON CONFLICT(c) DO NOTHING;
    SELECT * FROM t1;
    PRAGMA integrity_check;
  


    INSERT OR REPLACE INTO t1 VALUES(3, 1, 1) ON CONFLICT(b) 
      DO UPDATE SET b=b||'x';
    SELECT * FROM t1;
    PRAGMA integrity_check;
  


    INSERT OR REPLACE INTO t1 VALUES(3, 2, 2) ON CONFLICT(c) 
      DO UPDATE SET c=c||'x';
    SELECT * FROM t1;
    PRAGMA integrity_check;
  

  1 {
    CREATE TABLE t1(w, x, y, z, PRIMARY KEY(x, y));
    CREATE UNIQUE INDEX zz ON t1(z);
  
