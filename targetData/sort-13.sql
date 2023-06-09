

  CREATE TABLE t10(a, b);


 INSERT INTO t10 VALUES( $i/10, $i%10 ) 


  SELECT a, b FROM t10 ORDER BY a;

SELECT a, b FROM t10 ORDER BY a, b


  PRAGMA cache_size = 5;
  SELECT a, b FROM t10 ORDER BY a;

SELECT a, b FROM t10 ORDER BY a, b
PRAGMA temp_store = $tmpstore; PRAGMA threads = $nWorker
 PRAGMA cache_size = 20 
 PRAGMA cache_size = 5 
