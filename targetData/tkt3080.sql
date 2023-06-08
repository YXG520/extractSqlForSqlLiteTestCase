SELECT name FROM sqlite_master
INSERT INTO t1 VALUES('CREATE TABLE t3(z); DROP TABLE t3;');
  
SELECT execsql(x) FROM t1 WHERE rowid=2;
  
CREATE VIRTUAL TABLE t4 USING echo(t2);
       INSERT INTO t4 VALUES(123);
       DROP TABLE t4;
     
DELETE FROM t1;
       INSERT INTO t1 VALUES($sql);
     
SELECT name FROM sqlite_master
SELECT * FROM t2
