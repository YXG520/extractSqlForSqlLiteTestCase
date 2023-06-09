

  CREATE TABLE t1(a,b,c);
  INSERT INTO t1 VALUES(1,2,3),(4,5,6);
  SELECT quote(eval('SELECT * FROM t1 ORDER BY a','-abc-'));



  SELECT quote(eval('SELECT * FROM t1 ORDER BY a'));



  SELECT quote(eval('SELECT d FROM t1 ORDER BY a'));



  INSERT INTO t1 VALUES(7,null,9);
  SELECT eval('SELECT * FROM t1 ORDER BY a',',');



  BEGIN;
  INSERT INTO t1 VALUES(10,11,12);
  SELECT a, coalesce(b, eval('ROLLBACK; SELECT ''bam'';')), c
   FROM t1 ORDER BY a;



  INSERT INTO t1 VALUES(10,11,12);
  SELECT a, coalesce(b, eval('SELECT ''bam''')), c
    FROM t1
   ORDER BY rowid;



  SELECT a, coalesce(b, eval('DELETE FROM t1; SELECT ''bam''')), c
    FROM t1
   ORDER BY rowid;



  INSERT INTO t1 VALUES(1,2,3),(4,5,6),(7,null,9);
  BEGIN;
  CREATE TABLE t2(x);
  SELECT a, coalesce(b, eval('ROLLBACK; SELECT ''bam''')), c
    FROM t1
   ORDER BY rowid;



  PRAGMA empty_result_callbacks = 1;
  SELECT eval('SELECT * FROM t1 WHERE 1 = 0;');

sql
 db eval $sql 
