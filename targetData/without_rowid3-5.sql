

      CREATE TABLE t1(a PRIMARY KEY, b) WITHOUT rowid;
      CREATE TABLE t2(a PRIMARY KEY, b REFERENCES t1(a)) WITHOUT rowid;
      INSERT INTO t1 VALUES('hello', 'world');
      INSERT INTO t2 VALUES('key', 'hello');
    


 PRAGMA foreign_keys = on 
