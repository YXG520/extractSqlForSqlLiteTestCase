CREATE TABLE t1(
       n int,
       v varchar(10),
       log int,
       roman varchar(10),
       flt real
    );
    INSERT INTO t1 VALUES(1,'one',0,'I',3.141592653);
    INSERT INTO t1 VALUES(2,'two',1,'II',2.15);
    INSERT INTO t1 VALUES(3,'three',1,'III',4221.0);
    INSERT INTO t1 VALUES(4,'four',2,'IV',-0.0013442);
    INSERT INTO t1 VALUES(5,'five',2,'V',-11);
    INSERT INTO t1 VALUES(6,'six',2,'VI',0.123);
    INSERT INTO t1 VALUES(7,'seven',2,'VII',123.0);
    INSERT INTO t1 VALUES(8,'eight',3,'VIII',-1.6);
  
SELECT count(*) FROM t1
SELECT n FROM t1 ORDER BY n
SELECT n FROM t1 ORDER BY n ASC
SELECT ALL n FROM t1 ORDER BY n ASC
SELECT n FROM t1 ORDER BY n DESC
SELECT v FROM t1 ORDER BY v
SELECT n FROM t1 ORDER BY v
SELECT n FROM t1 ORDER BY v DESC
SELECT flt FROM t1 ORDER BY flt
SELECT flt FROM t1 ORDER BY flt DESC
SELECT roman FROM t1 ORDER BY roman
SELECT n FROM t1 ORDER BY log, flt
SELECT n FROM t1 ORDER BY log asc, flt
SELECT n FROM t1 ORDER BY log, flt ASC
SELECT n FROM t1 ORDER BY log ASC, flt asc
SELECT n FROM t1 ORDER BY log, flt DESC
SELECT n FROM t1 ORDER BY log ASC, flt DESC
SELECT n FROM t1 ORDER BY log DESC, flt
SELECT n FROM t1 ORDER BY log DESC, flt DESC
UPDATE t1 SET v='x' || -flt;
    UPDATE t1 SET v='x-2b' where v=='x-0.123';
    SELECT v FROM t1 ORDER BY v;
  
SELECT v FROM t1 ORDER BY substr(v,2,999);
  
SELECT v FROM t1 ORDER BY substr(v,2,999)+0.0;
  
SELECT v FROM t1 ORDER BY substr(v,2,999) DESC;
  
SELECT v FROM t1 ORDER BY substr(v,2,999)+0.0 DESC;
  
CREATE TABLE t2(a,b);
    INSERT INTO t2 VALUES('AGLIENTU',1);
    INSERT INTO t2 VALUES('AGLIE`',2);
    INSERT INTO t2 VALUES('AGNA',3);
    SELECT a, b FROM t2 ORDER BY a;
  
SELECT a, b FROM t2 ORDER BY a DESC;
  
DELETE FROM t2;
    INSERT INTO t2 VALUES('aglientu',1);
    INSERT INTO t2 VALUES('aglie`',2);
    INSERT INTO t2 VALUES('agna',3);
    SELECT a, b FROM t2 ORDER BY a;
  
SELECT a, b FROM t2 ORDER BY a DESC;
  
INSERT INTO t1 VALUES(9,'x2.7',3,'IX',4.0e5);
    INSERT INTO t1 VALUES(10,'x5.0e10',3,'X',-4.0e5);
    INSERT INTO t1 VALUES(11,'x-4.0e9',3,'XI',4.1e4);
    INSERT INTO t1 VALUES(12,'x01234567890123456789',3,'XII',-4.2e3);
    SELECT n FROM t1 ORDER BY n;
  
SELECT n||'' FROM t1 ORDER BY 1;
  
SELECT n+0 FROM t1 ORDER BY 1;
  
SELECT n||'' FROM t1 ORDER BY 1 DESC;
  
SELECT n+0 FROM t1 ORDER BY 1 DESC;
  
SELECT v FROM t1 ORDER BY 1;
  
