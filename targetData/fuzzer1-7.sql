

  CREATE TABLE [x2 "rules] (a, b, c, d);
  INSERT INTO [x2 "rules] VALUES(0, 'a', 'b', 5);


  1 { CREATE VIRTUAL TABLE x2 USING fuzzer( [x2 "rules] ) 

 DROP TABLE IF EXISTS x2 

 
    SELECT word FROM x2 WHERE word MATCH 'aaa' 
  
