

      SELECT max(rowid) AS yy FROM t4 UNION SELECT max(rowid) FROM t5
    


      SELECT max(yy) FROM (
        SELECT max(rowid) AS yy FROM t4 UNION SELECT max(rowid) FROM t5
      )
    


      SELECT max(yy) FROM (
        SELECT max(rowid) AS yy FROM t4 EXCEPT SELECT max(rowid) FROM t5
      )
    
