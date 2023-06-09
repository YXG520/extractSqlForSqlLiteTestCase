

      CREATE TABLE t1(x);
      INSERT INTO t1 VALUES(1);
      INSERT INTO t1 VALUES(2);
      INSERT INTO t1 VALUES(3);
      SELECT * FROM t1;
    

SELECT rowid FROM t1

} {
        db eval "DELETE FROM t1 WHERE rowid=$rowid"
      

SELECT * FROM t1


      DELETE FROM t1;
      INSERT INTO t1 VALUES(1);
      INSERT INTO t1 VALUES(2);
      INSERT INTO t1 VALUES(3);
      INSERT INTO t1 VALUES(4);
    
SELECT rowid, x FROM t1

      if {$x & 1
DELETE FROM t1 WHERE rowid=$rowid
SELECT * FROM t1


      DELETE FROM t1;
      INSERT INTO t1 VALUES(1);
      INSERT INTO t1 VALUES(2);
      INSERT INTO t1 VALUES(3);
      INSERT INTO t1 VALUES(4);
    
SELECT rowid, x FROM t1

      if {$x & 1
DELETE FROM t1 WHERE rowid=$rowid+1
SELECT * FROM t1


      DELETE FROM t1;
      INSERT INTO t1 VALUES(1);
      INSERT INTO t1 VALUES(2);
      INSERT INTO t1 VALUES(3);
      INSERT INTO t1 VALUES(4);
    
SELECT rowid, x FROM t1

      if {$x & 1
DELETE FROM t1
SELECT * FROM t1


      DELETE FROM t1;
      INSERT INTO t1 VALUES(1);
      INSERT INTO t1 VALUES(2);
      INSERT INTO t1 VALUES(3);
      INSERT INTO t1 VALUES(4);
    
SELECT rowid, x FROM t1

      if {$x & 1
UPDATE t1 SET x=x+100 WHERE rowid=$rowid
SELECT * FROM t1


      DELETE FROM t1;
      INSERT INTO t1 VALUES(1);
    
SELECT rowid, x FROM t1

      if {$x<10
INSERT INTO t1 VALUES($x+1)
SELECT * FROM t1


      CREATE TABLE t1(x);
      INSERT INTO t1 VALUES(1);
      INSERT INTO t1 VALUES(2);
      INSERT INTO t1 VALUES(3);
      SELECT * FROM t1;
    

SELECT rowid FROM t1 ORDER BY rowid DESC

} {
        db eval "DELETE FROM t1 WHERE rowid=$rowid"
      

SELECT * FROM t1


      DELETE FROM t1;
      INSERT INTO t1 VALUES(1);
      INSERT INTO t1 VALUES(2);
      INSERT INTO t1 VALUES(3);
      INSERT INTO t1 VALUES(4);
    
SELECT rowid, x FROM t1 ORDER BY rowid DESC

      if {$x & 1
DELETE FROM t1 WHERE rowid=$rowid
SELECT * FROM t1


      DELETE FROM t1;
      INSERT INTO t1 VALUES(1);
      INSERT INTO t1 VALUES(2);
      INSERT INTO t1 VALUES(3);
      INSERT INTO t1 VALUES(4);
    
SELECT rowid, x FROM t1

      if {$x & 1
DELETE FROM t1 WHERE rowid=$rowid+1
SELECT * FROM t1


      DELETE FROM t1;
      INSERT INTO t1 VALUES(1);
      INSERT INTO t1 VALUES(2);
      INSERT INTO t1 VALUES(3);
      INSERT INTO t1 VALUES(4);
    
SELECT rowid, x FROM t1 ORDER BY rowid DESC

      if {$x & 1
DELETE FROM t1
SELECT * FROM t1


      DELETE FROM t1;
      INSERT INTO t1 VALUES(1);
      INSERT INTO t1 VALUES(2);
      INSERT INTO t1 VALUES(3);
      INSERT INTO t1 VALUES(4);
    
SELECT rowid, x FROM t1 ORDER BY rowid DESC

      if {$x & 1
UPDATE t1 SET x=x+100 WHERE rowid=$rowid
SELECT * FROM t1


      DELETE FROM t1;
      INSERT INTO t1(rowid,x) VALUES(10,10);
    
SELECT rowid, x FROM t1 ORDER BY rowid DESC

      if {$x>1
INSERT INTO t1(rowid,x) VALUES($x-1,$x-1)
SELECT * FROM t1
 pragma recursive_triggers = off 