SELECT v FROM t1 ORDER BY 1 DESC;
  
SELECT substr(v,2,99) FROM t1 ORDER BY 1;
  
#    SELECT substr(v,2,99)+0.0 FROM t1 ORDER BY 1;
#  
create table t3(a,b);
    insert into t3 values(5,NULL);
    insert into t3 values(6,NULL);
    insert into t3 values(3,NULL);
    insert into t3 values(4,'cd');
    insert into t3 values(1,'ab');
    insert into t3 values(2,NULL);
    select a from t3 order by b, a;
  
select a from t3 order by b, a desc;
  
select a from t3 order by b desc, a;
  
select a from t3 order by b desc, a desc;
  
create index i3 on t3(b,a);
    select a from t3 order by b, a;
  
select a from t3 order by b, a desc;
  
select a from t3 order by b desc, a;
  
select a from t3 order by b desc, a desc;
  
CREATE TABLE t4(
      a INTEGER,
      b VARCHAR(30)
    );
    INSERT INTO t4 VALUES(1,1);
    INSERT INTO t4 VALUES(2,2);
    INSERT INTO t4 VALUES(11,11);
    INSERT INTO t4 VALUES(12,12);
    SELECT a FROM t4 ORDER BY 1;
  
SELECT b FROM t4 ORDER BY 1
  
CREATE VIEW v4 AS SELECT * FROM t4;
    SELECT a FROM v4 ORDER BY 1;
  
SELECT b FROM v4 ORDER BY 1;
  
SELECT a FROM t4 UNION SELECT a FROM v4 ORDER BY 1;
  
SELECT b FROM t4 UNION SELECT a FROM v4 ORDER BY 1;
  
SELECT a FROM t4 UNION SELECT b FROM v4 ORDER BY 1;
  
SELECT b FROM t4 UNION SELECT b FROM v4 ORDER BY 1;
  
#    SELECT b FROM t4 UNION SELECT b FROM v4 ORDER BY 1 COLLATE numeric;
#  
#    SELECT b FROM t4 UNION SELECT b FROM v4 ORDER BY 1 COLLATE integer;
#  
#    SELECT b FROM t4 UNION SELECT b FROM v4 ORDER BY 1 COLLATE text;
#  
#    SELECT b FROM t4 UNION SELECT b FROM v4 ORDER BY 1 COLLATE blob;
#  
#    SELECT b FROM t4 UNION SELECT b FROM v4 ORDER BY 1 COLLATE clob;
#  
#    SELECT b FROM t4 UNION SELECT b FROM v4 ORDER BY 1 COLLATE varchar;
#  
CREATE TABLE t5(a real, b text);
    INSERT INTO t5 VALUES(100,'A1');
    INSERT INTO t5 VALUES(100.0,'A2');
    SELECT * FROM t5 ORDER BY a, b;
  
CREATE TABLE t6(x, y);
    INSERT INTO t6 VALUES(1,1);
    INSERT INTO t6 VALUES(2,'1');
    INSERT INTO t6 VALUES(3,x'31');
    INSERT INTO t6 VALUES(4,NULL);
    SELECT x FROM t6 ORDER BY y;
  
SELECT x FROM t6 ORDER BY y DESC;
  
SELECT x FROM t6 WHERE y<1
  
SELECT x FROM t6 WHERE y<'1'
  
SELECT x FROM t6 WHERE y<x'31'
  
SELECT x FROM t6 WHERE y>1
  
SELECT x FROM t6 WHERE y>'1'
  
CREATE TABLE t7(c INTEGER PRIMARY KEY);
    INSERT INTO t7 VALUES(1);
    INSERT INTO t7 VALUES(2);
    INSERT INTO t7 VALUES(3);
    INSERT INTO t7 VALUES(4);
  
SELECT c FROM t7 WHERE c<=3 ORDER BY c DESC;
  
SELECT c FROM t7 WHERE c<3 ORDER BY c DESC;
  
