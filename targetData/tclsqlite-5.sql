
CREATE TABLE t3(a,b,c)

      INSERT INTO t3 VALUES($::x(1),$::x(2),$::x(3));
      SELECT * FROM t3
    


      SELECT typeof(a), typeof(b), typeof(c) FROM t3
    


      UPDATE t3 SET a=$::x;
    

      SELECT a FROM t3
    


      SELECT typeof(a), typeof(b), typeof(c) FROM t3
    
