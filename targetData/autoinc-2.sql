

    SELECT * FROM sqlite_sequence
  


    INSERT INTO t1 VALUES(12,34);
    SELECT * FROM sqlite_sequence;
  


    INSERT INTO t1 VALUES(1,23);
    SELECT * FROM sqlite_sequence;
  


    INSERT INTO t1 VALUES(123,456);
    SELECT * FROM sqlite_sequence;
  


    INSERT INTO t1 VALUES(NULL,567);
    SELECT * FROM sqlite_sequence;
  


    DELETE FROM t1 WHERE y=567;
    SELECT * FROM sqlite_sequence;
  


    INSERT INTO t1 VALUES(NULL,567);
    SELECT * FROM sqlite_sequence;
  


    DELETE FROM t1;
    SELECT * FROM sqlite_sequence;
  


    INSERT INTO t1 VALUES(12,34);
    SELECT * FROM sqlite_sequence;
  


    INSERT INTO t1 VALUES(125,456);
    SELECT * FROM sqlite_sequence;
  


    INSERT INTO t1 VALUES(-1234567,-1);
    SELECT * FROM sqlite_sequence;
  


    INSERT INTO t1 VALUES(234,5678);
    SELECT * FROM sqlite_sequence;
  


    DELETE FROM t1;
    INSERT INTO t1 VALUES(NULL,1);
    SELECT * FROM sqlite_sequence;
  


    SELECT * FROM t1;
  


    UPDATE sqlite_sequence SET seq=1234 WHERE name='t1';
    INSERT INTO t1 VALUES(NULL,2);
    SELECT * FROM t1;
  


    SELECT * FROM sqlite_sequence;
  


    UPDATE sqlite_sequence SET seq=NULL WHERE name='t1';
    INSERT INTO t1 VALUES(NULL,3);
    SELECT * FROM t1;
  


    SELECT * FROM sqlite_sequence;
  


    UPDATE sqlite_sequence SET seq='a-string' WHERE name='t1';
    INSERT INTO t1 VALUES(NULL,4);
    SELECT * FROM t1;
  


    SELECT * FROM sqlite_sequence;
  


    DELETE FROM sqlite_sequence WHERE name='t1';
    INSERT INTO t1 VALUES(NULL,5);
    SELECT * FROM t1;
  


    SELECT * FROM sqlite_sequence;
  


    UPDATE sqlite_sequence SET seq='-12345678901234567890'
      WHERE name='t1';
    INSERT INTO t1 VALUES(NULL,6);
    SELECT * FROM t1;
  


    SELECT * FROM sqlite_sequence;
  


    DELETE FROM t1 WHERE y>=3;
    INSERT INTO t1 SELECT NULL, y+2 FROM t1;
    SELECT * FROM t1;
  


    SELECT * FROM sqlite_sequence
  


      CREATE TEMP TABLE t2 AS SELECT y FROM t1;
    

      INSERT INTO t1 SELECT NULL, y+4 FROM t2;
      SELECT * FROM t1;
    


      SELECT * FROM sqlite_sequence
    


      DELETE FROM t1;
      INSERT INTO t1 SELECT NULL, y FROM t2;
      SELECT * FROM t1;
    


      SELECT * FROM sqlite_sequence
    


    DROP TABLE t2;
  

    CREATE TABLE t2(d, e INTEGER PRIMARY KEY AUTOINCREMENT, f);
    INSERT INTO t2(d) VALUES(1);
    SELECT * FROM sqlite_sequence;
  


    INSERT INTO t2(d) VALUES(2);
    SELECT * FROM sqlite_sequence;
  


    INSERT INTO t1(x) VALUES(10000);
    SELECT * FROM sqlite_sequence;
  


    CREATE TABLE t3(g INTEGER PRIMARY KEY AUTOINCREMENT, h);
    INSERT INTO t3(h) VALUES(1);
    SELECT * FROM sqlite_sequence;
  


    INSERT INTO t2(d,e) VALUES(3,100);
    SELECT * FROM sqlite_sequence;
  
