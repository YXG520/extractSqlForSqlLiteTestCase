

    CREATE TABLE t8a(a,b);
    CREATE TABLE t8b(x);
    INSERT INTO t8a VALUES('one', 1);
    INSERT INTO t8a VALUES('one', 2);
    INSERT INTO t8a VALUES('two', 3);
    INSERT INTO t8a VALUES('one', NULL);
    INSERT INTO t8b(rowid,x) VALUES(1,111);
    INSERT INTO t8b(rowid,x) VALUES(2,222);
    INSERT INTO t8b(rowid,x) VALUES(3,333);
    SELECT a, count(b) FROM t8a, t8b WHERE b=t8b.rowid GROUP BY a ORDER BY a;
  


    SELECT a, count(b) FROM t8a, t8b WHERE b=+t8b.rowid GROUP BY a ORDER BY a;
  


    SELECT t8a.a, count(t8a.b) FROM t8a, t8b WHERE t8a.b=t8b.rowid
     GROUP BY 1 ORDER BY 1;
  


    SELECT a, count(*) FROM t8a, t8b WHERE b=+t8b.rowid GROUP BY a ORDER BY a;
  


    SELECT a, count(b) FROM t8a, t8b WHERE b<x GROUP BY a ORDER BY a;
  


    SELECT a, count(t8a.b) FROM t8a, t8b WHERE b=t8b.rowid 
     GROUP BY a ORDER BY 2;
  


    SELECT a, count(b) FROM t8a, t8b GROUP BY a ORDER BY 2;
  


    SELECT a, count(*) FROM t8a, t8b GROUP BY a ORDER BY 2;
  
