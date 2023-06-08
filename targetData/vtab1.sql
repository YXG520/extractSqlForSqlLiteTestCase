CREATE VIRTUAL TABLE t1 USING echo;
  
CREATE VIRTUAL TABLE IF NOT EXISTS t1 USING echo;
  
SELECT name FROM sqlite_master ORDER BY 1
  
CREATE VIRTUAL TABLE t1 USING echo;
  
CREATE VIRTUAL TABLE IF NOT EXISTS t1 USING echo;
  
SELECT name FROM sqlite_master ORDER BY 1
  
CREATE VIRTUAL TABLE t1 USING echo(no_such_table);
  
CREATE VIRTUAL TABLE IF NOT EXISTS t1 USING echo(no_such_table);
  
SELECT name FROM sqlite_master ORDER BY 1
  
CREATE VIRTUAL TABLE t2152a USING echo(t2152b)
CREATE VIRTUAL TABLE sqlite_master USING echo;
  
CREATE VIRTUAL TABLE IF NOT EXISTS sqlite_master USING echo;
  
CREATE TABLE treal(a, b, c);
    CREATE VIRTUAL TABLE treal USING echo(treal);
  
CREATE VIRTUAL TABLE IF NOT EXISTS treal USING echo(treal);
  
DROP TABLE treal;
    SELECT name FROM sqlite_master ORDER BY 1
  
CREATE TABLE treal(a, b, c);
    CREATE VIRTUAL TABLE techo USING echo(treal);
  
SELECT * FROM techo;
  
INSERT INTO techo VALUES(1, 2, 3);
  
UPDATE techo SET a = 10;
  
DELETE FROM techo;
  
PRAGMA table_info(techo)
  
DROP TABLE techo;
  
DROP TABLE techo;
    CREATE TABLE logmsg(log);
  
CREATE VIRTUAL TABLE techo USING echo(treal, logmsg);
  
DROP TABLE treal;
    DROP TABLE logmsg;
    SELECT sql FROM sqlite_master;
  
CREATE TABLE template(a, b, c);
  
PRAGMA table_info(template); 
CREATE VIRTUAL TABLE t1 USING echo(template);
  
PRAGMA table_info(t1); 
PRAGMA table_info(t1); 
PRAGMA table_info(t1); 
DROP TABLE t1;
  
PRAGMA table_info(t1); 
  
SELECT sql FROM sqlite_master;
  
DROP TABLE template;
    SELECT sql FROM sqlite_master;
  
CREATE TABLE treal(a INTEGER, b INTEGER, c); 
    CREATE INDEX treal_idx ON treal(b);
    CREATE VIRTUAL TABLE t1 USING echo(treal);
  
SELECT a, b, c FROM t1;
  
INSERT INTO treal VALUES(1, 2, 3);
    INSERT INTO treal VALUES(4, 5, 6);
    SELECT * FROM t1;
  
SELECT a FROM t1;
  
SELECT rowid FROM t1;
  
SELECT * FROM t1;
  
SELECT rowid, * FROM t1;
  
SELECT a AS d, b AS e, c AS f FROM t1;
  
SELECT * FROM t1;
  
SELECT * FROM t1 WHERE b = 5;
  
SELECT * FROM t1 WHERE b >= 5 AND b <= 10;
  
SELECT * FROM t1 WHERE b BETWEEN 2 AND 10;
  
SELECT * FROM t1 WHERE a MATCH 'string';
  
SELECT * FROM t1 WHERE b MATCH 'string';
  
