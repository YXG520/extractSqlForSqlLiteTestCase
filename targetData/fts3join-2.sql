

  CREATE VIRTUAL TABLE ft2 USING fts4(x);
  CREATE VIRTUAL TABLE ft3 USING fts4(y);

  INSERT INTO ft2 VALUES('abc');
  INSERT INTO ft2 VALUES('def');
  INSERT INTO ft3 VALUES('ghi');
  INSERT INTO ft3 VALUES('abc');


 SELECT * FROM ft2, ft3 WHERE x MATCH y; 
abc abc

 SELECT * FROM ft2, ft3 WHERE y MATCH x; 
abc abc

 SELECT * FROM ft3, ft2 WHERE x MATCH y; 
abc abc

 SELECT * FROM ft3, ft2 WHERE y MATCH x; 
abc abc

 
  SELECT * FROM ft3, ft2 WHERE y MATCH x AND x MATCH y; 

