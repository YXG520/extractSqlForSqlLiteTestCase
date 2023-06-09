

    CREATE VIRTUAL TABLE t1 USING fts3(a, b, c);
    INSERT INTO t1(a, b, c) VALUES('one three four', 'one four', 'one two');
    SELECT a, b, c FROM t1 WHERE c MATCH 'two';
  


    SELECT a, b, c FROM t1 WHERE c MATCH 'two';
    CREATE TABLE t3(a, b, c);
    SELECT a, b, c FROM t1 WHERE  c  MATCH 'two';
  


    ATTACH 'test2.db' AS aux;
    CREATE VIRTUAL TABLE aux.t1 USING fts3(a, b, c);
    INSERT INTO aux.t1(a, b, c) VALUES(
      'neung song sahm', 'neung see', 'neung see song'
    );
  

 SELECT a, b, c FROM aux.t1 WHERE a MATCH 'song'; 

 SELECT a, b, c FROM t1 WHERE c MATCH 'two'; 

 ALTER TABLE aux.t1 RENAME TO t2 

 SELECT a, b, c FROM t2 WHERE a MATCH 'song'; 

 SELECT a, b, c FROM t1 WHERE c MATCH 'two'; 
