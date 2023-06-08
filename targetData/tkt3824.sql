set result [uplevel $db eval [list $sql]]
  if {[db status sort]
SELECT a FROM t1 WHERE b IS NULL ORDER BY a;
  
SELECT a FROM t1 WHERE b IS NULL ORDER BY b, a;
  
SELECT a FROM t2 WHERE b=2 AND c IS NULL ORDER BY a;
  
SELECT a FROM t2 WHERE b=2 AND c IS NULL ORDER BY b, a;
  
SELECT a FROM t2 WHERE b=2 AND c IS NULL ORDER BY b;
  
