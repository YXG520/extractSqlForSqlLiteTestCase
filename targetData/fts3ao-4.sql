

    CREATE VIRTUAL TABLE t4 USING fts3;
    INSERT INTO t4 VALUES('the quick brown fox');
  


    BEGIN;
      INSERT INTO t4 VALUES('jumped over the');
  

 ALTER TABLE t4 RENAME TO t5; 


 INSERT INTO t5 VALUES('lazy dog'); 




 SELECT * FROM t5 


    BEGIN;
      INSERT INTO t5 VALUES('Down came a jumbuck to drink at that billabong');
      ALTER TABLE t5 RENAME TO t6;
      INSERT INTO t6 VALUES('Down came the troopers, one, two, three');
    ROLLBACK;
    SELECT * FROM t5;
  


  SELECT snippet(t5, '[', ']') FROM t5 WHERE t5 MATCH 'the'

