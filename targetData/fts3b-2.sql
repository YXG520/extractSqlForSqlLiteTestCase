

    SELECT rowid FROM t2 WHERE c MATCH 'lorem';
  
VACUUM


    SELECT rowid FROM t2 WHERE c MATCH 'lorem';
  

  CREATE VIRTUAL TABLE t3 USING fts3(c);
  INSERT INTO t3 (c) VALUES('this is a test');
  INSERT INTO t3 (c) VALUES('that was a test');
  INSERT INTO t3 (c) VALUES('this is fun');
  DELETE FROM t3 WHERE c = 'that was a test';

