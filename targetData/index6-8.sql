

  CREATE TABLE t8a(a,b);
  CREATE TABLE t8b(x,y);
  CREATE INDEX i8c ON t8b(y) WHERE x = 'value';

  INSERT INTO t8a VALUES(1, 'one');
  INSERT INTO t8a VALUES(2, 'two');
  INSERT INTO t8a VALUES(3, 'three');

  INSERT INTO t8b VALUES('value', 1);
  INSERT INTO t8b VALUES('dummy', 2);
  INSERT INTO t8b VALUES('value', 3);
  INSERT INTO t8b VALUES('dummy', 4);


S
Q


  SELECT * FROM t8a LEFT JOIN t8b ON (x = 'value' AND y = a)

