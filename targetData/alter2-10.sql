

      CREATE TABLE t2(a);
      INSERT INTO t2 VALUES('a');
      INSERT INTO t2 VALUES('b');
      INSERT INTO t2 VALUES('c');
      INSERT INTO t2 VALUES('d');
    

      SELECT * FROM sqlite_master;
    

      SELECT quote(a), quote(b), quote(c) FROM t2 LIMIT 1;
    


      CREATE INDEX i1 ON t2(b);
      SELECT a FROM t2 WHERE b = X'ABCD';
    


      DELETE FROM t2 WHERE a = 'c';
      SELECT a FROM t2 WHERE b = X'ABCD';
    


      SELECT count(b) FROM t2 WHERE b = X'ABCD';
    
