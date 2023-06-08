CREATE TABLE t1 (
      a NOT NULL,
      b NOT NULL DEFAULT 5,
      c NOT NULL ON CONFLICT REPLACE DEFAULT 6,
      d NOT NULL ON CONFLICT IGNORE DEFAULT 7,
      e NOT NULL ON CONFLICT ABORT DEFAULT 8
    );
    SELECT * FROM t1;
  
DELETE FROM t1;
    INSERT INTO t1(a,b,c,d,e) VALUES(1,2,3,4,5);
    SELECT * FROM t1 order by a;
  
DELETE FROM t1;
    INSERT INTO t1(b,c,d,e) VALUES(2,3,4,5);
    SELECT * FROM t1 order by a;
  
DELETE FROM t1;
    INSERT OR IGNORE INTO t1(b,c,d,e) VALUES(2,3,4,5);
    SELECT * FROM t1 order by a;
  
DELETE FROM t1;
    INSERT OR REPLACE INTO t1(b,c,d,e) VALUES(2,3,4,5);
    SELECT * FROM t1 order by a;
  
DELETE FROM t1;
    INSERT OR ABORT INTO t1(b,c,d,e) VALUES(2,3,4,5);
    SELECT * FROM t1 order by a;
  
DELETE FROM t1;
    INSERT INTO t1(a,c,d,e) VALUES(1,3,4,5);
    SELECT * FROM t1 order by a;
  
DELETE FROM t1;
    INSERT OR IGNORE INTO t1(a,c,d,e) VALUES(1,3,4,5);
    SELECT * FROM t1 order by a;
  
DELETE FROM t1;
    INSERT OR REPLACE INTO t1(a,c,d,e) VALUES(1,3,4,5);
    SELECT * FROM t1 order by a;
  
DELETE FROM t1;
    INSERT OR ABORT INTO t1(a,c,d,e) VALUES(1,3,4,5);
    SELECT * FROM t1 order by a;
  
DELETE FROM t1;
    INSERT INTO t1(a,b,c,d,e) VALUES(1,null,3,4,5);
    SELECT * FROM t1 order by a;
  
DELETE FROM t1;
    INSERT OR IGNORE INTO t1(a,b,c,d,e) VALUES(1,null,3,4,5);
    SELECT * FROM t1 order by a;
  
DELETE FROM t1;
    INSERT OR REPLACE INTO t1(a,b,c,d,e) VALUES(1,null,3,4,5);
    SELECT * FROM t1 order by a;
  
DELETE FROM t1;
    INSERT INTO t1(a,b,c,d,e) VALUES(1,2,null,4,5);
    SELECT * FROM t1 order by a;
  
DELETE FROM t1;
    INSERT OR IGNORE INTO t1(a,b,c,d,e) VALUES(1,2,null,4,5);
    SELECT * FROM t1 order by a;
  
DELETE FROM t1;
    INSERT OR REPLACE INTO t1(a,b,c,d,e) VALUES(1,2,null,4,5);
    SELECT * FROM t1 order by a;
  
DELETE FROM t1;
    INSERT OR ABORT INTO t1(a,b,c,d,e) VALUES(1,2,null,4,5);
    SELECT * FROM t1 order by a;
  
DELETE FROM t1;
    INSERT OR ABORT INTO t1(a,b,c,d,e) VALUES(1,2,3,null,5);
    SELECT * FROM t1 order by a;
  
DELETE FROM t1;
    INSERT OR ABORT INTO t1(a,b,c,e) VALUES(1,2,3,5);
    SELECT * FROM t1 order by a;
  
DELETE FROM t1;
    INSERT INTO t1(a,b,c,d) VALUES(1,2,3,4);
    SELECT * FROM t1 order by a;
  
DELETE FROM t1;
    INSERT INTO t1(a,b,c,d,e) VALUES(1,2,3,4,null);
    SELECT * FROM t1 order by a;
  
DELETE FROM t1;
    INSERT OR REPLACE INTO t1(e,d,c,b,a) VALUES(1,2,3,null,5);
    SELECT * FROM t1 order by a;
  
DELETE FROM t1;
    INSERT INTO t1 VALUES(1,2,3,4,5);
    UPDATE t1 SET a=null;
    SELECT * FROM t1 ORDER BY a;
  
DELETE FROM t1;
    INSERT INTO t1 VALUES(1,2,3,4,5);
    UPDATE OR REPLACE t1 SET a=null;
    SELECT * FROM t1 ORDER BY a;
  
DELETE FROM t1;
    INSERT INTO t1 VALUES(1,2,3,4,5);
    UPDATE OR IGNORE t1 SET a=null;
    SELECT * FROM t1 ORDER BY a;
  
