

    CREATE TABLE t2(a);
    INSERT INTO t2 VALUES($v);
  
SELECT rootpage FROM sqlite_master WHERE name = 't2'

 SELECT * FROM t2 
