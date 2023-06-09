

  CREATE TABLE t1(a, __hidden__b, c UNIQUE);
  INSERT INTO t1(a, __hidden__b, c) VALUES(1, 2, 3);
  INSERT INTO t1(a, __hidden__b, c) VALUES(4, 5, 6);
  INSERT INTO t1(a, __hidden__b, c) VALUES(7, 8, 9);
  DELETE FROM t1 WHERE __hidden__b = 5;
  SELECT rowid, a, __hidden__b, c FROM t1;



  VACUUM;
  SELECT rowid, a, __hidden__b, c FROM t1;

