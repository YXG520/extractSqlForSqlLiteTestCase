

  CREATE TABLE a1(c, b INTEGER, a TEXT, PRIMARY KEY(a, b));
 
  INSERT INTO a1 (rowid, c, b, a) VALUES(3,  '0x03', 1, 1);
  INSERT INTO a1 (rowid, c, b, a) VALUES(14, '0x0E', 2, 2);
  INSERT INTO a1 (rowid, c, b, a) VALUES(15, '0x0F', 3, 3);
  INSERT INTO a1 (rowid, c, b, a) VALUES(92, '0x5C', 4, 4);

  CREATE TABLE a2(x BLOB, y BLOB);
  INSERT INTO a2(x, y) VALUES(1, 1);
  INSERT INTO a2(x, y) VALUES(2, '2');
  INSERT INTO a2(x, y) VALUES('3', 3);
  INSERT INTO a2(x, y) VALUES('4', '4');


 
  SELECT x, typeof(x), y, typeof(y) FROM a2 ORDER BY rowid



  SELECT (SELECT rowid FROM a1 WHERE a=x AND b=y) FROM a2



  SELECT (SELECT rowid FROM a1 WHERE (a, b) = (x, y)) FROM a2



  SELECT a1.rowid FROM a1, a2 WHERE a=x AND b=y;



  SELECT a1.rowid FROM a1, a2 WHERE (a, b) = (x, y)



  SELECT a1.rowid FROM a1, a2 WHERE coalesce(NULL,x)=a AND coalesce(NULL,y)=b



  SELECT a1.rowid FROM a1, a2 
  WHERE (coalesce(NULL,x), coalesce(NULL,y)) = (a, b)



  SELECT a1.rowid FROM a1, a2 WHERE +x=a AND +y=b



  SELECT a1.rowid FROM a1, a2 WHERE (+x, +y) = (a, b)



  SELECT (SELECT rowid FROM a1 WHERE a=+x AND b=+y) FROM a2



  SELECT (SELECT rowid FROM a1 WHERE (a, b) = (+x, +y)) FROM a2



  SELECT (SELECT rowid FROM a1 WHERE (+x, +y) = (a, b)) FROM a2



  SELECT a1.rowid FROM a1 WHERE (a, b) IN (SELECT x, y FROM a2)



  SELECT a1.rowid FROM a1, a2 WHERE EXISTS (
    SELECT 1 FROM a1 WHERE a=x AND b=y
  )

