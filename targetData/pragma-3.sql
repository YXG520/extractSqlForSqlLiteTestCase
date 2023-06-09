

    PRAGMA auto_vacuum=OFF;
    BEGIN;
    CREATE TABLE t2(a,b,c);
    CREATE INDEX i2 ON t2(a);
    INSERT INTO t2 VALUES(11,2,3);
    INSERT INTO t2 VALUES(22,3,4);
    COMMIT;
    SELECT rowid, * from t2;
  

SELECT rootpage FROM sqlite_master WHERE name='i2'
PRAGMA page_size
PRAGMA integrity_check

PRAGMA integrity_check=1


        ATTACH DATABASE 'test.db' AS t2;
        PRAGMA integrity_check
      


        PRAGMA integrity_check=4
      


      PRAGMA integrity_check=xyz
    


      PRAGMA integrity_check=t2
    


      PRAGMA integrity_check=sqlite_schema
    


        PRAGMA integrity_check=0
      

DETACH t2
REINDEX t2
PRAGMA integrity_check

PRAGMA quick_check

PRAGMA QUICK_CHECK


        ATTACH 'testerr.db' AS t2;
        PRAGMA integrity_check
      


      PRAGMA t2.integrity_check=t2;
    


      PRAGMA t2.integrity_check=sqlite_schema;
    


        PRAGMA integrity_check=1
      


        PRAGMA integrity_check=5
      


        PRAGMA integrity_check=4
      


        PRAGMA integrity_check=3
      


        PRAGMA integrity_check(2)
      


        ATTACH 'testerr.db' AS t3;
        PRAGMA integrity_check
      


        PRAGMA integrity_check(10)
      


        PRAGMA integrity_check=8
      


        PRAGMA integrity_check=4
      

PRAGMA integrity_check


      CREATE TABLE t1(a,b);
      CREATE INDEX t1a ON t1(a);
      INSERT INTO t1 VALUES(1,1),(2,2),(3,3),(2,4),(NULL,5),(NULL,6);
      PRAGMA writable_schema=ON;
      UPDATE sqlite_master SET sql='CREATE UNIQUE INDEX t1a ON t1(a)'
        WHERE name='t1a';
      UPDATE sqlite_master SET sql='CREATE TABLE t1(a NOT NULL,b)'
        WHERE name='t1';
      PRAGMA writable_schema=OFF;
      ALTER TABLE t1 RENAME TO t1x;
      PRAGMA integrity_check;
    


    PRAGMA integrity_check(3);
  


    PRAGMA integrity_check(2);
  


    PRAGMA integrity_check(1);
  


    CREATE TABLE t1(a,b,c);
    WITH RECURSIVE
      c(i) AS (VALUES(1) UNION ALL SELECT i+1 FROM c WHERE i<100)
    INSERT INTO t1(a,b,c) SELECT i, printf('xyz%08x',i), 2000-i FROM c;
    CREATE INDEX t1a ON t1(a);
    CREATE INDEX t1bc ON t1(b,c);
  
PRAGMA integrity_check

     db eval {DELETE FROM t1


  CREATE TABLE t1(
    a INTEGER PRIMARY KEY,
    b TEXT COLLATE nocase,
    c INT COLLATE nocase,
    d TEXT
  );
  INSERT INTO t1(a,b,c,d) VALUES
    (1, 'one','one','one'),
    (2, 'two','two','two'),
    (3, 'three','three','three'),
    (4, 'four','four','four'),
    (5, 'five','five','five');
  CREATE INDEX t1bcd ON t1(b,c,d);
  CREATE TABLE t2(
    a INTEGER PRIMARY KEY,
    b TEXT COLLATE nocase,
    c INT COLLATE nocase,
    d TEXT
  );
  INSERT INTO t2(a,b,c,d) VALUES
    (1, 'one','one','one'),
    (2, 'two','two','TWO'),
    (3, 'three','THREE','three'),
    (4, 'FOUR','four','four'),
    (5, 'FIVE','FIVE','five');
  CREATE INDEX t2bcd ON t2(b,c,d);
  CREATE TEMP TABLE saved_schema AS SELECT name, rootpage FROM sqlite_schema;
  PRAGMA writable_schema=ON;
  UPDATE sqlite_schema
     SET rootpage=(SELECT rootpage FROM saved_schema WHERE name='t2bcd')
   WHERE name='t1bcd';
  UPDATE sqlite_schema
     SET rootpage=(SELECT rootpage FROM saved_schema WHERE name='t1bcd')
   WHERE name='t2bcd';
  PRAGMA Writable_schema=RESET;



    SELECT integrity_check AS x FROM pragma_integrity_check ORDER BY 1;
  
DROP TABLE t2
