


    CREATE TABLE t1(a text, b text, c text);
    SELECT name FROM sqlite_master
      WHERE type='table' OR type='index'
      ORDER BY name
  

INSERT INTO t1 VALUES('abc',
'$::big1', 'xyz');
SELECT a, c FROM t1

SELECT b FROM t1

INSERT INTO t1 VALUES('abc2',
'$::big2', 'xyz2');

SELECT b FROM t1 ORDER BY c

SELECT c FROM t1 ORDER BY c

DELETE FROM t1 WHERE a='abc2'
SELECT c FROM t1


    UPDATE t1 SET a=b, b=a;
    SELECT b,c FROM t1
  


    SELECT * FROM t1
  


    INSERT INTO t1 VALUES('1','2','3');
    INSERT INTO t1 VALUES('A','B','C');
    SELECT b FROM t1 WHERE a=='1';
  

SELECT b FROM t1 WHERE a=='$::big1'

SELECT b FROM t1 WHERE a!='$::big1' ORDER BY a
