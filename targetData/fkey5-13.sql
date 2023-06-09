

    SELECT *, 'x' FROM pragma_foreign_key_check('t1');
  


    SELECT *, 'x' FROM pragma_foreign_key_check('t1','main');
  


    SELECT *, 'x' FROM pragma_foreign_key_check('t1','aux');
  


      PRAGMA foreign_keys=OFF;
      CREATE TABLE t1(a INTEGER PRIMARY KEY, b TEXT REFERENCES t2);
      CREATE TABLE t2(x TEXT PRIMARY KEY, y INT);
      CREATE TABLE t3(w TEXT, z INT REFERENCES t1);
      INSERT INTO t2 VALUES('abc',11),('def',22),('xyz',99);
      INSERT INTO t1 VALUES(5,'abc'),(7,'xyz'),(9,'oops');
      INSERT INTO t3 VALUES(11,7),(22,19);
    


    SELECT x.*, '|'
      FROM sqlite_schema, pragma_foreign_key_check(name) AS x
      WHERE type='table'
      ORDER BY x."table";
  


    SELECT *, '|'
      FROM pragma_foreign_key_check AS x
      ORDER BY x."table";
  
