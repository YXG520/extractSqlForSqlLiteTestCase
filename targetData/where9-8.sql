

    CREATE TABLE t81(a INTEGER PRIMARY KEY, b, c, d);
    CREATE TABLE t82(x INTEGER PRIMARY KEY, y);
    CREATE TABLE t83(p INTEGER PRIMARY KEY, q);
    
    INSERT INTO t81 VALUES(2,3,4,5);
    INSERT INTO t81 VALUES(3,4,5,6);
    INSERT INTO t82 VALUES(2,4);
    INSERT INTO t83 VALUES(5,55);
    
    SELECT *
      FROM t81 LEFT JOIN t82 ON y=b JOIN t83
     WHERE c==p OR d==p
     ORDER BY +a;
  


    SELECT *
      FROM t81 LEFT JOIN (t82) ON y=b JOIN t83
     WHERE c==p OR d==p
     ORDER BY +a;
  


    SELECT *
      FROM (t81) LEFT JOIN (main.t82) ON y=b JOIN t83
     WHERE c==p OR d==p
     ORDER BY +a;
  
