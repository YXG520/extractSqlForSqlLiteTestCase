

  CREATE TABLE t1(x UNIQUE);
  INSERT INTO t1 VALUES ('hello');
  INSERT INTO t1 VALUES ('out there');


  SELECT * FROM t1
   WHERE x BETWEEN 'a' AND 'z'
     AND x BETWEEN 'c' AND 'w'
     AND x BETWEEN 'e' AND 'u'
     AND x BETWEEN 'g' AND 'r'
     AND x BETWEEN 'i' AND 'q'
     AND x BETWEEN 'i' AND 'm'

