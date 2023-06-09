
SELECT f1 FROM test1 WHERE 4.3+2.4 OR 1 ORDER BY f1


    SELECT f1 FROM test1 WHERE ('x' || f1) BETWEEN 'x10' AND 'x20'
    ORDER BY f1
  


    SELECT f1 FROM test1 WHERE 5-3==2
    ORDER BY f1
  


    SELECT coalesce(f1/(f1-11),'x'),
           coalesce(min(f1/(f1-11),5),'y'),
           coalesce(max(f1/(f1-33),6),'z')
    FROM test1 ORDER BY f1
  


    SELECT min(1,2,3), -max(1,2,3)
    FROM test1 ORDER BY f1
  
