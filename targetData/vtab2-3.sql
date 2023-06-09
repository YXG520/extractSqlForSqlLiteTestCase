

    SELECT * FROM schema WHERE dflt_value IS NULL LIMIT 1
  


    SELECT *, b.rowid
      FROM schema a LEFT JOIN schema b ON a.dflt_value=b.dflt_value
     WHERE a.rowid=1
  


    SELECT *, b.rowid
      FROM schema a LEFT JOIN schema b ON a.dflt_value IS b.dflt_value
                                      AND a.dflt_value IS NOT NULL
     WHERE a.rowid=1
  
