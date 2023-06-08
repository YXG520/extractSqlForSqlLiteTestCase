CREATE TABLE t1(x, y);
  INSERT INTO t1 VALUES(1, 2);
  ATTACH 'test.db2' AS aux;
  CREATE TABLE aux.t2(x, y);
  INSERT INTO t2 VALUES(3, 4);

ATTACH 'test.db2' AS aux 
BEGIN;
          INSERT INTO t1 VALUES(5, 6);
          INSERT INTO t2 VALUES(7, 8);
        COMMIT;
      
ATTACH 'test.db2' AS aux 
SELECT * FROM t1;
        SELECT * FROM t2;
      
CREATE TABLE t1(a, b);
      INSERT INTO t1 VALUES(1, 2);
      BEGIN;
        INSERT INTO t1 VALUES(3, 4);
    
1 2
INSERT INTO t1 VALUES(5, 6) 
INSERT INTO t1 VALUES(5, 6) 

INSERT INTO t1 VALUES(5, 6) 
PRAGMA temp_store = file;

    PRAGMA main.cache_size = 10;
    PRAGMA temp.cache_size = 10;
    CREATE TABLE temp.tt(a, b);
    INSERT INTO tt VALUES(randomblob(500), randomblob(600));
    INSERT INTO tt SELECT randomblob(500), randomblob(600) FROM tt;
    INSERT INTO tt SELECT randomblob(500), randomblob(600) FROM tt;
    INSERT INTO tt SELECT randomblob(500), randomblob(600) FROM tt;
    INSERT INTO tt SELECT randomblob(500), randomblob(600) FROM tt;
    INSERT INTO tt SELECT randomblob(500), randomblob(600) FROM tt;
    INSERT INTO tt SELECT randomblob(500), randomblob(600) FROM tt;
    INSERT INTO tt SELECT randomblob(500), randomblob(600) FROM tt;
    INSERT INTO tt SELECT randomblob(500), randomblob(600) FROM tt;
  
CREATE TABLE t1(a, b) 
