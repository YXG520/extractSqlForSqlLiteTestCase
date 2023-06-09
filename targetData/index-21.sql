

     CREATE INDEX temp.i21 ON t6(c);
  


     CREATE TEMP TABLE t6(x);
     INSERT INTO temp.t6 values(1),(5),(9);
     CREATE INDEX temp.i21 ON t6(x);
     SELECT x FROM t6 ORDER BY x DESC;
  
