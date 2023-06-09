

      CREATE TEMP TABLE t4(x);
      INSERT INTO t4 VALUES(1);
      SELECT * FROM t4;
    


      INSERT INTO t4 SELECT x+1 FROM t4;
      SELECT * FROM t4;
    


        EXPLAIN INSERT INTO t4 SELECT x+2 FROM t4;
      


      SELECT rootpage FROM sqlite_master WHERE name='test1';
    


      SELECT rootpage FROM sqlite_temp_master WHERE name='t4';
    


      INSERT INTO t4 SELECT one FROM test1 WHERE three=7;
      SELECT * FROM t4
    


        EXPLAIN INSERT INTO t4 SELECT one FROM test1;
      
