

    DELETE FROM t1;
    DROP TABLE t2;
    DROP INDEX idxt1;
    INSERT INTO t1 VALUES(1,2);
    SELECT rowid, * FROM t1;
  


    INSERT INTO t1 VALUES(99,100);
    SELECT rowid,* FROM t1
  


    CREATE TABLE t2(a INTEGER PRIMARY KEY, b);
    INSERT INTO t2(b) VALUES(55);
    SELECT * FROM t2;
  


    INSERT INTO t2(b) VALUES(66);
    SELECT * FROM t2;
  


    INSERT INTO t2(a,b) VALUES(1000000,77);
    INSERT INTO t2(b) VALUES(88);
    SELECT * FROM t2;
  


    INSERT INTO t2(a,b) VALUES(2147483647,99);
    INSERT INTO t2(b) VALUES(11);
    SELECT b FROM t2 ORDER BY b;
  


      SELECT b FROM t2 WHERE a NOT IN(1,2,1000000,1000001,2147483647);
    


      INSERT INTO t2(b) VALUES(22);
      INSERT INTO t2(b) VALUES(33);
      INSERT INTO t2(b) VALUES(44);
      INSERT INTO t2(b) VALUES(55);
      SELECT b FROM t2 WHERE a NOT IN(1,2,1000000,1000001,2147483647) 
          ORDER BY b;
    


    DELETE FROM t2 WHERE a!=2;
    INSERT INTO t2(b) VALUES(111);
    SELECT * FROM t2;
  