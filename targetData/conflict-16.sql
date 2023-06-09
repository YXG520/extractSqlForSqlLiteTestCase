

  -- ON CONFLICT clauses are not allowed on column CHECK constraints
  CREATE TABLE t1(a INT CHECK( a!=5 ) ON CONFLICT ignore);



  -- ON CONFLICT is allowed on table CHECK constraints
  CREATE TABLE t1(a INT, CHECK( a!=5 ) ON CONFLICT ignore);



  -- The ON CONFLICT clause is in-op
  INSERT INTO t1(a) VALUES(4),(5),(6);



  SELECT a FROM t1 ORDER BY a;



  INSERT OR IGNORE INTO t1(a) VALUES(4),(5),(6);
  SELECT a FROM t1 ORDER BY a;

