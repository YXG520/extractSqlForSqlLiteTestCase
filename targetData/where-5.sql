
S

S

S

S

S

S

S

S

S

S

S

S

S

S

S

S

S

S


      SELECT w, x, y FROM t1 WHERE x IN (1,5) AND y IN (9,8,3025,1000,3969)
       ORDER BY x, y
    


      SELECT w, x, y FROM t1 WHERE x IN (1,5) AND y IN (9,8,3025,1000,3969)
       ORDER BY x DESC, y DESC
    


      SELECT w, x, y FROM t1 WHERE x IN (1,5) AND y IN (9,8,3025,1000,3969)
       ORDER BY x DESC, y
    


      SELECT w, x, y FROM t1 WHERE x IN (1,5) AND y IN (9,8,3025,1000,3969)
       ORDER BY x, y DESC
    

  set data [execsql $sql]
  if {[db status sort]