DELETE FROM t1;
    INSERT INTO t1 VALUES(1,2,3,4,5);
    UPDATE OR ABORT t1 SET a=null;
    SELECT * FROM t1 ORDER BY a;
  
DELETE FROM t1;
    INSERT INTO t1 VALUES(1,2,3,4,5);
    UPDATE t1 SET b=null;
    SELECT * FROM t1 ORDER BY a;
  
DELETE FROM t1;
    INSERT INTO t1 VALUES(1,2,3,4,5);
    UPDATE OR REPLACE t1 SET b=null, d=e, e=d;
    SELECT * FROM t1 ORDER BY a;
  
DELETE FROM t1;
    INSERT INTO t1 VALUES(1,2,3,4,5);
    UPDATE OR IGNORE t1 SET b=null, d=e, e=d;
    SELECT * FROM t1 ORDER BY a;
  
DELETE FROM t1;
    INSERT INTO t1 VALUES(1,2,3,4,5);
    UPDATE t1 SET c=null, d=e, e=d;
    SELECT * FROM t1 ORDER BY a;
  
DELETE FROM t1;
    INSERT INTO t1 VALUES(1,2,3,4,5);
    UPDATE t1 SET d=null, a=b, b=a;
    SELECT * FROM t1 ORDER BY a;
  
DELETE FROM t1;
    INSERT INTO t1 VALUES(1,2,3,4,5);
    UPDATE t1 SET e=null, a=b, b=a;
    SELECT * FROM t1 ORDER BY a;
  
CREATE INDEX t1a ON t1(a);
    CREATE INDEX t1b ON t1(b);
    CREATE INDEX t1c ON t1(c);
    CREATE INDEX t1d ON t1(d);
    CREATE INDEX t1e ON t1(e);
    CREATE INDEX t1abc ON t1(a,b,c);
  
DELETE FROM t1;
    INSERT INTO t1(a,b,c,d,e) VALUES(1,2,3,4,5);
    SELECT * FROM t1 order by a;
  
DELETE FROM t1;
    INSERT INTO t1(b,c,d,e) VALUES(2,3,4,5);
    SELECT * FROM t1 order by a;
  
DELETE FROM t1;
    INSERT OR IGNORE INTO t1(b,c,d,e) VALUES(2,3,4,5);
    SELECT * FROM t1 order by a;
  
DELETE FROM t1;
    INSERT OR REPLACE INTO t1(b,c,d,e) VALUES(2,3,4,5);
    SELECT * FROM t1 order by a;
  
DELETE FROM t1;
    INSERT OR ABORT INTO t1(b,c,d,e) VALUES(2,3,4,5);
    SELECT * FROM t1 order by a;
  
DELETE FROM t1;
    INSERT INTO t1(a,c,d,e) VALUES(1,3,4,5);
    SELECT * FROM t1 order by a;
  
DELETE FROM t1;
    INSERT OR IGNORE INTO t1(a,c,d,e) VALUES(1,3,4,5);
    SELECT * FROM t1 order by a;
  
DELETE FROM t1;
    INSERT OR REPLACE INTO t1(a,c,d,e) VALUES(1,3,4,5);
    SELECT * FROM t1 order by a;
  
DELETE FROM t1;
    INSERT OR ABORT INTO t1(a,c,d,e) VALUES(1,3,4,5);
    SELECT * FROM t1 order by a;
  
DELETE FROM t1;
    INSERT INTO t1(a,b,c,d,e) VALUES(1,null,3,4,5);
    SELECT * FROM t1 order by a;
  
DELETE FROM t1;
    INSERT OR IGNORE INTO t1(a,b,c,d,e) VALUES(1,null,3,4,5);
    SELECT * FROM t1 order by a;
  
DELETE FROM t1;
    INSERT OR REPLACE INTO t1(a,b,c,d,e) VALUES(1,null,3,4,5);
    SELECT * FROM t1 order by a;
  
DELETE FROM t1;
    INSERT INTO t1(a,b,c,d,e) VALUES(1,2,null,4,5);
    SELECT * FROM t1 order by a;
  
DELETE FROM t1;
    INSERT OR IGNORE INTO t1(a,b,c,d,e) VALUES(1,2,null,4,5);
    SELECT * FROM t1 order by a;
  
DELETE FROM t1;
    INSERT OR REPLACE INTO t1(a,b,c,d,e) VALUES(1,2,null,4,5);
    SELECT * FROM t1 order by a;
  
DELETE FROM t1;
    INSERT OR ABORT INTO t1(a,b,c,d,e) VALUES(1,2,null,4,5);
    SELECT * FROM t1 order by a;
  
