
PRAGMA page_size=$PGSZ;
PRAGMA page_size

CREATE TABLE t1(x UNIQUE, y UNIQUE, z UNIQUE)
PRAGMA page_size


        INSERT INTO t1 VALUES(1,2,3);
        INSERT INTO t1 VALUES(2,3,4);
        SELECT * FROM t1;
      

PRAGMA page_size=$PGSZ

      CREATE TABLE t1(x);
      PRAGMA page_size;
    


      PRAGMA page_size
    


VACUUM

PRAGMA page_size


      INSERT INTO t1 VALUES(randstr(10,9000));
      INSERT INTO t1 VALUES(randstr(10,9000));
      INSERT INTO t1 VALUES(randstr(10,9000));
      BEGIN;
      INSERT INTO t1 SELECT x||x FROM t1;
      INSERT INTO t1 SELECT x||x FROM t1;
      INSERT INTO t1 SELECT x||x FROM t1;
      INSERT INTO t1 SELECT x||x FROM t1;
      SELECT count(*) FROM t1;
    


      ROLLBACK;
      SELECT count(*) FROM t1;
    

PRAGMA page_size


      INSERT INTO t1 SELECT x||x FROM t1;
      INSERT INTO t1 SELECT x||x FROM t1;
      INSERT INTO t1 SELECT x||x FROM t1;
      INSERT INTO t1 SELECT x||x FROM t1;
      INSERT INTO t1 SELECT x||x FROM t1;
      INSERT INTO t1 SELECT x||x FROM t1;
      SELECT count(*) FROM t1;
    


      BEGIN;
      DELETE FROM t1 WHERE rowid%5!=0;
      SELECT count(*) FROM t1;
    


      ROLLBACK;
      SELECT count(*) FROM t1;
    

DELETE FROM t1 WHERE rowid%5!=0
SELECT count(*) FROM t1

DROP TABLE t1


      CREATE TABLE t1(x);
      PRAGMA temp.page_size=$PGSZ;
      CREATE TEMP TABLE t2(y);
      PRAGMA main.page_size;
      PRAGMA temp.page_size;
    


      PRAGMA page_size=$PGSZ;
      CREATE TABLE t1(x);
      CREATE TEMP TABLE t2(y);
      PRAGMA main.page_size;
      PRAGMA temp.page_size;
    
