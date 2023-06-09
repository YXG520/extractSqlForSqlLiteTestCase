

    SELECT * FROM t1
  


    INSERT INTO t1(a,b) SELECT 3, tx_exec('SELECT y FROM t2 LIMIT 1');
  


      CREATE TEMP TABLE t3(x);
      SELECT * FROM t3;
    


      INSERT INTO t3 SELECT tx_exec('SELECT y FROM t2 LIMIT 1');
    


      SELECT * FROM t3;
    


      UPDATE t1 SET a=tx_exec('SELECT x FROM t2');
    


      SELECT * FROM t1;
    


      UPDATE t3 SET x=tx_exec('SELECT x FROM t2');
    


      SELECT * FROM t3;
    
