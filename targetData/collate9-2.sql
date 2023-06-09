
 
    SELECT x, x < 'seven' FROM xy ORDER BY x
  

 
    SELECT y, y < 'seven' FROM xy ORDER BY x
  

 
    SELECT y, y COLLATE "reverse sort" < 'seven' FROM xy ORDER BY x
  


    SELECT y FROM xy ORDER BY y
  


    SELECT y FROM xy ORDER BY y COLLATE "reverse sort"
  


    SELECT y COLLATE "reverse sort" AS aaa FROM xy ORDER BY aaa
  