create table t8(a unique, b, c);
    insert into t8 values(1,2,3);
    insert into t8 values(2,3,4);
    create table t9(x,y);
    insert into t9 values(2,4);
    insert into t9 values(2,3);
    select y from t8, t9 where a=1 order by a, y;
  
create table a (id integer primary key);
    create table b (id integer primary key, aId integer, text);
    insert into a values (1);
    insert into b values (2, 1, 'xxx');
    insert into b values (1, 1, 'zzz');
    insert into b values (3, 1, 'yyy');
    select a.id, b.id, b.text from a join b on (a.id = b.aId)
      order by a.id, b.text;
  
CREATE TABLE t10(a, b);

INSERT INTO t10 VALUES( $i/10, $i%10 ) 
SELECT a, b FROM t10 ORDER BY a;

PRAGMA cache_size = 5;
  SELECT a, b FROM t10 ORDER BY a;

PRAGMA cache_size = 20 
PRAGMA cache_size = 5 
WITH rr AS (
      SELECT 4, $ten UNION ALL
      SELECT 2, $one UNION ALL
      SELECT 1, $ten UNION ALL
      SELECT 3, $one
    )
    SELECT * FROM rr ORDER BY 1;
  
CREATE TABLE t1(a);
    INSERT INTO t1 VALUES(4);
    INSERT INTO t1 VALUES(5);
    INSERT INTO t1 VALUES(3);
    INSERT INTO t1 VALUES(2);
    INSERT INTO t1 VALUES(6);
    INSERT INTO t1 VALUES(1);
    CREATE INDEX i1 ON t1(a);
    SELECT * FROM t1 ORDER BY a;
  
WITH rr AS (
      SELECT 4, $ten UNION ALL
      SELECT 2, $one
    )
    SELECT * FROM rr ORDER BY 1;
  
CREATE TABLE t1(a, b, c);
  INSERT INTO t1 VALUES(1, 2, 3);
  INSERT INTO t1 VALUES(1, NULL, 3);
  INSERT INTO t1 VALUES(NULL, 2, 3);
  INSERT INTO t1 VALUES(1, 2, NULL);
  INSERT INTO t1 VALUES(4, 5, 6);
  CREATE UNIQUE INDEX i1 ON t1(b, a, c);

CREATE TABLE t1(a, b, c);
  INSERT INTO t1 VALUES(1, 2, 3);
  INSERT INTO t1 VALUES(1, NULL, 3);
  INSERT INTO t1 VALUES(1, 2, 3);
  INSERT INTO t1 VALUES(1, 2, NULL);
  INSERT INTO t1 VALUES(4, 5, 6);
  CREATE UNIQUE INDEX i1 ON t1(b, a, c);

SELECT * FROM sqlite_master ORDER BY sql;

CREATE TABLE t1(a INTEGER PRIMARY KEY, b, c);
  WITH RECURSIVE c(x) AS (VALUES(1) UNION ALL SELECT x+1 FROM c WHERE x<50)
                           -- increase to 5000 for actual test data ----^^
    INSERT INTO t1(a,b,c) SELECT x, random()%5000, random()%5000 FROM c;
  CREATE TABLE t2(d,e,f);
  WITH RECURSIVE c(x) AS (VALUES(1) UNION ALL SELECT x+1 FROM c WHERE x<500)
                         -- increase to 50000 for actual test data -----^^^
    INSERT INTO t2(d,e,f) SELECT
       NULLIF(0, random()%2), random()%5000, random()%5000
       FROM c;
  ANALYZE;
  UPDATE sqlite_stat1 SET stat='50000' WHERE tbl='t2';
  UPDATE sqlite_stat1 SET stat='5000' WHERE tbl='t1';
  ANALYZE sqlite_schema;

EXPLAIN QUERY PLAN
  SELECT a FROM t1 JOIN t2
   WHERE a IN (1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20)
     AND a=CASE WHEN d IS NOT NULL THEN e ELSE f END
   ORDER BY a;

