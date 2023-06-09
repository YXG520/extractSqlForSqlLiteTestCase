

    create table mytext(name BLOB);
    INSERT INTO mytext VALUES('abc');
    INSERT INTO mytext VALUES('acd');
    INSERT INTO mytext VALUES('afe');
  

 
    SELECT name 
    FROM mytext 
    ORDER BY name COLLATE reverse 
  

 
    SELECT name 
    FROM (SELECT name FROM mytext)  
    ORDER BY name COLLATE reverse 
  
