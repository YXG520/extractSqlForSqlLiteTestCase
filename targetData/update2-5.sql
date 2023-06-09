

  CREATE TABLE x1(a INTEGER PRIMARY KEY, b, c);
  CREATE INDEX x1c ON x1(b, c);
  INSERT INTO x1 VALUES(1, 'a', 1);
  INSERT INTO x1 VALUES(2, 'a', 2);
  INSERT INTO x1 VALUES(3, 'a', 3);



  UPDATE x1 SET c=c+1 WHERE b='a';



  SELECT * FROM x1;


 EXPLAIN UPDATE x1 SET c=c+1 WHERE b='a' 
 incr A($opcode) 