DELETE FROM t1;
    INSERT OR ABORT INTO t1(a,b,c,d,e) VALUES(1,2,3,null,5);
    SELECT * FROM t1 order by a;
  
DELETE FROM t1;
    INSERT OR ABORT INTO t1(a,b,c,e) VALUES(1,2,3,5);
    SELECT * FROM t1 order by a;
  
DELETE FROM t1;
    INSERT INTO t1(a,b,c,d) VALUES(1,2,3,4);
    SELECT * FROM t1 order by a;
  
DELETE FROM t1;
    INSERT INTO t1(a,b,c,d,e) VALUES(1,2,3,4,null);
    SELECT * FROM t1 order by a;
  
DELETE FROM t1;
    INSERT OR REPLACE INTO t1(e,d,c,b,a) VALUES(1,2,3,null,5);
    SELECT * FROM t1 order by a;
  
DELETE FROM t1;
    INSERT INTO t1 VALUES(1,2,3,4,5);
    UPDATE t1 SET a=null;
    SELECT * FROM t1 ORDER BY a;
  
DELETE FROM t1;
    INSERT INTO t1 VALUES(1,2,3,4,5);
    UPDATE OR REPLACE t1 SET a=null;
    SELECT * FROM t1 ORDER BY a;
  
DELETE FROM t1;
    INSERT INTO t1 VALUES(1,2,3,4,5);
    UPDATE OR IGNORE t1 SET a=null;
    SELECT * FROM t1 ORDER BY a;
  
DELETE FROM t1;
    INSERT INTO t1 VALUES(1,2,3,4,5);
    UPDATE OR ABORT t1 SET a=null;
    SELECT * FROM t1 ORDER BY a;
  
DELETE FROM t1;
    INSERT INTO t1 VALUES(1,2,3,4,5);
    UPDATE t1 SET b=null;
    SELECT * FROM t1 ORDER BY a;
  
DELETE FROM t1;
    INSERT INTO t1 VALUES(1,2,3,4,5);
    UPDATE OR REPLACE t1 SET b=null, d=e, e=d;
    SELECT * FROM t1 ORDER BY a;
  
DELETE FROM t1;
    INSERT INTO t1 VALUES(1,2,3,4,5);
    UPDATE OR IGNORE t1 SET b=null, d=e, e=d;
    SELECT * FROM t1 ORDER BY a;
  
DELETE FROM t1;
    INSERT INTO t1 VALUES(1,2,3,4,5);
    UPDATE t1 SET c=null, d=e, e=d;
    SELECT * FROM t1 ORDER BY a;
  
DELETE FROM t1;
    INSERT INTO t1 VALUES(1,2,3,4,5);
    UPDATE t1 SET d=null, a=b, b=a;
    SELECT * FROM t1 ORDER BY a;
  
DELETE FROM t1;
    INSERT INTO t1 VALUES(1,2,3,4,5);
    UPDATE t1 SET e=null, a=b, b=a;
    SELECT * FROM t1 ORDER BY a;
  
DROP TABLE IF EXISTS t1;
    CREATE TABLE t1(a, b NOT NULL);
    CREATE TABLE t2(c, d);
    INSERT INTO t2 VALUES(3, 4);
    INSERT INTO t2 VALUES(5, NULL);
  
INSERT INTO t1 VALUES(1, 2);
    INSERT INTO t1 SELECT * FROM t2;
  
SELECT * FROM t1 
DELETE FROM t1;
    BEGIN;
      INSERT INTO t1 VALUES(1, 2);
      INSERT INTO t1 SELECT * FROM t2;
    COMMIT;
  
SELECT * FROM t1 
db eval "EXPLAIN $sql" a {
    if {$a(opcode)=="Next"
uplevel [list do_test $tn [list uses_op_next $sql] $res]

CREATE TABLE t1(a UNIQUE);
  CREATE TABLE t2(a NOT NULL UNIQUE);
  CREATE TABLE t3(a UNIQUE NOT NULL);
  CREATE TABLE t4(a NOT NULL);
  CREATE UNIQUE INDEX t4a ON t4(a);

  CREATE TABLE t5(a PRIMARY KEY);
  CREATE TABLE t6(a PRIMARY KEY NOT NULL);
  CREATE TABLE t7(a NOT NULL PRIMARY KEY);
  CREATE TABLE t8(a PRIMARY KEY) WITHOUT ROWID;

  CREATE TABLE t9(a PRIMARY KEY UNIQUE NOT NULL);
  CREATE TABLE t10(a UNIQUE PRIMARY KEY NOT NULL);

