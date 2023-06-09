

      SELECT count(CASE WHEN b IN ('abc','xyz') THEN 'x' END) FROM t3
    


      SELECT count(*) FROM t3 WHERE 1+(b IN ('abc','xyz'))==2
    
