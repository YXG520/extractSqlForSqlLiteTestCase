set orig_sum [cksum]
  set i $initcnt
  while 1 {
    incr i
    set ::sqlite_interrupt_count $i
    do_test $testid.$i.1 [format {
      set ::r [catchsql %s]
      set ::code [db errorcode]
      expr {$::code==0 || $::code==9
CREATE TABLE t1(a,b);
    SELECT name FROM sqlite_master;
  
SELECT name FROM sqlite_master;
  
BEGIN;
    CREATE TABLE t1(a,b);
    INSERT INTO t1 VALUES(1,randstr(300,400));
    INSERT INTO t1 SELECT a+1, randstr(300,400) FROM t1;
    INSERT INTO t1 SELECT a+2, a || '-' || b FROM t1;
    INSERT INTO t1 SELECT a+4, a || '-' || b FROM t1;
    INSERT INTO t1 SELECT a+8, a || '-' || b FROM t1;
    INSERT INTO t1 SELECT a+16, a || '-' || b FROM t1;
    INSERT INTO t1 SELECT a+32, a || '-' || b FROM t1;
    COMMIT;
    UPDATE t1 SET b=substr(b,-5,5);
    SELECT count(*) from t1;
  
SELECT md5sum(a || b) FROM t1;
  
EXPLAIN SELECT max(a,b), a, b FROM t1
sqlite3_interrupt $DB;
      incr ::interrupt_count [sqlite3_is_interrupted $DB];
    
BEGIN;
        CREATE TEMP TABLE t2(x,y);
        SELECT name FROM sqlite_temp_master;
      
INSERT INTO t2 SELECT * FROM t1;
      
SELECT name FROM temp.sqlite_master;
      
ROLLBACK
      
SELECT name FROM sqlite_temp_master
SELECT name FROM temp.sqlite_master;
      
CREATE TABLE t2(a,b,c);
  INSERT INTO t2 SELECT round(a/10), randstr(50,80), randstr(50,60) FROM t1;

SELECT max(min(b,c)), min(max(b,c)), a FROM t2 GROUP BY a ORDER BY a;

CREATE INDEX fake ON fake1(a COLLATE fake_collation, b, c DESC);
  
