SELECT rowid FROM t1 WHERE c MATCH 'this';
  
SELECT rowid FROM t1 WHERE c MATCH 'this';
  
SELECT rowid FROM t2 WHERE c MATCH 'lorem';
  
SELECT rowid FROM t2 WHERE c MATCH 'lorem';
  
SELECT snippet(t3) FROM t3 WHERE t3 MATCH 'test';
  
SELECT * FROM t3 WHERE rowid = 1;
  
INSERT INTO t3 VALUES ('another test');
  
SELECT rowid FROM t4 WHERE rowid <> docid;
  
SELECT * FROM t4 WHERE rowid = 1;
  
SELECT docid, * FROM t4 WHERE rowid = 1;
  
SELECT docid, * FROM t4 WHERE docid = 1;
  
INSERT INTO t4 VALUES ('another test');
  
INSERT INTO t4 (docid, c) VALUES (10, 'yet another test');
    SELECT * FROM t4 WHERE docid = 10;
  
INSERT INTO t4 (docid, c) VALUES (12, 'still testing');
    SELECT * FROM t4 WHERE docid = 12;
  
INSERT INTO t4 (rowid, docid, c) VALUES (14, 15, 'bad test');
    SELECT * FROM t4 WHERE docid = 14;
  
SELECT docid FROM t4 WHERE t4 MATCH 'testing' 
UPDATE t4 SET docid = 14 WHERE docid = 12;
    SELECT docid FROM t4 WHERE t4 MATCH 'testing';
  
SELECT * FROM t4 WHERE rowid = 14; 
SELECT * FROM t4 WHERE rowid = 12; 
SELECT docid FROM t4 WHERE t4 MATCH 'still'; 
