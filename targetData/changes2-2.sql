

  CREATE TABLE t1(a, b);
  CREATE TABLE log(t);


  INSERT INTO log VALUES(changes() || ' changes')



  INSERT INTO t1 VALUES (1, 'v1'), (2, 'v2');




  CREATE TABLE t3(x);



  INSERT INTO t1 VALUES (3, 'v1'), (4, 'v2');




  SELECT * FROM log;

