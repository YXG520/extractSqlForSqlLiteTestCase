

    ROLLBACK;
    PRAGMA empty_result_callbacks = ON;
    SELECT * FROM xyz WHERE b='%q'
  


    SELECT * FROM xyz
  


    SELECT * FROM xyz ORDER BY a
  


    SELECT * FROM xyz  WHERE a>49 ORDER BY a
  


    SELECT * FROM xyz WHERE a>47 ORDER BY a
  


    INSERT INTO xyz VALUES(51,'%q')
  


    SELECT * FROM xyz WHERE a>49 ORDER BY a;
  


    INSERT INTO xyz VALUES(52,NULL)
  

      SELECT * FROM xyz WHERE a IN (42,50,52) ORDER BY a DESC
    

      SELECT * FROM xyz WHERE a=42 OR a=50 OR a=52 ORDER BY a DESC
    


    SELECT * FROM xyz WHERE a>1000
  
