CREATE TABLE t1(a,b);
    INSERT INTO t1 VALUES(1,2);
    INSERT INTO t1 VALUES(3,4);
    CREATE INDEX i1 ON t1(a);
    REINDEX;
  
REINDEX t1;
  
REINDEX i1;
  
REINDEX main.t1;
  
REINDEX main.i1;
  
REINDEX bogus
  
CREATE TABLE t2(
      a TEXT PRIMARY KEY COLLATE c1,
      b TEXT UNIQUE COLLATE c2,
      c TEXT COLLATE nocase,
      d TEST COLLATE binary
    );
    INSERT INTO t2 VALUES('abc','abc','abc','abc');
    INSERT INTO t2 VALUES('ABCD','ABCD','ABCD','ABCD');
    INSERT INTO t2 VALUES('bcd','bcd','bcd','bcd');
    INSERT INTO t2 VALUES('BCDE','BCDE','BCDE','BCDE');
    SELECT a FROM t2 ORDER BY a;
  
SELECT b FROM t2 ORDER BY b;
  
SELECT c FROM t2 ORDER BY c;
  
SELECT d FROM t2 ORDER BY d;
  
SELECT a FROM t2 ORDER BY a;
  
PRAGMA integrity_check
REINDEX c2;
    SELECT a FROM t2 ORDER BY a;
  
REINDEX t1;
    SELECT a FROM t2 ORDER BY a;
  
REINDEX c1;
    SELECT a FROM t2 ORDER BY a;
  
REINDEX c1;
  
REINDEX c1;
  
REINDEX;
  
CREATE TABLE t0 (
        c0 INTEGER PRIMARY KEY DESC, 
        c1 UNIQUE DEFAULT NULL
      ) %without_rowid% ;
      INSERT INTO t0(c0) VALUES (1), (2), (3), (4), (5);
      SELECT c0 FROM t0 WHERE c1 IS NULL ORDER BY 1;
    
REINDEX;
    
SELECT c0 FROM t0 WHERE c1 IS NULL ORDER BY 1;
    
SELECT c0 FROM t0 WHERE c1 IS NULL AND c0 IN (1,2,3,4,5);
    
PRAGMA integrity_check;
    
