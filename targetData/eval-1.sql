

  execsql {
    CREATE TABLE t1(x INTEGER PRIMARY KEY); 
    INSERT INTO t1 VALUES(1);
    INSERT INTO t1 VALUES(2);
    INSERT INTO t1 SELECT x+2 FROM t1;
    INSERT INTO t1 SELECT x+4 FROM t1;
    INSERT INTO t1 SELECT x+8 FROM t1;
    INSERT INTO t1 SELECT x+16 FROM t1;
    INSERT INTO t1 SELECT x+32 FROM t1;
    INSERT INTO t1 SELECT x+64 FROM t1;
    INSERT INTO t1 SELECT x+128 FROM t1;
    INSERT INTO t1 SELECT x+256 FROM t1;
    SELECT count(*), max(x) FROM t1;
  


  execsql {
    SELECT x, test_eval('SELECT max(x) FROM t1 WHERE x<' || x) FROM t1 LIMIT 5
  
