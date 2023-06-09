
 
    CREATE TABLE mytext2(name COLLATE reverse);
    INSERT INTO mytext2 SELECT name FROM mytext;
  

 
    SELECT name 
    FROM (SELECT name FROM mytext2)  
    ORDER BY name
  

 
    SELECT name 
    FROM (SELECT name FROM mytext2)
    ORDER BY name COLLATE usual
  
