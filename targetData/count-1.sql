

      DROP TABLE IF EXISTS t1;
      CREATE TABLE t1(a, b);
    
 SELECT count(*) FROM t1 


      INSERT INTO t1 VALUES(1, 2);
      INSERT INTO t1 VALUES(3, 4);
      SELECT count(*) FROM t1;
    


      INSERT INTO t1 SELECT * FROM t1;          --   4
      INSERT INTO t1 SELECT * FROM t1;          --   8
      INSERT INTO t1 SELECT * FROM t1;          --  16
      INSERT INTO t1 SELECT * FROM t1;          --  32
      INSERT INTO t1 SELECT * FROM t1;          --  64
      INSERT INTO t1 SELECT * FROM t1;          -- 128
      INSERT INTO t1 SELECT * FROM t1;          -- 256
      SELECT count(*) FROM t1;
    


      INSERT INTO t1 SELECT * FROM t1;          --  512
      INSERT INTO t1 SELECT * FROM t1;          -- 1024
      INSERT INTO t1 SELECT * FROM t1;          -- 2048
      INSERT INTO t1 SELECT * FROM t1;          -- 4096
      SELECT count(*) FROM t1;
    


      BEGIN;
      INSERT INTO t1 SELECT * FROM t1;          --  8192
      INSERT INTO t1 SELECT * FROM t1;          -- 16384
      INSERT INTO t1 SELECT * FROM t1;          -- 32768
      INSERT INTO t1 SELECT * FROM t1;          -- 65536
      COMMIT;
      SELECT count(*) FROM t1;
    

  if {[lsearch [execsql "EXPLAIN $sql"] Count]>=0

    return 1;
  
