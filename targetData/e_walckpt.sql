error "sqlite3_errcode mismatch! (1) $errcode!=[sqlite3_errcode $db]"
  
error "$rc - [sqlite3_errmsg $db]"
        
ATTACH 'test.db2' AS aux;
    ATTACH 'test.db3' AS aux2;
    ATTACH 'test.db4' AS aux3;
    CREATE TABLE t1(x);
    CREATE TABLE aux.t2(x);
    CREATE TABLE aux2.t3(x);
    CREATE TABLE aux3.t4(x);
    PRAGMA main.journal_mode = WAL;
    PRAGMA aux.journal_mode = WAL;
    PRAGMA aux2.journal_mode = WAL;
    /* Leave aux4 in rollback mode */
  
INSERT INTO t1 VALUES(1);
        INSERT INTO t2 VALUES(2);
        INSERT INTO t3 VALUES(3);
      
INSERT INTO t1 VALUES('xyz') 
CREATE TABLE t1(a, b);
      CREATE TABLE t2(a, b);
      PRAGMA journal_mode = wal;
      INSERT INTO t1 VALUES(1, 2);
      INSERT INTO t1 VALUES(3, 4);
      INSERT INTO t1 VALUES(5, 6);
    
BEGIN;
          SELECT * FROM t1 UNION ALL SELECT * FROM t2;
      
INSERT INTO t2 VALUES(7, 8);
        BEGIN;
          INSERT INTO t2 VALUES(9, 10);
          SELECT * FROM t1 UNION ALL SELECT * FROM t2;
      
SQLITE_BUSY
ATTACH 'test.db2' AS aux2;
    ATTACH 'test.db3' AS aux3;
    PRAGMA main.journal_mode = WAL;
    PRAGMA aux2.journal_mode = WAL;
    PRAGMA aux3.journal_mode = WAL;

    CREATE TABLE main.t1(x,y);
    CREATE TABLE aux2.t2(x,y);
    CREATE TABLE aux3.t3(x,y);

    INSERT INTO t1 VALUES('a', 'b');
    INSERT INTO t2 VALUES('a', 'b');
    INSERT INTO t3 VALUES('a', 'b');
  
PRAGMA auto_vacuum = 0; 
    PRAGMA journal_mode = WAL;
    CREATE TABLE t1(a, b);
    INSERT INTO t1 VALUES(1, 2);
  
