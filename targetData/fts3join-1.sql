

  CREATE VIRTUAL TABLE ft1 USING fts4(x);
  INSERT INTO ft1 VALUES('aaa aaa');
  INSERT INTO ft1 VALUES('aaa bbb');
  INSERT INTO ft1 VALUES('bbb aaa');
  INSERT INTO ft1 VALUES('bbb bbb');

  CREATE TABLE t1(id, y);
  INSERT INTO t1 VALUES(1, 'aaa');
  INSERT INTO t1 VALUES(2, 'bbb');



