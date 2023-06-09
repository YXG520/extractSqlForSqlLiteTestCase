

  SELECT 9 IN (false.false);



  CREATE TABLE t8(a INT, true INT, false INT, d INT);
  INSERT INTO t8(a,true,false,d) VALUES(5,6,7,8),(4,3,2,1),('a','b','c','d');
  SELECT * FROM t8 ORDER BY false;



  SELECT 9 IN (false.false) FROM t8;



  CREATE TABLE false(true INT, false INT, x INT CHECK (5 IN (false.false)));



  INSERT INTO False VALUES(4,5,6);



  INSERT INTO False VALUES(5,6,7);



  SELECT 9 IN (false.false) FROM false;



  SELECT 5 IN (false.false) FROM false;

