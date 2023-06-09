

  CREATE TABLE x1(a, b);
  INSERT INTO x1(a) VALUES(1), (2), (3), (4), (5), (6);
  CREATE INDEX x1i ON x1(a, b);



  SELECT * FROM x1 
  WHERE a IN (SELECT a FROM x1 WHERE (a%2)==0) 
  ORDER BY a DESC, b;



  SELECT * FROM x1 
  WHERE a IN (SELECT a FROM x1 WHERE (a%7)==0) 
  ORDER BY a DESC, b;

