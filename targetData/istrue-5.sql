

  CREATE TABLE t2(
     a INTEGER PRIMARY KEY,
     b BOOLEAN DEFAULT true,
     c BOOLEAN DEFAULT(true),
     d BOOLEAN DEFAULT false,
     e BOOLEAN DEFAULT(false)
  );
  INSERT INTO t2 DEFAULT VALUES;
  SELECT * FROM t2;



  DROP TABLE t2;
  CREATE TABLE t2(
     a INTEGER PRIMARY KEY,
     b BOOLEAN DEFAULT(not true),
     c BOOLEAN DEFAULT(not false)
  );
  INSERT INTO t2(a) VALUES(99);
  SELECT * FROM t2;



  DROP TABLE t2;
  CREATE TABLE t2(
     a INTEGER PRIMARY KEY,
     b BOOLEAN CHECK(b IS TRUE),
     c BOOLEAN CHECK(c IS FALSE),
     d BOOLEAN CHECK(d IS NOT TRUE),
     e BOOLEAN CHECK(e IS NOT FALSE)
  );
  INSERT INTO t2 VALUES(1,true,false,null,null);
  SELECT * FROM t2;



  INSERT INTO t2 VALUES(2,false,false,null,null);



  INSERT INTO t2 VALUES(2,true,true,null,null);



  INSERT INTO t2 VALUES(2,true,false,true,null);



  INSERT INTO t2 VALUES(2,true,false,null,false);

