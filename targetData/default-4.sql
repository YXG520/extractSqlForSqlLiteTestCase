

  CREATE TABLE t1(a TEXT, b TEXT DEFAULT(99));
  PRAGMA writable_schema=ON;
  UPDATE sqlite_master SET sql='CREATE TABLE t1(a TEXT, b TEXT DEFAULT(:xyz))';



  INSERT INTO t1(a) VALUES('xyzzy');
  SELECT a, quote(b) FROM t1;



  CREATE TABLE t2(a TEXT, b TEXT DEFAULT(:xyz));



  CREATE TABLE t2(a TEXT, b TEXT DEFAULT(abs(:xyz)));



  CREATE TABLE t2(a TEXT, b TEXT DEFAULT(98+coalesce(5,:xyz)));

