CREATE TABLE blobs(id INTEGER PRIMARY KEY, data BLOB);
    INSERT INTO blobs VALUES(NULL, zeroblob(5000));
    INSERT INTO blobs VALUES(NULL, zeroblob(5000));
    INSERT INTO blobs VALUES(NULL, zeroblob(5000));
    INSERT INTO blobs VALUES(NULL, zeroblob(5000));
  
INSERT INTO blobs VALUES(5, zeroblob(10240));
  
lappend aborted $ii
    
INSERT INTO t1 VALUES(1, 'abcde');
    
INSERT INTO t1 VALUES(2, 'fghij') 
INSERT INTO t1 VALUES(3, 'klmno') 
INSERT INTO t1 VALUES(4, 'pqrst') 
PRAGMA read_uncommitted=1 
INSERT INTO t1 VALUES(3, 'klmno') 
DELETE FROM t1;
    INSERT INTO t1 VALUES(1, zeroblob(100));
  
CREATE TABLE t3(a INTEGER UNIQUE, b TEXT);
    INSERT INTO t3 VALUES(1, 'aaaaaaaaaaaaaaaaaaaa');
    INSERT INTO t3 VALUES(2, 'bbbbbbbbbbbbbbbbbbbb');
    INSERT INTO t3 VALUES(3, 'cccccccccccccccccccc');
    INSERT INTO t3 VALUES(4, 'dddddddddddddddddddd');
    INSERT INTO t3 VALUES(5, 'eeeeeeeeeeeeeeeeeeee');
  
UPDATE t3 SET a = 6 WHERE a > 3
UPDATE t3 SET a = 6 WHERE a > 3
UPDATE t3 SET a = 6 WHERE a = 3 OR a = 5
