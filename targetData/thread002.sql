ii
CREATE TABLE t1(k, v);
      CREATE INDEX t1_i ON t1(v);
      INSERT INTO t1(v) VALUES(1.0);
    
ii
SELECT * FROM aux1.t1 
INSERT INTO aux1.t1(v) SELECT sum(v) FROM aux2.t1 
SELECT * FROM aux2.t1 
INSERT INTO aux2.t1(v) SELECT sum(v) FROM aux3.t1 
SELECT * FROM aux3.t1 
INSERT INTO aux3.t1(v) SELECT sum(v) FROM aux1.t1 
CREATE TABLE IF NOT EXISTS aux1.t2(a,b) 
DROP TABLE IF EXISTS aux1.t2 
ii
SELECT count(*) FROM t1
PRAGMA integrity_check
