ATTACH $uri AS aux 
ATTACH $uri AS aux 
INSERT INTO t1 VALUES(1, 2) 
SELECT * FROM t1 
ATTACH 'file:test.db2?vfs=tvfs2' AS aux;
      PRAGMA main.journal_mode = PERSIST;
      PRAGMA aux.journal_mode = PERSIST;
      CREATE TABLE t1(a, b);
      CREATE TABLE aux.t2(a, b);
      PRAGMA main.journal_mode = WAL;
      PRAGMA aux.journal_mode = WAL;
      INSERT INTO t1 VALUES('x', 'y');
      INSERT INTO t2 VALUES('x', 'y');
    
CREATE TABLE t1(a, b);
    INSERT INTO t1 VALUES(1, 2);
    ATTACH 'test.db2' AS aux;
    CREATE TABLE aux.t2(a, b);
    INSERT INTO t1 VALUES('a', 'b');
  
ATTACH 'file:test.db2?mode=rw' AS aux 
INSERT INTO t2 VALUES('c', 'd') 

INSERT INTO t1 VALUES(3, 4) 

