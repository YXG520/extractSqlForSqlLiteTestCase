

      CREATE TABLE t3(x BLOB);
    
INSERT INTO t3 VALUES(?)

      SELECT typeof(x), length(x), quote(x),
             length(cast(x AS BLOB)), quote(cast(x AS BLOB)) FROM t3
    


      SELECT quote(cast(x_coalesce(x) AS blob)) FROM t3
    
