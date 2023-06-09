

  CREATE TABLE t1(x PRIMARY KEY, y);
  INSERT INTO t1 VALUES('AAA', 'BBB');

  CREATE TABLE t2(z);
  INSERT INTO t2 VALUES('t2');

  CREATE TABLE t3(x PRIMARY KEY, y);
  INSERT INTO t3 VALUES('AAA', 'AAA');



  SELECT * FROM t1 JOIN t2 ON unlikely(x=y) AND y='AAA'



  SELECT * FROM t1 JOIN t2 ON likely(x=y) AND y='AAA'



  SELECT * FROM t1 JOIN t2 ON x=y AND y='AAA'



  SELECT * FROM t3 JOIN t2 ON unlikely(x=y) AND y='AAA'



  SELECT * FROM t3 JOIN t2 ON likely(x=y) AND y='AAA'



  SELECT * FROM t3 JOIN t2 ON x=y AND y='AAA'

