

    DELETE FROM t1;
    INSERT INTO t1 VALUES(1,2);
  

    INSERT OR IGNORE INTO t1 VALUES(2,3);
  



    INSERT OR IGNORE INTO t1 VALUES(2,4);
  



    INSERT OR REPLACE INTO t1 VALUES(2,4);
  



    INSERT OR IGNORE INTO t1 SELECT * FROM t1;
  



    INSERT OR IGNORE INTO t1 SELECT a+2,b+2 FROM t1;
  



    INSERT OR IGNORE INTO t1 SELECT a+3,b+3 FROM t1;
  

