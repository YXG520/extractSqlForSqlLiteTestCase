
 
    CREATE VIRTUAL TABLE t1 USING fts3(x);
    INSERT INTO t1(t1) VALUES('nodesize=24');
    BEGIN;
      INSERT INTO t1 VALUES('Is the night chilly and dark?');
      INSERT INTO t1 VALUES('The night is chilly, but not dark.');
      INSERT INTO t1 VALUES('The thin gray cloud is spread on high,');
      INSERT INTO t1 VALUES('It covers but not hides the sky.');
    COMMIT;
    SELECT count(*)>0 FROM t1_segments;
  



  CREATE VIRTUAL TABLE t10 USING fts3;
  INSERT INTO t10 VALUES('Optimising images for the web is a tricky business');
  BEGIN;
    INSERT INTO t10 VALUES('You have to get the right balance between');


  INSERT INTO t10(t10) VALUES('optimize');



  CREATE VIRTUAL TABLE t12 USING fts3;
  INSERT INTO t12 VALUES('is one of the two togther');
  BEGIN;
    INSERT INTO t12 VALUES('one which was appropriate at the time');


  SELECT * FROM t12 WHERE t12 MATCH 'one'



  PRAGMA encoding = 'UTF-16';
  CREATE VIRTUAL TABLE t13 USING fts3;
  INSERT INTO t13 VALUES('two scalar functions');
  INSERT INTO t13 VALUES('scalar two functions');
  INSERT INTO t13 VALUES('functions scalar two');


  SELECT snippet(t13, '%%', '%%', '#') FROM t13 WHERE t13 MATCH 'two';
  SELECT snippet(t13, '%%', '%%') FROM t13 WHERE t13 MATCH 'two';
  SELECT snippet(t13, '%%') FROM t13 WHERE t13 MATCH 'two';

