code1 [list db eval $sql] 
code2 [list db eval $sql] 
set nm [regsub {\.
set zData [read $fd]
    
CREATE TABLE t1(a PRIMARY KEY, b UNIQUE);
    INSERT INTO t1 VALUES('abc', 'def');
  
abc def

abc def ghi jkl
ok
ok
PRAGMA cache_size = 10;
    BEGIN;
      INSERT INTO t1 VALUES(randomblob(400), randomblob(400));
      INSERT INTO t1 SELECT randomblob(400), randomblob(400) FROM t1;
      INSERT INTO t1 SELECT randomblob(400), randomblob(400) FROM t1;
      INSERT INTO t1 SELECT randomblob(400), randomblob(400) FROM t1;
      INSERT INTO t1 SELECT randomblob(400), randomblob(400) FROM t1;
    COMMIT;
  
SELECT md5sum(a), md5sum(b) FROM t1
SELECT md5sum(a), md5sum(b) FROM t1
BEGIN;
      UPDATE t1 SET a = randomblob(500);
  

SELECT md5sum(a), md5sum(b) FROM t1
SELECT md5sum(a), md5sum(b) FROM t1
ok
ok
CREATE TABLE t2(a UNIQUE, b PRIMARY KEY, c UNIQUE);
      INSERT INTO t2 VALUES(1,9,5);
      INSERT INTO t2 VALUES(5,5,1);
      INSERT INTO t2 VALUES(9,1,9);
      SELECT * FROM t2 ORDER BY a;
    
SELECT * FROM sqlite_master WHERE rootpage=-1;
      SELECT * FROM t2 ORDER BY a;
    
SELECT * FROM t2 ORDER BY b;
    
SELECT * FROM t2 ORDER BY b;
    
SELECT * FROM t2 ORDER BY c;
    
SELECT * FROM t2 ORDER BY c;
    
PRAGMA journal_mode = WAL;
      CREATE TABLE t1(a PRIMARY KEY, b UNIQUE);
      INSERT INTO t1 VALUES('I', 1);
      INSERT INTO t1 VALUES('II', 2);
      INSERT INTO t1 VALUES('III', 3);
      SELECT * FROM t1;
    
SELECT * FROM t1;
    
SELECT * FROM t1;
    
SELECT * FROM t1;
    

INSERT INTO t1 SELECT * FROM t1;
        INSERT INTO t1 SELECT * FROM t1;
        INSERT INTO t1 SELECT * FROM t1;
        INSERT INTO t1 SELECT * FROM t1;
        INSERT INTO t1 SELECT * FROM t1;
        INSERT INTO t1 SELECT * FROM t1;
        INSERT INTO t1 SELECT * FROM t1;
        INSERT INTO t1 SELECT * FROM t1;
      
DROP TABLE IF EXISTS t1;
          DROP TABLE IF EXISTS t2;
          CREATE TABLE t1(docid, words);
          CREATE VIRTUAL TABLE t2 USING fts3(words);
        
INSERT INTO t2 SELECT words FROM t1;
          INSERT INTO t2 SELECT words FROM t1;
          INSERT INTO t2 SELECT words FROM t1;
          INSERT INTO t2 SELECT words FROM t1;
          INSERT INTO t2 SELECT words FROM t1;
          INSERT INTO t2 SELECT words FROM t1;
          SELECT level, group_concat(idx, ' ') FROM t2_segdir GROUP BY level;
        
set res {0 {0 1
INSERT INTO t2(t2) VALUES('merge=100,4'); 
INSERT INTO t2(t2) VALUES('merge=100,4'); 
INSERT INTO t2(t2) VALUES('merge=100,4'); 
INSERT INTO t2(t2) VALUES('merge=2500,4'); 
SELECT level, group_concat(idx, ' ') FROM t2_segdir GROUP BY level;
          
INSERT INTO t2(t2) VALUES('integrity-check') 
INSERT INTO t2(t2) VALUES('integrity-check') 

INSERT INTO t1 SELECT id+100, x1+10.0, x2+10.0, y1-10.0, y2-10.0 FROM t1;
      
INSERT INTO t1 SELECT id+200, x1+20.0, x2+20.0, y1-20.0, y2-20.0 FROM t1;
      
