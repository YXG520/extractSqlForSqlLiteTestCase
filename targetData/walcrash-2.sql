

      PRAGMA journal_mode = WAL;
      CREATE TABLE t1(a PRIMARY KEY, b);
      INSERT INTO t1 VALUES(1, 2);
      INSERT INTO t1 VALUES(3, 4);
      INSERT INTO t1 VALUES(5, 9);
    

 SELECT sum(a)==max(b) FROM t1 


      INSERT INTO t1 VALUES(6, (SELECT sum(a) FROM t1) + 6);
      INSERT INTO t1 VALUES(7, (SELECT sum(a) FROM t1) + 7);
    

 SELECT sum(a)==max(b) FROM t1 

 PRAGMA main.journal_mode 
