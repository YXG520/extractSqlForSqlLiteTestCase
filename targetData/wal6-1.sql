
PRAGMA journal_mode = $jmode;


      CREATE TABLE t1(a INTEGER PRIMARY KEY, b);
      INSERT INTO t1 VALUES(1,2);
      SELECT * FROM t1;
    


    PRAGMA journal_mode=WAL;
    INSERT INTO t1 VALUES(3,4);
    SELECT * FROM t1 ORDER BY a;
    


      SELECT * FROM t1 ORDER BY a;
    
