

  CREATE TABLE t1(x, y, CHECK( date(x) BETWEEN '2017-07-01' AND '2017-07-31' ));
  INSERT INTO t1(x,y) VALUES('2017-07-20','one');



  INSERT INTO t1(x,y) VALUES('now','two');



  SELECT * FROM t1;



  INSERT INTO t1(x,y) VALUES('2017-08-01','two');



  DROP TABLE t1;
  CREATE TABLE t1(x, y, z AS (date()));
  INSERT INTO t1(x,y) VALUES(1,2);

