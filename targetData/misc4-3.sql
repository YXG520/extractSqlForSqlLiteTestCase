
 
    CREATE TABLE Table1(ID integer primary key, Value TEXT);
    INSERT INTO Table1 VALUES(1, 'x');
    CREATE TABLE Table2(ID integer NOT NULL, Value TEXT);
    INSERT INTO Table2 VALUES(1, 'z');
    INSERT INTO Table2 VALUES (1, 'a');
  
 
    SELECT ID, max(Value) FROM Table2 GROUP BY 1, 2 ORDER BY 1, 2;
  


      SELECT ID, Value FROM Table1
         UNION SELECT ID, max(Value) FROM Table2 GROUP BY 1
      ORDER BY 1, 2;
    

 
      SELECT ID, Value FROM Table1
         UNION SELECT ID, max(Value) FROM Table2 GROUP BY 1, 2
      ORDER BY 1, 2;
    

 
      SELECT ID, max(Value) FROM Table2 GROUP BY 1, 2
         UNION SELECT ID, Value FROM Table1
      ORDER BY 1, 2;
    
