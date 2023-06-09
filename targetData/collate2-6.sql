

  CREATE TABLE t1(x);
  INSERT INTO t1 VALUES('b');
  INSERT INTO t1 VALUES('B');



  SELECT * FROM t1 WHERE x COLLATE nocase BETWEEN 'a' AND 'c';



  SELECT * FROM t1 WHERE x BETWEEN 'a' COLLATE nocase AND 'c' COLLATE nocase;



  SELECT * FROM t1 
  WHERE x COLLATE nocase BETWEEN 'a' COLLATE nocase AND 'c' COLLATE nocase;



  SELECT * FROM t1 WHERE +x COLLATE nocase BETWEEN 'a' AND 'c';



  SELECT * FROM t1 WHERE +x BETWEEN 'a' COLLATE nocase AND 'c' COLLATE nocase;



  SELECT * FROM t1 
  WHERE +x COLLATE nocase BETWEEN 'a' COLLATE nocase AND 'c' COLLATE nocase;
