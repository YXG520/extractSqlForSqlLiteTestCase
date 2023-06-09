

  CREATE TABLE t1(a,b,c);
  INSERT INTO t1 VALUES(1,2,3);
  ATTACH 'test2.db' AS aux2;
  CREATE TABLE aux2.t2(c,d,e);
  INSERT INTO t2 VALUES(4,5,6);
  SELECT * FROM t1, t2;



  PRAGMA database_list;



  SELECT name FROM icecube.sqlite_master;


PRAGMA database_list