set ::sqlite_sort_count 0
  set data [execsql $sql]
  if {$::sqlite_sort_count
DROP TABLE t1;
  DROP TABLE treal;

CREATE TABLE t1(a, b, c);
    CREATE TABLE t2(d, e, f);
    INSERT INTO t1 VALUES(1, 'red', 'green');
    INSERT INTO t1 VALUES(2, 'blue', 'black');
    INSERT INTO t2 VALUES(1, 'spades', 'clubs');
    INSERT INTO t2 VALUES(2, 'hearts', 'diamonds');
    CREATE VIRTUAL TABLE et1 USING echo(t1);
    CREATE VIRTUAL TABLE et2 USING echo(t2);
  
SELECT * FROM et1, et2;
  
SELECT * FROM et1, et2 WHERE et2.d = 2;
  
CREATE INDEX i1 ON t2(d);
  
SELECT * FROM et1, et2 WHERE et2.d = 2;
  
DROP TABLE t1;
  DROP TABLE t2;
  DROP TABLE et1;
  DROP TABLE et2;

SELECT sql FROM sqlite_master 
CREATE TABLE treal(a PRIMARY KEY, b, c);
    CREATE VIRTUAL TABLE techo USING echo(treal);
    SELECT name FROM sqlite_master WHERE type = 'table';
  
PRAGMA count_changes=ON;
    INSERT INTO techo VALUES(1, 2, 3);
  
SELECT * FROM techo;
  
UPDATE techo SET a = 5;
  
SELECT * FROM techo;
  
UPDATE techo SET a=6 WHERE a<0;
  
SELECT * FROM techo;
  
UPDATE techo set a = a||b||c;
 
SELECT * FROM techo;
 
UPDATE techo set rowid = 10;
  
SELECT rowid FROM techo;
  
INSERT INTO techo VALUES(11,12,13);
  
SELECT * FROM techo ORDER BY a;
  
UPDATE techo SET b=b+1000
  
SELECT * FROM techo ORDER BY a;
  
DELETE FROM techo WHERE a=5;
  
SELECT * FROM techo ORDER BY a;
  
DELETE FROM techo;
  
SELECT * FROM techo ORDER BY a;
  
PRAGMA count_changes=OFF
CREATE TABLE techo(a PRIMARY KEY, b, c);

SELECT rowid, * FROM techo
SELECT rowid, * FROM techo
CREATE TABLE real_abc(a PRIMARY KEY, b, c);
    CREATE VIRTUAL TABLE echo_abc USING echo(real_abc);
  
INSERT INTO echo_abc VALUES(1, 2, 3);
    SELECT last_insert_rowid();
  
INSERT INTO echo_abc(rowid) VALUES(31427);
    SELECT last_insert_rowid();
  
INSERT INTO echo_abc SELECT a||'.v2', b, c FROM echo_abc;
    SELECT last_insert_rowid();
  
SELECT rowid, a, b, c FROM echo_abc
  
UPDATE echo_abc SET c = 5 WHERE b = 2;
    SELECT last_insert_rowid();
  
UPDATE echo_abc SET rowid = 5 WHERE rowid = 1;
    SELECT last_insert_rowid();
  
DELETE FROM echo_abc WHERE b = 2;
    SELECT last_insert_rowid();
  
SELECT rowid, a, b, c FROM echo_abc
  
DELETE FROM echo_abc WHERE b = 2;
    SELECT last_insert_rowid();
  
SELECT rowid, a, b, c FROM real_abc
  
DELETE FROM echo_abc;
    SELECT last_insert_rowid();
  
SELECT rowid, a, b, c FROM real_abc
  
PRAGMA index_info('echo_abc');
    PRAGMA index_xinfo('echo_abc');
  
ATTACH 'test2.db' AS aux;
      CREATE VIRTUAL TABLE aux.e2 USING echo(real_abc);
    
DROP TABLE aux.e2;
  
DROP TABLE treal;
    DROP TABLE techo;
    DROP TABLE echo_abc;
    DROP TABLE real_abc;
  
CREATE TABLE r(a, b, c);
    CREATE VIRTUAL TABLE e USING echo(r, e_log);
    SELECT name FROM sqlite_master;
  
DROP TABLE e;
    SELECT name FROM sqlite_master;
  
CREATE VIRTUAL TABLE e USING echo(r, e_log, virtual 1 2 3 varchar(32));
  
CREATE TABLE del(d);
    CREATE VIRTUAL TABLE e2 USING echo(del);
  
DROP TABLE del;
  
SELECT * FROM e2;
  
CREATE TABLE abc(a, b, c)
INSERT INTO e VALUES(1, 2, 3);
  
EXPLAIN SELECT * FROM e WHERE rowid = 2;
    EXPLAIN QUERY PLAN SELECT * FROM e WHERE rowid = 2 ORDER BY rowid;
  
SELECT * FROM e WHERE rowid||'' MATCH 'pattern';
  
SELECT * FROM e WHERE match('pattern', rowid, 'pattern2');
  
INSERT INTO r(a,b,c) VALUES(1,'?',99);
    INSERT INTO r(a,b,c) VALUES(2,3,99);
    SELECT a GLOB b FROM e
  
SELECT a like 'b' FROM e
  
SELECT a glob '2' FROM e
  
SELECT  glob('2',a) FROM e
  
SELECT  glob(a,'2') FROM e
  
CREATE TABLE b(a, b, c);
    CREATE TABLE c(a UNIQUE, b, c);
    INSERT INTO b VALUES(1, 'A', 'B');
    INSERT INTO b VALUES(2, 'C', 'D');
    INSERT INTO b VALUES(3, 'E', 'F');
    INSERT INTO c VALUES(3, 'G', 'H');
    CREATE VIRTUAL TABLE echo_c USING echo(c);
  
INSERT INTO echo_c SELECT * FROM b; 
SELECT * FROM c 
BEGIN
INSERT INTO echo_c SELECT * FROM b; 
SELECT * FROM c 
COMMIT 
SELECT * FROM c 
SELECT * FROM echo_c WHERE a IS NULL 
  
INSERT INTO c VALUES(NULL, 15, 16);
    SELECT * FROM echo_c WHERE a IS NULL 
  
INSERT INTO c VALUES(15, NULL, 16);
    SELECT * FROM echo_c WHERE b IS NULL 
  
SELECT * FROM echo_c WHERE b IS $null
  
SELECT * FROM echo_c WHERE b IS NULL AND a = 15;
  
SELECT * FROM echo_c WHERE NULL IS b AND a IS 15;
  
SELECT rowid, * FROM echo_c WHERE +rowid IN (1,2,3)
SELECT rowid, * FROM echo_c WHERE rowid IN (1,2,3)
SELECT rowid, * FROM echo_c WHERE +rowid IN (0,1,5,2,'a',3,NULL)
SELECT rowid, * FROM echo_c WHERE rowid IN (0,1,5,'a',2,3,NULL)
SELECT rowid, * FROM echo_c WHERE rowid NOT IN (0,1,5,'a',2,3)
SELECT rowid, * FROM echo_c WHERE rowid NOT IN (0,5,'a',2,3)
SELECT rowid, * FROM echo_c WHERE +rowid NOT IN (0,5,'a',2,3,NULL)
SELECT rowid, * FROM echo_c WHERE rowid NOT IN (0,5,'a',2,3,NULL)
SELECT * FROM echo_c WHERE +a IN (1,3,8,'x',NULL,15,24)
SELECT * FROM echo_c WHERE a IN (1,3,8,'x',NULL,15,24)
SELECT * FROM echo_c WHERE a NOT IN (1,8,'x',15,24)
SELECT * FROM echo_c WHERE a NOT IN (1,8,'x',NULL,15,24)
SELECT * FROM echo_c WHERE +a NOT IN (1,8,'x',NULL,15,24)
DELETE FROM c 
SELECT * FROM echo_c WHERE rowid IN (1, 2, 3) 
SELECT * FROM echo_c WHERE rowid = 1 
SELECT * FROM echo_c WHERE a = 1 
SELECT * FROM echo_c WHERE a IN (1, 2) 
CREATE TABLE t1(a, b, c);
    CREATE VIRTUAL TABLE echo_t1 USING echo(t1);
  
INSERT INTO echo_t1(rowid) VALUES(45);
    SELECT rowid, * FROM echo_t1;
  
INSERT INTO echo_t1(rowid) VALUES(NULL);
    SELECT rowid, * FROM echo_t1;
  
INSERT INTO echo_t1(rowid) VALUES('new rowid');
  
CREATE TABLE t2(a PRIMARY KEY, b, c);
    INSERT INTO t2 VALUES(1, 2, 3);
    INSERT INTO t2 VALUES(4, 5, 6);
    CREATE VIRTUAL TABLE echo_t2 USING echo(t2);
  
SELECT rowid, * FROM echo_t2 WHERE a >= 1 
INSERT INTO echo_t2 VALUES(7, 8, 9) 
ALTER TABLE echo_t2 RENAME TO another_name 
PRAGMA writable_schema = 1;
    INSERT INTO sqlite_master VALUES(
      'table', 't3', 't3', 0, 'INSERT INTO "%s%s" VALUES(1)'
    );
  
CREATE VIRTUAL TABLE t4 USING echo(t3); 
CREATE TABLE t5(a, b);
    CREATE VIRTUAL TABLE e5 USING echo_v2(t5);
    BEGIN;
      INSERT INTO e5 VALUES(1, 2);
      DROP TABLE e5;
      SAVEPOINT one;
      ROLLBACK TO one;
    COMMIT;
  
DELETE FROM sqlite_master WHERE sql LIKE 'insert%' 
CREATE TABLE t6(a, b TEXT);
  CREATE INDEX i6 ON t6(b, a);
  INSERT INTO t6 VALUES(1, 'Peter');
  INSERT INTO t6 VALUES(2, 'Andrew');
  INSERT INTO t6 VALUES(3, '8James');
  INSERT INTO t6 VALUES(4, '8John');
  INSERT INTO t6 VALUES(5, 'Phillip');
  INSERT INTO t6 VALUES(6, 'Bartholomew');
  CREATE VIRTUAL TABLE e6 USING echo(t6);

1.1 "SELECT a FROM e6 WHERE b>'8James'" {4 2 6 1 5
PRAGMA case_sensitive_like = ON 
2.1 "SELECT a FROM e6 WHERE b LIKE '8%'" {3 4
PRAGMA case_sensitive_like = OFF 
CREATE TABLE t7 (a, b);
  CREATE TABLE t8 (c, d);
  CREATE INDEX i2 ON t7(a);
  CREATE INDEX i3 ON t7(b);
  CREATE INDEX i4 ON t8(c);
  CREATE INDEX i5 ON t8(d);

  CREATE VIRTUAL TABLE t7v USING echo(t7);
  CREATE VIRTUAL TABLE t8v USING echo(t8);

SELECT a, b FROM (
      SELECT a, b FROM t7 WHERE a=11 OR b=12
      UNION ALL
      SELECT c, d FROM t8 WHERE c=5 OR d=6
  )
  ORDER BY 1, 2;

SELECT a, b FROM (
      SELECT a, b FROM t7v WHERE a=11 OR b=12
      UNION ALL
      SELECT c, d FROM t8v WHERE c=5 OR d=6
  )
  ORDER BY 1, 2;

CREATE TABLE t9(a,b,c);
  CREATE VIRTUAL TABLE t9v USING echo(t9);

  INSERT INTO t9 VALUES(1,2,3);
  INSERT INTO t9 VALUES(3,2,1);
  INSERT INTO t9 VALUES(2,2,2);

SELECT * FROM t9v WHERE a<b;

SELECT * FROM t9v WHERE a=b;

ATTACH 'test.db2' AS $nm
  
nm
nm
nm
sql
CREATE VIRTUAL TABLE t1 USING wholenumber 
DROP TABLE t1 
CREATE TABLE t2(value);
    INSERT INTO t2 VALUES(1), (2), (3);
  
DROP TABLE t1 
CREATE VIRTUAL TABLE t1e USING echo(t2) 
INSERT INTO t1e SELECT 4 
INSERT INTO t1e SELECT eval('DROP TABLE t1e') 
1 2 3 4
CREATE VIRTUAL TABLE t4 USING fts3();
    SAVEPOINT a;
    INSERT INTO t4 VALUES('a b c');
    ROLLBACK TO a;
    RELEASE a;
    SELECT * FROM t4;
  


SAVEPOINT a;
    CREATE VIRTUAL TABLE t5 USING fts3();
    SAVEPOINT b;
    ROLLBACK TO a;
    SAVEPOINT c;
    RELEASE a;
  
CREATE TABLE t0(a);
  CREATE VIRTUAL TABLE t1 USING echo(t0);
  WITH t3(a) AS (SELECT * FROM t1 UNION ALL SELECT * FROM t1)
  UPDATE t1 SET (a,a) = (SELECT 1, 0) FROM t3;

CREATE VIRTUAL TABLE t1 USING wholenumber;
  CREATE TABLE tx(a, b, c);

SELECT value FROM t1 WHERE value<5

