

      PRAGMA journal_mode = WAL;
      CREATE TABLE t1(a, b);
      INSERT INTO t1 VALUES(1, 1);
      INSERT INTO t1 VALUES(2, 3);
      INSERT INTO t1 VALUES(3, 6);
    

 SELECT sum(a)==max(b) FROM t1 


      INSERT INTO t1 VALUES(4, (SELECT sum(a) FROM t1) + 4);
      INSERT INTO t1 VALUES(5, (SELECT sum(a) FROM t1) + 5);
    

 SELECT sum(a)==max(b) FROM t1 

 PRAGMA main.journal_mode 
