

    CREATE TABLE t1(a INTEGER PRIMARY KEY, b UNIQUE, c);
    INSERT INTO t1 VALUES(1,2,3);
    INSERT INTO t1 values(2,'hello','world');
    INSERT INTO t1 VALUES(3,4.53,NULL);
    SELECT * FROM t1
  


    PRAGMA reverse_unordered_selects=1;
    SELECT * FROM t1;
  


    PRAGMA reverse_unordered_selects=1;
    SELECT * FROM t1;
  


    PRAGMA reverse_unordered_selects=1;
    SELECT * FROM t1 ORDER BY rowid;
  


    VACUUM;
    SELECT * FROM t1 ORDER BY rowid;
  


    PRAGMA reverse_unordered_selects;
  


    PRAGMA reverse_unordered_selects=1;
    VACUUM;
    SELECT * FROM t1;
  


  SELECT * FROM t1 WHERE b=2 AND a IS NULL;



  SELECT * FROM t1 WHERE b=2 AND a IS NOT NULL;

