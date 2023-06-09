
CREATE TABLE t5(x BLOB)
INSERT INTO t5 VALUES($x)
SELECT typeof(x) FROM t5


      DELETE FROM t5;
      INSERT INTO t5 VALUES($x);
      SELECT typeof(x) FROM t5;
    


      DELETE FROM t5;
      INSERT INTO t5 VALUES(@x);
      SELECT typeof(x) FROM t5;
    


      DELETE FROM t5;
      INSERT INTO t5 VALUES(@y);
      SELECT hex(x), typeof(x) FROM t5
    
