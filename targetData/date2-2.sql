

  CREATE TABLE t2(x,y);
  INSERT INTO t2(x,y) VALUES(1, '2017-07-20'), (2, 'xyzzy');
  CREATE INDEX t2y ON t2(date(y));



  INSERT INTO t2(x,y) VALUES(3, 'now');



  SELECT x, y FROM t2 ORDER BY x;

